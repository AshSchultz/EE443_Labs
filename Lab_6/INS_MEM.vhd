LIBRARY ieee;
USE ieee.std_logic_1164.all;
USE ieee.numeric_std.all;

entity INS_MEM is
    port (
		  ADDR : IN STD_LOGIC_VECTOR(15 downto 0);
		  DOUT : OUT STD_LOGIC_VECTOR(15 downto 0);
    );
end entity INS_MEM;
architecture behavior of INS_MEM is
	TYPE 2DARR is ARR(INTEGER range<>) of
		STD_LOGIC_VECTOR(15 downto 0);
	SIGNAL mem 2DARR(31 downto 0);
begin
	mem(
end architecture;
