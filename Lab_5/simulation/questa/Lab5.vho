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

-- DATE "03/17/2026 13:49:48"

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

ENTITY 	ALU16 IS
    PORT (
	A : IN std_logic_vector(15 DOWNTO 0);
	B : IN std_logic_vector(15 DOWNTO 0);
	SEL : IN std_logic_vector(2 DOWNTO 0);
	F : OUT std_logic_vector(15 DOWNTO 0);
	COUT : OUT std_logic;
	OVERFLOW : OUT std_logic;
	ZERO : OUT std_logic
	);
END ALU16;

-- Design Ports Information
-- F[0]	=>  Location: PIN_A10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- F[1]	=>  Location: PIN_B11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- F[2]	=>  Location: PIN_B10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- F[3]	=>  Location: PIN_E14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- F[4]	=>  Location: PIN_J17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- F[5]	=>  Location: PIN_J19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- F[6]	=>  Location: PIN_G20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- F[7]	=>  Location: PIN_H19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- F[8]	=>  Location: PIN_G16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- F[9]	=>  Location: PIN_A17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- F[10]	=>  Location: PIN_B17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- F[11]	=>  Location: PIN_F17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- F[12]	=>  Location: PIN_D15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- F[13]	=>  Location: PIN_F14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- F[14]	=>  Location: PIN_E12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- F[15]	=>  Location: PIN_C12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- COUT	=>  Location: PIN_C14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- OVERFLOW	=>  Location: PIN_H14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ZERO	=>  Location: PIN_A11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[0]	=>  Location: PIN_J13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[0]	=>  Location: PIN_H13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SEL[0]	=>  Location: PIN_C15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SEL[1]	=>  Location: PIN_J14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[1]	=>  Location: PIN_C10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[1]	=>  Location: PIN_G13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SEL[2]	=>  Location: PIN_H17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[2]	=>  Location: PIN_J12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[2]	=>  Location: PIN_A12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[3]	=>  Location: PIN_AB13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[3]	=>  Location: PIN_G14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[15]	=>  Location: PIN_D12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[15]	=>  Location: PIN_F15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[14]	=>  Location: PIN_D10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[14]	=>  Location: PIN_D14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[13]	=>  Location: PIN_D13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[13]	=>  Location: PIN_C13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[12]	=>  Location: PIN_H15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[12]	=>  Location: PIN_H16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[11]	=>  Location: PIN_J15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[11]	=>  Location: PIN_E15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[10]	=>  Location: PIN_D16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[10]	=>  Location: PIN_C16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[9]	=>  Location: PIN_G15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[9]	=>  Location: PIN_J16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[8]	=>  Location: PIN_B19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[8]	=>  Location: PIN_G19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[7]	=>  Location: PIN_G21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[7]	=>  Location: PIN_A18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[6]	=>  Location: PIN_B18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[6]	=>  Location: PIN_H21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[5]	=>  Location: PIN_G18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[5]	=>  Location: PIN_C17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[4]	=>  Location: PIN_G22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[4]	=>  Location: PIN_E17,	 I/O Standard: 2.5 V,	 Current Strength: Default


ARCHITECTURE structure OF ALU16 IS
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
SIGNAL ww_B : std_logic_vector(15 DOWNTO 0);
SIGNAL ww_SEL : std_logic_vector(2 DOWNTO 0);
SIGNAL ww_F : std_logic_vector(15 DOWNTO 0);
SIGNAL ww_COUT : std_logic;
SIGNAL ww_OVERFLOW : std_logic;
SIGNAL ww_ZERO : std_logic;
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
SIGNAL \COUT~output_o\ : std_logic;
SIGNAL \OVERFLOW~output_o\ : std_logic;
SIGNAL \ZERO~output_o\ : std_logic;
SIGNAL \B[0]~input_o\ : std_logic;
SIGNAL \A[0]~input_o\ : std_logic;
SIGNAL \SEL[1]~input_o\ : std_logic;
SIGNAL \SEL[0]~input_o\ : std_logic;
SIGNAL \alu0|mux|Mux3~0_combout\ : std_logic;
SIGNAL \B[1]~input_o\ : std_logic;
SIGNAL \A[1]~input_o\ : std_logic;
SIGNAL \alu0|mux|Mux2~0_combout\ : std_logic;
SIGNAL \SEL[2]~input_o\ : std_logic;
SIGNAL \alu0|adder|C~0_combout\ : std_logic;
SIGNAL \alu0|mux|Mux2~1_combout\ : std_logic;
SIGNAL \B[2]~input_o\ : std_logic;
SIGNAL \alu0|adder|C[2]~1_combout\ : std_logic;
SIGNAL \A[2]~input_o\ : std_logic;
SIGNAL \alu0|mux|Mux1~0_combout\ : std_logic;
SIGNAL \alu0|mux|Mux1~1_combout\ : std_logic;
SIGNAL \B[3]~input_o\ : std_logic;
SIGNAL \alu0|adder|C[3]~2_combout\ : std_logic;
SIGNAL \A[3]~input_o\ : std_logic;
SIGNAL \alu0|adder|S[3]~0_combout\ : std_logic;
SIGNAL \alu0|mux|Mux0~0_combout\ : std_logic;
SIGNAL \A[15]~input_o\ : std_logic;
SIGNAL \B[14]~input_o\ : std_logic;
SIGNAL \A[14]~input_o\ : std_logic;
SIGNAL \B[13]~input_o\ : std_logic;
SIGNAL \A[13]~input_o\ : std_logic;
SIGNAL \A[12]~input_o\ : std_logic;
SIGNAL \A[11]~input_o\ : std_logic;
SIGNAL \B[10]~input_o\ : std_logic;
SIGNAL \A[7]~input_o\ : std_logic;
SIGNAL \A[5]~input_o\ : std_logic;
SIGNAL \B[5]~input_o\ : std_logic;
SIGNAL \alu0|adder|C4~0_combout\ : std_logic;
SIGNAL \A[4]~input_o\ : std_logic;
SIGNAL \B[4]~input_o\ : std_logic;
SIGNAL \alu1|adder|C[1]~0_combout\ : std_logic;
SIGNAL \alu1|adder|C[2]~1_combout\ : std_logic;
SIGNAL \B[6]~input_o\ : std_logic;
SIGNAL \A[6]~input_o\ : std_logic;
SIGNAL \alu1|adder|C[3]~2_combout\ : std_logic;
SIGNAL \B[7]~input_o\ : std_logic;
SIGNAL \alu1|adder|C4~0_combout\ : std_logic;
SIGNAL \A[8]~input_o\ : std_logic;
SIGNAL \B[8]~input_o\ : std_logic;
SIGNAL \alu2|adder|C[1]~0_combout\ : std_logic;
SIGNAL \B[9]~input_o\ : std_logic;
SIGNAL \A[9]~input_o\ : std_logic;
SIGNAL \alu2|adder|C[2]~1_combout\ : std_logic;
SIGNAL \A[10]~input_o\ : std_logic;
SIGNAL \alu2|adder|C[3]~2_combout\ : std_logic;
SIGNAL \B[11]~input_o\ : std_logic;
SIGNAL \alu2|adder|C4~0_combout\ : std_logic;
SIGNAL \B[12]~input_o\ : std_logic;
SIGNAL \alu3|adder|C[1]~0_combout\ : std_logic;
SIGNAL \alu3|adder|C[2]~1_combout\ : std_logic;
SIGNAL \alu3|adder|C[3]~2_combout\ : std_logic;
SIGNAL \B[15]~input_o\ : std_logic;
SIGNAL \alu3|adder|S[3]~0_combout\ : std_logic;
SIGNAL \alu0|mux|Mux0~1_combout\ : std_logic;
SIGNAL \alu1|mux|Mux3~0_combout\ : std_logic;
SIGNAL \alu1|mux|Mux3~1_combout\ : std_logic;
SIGNAL \alu1|mux|Mux2~0_combout\ : std_logic;
SIGNAL \alu1|mux|Mux2~1_combout\ : std_logic;
SIGNAL \alu1|mux|Mux1~0_combout\ : std_logic;
SIGNAL \alu1|mux|Mux1~1_combout\ : std_logic;
SIGNAL \alu1|mux|Mux0~0_combout\ : std_logic;
SIGNAL \alu1|mux|Mux0~1_combout\ : std_logic;
SIGNAL \alu2|mux|Mux3~0_combout\ : std_logic;
SIGNAL \alu2|mux|Mux3~1_combout\ : std_logic;
SIGNAL \alu2|mux|Mux2~0_combout\ : std_logic;
SIGNAL \alu2|mux|Mux2~1_combout\ : std_logic;
SIGNAL \alu2|mux|Mux1~0_combout\ : std_logic;
SIGNAL \alu2|mux|Mux1~1_combout\ : std_logic;
SIGNAL \alu2|mux|Mux0~0_combout\ : std_logic;
SIGNAL \alu2|mux|Mux0~1_combout\ : std_logic;
SIGNAL \alu3|mux|Mux3~0_combout\ : std_logic;
SIGNAL \alu3|mux|Mux3~1_combout\ : std_logic;
SIGNAL \alu3|mux|Mux2~0_combout\ : std_logic;
SIGNAL \alu3|mux|Mux2~1_combout\ : std_logic;
SIGNAL \alu3|mux|Mux1~0_combout\ : std_logic;
SIGNAL \alu3|mux|Mux1~1_combout\ : std_logic;
SIGNAL \alu3|mux|Mux0~0_combout\ : std_logic;
SIGNAL \alu3|mux|Mux0~1_combout\ : std_logic;
SIGNAL \alu3|adder|C4~0_combout\ : std_logic;
SIGNAL \alu3|adder|OVER~combout\ : std_logic;
SIGNAL \alu2|ZERO~0_combout\ : std_logic;
SIGNAL \alu0|ZERO~0_combout\ : std_logic;
SIGNAL \alu1|ZERO~0_combout\ : std_logic;
SIGNAL \alu3|ZERO~0_combout\ : std_logic;
SIGNAL \ZERO~0_combout\ : std_logic;
SIGNAL \alu0|adder|S\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \alu0|inverter|Rt\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \alu0|adder|G\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \ALT_INV_ZERO~0_combout\ : std_logic;

COMPONENT hard_block
    PORT (
	devoe : IN std_logic;
	devclrn : IN std_logic;
	devpor : IN std_logic);
END COMPONENT;

BEGIN

ww_A <= A;
ww_B <= B;
ww_SEL <= SEL;
F <= ww_F;
COUT <= ww_COUT;
OVERFLOW <= ww_OVERFLOW;
ZERO <= ww_ZERO;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;
\ALT_INV_ZERO~0_combout\ <= NOT \ZERO~0_combout\;
auto_generated_inst : hard_block
PORT MAP (
	devoe => ww_devoe,
	devclrn => ww_devclrn,
	devpor => ww_devpor);

-- Location: IOOBUF_X38_Y73_N2
\F[0]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \alu0|mux|Mux3~0_combout\,
	devoe => ww_devoe,
	o => \F[0]~output_o\);

-- Location: IOOBUF_X42_Y73_N9
\F[1]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \alu0|mux|Mux2~1_combout\,
	devoe => ww_devoe,
	o => \F[1]~output_o\);

-- Location: IOOBUF_X38_Y73_N9
\F[2]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \alu0|mux|Mux1~1_combout\,
	devoe => ww_devoe,
	o => \F[2]~output_o\);

-- Location: IOOBUF_X45_Y73_N9
\F[3]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \alu0|mux|Mux0~1_combout\,
	devoe => ww_devoe,
	o => \F[3]~output_o\);

-- Location: IOOBUF_X69_Y73_N2
\F[4]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \alu1|mux|Mux3~1_combout\,
	devoe => ww_devoe,
	o => \F[4]~output_o\);

-- Location: IOOBUF_X72_Y73_N9
\F[5]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \alu1|mux|Mux2~1_combout\,
	devoe => ww_devoe,
	o => \F[5]~output_o\);

-- Location: IOOBUF_X74_Y73_N16
\F[6]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \alu1|mux|Mux1~1_combout\,
	devoe => ww_devoe,
	o => \F[6]~output_o\);

-- Location: IOOBUF_X72_Y73_N2
\F[7]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \alu1|mux|Mux0~1_combout\,
	devoe => ww_devoe,
	o => \F[7]~output_o\);

-- Location: IOOBUF_X67_Y73_N2
\F[8]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \alu2|mux|Mux3~1_combout\,
	devoe => ww_devoe,
	o => \F[8]~output_o\);

-- Location: IOOBUF_X60_Y73_N2
\F[9]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \alu2|mux|Mux2~1_combout\,
	devoe => ww_devoe,
	o => \F[9]~output_o\);

-- Location: IOOBUF_X60_Y73_N9
\F[10]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \alu2|mux|Mux1~1_combout\,
	devoe => ww_devoe,
	o => \F[10]~output_o\);

-- Location: IOOBUF_X67_Y73_N16
\F[11]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \alu2|mux|Mux0~1_combout\,
	devoe => ww_devoe,
	o => \F[11]~output_o\);

-- Location: IOOBUF_X58_Y73_N23
\F[12]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \alu3|mux|Mux3~1_combout\,
	devoe => ww_devoe,
	o => \F[12]~output_o\);

-- Location: IOOBUF_X45_Y73_N2
\F[13]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \alu3|mux|Mux2~1_combout\,
	devoe => ww_devoe,
	o => \F[13]~output_o\);

-- Location: IOOBUF_X33_Y73_N2
\F[14]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \alu3|mux|Mux1~1_combout\,
	devoe => ww_devoe,
	o => \F[14]~output_o\);

-- Location: IOOBUF_X52_Y73_N16
\F[15]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \alu3|mux|Mux0~1_combout\,
	devoe => ww_devoe,
	o => \F[15]~output_o\);

-- Location: IOOBUF_X52_Y73_N2
\COUT~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \alu3|adder|C4~0_combout\,
	devoe => ww_devoe,
	o => \COUT~output_o\);

-- Location: IOOBUF_X49_Y73_N16
\OVERFLOW~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \alu3|adder|OVER~combout\,
	devoe => ww_devoe,
	o => \OVERFLOW~output_o\);

-- Location: IOOBUF_X42_Y73_N2
\ZERO~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \ALT_INV_ZERO~0_combout\,
	devoe => ww_devoe,
	o => \ZERO~output_o\);

-- Location: IOIBUF_X38_Y73_N22
\B[0]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(0),
	o => \B[0]~input_o\);

-- Location: IOIBUF_X40_Y73_N1
\A[0]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(0),
	o => \A[0]~input_o\);

-- Location: IOIBUF_X49_Y73_N22
\SEL[1]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SEL(1),
	o => \SEL[1]~input_o\);

-- Location: IOIBUF_X58_Y73_N15
\SEL[0]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SEL(0),
	o => \SEL[0]~input_o\);

-- Location: LCCOMB_X47_Y72_N24
\alu0|mux|Mux3~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \alu0|mux|Mux3~0_combout\ = (\B[0]~input_o\ & (\SEL[1]~input_o\ $ (((\A[0]~input_o\) # (\SEL[0]~input_o\))))) # (!\B[0]~input_o\ & (\A[0]~input_o\ & (\SEL[1]~input_o\ $ (\SEL[0]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111001101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[0]~input_o\,
	datab => \A[0]~input_o\,
	datac => \SEL[1]~input_o\,
	datad => \SEL[0]~input_o\,
	combout => \alu0|mux|Mux3~0_combout\);

-- Location: IOIBUF_X38_Y73_N15
\B[1]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(1),
	o => \B[1]~input_o\);

-- Location: IOIBUF_X35_Y73_N15
\A[1]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(1),
	o => \A[1]~input_o\);

-- Location: LCCOMB_X47_Y72_N10
\alu0|mux|Mux2~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \alu0|mux|Mux2~0_combout\ = (!\SEL[1]~input_o\ & ((\B[1]~input_o\ & ((\A[1]~input_o\) # (\SEL[0]~input_o\))) # (!\B[1]~input_o\ & (\A[1]~input_o\ & \SEL[0]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[1]~input_o\,
	datab => \SEL[1]~input_o\,
	datac => \A[1]~input_o\,
	datad => \SEL[0]~input_o\,
	combout => \alu0|mux|Mux2~0_combout\);

-- Location: IOIBUF_X67_Y73_N8
\SEL[2]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SEL(2),
	o => \SEL[2]~input_o\);

-- Location: LCCOMB_X47_Y72_N20
\alu0|inverter|Rt[1]\ : cycloneive_lcell_comb
-- Equation(s):
-- \alu0|inverter|Rt\(1) = \B[1]~input_o\ $ (\SEL[2]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[1]~input_o\,
	datac => \SEL[2]~input_o\,
	combout => \alu0|inverter|Rt\(1));

-- Location: LCCOMB_X47_Y72_N14
\alu0|adder|G[0]\ : cycloneive_lcell_comb
-- Equation(s):
-- \alu0|adder|G\(0) = (\A[0]~input_o\ & (\B[0]~input_o\ $ (\SEL[2]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100100001001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[0]~input_o\,
	datab => \A[0]~input_o\,
	datac => \SEL[2]~input_o\,
	combout => \alu0|adder|G\(0));

-- Location: LCCOMB_X47_Y72_N0
\alu0|adder|C~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \alu0|adder|C~0_combout\ = (\SEL[2]~input_o\ & (\B[0]~input_o\ $ (!\A[0]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001000010010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[0]~input_o\,
	datab => \A[0]~input_o\,
	datac => \SEL[2]~input_o\,
	combout => \alu0|adder|C~0_combout\);

-- Location: LCCOMB_X47_Y72_N26
\alu0|adder|S[1]\ : cycloneive_lcell_comb
-- Equation(s):
-- \alu0|adder|S\(1) = \A[1]~input_o\ $ (\alu0|inverter|Rt\(1) $ (((\alu0|adder|G\(0)) # (\alu0|adder|C~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001100110010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[1]~input_o\,
	datab => \alu0|inverter|Rt\(1),
	datac => \alu0|adder|G\(0),
	datad => \alu0|adder|C~0_combout\,
	combout => \alu0|adder|S\(1));

-- Location: LCCOMB_X47_Y72_N28
\alu0|mux|Mux2~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \alu0|mux|Mux2~1_combout\ = (\alu0|mux|Mux2~0_combout\) # ((\SEL[1]~input_o\ & (\alu0|adder|S\(1) & !\SEL[0]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \alu0|mux|Mux2~0_combout\,
	datab => \SEL[1]~input_o\,
	datac => \alu0|adder|S\(1),
	datad => \SEL[0]~input_o\,
	combout => \alu0|mux|Mux2~1_combout\);

-- Location: IOIBUF_X40_Y73_N8
\B[2]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(2),
	o => \B[2]~input_o\);

-- Location: LCCOMB_X47_Y72_N6
\alu0|adder|C[2]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \alu0|adder|C[2]~1_combout\ = (\A[1]~input_o\ & ((\alu0|inverter|Rt\(1)) # ((\alu0|adder|G\(0)) # (\alu0|adder|C~0_combout\)))) # (!\A[1]~input_o\ & (\alu0|inverter|Rt\(1) & ((\alu0|adder|G\(0)) # (\alu0|adder|C~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111011101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[1]~input_o\,
	datab => \alu0|inverter|Rt\(1),
	datac => \alu0|adder|G\(0),
	datad => \alu0|adder|C~0_combout\,
	combout => \alu0|adder|C[2]~1_combout\);

-- Location: IOIBUF_X47_Y73_N1
\A[2]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(2),
	o => \A[2]~input_o\);

-- Location: LCCOMB_X47_Y72_N8
\alu0|mux|Mux1~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \alu0|mux|Mux1~0_combout\ = \A[2]~input_o\ $ (((\SEL[1]~input_o\ & (\alu0|adder|C[2]~1_combout\ $ (\SEL[2]~input_o\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011011101001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \alu0|adder|C[2]~1_combout\,
	datab => \SEL[1]~input_o\,
	datac => \SEL[2]~input_o\,
	datad => \A[2]~input_o\,
	combout => \alu0|mux|Mux1~0_combout\);

-- Location: LCCOMB_X47_Y72_N2
\alu0|mux|Mux1~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \alu0|mux|Mux1~1_combout\ = (\B[2]~input_o\ & (\SEL[1]~input_o\ $ (((\alu0|mux|Mux1~0_combout\) # (\SEL[0]~input_o\))))) # (!\B[2]~input_o\ & (\alu0|mux|Mux1~0_combout\ & (\SEL[1]~input_o\ $ (\SEL[0]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111001101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[2]~input_o\,
	datab => \alu0|mux|Mux1~0_combout\,
	datac => \SEL[1]~input_o\,
	datad => \SEL[0]~input_o\,
	combout => \alu0|mux|Mux1~1_combout\);

-- Location: IOIBUF_X47_Y73_N15
\B[3]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(3),
	o => \B[3]~input_o\);

-- Location: LCCOMB_X47_Y72_N4
\alu0|adder|C[3]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \alu0|adder|C[3]~2_combout\ = (\alu0|adder|C[2]~1_combout\ & ((\A[2]~input_o\) # (\SEL[2]~input_o\ $ (\B[2]~input_o\)))) # (!\alu0|adder|C[2]~1_combout\ & (\A[2]~input_o\ & (\SEL[2]~input_o\ $ (\B[2]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000111011101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \alu0|adder|C[2]~1_combout\,
	datab => \A[2]~input_o\,
	datac => \SEL[2]~input_o\,
	datad => \B[2]~input_o\,
	combout => \alu0|adder|C[3]~2_combout\);

-- Location: IOIBUF_X47_Y0_N8
\A[3]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(3),
	o => \A[3]~input_o\);

-- Location: LCCOMB_X47_Y72_N22
\alu0|adder|S[3]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \alu0|adder|S[3]~0_combout\ = \B[3]~input_o\ $ (\alu0|adder|C[3]~2_combout\ $ (\SEL[2]~input_o\ $ (\A[3]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[3]~input_o\,
	datab => \alu0|adder|C[3]~2_combout\,
	datac => \SEL[2]~input_o\,
	datad => \A[3]~input_o\,
	combout => \alu0|adder|S[3]~0_combout\);

-- Location: LCCOMB_X47_Y72_N16
\alu0|mux|Mux0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \alu0|mux|Mux0~0_combout\ = (\B[3]~input_o\ & ((\SEL[0]~input_o\) # ((\A[3]~input_o\ & !\SEL[1]~input_o\)))) # (!\B[3]~input_o\ & (\SEL[0]~input_o\ & ((\A[3]~input_o\) # (\SEL[1]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111000001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[3]~input_o\,
	datab => \A[3]~input_o\,
	datac => \SEL[1]~input_o\,
	datad => \SEL[0]~input_o\,
	combout => \alu0|mux|Mux0~0_combout\);

-- Location: IOIBUF_X52_Y73_N22
\A[15]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(15),
	o => \A[15]~input_o\);

-- Location: IOIBUF_X35_Y73_N22
\B[14]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(14),
	o => \B[14]~input_o\);

-- Location: IOIBUF_X52_Y73_N8
\A[14]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(14),
	o => \A[14]~input_o\);

-- Location: IOIBUF_X54_Y73_N8
\B[13]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(13),
	o => \B[13]~input_o\);

-- Location: IOIBUF_X54_Y73_N1
\A[13]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(13),
	o => \A[13]~input_o\);

-- Location: IOIBUF_X65_Y73_N22
\A[12]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(12),
	o => \A[12]~input_o\);

-- Location: IOIBUF_X58_Y73_N8
\A[11]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(11),
	o => \A[11]~input_o\);

-- Location: IOIBUF_X62_Y73_N22
\B[10]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(10),
	o => \B[10]~input_o\);

-- Location: IOIBUF_X79_Y73_N1
\A[7]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(7),
	o => \A[7]~input_o\);

-- Location: IOIBUF_X81_Y73_N1
\A[5]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(5),
	o => \A[5]~input_o\);

-- Location: IOIBUF_X69_Y73_N22
\B[5]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(5),
	o => \B[5]~input_o\);

-- Location: LCCOMB_X47_Y72_N18
\alu0|adder|C4~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \alu0|adder|C4~0_combout\ = (\alu0|adder|C[3]~2_combout\ & ((\A[3]~input_o\) # (\B[3]~input_o\ $ (\SEL[2]~input_o\)))) # (!\alu0|adder|C[3]~2_combout\ & (\A[3]~input_o\ & (\B[3]~input_o\ $ (\SEL[2]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101111001001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[3]~input_o\,
	datab => \alu0|adder|C[3]~2_combout\,
	datac => \SEL[2]~input_o\,
	datad => \A[3]~input_o\,
	combout => \alu0|adder|C4~0_combout\);

-- Location: IOIBUF_X67_Y73_N22
\A[4]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(4),
	o => \A[4]~input_o\);

-- Location: IOIBUF_X72_Y73_N22
\B[4]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(4),
	o => \B[4]~input_o\);

-- Location: LCCOMB_X70_Y72_N16
\alu1|adder|C[1]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \alu1|adder|C[1]~0_combout\ = (\alu0|adder|C4~0_combout\ & ((\A[4]~input_o\) # (\SEL[2]~input_o\ $ (\B[4]~input_o\)))) # (!\alu0|adder|C4~0_combout\ & (\A[4]~input_o\ & (\SEL[2]~input_o\ $ (\B[4]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011001011101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \alu0|adder|C4~0_combout\,
	datab => \SEL[2]~input_o\,
	datac => \A[4]~input_o\,
	datad => \B[4]~input_o\,
	combout => \alu1|adder|C[1]~0_combout\);

-- Location: LCCOMB_X70_Y72_N10
\alu1|adder|C[2]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \alu1|adder|C[2]~1_combout\ = (\A[5]~input_o\ & ((\alu1|adder|C[1]~0_combout\) # (\B[5]~input_o\ $ (\SEL[2]~input_o\)))) # (!\A[5]~input_o\ & (\alu1|adder|C[1]~0_combout\ & (\B[5]~input_o\ $ (\SEL[2]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011111000101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[5]~input_o\,
	datab => \B[5]~input_o\,
	datac => \SEL[2]~input_o\,
	datad => \alu1|adder|C[1]~0_combout\,
	combout => \alu1|adder|C[2]~1_combout\);

-- Location: IOIBUF_X79_Y73_N8
\B[6]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(6),
	o => \B[6]~input_o\);

-- Location: IOIBUF_X72_Y73_N15
\A[6]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(6),
	o => \A[6]~input_o\);

-- Location: LCCOMB_X70_Y72_N28
\alu1|adder|C[3]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \alu1|adder|C[3]~2_combout\ = (\alu1|adder|C[2]~1_combout\ & ((\A[6]~input_o\) # (\SEL[2]~input_o\ $ (\B[6]~input_o\)))) # (!\alu1|adder|C[2]~1_combout\ & (\A[6]~input_o\ & (\SEL[2]~input_o\ $ (\B[6]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011111000101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \alu1|adder|C[2]~1_combout\,
	datab => \SEL[2]~input_o\,
	datac => \B[6]~input_o\,
	datad => \A[6]~input_o\,
	combout => \alu1|adder|C[3]~2_combout\);

-- Location: IOIBUF_X74_Y73_N22
\B[7]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(7),
	o => \B[7]~input_o\);

-- Location: LCCOMB_X70_Y72_N6
\alu1|adder|C4~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \alu1|adder|C4~0_combout\ = (\A[7]~input_o\ & ((\alu1|adder|C[3]~2_combout\) # (\SEL[2]~input_o\ $ (\B[7]~input_o\)))) # (!\A[7]~input_o\ & (\alu1|adder|C[3]~2_combout\ & (\SEL[2]~input_o\ $ (\B[7]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000111011101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[7]~input_o\,
	datab => \alu1|adder|C[3]~2_combout\,
	datac => \SEL[2]~input_o\,
	datad => \B[7]~input_o\,
	combout => \alu1|adder|C4~0_combout\);

-- Location: IOIBUF_X69_Y73_N15
\A[8]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(8),
	o => \A[8]~input_o\);

-- Location: IOIBUF_X81_Y73_N22
\B[8]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(8),
	o => \B[8]~input_o\);

-- Location: LCCOMB_X70_Y72_N0
\alu2|adder|C[1]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \alu2|adder|C[1]~0_combout\ = (\alu1|adder|C4~0_combout\ & ((\A[8]~input_o\) # (\SEL[2]~input_o\ $ (\B[8]~input_o\)))) # (!\alu1|adder|C4~0_combout\ & (\A[8]~input_o\ & (\SEL[2]~input_o\ $ (\B[8]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000111011101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \alu1|adder|C4~0_combout\,
	datab => \A[8]~input_o\,
	datac => \SEL[2]~input_o\,
	datad => \B[8]~input_o\,
	combout => \alu2|adder|C[1]~0_combout\);

-- Location: IOIBUF_X65_Y73_N8
\B[9]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(9),
	o => \B[9]~input_o\);

-- Location: IOIBUF_X65_Y73_N15
\A[9]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(9),
	o => \A[9]~input_o\);

-- Location: LCCOMB_X62_Y72_N24
\alu2|adder|C[2]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \alu2|adder|C[2]~1_combout\ = (\alu2|adder|C[1]~0_combout\ & ((\A[9]~input_o\) # (\B[9]~input_o\ $ (\SEL[2]~input_o\)))) # (!\alu2|adder|C[1]~0_combout\ & (\A[9]~input_o\ & (\B[9]~input_o\ $ (\SEL[2]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011001011101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \alu2|adder|C[1]~0_combout\,
	datab => \B[9]~input_o\,
	datac => \A[9]~input_o\,
	datad => \SEL[2]~input_o\,
	combout => \alu2|adder|C[2]~1_combout\);

-- Location: IOIBUF_X62_Y73_N15
\A[10]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(10),
	o => \A[10]~input_o\);

-- Location: LCCOMB_X62_Y72_N18
\alu2|adder|C[3]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \alu2|adder|C[3]~2_combout\ = (\alu2|adder|C[2]~1_combout\ & ((\A[10]~input_o\) # (\B[10]~input_o\ $ (\SEL[2]~input_o\)))) # (!\alu2|adder|C[2]~1_combout\ & (\A[10]~input_o\ & (\B[10]~input_o\ $ (\SEL[2]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101010011101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[10]~input_o\,
	datab => \alu2|adder|C[2]~1_combout\,
	datac => \A[10]~input_o\,
	datad => \SEL[2]~input_o\,
	combout => \alu2|adder|C[3]~2_combout\);

-- Location: IOIBUF_X60_Y73_N22
\B[11]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(11),
	o => \B[11]~input_o\);

-- Location: LCCOMB_X62_Y72_N4
\alu2|adder|C4~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \alu2|adder|C4~0_combout\ = (\A[11]~input_o\ & ((\alu2|adder|C[3]~2_combout\) # (\B[11]~input_o\ $ (\SEL[2]~input_o\)))) # (!\A[11]~input_o\ & (\alu2|adder|C[3]~2_combout\ & (\B[11]~input_o\ $ (\SEL[2]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000111011101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[11]~input_o\,
	datab => \alu2|adder|C[3]~2_combout\,
	datac => \B[11]~input_o\,
	datad => \SEL[2]~input_o\,
	combout => \alu2|adder|C4~0_combout\);

-- Location: IOIBUF_X60_Y73_N15
\B[12]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(12),
	o => \B[12]~input_o\);

-- Location: LCCOMB_X62_Y72_N22
\alu3|adder|C[1]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \alu3|adder|C[1]~0_combout\ = (\A[12]~input_o\ & ((\alu2|adder|C4~0_combout\) # (\B[12]~input_o\ $ (\SEL[2]~input_o\)))) # (!\A[12]~input_o\ & (\alu2|adder|C4~0_combout\ & (\B[12]~input_o\ $ (\SEL[2]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000111011101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[12]~input_o\,
	datab => \alu2|adder|C4~0_combout\,
	datac => \B[12]~input_o\,
	datad => \SEL[2]~input_o\,
	combout => \alu3|adder|C[1]~0_combout\);

-- Location: LCCOMB_X54_Y72_N16
\alu3|adder|C[2]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \alu3|adder|C[2]~1_combout\ = (\A[13]~input_o\ & ((\alu3|adder|C[1]~0_combout\) # (\B[13]~input_o\ $ (\SEL[2]~input_o\)))) # (!\A[13]~input_o\ & (\alu3|adder|C[1]~0_combout\ & (\B[13]~input_o\ $ (\SEL[2]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101111001001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[13]~input_o\,
	datab => \A[13]~input_o\,
	datac => \SEL[2]~input_o\,
	datad => \alu3|adder|C[1]~0_combout\,
	combout => \alu3|adder|C[2]~1_combout\);

-- Location: LCCOMB_X54_Y72_N18
\alu3|adder|C[3]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \alu3|adder|C[3]~2_combout\ = (\A[14]~input_o\ & ((\alu3|adder|C[2]~1_combout\) # (\B[14]~input_o\ $ (\SEL[2]~input_o\)))) # (!\A[14]~input_o\ & (\alu3|adder|C[2]~1_combout\ & (\B[14]~input_o\ $ (\SEL[2]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101111001001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[14]~input_o\,
	datab => \A[14]~input_o\,
	datac => \SEL[2]~input_o\,
	datad => \alu3|adder|C[2]~1_combout\,
	combout => \alu3|adder|C[3]~2_combout\);

-- Location: IOIBUF_X58_Y73_N1
\B[15]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(15),
	o => \B[15]~input_o\);

-- Location: LCCOMB_X54_Y72_N12
\alu3|adder|S[3]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \alu3|adder|S[3]~0_combout\ = \A[15]~input_o\ $ (\alu3|adder|C[3]~2_combout\ $ (\SEL[2]~input_o\ $ (\B[15]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[15]~input_o\,
	datab => \alu3|adder|C[3]~2_combout\,
	datac => \SEL[2]~input_o\,
	datad => \B[15]~input_o\,
	combout => \alu3|adder|S[3]~0_combout\);

-- Location: LCCOMB_X47_Y72_N12
\alu0|mux|Mux0~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \alu0|mux|Mux0~1_combout\ = (\alu0|mux|Mux0~0_combout\ & (((\alu3|adder|S[3]~0_combout\) # (!\SEL[1]~input_o\)))) # (!\alu0|mux|Mux0~0_combout\ & (\alu0|adder|S[3]~0_combout\ & (\SEL[1]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110000101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \alu0|adder|S[3]~0_combout\,
	datab => \alu0|mux|Mux0~0_combout\,
	datac => \SEL[1]~input_o\,
	datad => \alu3|adder|S[3]~0_combout\,
	combout => \alu0|mux|Mux0~1_combout\);

-- Location: LCCOMB_X70_Y72_N18
\alu1|mux|Mux3~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \alu1|mux|Mux3~0_combout\ = \B[4]~input_o\ $ (((\SEL[1]~input_o\ & (\SEL[2]~input_o\ $ (\alu0|adder|C4~0_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101011100101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SEL[1]~input_o\,
	datab => \SEL[2]~input_o\,
	datac => \alu0|adder|C4~0_combout\,
	datad => \B[4]~input_o\,
	combout => \alu1|mux|Mux3~0_combout\);

-- Location: LCCOMB_X70_Y72_N12
\alu1|mux|Mux3~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \alu1|mux|Mux3~1_combout\ = (\A[4]~input_o\ & (\SEL[1]~input_o\ $ (((\SEL[0]~input_o\) # (\alu1|mux|Mux3~0_combout\))))) # (!\A[4]~input_o\ & (\alu1|mux|Mux3~0_combout\ & (\SEL[1]~input_o\ $ (\SEL[0]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101011001100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SEL[1]~input_o\,
	datab => \SEL[0]~input_o\,
	datac => \A[4]~input_o\,
	datad => \alu1|mux|Mux3~0_combout\,
	combout => \alu1|mux|Mux3~1_combout\);

-- Location: LCCOMB_X70_Y72_N14
\alu1|mux|Mux2~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \alu1|mux|Mux2~0_combout\ = \B[5]~input_o\ $ (((\SEL[1]~input_o\ & (\SEL[2]~input_o\ $ (\alu1|adder|C[1]~0_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100011001101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SEL[1]~input_o\,
	datab => \B[5]~input_o\,
	datac => \SEL[2]~input_o\,
	datad => \alu1|adder|C[1]~0_combout\,
	combout => \alu1|mux|Mux2~0_combout\);

-- Location: LCCOMB_X70_Y72_N24
\alu1|mux|Mux2~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \alu1|mux|Mux2~1_combout\ = (\alu1|mux|Mux2~0_combout\ & (\SEL[1]~input_o\ $ (((\SEL[0]~input_o\) # (\A[5]~input_o\))))) # (!\alu1|mux|Mux2~0_combout\ & (\A[5]~input_o\ & (\SEL[1]~input_o\ $ (\SEL[0]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101011001100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SEL[1]~input_o\,
	datab => \SEL[0]~input_o\,
	datac => \alu1|mux|Mux2~0_combout\,
	datad => \A[5]~input_o\,
	combout => \alu1|mux|Mux2~1_combout\);

-- Location: LCCOMB_X70_Y72_N2
\alu1|mux|Mux1~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \alu1|mux|Mux1~0_combout\ = \B[6]~input_o\ $ (((\SEL[1]~input_o\ & (\SEL[2]~input_o\ $ (\alu1|adder|C[2]~1_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101001001111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SEL[1]~input_o\,
	datab => \SEL[2]~input_o\,
	datac => \B[6]~input_o\,
	datad => \alu1|adder|C[2]~1_combout\,
	combout => \alu1|mux|Mux1~0_combout\);

-- Location: LCCOMB_X70_Y72_N20
\alu1|mux|Mux1~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \alu1|mux|Mux1~1_combout\ = (\alu1|mux|Mux1~0_combout\ & (\SEL[1]~input_o\ $ (((\SEL[0]~input_o\) # (\A[6]~input_o\))))) # (!\alu1|mux|Mux1~0_combout\ & (\A[6]~input_o\ & (\SEL[1]~input_o\ $ (\SEL[0]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101011001001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SEL[1]~input_o\,
	datab => \alu1|mux|Mux1~0_combout\,
	datac => \SEL[0]~input_o\,
	datad => \A[6]~input_o\,
	combout => \alu1|mux|Mux1~1_combout\);

-- Location: LCCOMB_X70_Y72_N30
\alu1|mux|Mux0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \alu1|mux|Mux0~0_combout\ = \B[7]~input_o\ $ (((\SEL[1]~input_o\ & (\alu1|adder|C[3]~2_combout\ $ (\SEL[2]~input_o\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101011100101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SEL[1]~input_o\,
	datab => \alu1|adder|C[3]~2_combout\,
	datac => \SEL[2]~input_o\,
	datad => \B[7]~input_o\,
	combout => \alu1|mux|Mux0~0_combout\);

-- Location: LCCOMB_X70_Y72_N8
\alu1|mux|Mux0~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \alu1|mux|Mux0~1_combout\ = (\alu1|mux|Mux0~0_combout\ & (\SEL[1]~input_o\ $ (((\SEL[0]~input_o\) # (\A[7]~input_o\))))) # (!\alu1|mux|Mux0~0_combout\ & (\A[7]~input_o\ & (\SEL[0]~input_o\ $ (\SEL[1]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001001011101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \alu1|mux|Mux0~0_combout\,
	datab => \SEL[0]~input_o\,
	datac => \A[7]~input_o\,
	datad => \SEL[1]~input_o\,
	combout => \alu1|mux|Mux0~1_combout\);

-- Location: LCCOMB_X70_Y72_N26
\alu2|mux|Mux3~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \alu2|mux|Mux3~0_combout\ = \B[8]~input_o\ $ (((\SEL[1]~input_o\ & (\SEL[2]~input_o\ $ (\alu1|adder|C4~0_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100011001101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SEL[1]~input_o\,
	datab => \B[8]~input_o\,
	datac => \SEL[2]~input_o\,
	datad => \alu1|adder|C4~0_combout\,
	combout => \alu2|mux|Mux3~0_combout\);

-- Location: LCCOMB_X70_Y72_N4
\alu2|mux|Mux3~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \alu2|mux|Mux3~1_combout\ = (\alu2|mux|Mux3~0_combout\ & (\SEL[1]~input_o\ $ (((\SEL[0]~input_o\) # (\A[8]~input_o\))))) # (!\alu2|mux|Mux3~0_combout\ & (\A[8]~input_o\ & (\SEL[1]~input_o\ $ (\SEL[0]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101011001100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SEL[1]~input_o\,
	datab => \SEL[0]~input_o\,
	datac => \alu2|mux|Mux3~0_combout\,
	datad => \A[8]~input_o\,
	combout => \alu2|mux|Mux3~1_combout\);

-- Location: LCCOMB_X62_Y72_N0
\alu2|mux|Mux2~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \alu2|mux|Mux2~0_combout\ = \B[9]~input_o\ $ (((\SEL[1]~input_o\ & (\alu2|adder|C[1]~0_combout\ $ (\SEL[2]~input_o\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001110001101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \alu2|adder|C[1]~0_combout\,
	datab => \B[9]~input_o\,
	datac => \SEL[1]~input_o\,
	datad => \SEL[2]~input_o\,
	combout => \alu2|mux|Mux2~0_combout\);

-- Location: LCCOMB_X62_Y72_N10
\alu2|mux|Mux2~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \alu2|mux|Mux2~1_combout\ = (\A[9]~input_o\ & (\SEL[1]~input_o\ $ (((\SEL[0]~input_o\) # (\alu2|mux|Mux2~0_combout\))))) # (!\A[9]~input_o\ & (\alu2|mux|Mux2~0_combout\ & (\SEL[1]~input_o\ $ (\SEL[0]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011011000101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[9]~input_o\,
	datab => \SEL[1]~input_o\,
	datac => \SEL[0]~input_o\,
	datad => \alu2|mux|Mux2~0_combout\,
	combout => \alu2|mux|Mux2~1_combout\);

-- Location: LCCOMB_X62_Y72_N20
\alu2|mux|Mux1~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \alu2|mux|Mux1~0_combout\ = \B[10]~input_o\ $ (((\SEL[1]~input_o\ & (\alu2|adder|C[2]~1_combout\ $ (\SEL[2]~input_o\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001101001101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[10]~input_o\,
	datab => \alu2|adder|C[2]~1_combout\,
	datac => \SEL[1]~input_o\,
	datad => \SEL[2]~input_o\,
	combout => \alu2|mux|Mux1~0_combout\);

-- Location: LCCOMB_X62_Y72_N6
\alu2|mux|Mux1~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \alu2|mux|Mux1~1_combout\ = (\A[10]~input_o\ & (\SEL[1]~input_o\ $ (((\SEL[0]~input_o\) # (\alu2|mux|Mux1~0_combout\))))) # (!\A[10]~input_o\ & (\alu2|mux|Mux1~0_combout\ & (\SEL[1]~input_o\ $ (\SEL[0]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011011000101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[10]~input_o\,
	datab => \SEL[1]~input_o\,
	datac => \SEL[0]~input_o\,
	datad => \alu2|mux|Mux1~0_combout\,
	combout => \alu2|mux|Mux1~1_combout\);

-- Location: LCCOMB_X62_Y72_N16
\alu2|mux|Mux0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \alu2|mux|Mux0~0_combout\ = \B[11]~input_o\ $ (((\SEL[1]~input_o\ & (\alu2|adder|C[3]~2_combout\ $ (\SEL[2]~input_o\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001101001101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[11]~input_o\,
	datab => \alu2|adder|C[3]~2_combout\,
	datac => \SEL[1]~input_o\,
	datad => \SEL[2]~input_o\,
	combout => \alu2|mux|Mux0~0_combout\);

-- Location: LCCOMB_X62_Y72_N26
\alu2|mux|Mux0~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \alu2|mux|Mux0~1_combout\ = (\A[11]~input_o\ & (\SEL[1]~input_o\ $ (((\SEL[0]~input_o\) # (\alu2|mux|Mux0~0_combout\))))) # (!\A[11]~input_o\ & (\alu2|mux|Mux0~0_combout\ & (\SEL[0]~input_o\ $ (\SEL[1]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001111001001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SEL[0]~input_o\,
	datab => \A[11]~input_o\,
	datac => \SEL[1]~input_o\,
	datad => \alu2|mux|Mux0~0_combout\,
	combout => \alu2|mux|Mux0~1_combout\);

-- Location: LCCOMB_X62_Y72_N28
\alu3|mux|Mux3~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \alu3|mux|Mux3~0_combout\ = \B[12]~input_o\ $ (((\SEL[1]~input_o\ & (\alu2|adder|C4~0_combout\ $ (\SEL[2]~input_o\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001101001101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[12]~input_o\,
	datab => \alu2|adder|C4~0_combout\,
	datac => \SEL[1]~input_o\,
	datad => \SEL[2]~input_o\,
	combout => \alu3|mux|Mux3~0_combout\);

-- Location: LCCOMB_X62_Y72_N30
\alu3|mux|Mux3~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \alu3|mux|Mux3~1_combout\ = (\A[12]~input_o\ & (\SEL[1]~input_o\ $ (((\SEL[0]~input_o\) # (\alu3|mux|Mux3~0_combout\))))) # (!\A[12]~input_o\ & (\alu3|mux|Mux3~0_combout\ & (\SEL[1]~input_o\ $ (\SEL[0]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011011000101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[12]~input_o\,
	datab => \SEL[1]~input_o\,
	datac => \SEL[0]~input_o\,
	datad => \alu3|mux|Mux3~0_combout\,
	combout => \alu3|mux|Mux3~1_combout\);

-- Location: LCCOMB_X54_Y72_N22
\alu3|mux|Mux2~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \alu3|mux|Mux2~0_combout\ = \B[13]~input_o\ $ (((\SEL[1]~input_o\ & (\SEL[2]~input_o\ $ (\alu3|adder|C[1]~0_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010011001101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[13]~input_o\,
	datab => \SEL[1]~input_o\,
	datac => \SEL[2]~input_o\,
	datad => \alu3|adder|C[1]~0_combout\,
	combout => \alu3|mux|Mux2~0_combout\);

-- Location: LCCOMB_X54_Y72_N24
\alu3|mux|Mux2~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \alu3|mux|Mux2~1_combout\ = (\alu3|mux|Mux2~0_combout\ & (\SEL[1]~input_o\ $ (((\SEL[0]~input_o\) # (\A[13]~input_o\))))) # (!\alu3|mux|Mux2~0_combout\ & (\A[13]~input_o\ & (\SEL[0]~input_o\ $ (\SEL[1]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011011001100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SEL[0]~input_o\,
	datab => \SEL[1]~input_o\,
	datac => \alu3|mux|Mux2~0_combout\,
	datad => \A[13]~input_o\,
	combout => \alu3|mux|Mux2~1_combout\);

-- Location: LCCOMB_X54_Y72_N26
\alu3|mux|Mux1~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \alu3|mux|Mux1~0_combout\ = \B[14]~input_o\ $ (((\SEL[1]~input_o\ & (\SEL[2]~input_o\ $ (\alu3|adder|C[2]~1_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010011001101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[14]~input_o\,
	datab => \SEL[1]~input_o\,
	datac => \SEL[2]~input_o\,
	datad => \alu3|adder|C[2]~1_combout\,
	combout => \alu3|mux|Mux1~0_combout\);

-- Location: LCCOMB_X54_Y72_N20
\alu3|mux|Mux1~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \alu3|mux|Mux1~1_combout\ = (\alu3|mux|Mux1~0_combout\ & (\SEL[1]~input_o\ $ (((\A[14]~input_o\) # (\SEL[0]~input_o\))))) # (!\alu3|mux|Mux1~0_combout\ & (\A[14]~input_o\ & (\SEL[0]~input_o\ $ (\SEL[1]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000011011101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \alu3|mux|Mux1~0_combout\,
	datab => \A[14]~input_o\,
	datac => \SEL[0]~input_o\,
	datad => \SEL[1]~input_o\,
	combout => \alu3|mux|Mux1~1_combout\);

-- Location: LCCOMB_X54_Y72_N30
\alu3|mux|Mux0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \alu3|mux|Mux0~0_combout\ = (!\SEL[1]~input_o\ & ((\A[15]~input_o\ & ((\SEL[0]~input_o\) # (\B[15]~input_o\))) # (!\A[15]~input_o\ & (\SEL[0]~input_o\ & \B[15]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[15]~input_o\,
	datab => \SEL[1]~input_o\,
	datac => \SEL[0]~input_o\,
	datad => \B[15]~input_o\,
	combout => \alu3|mux|Mux0~0_combout\);

-- Location: LCCOMB_X54_Y72_N8
\alu3|mux|Mux0~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \alu3|mux|Mux0~1_combout\ = (\alu3|mux|Mux0~0_combout\) # ((\SEL[1]~input_o\ & (!\SEL[0]~input_o\ & \alu3|adder|S[3]~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \alu3|mux|Mux0~0_combout\,
	datab => \SEL[1]~input_o\,
	datac => \SEL[0]~input_o\,
	datad => \alu3|adder|S[3]~0_combout\,
	combout => \alu3|mux|Mux0~1_combout\);

-- Location: LCCOMB_X54_Y72_N10
\alu3|adder|C4~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \alu3|adder|C4~0_combout\ = (\A[15]~input_o\ & ((\alu3|adder|C[3]~2_combout\) # (\SEL[2]~input_o\ $ (\B[15]~input_o\)))) # (!\A[15]~input_o\ & (\alu3|adder|C[3]~2_combout\ & (\SEL[2]~input_o\ $ (\B[15]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000111011101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[15]~input_o\,
	datab => \alu3|adder|C[3]~2_combout\,
	datac => \SEL[2]~input_o\,
	datad => \B[15]~input_o\,
	combout => \alu3|adder|C4~0_combout\);

-- Location: LCCOMB_X54_Y72_N0
\alu3|adder|OVER\ : cycloneive_lcell_comb
-- Equation(s):
-- \alu3|adder|OVER~combout\ = (\A[15]~input_o\ & (!\alu3|adder|C[3]~2_combout\ & (\SEL[2]~input_o\ $ (\B[15]~input_o\)))) # (!\A[15]~input_o\ & (\alu3|adder|C[3]~2_combout\ & (\SEL[2]~input_o\ $ (!\B[15]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100001000100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[15]~input_o\,
	datab => \alu3|adder|C[3]~2_combout\,
	datac => \SEL[2]~input_o\,
	datad => \B[15]~input_o\,
	combout => \alu3|adder|OVER~combout\);

-- Location: LCCOMB_X62_Y72_N8
\alu2|ZERO~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \alu2|ZERO~0_combout\ = (!\alu2|mux|Mux2~1_combout\ & (!\alu2|mux|Mux1~1_combout\ & (!\alu2|mux|Mux0~1_combout\ & !\alu2|mux|Mux3~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \alu2|mux|Mux2~1_combout\,
	datab => \alu2|mux|Mux1~1_combout\,
	datac => \alu2|mux|Mux0~1_combout\,
	datad => \alu2|mux|Mux3~1_combout\,
	combout => \alu2|ZERO~0_combout\);

-- Location: LCCOMB_X47_Y72_N30
\alu0|ZERO~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \alu0|ZERO~0_combout\ = (!\alu0|mux|Mux0~1_combout\ & (!\alu0|mux|Mux2~1_combout\ & (!\alu0|mux|Mux1~1_combout\ & !\alu0|mux|Mux3~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \alu0|mux|Mux0~1_combout\,
	datab => \alu0|mux|Mux2~1_combout\,
	datac => \alu0|mux|Mux1~1_combout\,
	datad => \alu0|mux|Mux3~0_combout\,
	combout => \alu0|ZERO~0_combout\);

-- Location: LCCOMB_X70_Y72_N22
\alu1|ZERO~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \alu1|ZERO~0_combout\ = (!\alu1|mux|Mux3~1_combout\ & (!\alu1|mux|Mux1~1_combout\ & (!\alu1|mux|Mux0~1_combout\ & !\alu1|mux|Mux2~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \alu1|mux|Mux3~1_combout\,
	datab => \alu1|mux|Mux1~1_combout\,
	datac => \alu1|mux|Mux0~1_combout\,
	datad => \alu1|mux|Mux2~1_combout\,
	combout => \alu1|ZERO~0_combout\);

-- Location: LCCOMB_X54_Y72_N28
\alu3|ZERO~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \alu3|ZERO~0_combout\ = (!\alu3|mux|Mux2~1_combout\ & (!\alu3|mux|Mux1~1_combout\ & (!\alu3|mux|Mux0~1_combout\ & !\alu3|mux|Mux3~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \alu3|mux|Mux2~1_combout\,
	datab => \alu3|mux|Mux1~1_combout\,
	datac => \alu3|mux|Mux0~1_combout\,
	datad => \alu3|mux|Mux3~1_combout\,
	combout => \alu3|ZERO~0_combout\);

-- Location: LCCOMB_X54_Y72_N6
\ZERO~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \ZERO~0_combout\ = (\alu2|ZERO~0_combout\) # ((\alu0|ZERO~0_combout\) # ((\alu1|ZERO~0_combout\) # (\alu3|ZERO~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \alu2|ZERO~0_combout\,
	datab => \alu0|ZERO~0_combout\,
	datac => \alu1|ZERO~0_combout\,
	datad => \alu3|ZERO~0_combout\,
	combout => \ZERO~0_combout\);

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

ww_COUT <= \COUT~output_o\;

ww_OVERFLOW <= \OVERFLOW~output_o\;

ww_ZERO <= \ZERO~output_o\;
END structure;


