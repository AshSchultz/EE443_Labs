LIBRARY ieee;
USE ieee.std_logic_1164.all;

entity MUX4X16 is
    port (
		  INP1, INP2, INP3, INP4 : in std_logic_vector(15 downto 0);
        CON : in std_logic_vector(1 downto 0);
        OUT16B : out std_logic_vector(15 downto 0) 
    );
end MUX4X16;

architecture behavior of MUX4X16 is
    
	 component MUX4x4
		port (
        IN1, IN2, IN3, IN4 : in std_logic_vector(3 downto 0);
        CONTROL : in std_logic_vector(1 downto 0);
        OUT4B : out std_logic_vector(3 downto 0) 
		);
    end component;
    
	 begin
	 
	 mux_generate: for i in 0 to 3 generate
	     mux_i : MUX4x4
		  port map(
				INP1(i*4+3 downto i*4),
				INP2(i*4+3 downto i*4),
				INP3(i*4+3 downto i*4),
				INP4(i*4+3 downto i*4),
				CON(1 downto 0),
				OUT16B(i*4+3 downto i*4)
		  );
	 end generate mux_generate;
	 
end behavior;