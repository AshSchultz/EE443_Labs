LIBRARY ieee;
USE ieee.std_logic_1164.all;
USE ieee.numeric_std.all;

entity DAT_MEM is
    port (
		  ADDR : IN STD_LOGIC_VECTOR(15 downto 0);
		  DIN : IN STD_LOGIC_VECTOR(15 downto 0);
		  WE, RE, CLK : IN STD_LOGIC;
		  DOUT : OUT STD_LOGIC_VECTOR(15 downto 0)
    );
end entity DAT_MEM;
architecture behavior of DAT_MEM is

component REG8 is
    port (
        x : in std_logic_vector(7 downto 0);
        EN : in std_logic;
        CLK : in std_logic;
        y : out std_logic_vector(7 downto 0)
    );
end component REG8;

component DCD5X32 is
    port (
		  ADDR : IN STD_LOGIC_VECTOR(4 downto 0);
		  DOUT : OUT STD_LOGIC_VECTOR(31 downto 0)
    );
end component DCD5X32;

	TYPE TWODARR is ARRAY(INTEGER range<>) of
		STD_LOGIC_VECTOR(7 downto 0);
	
	signal reg_write_in : TWODARR(31 downto 0);
	signal reg_enables : std_logic_vector(32 downto 0);
	signal dec_to_en : std_logic_vector(32 downto 0);
	signal reg_out : TWODARR(31 downto 0);

begin
	
	dcd : DCD5X32
		port map(
			ADDR(4 downto 0),
			reg_enables(31 downto 0)
		);
	
	dec_to_en(0) <= reg_enables(0) and WE;
	
	dec_to_gen : for j in 31 downto 0 generate
		dec_to_en(j+1) <= (reg_enables(j + 1) or reg_enables(j)) and WE;
	end generate;
	
	din_to_gen : for jj in 0 to 15 generate
		reg_write_in(jj*2) <= DIN(7 downto 0);
		reg_write_in((jj*2)+1) <= DIN(15 downto 8);
	end generate;
	
	reg_gen : for i in 31 downto 0 generate
		regs : REG8
			port map(
				reg_write_in(i),
				dec_to_en(i),
				CLK,
				reg_out(i)
			);
	end generate;
	
	process(RE, reg_enables, reg_out) is
	begin
		if RE = '1' then
			for l in 30 downto 0 loop
				if reg_enables(l) = '1' then
					DOUT(7 downto 0) <= reg_out(l);
					DOUT(15 downto 8) <= reg_out(l+1);
				end if;
			end loop;
		else
			DOUT <= (others => 'Z');
		end if;
	end process;

end architecture;