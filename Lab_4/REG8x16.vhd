LIBRARY ieee;
USE ieee.std_logic_1164.all;

entity REG8X16 is
    port (
        ADD_R1, ADD_R2, ADD_W : in std_logic_vector(2 downto 0);
		  WE, CLK : in std_logic;
		  DIN : in std_logic_vector(15 downto 0);
		  DOUT1, DOUT2 : out std_logic_vector(15 downto 0)
    );
end REG8X16;

architecture behavior of REG8X16 is
	
	component REG16 is
    port (
        R : in std_logic_vector(15 downto 0);
        ENABLE : in std_logic;
        Clock : in std_logic;
        Q : out std_logic_vector(15 downto 0)
    );
	end component;
	
	component MUX8X16
    port (
		  I1, I2, I3, I4, I5, I6, I7, I8 : in std_logic_vector(15 downto 0);
        CONT : in std_logic_vector(2 downto 0);
        f : out std_logic_vector(15 downto 0) 
    );
	end component;
	
	component DCD3x8 is
    port (
        S : in std_logic_vector(2 downto 0);
        D : out std_logic_vector(7 downto 0) 
    );
	end component;
	
	type std_logic_aov is array (0 to 7) of std_logic_vector(15 downto 0);
	signal reg_to_muxes : std_logic_aov;
	signal w_decoder_to_reg : std_logic_vector(7 downto 0);
	
begin

	add_reg1_dcd: DCD3x8
		port map(
			ADD_W,
			w_decoder_to_reg
		);

	reg_gen: for i in 0 to 7 generate
		regs : REG16
		port map(
			DIN,
			(WE and w_decoder_to_reg(i)),
			CLK,
			reg_to_muxes(i)
		);
	end generate reg_gen;
	
	mux_1: MUX8X16
		port map(
			reg_to_muxes(0),
			reg_to_muxes(1),
			reg_to_muxes(2),
			reg_to_muxes(3),
			reg_to_muxes(4),
			reg_to_muxes(5),
			reg_to_muxes(6),
			reg_to_muxes(7),
			ADD_R1,
			DOUT1
		);
	
	mux_2: MUX8X16
		port map(
			reg_to_muxes(0),
			reg_to_muxes(1),
			reg_to_muxes(2),
			reg_to_muxes(3),
			reg_to_muxes(4),
			reg_to_muxes(5),
			reg_to_muxes(6),
			reg_to_muxes(7),
			ADD_R2,
			DOUT2
		);
	
	
end behavior;