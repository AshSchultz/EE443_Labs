LIBRARY ieee;
USE ieee.std_logic_1164.all;

entity REG16 is
    port (
        R : in std_logic_vector(15 downto 0);
        ENABLE : in std_logic;
        Clock : in std_logic;
        Q : out std_logic_vector(15 downto 0)
    );
end REG16;

architecture logical_stuff of REG16 is
    
	 component REG8
        port (
            x : in std_logic_vector(7 downto 0);
            EN : in std_logic;
            CLK : in std_logic;
            y : out std_logic_vector(7 downto 0)
        );
    end component;
    
	 begin
	 
    reg_1 : REG8 
    port map(
        R(7 downto 0),
        ENABLE, 
        Clock, 
        Q(7 downto 0)
    ); 

    reg_2 : REG8 port map(
        R(15 downto 8),
        ENABLE, 
        Clock, 
        Q(15 downto 8)S
    ); 

end logical_stuff;