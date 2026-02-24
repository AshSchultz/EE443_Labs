LIBRARY ieee;
USE ieee.std_logic_1164.all;

entity MUX8X16 is
    port (
		  I1, I2, I3, I4, I5, I6, I7, I8 : in std_logic_vector(15 downto 0);
        CONT : in std_logic_vector(2 downto 0);
        f : out std_logic_vector(15 downto 0) 
    );
end MUX8X16;

architecture behavior of MUX8X16 is
    
	 component MUX4x16
		port (
        INP1, INP2, INP3, INP4 : in std_logic_vector(15 downto 0);
        CON : in std_logic_vector(1 downto 0);
        OUT16B : out std_logic_vector(15 downto 0) 
		);
    end component;
	 
    signal temp_bot: std_logic_vector(15 downto 0);
	 signal temp_top: std_logic_vector(15 downto 0);
	 
	 begin
	 
	 mux_1 : MUX4x16
	 port map(
		  temp_bot,
		  temp_top,
		  (OTHERS => '0'),
		  (OTHERS => '0'),
		  ('0', CONT(2)),
		  f
	 );
	 
	 mux_2 : MUX4x16
	 port map(
		  I1,
		  I2,
		  I3,
		  I4,
		  CONT(1 downto 0),
		  temp_bot
	 );
	 
	 mux_3 : MUX4x16
	 port map(
		  I5,
		  I6,
		  I7,
		  I8,
		  CONT(1 downto 0),
		  temp_top
	 );
	 
end behavior;