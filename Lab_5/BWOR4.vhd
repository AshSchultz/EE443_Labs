LIBRARY ieee;
USE ieee.std_logic_1164.all;

entity BWOR4 is
    port (
        Ak, Bk : IN  STD_LOGIC_VECTOR(3 downto 0);                 
        Res : OUT STD_LOGIC_VECTOR(3 downto 0)
    );
end BWOR4;

architecture behavior of BWOR4 is	
begin

	Res <= Ak OR Bk;
	
end behavior;
