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

-- DATE "04/24/2026 01:24:39"

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

ENTITY 	PCJMP IS
    PORT (
	JMPADDR : IN std_logic_vector(11 DOWNTO 0);
	PC : IN std_logic_vector(15 DOWNTO 0);
	JMPOUT : OUT std_logic_vector(15 DOWNTO 0)
	);
END PCJMP;

-- Design Ports Information
-- PC[0]	=>  Location: PIN_M26,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- PC[1]	=>  Location: PIN_K21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- PC[2]	=>  Location: PIN_AA14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- PC[3]	=>  Location: PIN_B23,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- PC[4]	=>  Location: PIN_AH26,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- PC[5]	=>  Location: PIN_C5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- PC[6]	=>  Location: PIN_D11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- PC[7]	=>  Location: PIN_T21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- PC[8]	=>  Location: PIN_AE18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- PC[9]	=>  Location: PIN_AB2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- PC[10]	=>  Location: PIN_A11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- PC[11]	=>  Location: PIN_D26,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- PC[12]	=>  Location: PIN_AB19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- JMPOUT[0]	=>  Location: PIN_G6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- JMPOUT[1]	=>  Location: PIN_AE4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- JMPOUT[2]	=>  Location: PIN_AG23,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- JMPOUT[3]	=>  Location: PIN_AH19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- JMPOUT[4]	=>  Location: PIN_R22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- JMPOUT[5]	=>  Location: PIN_J7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- JMPOUT[6]	=>  Location: PIN_AF23,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- JMPOUT[7]	=>  Location: PIN_C23,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- JMPOUT[8]	=>  Location: PIN_G17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- JMPOUT[9]	=>  Location: PIN_A18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- JMPOUT[10]	=>  Location: PIN_V2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- JMPOUT[11]	=>  Location: PIN_G12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- JMPOUT[12]	=>  Location: PIN_E4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- JMPOUT[13]	=>  Location: PIN_R3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- JMPOUT[14]	=>  Location: PIN_D4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- JMPOUT[15]	=>  Location: PIN_AF27,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- JMPADDR[0]	=>  Location: PIN_AG3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- JMPADDR[1]	=>  Location: PIN_AH23,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- JMPADDR[2]	=>  Location: PIN_AG19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- JMPADDR[3]	=>  Location: PIN_P21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- JMPADDR[4]	=>  Location: PIN_K7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- JMPADDR[5]	=>  Location: PIN_AE23,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- JMPADDR[6]	=>  Location: PIN_D23,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- JMPADDR[7]	=>  Location: PIN_D19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- JMPADDR[8]	=>  Location: PIN_B18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- JMPADDR[9]	=>  Location: PIN_V1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- JMPADDR[10]	=>  Location: PIN_A6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- JMPADDR[11]	=>  Location: PIN_E5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- PC[13]	=>  Location: PIN_U3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- PC[14]	=>  Location: PIN_C3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- PC[15]	=>  Location: PIN_AE26,	 I/O Standard: 2.5 V,	 Current Strength: Default


ARCHITECTURE structure OF PCJMP IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_JMPADDR : std_logic_vector(11 DOWNTO 0);
SIGNAL ww_PC : std_logic_vector(15 DOWNTO 0);
SIGNAL ww_JMPOUT : std_logic_vector(15 DOWNTO 0);
SIGNAL \PC[0]~input_o\ : std_logic;
SIGNAL \PC[1]~input_o\ : std_logic;
SIGNAL \PC[2]~input_o\ : std_logic;
SIGNAL \PC[3]~input_o\ : std_logic;
SIGNAL \PC[4]~input_o\ : std_logic;
SIGNAL \PC[5]~input_o\ : std_logic;
SIGNAL \PC[6]~input_o\ : std_logic;
SIGNAL \PC[7]~input_o\ : std_logic;
SIGNAL \PC[8]~input_o\ : std_logic;
SIGNAL \PC[9]~input_o\ : std_logic;
SIGNAL \PC[10]~input_o\ : std_logic;
SIGNAL \PC[11]~input_o\ : std_logic;
SIGNAL \PC[12]~input_o\ : std_logic;
SIGNAL \JMPOUT[0]~output_o\ : std_logic;
SIGNAL \JMPOUT[1]~output_o\ : std_logic;
SIGNAL \JMPOUT[2]~output_o\ : std_logic;
SIGNAL \JMPOUT[3]~output_o\ : std_logic;
SIGNAL \JMPOUT[4]~output_o\ : std_logic;
SIGNAL \JMPOUT[5]~output_o\ : std_logic;
SIGNAL \JMPOUT[6]~output_o\ : std_logic;
SIGNAL \JMPOUT[7]~output_o\ : std_logic;
SIGNAL \JMPOUT[8]~output_o\ : std_logic;
SIGNAL \JMPOUT[9]~output_o\ : std_logic;
SIGNAL \JMPOUT[10]~output_o\ : std_logic;
SIGNAL \JMPOUT[11]~output_o\ : std_logic;
SIGNAL \JMPOUT[12]~output_o\ : std_logic;
SIGNAL \JMPOUT[13]~output_o\ : std_logic;
SIGNAL \JMPOUT[14]~output_o\ : std_logic;
SIGNAL \JMPOUT[15]~output_o\ : std_logic;
SIGNAL \JMPADDR[0]~input_o\ : std_logic;
SIGNAL \JMPADDR[1]~input_o\ : std_logic;
SIGNAL \JMPADDR[2]~input_o\ : std_logic;
SIGNAL \JMPADDR[3]~input_o\ : std_logic;
SIGNAL \JMPADDR[4]~input_o\ : std_logic;
SIGNAL \JMPADDR[5]~input_o\ : std_logic;
SIGNAL \JMPADDR[6]~input_o\ : std_logic;
SIGNAL \JMPADDR[7]~input_o\ : std_logic;
SIGNAL \JMPADDR[8]~input_o\ : std_logic;
SIGNAL \JMPADDR[9]~input_o\ : std_logic;
SIGNAL \JMPADDR[10]~input_o\ : std_logic;
SIGNAL \JMPADDR[11]~input_o\ : std_logic;
SIGNAL \PC[13]~input_o\ : std_logic;
SIGNAL \PC[14]~input_o\ : std_logic;
SIGNAL \PC[15]~input_o\ : std_logic;

COMPONENT hard_block
    PORT (
	devoe : IN std_logic;
	devclrn : IN std_logic;
	devpor : IN std_logic);
END COMPONENT;

BEGIN

ww_JMPADDR <= JMPADDR;
ww_PC <= PC;
JMPOUT <= ww_JMPOUT;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;
auto_generated_inst : hard_block
PORT MAP (
	devoe => ww_devoe,
	devclrn => ww_devclrn,
	devpor => ww_devpor);

-- Location: IOOBUF_X0_Y67_N16
\JMPOUT[0]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \JMPOUT[0]~output_o\);

-- Location: IOOBUF_X3_Y0_N23
\JMPOUT[1]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \JMPADDR[0]~input_o\,
	devoe => ww_devoe,
	o => \JMPOUT[1]~output_o\);

-- Location: IOOBUF_X81_Y0_N23
\JMPOUT[2]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \JMPADDR[1]~input_o\,
	devoe => ww_devoe,
	o => \JMPOUT[2]~output_o\);

-- Location: IOOBUF_X72_Y0_N2
\JMPOUT[3]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \JMPADDR[2]~input_o\,
	devoe => ww_devoe,
	o => \JMPOUT[3]~output_o\);

-- Location: IOOBUF_X115_Y36_N16
\JMPOUT[4]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \JMPADDR[3]~input_o\,
	devoe => ww_devoe,
	o => \JMPOUT[4]~output_o\);

-- Location: IOOBUF_X0_Y49_N2
\JMPOUT[5]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \JMPADDR[4]~input_o\,
	devoe => ww_devoe,
	o => \JMPOUT[5]~output_o\);

-- Location: IOOBUF_X105_Y0_N9
\JMPOUT[6]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \JMPADDR[5]~input_o\,
	devoe => ww_devoe,
	o => \JMPOUT[6]~output_o\);

-- Location: IOOBUF_X100_Y73_N23
\JMPOUT[7]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \JMPADDR[6]~input_o\,
	devoe => ww_devoe,
	o => \JMPOUT[7]~output_o\);

-- Location: IOOBUF_X83_Y73_N23
\JMPOUT[8]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \JMPADDR[7]~input_o\,
	devoe => ww_devoe,
	o => \JMPOUT[8]~output_o\);

-- Location: IOOBUF_X79_Y73_N2
\JMPOUT[9]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \JMPADDR[8]~input_o\,
	devoe => ww_devoe,
	o => \JMPOUT[9]~output_o\);

-- Location: IOOBUF_X0_Y28_N16
\JMPOUT[10]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \JMPADDR[9]~input_o\,
	devoe => ww_devoe,
	o => \JMPOUT[10]~output_o\);

-- Location: IOOBUF_X27_Y73_N9
\JMPOUT[11]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \JMPADDR[10]~input_o\,
	devoe => ww_devoe,
	o => \JMPOUT[11]~output_o\);

-- Location: IOOBUF_X1_Y73_N9
\JMPOUT[12]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \JMPADDR[11]~input_o\,
	devoe => ww_devoe,
	o => \JMPOUT[12]~output_o\);

-- Location: IOOBUF_X0_Y34_N23
\JMPOUT[13]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \PC[13]~input_o\,
	devoe => ww_devoe,
	o => \JMPOUT[13]~output_o\);

-- Location: IOOBUF_X1_Y73_N2
\JMPOUT[14]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \PC[14]~input_o\,
	devoe => ww_devoe,
	o => \JMPOUT[14]~output_o\);

-- Location: IOOBUF_X115_Y8_N23
\JMPOUT[15]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \PC[15]~input_o\,
	devoe => ww_devoe,
	o => \JMPOUT[15]~output_o\);

-- Location: IOIBUF_X3_Y0_N15
\JMPADDR[0]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_JMPADDR(0),
	o => \JMPADDR[0]~input_o\);

-- Location: IOIBUF_X81_Y0_N15
\JMPADDR[1]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_JMPADDR(1),
	o => \JMPADDR[1]~input_o\);

-- Location: IOIBUF_X72_Y0_N8
\JMPADDR[2]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_JMPADDR(2),
	o => \JMPADDR[2]~input_o\);

-- Location: IOIBUF_X115_Y36_N1
\JMPADDR[3]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_JMPADDR(3),
	o => \JMPADDR[3]~input_o\);

-- Location: IOIBUF_X0_Y49_N8
\JMPADDR[4]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_JMPADDR(4),
	o => \JMPADDR[4]~input_o\);

-- Location: IOIBUF_X105_Y0_N15
\JMPADDR[5]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_JMPADDR(5),
	o => \JMPADDR[5]~input_o\);

-- Location: IOIBUF_X100_Y73_N15
\JMPADDR[6]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_JMPADDR(6),
	o => \JMPADDR[6]~input_o\);

-- Location: IOIBUF_X83_Y73_N15
\JMPADDR[7]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_JMPADDR(7),
	o => \JMPADDR[7]~input_o\);

-- Location: IOIBUF_X79_Y73_N8
\JMPADDR[8]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_JMPADDR(8),
	o => \JMPADDR[8]~input_o\);

-- Location: IOIBUF_X0_Y28_N22
\JMPADDR[9]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_JMPADDR(9),
	o => \JMPADDR[9]~input_o\);

-- Location: IOIBUF_X27_Y73_N15
\JMPADDR[10]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_JMPADDR(10),
	o => \JMPADDR[10]~input_o\);

-- Location: IOIBUF_X1_Y73_N15
\JMPADDR[11]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_JMPADDR(11),
	o => \JMPADDR[11]~input_o\);

-- Location: IOIBUF_X0_Y34_N8
\PC[13]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_PC(13),
	o => \PC[13]~input_o\);

-- Location: IOIBUF_X1_Y73_N22
\PC[14]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_PC(14),
	o => \PC[14]~input_o\);

-- Location: IOIBUF_X115_Y8_N15
\PC[15]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_PC(15),
	o => \PC[15]~input_o\);

-- Location: IOIBUF_X115_Y46_N1
\PC[0]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_PC(0),
	o => \PC[0]~input_o\);

-- Location: IOIBUF_X115_Y64_N1
\PC[1]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_PC(1),
	o => \PC[1]~input_o\);

-- Location: IOIBUF_X54_Y0_N22
\PC[2]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_PC(2),
	o => \PC[2]~input_o\);

-- Location: IOIBUF_X102_Y73_N8
\PC[3]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_PC(3),
	o => \PC[3]~input_o\);

-- Location: IOIBUF_X113_Y0_N1
\PC[4]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_PC(4),
	o => \PC[4]~input_o\);

-- Location: IOIBUF_X3_Y73_N8
\PC[5]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_PC(5),
	o => \PC[5]~input_o\);

-- Location: IOIBUF_X23_Y73_N8
\PC[6]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_PC(6),
	o => \PC[6]~input_o\);

-- Location: IOIBUF_X115_Y32_N1
\PC[7]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_PC(7),
	o => \PC[7]~input_o\);

-- Location: IOIBUF_X79_Y0_N22
\PC[8]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_PC(8),
	o => \PC[8]~input_o\);

-- Location: IOIBUF_X0_Y27_N15
\PC[9]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_PC(9),
	o => \PC[9]~input_o\);

-- Location: IOIBUF_X42_Y73_N1
\PC[10]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_PC(10),
	o => \PC[10]~input_o\);

-- Location: IOIBUF_X115_Y62_N22
\PC[11]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_PC(11),
	o => \PC[11]~input_o\);

-- Location: IOIBUF_X98_Y0_N22
\PC[12]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_PC(12),
	o => \PC[12]~input_o\);

ww_JMPOUT(0) <= \JMPOUT[0]~output_o\;

ww_JMPOUT(1) <= \JMPOUT[1]~output_o\;

ww_JMPOUT(2) <= \JMPOUT[2]~output_o\;

ww_JMPOUT(3) <= \JMPOUT[3]~output_o\;

ww_JMPOUT(4) <= \JMPOUT[4]~output_o\;

ww_JMPOUT(5) <= \JMPOUT[5]~output_o\;

ww_JMPOUT(6) <= \JMPOUT[6]~output_o\;

ww_JMPOUT(7) <= \JMPOUT[7]~output_o\;

ww_JMPOUT(8) <= \JMPOUT[8]~output_o\;

ww_JMPOUT(9) <= \JMPOUT[9]~output_o\;

ww_JMPOUT(10) <= \JMPOUT[10]~output_o\;

ww_JMPOUT(11) <= \JMPOUT[11]~output_o\;

ww_JMPOUT(12) <= \JMPOUT[12]~output_o\;

ww_JMPOUT(13) <= \JMPOUT[13]~output_o\;

ww_JMPOUT(14) <= \JMPOUT[14]~output_o\;

ww_JMPOUT(15) <= \JMPOUT[15]~output_o\;
END structure;


