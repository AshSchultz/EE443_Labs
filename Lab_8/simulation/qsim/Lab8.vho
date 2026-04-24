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

-- DATE "04/24/2026 14:11:48"

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

ENTITY 	CONTROL IS
    PORT (
	INS_OP : IN std_logic_vector(3 DOWNTO 0);
	ZERO : IN std_logic;
	RegDst : OUT std_logic;
	Jump : OUT std_logic;
	Branch : OUT std_logic;
	MemRead : OUT std_logic;
	MemtoReg : OUT std_logic;
	MemWrite : OUT std_logic;
	ALUSrc : OUT std_logic;
	RegWrite : OUT std_logic;
	ALUCon : OUT std_logic;
	ALUOp : OUT std_logic_vector(2 DOWNTO 0)
	);
END CONTROL;

-- Design Ports Information
-- RegDst	=>  Location: PIN_AF4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Jump	=>  Location: PIN_AE4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Branch	=>  Location: PIN_AF5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- MemRead	=>  Location: PIN_Y10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- MemtoReg	=>  Location: PIN_AF3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- MemWrite	=>  Location: PIN_AD4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ALUSrc	=>  Location: PIN_AE6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- RegWrite	=>  Location: PIN_AG3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ALUCon	=>  Location: PIN_AB5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ALUOp[0]	=>  Location: PIN_D24,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ALUOp[1]	=>  Location: PIN_AC4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ALUOp[2]	=>  Location: PIN_AE5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- INS_OP[2]	=>  Location: PIN_AD5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- INS_OP[1]	=>  Location: PIN_AD7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- INS_OP[0]	=>  Location: PIN_AF6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- INS_OP[3]	=>  Location: PIN_AB6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ZERO	=>  Location: PIN_AH3,	 I/O Standard: 2.5 V,	 Current Strength: Default


ARCHITECTURE structure OF CONTROL IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_INS_OP : std_logic_vector(3 DOWNTO 0);
SIGNAL ww_ZERO : std_logic;
SIGNAL ww_RegDst : std_logic;
SIGNAL ww_Jump : std_logic;
SIGNAL ww_Branch : std_logic;
SIGNAL ww_MemRead : std_logic;
SIGNAL ww_MemtoReg : std_logic;
SIGNAL ww_MemWrite : std_logic;
SIGNAL ww_ALUSrc : std_logic;
SIGNAL ww_RegWrite : std_logic;
SIGNAL ww_ALUCon : std_logic;
SIGNAL ww_ALUOp : std_logic_vector(2 DOWNTO 0);
SIGNAL \RegDst~output_o\ : std_logic;
SIGNAL \Jump~output_o\ : std_logic;
SIGNAL \Branch~output_o\ : std_logic;
SIGNAL \MemRead~output_o\ : std_logic;
SIGNAL \MemtoReg~output_o\ : std_logic;
SIGNAL \MemWrite~output_o\ : std_logic;
SIGNAL \ALUSrc~output_o\ : std_logic;
SIGNAL \RegWrite~output_o\ : std_logic;
SIGNAL \ALUCon~output_o\ : std_logic;
SIGNAL \ALUOp[0]~output_o\ : std_logic;
SIGNAL \ALUOp[1]~output_o\ : std_logic;
SIGNAL \ALUOp[2]~output_o\ : std_logic;
SIGNAL \INS_OP[2]~input_o\ : std_logic;
SIGNAL \INS_OP[3]~input_o\ : std_logic;
SIGNAL \INS_OP[1]~input_o\ : std_logic;
SIGNAL \INS_OP[0]~input_o\ : std_logic;
SIGNAL \Mux0~0_combout\ : std_logic;
SIGNAL \Mux2~0_combout\ : std_logic;
SIGNAL \Mux3~0_combout\ : std_logic;
SIGNAL \ZERO~input_o\ : std_logic;
SIGNAL \Mux3~1_combout\ : std_logic;
SIGNAL \Mux4~0_combout\ : std_logic;
SIGNAL \Mux6~0_combout\ : std_logic;
SIGNAL \Mux4~1_combout\ : std_logic;
SIGNAL \Mux1~0_combout\ : std_logic;
SIGNAL \Mux8~0_combout\ : std_logic;
SIGNAL \ALT_INV_Mux1~0_combout\ : std_logic;

COMPONENT hard_block
    PORT (
	devoe : IN std_logic;
	devclrn : IN std_logic;
	devpor : IN std_logic);
END COMPONENT;

BEGIN

ww_INS_OP <= INS_OP;
ww_ZERO <= ZERO;
RegDst <= ww_RegDst;
Jump <= ww_Jump;
Branch <= ww_Branch;
MemRead <= ww_MemRead;
MemtoReg <= ww_MemtoReg;
MemWrite <= ww_MemWrite;
ALUSrc <= ww_ALUSrc;
RegWrite <= ww_RegWrite;
ALUCon <= ww_ALUCon;
ALUOp <= ww_ALUOp;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;
\ALT_INV_Mux1~0_combout\ <= NOT \Mux1~0_combout\;
auto_generated_inst : hard_block
PORT MAP (
	devoe => ww_devoe,
	devclrn => ww_devclrn,
	devpor => ww_devpor);

-- Location: IOOBUF_X1_Y0_N2
\RegDst~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux0~0_combout\,
	devoe => ww_devoe,
	o => \RegDst~output_o\);

-- Location: IOOBUF_X3_Y0_N23
\Jump~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux2~0_combout\,
	devoe => ww_devoe,
	o => \Jump~output_o\);

-- Location: IOOBUF_X5_Y0_N16
\Branch~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux3~1_combout\,
	devoe => ww_devoe,
	o => \Branch~output_o\);

-- Location: IOOBUF_X7_Y0_N9
\MemRead~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux4~0_combout\,
	devoe => ww_devoe,
	o => \MemRead~output_o\);

-- Location: IOOBUF_X7_Y0_N23
\MemtoReg~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux4~0_combout\,
	devoe => ww_devoe,
	o => \MemtoReg~output_o\);

-- Location: IOOBUF_X1_Y0_N9
\MemWrite~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux6~0_combout\,
	devoe => ww_devoe,
	o => \MemWrite~output_o\);

-- Location: IOOBUF_X1_Y0_N16
\ALUSrc~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux4~1_combout\,
	devoe => ww_devoe,
	o => \ALUSrc~output_o\);

-- Location: IOOBUF_X3_Y0_N16
\RegWrite~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \ALT_INV_Mux1~0_combout\,
	devoe => ww_devoe,
	o => \RegWrite~output_o\);

-- Location: IOOBUF_X0_Y4_N23
\ALUCon~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux8~0_combout\,
	devoe => ww_devoe,
	o => \ALUCon~output_o\);

-- Location: IOOBUF_X98_Y73_N23
\ALUOp[0]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \ALUOp[0]~output_o\);

-- Location: IOOBUF_X0_Y4_N2
\ALUOp[1]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux8~0_combout\,
	devoe => ww_devoe,
	o => \ALUOp[1]~output_o\);

-- Location: IOOBUF_X5_Y0_N23
\ALUOp[2]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux3~0_combout\,
	devoe => ww_devoe,
	o => \ALUOp[2]~output_o\);

-- Location: IOIBUF_X1_Y0_N22
\INS_OP[2]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_INS_OP(2),
	o => \INS_OP[2]~input_o\);

-- Location: IOIBUF_X0_Y4_N8
\INS_OP[3]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_INS_OP(3),
	o => \INS_OP[3]~input_o\);

-- Location: IOIBUF_X3_Y0_N1
\INS_OP[1]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_INS_OP(1),
	o => \INS_OP[1]~input_o\);

-- Location: IOIBUF_X7_Y0_N15
\INS_OP[0]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_INS_OP(0),
	o => \INS_OP[0]~input_o\);

-- Location: LCCOMB_X2_Y1_N24
\Mux0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux0~0_combout\ = (!\INS_OP[2]~input_o\ & (!\INS_OP[3]~input_o\ & (!\INS_OP[1]~input_o\ & !\INS_OP[0]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \INS_OP[2]~input_o\,
	datab => \INS_OP[3]~input_o\,
	datac => \INS_OP[1]~input_o\,
	datad => \INS_OP[0]~input_o\,
	combout => \Mux0~0_combout\);

-- Location: LCCOMB_X2_Y1_N26
\Mux2~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux2~0_combout\ = (!\INS_OP[2]~input_o\ & (!\INS_OP[3]~input_o\ & (\INS_OP[1]~input_o\ & !\INS_OP[0]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \INS_OP[2]~input_o\,
	datab => \INS_OP[3]~input_o\,
	datac => \INS_OP[1]~input_o\,
	datad => \INS_OP[0]~input_o\,
	combout => \Mux2~0_combout\);

-- Location: LCCOMB_X2_Y1_N4
\Mux3~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux3~0_combout\ = (\INS_OP[2]~input_o\ & (!\INS_OP[3]~input_o\ & (!\INS_OP[1]~input_o\ & !\INS_OP[0]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \INS_OP[2]~input_o\,
	datab => \INS_OP[3]~input_o\,
	datac => \INS_OP[1]~input_o\,
	datad => \INS_OP[0]~input_o\,
	combout => \Mux3~0_combout\);

-- Location: IOIBUF_X5_Y0_N8
\ZERO~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_ZERO,
	o => \ZERO~input_o\);

-- Location: LCCOMB_X5_Y1_N24
\Mux3~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux3~1_combout\ = (\Mux3~0_combout\ & \ZERO~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux3~0_combout\,
	datac => \ZERO~input_o\,
	combout => \Mux3~1_combout\);

-- Location: LCCOMB_X2_Y1_N30
\Mux4~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux4~0_combout\ = (!\INS_OP[2]~input_o\ & (\INS_OP[3]~input_o\ & (\INS_OP[1]~input_o\ & \INS_OP[0]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \INS_OP[2]~input_o\,
	datab => \INS_OP[3]~input_o\,
	datac => \INS_OP[1]~input_o\,
	datad => \INS_OP[0]~input_o\,
	combout => \Mux4~0_combout\);

-- Location: LCCOMB_X2_Y1_N16
\Mux6~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux6~0_combout\ = (\INS_OP[2]~input_o\ & (\INS_OP[3]~input_o\ & (\INS_OP[1]~input_o\ & \INS_OP[0]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \INS_OP[2]~input_o\,
	datab => \INS_OP[3]~input_o\,
	datac => \INS_OP[1]~input_o\,
	datad => \INS_OP[0]~input_o\,
	combout => \Mux6~0_combout\);

-- Location: LCCOMB_X2_Y1_N18
\Mux4~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux4~1_combout\ = (\INS_OP[3]~input_o\ & (\INS_OP[1]~input_o\ & \INS_OP[0]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \INS_OP[3]~input_o\,
	datac => \INS_OP[1]~input_o\,
	datad => \INS_OP[0]~input_o\,
	combout => \Mux4~1_combout\);

-- Location: LCCOMB_X2_Y1_N20
\Mux1~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux1~0_combout\ = (\INS_OP[2]~input_o\) # ((\INS_OP[3]~input_o\ & ((!\INS_OP[0]~input_o\) # (!\INS_OP[1]~input_o\))) # (!\INS_OP[3]~input_o\ & ((\INS_OP[1]~input_o\) # (\INS_OP[0]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \INS_OP[2]~input_o\,
	datab => \INS_OP[3]~input_o\,
	datac => \INS_OP[1]~input_o\,
	datad => \INS_OP[0]~input_o\,
	combout => \Mux1~0_combout\);

-- Location: LCCOMB_X2_Y1_N14
\Mux8~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux8~0_combout\ = (\INS_OP[3]~input_o\ & (((\INS_OP[1]~input_o\ & \INS_OP[0]~input_o\)))) # (!\INS_OP[3]~input_o\ & (\INS_OP[2]~input_o\ & (!\INS_OP[1]~input_o\ & !\INS_OP[0]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000000000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \INS_OP[2]~input_o\,
	datab => \INS_OP[3]~input_o\,
	datac => \INS_OP[1]~input_o\,
	datad => \INS_OP[0]~input_o\,
	combout => \Mux8~0_combout\);

ww_RegDst <= \RegDst~output_o\;

ww_Jump <= \Jump~output_o\;

ww_Branch <= \Branch~output_o\;

ww_MemRead <= \MemRead~output_o\;

ww_MemtoReg <= \MemtoReg~output_o\;

ww_MemWrite <= \MemWrite~output_o\;

ww_ALUSrc <= \ALUSrc~output_o\;

ww_RegWrite <= \RegWrite~output_o\;

ww_ALUCon <= \ALUCon~output_o\;

ww_ALUOp(0) <= \ALUOp[0]~output_o\;

ww_ALUOp(1) <= \ALUOp[1]~output_o\;

ww_ALUOp(2) <= \ALUOp[2]~output_o\;
END structure;


