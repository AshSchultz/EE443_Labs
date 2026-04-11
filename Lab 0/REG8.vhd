LIBRARY ieee;
USE ieee.std_logic_1164.all;

entity REG8 is
    port (
        x : in std_logic_vector(7 downto 0);
        EN : in std_logic;
        CLK : in std_logic;
        y : out std_logic_vector(7 downto 0)
    );
end entity REG8;
architecture clk of REG8 is
    
begin
    
    process
    begin
        wait until CLK'EVENT AND CLK='1';
            if EN = '1' then
                y <= x;
            end if;
    end process;
    
end architecture clk;
