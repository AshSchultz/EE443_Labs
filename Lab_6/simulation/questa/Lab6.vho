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

-- DATE "03/24/2026 15:02:01"

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


LIBRARY CYCLONEIVE;
LIBRARY IEEE;
USE CYCLONEIVE.CYCLONEIVE_COMPONENTS.ALL;
USE IEEE.STD_LOGIC_1164.ALL;

ENTITY 	INCTWO IS
    PORT (
	A : IN std_logic_vector(15 DOWNTO 0);
	F : OUT std_logic_vector(15 DOWNTO 0)
	);
END INCTWO;

-- Design Ports Information
-- F[0]	=>  Location: PIN_AF10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- F[1]	=>  Location: PIN_AE14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- F[2]	=>  Location: PIN_AC14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- F[3]	=>  Location: PIN_C13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- F[4]	=>  Location: PIN_AD12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- F[5]	=>  Location: PIN_D13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- F[6]	=>  Location: PIN_AH12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- F[7]	=>  Location: PIN_AF5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- F[8]	=>  Location: PIN_AA14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- F[9]	=>  Location: PIN_AA12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- F[10]	=>  Location: PIN_AD14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- F[11]	=>  Location: PIN_AG12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- F[12]	=>  Location: PIN_AB14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- F[13]	=>  Location: PIN_Y13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- F[14]	=>  Location: PIN_AB12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- F[15]	=>  Location: PIN_AC12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[0]	=>  Location: PIN_AE10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[1]	=>  Location: PIN_AD11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[2]	=>  Location: PIN_AH17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[3]	=>  Location: PIN_AC15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[4]	=>  Location: PIN_AD15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[5]	=>  Location: PIN_Y12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[6]	=>  Location: PIN_AG17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[7]	=>  Location: PIN_AF14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[8]	=>  Location: PIN_Y14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[9]	=>  Location: PIN_Y15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[10]	=>  Location: PIN_AB13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[11]	=>  Location: PIN_AF15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[12]	=>  Location: PIN_AE15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[13]	=>  Location: PIN_AA13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[14]	=>  Location: PIN_AE13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[15]	=>  Location: PIN_AC11,	 I/O Standard: 2.5 V,	 Current Strength: Default


ARCHITECTURE structure OF INCTWO IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_A : std_logic_vector(15 DOWNTO 0);
SIGNAL ww_F : std_logic_vector(15 DOWNTO 0);
SIGNAL \F[0]~output_o\ : std_logic;
SIGNAL \F[1]~output_o\ : std_logic;
SIGNAL \F[2]~output_o\ : std_logic;
SIGNAL \F[3]~output_o\ : std_logic;
SIGNAL \F[4]~output_o\ : std_logic;
SIGNAL \F[5]~output_o\ : std_logic;
SIGNAL \F[6]~output_o\ : std_logic;
SIGNAL \F[7]~output_o\ : std_logic;
SIGNAL \F[8]~output_o\ : std_logic;
SIGNAL \F[9]~output_o\ : std_logic;
SIGNAL \F[10]~output_o\ : std_logic;
SIGNAL \F[11]~output_o\ : std_logic;
SIGNAL \F[12]~output_o\ : std_logic;
SIGNAL \F[13]~output_o\ : std_logic;
SIGNAL \F[14]~output_o\ : std_logic;
SIGNAL \F[15]~output_o\ : std_logic;
SIGNAL \A[0]~input_o\ : std_logic;
SIGNAL \A[1]~input_o\ : std_logic;
SIGNAL \A[2]~input_o\ : std_logic;
SIGNAL \A[3]~input_o\ : std_logic;
SIGNAL \A[4]~input_o\ : std_logic;
SIGNAL \alu0|alu1|adder|C~0_combout\ : std_logic;
SIGNAL \A[5]~input_o\ : std_logic;
SIGNAL \A[6]~input_o\ : std_logic;
SIGNAL \A[7]~input_o\ : std_logic;
SIGNAL \alu0|alu1|adder|COUT~0_combout\ : std_logic;
SIGNAL \A[8]~input_o\ : std_logic;
SIGNAL \A[9]~input_o\ : std_logic;
SIGNAL \A[10]~input_o\ : std_logic;
SIGNAL \alu0|alu2|adder|C~0_combout\ : std_logic;
SIGNAL \A[11]~input_o\ : std_logic;
SIGNAL \A[12]~input_o\ : std_logic;
SIGNAL \A[13]~input_o\ : std_logic;
SIGNAL \A[14]~input_o\ : std_logic;
SIGNAL \alu0|alu3|adder|C~0_combout\ : std_logic;
SIGNAL \A[15]~input_o\ : std_logic;
SIGNAL \alu0|alu3|adder|S\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \alu0|alu2|adder|S\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \alu0|alu0|adder|S\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \alu0|alu1|adder|S\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \ALT_INV_A[1]~input_o\ : std_logic;

COMPONENT hard_block
    PORT (
	devoe : IN std_logic;
	devclrn : IN std_logic;
	devpor : IN std_logic);
END COMPONENT;

BEGIN

ww_A <= A;
F <= ww_F;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;
\ALT_INV_A[1]~input_o\ <= NOT \A[1]~input_o\;
auto_generated_inst : hard_block
PORT MAP (
	devoe => ww_devoe,
	devclrn => ww_devclrn,
	devpor => ww_devpor);

-- Location: IOOBUF_X29_Y0_N16
\F[0]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \A[0]~input_o\,
	devoe => ww_devoe,
	o => \F[0]~output_o\);

-- Location: IOOBUF_X49_Y0_N23
\F[1]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \ALT_INV_A[1]~input_o\,
	devoe => ww_devoe,
	o => \F[1]~output_o\);

-- Location: IOOBUF_X56_Y0_N23
\F[2]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \alu0|alu0|adder|S\(2),
	devoe => ww_devoe,
	o => \F[2]~output_o\);

-- Location: IOOBUF_X54_Y73_N2
\F[3]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \alu0|alu0|adder|S\(3),
	devoe => ww_devoe,
	o => \F[3]~output_o\);

-- Location: IOOBUF_X47_Y0_N2
\F[4]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \alu0|alu1|adder|S\(0),
	devoe => ww_devoe,
	o => \F[4]~output_o\);

-- Location: IOOBUF_X54_Y73_N9
\F[5]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \alu0|alu1|adder|S\(1),
	devoe => ww_devoe,
	o => \F[5]~output_o\);

-- Location: IOOBUF_X54_Y0_N2
\F[6]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \alu0|alu1|adder|S\(2),
	devoe => ww_devoe,
	o => \F[6]~output_o\);

-- Location: IOOBUF_X5_Y0_N16
\F[7]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \alu0|alu1|adder|S\(3),
	devoe => ww_devoe,
	o => \F[7]~output_o\);

-- Location: IOOBUF_X54_Y0_N23
\F[8]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \alu0|alu2|adder|S\(0),
	devoe => ww_devoe,
	o => \F[8]~output_o\);

-- Location: IOOBUF_X52_Y0_N16
\F[9]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \alu0|alu2|adder|S\(1),
	devoe => ww_devoe,
	o => \F[9]~output_o\);

-- Location: IOOBUF_X56_Y0_N16
\F[10]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \alu0|alu2|adder|S\(2),
	devoe => ww_devoe,
	o => \F[10]~output_o\);

-- Location: IOOBUF_X54_Y0_N9
\F[11]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \alu0|alu2|adder|S\(3),
	devoe => ww_devoe,
	o => \F[11]~output_o\);

-- Location: IOOBUF_X54_Y0_N16
\F[12]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \alu0|alu3|adder|S\(0),
	devoe => ww_devoe,
	o => \F[12]~output_o\);

-- Location: IOOBUF_X52_Y0_N9
\F[13]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \alu0|alu3|adder|S\(1),
	devoe => ww_devoe,
	o => \F[13]~output_o\);

-- Location: IOOBUF_X45_Y0_N16
\F[14]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \alu0|alu3|adder|S\(2),
	devoe => ww_devoe,
	o => \F[14]~output_o\);

-- Location: IOOBUF_X45_Y0_N23
\F[15]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \alu0|alu3|adder|S\(3),
	devoe => ww_devoe,
	o => \F[15]~output_o\);

-- Location: IOIBUF_X29_Y0_N22
\A[0]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(0),
	o => \A[0]~input_o\);

-- Location: IOIBUF_X49_Y0_N1
\A[1]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(1),
	o => \A[1]~input_o\);

-- Location: IOIBUF_X62_Y0_N15
\A[2]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(2),
	o => \A[2]~input_o\);

-- Location: LCCOMB_X55_Y1_N24
\alu0|alu0|adder|S[2]\ : cycloneive_lcell_comb
-- Equation(s):
-- \alu0|alu0|adder|S\(2) = \A[1]~input_o\ $ (\A[2]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[1]~input_o\,
	datad => \A[2]~input_o\,
	combout => \alu0|alu0|adder|S\(2));

-- Location: IOIBUF_X60_Y0_N22
\A[3]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(3),
	o => \A[3]~input_o\);

-- Location: LCCOMB_X55_Y1_N2
\alu0|alu0|adder|S[3]\ : cycloneive_lcell_comb
-- Equation(s):
-- \alu0|alu0|adder|S\(3) = \A[3]~input_o\ $ (((\A[1]~input_o\ & \A[2]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[1]~input_o\,
	datab => \A[3]~input_o\,
	datad => \A[2]~input_o\,
	combout => \alu0|alu0|adder|S\(3));

-- Location: IOIBUF_X60_Y0_N15
\A[4]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(4),
	o => \A[4]~input_o\);

-- Location: LCCOMB_X55_Y1_N12
\alu0|alu1|adder|S[0]\ : cycloneive_lcell_comb
-- Equation(s):
-- \alu0|alu1|adder|S\(0) = \A[4]~input_o\ $ (((\A[1]~input_o\ & (\A[3]~input_o\ & \A[2]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111100011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[1]~input_o\,
	datab => \A[3]~input_o\,
	datac => \A[4]~input_o\,
	datad => \A[2]~input_o\,
	combout => \alu0|alu1|adder|S\(0));

-- Location: LCCOMB_X55_Y1_N22
\alu0|alu1|adder|C~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \alu0|alu1|adder|C~0_combout\ = (\A[1]~input_o\ & (\A[3]~input_o\ & (\A[4]~input_o\ & \A[2]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[1]~input_o\,
	datab => \A[3]~input_o\,
	datac => \A[4]~input_o\,
	datad => \A[2]~input_o\,
	combout => \alu0|alu1|adder|C~0_combout\);

-- Location: IOIBUF_X52_Y0_N22
\A[5]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(5),
	o => \A[5]~input_o\);

-- Location: LCCOMB_X55_Y1_N0
\alu0|alu1|adder|S[1]\ : cycloneive_lcell_comb
-- Equation(s):
-- \alu0|alu1|adder|S\(1) = \alu0|alu1|adder|C~0_combout\ $ (\A[5]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \alu0|alu1|adder|C~0_combout\,
	datac => \A[5]~input_o\,
	combout => \alu0|alu1|adder|S\(1));

-- Location: IOIBUF_X62_Y0_N22
\A[6]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(6),
	o => \A[6]~input_o\);

-- Location: LCCOMB_X55_Y1_N18
\alu0|alu1|adder|S[2]\ : cycloneive_lcell_comb
-- Equation(s):
-- \alu0|alu1|adder|S\(2) = \A[6]~input_o\ $ (((\alu0|alu1|adder|C~0_combout\ & \A[5]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \alu0|alu1|adder|C~0_combout\,
	datac => \A[5]~input_o\,
	datad => \A[6]~input_o\,
	combout => \alu0|alu1|adder|S\(2));

-- Location: IOIBUF_X49_Y0_N15
\A[7]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(7),
	o => \A[7]~input_o\);

-- Location: LCCOMB_X55_Y1_N28
\alu0|alu1|adder|S[3]\ : cycloneive_lcell_comb
-- Equation(s):
-- \alu0|alu1|adder|S\(3) = \A[7]~input_o\ $ (((\A[5]~input_o\ & (\alu0|alu1|adder|C~0_combout\ & \A[6]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110101010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[7]~input_o\,
	datab => \A[5]~input_o\,
	datac => \alu0|alu1|adder|C~0_combout\,
	datad => \A[6]~input_o\,
	combout => \alu0|alu1|adder|S\(3));

-- Location: LCCOMB_X55_Y1_N30
\alu0|alu1|adder|COUT~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \alu0|alu1|adder|COUT~0_combout\ = (\A[7]~input_o\ & (\A[5]~input_o\ & (\alu0|alu1|adder|C~0_combout\ & \A[6]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[7]~input_o\,
	datab => \A[5]~input_o\,
	datac => \alu0|alu1|adder|C~0_combout\,
	datad => \A[6]~input_o\,
	combout => \alu0|alu1|adder|COUT~0_combout\);

-- Location: IOIBUF_X56_Y0_N8
\A[8]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(8),
	o => \A[8]~input_o\);

-- Location: LCCOMB_X55_Y1_N8
\alu0|alu2|adder|S[0]\ : cycloneive_lcell_comb
-- Equation(s):
-- \alu0|alu2|adder|S\(0) = \alu0|alu1|adder|COUT~0_combout\ $ (\A[8]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \alu0|alu1|adder|COUT~0_combout\,
	datad => \A[8]~input_o\,
	combout => \alu0|alu2|adder|S\(0));

-- Location: IOIBUF_X56_Y0_N1
\A[9]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(9),
	o => \A[9]~input_o\);

-- Location: LCCOMB_X55_Y1_N10
\alu0|alu2|adder|S[1]\ : cycloneive_lcell_comb
-- Equation(s):
-- \alu0|alu2|adder|S\(1) = \A[9]~input_o\ $ (((\alu0|alu1|adder|COUT~0_combout\ & \A[8]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \A[9]~input_o\,
	datac => \alu0|alu1|adder|COUT~0_combout\,
	datad => \A[8]~input_o\,
	combout => \alu0|alu2|adder|S\(1));

-- Location: IOIBUF_X47_Y0_N8
\A[10]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(10),
	o => \A[10]~input_o\);

-- Location: LCCOMB_X55_Y1_N4
\alu0|alu2|adder|S[2]\ : cycloneive_lcell_comb
-- Equation(s):
-- \alu0|alu2|adder|S\(2) = \A[10]~input_o\ $ (((\alu0|alu1|adder|COUT~0_combout\ & (\A[9]~input_o\ & \A[8]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110110011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \alu0|alu1|adder|COUT~0_combout\,
	datab => \A[10]~input_o\,
	datac => \A[9]~input_o\,
	datad => \A[8]~input_o\,
	combout => \alu0|alu2|adder|S\(2));

-- Location: LCCOMB_X55_Y1_N6
\alu0|alu2|adder|C~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \alu0|alu2|adder|C~0_combout\ = (\alu0|alu1|adder|COUT~0_combout\ & (\A[10]~input_o\ & (\A[9]~input_o\ & \A[8]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \alu0|alu1|adder|COUT~0_combout\,
	datab => \A[10]~input_o\,
	datac => \A[9]~input_o\,
	datad => \A[8]~input_o\,
	combout => \alu0|alu2|adder|C~0_combout\);

-- Location: IOIBUF_X60_Y0_N1
\A[11]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(11),
	o => \A[11]~input_o\);

-- Location: LCCOMB_X55_Y1_N16
\alu0|alu2|adder|S[3]\ : cycloneive_lcell_comb
-- Equation(s):
-- \alu0|alu2|adder|S\(3) = \alu0|alu2|adder|C~0_combout\ $ (\A[11]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \alu0|alu2|adder|C~0_combout\,
	datad => \A[11]~input_o\,
	combout => \alu0|alu2|adder|S\(3));

-- Location: IOIBUF_X60_Y0_N8
\A[12]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(12),
	o => \A[12]~input_o\);

-- Location: LCCOMB_X55_Y1_N26
\alu0|alu3|adder|S[0]\ : cycloneive_lcell_comb
-- Equation(s):
-- \alu0|alu3|adder|S\(0) = \A[12]~input_o\ $ (((\alu0|alu2|adder|C~0_combout\ & \A[11]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \alu0|alu2|adder|C~0_combout\,
	datac => \A[12]~input_o\,
	datad => \A[11]~input_o\,
	combout => \alu0|alu3|adder|S\(0));

-- Location: IOIBUF_X52_Y0_N1
\A[13]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(13),
	o => \A[13]~input_o\);

-- Location: LCCOMB_X55_Y1_N20
\alu0|alu3|adder|S[1]\ : cycloneive_lcell_comb
-- Equation(s):
-- \alu0|alu3|adder|S\(1) = \A[13]~input_o\ $ (((\alu0|alu2|adder|C~0_combout\ & (\A[12]~input_o\ & \A[11]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110110011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \alu0|alu2|adder|C~0_combout\,
	datab => \A[13]~input_o\,
	datac => \A[12]~input_o\,
	datad => \A[11]~input_o\,
	combout => \alu0|alu3|adder|S\(1));

-- Location: IOIBUF_X42_Y0_N22
\A[14]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(14),
	o => \A[14]~input_o\);

-- Location: LCCOMB_X55_Y1_N14
\alu0|alu3|adder|C~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \alu0|alu3|adder|C~0_combout\ = (\alu0|alu2|adder|C~0_combout\ & (\A[13]~input_o\ & (\A[12]~input_o\ & \A[11]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \alu0|alu2|adder|C~0_combout\,
	datab => \A[13]~input_o\,
	datac => \A[12]~input_o\,
	datad => \A[11]~input_o\,
	combout => \alu0|alu3|adder|C~0_combout\);

-- Location: LCCOMB_X49_Y1_N0
\alu0|alu3|adder|S[2]\ : cycloneive_lcell_comb
-- Equation(s):
-- \alu0|alu3|adder|S\(2) = \A[14]~input_o\ $ (\alu0|alu3|adder|C~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \A[14]~input_o\,
	datad => \alu0|alu3|adder|C~0_combout\,
	combout => \alu0|alu3|adder|S\(2));

-- Location: IOIBUF_X49_Y0_N8
\A[15]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(15),
	o => \A[15]~input_o\);

-- Location: LCCOMB_X49_Y1_N26
\alu0|alu3|adder|S[3]\ : cycloneive_lcell_comb
-- Equation(s):
-- \alu0|alu3|adder|S\(3) = \A[15]~input_o\ $ (((\A[14]~input_o\ & \alu0|alu3|adder|C~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \A[15]~input_o\,
	datac => \A[14]~input_o\,
	datad => \alu0|alu3|adder|C~0_combout\,
	combout => \alu0|alu3|adder|S\(3));

ww_F(0) <= \F[0]~output_o\;

ww_F(1) <= \F[1]~output_o\;

ww_F(2) <= \F[2]~output_o\;

ww_F(3) <= \F[3]~output_o\;

ww_F(4) <= \F[4]~output_o\;

ww_F(5) <= \F[5]~output_o\;

ww_F(6) <= \F[6]~output_o\;

ww_F(7) <= \F[7]~output_o\;

ww_F(8) <= \F[8]~output_o\;

ww_F(9) <= \F[9]~output_o\;

ww_F(10) <= \F[10]~output_o\;

ww_F(11) <= \F[11]~output_o\;

ww_F(12) <= \F[12]~output_o\;

ww_F(13) <= \F[13]~output_o\;

ww_F(14) <= \F[14]~output_o\;

ww_F(15) <= \F[15]~output_o\;
END structure;


