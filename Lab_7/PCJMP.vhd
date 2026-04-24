library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity PCJMP is
  port (
    JMPADDR : in std_logic_vector(11 downto 0);
	 PC : IN std_logic_vector(15 downto 0);
    JMPOUT : out std_logic_vector(15 downto 0)
  );
end entity PCJMP;
architecture behavior of PCJMP is
begin

 JMPOUT(15 downto 13) <= PC(15 downto 13);
 JMPOUT(12 downto 1) <= JMPADDR(11 downto 0);
 JMPOUT(0) <= '0';

end architecture;