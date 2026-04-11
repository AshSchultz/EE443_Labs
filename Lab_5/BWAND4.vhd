LIBRARY ieee;
USE ieee.std_logic_1164.all;

entity BWAND4 is
    port (
        Aj, Bj : IN  STD_LOGIC_VECTOR(3 downto 0);                 
        Result : OUT STD_LOGIC_VECTOR(3 downto 0)
    );
end BWAND4;

architecture behavior of BWAND4 is	
begin

		Result <= Aj AND Bj;
	
end behavior;
