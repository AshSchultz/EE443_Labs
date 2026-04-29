library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity INS_MEM is
  port (
    ADDR : in std_logic_vector(15 downto 0);
    INS_OUT : out std_logic_vector(15 downto 0)
  );
end entity INS_MEM;
architecture behavior of INS_MEM is
  type TWODARR is array(integer range <>) of
  std_logic_vector(15 downto 0);
  signal mem  : TWODARR(31 downto 0) := (others => x"1234");
  signal temp : TWODARR(31 downto 0);

  component DCD5X32 is
    port (
      ADDR : in std_logic_vector(4 downto 0);
      DOUT : out std_logic_vector(31 downto 0)
    );
  end component DCD5X32;

  signal addr_out       : std_logic_vector(31 downto 0);
  signal exception      : std_logic                     := '0';
  signal exception_mask : std_logic_vector(15 downto 0) := (others => '0');

  signal data_out : std_logic_vector(15 downto 0);

begin

  dec : DCD5X32
  port map
  (
    ADDR(5 downto 1),
    addr_out
  );

  exception <= ADDR(15) or ADDR(14) or ADDR(13) or ADDR(12) or ADDR(11) or ADDR(10) or ADDR(9) or ADDR(8) or ADDR(7) or ADDR(6);
  --	I-Type opcode = I[15:12], Rs = I[11:9], Rt = I[8:6], imm = I[5:0]
  --	R-Type opcode = I[15:12], Rs = I[11:9], Rt = I[8:6], Rd = I[5:3], funct = I[2:0]
  --	J-Type opcode = I[15:12], adr = I[11:0]
  mem(0) <= "1011111001000000"; -- ld  $1, 0($7)  # loads some data from the lowest memory address into R1
  mem(1) <= "1011111010000010"; -- ld  $2, 2($7)  # loads some data from the next address into R2,
  mem(2) <= "1011111100000100"; -- ld  $4, 4($7)  # Loads mem(4) into R4
  mem(3) <= "0000001010011010"; -- add $3, $2, $1 # adds R1 and R2 and stores the result into R3
  mem(4) <= "0000001011011010"; -- add $3, $3, $1 # adds R1 and R3 and stores the result into R3
  mem(5) <= "1111111011000110"; -- sw  $3, 6($7)  # stores the contents of R3 in the next memory address, and
  mem(6) <= "0100011100000001"; -- beq $3, $4, 1  # checks if R3 equals the value in memory (16)
  mem(7) <= "0010000000000100"; -- j   4    	  	  # Loops back to summing r3 and r1 if not equal to 16
  mem(8) <= "1011111101000100"; -- ld  $5, 6($7)  # Loads the stored contents of R3 into R5
  mem(9) <= "0010000000001001"; -- j   9     	  # uses an infinite loop as a halt (9 is the address of the instruction)
  
 INS_OUT <= (others => '0') when exception = '1' else data_out;
  
  process (addr_out) is
    begin
		 for l in 31 downto 0 loop
			if (addr_out(l) = '1') then
			  data_out <= mem(l);
			end if;
		 end loop;
	 
  end process;

end architecture;
