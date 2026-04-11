LIBRARY ieee;
USE ieee.std_logic_1164.all;
USE ieee.numeric_std.all;

entity INCTWO is
    port (
        A : IN STD_LOGIC_VECTOR(15 downto 0);
		  F : OUT STD_LOGIC_VECTOR(15 downto 0)
    );
end entity INCTWO;
architecture behavior of INCTWO is
	
	signal num_add : STD_LOGIC_VECTOR(15 downto 0);
	signal aluOutputs : STD_LOGIC_VECTOR(2 downto 0);

	component ALU16 is
    port (
        A, B : IN STD_LOGIC_VECTOR(15 downto 0);
		  SEL : IN STD_LOGIC_VECTOR(2 downto 0);
		  F : OUT STD_LOGIC_VECTOR(15 downto 0);
		  COUT, OVERFLOW, ZERO : OUT STD_LOGIC
    );
	end component ALU16;

begin

	num_add <= (1 => '1', others => '0'); -- Add the number 2 in binary
	
	alu0 : ALU16
		port map(
			A,
			num_add,
			"010",
			F,
			aluOutputs(0),
			aluOutputs(1),
			aluOutputs(2)
		);
		
		aluOutputs <= (others => '0');
	
end architecture;
