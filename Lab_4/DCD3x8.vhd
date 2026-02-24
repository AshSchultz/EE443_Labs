LIBRARY ieee;
USE ieee.std_logic_1164.all;
USE ieee.numeric_std.all;

entity DCD3x8 is
    port (
        S : in std_logic_vector(2 downto 0);
        D : out std_logic_vector(7 downto 0) 
    );
end entity DCD3x8;
architecture behavior of DCD3x8 is
    
begin
    process(S)
    begin
		D(to_integer(unsigned(S))) <= '1';
    end process;
    
end architecture behavior;