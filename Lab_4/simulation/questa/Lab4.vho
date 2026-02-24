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

-- DATE "02/24/2026 00:15:41"

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

ENTITY 	REG8X16 IS
    PORT (
	ADD_R1 : IN std_logic_vector(2 DOWNTO 0);
	ADD_R2 : IN std_logic_vector(2 DOWNTO 0);
	ADD_W : IN std_logic_vector(2 DOWNTO 0);
	WE : IN std_logic;
	CLK : IN std_logic;
	DIN : IN std_logic_vector(15 DOWNTO 0);
	DOUT1 : BUFFER std_logic_vector(15 DOWNTO 0);
	DOUT2 : BUFFER std_logic_vector(15 DOWNTO 0)
	);
END REG8X16;

-- Design Ports Information
-- ADD_R1[2]	=>  Location: PIN_J28,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ADD_R2[2]	=>  Location: PIN_J27,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ADD_W[0]	=>  Location: PIN_M8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ADD_W[1]	=>  Location: PIN_T7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ADD_W[2]	=>  Location: PIN_R2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- DOUT1[0]	=>  Location: PIN_Y5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- DOUT1[1]	=>  Location: PIN_AC4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- DOUT1[2]	=>  Location: PIN_AD2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- DOUT1[3]	=>  Location: PIN_V6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- DOUT1[4]	=>  Location: PIN_AB4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- DOUT1[5]	=>  Location: PIN_AE4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- DOUT1[6]	=>  Location: PIN_V2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- DOUT1[7]	=>  Location: PIN_U8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- DOUT1[8]	=>  Location: PIN_AA5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- DOUT1[9]	=>  Location: PIN_AB6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- DOUT1[10]	=>  Location: PIN_Y4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- DOUT1[11]	=>  Location: PIN_Y3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- DOUT1[12]	=>  Location: PIN_AE6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- DOUT1[13]	=>  Location: PIN_AC1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- DOUT1[14]	=>  Location: PIN_AD1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- DOUT1[15]	=>  Location: PIN_W1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- DOUT2[0]	=>  Location: PIN_W7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- DOUT2[1]	=>  Location: PIN_AB5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- DOUT2[2]	=>  Location: PIN_AD3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- DOUT2[3]	=>  Location: PIN_AE1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- DOUT2[4]	=>  Location: PIN_AA7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- DOUT2[5]	=>  Location: PIN_AG3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- DOUT2[6]	=>  Location: PIN_V1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- DOUT2[7]	=>  Location: PIN_U7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- DOUT2[8]	=>  Location: PIN_AA6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- DOUT2[9]	=>  Location: PIN_AE3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- DOUT2[10]	=>  Location: PIN_AC2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- DOUT2[11]	=>  Location: PIN_U5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- DOUT2[12]	=>  Location: PIN_AD5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- DOUT2[13]	=>  Location: PIN_AC3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- DOUT2[14]	=>  Location: PIN_AB3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- DOUT2[15]	=>  Location: PIN_U6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ADD_R1[1]	=>  Location: PIN_AC7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ADD_R1[0]	=>  Location: PIN_Y19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ADD_R2[1]	=>  Location: PIN_AE11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ADD_R2[0]	=>  Location: PIN_R5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- DIN[0]	=>  Location: PIN_W4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- CLK	=>  Location: PIN_J1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- WE	=>  Location: PIN_AD4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- DIN[1]	=>  Location: PIN_AF4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- DIN[2]	=>  Location: PIN_V7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- DIN[3]	=>  Location: PIN_Y6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- DIN[4]	=>  Location: PIN_V5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- DIN[5]	=>  Location: PIN_AD7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- DIN[6]	=>  Location: PIN_Y7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- DIN[7]	=>  Location: PIN_W8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- DIN[8]	=>  Location: PIN_AE2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- DIN[9]	=>  Location: PIN_AF2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- DIN[10]	=>  Location: PIN_AA4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- DIN[11]	=>  Location: PIN_W3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- DIN[12]	=>  Location: PIN_AC5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- DIN[13]	=>  Location: PIN_AA3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- DIN[14]	=>  Location: PIN_V8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- DIN[15]	=>  Location: PIN_T8,	 I/O Standard: 2.5 V,	 Current Strength: Default


ARCHITECTURE structure OF REG8X16 IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_ADD_R1 : std_logic_vector(2 DOWNTO 0);
SIGNAL ww_ADD_R2 : std_logic_vector(2 DOWNTO 0);
SIGNAL ww_ADD_W : std_logic_vector(2 DOWNTO 0);
SIGNAL ww_WE : std_logic;
SIGNAL ww_CLK : std_logic;
SIGNAL ww_DIN : std_logic_vector(15 DOWNTO 0);
SIGNAL ww_DOUT1 : std_logic_vector(15 DOWNTO 0);
SIGNAL ww_DOUT2 : std_logic_vector(15 DOWNTO 0);
SIGNAL \CLK~inputclkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \ADD_R1[2]~input_o\ : std_logic;
SIGNAL \ADD_R2[2]~input_o\ : std_logic;
SIGNAL \ADD_W[0]~input_o\ : std_logic;
SIGNAL \ADD_W[1]~input_o\ : std_logic;
SIGNAL \ADD_W[2]~input_o\ : std_logic;
SIGNAL \ADD_R1[1]~input_o\ : std_logic;
SIGNAL \ADD_R1[0]~input_o\ : std_logic;
SIGNAL \ADD_R2[1]~input_o\ : std_logic;
SIGNAL \ADD_R2[0]~input_o\ : std_logic;
SIGNAL \DOUT1[0]~output_o\ : std_logic;
SIGNAL \DOUT1[1]~output_o\ : std_logic;
SIGNAL \DOUT1[2]~output_o\ : std_logic;
SIGNAL \DOUT1[3]~output_o\ : std_logic;
SIGNAL \DOUT1[4]~output_o\ : std_logic;
SIGNAL \DOUT1[5]~output_o\ : std_logic;
SIGNAL \DOUT1[6]~output_o\ : std_logic;
SIGNAL \DOUT1[7]~output_o\ : std_logic;
SIGNAL \DOUT1[8]~output_o\ : std_logic;
SIGNAL \DOUT1[9]~output_o\ : std_logic;
SIGNAL \DOUT1[10]~output_o\ : std_logic;
SIGNAL \DOUT1[11]~output_o\ : std_logic;
SIGNAL \DOUT1[12]~output_o\ : std_logic;
SIGNAL \DOUT1[13]~output_o\ : std_logic;
SIGNAL \DOUT1[14]~output_o\ : std_logic;
SIGNAL \DOUT1[15]~output_o\ : std_logic;
SIGNAL \DOUT2[0]~output_o\ : std_logic;
SIGNAL \DOUT2[1]~output_o\ : std_logic;
SIGNAL \DOUT2[2]~output_o\ : std_logic;
SIGNAL \DOUT2[3]~output_o\ : std_logic;
SIGNAL \DOUT2[4]~output_o\ : std_logic;
SIGNAL \DOUT2[5]~output_o\ : std_logic;
SIGNAL \DOUT2[6]~output_o\ : std_logic;
SIGNAL \DOUT2[7]~output_o\ : std_logic;
SIGNAL \DOUT2[8]~output_o\ : std_logic;
SIGNAL \DOUT2[9]~output_o\ : std_logic;
SIGNAL \DOUT2[10]~output_o\ : std_logic;
SIGNAL \DOUT2[11]~output_o\ : std_logic;
SIGNAL \DOUT2[12]~output_o\ : std_logic;
SIGNAL \DOUT2[13]~output_o\ : std_logic;
SIGNAL \DOUT2[14]~output_o\ : std_logic;
SIGNAL \DOUT2[15]~output_o\ : std_logic;
SIGNAL \CLK~input_o\ : std_logic;
SIGNAL \CLK~inputclkctrl_outclk\ : std_logic;
SIGNAL \DIN[0]~input_o\ : std_logic;
SIGNAL \reg_gen:0:regs|reg_1|y[0]~feeder_combout\ : std_logic;
SIGNAL \WE~input_o\ : std_logic;
SIGNAL \DIN[1]~input_o\ : std_logic;
SIGNAL \DIN[2]~input_o\ : std_logic;
SIGNAL \DIN[3]~input_o\ : std_logic;
SIGNAL \DIN[4]~input_o\ : std_logic;
SIGNAL \reg_gen:0:regs|reg_1|y[4]~feeder_combout\ : std_logic;
SIGNAL \DIN[5]~input_o\ : std_logic;
SIGNAL \DIN[6]~input_o\ : std_logic;
SIGNAL \reg_gen:0:regs|reg_1|y[6]~feeder_combout\ : std_logic;
SIGNAL \DIN[7]~input_o\ : std_logic;
SIGNAL \DIN[8]~input_o\ : std_logic;
SIGNAL \DIN[9]~input_o\ : std_logic;
SIGNAL \reg_gen:0:regs|reg_2|y[1]~feeder_combout\ : std_logic;
SIGNAL \DIN[10]~input_o\ : std_logic;
SIGNAL \reg_gen:0:regs|reg_2|y[2]~feeder_combout\ : std_logic;
SIGNAL \DIN[11]~input_o\ : std_logic;
SIGNAL \DIN[12]~input_o\ : std_logic;
SIGNAL \reg_gen:0:regs|reg_2|y[4]~feeder_combout\ : std_logic;
SIGNAL \DIN[13]~input_o\ : std_logic;
SIGNAL \reg_gen:0:regs|reg_2|y[5]~feeder_combout\ : std_logic;
SIGNAL \DIN[14]~input_o\ : std_logic;
SIGNAL \reg_gen:0:regs|reg_2|y[6]~feeder_combout\ : std_logic;
SIGNAL \DIN[15]~input_o\ : std_logic;
SIGNAL \reg_gen:0:regs|reg_2|y\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \reg_gen:0:regs|reg_1|y\ : std_logic_vector(7 DOWNTO 0);

COMPONENT hard_block
    PORT (
	devoe : IN std_logic;
	devclrn : IN std_logic;
	devpor : IN std_logic);
END COMPONENT;

BEGIN

ww_ADD_R1 <= ADD_R1;
ww_ADD_R2 <= ADD_R2;
ww_ADD_W <= ADD_W;
ww_WE <= WE;
ww_CLK <= CLK;
ww_DIN <= DIN;
DOUT1 <= ww_DOUT1;
DOUT2 <= ww_DOUT2;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

\CLK~inputclkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \CLK~input_o\);
auto_generated_inst : hard_block
PORT MAP (
	devoe => ww_devoe,
	devclrn => ww_devclrn,
	devpor => ww_devpor);

-- Location: IOOBUF_X0_Y12_N16
\DOUT1[0]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \reg_gen:0:regs|reg_1|y\(0),
	devoe => ww_devoe,
	o => \DOUT1[0]~output_o\);

-- Location: IOOBUF_X0_Y4_N2
\DOUT1[1]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \reg_gen:0:regs|reg_1|y\(1),
	devoe => ww_devoe,
	o => \DOUT1[1]~output_o\);

-- Location: IOOBUF_X0_Y22_N23
\DOUT1[2]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \reg_gen:0:regs|reg_1|y\(2),
	devoe => ww_devoe,
	o => \DOUT1[2]~output_o\);

-- Location: IOOBUF_X0_Y16_N23
\DOUT1[3]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \reg_gen:0:regs|reg_1|y\(3),
	devoe => ww_devoe,
	o => \DOUT1[3]~output_o\);

-- Location: IOOBUF_X0_Y8_N23
\DOUT1[4]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \reg_gen:0:regs|reg_1|y\(4),
	devoe => ww_devoe,
	o => \DOUT1[4]~output_o\);

-- Location: IOOBUF_X3_Y0_N23
\DOUT1[5]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \reg_gen:0:regs|reg_1|y\(5),
	devoe => ww_devoe,
	o => \DOUT1[5]~output_o\);

-- Location: IOOBUF_X0_Y28_N16
\DOUT1[6]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \reg_gen:0:regs|reg_1|y\(6),
	devoe => ww_devoe,
	o => \DOUT1[6]~output_o\);

-- Location: IOOBUF_X0_Y18_N23
\DOUT1[7]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \reg_gen:0:regs|reg_1|y\(7),
	devoe => ww_devoe,
	o => \DOUT1[7]~output_o\);

-- Location: IOOBUF_X0_Y10_N23
\DOUT1[8]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \reg_gen:0:regs|reg_2|y\(0),
	devoe => ww_devoe,
	o => \DOUT1[8]~output_o\);

-- Location: IOOBUF_X0_Y4_N9
\DOUT1[9]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \reg_gen:0:regs|reg_2|y\(1),
	devoe => ww_devoe,
	o => \DOUT1[9]~output_o\);

-- Location: IOOBUF_X0_Y24_N9
\DOUT1[10]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \reg_gen:0:regs|reg_2|y\(2),
	devoe => ww_devoe,
	o => \DOUT1[10]~output_o\);

-- Location: IOOBUF_X0_Y24_N16
\DOUT1[11]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \reg_gen:0:regs|reg_2|y\(3),
	devoe => ww_devoe,
	o => \DOUT1[11]~output_o\);

-- Location: IOOBUF_X1_Y0_N16
\DOUT1[12]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \reg_gen:0:regs|reg_2|y\(4),
	devoe => ww_devoe,
	o => \DOUT1[12]~output_o\);

-- Location: IOOBUF_X0_Y23_N16
\DOUT1[13]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \reg_gen:0:regs|reg_2|y\(5),
	devoe => ww_devoe,
	o => \DOUT1[13]~output_o\);

-- Location: IOOBUF_X0_Y21_N16
\DOUT1[14]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \reg_gen:0:regs|reg_2|y\(6),
	devoe => ww_devoe,
	o => \DOUT1[14]~output_o\);

-- Location: IOOBUF_X0_Y25_N16
\DOUT1[15]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \reg_gen:0:regs|reg_2|y\(7),
	devoe => ww_devoe,
	o => \DOUT1[15]~output_o\);

-- Location: IOOBUF_X0_Y12_N23
\DOUT2[0]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \reg_gen:0:regs|reg_1|y\(0),
	devoe => ww_devoe,
	o => \DOUT2[0]~output_o\);

-- Location: IOOBUF_X0_Y4_N23
\DOUT2[1]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \reg_gen:0:regs|reg_1|y\(1),
	devoe => ww_devoe,
	o => \DOUT2[1]~output_o\);

-- Location: IOOBUF_X0_Y22_N16
\DOUT2[2]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \reg_gen:0:regs|reg_1|y\(2),
	devoe => ww_devoe,
	o => \DOUT2[2]~output_o\);

-- Location: IOOBUF_X0_Y16_N16
\DOUT2[3]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \reg_gen:0:regs|reg_1|y\(3),
	devoe => ww_devoe,
	o => \DOUT2[3]~output_o\);

-- Location: IOOBUF_X0_Y9_N16
\DOUT2[4]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \reg_gen:0:regs|reg_1|y\(4),
	devoe => ww_devoe,
	o => \DOUT2[4]~output_o\);

-- Location: IOOBUF_X3_Y0_N16
\DOUT2[5]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \reg_gen:0:regs|reg_1|y\(5),
	devoe => ww_devoe,
	o => \DOUT2[5]~output_o\);

-- Location: IOOBUF_X0_Y28_N23
\DOUT2[6]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \reg_gen:0:regs|reg_1|y\(6),
	devoe => ww_devoe,
	o => \DOUT2[6]~output_o\);

-- Location: IOOBUF_X0_Y18_N16
\DOUT2[7]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \reg_gen:0:regs|reg_1|y\(7),
	devoe => ww_devoe,
	o => \DOUT2[7]~output_o\);

-- Location: IOOBUF_X0_Y10_N16
\DOUT2[8]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \reg_gen:0:regs|reg_2|y\(0),
	devoe => ww_devoe,
	o => \DOUT2[8]~output_o\);

-- Location: IOOBUF_X0_Y7_N9
\DOUT2[9]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \reg_gen:0:regs|reg_2|y\(1),
	devoe => ww_devoe,
	o => \DOUT2[9]~output_o\);

-- Location: IOOBUF_X0_Y24_N23
\DOUT2[10]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \reg_gen:0:regs|reg_2|y\(2),
	devoe => ww_devoe,
	o => \DOUT2[10]~output_o\);

-- Location: IOOBUF_X0_Y24_N2
\DOUT2[11]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \reg_gen:0:regs|reg_2|y\(3),
	devoe => ww_devoe,
	o => \DOUT2[11]~output_o\);

-- Location: IOOBUF_X1_Y0_N23
\DOUT2[12]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \reg_gen:0:regs|reg_2|y\(4),
	devoe => ww_devoe,
	o => \DOUT2[12]~output_o\);

-- Location: IOOBUF_X0_Y23_N23
\DOUT2[13]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \reg_gen:0:regs|reg_2|y\(5),
	devoe => ww_devoe,
	o => \DOUT2[13]~output_o\);

-- Location: IOOBUF_X0_Y21_N23
\DOUT2[14]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \reg_gen:0:regs|reg_2|y\(6),
	devoe => ww_devoe,
	o => \DOUT2[14]~output_o\);

-- Location: IOOBUF_X0_Y25_N23
\DOUT2[15]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \reg_gen:0:regs|reg_2|y\(7),
	devoe => ww_devoe,
	o => \DOUT2[15]~output_o\);

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

-- Location: IOIBUF_X0_Y14_N8
\DIN[0]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_DIN(0),
	o => \DIN[0]~input_o\);

-- Location: LCCOMB_X1_Y15_N16
\reg_gen:0:regs|reg_1|y[0]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \reg_gen:0:regs|reg_1|y[0]~feeder_combout\ = \DIN[0]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \DIN[0]~input_o\,
	combout => \reg_gen:0:regs|reg_1|y[0]~feeder_combout\);

-- Location: IOIBUF_X1_Y0_N8
\WE~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_WE,
	o => \WE~input_o\);

-- Location: FF_X1_Y15_N17
\reg_gen:0:regs|reg_1|y[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \reg_gen:0:regs|reg_1|y[0]~feeder_combout\,
	ena => \WE~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \reg_gen:0:regs|reg_1|y\(0));

-- Location: IOIBUF_X1_Y0_N1
\DIN[1]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_DIN(1),
	o => \DIN[1]~input_o\);

-- Location: FF_X1_Y4_N17
\reg_gen:0:regs|reg_1|y[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	asdata => \DIN[1]~input_o\,
	sload => VCC,
	ena => \WE~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \reg_gen:0:regs|reg_1|y\(1));

-- Location: IOIBUF_X0_Y14_N1
\DIN[2]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_DIN(2),
	o => \DIN[2]~input_o\);

-- Location: FF_X1_Y15_N11
\reg_gen:0:regs|reg_1|y[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	asdata => \DIN[2]~input_o\,
	sload => VCC,
	ena => \WE~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \reg_gen:0:regs|reg_1|y\(2));

-- Location: IOIBUF_X0_Y13_N8
\DIN[3]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_DIN(3),
	o => \DIN[3]~input_o\);

-- Location: FF_X1_Y15_N13
\reg_gen:0:regs|reg_1|y[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	asdata => \DIN[3]~input_o\,
	sload => VCC,
	ena => \WE~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \reg_gen:0:regs|reg_1|y\(3));

-- Location: IOIBUF_X0_Y15_N15
\DIN[4]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_DIN(4),
	o => \DIN[4]~input_o\);

-- Location: LCCOMB_X1_Y15_N22
\reg_gen:0:regs|reg_1|y[4]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \reg_gen:0:regs|reg_1|y[4]~feeder_combout\ = \DIN[4]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \DIN[4]~input_o\,
	combout => \reg_gen:0:regs|reg_1|y[4]~feeder_combout\);

-- Location: FF_X1_Y15_N23
\reg_gen:0:regs|reg_1|y[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \reg_gen:0:regs|reg_1|y[4]~feeder_combout\,
	ena => \WE~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \reg_gen:0:regs|reg_1|y\(4));

-- Location: IOIBUF_X3_Y0_N1
\DIN[5]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_DIN(5),
	o => \DIN[5]~input_o\);

-- Location: FF_X3_Y1_N25
\reg_gen:0:regs|reg_1|y[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	asdata => \DIN[5]~input_o\,
	sload => VCC,
	ena => \WE~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \reg_gen:0:regs|reg_1|y\(5));

-- Location: IOIBUF_X0_Y11_N22
\DIN[6]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_DIN(6),
	o => \DIN[6]~input_o\);

-- Location: LCCOMB_X1_Y15_N24
\reg_gen:0:regs|reg_1|y[6]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \reg_gen:0:regs|reg_1|y[6]~feeder_combout\ = \DIN[6]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \DIN[6]~input_o\,
	combout => \reg_gen:0:regs|reg_1|y[6]~feeder_combout\);

-- Location: FF_X1_Y15_N25
\reg_gen:0:regs|reg_1|y[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \reg_gen:0:regs|reg_1|y[6]~feeder_combout\,
	ena => \WE~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \reg_gen:0:regs|reg_1|y\(6));

-- Location: IOIBUF_X0_Y11_N15
\DIN[7]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_DIN(7),
	o => \DIN[7]~input_o\);

-- Location: FF_X1_Y15_N19
\reg_gen:0:regs|reg_1|y[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	asdata => \DIN[7]~input_o\,
	sload => VCC,
	ena => \WE~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \reg_gen:0:regs|reg_1|y\(7));

-- Location: IOIBUF_X0_Y17_N15
\DIN[8]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_DIN(8),
	o => \DIN[8]~input_o\);

-- Location: FF_X1_Y15_N29
\reg_gen:0:regs|reg_2|y[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	asdata => \DIN[8]~input_o\,
	sload => VCC,
	ena => \WE~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \reg_gen:0:regs|reg_2|y\(0));

-- Location: IOIBUF_X0_Y6_N1
\DIN[9]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_DIN(9),
	o => \DIN[9]~input_o\);

-- Location: LCCOMB_X1_Y5_N16
\reg_gen:0:regs|reg_2|y[1]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \reg_gen:0:regs|reg_2|y[1]~feeder_combout\ = \DIN[9]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \DIN[9]~input_o\,
	combout => \reg_gen:0:regs|reg_2|y[1]~feeder_combout\);

-- Location: FF_X1_Y5_N17
\reg_gen:0:regs|reg_2|y[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \reg_gen:0:regs|reg_2|y[1]~feeder_combout\,
	ena => \WE~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \reg_gen:0:regs|reg_2|y\(1));

-- Location: IOIBUF_X0_Y19_N1
\DIN[10]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_DIN(10),
	o => \DIN[10]~input_o\);

-- Location: LCCOMB_X1_Y15_N6
\reg_gen:0:regs|reg_2|y[2]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \reg_gen:0:regs|reg_2|y[2]~feeder_combout\ = \DIN[10]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \DIN[10]~input_o\,
	combout => \reg_gen:0:regs|reg_2|y[2]~feeder_combout\);

-- Location: FF_X1_Y15_N7
\reg_gen:0:regs|reg_2|y[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \reg_gen:0:regs|reg_2|y[2]~feeder_combout\,
	ena => \WE~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \reg_gen:0:regs|reg_2|y\(2));

-- Location: IOIBUF_X0_Y13_N1
\DIN[11]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_DIN(11),
	o => \DIN[11]~input_o\);

-- Location: FF_X1_Y15_N1
\reg_gen:0:regs|reg_2|y[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	asdata => \DIN[11]~input_o\,
	sload => VCC,
	ena => \WE~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \reg_gen:0:regs|reg_2|y\(3));

-- Location: IOIBUF_X0_Y5_N15
\DIN[12]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_DIN(12),
	o => \DIN[12]~input_o\);

-- Location: LCCOMB_X1_Y5_N26
\reg_gen:0:regs|reg_2|y[4]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \reg_gen:0:regs|reg_2|y[4]~feeder_combout\ = \DIN[12]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \DIN[12]~input_o\,
	combout => \reg_gen:0:regs|reg_2|y[4]~feeder_combout\);

-- Location: FF_X1_Y5_N27
\reg_gen:0:regs|reg_2|y[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \reg_gen:0:regs|reg_2|y[4]~feeder_combout\,
	ena => \WE~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \reg_gen:0:regs|reg_2|y\(4));

-- Location: IOIBUF_X0_Y19_N8
\DIN[13]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_DIN(13),
	o => \DIN[13]~input_o\);

-- Location: LCCOMB_X1_Y15_N26
\reg_gen:0:regs|reg_2|y[5]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \reg_gen:0:regs|reg_2|y[5]~feeder_combout\ = \DIN[13]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \DIN[13]~input_o\,
	combout => \reg_gen:0:regs|reg_2|y[5]~feeder_combout\);

-- Location: FF_X1_Y15_N27
\reg_gen:0:regs|reg_2|y[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \reg_gen:0:regs|reg_2|y[5]~feeder_combout\,
	ena => \WE~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \reg_gen:0:regs|reg_2|y\(5));

-- Location: IOIBUF_X0_Y15_N22
\DIN[14]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_DIN(14),
	o => \DIN[14]~input_o\);

-- Location: LCCOMB_X1_Y15_N4
\reg_gen:0:regs|reg_2|y[6]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \reg_gen:0:regs|reg_2|y[6]~feeder_combout\ = \DIN[14]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \DIN[14]~input_o\,
	combout => \reg_gen:0:regs|reg_2|y[6]~feeder_combout\);

-- Location: FF_X1_Y15_N5
\reg_gen:0:regs|reg_2|y[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \reg_gen:0:regs|reg_2|y[6]~feeder_combout\,
	ena => \WE~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \reg_gen:0:regs|reg_2|y\(6));

-- Location: IOIBUF_X0_Y20_N15
\DIN[15]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_DIN(15),
	o => \DIN[15]~input_o\);

-- Location: FF_X1_Y15_N31
\reg_gen:0:regs|reg_2|y[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	asdata => \DIN[15]~input_o\,
	sload => VCC,
	ena => \WE~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \reg_gen:0:regs|reg_2|y\(7));

-- Location: IOIBUF_X115_Y37_N8
\ADD_R1[2]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_ADD_R1(2),
	o => \ADD_R1[2]~input_o\);

-- Location: IOIBUF_X115_Y37_N1
\ADD_R2[2]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_ADD_R2(2),
	o => \ADD_R2[2]~input_o\);

-- Location: IOIBUF_X0_Y45_N15
\ADD_W[0]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_ADD_W(0),
	o => \ADD_W[0]~input_o\);

-- Location: IOIBUF_X0_Y31_N15
\ADD_W[1]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_ADD_W(1),
	o => \ADD_W[1]~input_o\);

-- Location: IOIBUF_X0_Y35_N1
\ADD_W[2]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_ADD_W(2),
	o => \ADD_W[2]~input_o\);

-- Location: IOIBUF_X9_Y0_N1
\ADD_R1[1]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_ADD_R1(1),
	o => \ADD_R1[1]~input_o\);

-- Location: IOIBUF_X105_Y0_N1
\ADD_R1[0]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_ADD_R1(0),
	o => \ADD_R1[0]~input_o\);

-- Location: IOIBUF_X35_Y0_N22
\ADD_R2[1]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_ADD_R2(1),
	o => \ADD_R2[1]~input_o\);

-- Location: IOIBUF_X0_Y32_N22
\ADD_R2[0]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_ADD_R2(0),
	o => \ADD_R2[0]~input_o\);

ww_DOUT1(0) <= \DOUT1[0]~output_o\;

ww_DOUT1(1) <= \DOUT1[1]~output_o\;

ww_DOUT1(2) <= \DOUT1[2]~output_o\;

ww_DOUT1(3) <= \DOUT1[3]~output_o\;

ww_DOUT1(4) <= \DOUT1[4]~output_o\;

ww_DOUT1(5) <= \DOUT1[5]~output_o\;

ww_DOUT1(6) <= \DOUT1[6]~output_o\;

ww_DOUT1(7) <= \DOUT1[7]~output_o\;

ww_DOUT1(8) <= \DOUT1[8]~output_o\;

ww_DOUT1(9) <= \DOUT1[9]~output_o\;

ww_DOUT1(10) <= \DOUT1[10]~output_o\;

ww_DOUT1(11) <= \DOUT1[11]~output_o\;

ww_DOUT1(12) <= \DOUT1[12]~output_o\;

ww_DOUT1(13) <= \DOUT1[13]~output_o\;

ww_DOUT1(14) <= \DOUT1[14]~output_o\;

ww_DOUT1(15) <= \DOUT1[15]~output_o\;

ww_DOUT2(0) <= \DOUT2[0]~output_o\;

ww_DOUT2(1) <= \DOUT2[1]~output_o\;

ww_DOUT2(2) <= \DOUT2[2]~output_o\;

ww_DOUT2(3) <= \DOUT2[3]~output_o\;

ww_DOUT2(4) <= \DOUT2[4]~output_o\;

ww_DOUT2(5) <= \DOUT2[5]~output_o\;

ww_DOUT2(6) <= \DOUT2[6]~output_o\;

ww_DOUT2(7) <= \DOUT2[7]~output_o\;

ww_DOUT2(8) <= \DOUT2[8]~output_o\;

ww_DOUT2(9) <= \DOUT2[9]~output_o\;

ww_DOUT2(10) <= \DOUT2[10]~output_o\;

ww_DOUT2(11) <= \DOUT2[11]~output_o\;

ww_DOUT2(12) <= \DOUT2[12]~output_o\;

ww_DOUT2(13) <= \DOUT2[13]~output_o\;

ww_DOUT2(14) <= \DOUT2[14]~output_o\;

ww_DOUT2(15) <= \DOUT2[15]~output_o\;
END structure;


