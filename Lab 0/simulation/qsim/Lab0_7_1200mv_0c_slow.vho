-- Copyright (C) 2023  Intel Corporation. All rights reserved.
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
-- VERSION "Version 22.1std.2 Build 922 07/20/2023 SC Lite Edition"

-- DATE "01/20/2026 16:21:27"

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

ENTITY 	REG16 IS
    PORT (
	R : IN std_logic_vector(15 DOWNTO 0);
	ENABLE : IN std_logic;
	Clock : IN std_logic;
	Q : OUT std_logic_vector(15 DOWNTO 0)
	);
END REG16;

-- Design Ports Information
-- Q[0]	=>  Location: PIN_AE3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Q[1]	=>  Location: PIN_AG3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Q[2]	=>  Location: PIN_AF2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Q[3]	=>  Location: PIN_AG6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Q[4]	=>  Location: PIN_AG4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Q[5]	=>  Location: PIN_AH6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Q[6]	=>  Location: PIN_AF3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Q[7]	=>  Location: PIN_AD7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Q[8]	=>  Location: PIN_AD10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Q[9]	=>  Location: PIN_AA5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Q[10]	=>  Location: PIN_AC5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Q[11]	=>  Location: PIN_AF4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Q[12]	=>  Location: PIN_AB4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Q[13]	=>  Location: PIN_AA7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Q[14]	=>  Location: PIN_AG7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Q[15]	=>  Location: PIN_AF6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- R[0]	=>  Location: PIN_AB5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Clock	=>  Location: PIN_J1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ENABLE	=>  Location: PIN_AC4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- R[1]	=>  Location: PIN_Y10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- R[2]	=>  Location: PIN_AE6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- R[3]	=>  Location: PIN_AC7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- R[4]	=>  Location: PIN_AB7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- R[5]	=>  Location: PIN_AH3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- R[6]	=>  Location: PIN_AF5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- R[7]	=>  Location: PIN_AE5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- R[8]	=>  Location: PIN_AD8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- R[9]	=>  Location: PIN_AH4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- R[10]	=>  Location: PIN_AD4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- R[11]	=>  Location: PIN_AE4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- R[12]	=>  Location: PIN_AB6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- R[13]	=>  Location: PIN_AD5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- R[14]	=>  Location: PIN_AB8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- R[15]	=>  Location: PIN_AB9,	 I/O Standard: 2.5 V,	 Current Strength: Default


ARCHITECTURE structure OF REG16 IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_R : std_logic_vector(15 DOWNTO 0);
SIGNAL ww_ENABLE : std_logic;
SIGNAL ww_Clock : std_logic;
SIGNAL ww_Q : std_logic_vector(15 DOWNTO 0);
SIGNAL \Clock~inputclkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \Q[0]~output_o\ : std_logic;
SIGNAL \Q[1]~output_o\ : std_logic;
SIGNAL \Q[2]~output_o\ : std_logic;
SIGNAL \Q[3]~output_o\ : std_logic;
SIGNAL \Q[4]~output_o\ : std_logic;
SIGNAL \Q[5]~output_o\ : std_logic;
SIGNAL \Q[6]~output_o\ : std_logic;
SIGNAL \Q[7]~output_o\ : std_logic;
SIGNAL \Q[8]~output_o\ : std_logic;
SIGNAL \Q[9]~output_o\ : std_logic;
SIGNAL \Q[10]~output_o\ : std_logic;
SIGNAL \Q[11]~output_o\ : std_logic;
SIGNAL \Q[12]~output_o\ : std_logic;
SIGNAL \Q[13]~output_o\ : std_logic;
SIGNAL \Q[14]~output_o\ : std_logic;
SIGNAL \Q[15]~output_o\ : std_logic;
SIGNAL \Clock~input_o\ : std_logic;
SIGNAL \Clock~inputclkctrl_outclk\ : std_logic;
SIGNAL \R[0]~input_o\ : std_logic;
SIGNAL \reg_1|y[0]~feeder_combout\ : std_logic;
SIGNAL \ENABLE~input_o\ : std_logic;
SIGNAL \R[1]~input_o\ : std_logic;
SIGNAL \R[2]~input_o\ : std_logic;
SIGNAL \reg_1|y[2]~feeder_combout\ : std_logic;
SIGNAL \R[3]~input_o\ : std_logic;
SIGNAL \reg_1|y[3]~feeder_combout\ : std_logic;
SIGNAL \R[4]~input_o\ : std_logic;
SIGNAL \reg_1|y[4]~feeder_combout\ : std_logic;
SIGNAL \R[5]~input_o\ : std_logic;
SIGNAL \R[6]~input_o\ : std_logic;
SIGNAL \R[7]~input_o\ : std_logic;
SIGNAL \reg_1|y[7]~feeder_combout\ : std_logic;
SIGNAL \R[8]~input_o\ : std_logic;
SIGNAL \reg_2|y[0]~feeder_combout\ : std_logic;
SIGNAL \R[9]~input_o\ : std_logic;
SIGNAL \reg_2|y[1]~feeder_combout\ : std_logic;
SIGNAL \R[10]~input_o\ : std_logic;
SIGNAL \R[11]~input_o\ : std_logic;
SIGNAL \reg_2|y[3]~feeder_combout\ : std_logic;
SIGNAL \R[12]~input_o\ : std_logic;
SIGNAL \reg_2|y[4]~feeder_combout\ : std_logic;
SIGNAL \R[13]~input_o\ : std_logic;
SIGNAL \reg_2|y[5]~feeder_combout\ : std_logic;
SIGNAL \R[14]~input_o\ : std_logic;
SIGNAL \reg_2|y[6]~feeder_combout\ : std_logic;
SIGNAL \R[15]~input_o\ : std_logic;
SIGNAL \reg_2|y[7]~feeder_combout\ : std_logic;
SIGNAL \reg_1|y\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \reg_2|y\ : std_logic_vector(7 DOWNTO 0);

COMPONENT hard_block
    PORT (
	devoe : IN std_logic;
	devclrn : IN std_logic;
	devpor : IN std_logic);
END COMPONENT;

BEGIN

ww_R <= R;
ww_ENABLE <= ENABLE;
ww_Clock <= Clock;
Q <= ww_Q;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

\Clock~inputclkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \Clock~input_o\);
auto_generated_inst : hard_block
PORT MAP (
	devoe => ww_devoe,
	devclrn => ww_devclrn,
	devpor => ww_devpor);

-- Location: IOOBUF_X0_Y7_N9
\Q[0]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \reg_1|y\(0),
	devoe => ww_devoe,
	o => \Q[0]~output_o\);

-- Location: IOOBUF_X3_Y0_N16
\Q[1]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \reg_1|y\(1),
	devoe => ww_devoe,
	o => \Q[1]~output_o\);

-- Location: IOOBUF_X0_Y6_N2
\Q[2]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \reg_1|y\(2),
	devoe => ww_devoe,
	o => \Q[2]~output_o\);

-- Location: IOOBUF_X11_Y0_N23
\Q[3]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \reg_1|y\(3),
	devoe => ww_devoe,
	o => \Q[3]~output_o\);

-- Location: IOOBUF_X9_Y0_N23
\Q[4]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \reg_1|y\(4),
	devoe => ww_devoe,
	o => \Q[4]~output_o\);

-- Location: IOOBUF_X11_Y0_N16
\Q[5]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \reg_1|y\(5),
	devoe => ww_devoe,
	o => \Q[5]~output_o\);

-- Location: IOOBUF_X7_Y0_N23
\Q[6]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \reg_1|y\(6),
	devoe => ww_devoe,
	o => \Q[6]~output_o\);

-- Location: IOOBUF_X3_Y0_N2
\Q[7]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \reg_1|y\(7),
	devoe => ww_devoe,
	o => \Q[7]~output_o\);

-- Location: IOOBUF_X13_Y0_N23
\Q[8]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \reg_2|y\(0),
	devoe => ww_devoe,
	o => \Q[8]~output_o\);

-- Location: IOOBUF_X0_Y10_N23
\Q[9]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \reg_2|y\(1),
	devoe => ww_devoe,
	o => \Q[9]~output_o\);

-- Location: IOOBUF_X0_Y5_N16
\Q[10]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \reg_2|y\(2),
	devoe => ww_devoe,
	o => \Q[10]~output_o\);

-- Location: IOOBUF_X1_Y0_N2
\Q[11]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \reg_2|y\(3),
	devoe => ww_devoe,
	o => \Q[11]~output_o\);

-- Location: IOOBUF_X0_Y8_N23
\Q[12]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \reg_2|y\(4),
	devoe => ww_devoe,
	o => \Q[12]~output_o\);

-- Location: IOOBUF_X0_Y9_N16
\Q[13]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \reg_2|y\(5),
	devoe => ww_devoe,
	o => \Q[13]~output_o\);

-- Location: IOOBUF_X16_Y0_N23
\Q[14]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \reg_2|y\(6),
	devoe => ww_devoe,
	o => \Q[14]~output_o\);

-- Location: IOOBUF_X7_Y0_N16
\Q[15]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \reg_2|y\(7),
	devoe => ww_devoe,
	o => \Q[15]~output_o\);

-- Location: IOIBUF_X0_Y36_N8
\Clock~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_Clock,
	o => \Clock~input_o\);

-- Location: CLKCTRL_G2
\Clock~inputclkctrl\ : cycloneive_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \Clock~inputclkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \Clock~inputclkctrl_outclk\);

-- Location: IOIBUF_X0_Y4_N22
\R[0]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_R(0),
	o => \R[0]~input_o\);

-- Location: LCCOMB_X1_Y4_N0
\reg_1|y[0]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \reg_1|y[0]~feeder_combout\ = \R[0]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \R[0]~input_o\,
	combout => \reg_1|y[0]~feeder_combout\);

-- Location: IOIBUF_X0_Y4_N1
\ENABLE~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_ENABLE,
	o => \ENABLE~input_o\);

-- Location: FF_X1_Y4_N1
\reg_1|y[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock~inputclkctrl_outclk\,
	d => \reg_1|y[0]~feeder_combout\,
	ena => \ENABLE~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \reg_1|y\(0));

-- Location: IOIBUF_X7_Y0_N8
\R[1]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_R(1),
	o => \R[1]~input_o\);

-- Location: FF_X4_Y4_N17
\reg_1|y[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock~inputclkctrl_outclk\,
	asdata => \R[1]~input_o\,
	sload => VCC,
	ena => \ENABLE~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \reg_1|y\(1));

-- Location: IOIBUF_X1_Y0_N15
\R[2]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_R(2),
	o => \R[2]~input_o\);

-- Location: LCCOMB_X1_Y4_N26
\reg_1|y[2]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \reg_1|y[2]~feeder_combout\ = \R[2]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \R[2]~input_o\,
	combout => \reg_1|y[2]~feeder_combout\);

-- Location: FF_X1_Y4_N27
\reg_1|y[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock~inputclkctrl_outclk\,
	d => \reg_1|y[2]~feeder_combout\,
	ena => \ENABLE~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \reg_1|y\(2));

-- Location: IOIBUF_X9_Y0_N1
\R[3]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_R(3),
	o => \R[3]~input_o\);

-- Location: LCCOMB_X4_Y4_N2
\reg_1|y[3]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \reg_1|y[3]~feeder_combout\ = \R[3]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \R[3]~input_o\,
	combout => \reg_1|y[3]~feeder_combout\);

-- Location: FF_X4_Y4_N3
\reg_1|y[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock~inputclkctrl_outclk\,
	d => \reg_1|y[3]~feeder_combout\,
	ena => \ENABLE~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \reg_1|y\(3));

-- Location: IOIBUF_X16_Y0_N1
\R[4]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_R(4),
	o => \R[4]~input_o\);

-- Location: LCCOMB_X4_Y4_N28
\reg_1|y[4]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \reg_1|y[4]~feeder_combout\ = \R[4]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \R[4]~input_o\,
	combout => \reg_1|y[4]~feeder_combout\);

-- Location: FF_X4_Y4_N29
\reg_1|y[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock~inputclkctrl_outclk\,
	d => \reg_1|y[4]~feeder_combout\,
	ena => \ENABLE~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \reg_1|y\(4));

-- Location: IOIBUF_X5_Y0_N8
\R[5]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_R(5),
	o => \R[5]~input_o\);

-- Location: FF_X4_Y4_N7
\reg_1|y[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock~inputclkctrl_outclk\,
	asdata => \R[5]~input_o\,
	sload => VCC,
	ena => \ENABLE~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \reg_1|y\(5));

-- Location: IOIBUF_X5_Y0_N15
\R[6]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_R(6),
	o => \R[6]~input_o\);

-- Location: FF_X4_Y4_N25
\reg_1|y[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock~inputclkctrl_outclk\,
	asdata => \R[6]~input_o\,
	sload => VCC,
	ena => \ENABLE~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \reg_1|y\(6));

-- Location: IOIBUF_X5_Y0_N22
\R[7]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_R(7),
	o => \R[7]~input_o\);

-- Location: LCCOMB_X4_Y4_N26
\reg_1|y[7]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \reg_1|y[7]~feeder_combout\ = \R[7]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \R[7]~input_o\,
	combout => \reg_1|y[7]~feeder_combout\);

-- Location: FF_X4_Y4_N27
\reg_1|y[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock~inputclkctrl_outclk\,
	d => \reg_1|y[7]~feeder_combout\,
	ena => \ENABLE~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \reg_1|y\(7));

-- Location: IOIBUF_X9_Y0_N8
\R[8]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_R(8),
	o => \R[8]~input_o\);

-- Location: LCCOMB_X4_Y4_N12
\reg_2|y[0]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \reg_2|y[0]~feeder_combout\ = \R[8]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \R[8]~input_o\,
	combout => \reg_2|y[0]~feeder_combout\);

-- Location: FF_X4_Y4_N13
\reg_2|y[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock~inputclkctrl_outclk\,
	d => \reg_2|y[0]~feeder_combout\,
	ena => \ENABLE~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \reg_2|y\(0));

-- Location: IOIBUF_X9_Y0_N15
\R[9]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_R(9),
	o => \R[9]~input_o\);

-- Location: LCCOMB_X4_Y4_N14
\reg_2|y[1]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \reg_2|y[1]~feeder_combout\ = \R[9]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \R[9]~input_o\,
	combout => \reg_2|y[1]~feeder_combout\);

-- Location: FF_X4_Y4_N15
\reg_2|y[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock~inputclkctrl_outclk\,
	d => \reg_2|y[1]~feeder_combout\,
	ena => \ENABLE~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \reg_2|y\(1));

-- Location: IOIBUF_X1_Y0_N8
\R[10]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_R(10),
	o => \R[10]~input_o\);

-- Location: FF_X1_Y4_N13
\reg_2|y[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock~inputclkctrl_outclk\,
	asdata => \R[10]~input_o\,
	sload => VCC,
	ena => \ENABLE~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \reg_2|y\(2));

-- Location: IOIBUF_X3_Y0_N22
\R[11]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_R(11),
	o => \R[11]~input_o\);

-- Location: LCCOMB_X3_Y4_N0
\reg_2|y[3]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \reg_2|y[3]~feeder_combout\ = \R[11]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \R[11]~input_o\,
	combout => \reg_2|y[3]~feeder_combout\);

-- Location: FF_X3_Y4_N1
\reg_2|y[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock~inputclkctrl_outclk\,
	d => \reg_2|y[3]~feeder_combout\,
	ena => \ENABLE~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \reg_2|y\(3));

-- Location: IOIBUF_X0_Y4_N8
\R[12]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_R(12),
	o => \R[12]~input_o\);

-- Location: LCCOMB_X1_Y4_N22
\reg_2|y[4]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \reg_2|y[4]~feeder_combout\ = \R[12]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \R[12]~input_o\,
	combout => \reg_2|y[4]~feeder_combout\);

-- Location: FF_X1_Y4_N23
\reg_2|y[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock~inputclkctrl_outclk\,
	d => \reg_2|y[4]~feeder_combout\,
	ena => \ENABLE~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \reg_2|y\(4));

-- Location: IOIBUF_X1_Y0_N22
\R[13]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_R(13),
	o => \R[13]~input_o\);

-- Location: LCCOMB_X1_Y4_N8
\reg_2|y[5]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \reg_2|y[5]~feeder_combout\ = \R[13]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \R[13]~input_o\,
	combout => \reg_2|y[5]~feeder_combout\);

-- Location: FF_X1_Y4_N9
\reg_2|y[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock~inputclkctrl_outclk\,
	d => \reg_2|y[5]~feeder_combout\,
	ena => \ENABLE~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \reg_2|y\(5));

-- Location: IOIBUF_X11_Y0_N1
\R[14]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_R(14),
	o => \R[14]~input_o\);

-- Location: LCCOMB_X4_Y4_N0
\reg_2|y[6]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \reg_2|y[6]~feeder_combout\ = \R[14]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \R[14]~input_o\,
	combout => \reg_2|y[6]~feeder_combout\);

-- Location: FF_X4_Y4_N1
\reg_2|y[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock~inputclkctrl_outclk\,
	d => \reg_2|y[6]~feeder_combout\,
	ena => \ENABLE~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \reg_2|y\(6));

-- Location: IOIBUF_X11_Y0_N8
\R[15]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_R(15),
	o => \R[15]~input_o\);

-- Location: LCCOMB_X4_Y4_N10
\reg_2|y[7]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \reg_2|y[7]~feeder_combout\ = \R[15]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \R[15]~input_o\,
	combout => \reg_2|y[7]~feeder_combout\);

-- Location: FF_X4_Y4_N11
\reg_2|y[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock~inputclkctrl_outclk\,
	d => \reg_2|y[7]~feeder_combout\,
	ena => \ENABLE~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \reg_2|y\(7));

ww_Q(0) <= \Q[0]~output_o\;

ww_Q(1) <= \Q[1]~output_o\;

ww_Q(2) <= \Q[2]~output_o\;

ww_Q(3) <= \Q[3]~output_o\;

ww_Q(4) <= \Q[4]~output_o\;

ww_Q(5) <= \Q[5]~output_o\;

ww_Q(6) <= \Q[6]~output_o\;

ww_Q(7) <= \Q[7]~output_o\;

ww_Q(8) <= \Q[8]~output_o\;

ww_Q(9) <= \Q[9]~output_o\;

ww_Q(10) <= \Q[10]~output_o\;

ww_Q(11) <= \Q[11]~output_o\;

ww_Q(12) <= \Q[12]~output_o\;

ww_Q(13) <= \Q[13]~output_o\;

ww_Q(14) <= \Q[14]~output_o\;

ww_Q(15) <= \Q[15]~output_o\;
END structure;


