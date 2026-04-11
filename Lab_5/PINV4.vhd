LIBRARY ieee;
USE ieee.std_logic_1164.all;

entity PINV4 is
    port (
        I : IN  STD_LOGIC_VECTOR(3 downto 0);
		  St : IN STD_LOGIC;
        Rt : OUT STD_LOGIC_VECTOR(3 downto 0)
    );
end PINV4;

architecture behavior of PINV4 is
begin

	inv_loop : for ii in 0 to 3 generate
		Rt(ii) <= I(ii) XOR St;
	end generate inv_loop;

end architecture behavior;