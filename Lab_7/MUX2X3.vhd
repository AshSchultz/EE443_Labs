library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity MUX2X3 is
  port (
    A, B  : in std_logic_vector(2 downto 0);
	 CON : IN STD_LOGIC;
    DOUT : out std_logic_vector(2 downto 0)
  );
end entity MUX2X3;
architecture behavior of MUX2X3 is
begin

process(A, B, CON) is
begin

	if CON = '1' then
		DOUT <= B;
	else
		DOUT <= A;
	end if;
	
end process;
end architecture;