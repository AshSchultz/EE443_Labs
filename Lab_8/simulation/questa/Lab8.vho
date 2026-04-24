-- Copyright (C) 2024  Intel Corporation. All rights reserved.
-- Your use of Intel Corporation's design tools, logic functions 
-- and other software and tools, and any partner logic 
-- functions, and any output files from any of the foregoing 
-- (including device programming or simulation files), and any 
-- associated documentation or information are expressly subject 
-- to the terms and conditions of the Intel Program License 
-- Subscription Agreement, the Intel Quartus Prime License Agreement,
-- the Intel FPGA IP License Agreement, or other applicable license
-- agreement, including, without limitation, that your use is for
-- the sole purpose of programming logic devices manufactured by
-- Intel and sold by Intel or its authorized distributors.  Please
-- refer to the applicable agreement for further details, at
-- https://fpgasoftware.intel.com/eula.

-- VENDOR "Altera"
-- PROGRAM "Quartus Prime"
-- VERSION "Version 23.1std.1 Build 993 05/14/2024 SC Lite Edition"

-- DATE "04/24/2026 10:59:25"

-- 
-- Device: Altera EP4CE115F29C7 Package FBGA780
-- 

-- 
-- This VHDL file should be used for Questa Intel FPGA (VHDL) only
-- 

LIBRARY CYCLONEIVE;
LIBRARY IEEE;
USE CYCLONEIVE.CYCLONEIVE_COMPONENTS.ALL;
USE IEEE.STD_LOGIC_1164.ALL;

ENTITY 	hard_block IS
    PORT (
	devoe : IN std_logic;
	devclrn : IN std_logic;
	devpor : IN std_logic
	);
END hard_block;

-- Design Ports Information
-- ~ALTERA_ASDO_DATA1~	=>  Location: PIN_F4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ~ALTERA_FLASH_nCE_nCSO~	=>  Location: PIN_E2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ~ALTERA_DCLK~	=>  Location: PIN_P3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ~ALTERA_DATA0~	=>  Location: PIN_N7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ~ALTERA_nCEO~	=>  Location: PIN_P28,	 I/O Standard: 2.5 V,	 Current Strength: 8mA


ARCHITECTURE structure OF hard_block IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL \~ALTERA_ASDO_DATA1~~padout\ : std_logic;
SIGNAL \~ALTERA_FLASH_nCE_nCSO~~padout\ : std_logic;
SIGNAL \~ALTERA_DATA0~~padout\ : std_logic;
SIGNAL \~ALTERA_ASDO_DATA1~~ibuf_o\ : std_logic;
SIGNAL \~ALTERA_FLASH_nCE_nCSO~~ibuf_o\ : std_logic;
SIGNAL \~ALTERA_DATA0~~ibuf_o\ : std_logic;

BEGIN

ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;
END structure;


LIBRARY ALTERA;
LIBRARY CYCLONEIVE;
LIBRARY IEEE;
USE ALTERA.ALTERA_PRIMITIVES_COMPONENTS.ALL;
USE CYCLONEIVE.CYCLONEIVE_COMPONENTS.ALL;
USE IEEE.STD_LOGIC_1164.ALL;

ENTITY 	PC IS
    PORT (
	PCIN : IN std_logic_vector(15 DOWNTO 0);
	CLK : IN std_logic;
	EN : IN std_logic;
	RST : IN std_logic;
	PCOUT : BUFFER std_logic_vector(15 DOWNTO 0)
	);
END PC;

-- Design Ports Information
-- RST	=>  Location: PIN_AE7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- PCOUT[0]	=>  Location: PIN_AD8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- PCOUT[1]	=>  Location: PIN_AD4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- PCOUT[2]	=>  Location: PIN_AB6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- PCOUT[3]	=>  Location: PIN_AB4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- PCOUT[4]	=>  Location: PIN_AA7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- PCOUT[5]	=>  Location: PIN_AC7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- PCOUT[6]	=>  Location: PIN_AF3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- PCOUT[7]	=>  Location: PIN_AF5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- PCOUT[8]	=>  Location: PIN_AF4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- PCOUT[9]	=>  Location: PIN_AE3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- PCOUT[10]	=>  Location: PIN_AA5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- PCOUT[11]	=>  Location: PIN_AH3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- PCOUT[12]	=>  Location: PIN_AF2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- PCOUT[13]	=>  Location: PIN_AG4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- PCOUT[14]	=>  Location: PIN_AG6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- PCOUT[15]	=>  Location: PIN_Y7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- PCIN[0]	=>  Location: PIN_AF6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- CLK	=>  Location: PIN_J1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- EN	=>  Location: PIN_AC5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- PCIN[1]	=>  Location: PIN_Y10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- PCIN[2]	=>  Location: PIN_AC4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- PCIN[3]	=>  Location: PIN_AD5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- PCIN[4]	=>  Location: PIN_AG3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- PCIN[5]	=>  Location: PIN_AH6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- PCIN[6]	=>  Location: PIN_AE4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- PCIN[7]	=>  Location: PIN_AD7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- PCIN[8]	=>  Location: PIN_AB9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- PCIN[9]	=>  Location: PIN_AB5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- PCIN[10]	=>  Location: PIN_AA6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- PCIN[11]	=>  Location: PIN_AE5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- PCIN[12]	=>  Location: PIN_AE6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- PCIN[13]	=>  Location: PIN_AH4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- PCIN[14]	=>  Location: PIN_AB8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- PCIN[15]	=>  Location: PIN_W8,	 I/O Standard: 2.5 V,	 Current Strength: Default


ARCHITECTURE structure OF PC IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_PCIN : std_logic_vector(15 DOWNTO 0);
SIGNAL ww_CLK : std_logic;
SIGNAL ww_EN : std_logic;
SIGNAL ww_RST : std_logic;
SIGNAL ww_PCOUT : std_logic_vector(15 DOWNTO 0);
SIGNAL \CLK~inputclkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \RST~input_o\ : std_logic;
SIGNAL \PCOUT[0]~output_o\ : std_logic;
SIGNAL \PCOUT[1]~output_o\ : std_logic;
SIGNAL \PCOUT[2]~output_o\ : std_logic;
SIGNAL \PCOUT[3]~output_o\ : std_logic;
SIGNAL \PCOUT[4]~output_o\ : std_logic;
SIGNAL \PCOUT[5]~output_o\ : std_logic;
SIGNAL \PCOUT[6]~output_o\ : std_logic;
SIGNAL \PCOUT[7]~output_o\ : std_logic;
SIGNAL \PCOUT[8]~output_o\ : std_logic;
SIGNAL \PCOUT[9]~output_o\ : std_logic;
SIGNAL \PCOUT[10]~output_o\ : std_logic;
SIGNAL \PCOUT[11]~output_o\ : std_logic;
SIGNAL \PCOUT[12]~output_o\ : std_logic;
SIGNAL \PCOUT[13]~output_o\ : std_logic;
SIGNAL \PCOUT[14]~output_o\ : std_logic;
SIGNAL \PCOUT[15]~output_o\ : std_logic;
SIGNAL \CLK~input_o\ : std_logic;
SIGNAL \CLK~inputclkctrl_outclk\ : std_logic;
SIGNAL \PCIN[0]~input_o\ : std_logic;
SIGNAL \reg|reg_1|y[0]~feeder_combout\ : std_logic;
SIGNAL \EN~input_o\ : std_logic;
SIGNAL \PCIN[1]~input_o\ : std_logic;
SIGNAL \PCIN[2]~input_o\ : std_logic;
SIGNAL \reg|reg_1|y[2]~feeder_combout\ : std_logic;
SIGNAL \PCIN[3]~input_o\ : std_logic;
SIGNAL \reg|reg_1|y[3]~feeder_combout\ : std_logic;
SIGNAL \PCIN[4]~input_o\ : std_logic;
SIGNAL \reg|reg_1|y[4]~feeder_combout\ : std_logic;
SIGNAL \PCIN[5]~input_o\ : std_logic;
SIGNAL \reg|reg_1|y[5]~feeder_combout\ : std_logic;
SIGNAL \PCIN[6]~input_o\ : std_logic;
SIGNAL \reg|reg_1|y[6]~feeder_combout\ : std_logic;
SIGNAL \PCIN[7]~input_o\ : std_logic;
SIGNAL \reg|reg_1|y[7]~feeder_combout\ : std_logic;
SIGNAL \PCIN[8]~input_o\ : std_logic;
SIGNAL \reg|reg_2|y[0]~feeder_combout\ : std_logic;
SIGNAL \PCIN[9]~input_o\ : std_logic;
SIGNAL \reg|reg_2|y[1]~feeder_combout\ : std_logic;
SIGNAL \PCIN[10]~input_o\ : std_logic;
SIGNAL \reg|reg_2|y[2]~feeder_combout\ : std_logic;
SIGNAL \PCIN[11]~input_o\ : std_logic;
SIGNAL \reg|reg_2|y[3]~feeder_combout\ : std_logic;
SIGNAL \PCIN[12]~input_o\ : std_logic;
SIGNAL \reg|reg_2|y[4]~feeder_combout\ : std_logic;
SIGNAL \PCIN[13]~input_o\ : std_logic;
SIGNAL \reg|reg_2|y[5]~feeder_combout\ : std_logic;
SIGNAL \PCIN[14]~input_o\ : std_logic;
SIGNAL \reg|reg_2|y[6]~feeder_combout\ : std_logic;
SIGNAL \PCIN[15]~input_o\ : std_logic;
SIGNAL \reg|reg_2|y[7]~feeder_combout\ : std_logic;
SIGNAL \reg|reg_2|y\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \reg|reg_1|y\ : std_logic_vector(7 DOWNTO 0);

COMPONENT hard_block
    PORT (
	devoe : IN std_logic;
	devclrn : IN std_logic;
	devpor : IN std_logic);
END COMPONENT;

BEGIN

ww_PCIN <= PCIN;
ww_CLK <= CLK;
ww_EN <= EN;
ww_RST <= RST;
PCOUT <= ww_PCOUT;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

\CLK~inputclkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \CLK~input_o\);
auto_generated_inst : hard_block
PORT MAP (
	devoe => ww_devoe,
	devclrn => ww_devclrn,
	devpor => ww_devpor);

-- Location: IOOBUF_X9_Y0_N9
\PCOUT[0]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \reg|reg_1|y\(0),
	devoe => ww_devoe,
	o => \PCOUT[0]~output_o\);

-- Location: IOOBUF_X1_Y0_N9
\PCOUT[1]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \reg|reg_1|y\(1),
	devoe => ww_devoe,
	o => \PCOUT[1]~output_o\);

-- Location: IOOBUF_X0_Y4_N9
\PCOUT[2]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \reg|reg_1|y\(2),
	devoe => ww_devoe,
	o => \PCOUT[2]~output_o\);

-- Location: IOOBUF_X0_Y8_N23
\PCOUT[3]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \reg|reg_1|y\(3),
	devoe => ww_devoe,
	o => \PCOUT[3]~output_o\);

-- Location: IOOBUF_X0_Y9_N16
\PCOUT[4]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \reg|reg_1|y\(4),
	devoe => ww_devoe,
	o => \PCOUT[4]~output_o\);

-- Location: IOOBUF_X9_Y0_N2
\PCOUT[5]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \reg|reg_1|y\(5),
	devoe => ww_devoe,
	o => \PCOUT[5]~output_o\);

-- Location: IOOBUF_X7_Y0_N23
\PCOUT[6]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \reg|reg_1|y\(6),
	devoe => ww_devoe,
	o => \PCOUT[6]~output_o\);

-- Location: IOOBUF_X5_Y0_N16
\PCOUT[7]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \reg|reg_1|y\(7),
	devoe => ww_devoe,
	o => \PCOUT[7]~output_o\);

-- Location: IOOBUF_X1_Y0_N2
\PCOUT[8]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \reg|reg_2|y\(0),
	devoe => ww_devoe,
	o => \PCOUT[8]~output_o\);

-- Location: IOOBUF_X0_Y7_N9
\PCOUT[9]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \reg|reg_2|y\(1),
	devoe => ww_devoe,
	o => \PCOUT[9]~output_o\);

-- Location: IOOBUF_X0_Y10_N23
\PCOUT[10]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \reg|reg_2|y\(2),
	devoe => ww_devoe,
	o => \PCOUT[10]~output_o\);

-- Location: IOOBUF_X5_Y0_N9
\PCOUT[11]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \reg|reg_2|y\(3),
	devoe => ww_devoe,
	o => \PCOUT[11]~output_o\);

-- Location: IOOBUF_X0_Y6_N2
\PCOUT[12]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \reg|reg_2|y\(4),
	devoe => ww_devoe,
	o => \PCOUT[12]~output_o\);

-- Location: IOOBUF_X9_Y0_N23
\PCOUT[13]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \reg|reg_2|y\(5),
	devoe => ww_devoe,
	o => \PCOUT[13]~output_o\);

-- Location: IOOBUF_X11_Y0_N23
\PCOUT[14]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \reg|reg_2|y\(6),
	devoe => ww_devoe,
	o => \PCOUT[14]~output_o\);

-- Location: IOOBUF_X0_Y11_N23
\PCOUT[15]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \reg|reg_2|y\(7),
	devoe => ww_devoe,
	o => \PCOUT[15]~output_o\);

-- Location: IOIBUF_X0_Y36_N8
\CLK~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_CLK,
	o => \CLK~input_o\);

-- Location: CLKCTRL_G2
\CLK~inputclkctrl\ : cycloneive_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \CLK~inputclkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \CLK~inputclkctrl_outclk\);

-- Location: IOIBUF_X7_Y0_N15
\PCIN[0]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_PCIN(0),
	o => \PCIN[0]~input_o\);

-- Location: LCCOMB_X7_Y4_N0
\reg|reg_1|y[0]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \reg|reg_1|y[0]~feeder_combout\ = \PCIN[0]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \PCIN[0]~input_o\,
	combout => \reg|reg_1|y[0]~feeder_combout\);

-- Location: IOIBUF_X0_Y5_N15
\EN~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_EN,
	o => \EN~input_o\);

-- Location: FF_X7_Y4_N1
\reg|reg_1|y[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \reg|reg_1|y[0]~feeder_combout\,
	ena => \EN~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \reg|reg_1|y\(0));

-- Location: IOIBUF_X7_Y0_N8
\PCIN[1]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_PCIN(1),
	o => \PCIN[1]~input_o\);

-- Location: FF_X3_Y4_N1
\reg|reg_1|y[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	asdata => \PCIN[1]~input_o\,
	sload => VCC,
	ena => \EN~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \reg|reg_1|y\(1));

-- Location: IOIBUF_X0_Y4_N1
\PCIN[2]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_PCIN(2),
	o => \PCIN[2]~input_o\);

-- Location: LCCOMB_X1_Y4_N16
\reg|reg_1|y[2]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \reg|reg_1|y[2]~feeder_combout\ = \PCIN[2]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \PCIN[2]~input_o\,
	combout => \reg|reg_1|y[2]~feeder_combout\);

-- Location: FF_X1_Y4_N17
\reg|reg_1|y[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \reg|reg_1|y[2]~feeder_combout\,
	ena => \EN~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \reg|reg_1|y\(2));

-- Location: IOIBUF_X1_Y0_N22
\PCIN[3]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_PCIN(3),
	o => \PCIN[3]~input_o\);

-- Location: LCCOMB_X1_Y4_N26
\reg|reg_1|y[3]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \reg|reg_1|y[3]~feeder_combout\ = \PCIN[3]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \PCIN[3]~input_o\,
	combout => \reg|reg_1|y[3]~feeder_combout\);

-- Location: FF_X1_Y4_N27
\reg|reg_1|y[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \reg|reg_1|y[3]~feeder_combout\,
	ena => \EN~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \reg|reg_1|y\(3));

-- Location: IOIBUF_X3_Y0_N15
\PCIN[4]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_PCIN(4),
	o => \PCIN[4]~input_o\);

-- Location: LCCOMB_X3_Y4_N10
\reg|reg_1|y[4]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \reg|reg_1|y[4]~feeder_combout\ = \PCIN[4]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \PCIN[4]~input_o\,
	combout => \reg|reg_1|y[4]~feeder_combout\);

-- Location: FF_X3_Y4_N11
\reg|reg_1|y[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \reg|reg_1|y[4]~feeder_combout\,
	ena => \EN~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \reg|reg_1|y\(4));

-- Location: IOIBUF_X11_Y0_N15
\PCIN[5]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_PCIN(5),
	o => \PCIN[5]~input_o\);

-- Location: LCCOMB_X7_Y4_N2
\reg|reg_1|y[5]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \reg|reg_1|y[5]~feeder_combout\ = \PCIN[5]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \PCIN[5]~input_o\,
	combout => \reg|reg_1|y[5]~feeder_combout\);

-- Location: FF_X7_Y4_N3
\reg|reg_1|y[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \reg|reg_1|y[5]~feeder_combout\,
	ena => \EN~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \reg|reg_1|y\(5));

-- Location: IOIBUF_X3_Y0_N22
\PCIN[6]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_PCIN(6),
	o => \PCIN[6]~input_o\);

-- Location: LCCOMB_X3_Y4_N4
\reg|reg_1|y[6]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \reg|reg_1|y[6]~feeder_combout\ = \PCIN[6]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \PCIN[6]~input_o\,
	combout => \reg|reg_1|y[6]~feeder_combout\);

-- Location: FF_X3_Y4_N5
\reg|reg_1|y[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \reg|reg_1|y[6]~feeder_combout\,
	ena => \EN~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \reg|reg_1|y\(6));

-- Location: IOIBUF_X3_Y0_N1
\PCIN[7]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_PCIN(7),
	o => \PCIN[7]~input_o\);

-- Location: LCCOMB_X3_Y4_N30
\reg|reg_1|y[7]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \reg|reg_1|y[7]~feeder_combout\ = \PCIN[7]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \PCIN[7]~input_o\,
	combout => \reg|reg_1|y[7]~feeder_combout\);

-- Location: FF_X3_Y4_N31
\reg|reg_1|y[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \reg|reg_1|y[7]~feeder_combout\,
	ena => \EN~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \reg|reg_1|y\(7));

-- Location: IOIBUF_X11_Y0_N8
\PCIN[8]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_PCIN(8),
	o => \PCIN[8]~input_o\);

-- Location: LCCOMB_X3_Y4_N24
\reg|reg_2|y[0]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \reg|reg_2|y[0]~feeder_combout\ = \PCIN[8]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \PCIN[8]~input_o\,
	combout => \reg|reg_2|y[0]~feeder_combout\);

-- Location: FF_X3_Y4_N25
\reg|reg_2|y[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \reg|reg_2|y[0]~feeder_combout\,
	ena => \EN~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \reg|reg_2|y\(0));

-- Location: IOIBUF_X0_Y4_N22
\PCIN[9]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_PCIN(9),
	o => \PCIN[9]~input_o\);

-- Location: LCCOMB_X1_Y4_N28
\reg|reg_2|y[1]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \reg|reg_2|y[1]~feeder_combout\ = \PCIN[9]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \PCIN[9]~input_o\,
	combout => \reg|reg_2|y[1]~feeder_combout\);

-- Location: FF_X1_Y4_N29
\reg|reg_2|y[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \reg|reg_2|y[1]~feeder_combout\,
	ena => \EN~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \reg|reg_2|y\(1));

-- Location: IOIBUF_X0_Y10_N15
\PCIN[10]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_PCIN(10),
	o => \PCIN[10]~input_o\);

-- Location: LCCOMB_X3_Y4_N26
\reg|reg_2|y[2]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \reg|reg_2|y[2]~feeder_combout\ = \PCIN[10]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \PCIN[10]~input_o\,
	combout => \reg|reg_2|y[2]~feeder_combout\);

-- Location: FF_X3_Y4_N27
\reg|reg_2|y[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \reg|reg_2|y[2]~feeder_combout\,
	ena => \EN~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \reg|reg_2|y\(2));

-- Location: IOIBUF_X5_Y0_N22
\PCIN[11]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_PCIN(11),
	o => \PCIN[11]~input_o\);

-- Location: LCCOMB_X3_Y4_N28
\reg|reg_2|y[3]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \reg|reg_2|y[3]~feeder_combout\ = \PCIN[11]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \PCIN[11]~input_o\,
	combout => \reg|reg_2|y[3]~feeder_combout\);

-- Location: FF_X3_Y4_N29
\reg|reg_2|y[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \reg|reg_2|y[3]~feeder_combout\,
	ena => \EN~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \reg|reg_2|y\(3));

-- Location: IOIBUF_X1_Y0_N15
\PCIN[12]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_PCIN(12),
	o => \PCIN[12]~input_o\);

-- Location: LCCOMB_X1_Y4_N22
\reg|reg_2|y[4]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \reg|reg_2|y[4]~feeder_combout\ = \PCIN[12]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \PCIN[12]~input_o\,
	combout => \reg|reg_2|y[4]~feeder_combout\);

-- Location: FF_X1_Y4_N23
\reg|reg_2|y[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \reg|reg_2|y[4]~feeder_combout\,
	ena => \EN~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \reg|reg_2|y\(4));

-- Location: IOIBUF_X9_Y0_N15
\PCIN[13]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_PCIN(13),
	o => \PCIN[13]~input_o\);

-- Location: LCCOMB_X6_Y4_N24
\reg|reg_2|y[5]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \reg|reg_2|y[5]~feeder_combout\ = \PCIN[13]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \PCIN[13]~input_o\,
	combout => \reg|reg_2|y[5]~feeder_combout\);

-- Location: FF_X6_Y4_N25
\reg|reg_2|y[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \reg|reg_2|y[5]~feeder_combout\,
	ena => \EN~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \reg|reg_2|y\(5));

-- Location: IOIBUF_X11_Y0_N1
\PCIN[14]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_PCIN(14),
	o => \PCIN[14]~input_o\);

-- Location: LCCOMB_X7_Y4_N12
\reg|reg_2|y[6]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \reg|reg_2|y[6]~feeder_combout\ = \PCIN[14]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \PCIN[14]~input_o\,
	combout => \reg|reg_2|y[6]~feeder_combout\);

-- Location: FF_X7_Y4_N13
\reg|reg_2|y[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \reg|reg_2|y[6]~feeder_combout\,
	ena => \EN~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \reg|reg_2|y\(6));

-- Location: IOIBUF_X0_Y11_N15
\PCIN[15]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_PCIN(15),
	o => \PCIN[15]~input_o\);

-- Location: LCCOMB_X3_Y4_N6
\reg|reg_2|y[7]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \reg|reg_2|y[7]~feeder_combout\ = \PCIN[15]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \PCIN[15]~input_o\,
	combout => \reg|reg_2|y[7]~feeder_combout\);

-- Location: FF_X3_Y4_N7
\reg|reg_2|y[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \reg|reg_2|y[7]~feeder_combout\,
	ena => \EN~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \reg|reg_2|y\(7));

-- Location: IOIBUF_X20_Y0_N15
\RST~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_RST,
	o => \RST~input_o\);

ww_PCOUT(0) <= \PCOUT[0]~output_o\;

ww_PCOUT(1) <= \PCOUT[1]~output_o\;

ww_PCOUT(2) <= \PCOUT[2]~output_o\;

ww_PCOUT(3) <= \PCOUT[3]~output_o\;

ww_PCOUT(4) <= \PCOUT[4]~output_o\;

ww_PCOUT(5) <= \PCOUT[5]~output_o\;

ww_PCOUT(6) <= \PCOUT[6]~output_o\;

ww_PCOUT(7) <= \PCOUT[7]~output_o\;

ww_PCOUT(8) <= \PCOUT[8]~output_o\;

ww_PCOUT(9) <= \PCOUT[9]~output_o\;

ww_PCOUT(10) <= \PCOUT[10]~output_o\;

ww_PCOUT(11) <= \PCOUT[11]~output_o\;

ww_PCOUT(12) <= \PCOUT[12]~output_o\;

ww_PCOUT(13) <= \PCOUT[13]~output_o\;

ww_PCOUT(14) <= \PCOUT[14]~output_o\;

ww_PCOUT(15) <= \PCOUT[15]~output_o\;
END structure;


