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

-- DATE "04/24/2026 23:30:36"

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

ENTITY 	m16dp1 IS
    PORT (
	RegDst : OUT std_logic;
	OPCODE : IN std_logic_vector(3 DOWNTO 0);
	MemRead : OUT std_logic;
	MemtoReg : OUT std_logic;
	MemWrite : OUT std_logic;
	ALUSrc : OUT std_logic;
	RegWrite : OUT std_logic;
	ALUCon : OUT std_logic;
	ALUOp : OUT std_logic_vector(2 DOWNTO 0);
	DOUT : OUT std_logic_vector(15 DOWNTO 0);
	INSOUT : OUT std_logic_vector(15 DOWNTO 0);
	CLK : IN std_logic;
	EN : IN std_logic;
	RST : IN std_logic;
	JOUT : OUT std_logic_vector(15 DOWNTO 0);
	JUMPMUX_OUT : OUT std_logic_vector(15 DOWNTO 0);
	PCP2 : OUT std_logic_vector(15 DOWNTO 0)
	);
END m16dp1;

-- Design Ports Information
-- RegDst	=>  Location: PIN_C20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- MemRead	=>  Location: PIN_W26,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- MemtoReg	=>  Location: PIN_U25,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- MemWrite	=>  Location: PIN_C18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ALUSrc	=>  Location: PIN_D18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- RegWrite	=>  Location: PIN_C19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ALUCon	=>  Location: PIN_D20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ALUOp[2]	=>  Location: PIN_A21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ALUOp[1]	=>  Location: PIN_E24,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ALUOp[0]	=>  Location: PIN_AB16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- DOUT[15]	=>  Location: PIN_V27,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- DOUT[14]	=>  Location: PIN_U23,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- DOUT[13]	=>  Location: PIN_Y26,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- DOUT[12]	=>  Location: PIN_AF21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- DOUT[11]	=>  Location: PIN_W28,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- DOUT[10]	=>  Location: PIN_AB27,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- DOUT[9]	=>  Location: PIN_Y25,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- DOUT[8]	=>  Location: PIN_V28,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- DOUT[7]	=>  Location: PIN_AB28,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- DOUT[6]	=>  Location: PIN_W27,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- DOUT[5]	=>  Location: PIN_W21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- DOUT[4]	=>  Location: PIN_U28,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- DOUT[3]	=>  Location: PIN_U24,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- DOUT[2]	=>  Location: PIN_V21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- DOUT[1]	=>  Location: PIN_AA25,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- DOUT[0]	=>  Location: PIN_AC18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- INSOUT[15]	=>  Location: PIN_C27,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- INSOUT[14]	=>  Location: PIN_L26,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- INSOUT[13]	=>  Location: PIN_R22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- INSOUT[12]	=>  Location: PIN_M26,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- INSOUT[11]	=>  Location: PIN_P21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- INSOUT[10]	=>  Location: PIN_M24,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- INSOUT[9]	=>  Location: PIN_D27,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- INSOUT[8]	=>  Location: PIN_E22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- INSOUT[7]	=>  Location: PIN_K27,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- INSOUT[6]	=>  Location: PIN_M25,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- INSOUT[5]	=>  Location: PIN_E28,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- INSOUT[4]	=>  Location: PIN_K25,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- INSOUT[3]	=>  Location: PIN_H25,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- INSOUT[2]	=>  Location: PIN_F28,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- INSOUT[1]	=>  Location: PIN_K21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- INSOUT[0]	=>  Location: PIN_D22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- JOUT[15]	=>  Location: PIN_A25,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- JOUT[14]	=>  Location: PIN_C26,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- JOUT[13]	=>  Location: PIN_E21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- JOUT[12]	=>  Location: PIN_F25,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- JOUT[11]	=>  Location: PIN_F24,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- JOUT[10]	=>  Location: PIN_H22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- JOUT[9]	=>  Location: PIN_M28,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- JOUT[8]	=>  Location: PIN_A23,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- JOUT[7]	=>  Location: PIN_C25,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- JOUT[6]	=>  Location: PIN_B23,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- JOUT[5]	=>  Location: PIN_J24,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- JOUT[4]	=>  Location: PIN_J23,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- JOUT[3]	=>  Location: PIN_H24,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- JOUT[2]	=>  Location: PIN_G24,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- JOUT[1]	=>  Location: PIN_J26,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- JOUT[0]	=>  Location: PIN_L22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- JUMPMUX_OUT[15]	=>  Location: PIN_A26,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- JUMPMUX_OUT[14]	=>  Location: PIN_B26,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- JUMPMUX_OUT[13]	=>  Location: PIN_B25,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- JUMPMUX_OUT[12]	=>  Location: PIN_G23,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- JUMPMUX_OUT[11]	=>  Location: PIN_J22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- JUMPMUX_OUT[10]	=>  Location: PIN_H23,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- JUMPMUX_OUT[9]	=>  Location: PIN_N25,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- JUMPMUX_OUT[8]	=>  Location: PIN_K28,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- JUMPMUX_OUT[7]	=>  Location: PIN_D25,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- JUMPMUX_OUT[6]	=>  Location: PIN_L23,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- JUMPMUX_OUT[5]	=>  Location: PIN_D28,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- JUMPMUX_OUT[4]	=>  Location: PIN_F26,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- JUMPMUX_OUT[3]	=>  Location: PIN_D26,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- JUMPMUX_OUT[2]	=>  Location: PIN_K22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- JUMPMUX_OUT[1]	=>  Location: PIN_L25,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- JUMPMUX_OUT[0]	=>  Location: PIN_G25,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- PCP2[15]	=>  Location: PIN_G26,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- PCP2[14]	=>  Location: PIN_P27,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- PCP2[13]	=>  Location: PIN_F22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- PCP2[12]	=>  Location: PIN_G27,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- PCP2[11]	=>  Location: PIN_G28,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- PCP2[10]	=>  Location: PIN_L24,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- PCP2[9]	=>  Location: PIN_F21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- PCP2[8]	=>  Location: PIN_J25,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- PCP2[7]	=>  Location: PIN_M21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- PCP2[6]	=>  Location: PIN_L27,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- PCP2[5]	=>  Location: PIN_M27,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- PCP2[4]	=>  Location: PIN_L28,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- PCP2[3]	=>  Location: PIN_L21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- PCP2[2]	=>  Location: PIN_H26,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- PCP2[1]	=>  Location: PIN_E26,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- PCP2[0]	=>  Location: PIN_K26,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- OPCODE[1]	=>  Location: PIN_G17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- OPCODE[2]	=>  Location: PIN_F18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- OPCODE[3]	=>  Location: PIN_E18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- OPCODE[0]	=>  Location: PIN_B21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- RST	=>  Location: PIN_E27,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- CLK	=>  Location: PIN_J1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- EN	=>  Location: PIN_F27,	 I/O Standard: 2.5 V,	 Current Strength: Default


ARCHITECTURE structure OF m16dp1 IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_RegDst : std_logic;
SIGNAL ww_OPCODE : std_logic_vector(3 DOWNTO 0);
SIGNAL ww_MemRead : std_logic;
SIGNAL ww_MemtoReg : std_logic;
SIGNAL ww_MemWrite : std_logic;
SIGNAL ww_ALUSrc : std_logic;
SIGNAL ww_RegWrite : std_logic;
SIGNAL ww_ALUCon : std_logic;
SIGNAL ww_ALUOp : std_logic_vector(2 DOWNTO 0);
SIGNAL ww_DOUT : std_logic_vector(15 DOWNTO 0);
SIGNAL ww_INSOUT : std_logic_vector(15 DOWNTO 0);
SIGNAL ww_CLK : std_logic;
SIGNAL ww_EN : std_logic;
SIGNAL ww_RST : std_logic;
SIGNAL ww_JOUT : std_logic_vector(15 DOWNTO 0);
SIGNAL ww_JUMPMUX_OUT : std_logic_vector(15 DOWNTO 0);
SIGNAL ww_PCP2 : std_logic_vector(15 DOWNTO 0);
SIGNAL \CLK~inputclkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \DOUT[15]~output_o\ : std_logic;
SIGNAL \DOUT[14]~output_o\ : std_logic;
SIGNAL \DOUT[13]~output_o\ : std_logic;
SIGNAL \DOUT[12]~output_o\ : std_logic;
SIGNAL \DOUT[11]~output_o\ : std_logic;
SIGNAL \DOUT[10]~output_o\ : std_logic;
SIGNAL \DOUT[9]~output_o\ : std_logic;
SIGNAL \DOUT[8]~output_o\ : std_logic;
SIGNAL \DOUT[7]~output_o\ : std_logic;
SIGNAL \DOUT[6]~output_o\ : std_logic;
SIGNAL \DOUT[5]~output_o\ : std_logic;
SIGNAL \DOUT[4]~output_o\ : std_logic;
SIGNAL \DOUT[3]~output_o\ : std_logic;
SIGNAL \DOUT[2]~output_o\ : std_logic;
SIGNAL \DOUT[1]~output_o\ : std_logic;
SIGNAL \DOUT[0]~output_o\ : std_logic;
SIGNAL \RegDst~output_o\ : std_logic;
SIGNAL \MemRead~output_o\ : std_logic;
SIGNAL \MemtoReg~output_o\ : std_logic;
SIGNAL \MemWrite~output_o\ : std_logic;
SIGNAL \ALUSrc~output_o\ : std_logic;
SIGNAL \RegWrite~output_o\ : std_logic;
SIGNAL \ALUCon~output_o\ : std_logic;
SIGNAL \ALUOp[2]~output_o\ : std_logic;
SIGNAL \ALUOp[1]~output_o\ : std_logic;
SIGNAL \ALUOp[0]~output_o\ : std_logic;
SIGNAL \INSOUT[15]~output_o\ : std_logic;
SIGNAL \INSOUT[14]~output_o\ : std_logic;
SIGNAL \INSOUT[13]~output_o\ : std_logic;
SIGNAL \INSOUT[12]~output_o\ : std_logic;
SIGNAL \INSOUT[11]~output_o\ : std_logic;
SIGNAL \INSOUT[10]~output_o\ : std_logic;
SIGNAL \INSOUT[9]~output_o\ : std_logic;
SIGNAL \INSOUT[8]~output_o\ : std_logic;
SIGNAL \INSOUT[7]~output_o\ : std_logic;
SIGNAL \INSOUT[6]~output_o\ : std_logic;
SIGNAL \INSOUT[5]~output_o\ : std_logic;
SIGNAL \INSOUT[4]~output_o\ : std_logic;
SIGNAL \INSOUT[3]~output_o\ : std_logic;
SIGNAL \INSOUT[2]~output_o\ : std_logic;
SIGNAL \INSOUT[1]~output_o\ : std_logic;
SIGNAL \INSOUT[0]~output_o\ : std_logic;
SIGNAL \JOUT[15]~output_o\ : std_logic;
SIGNAL \JOUT[14]~output_o\ : std_logic;
SIGNAL \JOUT[13]~output_o\ : std_logic;
SIGNAL \JOUT[12]~output_o\ : std_logic;
SIGNAL \JOUT[11]~output_o\ : std_logic;
SIGNAL \JOUT[10]~output_o\ : std_logic;
SIGNAL \JOUT[9]~output_o\ : std_logic;
SIGNAL \JOUT[8]~output_o\ : std_logic;
SIGNAL \JOUT[7]~output_o\ : std_logic;
SIGNAL \JOUT[6]~output_o\ : std_logic;
SIGNAL \JOUT[5]~output_o\ : std_logic;
SIGNAL \JOUT[4]~output_o\ : std_logic;
SIGNAL \JOUT[3]~output_o\ : std_logic;
SIGNAL \JOUT[2]~output_o\ : std_logic;
SIGNAL \JOUT[1]~output_o\ : std_logic;
SIGNAL \JOUT[0]~output_o\ : std_logic;
SIGNAL \JUMPMUX_OUT[15]~output_o\ : std_logic;
SIGNAL \JUMPMUX_OUT[14]~output_o\ : std_logic;
SIGNAL \JUMPMUX_OUT[13]~output_o\ : std_logic;
SIGNAL \JUMPMUX_OUT[12]~output_o\ : std_logic;
SIGNAL \JUMPMUX_OUT[11]~output_o\ : std_logic;
SIGNAL \JUMPMUX_OUT[10]~output_o\ : std_logic;
SIGNAL \JUMPMUX_OUT[9]~output_o\ : std_logic;
SIGNAL \JUMPMUX_OUT[8]~output_o\ : std_logic;
SIGNAL \JUMPMUX_OUT[7]~output_o\ : std_logic;
SIGNAL \JUMPMUX_OUT[6]~output_o\ : std_logic;
SIGNAL \JUMPMUX_OUT[5]~output_o\ : std_logic;
SIGNAL \JUMPMUX_OUT[4]~output_o\ : std_logic;
SIGNAL \JUMPMUX_OUT[3]~output_o\ : std_logic;
SIGNAL \JUMPMUX_OUT[2]~output_o\ : std_logic;
SIGNAL \JUMPMUX_OUT[1]~output_o\ : std_logic;
SIGNAL \JUMPMUX_OUT[0]~output_o\ : std_logic;
SIGNAL \PCP2[15]~output_o\ : std_logic;
SIGNAL \PCP2[14]~output_o\ : std_logic;
SIGNAL \PCP2[13]~output_o\ : std_logic;
SIGNAL \PCP2[12]~output_o\ : std_logic;
SIGNAL \PCP2[11]~output_o\ : std_logic;
SIGNAL \PCP2[10]~output_o\ : std_logic;
SIGNAL \PCP2[9]~output_o\ : std_logic;
SIGNAL \PCP2[8]~output_o\ : std_logic;
SIGNAL \PCP2[7]~output_o\ : std_logic;
SIGNAL \PCP2[6]~output_o\ : std_logic;
SIGNAL \PCP2[5]~output_o\ : std_logic;
SIGNAL \PCP2[4]~output_o\ : std_logic;
SIGNAL \PCP2[3]~output_o\ : std_logic;
SIGNAL \PCP2[2]~output_o\ : std_logic;
SIGNAL \PCP2[1]~output_o\ : std_logic;
SIGNAL \PCP2[0]~output_o\ : std_logic;
SIGNAL \OPCODE[3]~input_o\ : std_logic;
SIGNAL \OPCODE[0]~input_o\ : std_logic;
SIGNAL \OPCODE[1]~input_o\ : std_logic;
SIGNAL \OPCODE[2]~input_o\ : std_logic;
SIGNAL \inst6|inst|Mux4~0_combout\ : std_logic;
SIGNAL \inst6|inst|Mux0~0_combout\ : std_logic;
SIGNAL \inst6|inst|Mux6~0_combout\ : std_logic;
SIGNAL \inst6|inst|Mux4~1_combout\ : std_logic;
SIGNAL \inst6|inst|Mux1~0_combout\ : std_logic;
SIGNAL \inst6|inst|Mux8~0_combout\ : std_logic;
SIGNAL \inst6|inst|Mux9~0_combout\ : std_logic;
SIGNAL \CLK~input_o\ : std_logic;
SIGNAL \CLK~inputclkctrl_outclk\ : std_logic;
SIGNAL \RST~input_o\ : std_logic;
SIGNAL \inst6|inst|Mux2~0_combout\ : std_logic;
SIGNAL \inst2|alu0|alu1|adder|C~0_combout\ : std_logic;
SIGNAL \inst2|alu0|alu0|adder|COUT~0_combout\ : std_logic;
SIGNAL \inst2|alu0|alu0|adder|C~0_combout\ : std_logic;
SIGNAL \inst1|INS_OUT[3]~19_combout\ : std_logic;
SIGNAL \inst1|INS_OUT[5]~24_combout\ : std_logic;
SIGNAL \inst2|alu0|alu1|adder|C~2_combout\ : std_logic;
SIGNAL \inst3|add_2|C[2]~1_combout\ : std_logic;
SIGNAL \inst7|OUT16B[6]~6_combout\ : std_logic;
SIGNAL \EN~input_o\ : std_logic;
SIGNAL \inst3|add_2|C[3]~2_combout\ : std_logic;
SIGNAL \inst7|OUT16B[7]~5_combout\ : std_logic;
SIGNAL \inst2|alu0|alu1|adder|C~1_combout\ : std_logic;
SIGNAL \inst3|add_2|C4~0_combout\ : std_logic;
SIGNAL \inst7|OUT16B[8]~4_combout\ : std_logic;
SIGNAL \inst3|add_3|C[1]~0_combout\ : std_logic;
SIGNAL \inst7|OUT16B[9]~3_combout\ : std_logic;
SIGNAL \inst2|alu0|alu2|adder|C~0_combout\ : std_logic;
SIGNAL \inst2|alu0|alu2|adder|C~1_combout\ : std_logic;
SIGNAL \inst3|add_3|C[2]~1_combout\ : std_logic;
SIGNAL \inst7|OUT16B[10]~2_combout\ : std_logic;
SIGNAL \inst3|add_3|C[3]~2_combout\ : std_logic;
SIGNAL \inst7|OUT16B[11]~1_combout\ : std_logic;
SIGNAL \inst2|alu0|alu2|adder|C~2_combout\ : std_logic;
SIGNAL \inst3|add_3|C4~0_combout\ : std_logic;
SIGNAL \inst7|OUT16B[12]~0_combout\ : std_logic;
SIGNAL \inst2|alu0|alu3|adder|C~0_combout\ : std_logic;
SIGNAL \inst3|add_4|C[1]~0_combout\ : std_logic;
SIGNAL \JUMPMUX|OUT16B[13]~2_combout\ : std_logic;
SIGNAL \inst3|add_4|C[2]~3_combout\ : std_logic;
SIGNAL \JUMPMUX|OUT16B[14]~1_combout\ : std_logic;
SIGNAL \inst3|add_4|C[3]~1_combout\ : std_logic;
SIGNAL \inst3|add_4|C[3]~2_combout\ : std_logic;
SIGNAL \JUMPMUX|OUT16B[15]~0_combout\ : std_logic;
SIGNAL \inst1|exception~1_combout\ : std_logic;
SIGNAL \inst1|exception~0_combout\ : std_logic;
SIGNAL \inst1|exception~2_combout\ : std_logic;
SIGNAL \inst1|INS_OUT[3]~25_combout\ : std_logic;
SIGNAL \inst3|add_1|C~0_combout\ : std_logic;
SIGNAL \inst1|data_out[2]~1_combout\ : std_logic;
SIGNAL \inst1|INS_OUT[2]~26_combout\ : std_logic;
SIGNAL \inst3|add_1|C[3]~1_combout\ : std_logic;
SIGNAL \inst3|add_1|C4~0_combout\ : std_logic;
SIGNAL \inst3|add_2|C[1]~0_combout\ : std_logic;
SIGNAL \inst7|OUT16B[5]~7_combout\ : std_logic;
SIGNAL \inst1|dec|en_0~0_combout\ : std_logic;
SIGNAL \inst1|data_out[1]~2_combout\ : std_logic;
SIGNAL \inst1|INS_OUT[1]~20_combout\ : std_logic;
SIGNAL \inst7|OUT16B[2]~10_combout\ : std_logic;
SIGNAL \inst7|OUT16B[3]~9_combout\ : std_logic;
SIGNAL \inst1|data_out[4]~0_combout\ : std_logic;
SIGNAL \inst1|INS_OUT[4]~18_combout\ : std_logic;
SIGNAL \inst7|OUT16B[4]~8_combout\ : std_logic;
SIGNAL \inst1|dec|dcd_0|dcd|Mux7~0_combout\ : std_logic;
SIGNAL \inst1|INS_OUT[8]~22_combout\ : std_logic;
SIGNAL \JUMPMUX|OUT16B[0]~15_combout\ : std_logic;
SIGNAL \JUMPMUX|OUT16B[1]~14_combout\ : std_logic;
SIGNAL \inst1|INS_OUT[3]~21_combout\ : std_logic;
SIGNAL \inst1|INS_OUT[15]~12_combout\ : std_logic;
SIGNAL \inst1|INS_OUT[14]~13_combout\ : std_logic;
SIGNAL \inst1|INS_OUT[13]~14_combout\ : std_logic;
SIGNAL \inst1|dec|dcd_0|dcd|Mux7~1_combout\ : std_logic;
SIGNAL \inst1|INS_OUT[12]~15_combout\ : std_logic;
SIGNAL \inst1|INS_OUT[7]~16_combout\ : std_logic;
SIGNAL \inst1|INS_OUT[6]~17_combout\ : std_logic;
SIGNAL \inst1|INS_OUT[6]~23_combout\ : std_logic;
SIGNAL \JUMPMUX|OUT16B[12]~3_combout\ : std_logic;
SIGNAL \JUMPMUX|OUT16B[11]~4_combout\ : std_logic;
SIGNAL \JUMPMUX|OUT16B[10]~5_combout\ : std_logic;
SIGNAL \JUMPMUX|OUT16B[9]~6_combout\ : std_logic;
SIGNAL \JUMPMUX|OUT16B[8]~7_combout\ : std_logic;
SIGNAL \JUMPMUX|OUT16B[7]~8_combout\ : std_logic;
SIGNAL \JUMPMUX|OUT16B[6]~9_combout\ : std_logic;
SIGNAL \JUMPMUX|OUT16B[5]~10_combout\ : std_logic;
SIGNAL \JUMPMUX|OUT16B[4]~11_combout\ : std_logic;
SIGNAL \JUMPMUX|OUT16B[3]~12_combout\ : std_logic;
SIGNAL \JUMPMUX|OUT16B[2]~13_combout\ : std_logic;
SIGNAL \inst7|OUT16B[1]~11_combout\ : std_logic;
SIGNAL \inst7|OUT16B[0]~12_combout\ : std_logic;
SIGNAL \inst3|add_1|C\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \inst2|alu0|alu0|adder|S\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \inst3|add_1|G\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \inst|reg|reg_2|y\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \inst3|add_1|S\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \inst|reg|reg_1|y\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \inst|to_pc\ : std_logic_vector(15 DOWNTO 0);
SIGNAL \inst2|alu0|alu1|adder|S\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \inst2|alu0|alu3|adder|S\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \inst2|alu0|alu2|adder|S\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \inst7|ALT_INV_OUT16B[1]~11_combout\ : std_logic;
SIGNAL \JUMPMUX|ALT_INV_OUT16B[1]~14_combout\ : std_logic;
SIGNAL \inst|reg|reg_1|ALT_INV_y\ : std_logic_vector(1 DOWNTO 1);
SIGNAL \inst1|ALT_INV_exception~2_combout\ : std_logic;
SIGNAL \inst6|inst|ALT_INV_Mux1~0_combout\ : std_logic;
SIGNAL \inst6|inst|ALT_INV_Mux4~0_combout\ : std_logic;

COMPONENT hard_block
    PORT (
	devoe : IN std_logic;
	devclrn : IN std_logic;
	devpor : IN std_logic);
END COMPONENT;

BEGIN

RegDst <= ww_RegDst;
ww_OPCODE <= OPCODE;
MemRead <= ww_MemRead;
MemtoReg <= ww_MemtoReg;
MemWrite <= ww_MemWrite;
ALUSrc <= ww_ALUSrc;
RegWrite <= ww_RegWrite;
ALUCon <= ww_ALUCon;
ALUOp <= ww_ALUOp;
DOUT <= ww_DOUT;
INSOUT <= ww_INSOUT;
ww_CLK <= CLK;
ww_EN <= EN;
ww_RST <= RST;
JOUT <= ww_JOUT;
JUMPMUX_OUT <= ww_JUMPMUX_OUT;
PCP2 <= ww_PCP2;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

\CLK~inputclkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \CLK~input_o\);
\inst7|ALT_INV_OUT16B[1]~11_combout\ <= NOT \inst7|OUT16B[1]~11_combout\;
\JUMPMUX|ALT_INV_OUT16B[1]~14_combout\ <= NOT \JUMPMUX|OUT16B[1]~14_combout\;
\inst|reg|reg_1|ALT_INV_y\(1) <= NOT \inst|reg|reg_1|y\(1);
\inst1|ALT_INV_exception~2_combout\ <= NOT \inst1|exception~2_combout\;
\inst6|inst|ALT_INV_Mux1~0_combout\ <= NOT \inst6|inst|Mux1~0_combout\;
\inst6|inst|ALT_INV_Mux4~0_combout\ <= NOT \inst6|inst|Mux4~0_combout\;
auto_generated_inst : hard_block
PORT MAP (
	devoe => ww_devoe,
	devclrn => ww_devclrn,
	devpor => ww_devpor);

-- Location: IOOBUF_X115_Y22_N16
\DOUT[15]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "true")
-- pragma translate_on
PORT MAP (
	i => \inst6|inst|ALT_INV_Mux4~0_combout\,
	devoe => ww_devoe,
	o => \DOUT[15]~output_o\);

-- Location: IOOBUF_X115_Y22_N2
\DOUT[14]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "true")
-- pragma translate_on
PORT MAP (
	i => \inst6|inst|ALT_INV_Mux4~0_combout\,
	devoe => ww_devoe,
	o => \DOUT[14]~output_o\);

-- Location: IOOBUF_X115_Y18_N2
\DOUT[13]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "true")
-- pragma translate_on
PORT MAP (
	i => \inst6|inst|ALT_INV_Mux4~0_combout\,
	devoe => ww_devoe,
	o => \DOUT[13]~output_o\);

-- Location: IOOBUF_X87_Y0_N23
\DOUT[12]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "true")
-- pragma translate_on
PORT MAP (
	i => \inst6|inst|ALT_INV_Mux4~0_combout\,
	devoe => ww_devoe,
	o => \DOUT[12]~output_o\);

-- Location: IOOBUF_X115_Y21_N16
\DOUT[11]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "true")
-- pragma translate_on
PORT MAP (
	i => \inst6|inst|ALT_INV_Mux4~0_combout\,
	devoe => ww_devoe,
	o => \DOUT[11]~output_o\);

-- Location: IOOBUF_X115_Y18_N9
\DOUT[10]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "true")
-- pragma translate_on
PORT MAP (
	i => \inst6|inst|ALT_INV_Mux4~0_combout\,
	devoe => ww_devoe,
	o => \DOUT[10]~output_o\);

-- Location: IOOBUF_X115_Y19_N9
\DOUT[9]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "true")
-- pragma translate_on
PORT MAP (
	i => \inst6|inst|ALT_INV_Mux4~0_combout\,
	devoe => ww_devoe,
	o => \DOUT[9]~output_o\);

-- Location: IOOBUF_X115_Y22_N23
\DOUT[8]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "true")
-- pragma translate_on
PORT MAP (
	i => \inst6|inst|ALT_INV_Mux4~0_combout\,
	devoe => ww_devoe,
	o => \DOUT[8]~output_o\);

-- Location: IOOBUF_X115_Y17_N2
\DOUT[7]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "true")
-- pragma translate_on
PORT MAP (
	i => \inst6|inst|ALT_INV_Mux4~0_combout\,
	devoe => ww_devoe,
	o => \DOUT[7]~output_o\);

-- Location: IOOBUF_X115_Y20_N2
\DOUT[6]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "true")
-- pragma translate_on
PORT MAP (
	i => \inst6|inst|ALT_INV_Mux4~0_combout\,
	devoe => ww_devoe,
	o => \DOUT[6]~output_o\);

-- Location: IOOBUF_X115_Y25_N23
\DOUT[5]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "true")
-- pragma translate_on
PORT MAP (
	i => \inst6|inst|ALT_INV_Mux4~0_combout\,
	devoe => ww_devoe,
	o => \DOUT[5]~output_o\);

-- Location: IOOBUF_X115_Y28_N2
\DOUT[4]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "true")
-- pragma translate_on
PORT MAP (
	i => \inst6|inst|ALT_INV_Mux4~0_combout\,
	devoe => ww_devoe,
	o => \DOUT[4]~output_o\);

-- Location: IOOBUF_X115_Y28_N9
\DOUT[3]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "true")
-- pragma translate_on
PORT MAP (
	i => \inst6|inst|ALT_INV_Mux4~0_combout\,
	devoe => ww_devoe,
	o => \DOUT[3]~output_o\);

-- Location: IOOBUF_X115_Y25_N16
\DOUT[2]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "true")
-- pragma translate_on
PORT MAP (
	i => \inst6|inst|ALT_INV_Mux4~0_combout\,
	devoe => ww_devoe,
	o => \DOUT[2]~output_o\);

-- Location: IOOBUF_X115_Y17_N9
\DOUT[1]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "true")
-- pragma translate_on
PORT MAP (
	i => \inst6|inst|ALT_INV_Mux4~0_combout\,
	devoe => ww_devoe,
	o => \DOUT[1]~output_o\);

-- Location: IOOBUF_X87_Y0_N16
\DOUT[0]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "true")
-- pragma translate_on
PORT MAP (
	i => \inst6|inst|ALT_INV_Mux4~0_combout\,
	devoe => ww_devoe,
	o => \DOUT[0]~output_o\);

-- Location: IOOBUF_X85_Y73_N9
\RegDst~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst6|inst|Mux0~0_combout\,
	devoe => ww_devoe,
	o => \RegDst~output_o\);

-- Location: IOOBUF_X115_Y19_N2
\MemRead~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst6|inst|Mux4~0_combout\,
	devoe => ww_devoe,
	o => \MemRead~output_o\);

-- Location: IOOBUF_X115_Y27_N2
\MemtoReg~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst6|inst|Mux4~0_combout\,
	devoe => ww_devoe,
	o => \MemtoReg~output_o\);

-- Location: IOOBUF_X87_Y73_N23
\MemWrite~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst6|inst|Mux6~0_combout\,
	devoe => ww_devoe,
	o => \MemWrite~output_o\);

-- Location: IOOBUF_X85_Y73_N2
\ALUSrc~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst6|inst|Mux4~1_combout\,
	devoe => ww_devoe,
	o => \ALUSrc~output_o\);

-- Location: IOOBUF_X83_Y73_N9
\RegWrite~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst6|inst|ALT_INV_Mux1~0_combout\,
	devoe => ww_devoe,
	o => \RegWrite~output_o\);

-- Location: IOOBUF_X85_Y73_N16
\ALUCon~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst6|inst|Mux8~0_combout\,
	devoe => ww_devoe,
	o => \ALUCon~output_o\);

-- Location: IOOBUF_X89_Y73_N23
\ALUOp[2]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst6|inst|Mux9~0_combout\,
	devoe => ww_devoe,
	o => \ALUOp[2]~output_o\);

-- Location: IOOBUF_X85_Y73_N23
\ALUOp[1]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst6|inst|Mux8~0_combout\,
	devoe => ww_devoe,
	o => \ALUOp[1]~output_o\);

-- Location: IOOBUF_X65_Y0_N2
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

-- Location: IOOBUF_X115_Y61_N16
\INSOUT[15]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst1|INS_OUT[15]~12_combout\,
	devoe => ww_devoe,
	o => \INSOUT[15]~output_o\);

-- Location: IOOBUF_X115_Y50_N2
\INSOUT[14]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst1|INS_OUT[14]~13_combout\,
	devoe => ww_devoe,
	o => \INSOUT[14]~output_o\);

-- Location: IOOBUF_X115_Y36_N16
\INSOUT[13]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst1|INS_OUT[13]~14_combout\,
	devoe => ww_devoe,
	o => \INSOUT[13]~output_o\);

-- Location: IOOBUF_X115_Y46_N2
\INSOUT[12]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst1|INS_OUT[12]~15_combout\,
	devoe => ww_devoe,
	o => \INSOUT[12]~output_o\);

-- Location: IOOBUF_X115_Y36_N2
\INSOUT[11]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst1|INS_OUT[13]~14_combout\,
	devoe => ww_devoe,
	o => \INSOUT[11]~output_o\);

-- Location: IOOBUF_X115_Y41_N2
\INSOUT[10]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst1|INS_OUT[13]~14_combout\,
	devoe => ww_devoe,
	o => \INSOUT[10]~output_o\);

-- Location: IOOBUF_X115_Y61_N23
\INSOUT[9]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst1|ALT_INV_exception~2_combout\,
	devoe => ww_devoe,
	o => \INSOUT[9]~output_o\);

-- Location: IOOBUF_X111_Y73_N9
\INSOUT[8]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst1|INS_OUT[8]~22_combout\,
	devoe => ww_devoe,
	o => \INSOUT[8]~output_o\);

-- Location: IOOBUF_X115_Y50_N9
\INSOUT[7]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst1|INS_OUT[7]~16_combout\,
	devoe => ww_devoe,
	o => \INSOUT[7]~output_o\);

-- Location: IOOBUF_X115_Y47_N23
\INSOUT[6]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst1|INS_OUT[6]~23_combout\,
	devoe => ww_devoe,
	o => \INSOUT[6]~output_o\);

-- Location: IOOBUF_X115_Y57_N23
\INSOUT[5]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst1|INS_OUT[5]~24_combout\,
	devoe => ww_devoe,
	o => \INSOUT[5]~output_o\);

-- Location: IOOBUF_X115_Y55_N16
\INSOUT[4]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst1|INS_OUT[4]~18_combout\,
	devoe => ww_devoe,
	o => \INSOUT[4]~output_o\);

-- Location: IOOBUF_X115_Y58_N16
\INSOUT[3]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst1|INS_OUT[3]~25_combout\,
	devoe => ww_devoe,
	o => \INSOUT[3]~output_o\);

-- Location: IOOBUF_X115_Y56_N23
\INSOUT[2]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst1|INS_OUT[2]~26_combout\,
	devoe => ww_devoe,
	o => \INSOUT[2]~output_o\);

-- Location: IOOBUF_X115_Y64_N2
\INSOUT[1]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst1|INS_OUT[1]~20_combout\,
	devoe => ww_devoe,
	o => \INSOUT[1]~output_o\);

-- Location: IOOBUF_X111_Y73_N2
\INSOUT[0]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst1|INS_OUT[8]~22_combout\,
	devoe => ww_devoe,
	o => \INSOUT[0]~output_o\);

-- Location: IOOBUF_X109_Y73_N9
\JOUT[15]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \JUMPMUX|OUT16B[15]~0_combout\,
	devoe => ww_devoe,
	o => \JOUT[15]~output_o\);

-- Location: IOOBUF_X113_Y73_N2
\JOUT[14]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \JUMPMUX|OUT16B[14]~1_combout\,
	devoe => ww_devoe,
	o => \JOUT[14]~output_o\);

-- Location: IOOBUF_X107_Y73_N9
\JOUT[13]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \JUMPMUX|OUT16B[13]~2_combout\,
	devoe => ww_devoe,
	o => \JOUT[13]~output_o\);

-- Location: IOOBUF_X115_Y68_N23
\JOUT[12]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \JUMPMUX|OUT16B[12]~3_combout\,
	devoe => ww_devoe,
	o => \JOUT[12]~output_o\);

-- Location: IOOBUF_X115_Y68_N16
\JOUT[11]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \JUMPMUX|OUT16B[11]~4_combout\,
	devoe => ww_devoe,
	o => \JOUT[11]~output_o\);

-- Location: IOOBUF_X115_Y69_N2
\JOUT[10]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \JUMPMUX|OUT16B[10]~5_combout\,
	devoe => ww_devoe,
	o => \JOUT[10]~output_o\);

-- Location: IOOBUF_X115_Y45_N16
\JOUT[9]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \JUMPMUX|OUT16B[9]~6_combout\,
	devoe => ww_devoe,
	o => \JOUT[9]~output_o\);

-- Location: IOOBUF_X102_Y73_N2
\JOUT[8]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \JUMPMUX|OUT16B[8]~7_combout\,
	devoe => ww_devoe,
	o => \JOUT[8]~output_o\);

-- Location: IOOBUF_X105_Y73_N9
\JOUT[7]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \JUMPMUX|OUT16B[7]~8_combout\,
	devoe => ww_devoe,
	o => \JOUT[7]~output_o\);

-- Location: IOOBUF_X102_Y73_N9
\JOUT[6]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \JUMPMUX|OUT16B[6]~9_combout\,
	devoe => ww_devoe,
	o => \JOUT[6]~output_o\);

-- Location: IOOBUF_X115_Y63_N9
\JOUT[5]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \JUMPMUX|OUT16B[5]~10_combout\,
	devoe => ww_devoe,
	o => \JOUT[5]~output_o\);

-- Location: IOOBUF_X115_Y63_N2
\JOUT[4]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \JUMPMUX|OUT16B[4]~11_combout\,
	devoe => ww_devoe,
	o => \JOUT[4]~output_o\);

-- Location: IOOBUF_X115_Y65_N23
\JOUT[3]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \JUMPMUX|OUT16B[3]~12_combout\,
	devoe => ww_devoe,
	o => \JOUT[3]~output_o\);

-- Location: IOOBUF_X115_Y69_N23
\JOUT[2]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \JUMPMUX|OUT16B[2]~13_combout\,
	devoe => ww_devoe,
	o => \JOUT[2]~output_o\);

-- Location: IOOBUF_X115_Y51_N9
\JOUT[1]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \JUMPMUX|ALT_INV_OUT16B[1]~14_combout\,
	devoe => ww_devoe,
	o => \JOUT[1]~output_o\);

-- Location: IOOBUF_X115_Y62_N16
\JOUT[0]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \JUMPMUX|OUT16B[0]~15_combout\,
	devoe => ww_devoe,
	o => \JOUT[0]~output_o\);

-- Location: IOOBUF_X109_Y73_N2
\JUMPMUX_OUT[15]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \JUMPMUX|OUT16B[15]~0_combout\,
	devoe => ww_devoe,
	o => \JUMPMUX_OUT[15]~output_o\);

-- Location: IOOBUF_X113_Y73_N9
\JUMPMUX_OUT[14]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \JUMPMUX|OUT16B[14]~1_combout\,
	devoe => ww_devoe,
	o => \JUMPMUX_OUT[14]~output_o\);

-- Location: IOOBUF_X107_Y73_N2
\JUMPMUX_OUT[13]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \JUMPMUX|OUT16B[13]~2_combout\,
	devoe => ww_devoe,
	o => \JUMPMUX_OUT[13]~output_o\);

-- Location: IOOBUF_X115_Y69_N16
\JUMPMUX_OUT[12]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst7|OUT16B[12]~0_combout\,
	devoe => ww_devoe,
	o => \JUMPMUX_OUT[12]~output_o\);

-- Location: IOOBUF_X115_Y67_N16
\JUMPMUX_OUT[11]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst7|OUT16B[11]~1_combout\,
	devoe => ww_devoe,
	o => \JUMPMUX_OUT[11]~output_o\);

-- Location: IOOBUF_X115_Y65_N16
\JUMPMUX_OUT[10]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst7|OUT16B[10]~2_combout\,
	devoe => ww_devoe,
	o => \JUMPMUX_OUT[10]~output_o\);

-- Location: IOOBUF_X115_Y45_N23
\JUMPMUX_OUT[9]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst7|OUT16B[9]~3_combout\,
	devoe => ww_devoe,
	o => \JUMPMUX_OUT[9]~output_o\);

-- Location: IOOBUF_X115_Y49_N2
\JUMPMUX_OUT[8]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst7|OUT16B[8]~4_combout\,
	devoe => ww_devoe,
	o => \JUMPMUX_OUT[8]~output_o\);

-- Location: IOOBUF_X105_Y73_N2
\JUMPMUX_OUT[7]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst7|OUT16B[7]~5_combout\,
	devoe => ww_devoe,
	o => \JUMPMUX_OUT[7]~output_o\);

-- Location: IOOBUF_X115_Y49_N9
\JUMPMUX_OUT[6]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst7|OUT16B[6]~6_combout\,
	devoe => ww_devoe,
	o => \JUMPMUX_OUT[6]~output_o\);

-- Location: IOOBUF_X115_Y60_N16
\JUMPMUX_OUT[5]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst7|OUT16B[5]~7_combout\,
	devoe => ww_devoe,
	o => \JUMPMUX_OUT[5]~output_o\);

-- Location: IOOBUF_X115_Y59_N16
\JUMPMUX_OUT[4]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst7|OUT16B[4]~8_combout\,
	devoe => ww_devoe,
	o => \JUMPMUX_OUT[4]~output_o\);

-- Location: IOOBUF_X115_Y62_N23
\JUMPMUX_OUT[3]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst7|OUT16B[3]~9_combout\,
	devoe => ww_devoe,
	o => \JUMPMUX_OUT[3]~output_o\);

-- Location: IOOBUF_X115_Y64_N9
\JUMPMUX_OUT[2]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst7|OUT16B[2]~10_combout\,
	devoe => ww_devoe,
	o => \JUMPMUX_OUT[2]~output_o\);

-- Location: IOOBUF_X115_Y54_N16
\JUMPMUX_OUT[1]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst7|ALT_INV_OUT16B[1]~11_combout\,
	devoe => ww_devoe,
	o => \JUMPMUX_OUT[1]~output_o\);

-- Location: IOOBUF_X115_Y66_N16
\JUMPMUX_OUT[0]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst7|OUT16B[0]~12_combout\,
	devoe => ww_devoe,
	o => \JUMPMUX_OUT[0]~output_o\);

-- Location: IOOBUF_X115_Y66_N23
\PCP2[15]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst2|alu0|alu3|adder|S\(3),
	devoe => ww_devoe,
	o => \PCP2[15]~output_o\);

-- Location: IOOBUF_X115_Y44_N9
\PCP2[14]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst2|alu0|alu3|adder|S\(2),
	devoe => ww_devoe,
	o => \PCP2[14]~output_o\);

-- Location: IOOBUF_X107_Y73_N23
\PCP2[13]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst2|alu0|alu3|adder|S\(1),
	devoe => ww_devoe,
	o => \PCP2[13]~output_o\);

-- Location: IOOBUF_X115_Y52_N2
\PCP2[12]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst2|alu0|alu3|adder|S\(0),
	devoe => ww_devoe,
	o => \PCP2[12]~output_o\);

-- Location: IOOBUF_X115_Y52_N9
\PCP2[11]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst2|alu0|alu2|adder|S\(3),
	devoe => ww_devoe,
	o => \PCP2[11]~output_o\);

-- Location: IOOBUF_X115_Y48_N2
\PCP2[10]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst2|alu0|alu2|adder|S\(2),
	devoe => ww_devoe,
	o => \PCP2[10]~output_o\);

-- Location: IOOBUF_X107_Y73_N16
\PCP2[9]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst2|alu0|alu2|adder|S\(1),
	devoe => ww_devoe,
	o => \PCP2[9]~output_o\);

-- Location: IOOBUF_X115_Y51_N2
\PCP2[8]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst2|alu0|alu2|adder|S\(0),
	devoe => ww_devoe,
	o => \PCP2[8]~output_o\);

-- Location: IOOBUF_X115_Y53_N16
\PCP2[7]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst2|alu0|alu1|adder|S\(3),
	devoe => ww_devoe,
	o => \PCP2[7]~output_o\);

-- Location: IOOBUF_X115_Y48_N9
\PCP2[6]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst2|alu0|alu1|adder|S\(2),
	devoe => ww_devoe,
	o => \PCP2[6]~output_o\);

-- Location: IOOBUF_X115_Y46_N9
\PCP2[5]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst2|alu0|alu1|adder|S\(1),
	devoe => ww_devoe,
	o => \PCP2[5]~output_o\);

-- Location: IOOBUF_X115_Y47_N16
\PCP2[4]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst2|alu0|alu1|adder|S\(0),
	devoe => ww_devoe,
	o => \PCP2[4]~output_o\);

-- Location: IOOBUF_X115_Y62_N9
\PCP2[3]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst2|alu0|alu0|adder|S\(3),
	devoe => ww_devoe,
	o => \PCP2[3]~output_o\);

-- Location: IOOBUF_X115_Y58_N23
\PCP2[2]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst2|alu0|alu0|adder|S\(2),
	devoe => ww_devoe,
	o => \PCP2[2]~output_o\);

-- Location: IOOBUF_X115_Y59_N23
\PCP2[1]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst|reg|reg_1|ALT_INV_y\(1),
	devoe => ww_devoe,
	o => \PCP2[1]~output_o\);

-- Location: IOOBUF_X115_Y55_N23
\PCP2[0]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst|reg|reg_1|y\(0),
	devoe => ww_devoe,
	o => \PCP2[0]~output_o\);

-- Location: IOIBUF_X87_Y73_N8
\OPCODE[3]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_OPCODE(3),
	o => \OPCODE[3]~input_o\);

-- Location: IOIBUF_X87_Y73_N1
\OPCODE[0]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_OPCODE(0),
	o => \OPCODE[0]~input_o\);

-- Location: IOIBUF_X83_Y73_N22
\OPCODE[1]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_OPCODE(1),
	o => \OPCODE[1]~input_o\);

-- Location: IOIBUF_X87_Y73_N15
\OPCODE[2]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_OPCODE(2),
	o => \OPCODE[2]~input_o\);

-- Location: LCCOMB_X87_Y72_N18
\inst6|inst|Mux4~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst6|inst|Mux4~0_combout\ = (\OPCODE[3]~input_o\ & (\OPCODE[0]~input_o\ & (\OPCODE[1]~input_o\ & !\OPCODE[2]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \OPCODE[3]~input_o\,
	datab => \OPCODE[0]~input_o\,
	datac => \OPCODE[1]~input_o\,
	datad => \OPCODE[2]~input_o\,
	combout => \inst6|inst|Mux4~0_combout\);

-- Location: LCCOMB_X87_Y72_N0
\inst6|inst|Mux0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst6|inst|Mux0~0_combout\ = (!\OPCODE[3]~input_o\ & (!\OPCODE[0]~input_o\ & (!\OPCODE[1]~input_o\ & !\OPCODE[2]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \OPCODE[3]~input_o\,
	datab => \OPCODE[0]~input_o\,
	datac => \OPCODE[1]~input_o\,
	datad => \OPCODE[2]~input_o\,
	combout => \inst6|inst|Mux0~0_combout\);

-- Location: LCCOMB_X87_Y72_N4
\inst6|inst|Mux6~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst6|inst|Mux6~0_combout\ = (\OPCODE[3]~input_o\ & (\OPCODE[0]~input_o\ & (\OPCODE[1]~input_o\ & \OPCODE[2]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \OPCODE[3]~input_o\,
	datab => \OPCODE[0]~input_o\,
	datac => \OPCODE[1]~input_o\,
	datad => \OPCODE[2]~input_o\,
	combout => \inst6|inst|Mux6~0_combout\);

-- Location: LCCOMB_X87_Y72_N2
\inst6|inst|Mux4~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst6|inst|Mux4~1_combout\ = (\OPCODE[0]~input_o\ & (\OPCODE[1]~input_o\ & \OPCODE[3]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \OPCODE[0]~input_o\,
	datac => \OPCODE[1]~input_o\,
	datad => \OPCODE[3]~input_o\,
	combout => \inst6|inst|Mux4~1_combout\);

-- Location: LCCOMB_X87_Y72_N24
\inst6|inst|Mux1~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst6|inst|Mux1~0_combout\ = (\OPCODE[2]~input_o\) # ((\OPCODE[3]~input_o\ & ((!\OPCODE[1]~input_o\) # (!\OPCODE[0]~input_o\))) # (!\OPCODE[3]~input_o\ & ((\OPCODE[0]~input_o\) # (\OPCODE[1]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111101111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \OPCODE[3]~input_o\,
	datab => \OPCODE[0]~input_o\,
	datac => \OPCODE[1]~input_o\,
	datad => \OPCODE[2]~input_o\,
	combout => \inst6|inst|Mux1~0_combout\);

-- Location: LCCOMB_X87_Y72_N22
\inst6|inst|Mux8~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst6|inst|Mux8~0_combout\ = (\OPCODE[3]~input_o\ & (\OPCODE[0]~input_o\ & (\OPCODE[1]~input_o\))) # (!\OPCODE[3]~input_o\ & (!\OPCODE[0]~input_o\ & (!\OPCODE[1]~input_o\ & \OPCODE[2]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000110000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \OPCODE[3]~input_o\,
	datab => \OPCODE[0]~input_o\,
	datac => \OPCODE[1]~input_o\,
	datad => \OPCODE[2]~input_o\,
	combout => \inst6|inst|Mux8~0_combout\);

-- Location: LCCOMB_X87_Y72_N12
\inst6|inst|Mux9~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst6|inst|Mux9~0_combout\ = (!\OPCODE[3]~input_o\ & (!\OPCODE[0]~input_o\ & (!\OPCODE[1]~input_o\ & \OPCODE[2]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \OPCODE[3]~input_o\,
	datab => \OPCODE[0]~input_o\,
	datac => \OPCODE[1]~input_o\,
	datad => \OPCODE[2]~input_o\,
	combout => \inst6|inst|Mux9~0_combout\);

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

-- Location: IOIBUF_X115_Y57_N15
\RST~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_RST,
	o => \RST~input_o\);

-- Location: LCCOMB_X87_Y72_N30
\inst6|inst|Mux2~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst6|inst|Mux2~0_combout\ = (!\OPCODE[3]~input_o\ & (!\OPCODE[0]~input_o\ & (\OPCODE[1]~input_o\ & !\OPCODE[2]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \OPCODE[3]~input_o\,
	datab => \OPCODE[0]~input_o\,
	datac => \OPCODE[1]~input_o\,
	datad => \OPCODE[2]~input_o\,
	combout => \inst6|inst|Mux2~0_combout\);

-- Location: LCCOMB_X110_Y58_N18
\inst2|alu0|alu0|adder|S[2]\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|alu0|alu0|adder|S\(2) = \inst|reg|reg_1|y\(1) $ (\inst|reg|reg_1|y\(2))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst|reg|reg_1|y\(1),
	datad => \inst|reg|reg_1|y\(2),
	combout => \inst2|alu0|alu0|adder|S\(2));

-- Location: LCCOMB_X110_Y58_N24
\inst2|alu0|alu1|adder|C~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|alu0|alu1|adder|C~0_combout\ = (\inst|reg|reg_1|y\(1) & (\inst|reg|reg_1|y\(4) & (\inst|reg|reg_1|y\(2) & \inst|reg|reg_1|y\(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|reg|reg_1|y\(1),
	datab => \inst|reg|reg_1|y\(4),
	datac => \inst|reg|reg_1|y\(2),
	datad => \inst|reg|reg_1|y\(3),
	combout => \inst2|alu0|alu1|adder|C~0_combout\);

-- Location: LCCOMB_X111_Y58_N28
\inst2|alu0|alu1|adder|S[1]\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|alu0|alu1|adder|S\(1) = \inst|reg|reg_1|y\(5) $ (\inst2|alu0|alu1|adder|C~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst|reg|reg_1|y\(5),
	datad => \inst2|alu0|alu1|adder|C~0_combout\,
	combout => \inst2|alu0|alu1|adder|S\(1));

-- Location: LCCOMB_X111_Y58_N12
\inst2|alu0|alu0|adder|COUT~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|alu0|alu0|adder|COUT~0_combout\ = (\inst|reg|reg_1|y\(1) & (\inst|reg|reg_1|y\(3) & \inst|reg|reg_1|y\(2)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst|reg|reg_1|y\(1),
	datac => \inst|reg|reg_1|y\(3),
	datad => \inst|reg|reg_1|y\(2),
	combout => \inst2|alu0|alu0|adder|COUT~0_combout\);

-- Location: LCCOMB_X110_Y58_N0
\inst2|alu0|alu0|adder|C~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|alu0|alu0|adder|C~0_combout\ = (\inst|reg|reg_1|y\(1) & \inst|reg|reg_1|y\(2))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst|reg|reg_1|y\(1),
	datad => \inst|reg|reg_1|y\(2),
	combout => \inst2|alu0|alu0|adder|C~0_combout\);

-- Location: LCCOMB_X110_Y58_N26
\inst1|INS_OUT[3]~19\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|INS_OUT[3]~19_combout\ = (!\inst|reg|reg_1|y\(1) & (\inst|reg|reg_1|y\(3) $ (\inst|reg|reg_1|y\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010100001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|reg|reg_1|y\(3),
	datac => \inst|reg|reg_1|y\(1),
	datad => \inst|reg|reg_1|y\(2),
	combout => \inst1|INS_OUT[3]~19_combout\);

-- Location: LCCOMB_X111_Y58_N20
\inst1|INS_OUT[5]~24\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|INS_OUT[5]~24_combout\ = (!\inst1|exception~2_combout\ & ((\inst|reg|reg_1|y\(5)) # ((\inst|reg|reg_1|y\(3)) # (\inst|reg|reg_1|y\(4)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|reg|reg_1|y\(5),
	datab => \inst|reg|reg_1|y\(3),
	datac => \inst|reg|reg_1|y\(4),
	datad => \inst1|exception~2_combout\,
	combout => \inst1|INS_OUT[5]~24_combout\);

-- Location: LCCOMB_X111_Y58_N26
\inst2|alu0|alu1|adder|C~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|alu0|alu1|adder|C~2_combout\ = (\inst|reg|reg_1|y\(5) & (\inst|reg|reg_1|y\(4) & \inst2|alu0|alu0|adder|COUT~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst|reg|reg_1|y\(5),
	datac => \inst|reg|reg_1|y\(4),
	datad => \inst2|alu0|alu0|adder|COUT~0_combout\,
	combout => \inst2|alu0|alu1|adder|C~2_combout\);

-- Location: LCCOMB_X109_Y58_N20
\inst3|add_2|C[2]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|add_2|C[2]~1_combout\ = (\inst1|INS_OUT[5]~24_combout\ & ((\inst3|add_2|C[1]~0_combout\) # (\inst2|alu0|alu1|adder|C~0_combout\ $ (\inst|reg|reg_1|y\(5))))) # (!\inst1|INS_OUT[5]~24_combout\ & (\inst3|add_2|C[1]~0_combout\ & 
-- (\inst2|alu0|alu1|adder|C~0_combout\ $ (\inst|reg|reg_1|y\(5)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111011001100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|alu0|alu1|adder|C~0_combout\,
	datab => \inst|reg|reg_1|y\(5),
	datac => \inst1|INS_OUT[5]~24_combout\,
	datad => \inst3|add_2|C[1]~0_combout\,
	combout => \inst3|add_2|C[2]~1_combout\);

-- Location: LCCOMB_X106_Y58_N12
\inst2|alu0|alu1|adder|S[2]\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|alu0|alu1|adder|S\(2) = \inst|reg|reg_1|y\(6) $ (((\inst|reg|reg_1|y\(5) & \inst2|alu0|alu1|adder|C~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst|reg|reg_1|y\(5),
	datac => \inst|reg|reg_1|y\(6),
	datad => \inst2|alu0|alu1|adder|C~0_combout\,
	combout => \inst2|alu0|alu1|adder|S\(2));

-- Location: LCCOMB_X107_Y58_N10
\inst7|OUT16B[6]~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst7|OUT16B[6]~6_combout\ = \inst2|alu0|alu1|adder|S\(2) $ (((\inst6|inst|Mux9~0_combout\ & (\inst1|INS_OUT[5]~24_combout\ $ (\inst3|add_2|C[2]~1_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101011100101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst6|inst|Mux9~0_combout\,
	datab => \inst1|INS_OUT[5]~24_combout\,
	datac => \inst3|add_2|C[2]~1_combout\,
	datad => \inst2|alu0|alu1|adder|S\(2),
	combout => \inst7|OUT16B[6]~6_combout\);

-- Location: LCCOMB_X107_Y58_N0
\inst|to_pc[6]\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|to_pc\(6) = (!\RST~input_o\ & (!\inst6|inst|Mux2~0_combout\ & \inst7|OUT16B[6]~6_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \RST~input_o\,
	datac => \inst6|inst|Mux2~0_combout\,
	datad => \inst7|OUT16B[6]~6_combout\,
	combout => \inst|to_pc\(6));

-- Location: IOIBUF_X115_Y56_N15
\EN~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_EN,
	o => \EN~input_o\);

-- Location: FF_X107_Y58_N1
\inst|reg|reg_1|y[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \inst|to_pc\(6),
	ena => \EN~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|reg|reg_1|y\(6));

-- Location: LCCOMB_X109_Y58_N10
\inst3|add_2|C[3]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|add_2|C[3]~2_combout\ = (\inst1|INS_OUT[5]~24_combout\ & ((\inst3|add_2|C[2]~1_combout\) # (\inst2|alu0|alu1|adder|C~2_combout\ $ (\inst|reg|reg_1|y\(6))))) # (!\inst1|INS_OUT[5]~24_combout\ & (\inst3|add_2|C[2]~1_combout\ & 
-- (\inst2|alu0|alu1|adder|C~2_combout\ $ (\inst|reg|reg_1|y\(6)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111011001100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|alu0|alu1|adder|C~2_combout\,
	datab => \inst|reg|reg_1|y\(6),
	datac => \inst1|INS_OUT[5]~24_combout\,
	datad => \inst3|add_2|C[2]~1_combout\,
	combout => \inst3|add_2|C[3]~2_combout\);

-- Location: LCCOMB_X107_Y58_N16
\inst7|OUT16B[7]~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst7|OUT16B[7]~5_combout\ = \inst2|alu0|alu1|adder|S\(3) $ (((\inst6|inst|Mux9~0_combout\ & (\inst1|INS_OUT[5]~24_combout\ $ (\inst3|add_2|C[3]~2_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001110001101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|INS_OUT[5]~24_combout\,
	datab => \inst2|alu0|alu1|adder|S\(3),
	datac => \inst6|inst|Mux9~0_combout\,
	datad => \inst3|add_2|C[3]~2_combout\,
	combout => \inst7|OUT16B[7]~5_combout\);

-- Location: LCCOMB_X107_Y58_N22
\inst|to_pc[7]\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|to_pc\(7) = (!\RST~input_o\ & (!\inst6|inst|Mux2~0_combout\ & \inst7|OUT16B[7]~5_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \RST~input_o\,
	datac => \inst6|inst|Mux2~0_combout\,
	datad => \inst7|OUT16B[7]~5_combout\,
	combout => \inst|to_pc\(7));

-- Location: FF_X107_Y58_N23
\inst|reg|reg_1|y[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \inst|to_pc\(7),
	ena => \EN~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|reg|reg_1|y\(7));

-- Location: LCCOMB_X106_Y58_N18
\inst2|alu0|alu1|adder|S[3]\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|alu0|alu1|adder|S\(3) = \inst|reg|reg_1|y\(7) $ (((\inst|reg|reg_1|y\(6) & (\inst|reg|reg_1|y\(5) & \inst2|alu0|alu1|adder|C~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110101010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|reg|reg_1|y\(7),
	datab => \inst|reg|reg_1|y\(6),
	datac => \inst|reg|reg_1|y\(5),
	datad => \inst2|alu0|alu1|adder|C~0_combout\,
	combout => \inst2|alu0|alu1|adder|S\(3));

-- Location: LCCOMB_X106_Y58_N20
\inst2|alu0|alu1|adder|C~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|alu0|alu1|adder|C~1_combout\ = (\inst|reg|reg_1|y\(6) & (\inst|reg|reg_1|y\(5) & \inst2|alu0|alu1|adder|C~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst|reg|reg_1|y\(6),
	datac => \inst|reg|reg_1|y\(5),
	datad => \inst2|alu0|alu1|adder|C~0_combout\,
	combout => \inst2|alu0|alu1|adder|C~1_combout\);

-- Location: LCCOMB_X107_Y58_N20
\inst3|add_2|C4~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|add_2|C4~0_combout\ = (\inst1|INS_OUT[5]~24_combout\ & ((\inst3|add_2|C[3]~2_combout\) # (\inst2|alu0|alu1|adder|C~1_combout\ $ (\inst|reg|reg_1|y\(7))))) # (!\inst1|INS_OUT[5]~24_combout\ & (\inst3|add_2|C[3]~2_combout\ & 
-- (\inst2|alu0|alu1|adder|C~1_combout\ $ (\inst|reg|reg_1|y\(7)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111011001100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|alu0|alu1|adder|C~1_combout\,
	datab => \inst|reg|reg_1|y\(7),
	datac => \inst1|INS_OUT[5]~24_combout\,
	datad => \inst3|add_2|C[3]~2_combout\,
	combout => \inst3|add_2|C4~0_combout\);

-- Location: LCCOMB_X107_Y58_N6
\inst7|OUT16B[8]~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst7|OUT16B[8]~4_combout\ = \inst2|alu0|alu2|adder|S\(0) $ (((\inst6|inst|Mux9~0_combout\ & (\inst1|INS_OUT[5]~24_combout\ $ (\inst3|add_2|C4~0_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001110001101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|INS_OUT[5]~24_combout\,
	datab => \inst2|alu0|alu2|adder|S\(0),
	datac => \inst6|inst|Mux9~0_combout\,
	datad => \inst3|add_2|C4~0_combout\,
	combout => \inst7|OUT16B[8]~4_combout\);

-- Location: LCCOMB_X107_Y58_N24
\inst|to_pc[8]\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|to_pc\(8) = (!\RST~input_o\ & (!\inst6|inst|Mux2~0_combout\ & \inst7|OUT16B[8]~4_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \RST~input_o\,
	datac => \inst6|inst|Mux2~0_combout\,
	datad => \inst7|OUT16B[8]~4_combout\,
	combout => \inst|to_pc\(8));

-- Location: FF_X107_Y58_N25
\inst|reg|reg_2|y[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \inst|to_pc\(8),
	ena => \EN~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|reg|reg_2|y\(0));

-- Location: LCCOMB_X107_Y58_N26
\inst2|alu0|alu2|adder|S[0]\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|alu0|alu2|adder|S\(0) = \inst|reg|reg_2|y\(0) $ (((\inst|reg|reg_1|y\(6) & (\inst|reg|reg_1|y\(7) & \inst2|alu0|alu1|adder|C~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111111110000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|reg|reg_1|y\(6),
	datab => \inst|reg|reg_1|y\(7),
	datac => \inst2|alu0|alu1|adder|C~2_combout\,
	datad => \inst|reg|reg_2|y\(0),
	combout => \inst2|alu0|alu2|adder|S\(0));

-- Location: LCCOMB_X109_Y58_N0
\inst3|add_3|C[1]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|add_3|C[1]~0_combout\ = (\inst2|alu0|alu1|adder|S\(3) & ((\inst1|INS_OUT[5]~24_combout\) # ((\inst2|alu0|alu2|adder|S\(0) & \inst3|add_2|C[3]~2_combout\)))) # (!\inst2|alu0|alu1|adder|S\(3) & (\inst1|INS_OUT[5]~24_combout\ & 
-- ((\inst2|alu0|alu2|adder|S\(0)) # (\inst3|add_2|C[3]~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100011100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|alu0|alu1|adder|S\(3),
	datab => \inst2|alu0|alu2|adder|S\(0),
	datac => \inst1|INS_OUT[5]~24_combout\,
	datad => \inst3|add_2|C[3]~2_combout\,
	combout => \inst3|add_3|C[1]~0_combout\);

-- Location: LCCOMB_X106_Y58_N8
\inst2|alu0|alu2|adder|S[1]\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|alu0|alu2|adder|S\(1) = \inst|reg|reg_2|y\(1) $ (((\inst|reg|reg_1|y\(7) & (\inst|reg|reg_2|y\(0) & \inst2|alu0|alu1|adder|C~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111100011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|reg|reg_1|y\(7),
	datab => \inst|reg|reg_2|y\(0),
	datac => \inst|reg|reg_2|y\(1),
	datad => \inst2|alu0|alu1|adder|C~1_combout\,
	combout => \inst2|alu0|alu2|adder|S\(1));

-- Location: LCCOMB_X107_Y58_N12
\inst7|OUT16B[9]~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst7|OUT16B[9]~3_combout\ = \inst2|alu0|alu2|adder|S\(1) $ (((\inst6|inst|Mux9~0_combout\ & (\inst3|add_3|C[1]~0_combout\ $ (\inst1|INS_OUT[5]~24_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101011100101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst6|inst|Mux9~0_combout\,
	datab => \inst3|add_3|C[1]~0_combout\,
	datac => \inst1|INS_OUT[5]~24_combout\,
	datad => \inst2|alu0|alu2|adder|S\(1),
	combout => \inst7|OUT16B[9]~3_combout\);

-- Location: LCCOMB_X107_Y58_N30
\inst|to_pc[9]\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|to_pc\(9) = (!\RST~input_o\ & (!\inst6|inst|Mux2~0_combout\ & \inst7|OUT16B[9]~3_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \RST~input_o\,
	datac => \inst6|inst|Mux2~0_combout\,
	datad => \inst7|OUT16B[9]~3_combout\,
	combout => \inst|to_pc\(9));

-- Location: FF_X107_Y58_N31
\inst|reg|reg_2|y[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \inst|to_pc\(9),
	ena => \EN~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|reg|reg_2|y\(1));

-- Location: LCCOMB_X106_Y58_N14
\inst2|alu0|alu2|adder|C~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|alu0|alu2|adder|C~0_combout\ = (\inst|reg|reg_2|y\(1) & (\inst|reg|reg_2|y\(0) & (\inst|reg|reg_1|y\(7) & \inst2|alu0|alu1|adder|C~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|reg|reg_2|y\(1),
	datab => \inst|reg|reg_2|y\(0),
	datac => \inst|reg|reg_1|y\(7),
	datad => \inst2|alu0|alu1|adder|C~1_combout\,
	combout => \inst2|alu0|alu2|adder|C~0_combout\);

-- Location: LCCOMB_X106_Y58_N2
\inst2|alu0|alu2|adder|S[2]\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|alu0|alu2|adder|S\(2) = \inst|reg|reg_2|y\(2) $ (\inst2|alu0|alu2|adder|C~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst|reg|reg_2|y\(2),
	datad => \inst2|alu0|alu2|adder|C~0_combout\,
	combout => \inst2|alu0|alu2|adder|S\(2));

-- Location: LCCOMB_X106_Y58_N28
\inst2|alu0|alu2|adder|C~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|alu0|alu2|adder|C~1_combout\ = (\inst2|alu0|alu1|adder|C~2_combout\ & (\inst|reg|reg_1|y\(7) & (\inst|reg|reg_1|y\(6) & \inst|reg|reg_2|y\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|alu0|alu1|adder|C~2_combout\,
	datab => \inst|reg|reg_1|y\(7),
	datac => \inst|reg|reg_1|y\(6),
	datad => \inst|reg|reg_2|y\(0),
	combout => \inst2|alu0|alu2|adder|C~1_combout\);

-- Location: LCCOMB_X109_Y58_N2
\inst3|add_3|C[2]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|add_3|C[2]~1_combout\ = (\inst1|INS_OUT[5]~24_combout\ & ((\inst3|add_3|C[1]~0_combout\) # (\inst|reg|reg_2|y\(1) $ (\inst2|alu0|alu2|adder|C~1_combout\)))) # (!\inst1|INS_OUT[5]~24_combout\ & (\inst3|add_3|C[1]~0_combout\ & (\inst|reg|reg_2|y\(1) 
-- $ (\inst2|alu0|alu2|adder|C~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011111000101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|INS_OUT[5]~24_combout\,
	datab => \inst|reg|reg_2|y\(1),
	datac => \inst2|alu0|alu2|adder|C~1_combout\,
	datad => \inst3|add_3|C[1]~0_combout\,
	combout => \inst3|add_3|C[2]~1_combout\);

-- Location: LCCOMB_X108_Y58_N26
\inst7|OUT16B[10]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst7|OUT16B[10]~2_combout\ = \inst2|alu0|alu2|adder|S\(2) $ (((\inst6|inst|Mux9~0_combout\ & (\inst1|INS_OUT[5]~24_combout\ $ (\inst3|add_3|C[2]~1_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001110001101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|INS_OUT[5]~24_combout\,
	datab => \inst2|alu0|alu2|adder|S\(2),
	datac => \inst6|inst|Mux9~0_combout\,
	datad => \inst3|add_3|C[2]~1_combout\,
	combout => \inst7|OUT16B[10]~2_combout\);

-- Location: LCCOMB_X108_Y58_N8
\inst|to_pc[10]\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|to_pc\(10) = (!\RST~input_o\ & (\inst7|OUT16B[10]~2_combout\ & !\inst6|inst|Mux2~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \RST~input_o\,
	datac => \inst7|OUT16B[10]~2_combout\,
	datad => \inst6|inst|Mux2~0_combout\,
	combout => \inst|to_pc\(10));

-- Location: FF_X108_Y58_N9
\inst|reg|reg_2|y[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \inst|to_pc\(10),
	ena => \EN~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|reg|reg_2|y\(2));

-- Location: LCCOMB_X107_Y58_N4
\inst2|alu0|alu2|adder|S[3]\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|alu0|alu2|adder|S\(3) = \inst|reg|reg_2|y\(3) $ (((\inst|reg|reg_2|y\(2) & \inst2|alu0|alu2|adder|C~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|reg|reg_2|y\(3),
	datac => \inst|reg|reg_2|y\(2),
	datad => \inst2|alu0|alu2|adder|C~0_combout\,
	combout => \inst2|alu0|alu2|adder|S\(3));

-- Location: LCCOMB_X109_Y58_N28
\inst3|add_3|C[3]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|add_3|C[3]~2_combout\ = (\inst1|INS_OUT[5]~24_combout\ & ((\inst3|add_3|C[2]~1_combout\) # (\inst|reg|reg_2|y\(2) $ (\inst2|alu0|alu2|adder|C~0_combout\)))) # (!\inst1|INS_OUT[5]~24_combout\ & (\inst3|add_3|C[2]~1_combout\ & (\inst|reg|reg_2|y\(2) 
-- $ (\inst2|alu0|alu2|adder|C~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111011001100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|reg|reg_2|y\(2),
	datab => \inst2|alu0|alu2|adder|C~0_combout\,
	datac => \inst1|INS_OUT[5]~24_combout\,
	datad => \inst3|add_3|C[2]~1_combout\,
	combout => \inst3|add_3|C[3]~2_combout\);

-- Location: LCCOMB_X108_Y58_N24
\inst7|OUT16B[11]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst7|OUT16B[11]~1_combout\ = \inst2|alu0|alu2|adder|S\(3) $ (((\inst6|inst|Mux9~0_combout\ & (\inst1|INS_OUT[5]~24_combout\ $ (\inst3|add_3|C[3]~2_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011010001111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|INS_OUT[5]~24_combout\,
	datab => \inst6|inst|Mux9~0_combout\,
	datac => \inst2|alu0|alu2|adder|S\(3),
	datad => \inst3|add_3|C[3]~2_combout\,
	combout => \inst7|OUT16B[11]~1_combout\);

-- Location: LCCOMB_X108_Y58_N6
\inst|to_pc[11]\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|to_pc\(11) = (!\RST~input_o\ & (!\inst6|inst|Mux2~0_combout\ & \inst7|OUT16B[11]~1_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \RST~input_o\,
	datac => \inst6|inst|Mux2~0_combout\,
	datad => \inst7|OUT16B[11]~1_combout\,
	combout => \inst|to_pc\(11));

-- Location: FF_X108_Y58_N7
\inst|reg|reg_2|y[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \inst|to_pc\(11),
	ena => \EN~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|reg|reg_2|y\(3));

-- Location: LCCOMB_X106_Y58_N24
\inst2|alu0|alu2|adder|C~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|alu0|alu2|adder|C~2_combout\ = (\inst|reg|reg_2|y\(1) & (\inst|reg|reg_2|y\(2) & \inst2|alu0|alu2|adder|C~1_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|reg|reg_2|y\(1),
	datac => \inst|reg|reg_2|y\(2),
	datad => \inst2|alu0|alu2|adder|C~1_combout\,
	combout => \inst2|alu0|alu2|adder|C~2_combout\);

-- Location: LCCOMB_X109_Y58_N14
\inst3|add_3|C4~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|add_3|C4~0_combout\ = (\inst1|INS_OUT[5]~24_combout\ & ((\inst3|add_3|C[3]~2_combout\) # (\inst2|alu0|alu2|adder|C~2_combout\ $ (\inst|reg|reg_2|y\(3))))) # (!\inst1|INS_OUT[5]~24_combout\ & (\inst3|add_3|C[3]~2_combout\ & 
-- (\inst2|alu0|alu2|adder|C~2_combout\ $ (\inst|reg|reg_2|y\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111011001100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|alu0|alu2|adder|C~2_combout\,
	datab => \inst|reg|reg_2|y\(3),
	datac => \inst1|INS_OUT[5]~24_combout\,
	datad => \inst3|add_3|C[3]~2_combout\,
	combout => \inst3|add_3|C4~0_combout\);

-- Location: LCCOMB_X107_Y58_N8
\inst2|alu0|alu3|adder|S[0]\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|alu0|alu3|adder|S\(0) = \inst|reg|reg_2|y\(4) $ (((\inst|reg|reg_2|y\(3) & (\inst|reg|reg_2|y\(2) & \inst2|alu0|alu2|adder|C~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110110011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|reg|reg_2|y\(3),
	datab => \inst|reg|reg_2|y\(4),
	datac => \inst|reg|reg_2|y\(2),
	datad => \inst2|alu0|alu2|adder|C~0_combout\,
	combout => \inst2|alu0|alu3|adder|S\(0));

-- Location: LCCOMB_X109_Y58_N12
\inst7|OUT16B[12]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst7|OUT16B[12]~0_combout\ = \inst2|alu0|alu3|adder|S\(0) $ (((\inst6|inst|Mux9~0_combout\ & (\inst1|INS_OUT[5]~24_combout\ $ (\inst3|add_3|C4~0_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011011101001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|INS_OUT[5]~24_combout\,
	datab => \inst6|inst|Mux9~0_combout\,
	datac => \inst3|add_3|C4~0_combout\,
	datad => \inst2|alu0|alu3|adder|S\(0),
	combout => \inst7|OUT16B[12]~0_combout\);

-- Location: LCCOMB_X109_Y58_N8
\inst|to_pc[12]\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|to_pc\(12) = (!\RST~input_o\ & (!\inst6|inst|Mux2~0_combout\ & \inst7|OUT16B[12]~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \RST~input_o\,
	datac => \inst6|inst|Mux2~0_combout\,
	datad => \inst7|OUT16B[12]~0_combout\,
	combout => \inst|to_pc\(12));

-- Location: FF_X109_Y58_N9
\inst|reg|reg_2|y[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \inst|to_pc\(12),
	ena => \EN~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|reg|reg_2|y\(4));

-- Location: LCCOMB_X107_Y58_N14
\inst2|alu0|alu3|adder|C~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|alu0|alu3|adder|C~0_combout\ = (\inst|reg|reg_2|y\(3) & (\inst|reg|reg_2|y\(4) & (\inst|reg|reg_2|y\(2) & \inst2|alu0|alu2|adder|C~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|reg|reg_2|y\(3),
	datab => \inst|reg|reg_2|y\(4),
	datac => \inst|reg|reg_2|y\(2),
	datad => \inst2|alu0|alu2|adder|C~0_combout\,
	combout => \inst2|alu0|alu3|adder|C~0_combout\);

-- Location: LCCOMB_X107_Y58_N2
\inst2|alu0|alu3|adder|S[1]\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|alu0|alu3|adder|S\(1) = \inst|reg|reg_2|y\(5) $ (\inst2|alu0|alu3|adder|C~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst|reg|reg_2|y\(5),
	datac => \inst2|alu0|alu3|adder|C~0_combout\,
	combout => \inst2|alu0|alu3|adder|S\(1));

-- Location: LCCOMB_X108_Y58_N16
\inst3|add_4|C[1]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|add_4|C[1]~0_combout\ = (\inst2|alu0|alu3|adder|S\(0) & ((\inst1|INS_OUT[5]~24_combout\) # ((\inst2|alu0|alu2|adder|S\(3) & \inst3|add_3|C[3]~2_combout\)))) # (!\inst2|alu0|alu3|adder|S\(0) & (\inst1|INS_OUT[5]~24_combout\ & 
-- ((\inst2|alu0|alu2|adder|S\(3)) # (\inst3|add_3|C[3]~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100011100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|alu0|alu3|adder|S\(0),
	datab => \inst2|alu0|alu2|adder|S\(3),
	datac => \inst1|INS_OUT[5]~24_combout\,
	datad => \inst3|add_3|C[3]~2_combout\,
	combout => \inst3|add_4|C[1]~0_combout\);

-- Location: LCCOMB_X108_Y58_N2
\JUMPMUX|OUT16B[13]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \JUMPMUX|OUT16B[13]~2_combout\ = \inst2|alu0|alu3|adder|S\(1) $ (((\inst6|inst|Mux9~0_combout\ & (\inst1|INS_OUT[5]~24_combout\ $ (\inst3|add_4|C[1]~0_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010011001101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|alu0|alu3|adder|S\(1),
	datab => \inst6|inst|Mux9~0_combout\,
	datac => \inst1|INS_OUT[5]~24_combout\,
	datad => \inst3|add_4|C[1]~0_combout\,
	combout => \JUMPMUX|OUT16B[13]~2_combout\);

-- Location: LCCOMB_X108_Y58_N12
\inst|to_pc[13]\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|to_pc\(13) = (!\RST~input_o\ & \JUMPMUX|OUT16B[13]~2_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \RST~input_o\,
	datad => \JUMPMUX|OUT16B[13]~2_combout\,
	combout => \inst|to_pc\(13));

-- Location: FF_X108_Y58_N13
\inst|reg|reg_2|y[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \inst|to_pc\(13),
	ena => \EN~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|reg|reg_2|y\(5));

-- Location: LCCOMB_X108_Y58_N4
\inst2|alu0|alu3|adder|S[2]\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|alu0|alu3|adder|S\(2) = \inst|reg|reg_2|y\(6) $ (((\inst|reg|reg_2|y\(5) & \inst2|alu0|alu3|adder|C~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|reg|reg_2|y\(5),
	datab => \inst|reg|reg_2|y\(6),
	datad => \inst2|alu0|alu3|adder|C~0_combout\,
	combout => \inst2|alu0|alu3|adder|S\(2));

-- Location: LCCOMB_X108_Y58_N18
\inst3|add_4|C[2]~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|add_4|C[2]~3_combout\ = (\inst1|INS_OUT[5]~24_combout\ & ((\inst3|add_4|C[1]~0_combout\) # (\inst2|alu0|alu3|adder|C~0_combout\ $ (\inst|reg|reg_2|y\(5))))) # (!\inst1|INS_OUT[5]~24_combout\ & (\inst3|add_4|C[1]~0_combout\ & 
-- (\inst2|alu0|alu3|adder|C~0_combout\ $ (\inst|reg|reg_2|y\(5)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101111001001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|alu0|alu3|adder|C~0_combout\,
	datab => \inst1|INS_OUT[5]~24_combout\,
	datac => \inst|reg|reg_2|y\(5),
	datad => \inst3|add_4|C[1]~0_combout\,
	combout => \inst3|add_4|C[2]~3_combout\);

-- Location: LCCOMB_X108_Y58_N0
\JUMPMUX|OUT16B[14]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \JUMPMUX|OUT16B[14]~1_combout\ = \inst2|alu0|alu3|adder|S\(2) $ (((\inst6|inst|Mux9~0_combout\ & (\inst1|INS_OUT[5]~24_combout\ $ (\inst3|add_4|C[2]~3_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011010001111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|INS_OUT[5]~24_combout\,
	datab => \inst6|inst|Mux9~0_combout\,
	datac => \inst2|alu0|alu3|adder|S\(2),
	datad => \inst3|add_4|C[2]~3_combout\,
	combout => \JUMPMUX|OUT16B[14]~1_combout\);

-- Location: LCCOMB_X108_Y58_N14
\inst|to_pc[14]\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|to_pc\(14) = (!\RST~input_o\ & \JUMPMUX|OUT16B[14]~1_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \RST~input_o\,
	datad => \JUMPMUX|OUT16B[14]~1_combout\,
	combout => \inst|to_pc\(14));

-- Location: FF_X108_Y58_N15
\inst|reg|reg_2|y[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \inst|to_pc\(14),
	ena => \EN~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|reg|reg_2|y\(6));

-- Location: LCCOMB_X108_Y58_N22
\inst2|alu0|alu3|adder|S[3]\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|alu0|alu3|adder|S\(3) = \inst|reg|reg_2|y\(7) $ (((\inst|reg|reg_2|y\(5) & (\inst|reg|reg_2|y\(6) & \inst2|alu0|alu3|adder|C~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110110011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|reg|reg_2|y\(5),
	datab => \inst|reg|reg_2|y\(7),
	datac => \inst|reg|reg_2|y\(6),
	datad => \inst2|alu0|alu3|adder|C~0_combout\,
	combout => \inst2|alu0|alu3|adder|S\(3));

-- Location: LCCOMB_X108_Y58_N30
\inst3|add_4|C[3]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|add_4|C[3]~1_combout\ = (\inst|reg|reg_2|y\(6) & ((\inst|reg|reg_2|y\(5) & ((!\inst2|alu0|alu3|adder|C~0_combout\))) # (!\inst|reg|reg_2|y\(5) & ((\inst1|INS_OUT[5]~24_combout\) # (\inst2|alu0|alu3|adder|C~0_combout\))))) # (!\inst|reg|reg_2|y\(6) 
-- & (\inst1|INS_OUT[5]~24_combout\ & ((\inst|reg|reg_2|y\(5)) # (\inst2|alu0|alu3|adder|C~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111010011101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|reg|reg_2|y\(5),
	datab => \inst|reg|reg_2|y\(6),
	datac => \inst1|INS_OUT[5]~24_combout\,
	datad => \inst2|alu0|alu3|adder|C~0_combout\,
	combout => \inst3|add_4|C[3]~1_combout\);

-- Location: LCCOMB_X108_Y58_N20
\inst3|add_4|C[3]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|add_4|C[3]~2_combout\ = (\inst1|INS_OUT[5]~24_combout\ & ((\inst3|add_4|C[3]~1_combout\) # (\inst3|add_4|C[1]~0_combout\))) # (!\inst1|INS_OUT[5]~24_combout\ & (\inst3|add_4|C[3]~1_combout\ & \inst3|add_4|C[1]~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|INS_OUT[5]~24_combout\,
	datac => \inst3|add_4|C[3]~1_combout\,
	datad => \inst3|add_4|C[1]~0_combout\,
	combout => \inst3|add_4|C[3]~2_combout\);

-- Location: LCCOMB_X108_Y58_N10
\JUMPMUX|OUT16B[15]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \JUMPMUX|OUT16B[15]~0_combout\ = \inst2|alu0|alu3|adder|S\(3) $ (((\inst6|inst|Mux9~0_combout\ & (\inst1|INS_OUT[5]~24_combout\ $ (\inst3|add_4|C[3]~2_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010011001101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|alu0|alu3|adder|S\(3),
	datab => \inst6|inst|Mux9~0_combout\,
	datac => \inst1|INS_OUT[5]~24_combout\,
	datad => \inst3|add_4|C[3]~2_combout\,
	combout => \JUMPMUX|OUT16B[15]~0_combout\);

-- Location: LCCOMB_X108_Y58_N28
\inst|to_pc[15]\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|to_pc\(15) = (!\RST~input_o\ & \JUMPMUX|OUT16B[15]~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \RST~input_o\,
	datad => \JUMPMUX|OUT16B[15]~0_combout\,
	combout => \inst|to_pc\(15));

-- Location: FF_X108_Y58_N29
\inst|reg|reg_2|y[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \inst|to_pc\(15),
	ena => \EN~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|reg|reg_2|y\(7));

-- Location: LCCOMB_X109_Y58_N30
\inst1|exception~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|exception~1_combout\ = (\inst|reg|reg_2|y\(5)) # ((\inst|reg|reg_2|y\(4)) # ((\inst|reg|reg_2|y\(3)) # (\inst|reg|reg_2|y\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|reg|reg_2|y\(5),
	datab => \inst|reg|reg_2|y\(4),
	datac => \inst|reg|reg_2|y\(3),
	datad => \inst|reg|reg_2|y\(2),
	combout => \inst1|exception~1_combout\);

-- Location: LCCOMB_X107_Y58_N28
\inst1|exception~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|exception~0_combout\ = (\inst|reg|reg_1|y\(7)) # ((\inst|reg|reg_1|y\(6)) # ((\inst|reg|reg_2|y\(1)) # (\inst|reg|reg_2|y\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|reg|reg_1|y\(7),
	datab => \inst|reg|reg_1|y\(6),
	datac => \inst|reg|reg_2|y\(1),
	datad => \inst|reg|reg_2|y\(0),
	combout => \inst1|exception~0_combout\);

-- Location: LCCOMB_X109_Y58_N24
\inst1|exception~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|exception~2_combout\ = (\inst|reg|reg_2|y\(6)) # ((\inst|reg|reg_2|y\(7)) # ((\inst1|exception~1_combout\) # (\inst1|exception~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|reg|reg_2|y\(6),
	datab => \inst|reg|reg_2|y\(7),
	datac => \inst1|exception~1_combout\,
	datad => \inst1|exception~0_combout\,
	combout => \inst1|exception~2_combout\);

-- Location: LCCOMB_X110_Y58_N12
\inst1|INS_OUT[3]~25\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|INS_OUT[3]~25_combout\ = (!\inst|reg|reg_1|y\(4) & (!\inst|reg|reg_1|y\(5) & (\inst1|INS_OUT[3]~19_combout\ & !\inst1|exception~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|reg|reg_1|y\(4),
	datab => \inst|reg|reg_1|y\(5),
	datac => \inst1|INS_OUT[3]~19_combout\,
	datad => \inst1|exception~2_combout\,
	combout => \inst1|INS_OUT[3]~25_combout\);

-- Location: LCCOMB_X110_Y58_N20
\inst3|add_1|G[1]\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|add_1|G\(1) = (!\inst|reg|reg_1|y\(1) & (\inst1|data_out[1]~2_combout\ & !\inst1|exception~2_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|reg|reg_1|y\(1),
	datac => \inst1|data_out[1]~2_combout\,
	datad => \inst1|exception~2_combout\,
	combout => \inst3|add_1|G\(1));

-- Location: LCCOMB_X109_Y58_N4
\inst3|add_1|C~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|add_1|C~0_combout\ = (\inst1|INS_OUT[8]~22_combout\ & (\inst|reg|reg_1|y\(0) & (\inst1|INS_OUT[1]~20_combout\ $ (!\inst|reg|reg_1|y\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|INS_OUT[8]~22_combout\,
	datab => \inst|reg|reg_1|y\(0),
	datac => \inst1|INS_OUT[1]~20_combout\,
	datad => \inst|reg|reg_1|y\(1),
	combout => \inst3|add_1|C~0_combout\);

-- Location: LCCOMB_X110_Y58_N8
\inst1|data_out[2]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|data_out[2]~1_combout\ = (!\inst|reg|reg_1|y\(3) & ((!\inst|reg|reg_1|y\(2)) # (!\inst|reg|reg_1|y\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010101010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|reg|reg_1|y\(3),
	datac => \inst|reg|reg_1|y\(1),
	datad => \inst|reg|reg_1|y\(2),
	combout => \inst1|data_out[2]~1_combout\);

-- Location: LCCOMB_X110_Y58_N22
\inst1|INS_OUT[2]~26\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|INS_OUT[2]~26_combout\ = (!\inst1|exception~2_combout\ & ((\inst|reg|reg_1|y\(5)) # ((\inst|reg|reg_1|y\(4)) # (!\inst1|data_out[2]~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011101111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|reg|reg_1|y\(5),
	datab => \inst|reg|reg_1|y\(4),
	datac => \inst1|data_out[2]~1_combout\,
	datad => \inst1|exception~2_combout\,
	combout => \inst1|INS_OUT[2]~26_combout\);

-- Location: LCCOMB_X109_Y58_N6
\inst3|add_1|C[3]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|add_1|C[3]~1_combout\ = (\inst2|alu0|alu0|adder|S\(2) & ((\inst3|add_1|G\(1)) # ((\inst3|add_1|C~0_combout\) # (\inst1|INS_OUT[2]~26_combout\)))) # (!\inst2|alu0|alu0|adder|S\(2) & (\inst1|INS_OUT[2]~26_combout\ & ((\inst3|add_1|G\(1)) # 
-- (\inst3|add_1|C~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111011001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|add_1|G\(1),
	datab => \inst2|alu0|alu0|adder|S\(2),
	datac => \inst3|add_1|C~0_combout\,
	datad => \inst1|INS_OUT[2]~26_combout\,
	combout => \inst3|add_1|C[3]~1_combout\);

-- Location: LCCOMB_X109_Y58_N16
\inst3|add_1|C4~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|add_1|C4~0_combout\ = (\inst1|INS_OUT[3]~25_combout\ & ((\inst3|add_1|C[3]~1_combout\) # (\inst|reg|reg_1|y\(3) $ (\inst2|alu0|alu0|adder|C~0_combout\)))) # (!\inst1|INS_OUT[3]~25_combout\ & (\inst3|add_1|C[3]~1_combout\ & (\inst|reg|reg_1|y\(3) $ 
-- (\inst2|alu0|alu0|adder|C~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111011001100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|reg|reg_1|y\(3),
	datab => \inst2|alu0|alu0|adder|C~0_combout\,
	datac => \inst1|INS_OUT[3]~25_combout\,
	datad => \inst3|add_1|C[3]~1_combout\,
	combout => \inst3|add_1|C4~0_combout\);

-- Location: LCCOMB_X109_Y58_N18
\inst3|add_2|C[1]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|add_2|C[1]~0_combout\ = (\inst1|INS_OUT[4]~18_combout\ & ((\inst3|add_1|C4~0_combout\) # (\inst|reg|reg_1|y\(4) $ (\inst2|alu0|alu0|adder|COUT~0_combout\)))) # (!\inst1|INS_OUT[4]~18_combout\ & (\inst3|add_1|C4~0_combout\ & (\inst|reg|reg_1|y\(4) $ 
-- (\inst2|alu0|alu0|adder|COUT~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111011001100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|reg|reg_1|y\(4),
	datab => \inst2|alu0|alu0|adder|COUT~0_combout\,
	datac => \inst1|INS_OUT[4]~18_combout\,
	datad => \inst3|add_1|C4~0_combout\,
	combout => \inst3|add_2|C[1]~0_combout\);

-- Location: LCCOMB_X111_Y58_N6
\inst7|OUT16B[5]~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst7|OUT16B[5]~7_combout\ = \inst2|alu0|alu1|adder|S\(1) $ (((\inst6|inst|Mux9~0_combout\ & (\inst3|add_2|C[1]~0_combout\ $ (\inst1|INS_OUT[5]~24_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100011001101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst6|inst|Mux9~0_combout\,
	datab => \inst2|alu0|alu1|adder|S\(1),
	datac => \inst3|add_2|C[1]~0_combout\,
	datad => \inst1|INS_OUT[5]~24_combout\,
	combout => \inst7|OUT16B[5]~7_combout\);

-- Location: LCCOMB_X110_Y58_N2
\inst|to_pc[5]\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|to_pc\(5) = (!\RST~input_o\ & (!\inst6|inst|Mux2~0_combout\ & \inst7|OUT16B[5]~7_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RST~input_o\,
	datac => \inst6|inst|Mux2~0_combout\,
	datad => \inst7|OUT16B[5]~7_combout\,
	combout => \inst|to_pc\(5));

-- Location: FF_X110_Y58_N3
\inst|reg|reg_1|y[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \inst|to_pc\(5),
	ena => \EN~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|reg|reg_1|y\(5));

-- Location: LCCOMB_X110_Y58_N28
\inst1|dec|en_0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|dec|en_0~0_combout\ = (!\inst|reg|reg_1|y\(4) & !\inst|reg|reg_1|y\(5))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst|reg|reg_1|y\(4),
	datad => \inst|reg|reg_1|y\(5),
	combout => \inst1|dec|en_0~0_combout\);

-- Location: LCCOMB_X110_Y58_N14
\inst1|data_out[1]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|data_out[1]~2_combout\ = (\inst1|dec|en_0~0_combout\ & ((\inst|reg|reg_1|y\(3) & (!\inst|reg|reg_1|y\(2) & !\inst|reg|reg_1|y\(1))) # (!\inst|reg|reg_1|y\(3) & (\inst|reg|reg_1|y\(2) $ (\inst|reg|reg_1|y\(1))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001011000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|reg|reg_1|y\(3),
	datab => \inst|reg|reg_1|y\(2),
	datac => \inst|reg|reg_1|y\(1),
	datad => \inst1|dec|en_0~0_combout\,
	combout => \inst1|data_out[1]~2_combout\);

-- Location: LCCOMB_X109_Y58_N26
\inst1|INS_OUT[1]~20\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|INS_OUT[1]~20_combout\ = (\inst1|data_out[1]~2_combout\ & !\inst1|exception~2_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst1|data_out[1]~2_combout\,
	datad => \inst1|exception~2_combout\,
	combout => \inst1|INS_OUT[1]~20_combout\);

-- Location: LCCOMB_X112_Y58_N14
\inst3|add_1|C[2]\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|add_1|C\(2) = (\inst|reg|reg_1|y\(1) & (\inst|reg|reg_1|y\(0) & (\inst1|INS_OUT[1]~20_combout\ & \inst1|INS_OUT[8]~22_combout\))) # (!\inst|reg|reg_1|y\(1) & ((\inst1|INS_OUT[1]~20_combout\) # ((\inst|reg|reg_1|y\(0) & 
-- \inst1|INS_OUT[8]~22_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101010001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|reg|reg_1|y\(1),
	datab => \inst|reg|reg_1|y\(0),
	datac => \inst1|INS_OUT[1]~20_combout\,
	datad => \inst1|INS_OUT[8]~22_combout\,
	combout => \inst3|add_1|C\(2));

-- Location: LCCOMB_X112_Y58_N12
\inst7|OUT16B[2]~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst7|OUT16B[2]~10_combout\ = \inst2|alu0|alu0|adder|S\(2) $ (((\inst6|inst|Mux9~0_combout\ & (\inst3|add_1|C\(2) $ (\inst1|INS_OUT[2]~26_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010011001101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|alu0|alu0|adder|S\(2),
	datab => \inst6|inst|Mux9~0_combout\,
	datac => \inst3|add_1|C\(2),
	datad => \inst1|INS_OUT[2]~26_combout\,
	combout => \inst7|OUT16B[2]~10_combout\);

-- Location: LCCOMB_X112_Y58_N26
\inst|to_pc[2]\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|to_pc\(2) = (!\RST~input_o\ & (!\inst6|inst|Mux2~0_combout\ & \inst7|OUT16B[2]~10_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \RST~input_o\,
	datac => \inst6|inst|Mux2~0_combout\,
	datad => \inst7|OUT16B[2]~10_combout\,
	combout => \inst|to_pc\(2));

-- Location: FF_X110_Y58_N25
\inst|reg|reg_1|y[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	asdata => \inst|to_pc\(2),
	sload => VCC,
	ena => \EN~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|reg|reg_1|y\(2));

-- Location: LCCOMB_X112_Y58_N10
\inst2|alu0|alu0|adder|S[3]\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|alu0|alu0|adder|S\(3) = \inst|reg|reg_1|y\(3) $ (((\inst|reg|reg_1|y\(2) & \inst|reg|reg_1|y\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst|reg|reg_1|y\(2),
	datac => \inst|reg|reg_1|y\(1),
	datad => \inst|reg|reg_1|y\(3),
	combout => \inst2|alu0|alu0|adder|S\(3));

-- Location: LCCOMB_X112_Y58_N0
\inst7|OUT16B[3]~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst7|OUT16B[3]~9_combout\ = \inst2|alu0|alu0|adder|S\(3) $ (((\inst6|inst|Mux9~0_combout\ & (\inst1|INS_OUT[3]~25_combout\ $ (\inst3|add_1|C[3]~1_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010011001101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|alu0|alu0|adder|S\(3),
	datab => \inst6|inst|Mux9~0_combout\,
	datac => \inst1|INS_OUT[3]~25_combout\,
	datad => \inst3|add_1|C[3]~1_combout\,
	combout => \inst7|OUT16B[3]~9_combout\);

-- Location: LCCOMB_X110_Y58_N6
\inst|to_pc[3]\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|to_pc\(3) = (!\RST~input_o\ & (!\inst6|inst|Mux2~0_combout\ & \inst7|OUT16B[3]~9_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RST~input_o\,
	datac => \inst6|inst|Mux2~0_combout\,
	datad => \inst7|OUT16B[3]~9_combout\,
	combout => \inst|to_pc\(3));

-- Location: FF_X110_Y58_N7
\inst|reg|reg_1|y[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \inst|to_pc\(3),
	ena => \EN~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|reg|reg_1|y\(3));

-- Location: LCCOMB_X110_Y58_N30
\inst1|data_out[4]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|data_out[4]~0_combout\ = (!\inst|reg|reg_1|y\(3) & (!\inst|reg|reg_1|y\(5) & !\inst|reg|reg_1|y\(4)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000010001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|reg|reg_1|y\(3),
	datab => \inst|reg|reg_1|y\(5),
	datad => \inst|reg|reg_1|y\(4),
	combout => \inst1|data_out[4]~0_combout\);

-- Location: LCCOMB_X110_Y58_N16
\inst1|INS_OUT[4]~18\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|INS_OUT[4]~18_combout\ = (!\inst1|exception~2_combout\ & (((!\inst|reg|reg_1|y\(1) & \inst|reg|reg_1|y\(2))) # (!\inst1|data_out[4]~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|reg|reg_1|y\(1),
	datab => \inst1|data_out[4]~0_combout\,
	datac => \inst|reg|reg_1|y\(2),
	datad => \inst1|exception~2_combout\,
	combout => \inst1|INS_OUT[4]~18_combout\);

-- Location: LCCOMB_X111_Y58_N16
\inst2|alu0|alu1|adder|S[0]\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|alu0|alu1|adder|S\(0) = \inst|reg|reg_1|y\(4) $ (((\inst|reg|reg_1|y\(2) & (\inst|reg|reg_1|y\(3) & \inst|reg|reg_1|y\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110101010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|reg|reg_1|y\(4),
	datab => \inst|reg|reg_1|y\(2),
	datac => \inst|reg|reg_1|y\(3),
	datad => \inst|reg|reg_1|y\(1),
	combout => \inst2|alu0|alu1|adder|S\(0));

-- Location: LCCOMB_X111_Y58_N22
\inst7|OUT16B[4]~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst7|OUT16B[4]~8_combout\ = \inst2|alu0|alu1|adder|S\(0) $ (((\inst6|inst|Mux9~0_combout\ & (\inst1|INS_OUT[4]~18_combout\ $ (\inst3|add_1|C4~0_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011011101001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|INS_OUT[4]~18_combout\,
	datab => \inst6|inst|Mux9~0_combout\,
	datac => \inst3|add_1|C4~0_combout\,
	datad => \inst2|alu0|alu1|adder|S\(0),
	combout => \inst7|OUT16B[4]~8_combout\);

-- Location: LCCOMB_X110_Y58_N4
\inst|to_pc[4]\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|to_pc\(4) = (!\RST~input_o\ & (!\inst6|inst|Mux2~0_combout\ & \inst7|OUT16B[4]~8_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RST~input_o\,
	datac => \inst6|inst|Mux2~0_combout\,
	datad => \inst7|OUT16B[4]~8_combout\,
	combout => \inst|to_pc\(4));

-- Location: FF_X110_Y58_N5
\inst|reg|reg_1|y[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \inst|to_pc\(4),
	ena => \EN~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|reg|reg_1|y\(4));

-- Location: LCCOMB_X110_Y58_N10
\inst1|dec|dcd_0|dcd|Mux7~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|dec|dcd_0|dcd|Mux7~0_combout\ = (\inst|reg|reg_1|y\(3) & (!\inst|reg|reg_1|y\(1) & !\inst|reg|reg_1|y\(2)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|reg|reg_1|y\(3),
	datac => \inst|reg|reg_1|y\(1),
	datad => \inst|reg|reg_1|y\(2),
	combout => \inst1|dec|dcd_0|dcd|Mux7~0_combout\);

-- Location: LCCOMB_X109_Y58_N22
\inst1|INS_OUT[8]~22\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|INS_OUT[8]~22_combout\ = (!\inst|reg|reg_1|y\(4) & (!\inst|reg|reg_1|y\(5) & (\inst1|dec|dcd_0|dcd|Mux7~0_combout\ & !\inst1|exception~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|reg|reg_1|y\(4),
	datab => \inst|reg|reg_1|y\(5),
	datac => \inst1|dec|dcd_0|dcd|Mux7~0_combout\,
	datad => \inst1|exception~2_combout\,
	combout => \inst1|INS_OUT[8]~22_combout\);

-- Location: LCCOMB_X112_Y58_N22
\JUMPMUX|OUT16B[0]~15\ : cycloneive_lcell_comb
-- Equation(s):
-- \JUMPMUX|OUT16B[0]~15_combout\ = (!\inst6|inst|Mux2~0_combout\ & (\inst|reg|reg_1|y\(0) $ (((\inst6|inst|Mux9~0_combout\ & \inst1|INS_OUT[8]~22_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000011000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst6|inst|Mux9~0_combout\,
	datab => \inst|reg|reg_1|y\(0),
	datac => \inst6|inst|Mux2~0_combout\,
	datad => \inst1|INS_OUT[8]~22_combout\,
	combout => \JUMPMUX|OUT16B[0]~15_combout\);

-- Location: LCCOMB_X112_Y58_N20
\inst|to_pc[0]\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|to_pc\(0) = (!\RST~input_o\ & \JUMPMUX|OUT16B[0]~15_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \RST~input_o\,
	datac => \JUMPMUX|OUT16B[0]~15_combout\,
	combout => \inst|to_pc\(0));

-- Location: FF_X109_Y58_N27
\inst|reg|reg_1|y[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	asdata => \inst|to_pc\(0),
	sload => VCC,
	ena => \EN~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|reg|reg_1|y\(0));

-- Location: LCCOMB_X112_Y58_N18
\inst3|add_1|S[1]\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|add_1|S\(1) = \inst|reg|reg_1|y\(1) $ (\inst1|INS_OUT[1]~20_combout\ $ (((\inst|reg|reg_1|y\(0) & \inst1|INS_OUT[8]~22_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011001011010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|reg|reg_1|y\(1),
	datab => \inst|reg|reg_1|y\(0),
	datac => \inst1|INS_OUT[1]~20_combout\,
	datad => \inst1|INS_OUT[8]~22_combout\,
	combout => \inst3|add_1|S\(1));

-- Location: LCCOMB_X112_Y58_N24
\JUMPMUX|OUT16B[1]~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \JUMPMUX|OUT16B[1]~14_combout\ = (\inst6|inst|Mux2~0_combout\) # ((\inst6|inst|Mux9~0_combout\ & ((\inst3|add_1|S\(1)))) # (!\inst6|inst|Mux9~0_combout\ & (\inst|reg|reg_1|y\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111011110010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|reg|reg_1|y\(1),
	datab => \inst6|inst|Mux9~0_combout\,
	datac => \inst6|inst|Mux2~0_combout\,
	datad => \inst3|add_1|S\(1),
	combout => \JUMPMUX|OUT16B[1]~14_combout\);

-- Location: LCCOMB_X112_Y58_N4
\inst|to_pc[1]\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|to_pc\(1) = (!\RST~input_o\ & !\JUMPMUX|OUT16B[1]~14_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \RST~input_o\,
	datad => \JUMPMUX|OUT16B[1]~14_combout\,
	combout => \inst|to_pc\(1));

-- Location: FF_X110_Y58_N31
\inst|reg|reg_1|y[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	asdata => \inst|to_pc\(1),
	sload => VCC,
	ena => \EN~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|reg|reg_1|y\(1));

-- Location: LCCOMB_X111_Y58_N24
\inst1|INS_OUT[3]~21\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|INS_OUT[3]~21_combout\ = (!\inst|reg|reg_1|y\(5) & (!\inst|reg|reg_1|y\(4) & !\inst1|exception~2_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst|reg|reg_1|y\(5),
	datac => \inst|reg|reg_1|y\(4),
	datad => \inst1|exception~2_combout\,
	combout => \inst1|INS_OUT[3]~21_combout\);

-- Location: LCCOMB_X112_Y58_N16
\inst1|INS_OUT[15]~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|INS_OUT[15]~12_combout\ = (\inst1|INS_OUT[3]~21_combout\ & (!\inst|reg|reg_1|y\(3) & ((\inst|reg|reg_1|y\(1)) # (!\inst|reg|reg_1|y\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|reg|reg_1|y\(1),
	datab => \inst|reg|reg_1|y\(2),
	datac => \inst1|INS_OUT[3]~21_combout\,
	datad => \inst|reg|reg_1|y\(3),
	combout => \inst1|INS_OUT[15]~12_combout\);

-- Location: LCCOMB_X111_Y58_N0
\inst1|INS_OUT[14]~13\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|INS_OUT[14]~13_combout\ = (!\inst1|exception~2_combout\ & (\inst1|dec|en_0~0_combout\ & (!\inst|reg|reg_1|y\(3) & \inst2|alu0|alu0|adder|C~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|exception~2_combout\,
	datab => \inst1|dec|en_0~0_combout\,
	datac => \inst|reg|reg_1|y\(3),
	datad => \inst2|alu0|alu0|adder|C~0_combout\,
	combout => \inst1|INS_OUT[14]~13_combout\);

-- Location: LCCOMB_X112_Y58_N6
\inst1|INS_OUT[13]~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|INS_OUT[13]~14_combout\ = (\inst1|INS_OUT[3]~21_combout\ & ((\inst|reg|reg_1|y\(1) & ((!\inst|reg|reg_1|y\(3)))) # (!\inst|reg|reg_1|y\(1) & (!\inst|reg|reg_1|y\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000010110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|reg|reg_1|y\(1),
	datab => \inst|reg|reg_1|y\(2),
	datac => \inst1|INS_OUT[3]~21_combout\,
	datad => \inst|reg|reg_1|y\(3),
	combout => \inst1|INS_OUT[13]~14_combout\);

-- Location: LCCOMB_X111_Y58_N18
\inst1|dec|dcd_0|dcd|Mux7~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|dec|dcd_0|dcd|Mux7~1_combout\ = (\inst|reg|reg_1|y\(2) & (!\inst|reg|reg_1|y\(3) & !\inst|reg|reg_1|y\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst|reg|reg_1|y\(2),
	datac => \inst|reg|reg_1|y\(3),
	datad => \inst|reg|reg_1|y\(1),
	combout => \inst1|dec|dcd_0|dcd|Mux7~1_combout\);

-- Location: LCCOMB_X111_Y58_N8
\inst1|INS_OUT[12]~15\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|INS_OUT[12]~15_combout\ = (!\inst1|exception~2_combout\ & (((!\inst1|dec|dcd_0|dcd|Mux7~1_combout\ & !\inst1|dec|dcd_0|dcd|Mux7~0_combout\)) # (!\inst1|dec|en_0~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000101010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|exception~2_combout\,
	datab => \inst1|dec|dcd_0|dcd|Mux7~1_combout\,
	datac => \inst1|dec|dcd_0|dcd|Mux7~0_combout\,
	datad => \inst1|dec|en_0~0_combout\,
	combout => \inst1|INS_OUT[12]~15_combout\);

-- Location: LCCOMB_X112_Y58_N8
\inst1|INS_OUT[7]~16\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|INS_OUT[7]~16_combout\ = (\inst1|INS_OUT[3]~21_combout\ & (\inst|reg|reg_1|y\(3) $ (((\inst|reg|reg_1|y\(1)) # (\inst|reg|reg_1|y\(2))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000011100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|reg|reg_1|y\(1),
	datab => \inst|reg|reg_1|y\(2),
	datac => \inst1|INS_OUT[3]~21_combout\,
	datad => \inst|reg|reg_1|y\(3),
	combout => \inst1|INS_OUT[7]~16_combout\);

-- Location: LCCOMB_X111_Y58_N10
\inst1|INS_OUT[6]~17\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|INS_OUT[6]~17_combout\ = (\inst|reg|reg_1|y\(1) & (\inst|reg|reg_1|y\(2) & (!\inst|reg|reg_1|y\(3)))) # (!\inst|reg|reg_1|y\(1) & (!\inst|reg|reg_1|y\(2) & ((\inst|reg|reg_1|y\(3)) # (\inst1|dec|en_0~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001100100011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|reg|reg_1|y\(1),
	datab => \inst|reg|reg_1|y\(2),
	datac => \inst|reg|reg_1|y\(3),
	datad => \inst1|dec|en_0~0_combout\,
	combout => \inst1|INS_OUT[6]~17_combout\);

-- Location: LCCOMB_X111_Y58_N14
\inst1|INS_OUT[6]~23\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|INS_OUT[6]~23_combout\ = (\inst1|INS_OUT[6]~17_combout\ & (!\inst|reg|reg_1|y\(5) & (!\inst|reg|reg_1|y\(4) & !\inst1|exception~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|INS_OUT[6]~17_combout\,
	datab => \inst|reg|reg_1|y\(5),
	datac => \inst|reg|reg_1|y\(4),
	datad => \inst1|exception~2_combout\,
	combout => \inst1|INS_OUT[6]~23_combout\);

-- Location: LCCOMB_X114_Y68_N4
\JUMPMUX|OUT16B[12]~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \JUMPMUX|OUT16B[12]~3_combout\ = (\inst7|OUT16B[12]~0_combout\ & !\inst6|inst|Mux2~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst7|OUT16B[12]~0_combout\,
	datad => \inst6|inst|Mux2~0_combout\,
	combout => \JUMPMUX|OUT16B[12]~3_combout\);

-- Location: LCCOMB_X114_Y68_N2
\JUMPMUX|OUT16B[11]~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \JUMPMUX|OUT16B[11]~4_combout\ = (\inst7|OUT16B[11]~1_combout\ & !\inst6|inst|Mux2~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst7|OUT16B[11]~1_combout\,
	datad => \inst6|inst|Mux2~0_combout\,
	combout => \JUMPMUX|OUT16B[11]~4_combout\);

-- Location: LCCOMB_X114_Y65_N0
\JUMPMUX|OUT16B[10]~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \JUMPMUX|OUT16B[10]~5_combout\ = (\inst7|OUT16B[10]~2_combout\ & !\inst6|inst|Mux2~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst7|OUT16B[10]~2_combout\,
	datad => \inst6|inst|Mux2~0_combout\,
	combout => \JUMPMUX|OUT16B[10]~5_combout\);

-- Location: LCCOMB_X107_Y58_N18
\JUMPMUX|OUT16B[9]~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \JUMPMUX|OUT16B[9]~6_combout\ = (!\inst6|inst|Mux2~0_combout\ & \inst7|OUT16B[9]~3_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst6|inst|Mux2~0_combout\,
	datad => \inst7|OUT16B[9]~3_combout\,
	combout => \JUMPMUX|OUT16B[9]~6_combout\);

-- Location: LCCOMB_X106_Y58_N26
\JUMPMUX|OUT16B[8]~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \JUMPMUX|OUT16B[8]~7_combout\ = (!\inst6|inst|Mux2~0_combout\ & \inst7|OUT16B[8]~4_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst6|inst|Mux2~0_combout\,
	datad => \inst7|OUT16B[8]~4_combout\,
	combout => \JUMPMUX|OUT16B[8]~7_combout\);

-- Location: LCCOMB_X106_Y72_N0
\JUMPMUX|OUT16B[7]~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \JUMPMUX|OUT16B[7]~8_combout\ = (!\inst6|inst|Mux2~0_combout\ & \inst7|OUT16B[7]~5_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst6|inst|Mux2~0_combout\,
	datac => \inst7|OUT16B[7]~5_combout\,
	combout => \JUMPMUX|OUT16B[7]~8_combout\);

-- Location: LCCOMB_X106_Y58_N10
\JUMPMUX|OUT16B[6]~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \JUMPMUX|OUT16B[6]~9_combout\ = (!\inst6|inst|Mux2~0_combout\ & \inst7|OUT16B[6]~6_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst6|inst|Mux2~0_combout\,
	datad => \inst7|OUT16B[6]~6_combout\,
	combout => \JUMPMUX|OUT16B[6]~9_combout\);

-- Location: LCCOMB_X114_Y59_N16
\JUMPMUX|OUT16B[5]~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \JUMPMUX|OUT16B[5]~10_combout\ = (!\inst6|inst|Mux2~0_combout\ & \inst7|OUT16B[5]~7_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst6|inst|Mux2~0_combout\,
	datad => \inst7|OUT16B[5]~7_combout\,
	combout => \JUMPMUX|OUT16B[5]~10_combout\);

-- Location: LCCOMB_X114_Y59_N26
\JUMPMUX|OUT16B[4]~11\ : cycloneive_lcell_comb
-- Equation(s):
-- \JUMPMUX|OUT16B[4]~11_combout\ = (\inst7|OUT16B[4]~8_combout\ & !\inst6|inst|Mux2~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst7|OUT16B[4]~8_combout\,
	datac => \inst6|inst|Mux2~0_combout\,
	combout => \JUMPMUX|OUT16B[4]~11_combout\);

-- Location: LCCOMB_X114_Y65_N2
\JUMPMUX|OUT16B[3]~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \JUMPMUX|OUT16B[3]~12_combout\ = (!\inst6|inst|Mux2~0_combout\ & \inst7|OUT16B[3]~9_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst6|inst|Mux2~0_combout\,
	datad => \inst7|OUT16B[3]~9_combout\,
	combout => \JUMPMUX|OUT16B[3]~12_combout\);

-- Location: LCCOMB_X114_Y65_N8
\JUMPMUX|OUT16B[2]~13\ : cycloneive_lcell_comb
-- Equation(s):
-- \JUMPMUX|OUT16B[2]~13_combout\ = (!\inst6|inst|Mux2~0_combout\ & \inst7|OUT16B[2]~10_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst6|inst|Mux2~0_combout\,
	datad => \inst7|OUT16B[2]~10_combout\,
	combout => \JUMPMUX|OUT16B[2]~13_combout\);

-- Location: LCCOMB_X112_Y58_N28
\inst7|OUT16B[1]~11\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst7|OUT16B[1]~11_combout\ = (\inst6|inst|Mux9~0_combout\ & ((\inst3|add_1|S\(1)))) # (!\inst6|inst|Mux9~0_combout\ & (\inst|reg|reg_1|y\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst6|inst|Mux9~0_combout\,
	datac => \inst|reg|reg_1|y\(1),
	datad => \inst3|add_1|S\(1),
	combout => \inst7|OUT16B[1]~11_combout\);

-- Location: LCCOMB_X112_Y58_N30
\inst7|OUT16B[0]~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst7|OUT16B[0]~12_combout\ = \inst|reg|reg_1|y\(0) $ (((\inst6|inst|Mux9~0_combout\ & \inst1|INS_OUT[8]~22_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110101001101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|reg|reg_1|y\(0),
	datab => \inst6|inst|Mux9~0_combout\,
	datac => \inst1|INS_OUT[8]~22_combout\,
	combout => \inst7|OUT16B[0]~12_combout\);

ww_RegDst <= \RegDst~output_o\;

ww_MemRead <= \MemRead~output_o\;

ww_MemtoReg <= \MemtoReg~output_o\;

ww_MemWrite <= \MemWrite~output_o\;

ww_ALUSrc <= \ALUSrc~output_o\;

ww_RegWrite <= \RegWrite~output_o\;

ww_ALUCon <= \ALUCon~output_o\;

ww_ALUOp(2) <= \ALUOp[2]~output_o\;

ww_ALUOp(1) <= \ALUOp[1]~output_o\;

ww_ALUOp(0) <= \ALUOp[0]~output_o\;

ww_DOUT(15) <= \DOUT[15]~output_o\;

ww_DOUT(14) <= \DOUT[14]~output_o\;

ww_DOUT(13) <= \DOUT[13]~output_o\;

ww_DOUT(12) <= \DOUT[12]~output_o\;

ww_DOUT(11) <= \DOUT[11]~output_o\;

ww_DOUT(10) <= \DOUT[10]~output_o\;

ww_DOUT(9) <= \DOUT[9]~output_o\;

ww_DOUT(8) <= \DOUT[8]~output_o\;

ww_DOUT(7) <= \DOUT[7]~output_o\;

ww_DOUT(6) <= \DOUT[6]~output_o\;

ww_DOUT(5) <= \DOUT[5]~output_o\;

ww_DOUT(4) <= \DOUT[4]~output_o\;

ww_DOUT(3) <= \DOUT[3]~output_o\;

ww_DOUT(2) <= \DOUT[2]~output_o\;

ww_DOUT(1) <= \DOUT[1]~output_o\;

ww_DOUT(0) <= \DOUT[0]~output_o\;

ww_INSOUT(15) <= \INSOUT[15]~output_o\;

ww_INSOUT(14) <= \INSOUT[14]~output_o\;

ww_INSOUT(13) <= \INSOUT[13]~output_o\;

ww_INSOUT(12) <= \INSOUT[12]~output_o\;

ww_INSOUT(11) <= \INSOUT[11]~output_o\;

ww_INSOUT(10) <= \INSOUT[10]~output_o\;

ww_INSOUT(9) <= \INSOUT[9]~output_o\;

ww_INSOUT(8) <= \INSOUT[8]~output_o\;

ww_INSOUT(7) <= \INSOUT[7]~output_o\;

ww_INSOUT(6) <= \INSOUT[6]~output_o\;

ww_INSOUT(5) <= \INSOUT[5]~output_o\;

ww_INSOUT(4) <= \INSOUT[4]~output_o\;

ww_INSOUT(3) <= \INSOUT[3]~output_o\;

ww_INSOUT(2) <= \INSOUT[2]~output_o\;

ww_INSOUT(1) <= \INSOUT[1]~output_o\;

ww_INSOUT(0) <= \INSOUT[0]~output_o\;

ww_JOUT(15) <= \JOUT[15]~output_o\;

ww_JOUT(14) <= \JOUT[14]~output_o\;

ww_JOUT(13) <= \JOUT[13]~output_o\;

ww_JOUT(12) <= \JOUT[12]~output_o\;

ww_JOUT(11) <= \JOUT[11]~output_o\;

ww_JOUT(10) <= \JOUT[10]~output_o\;

ww_JOUT(9) <= \JOUT[9]~output_o\;

ww_JOUT(8) <= \JOUT[8]~output_o\;

ww_JOUT(7) <= \JOUT[7]~output_o\;

ww_JOUT(6) <= \JOUT[6]~output_o\;

ww_JOUT(5) <= \JOUT[5]~output_o\;

ww_JOUT(4) <= \JOUT[4]~output_o\;

ww_JOUT(3) <= \JOUT[3]~output_o\;

ww_JOUT(2) <= \JOUT[2]~output_o\;

ww_JOUT(1) <= \JOUT[1]~output_o\;

ww_JOUT(0) <= \JOUT[0]~output_o\;

ww_JUMPMUX_OUT(15) <= \JUMPMUX_OUT[15]~output_o\;

ww_JUMPMUX_OUT(14) <= \JUMPMUX_OUT[14]~output_o\;

ww_JUMPMUX_OUT(13) <= \JUMPMUX_OUT[13]~output_o\;

ww_JUMPMUX_OUT(12) <= \JUMPMUX_OUT[12]~output_o\;

ww_JUMPMUX_OUT(11) <= \JUMPMUX_OUT[11]~output_o\;

ww_JUMPMUX_OUT(10) <= \JUMPMUX_OUT[10]~output_o\;

ww_JUMPMUX_OUT(9) <= \JUMPMUX_OUT[9]~output_o\;

ww_JUMPMUX_OUT(8) <= \JUMPMUX_OUT[8]~output_o\;

ww_JUMPMUX_OUT(7) <= \JUMPMUX_OUT[7]~output_o\;

ww_JUMPMUX_OUT(6) <= \JUMPMUX_OUT[6]~output_o\;

ww_JUMPMUX_OUT(5) <= \JUMPMUX_OUT[5]~output_o\;

ww_JUMPMUX_OUT(4) <= \JUMPMUX_OUT[4]~output_o\;

ww_JUMPMUX_OUT(3) <= \JUMPMUX_OUT[3]~output_o\;

ww_JUMPMUX_OUT(2) <= \JUMPMUX_OUT[2]~output_o\;

ww_JUMPMUX_OUT(1) <= \JUMPMUX_OUT[1]~output_o\;

ww_JUMPMUX_OUT(0) <= \JUMPMUX_OUT[0]~output_o\;

ww_PCP2(15) <= \PCP2[15]~output_o\;

ww_PCP2(14) <= \PCP2[14]~output_o\;

ww_PCP2(13) <= \PCP2[13]~output_o\;

ww_PCP2(12) <= \PCP2[12]~output_o\;

ww_PCP2(11) <= \PCP2[11]~output_o\;

ww_PCP2(10) <= \PCP2[10]~output_o\;

ww_PCP2(9) <= \PCP2[9]~output_o\;

ww_PCP2(8) <= \PCP2[8]~output_o\;

ww_PCP2(7) <= \PCP2[7]~output_o\;

ww_PCP2(6) <= \PCP2[6]~output_o\;

ww_PCP2(5) <= \PCP2[5]~output_o\;

ww_PCP2(4) <= \PCP2[4]~output_o\;

ww_PCP2(3) <= \PCP2[3]~output_o\;

ww_PCP2(2) <= \PCP2[2]~output_o\;

ww_PCP2(1) <= \PCP2[1]~output_o\;

ww_PCP2(0) <= \PCP2[0]~output_o\;
END structure;


