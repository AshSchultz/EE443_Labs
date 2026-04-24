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

-- DATE "04/24/2026 00:12:04"

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

ENTITY 	INS_MEM IS
    PORT (
	ADDR : IN std_logic_vector(15 DOWNTO 0);
	DOUT : OUT std_logic_vector(15 DOWNTO 0)
	);
END INS_MEM;

-- Design Ports Information
-- ADDR[0]	=>  Location: PIN_D19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- DOUT[0]	=>  Location: PIN_U5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- DOUT[1]	=>  Location: PIN_AB2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- DOUT[2]	=>  Location: PIN_R3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- DOUT[3]	=>  Location: PIN_U3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- DOUT[4]	=>  Location: PIN_M1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- DOUT[5]	=>  Location: PIN_R1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- DOUT[6]	=>  Location: PIN_R4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- DOUT[7]	=>  Location: PIN_R2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- DOUT[8]	=>  Location: PIN_W1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- DOUT[9]	=>  Location: PIN_M2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- DOUT[10]	=>  Location: PIN_Y3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- DOUT[11]	=>  Location: PIN_Y4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- DOUT[12]	=>  Location: PIN_U4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- DOUT[13]	=>  Location: PIN_R6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- DOUT[14]	=>  Location: PIN_T4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- DOUT[15]	=>  Location: PIN_R7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ADDR[4]	=>  Location: PIN_L1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ADDR[5]	=>  Location: PIN_P2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ADDR[6]	=>  Location: PIN_V2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ADDR[7]	=>  Location: PIN_W2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ADDR[8]	=>  Location: PIN_V4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ADDR[9]	=>  Location: PIN_V3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ADDR[10]	=>  Location: PIN_T7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ADDR[11]	=>  Location: PIN_V1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ADDR[12]	=>  Location: PIN_U1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ADDR[13]	=>  Location: PIN_T3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ADDR[14]	=>  Location: PIN_AB1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ADDR[15]	=>  Location: PIN_U2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ADDR[3]	=>  Location: PIN_P1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ADDR[1]	=>  Location: PIN_N8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ADDR[2]	=>  Location: PIN_R5,	 I/O Standard: 2.5 V,	 Current Strength: Default


ARCHITECTURE structure OF INS_MEM IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_ADDR : std_logic_vector(15 DOWNTO 0);
SIGNAL ww_DOUT : std_logic_vector(15 DOWNTO 0);
SIGNAL \ADDR[0]~input_o\ : std_logic;
SIGNAL \DOUT[0]~output_o\ : std_logic;
SIGNAL \DOUT[1]~output_o\ : std_logic;
SIGNAL \DOUT[2]~output_o\ : std_logic;
SIGNAL \DOUT[3]~output_o\ : std_logic;
SIGNAL \DOUT[4]~output_o\ : std_logic;
SIGNAL \DOUT[5]~output_o\ : std_logic;
SIGNAL \DOUT[6]~output_o\ : std_logic;
SIGNAL \DOUT[7]~output_o\ : std_logic;
SIGNAL \DOUT[8]~output_o\ : std_logic;
SIGNAL \DOUT[9]~output_o\ : std_logic;
SIGNAL \DOUT[10]~output_o\ : std_logic;
SIGNAL \DOUT[11]~output_o\ : std_logic;
SIGNAL \DOUT[12]~output_o\ : std_logic;
SIGNAL \DOUT[13]~output_o\ : std_logic;
SIGNAL \DOUT[14]~output_o\ : std_logic;
SIGNAL \DOUT[15]~output_o\ : std_logic;
SIGNAL \ADDR[14]~input_o\ : std_logic;
SIGNAL \ADDR[15]~input_o\ : std_logic;
SIGNAL \exception~2_combout\ : std_logic;
SIGNAL \ADDR[12]~input_o\ : std_logic;
SIGNAL \ADDR[10]~input_o\ : std_logic;
SIGNAL \ADDR[11]~input_o\ : std_logic;
SIGNAL \ADDR[13]~input_o\ : std_logic;
SIGNAL \exception~1_combout\ : std_logic;
SIGNAL \ADDR[6]~input_o\ : std_logic;
SIGNAL \ADDR[8]~input_o\ : std_logic;
SIGNAL \ADDR[7]~input_o\ : std_logic;
SIGNAL \ADDR[9]~input_o\ : std_logic;
SIGNAL \exception~0_combout\ : std_logic;
SIGNAL \ADDR[5]~input_o\ : std_logic;
SIGNAL \ADDR[4]~input_o\ : std_logic;
SIGNAL \dec|en_0~0_combout\ : std_logic;
SIGNAL \DOUT~6_combout\ : std_logic;
SIGNAL \ADDR[3]~input_o\ : std_logic;
SIGNAL \ADDR[2]~input_o\ : std_logic;
SIGNAL \ADDR[1]~input_o\ : std_logic;
SIGNAL \DOUT~7_combout\ : std_logic;
SIGNAL \exception~3_combout\ : std_logic;
SIGNAL \data_out[1]~0_combout\ : std_logic;
SIGNAL \DOUT~8_combout\ : std_logic;
SIGNAL \data_out[2]~1_combout\ : std_logic;
SIGNAL \DOUT~18_combout\ : std_logic;
SIGNAL \DOUT~19_combout\ : std_logic;
SIGNAL \dec|dcd_0|dcd|Mux7~0_combout\ : std_logic;
SIGNAL \DOUT~9_combout\ : std_logic;
SIGNAL \DOUT~20_combout\ : std_logic;
SIGNAL \DOUT~10_combout\ : std_logic;
SIGNAL \DOUT~11_combout\ : std_logic;
SIGNAL \DOUT~12_combout\ : std_logic;
SIGNAL \DOUT~13_combout\ : std_logic;
SIGNAL \DOUT~14_combout\ : std_logic;
SIGNAL \DOUT~15_combout\ : std_logic;
SIGNAL \DOUT~16_combout\ : std_logic;
SIGNAL \DOUT~17_combout\ : std_logic;

COMPONENT hard_block
    PORT (
	devoe : IN std_logic;
	devclrn : IN std_logic;
	devpor : IN std_logic);
END COMPONENT;

BEGIN

ww_ADDR <= ADDR;
DOUT <= ww_DOUT;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;
auto_generated_inst : hard_block
PORT MAP (
	devoe => ww_devoe,
	devclrn => ww_devclrn,
	devpor => ww_devpor);

-- Location: IOOBUF_X0_Y24_N2
\DOUT[0]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \DOUT~7_combout\,
	devoe => ww_devoe,
	o => \DOUT[0]~output_o\);

-- Location: IOOBUF_X0_Y27_N16
\DOUT[1]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \DOUT~8_combout\,
	devoe => ww_devoe,
	o => \DOUT[1]~output_o\);

-- Location: IOOBUF_X0_Y34_N23
\DOUT[2]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \DOUT~18_combout\,
	devoe => ww_devoe,
	o => \DOUT[2]~output_o\);

-- Location: IOOBUF_X0_Y34_N9
\DOUT[3]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \DOUT~19_combout\,
	devoe => ww_devoe,
	o => \DOUT[3]~output_o\);

-- Location: IOOBUF_X0_Y44_N23
\DOUT[4]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \DOUT~9_combout\,
	devoe => ww_devoe,
	o => \DOUT[4]~output_o\);

-- Location: IOOBUF_X0_Y35_N9
\DOUT[5]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \DOUT~20_combout\,
	devoe => ww_devoe,
	o => \DOUT[5]~output_o\);

-- Location: IOOBUF_X0_Y33_N16
\DOUT[6]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \DOUT~11_combout\,
	devoe => ww_devoe,
	o => \DOUT[6]~output_o\);

-- Location: IOOBUF_X0_Y35_N2
\DOUT[7]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \DOUT~12_combout\,
	devoe => ww_devoe,
	o => \DOUT[7]~output_o\);

-- Location: IOOBUF_X0_Y25_N16
\DOUT[8]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \DOUT~7_combout\,
	devoe => ww_devoe,
	o => \DOUT[8]~output_o\);

-- Location: IOOBUF_X0_Y44_N16
\DOUT[9]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \DOUT~9_combout\,
	devoe => ww_devoe,
	o => \DOUT[9]~output_o\);

-- Location: IOOBUF_X0_Y24_N16
\DOUT[10]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \DOUT~7_combout\,
	devoe => ww_devoe,
	o => \DOUT[10]~output_o\);

-- Location: IOOBUF_X0_Y24_N9
\DOUT[11]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \DOUT~7_combout\,
	devoe => ww_devoe,
	o => \DOUT[11]~output_o\);

-- Location: IOOBUF_X0_Y34_N16
\DOUT[12]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \DOUT~14_combout\,
	devoe => ww_devoe,
	o => \DOUT[12]~output_o\);

-- Location: IOOBUF_X0_Y34_N2
\DOUT[13]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \DOUT~15_combout\,
	devoe => ww_devoe,
	o => \DOUT[13]~output_o\);

-- Location: IOOBUF_X0_Y33_N23
\DOUT[14]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \DOUT~16_combout\,
	devoe => ww_devoe,
	o => \DOUT[14]~output_o\);

-- Location: IOOBUF_X0_Y35_N16
\DOUT[15]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \DOUT~17_combout\,
	devoe => ww_devoe,
	o => \DOUT[15]~output_o\);

-- Location: IOIBUF_X0_Y27_N22
\ADDR[14]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_ADDR(14),
	o => \ADDR[14]~input_o\);

-- Location: IOIBUF_X0_Y30_N1
\ADDR[15]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_ADDR(15),
	o => \ADDR[15]~input_o\);

-- Location: LCCOMB_X1_Y30_N10
\exception~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \exception~2_combout\ = (\ADDR[14]~input_o\) # (\ADDR[15]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \ADDR[14]~input_o\,
	datad => \ADDR[15]~input_o\,
	combout => \exception~2_combout\);

-- Location: IOIBUF_X0_Y30_N8
\ADDR[12]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_ADDR(12),
	o => \ADDR[12]~input_o\);

-- Location: IOIBUF_X0_Y31_N15
\ADDR[10]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_ADDR(10),
	o => \ADDR[10]~input_o\);

-- Location: IOIBUF_X0_Y28_N22
\ADDR[11]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_ADDR(11),
	o => \ADDR[11]~input_o\);

-- Location: IOIBUF_X0_Y32_N15
\ADDR[13]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_ADDR(13),
	o => \ADDR[13]~input_o\);

-- Location: LCCOMB_X1_Y30_N24
\exception~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \exception~1_combout\ = (\ADDR[12]~input_o\) # ((\ADDR[10]~input_o\) # ((\ADDR[11]~input_o\) # (\ADDR[13]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ADDR[12]~input_o\,
	datab => \ADDR[10]~input_o\,
	datac => \ADDR[11]~input_o\,
	datad => \ADDR[13]~input_o\,
	combout => \exception~1_combout\);

-- Location: IOIBUF_X0_Y28_N15
\ADDR[6]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_ADDR(6),
	o => \ADDR[6]~input_o\);

-- Location: IOIBUF_X0_Y29_N15
\ADDR[8]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_ADDR(8),
	o => \ADDR[8]~input_o\);

-- Location: IOIBUF_X0_Y26_N15
\ADDR[7]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_ADDR(7),
	o => \ADDR[7]~input_o\);

-- Location: IOIBUF_X0_Y29_N22
\ADDR[9]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_ADDR(9),
	o => \ADDR[9]~input_o\);

-- Location: LCCOMB_X1_Y29_N0
\exception~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \exception~0_combout\ = (\ADDR[6]~input_o\) # ((\ADDR[8]~input_o\) # ((\ADDR[7]~input_o\) # (\ADDR[9]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ADDR[6]~input_o\,
	datab => \ADDR[8]~input_o\,
	datac => \ADDR[7]~input_o\,
	datad => \ADDR[9]~input_o\,
	combout => \exception~0_combout\);

-- Location: IOIBUF_X0_Y43_N15
\ADDR[5]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_ADDR(5),
	o => \ADDR[5]~input_o\);

-- Location: IOIBUF_X0_Y44_N8
\ADDR[4]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_ADDR(4),
	o => \ADDR[4]~input_o\);

-- Location: LCCOMB_X1_Y34_N16
\dec|en_0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \dec|en_0~0_combout\ = (!\ADDR[5]~input_o\ & !\ADDR[4]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010100000101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ADDR[5]~input_o\,
	datac => \ADDR[4]~input_o\,
	combout => \dec|en_0~0_combout\);

-- Location: LCCOMB_X1_Y30_N20
\DOUT~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \DOUT~6_combout\ = (!\exception~2_combout\ & (!\exception~1_combout\ & (!\exception~0_combout\ & \dec|en_0~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \exception~2_combout\,
	datab => \exception~1_combout\,
	datac => \exception~0_combout\,
	datad => \dec|en_0~0_combout\,
	combout => \DOUT~6_combout\);

-- Location: IOIBUF_X0_Y42_N1
\ADDR[3]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_ADDR(3),
	o => \ADDR[3]~input_o\);

-- Location: IOIBUF_X0_Y32_N22
\ADDR[2]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_ADDR(2),
	o => \ADDR[2]~input_o\);

-- Location: IOIBUF_X0_Y42_N8
\ADDR[1]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_ADDR(1),
	o => \ADDR[1]~input_o\);

-- Location: LCCOMB_X1_Y34_N2
\DOUT~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \DOUT~7_combout\ = (\DOUT~6_combout\ & (\ADDR[3]~input_o\ & (!\ADDR[2]~input_o\ & !\ADDR[1]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \DOUT~6_combout\,
	datab => \ADDR[3]~input_o\,
	datac => \ADDR[2]~input_o\,
	datad => \ADDR[1]~input_o\,
	combout => \DOUT~7_combout\);

-- Location: LCCOMB_X1_Y30_N22
\exception~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \exception~3_combout\ = (\ADDR[15]~input_o\) # ((\exception~0_combout\) # ((\ADDR[14]~input_o\) # (\exception~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ADDR[15]~input_o\,
	datab => \exception~0_combout\,
	datac => \ADDR[14]~input_o\,
	datad => \exception~1_combout\,
	combout => \exception~3_combout\);

-- Location: LCCOMB_X1_Y34_N28
\data_out[1]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \data_out[1]~0_combout\ = (\dec|en_0~0_combout\ & ((\ADDR[3]~input_o\ & (!\ADDR[1]~input_o\ & !\ADDR[2]~input_o\)) # (!\ADDR[3]~input_o\ & (\ADDR[1]~input_o\ $ (\ADDR[2]~input_o\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001011000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ADDR[3]~input_o\,
	datab => \ADDR[1]~input_o\,
	datac => \ADDR[2]~input_o\,
	datad => \dec|en_0~0_combout\,
	combout => \data_out[1]~0_combout\);

-- Location: LCCOMB_X1_Y30_N16
\DOUT~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \DOUT~8_combout\ = (!\exception~3_combout\ & \data_out[1]~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \exception~3_combout\,
	datad => \data_out[1]~0_combout\,
	combout => \DOUT~8_combout\);

-- Location: LCCOMB_X1_Y34_N22
\data_out[2]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \data_out[2]~1_combout\ = (!\ADDR[3]~input_o\ & ((!\ADDR[1]~input_o\) # (!\ADDR[2]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001100110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \ADDR[3]~input_o\,
	datac => \ADDR[2]~input_o\,
	datad => \ADDR[1]~input_o\,
	combout => \data_out[2]~1_combout\);

-- Location: LCCOMB_X1_Y34_N10
\DOUT~18\ : cycloneive_lcell_comb
-- Equation(s):
-- \DOUT~18_combout\ = (!\exception~3_combout\ & ((\ADDR[5]~input_o\) # ((\ADDR[4]~input_o\) # (!\data_out[2]~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011101111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ADDR[5]~input_o\,
	datab => \ADDR[4]~input_o\,
	datac => \data_out[2]~1_combout\,
	datad => \exception~3_combout\,
	combout => \DOUT~18_combout\);

-- Location: LCCOMB_X1_Y34_N12
\DOUT~19\ : cycloneive_lcell_comb
-- Equation(s):
-- \DOUT~19_combout\ = (\DOUT~6_combout\ & (!\ADDR[1]~input_o\ & (\ADDR[3]~input_o\ $ (\ADDR[2]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \DOUT~6_combout\,
	datab => \ADDR[3]~input_o\,
	datac => \ADDR[2]~input_o\,
	datad => \ADDR[1]~input_o\,
	combout => \DOUT~19_combout\);

-- Location: LCCOMB_X1_Y34_N24
\dec|dcd_0|dcd|Mux7~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \dec|dcd_0|dcd|Mux7~0_combout\ = (\ADDR[2]~input_o\ & !\ADDR[1]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \ADDR[2]~input_o\,
	datad => \ADDR[1]~input_o\,
	combout => \dec|dcd_0|dcd|Mux7~0_combout\);

-- Location: LCCOMB_X1_Y34_N26
\DOUT~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \DOUT~9_combout\ = (!\exception~3_combout\ & ((\dec|dcd_0|dcd|Mux7~0_combout\) # ((\ADDR[3]~input_o\) # (!\dec|en_0~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001000110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dec|dcd_0|dcd|Mux7~0_combout\,
	datab => \exception~3_combout\,
	datac => \ADDR[3]~input_o\,
	datad => \dec|en_0~0_combout\,
	combout => \DOUT~9_combout\);

-- Location: LCCOMB_X1_Y34_N14
\DOUT~20\ : cycloneive_lcell_comb
-- Equation(s):
-- \DOUT~20_combout\ = (!\exception~3_combout\ & ((\ADDR[5]~input_o\) # ((\ADDR[3]~input_o\) # (\ADDR[4]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ADDR[5]~input_o\,
	datab => \ADDR[3]~input_o\,
	datac => \ADDR[4]~input_o\,
	datad => \exception~3_combout\,
	combout => \DOUT~20_combout\);

-- Location: LCCOMB_X1_Y34_N4
\DOUT~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \DOUT~10_combout\ = (\ADDR[1]~input_o\ & (!\ADDR[3]~input_o\ & (\ADDR[2]~input_o\))) # (!\ADDR[1]~input_o\ & (!\ADDR[2]~input_o\ & ((\ADDR[3]~input_o\) # (\dec|en_0~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100001101000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ADDR[3]~input_o\,
	datab => \ADDR[1]~input_o\,
	datac => \ADDR[2]~input_o\,
	datad => \dec|en_0~0_combout\,
	combout => \DOUT~10_combout\);

-- Location: LCCOMB_X1_Y33_N16
\DOUT~11\ : cycloneive_lcell_comb
-- Equation(s):
-- \DOUT~11_combout\ = (\DOUT~6_combout\ & \DOUT~10_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \DOUT~6_combout\,
	datac => \DOUT~10_combout\,
	combout => \DOUT~11_combout\);

-- Location: LCCOMB_X1_Y34_N6
\DOUT~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \DOUT~12_combout\ = (\DOUT~6_combout\ & (\ADDR[3]~input_o\ $ (((\ADDR[2]~input_o\) # (\ADDR[1]~input_o\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010001000101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \DOUT~6_combout\,
	datab => \ADDR[3]~input_o\,
	datac => \ADDR[2]~input_o\,
	datad => \ADDR[1]~input_o\,
	combout => \DOUT~12_combout\);

-- Location: LCCOMB_X1_Y34_N8
\DOUT~13\ : cycloneive_lcell_comb
-- Equation(s):
-- \DOUT~13_combout\ = (\ADDR[1]~input_o\) # ((\ADDR[3]~input_o\ $ (!\ADDR[2]~input_o\)) # (!\dec|en_0~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ADDR[3]~input_o\,
	datab => \ADDR[1]~input_o\,
	datac => \ADDR[2]~input_o\,
	datad => \dec|en_0~0_combout\,
	combout => \DOUT~13_combout\);

-- Location: LCCOMB_X1_Y34_N18
\DOUT~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \DOUT~14_combout\ = (!\exception~3_combout\ & \DOUT~13_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \exception~3_combout\,
	datac => \DOUT~13_combout\,
	combout => \DOUT~14_combout\);

-- Location: LCCOMB_X1_Y34_N20
\DOUT~15\ : cycloneive_lcell_comb
-- Equation(s):
-- \DOUT~15_combout\ = (\DOUT~6_combout\ & ((\ADDR[1]~input_o\ & (!\ADDR[3]~input_o\)) # (!\ADDR[1]~input_o\ & ((!\ADDR[2]~input_o\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010001000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \DOUT~6_combout\,
	datab => \ADDR[3]~input_o\,
	datac => \ADDR[2]~input_o\,
	datad => \ADDR[1]~input_o\,
	combout => \DOUT~15_combout\);

-- Location: LCCOMB_X1_Y34_N30
\DOUT~16\ : cycloneive_lcell_comb
-- Equation(s):
-- \DOUT~16_combout\ = (\DOUT~6_combout\ & (!\ADDR[3]~input_o\ & (\ADDR[2]~input_o\ & \ADDR[1]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \DOUT~6_combout\,
	datab => \ADDR[3]~input_o\,
	datac => \ADDR[2]~input_o\,
	datad => \ADDR[1]~input_o\,
	combout => \DOUT~16_combout\);

-- Location: LCCOMB_X1_Y34_N0
\DOUT~17\ : cycloneive_lcell_comb
-- Equation(s):
-- \DOUT~17_combout\ = (\DOUT~6_combout\ & (!\ADDR[3]~input_o\ & ((\ADDR[1]~input_o\) # (!\ADDR[2]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010001000000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \DOUT~6_combout\,
	datab => \ADDR[3]~input_o\,
	datac => \ADDR[2]~input_o\,
	datad => \ADDR[1]~input_o\,
	combout => \DOUT~17_combout\);

-- Location: IOIBUF_X83_Y73_N15
\ADDR[0]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_ADDR(0),
	o => \ADDR[0]~input_o\);

ww_DOUT(0) <= \DOUT[0]~output_o\;

ww_DOUT(1) <= \DOUT[1]~output_o\;

ww_DOUT(2) <= \DOUT[2]~output_o\;

ww_DOUT(3) <= \DOUT[3]~output_o\;

ww_DOUT(4) <= \DOUT[4]~output_o\;

ww_DOUT(5) <= \DOUT[5]~output_o\;

ww_DOUT(6) <= \DOUT[6]~output_o\;

ww_DOUT(7) <= \DOUT[7]~output_o\;

ww_DOUT(8) <= \DOUT[8]~output_o\;

ww_DOUT(9) <= \DOUT[9]~output_o\;

ww_DOUT(10) <= \DOUT[10]~output_o\;

ww_DOUT(11) <= \DOUT[11]~output_o\;

ww_DOUT(12) <= \DOUT[12]~output_o\;

ww_DOUT(13) <= \DOUT[13]~output_o\;

ww_DOUT(14) <= \DOUT[14]~output_o\;

ww_DOUT(15) <= \DOUT[15]~output_o\;
END structure;


