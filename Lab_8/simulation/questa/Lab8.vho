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

-- DATE "04/25/2026 21:52:49"

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

ENTITY 	m16dp IS
    PORT (
	RegDst : OUT std_logic;
	RegWrite : OUT std_logic;
	CLK : IN std_logic;
	ALUCon : OUT std_logic;
	ALUSrc : OUT std_logic;
	EXTEN_OUT : OUT std_logic_vector(15 DOWNTO 0);
	Branch : OUT std_logic;
	PCEN : IN std_logic;
	Jump : OUT std_logic;
	RST : IN std_logic;
	ALUOp : OUT std_logic_vector(2 DOWNTO 0);
	W_REG : OUT std_logic_vector(15 DOWNTO 0);
	MemtoReg : OUT std_logic;
	ALUOUT : OUT std_logic_vector(15 DOWNTO 0);
	MemWrite : OUT std_logic;
	MemRead : OUT std_logic;
	INS_OUT : OUT std_logic_vector(15 DOWNTO 0);
	BRADDER_OUT : OUT std_logic_vector(15 DOWNTO 0);
	DMEMOUT : OUT std_logic_vector(15 DOWNTO 0);
	JOUT : OUT std_logic_vector(15 DOWNTO 0);
	JUMPMUX_OUT : OUT std_logic_vector(15 DOWNTO 0);
	PCP2 : OUT std_logic_vector(15 DOWNTO 0);
	REG1OUT : OUT std_logic_vector(15 DOWNTO 0);
	REG2_OUT : OUT std_logic_vector(15 DOWNTO 0)
	);
END m16dp;

-- Design Ports Information
-- RegDst	=>  Location: PIN_AG7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- RegWrite	=>  Location: PIN_V6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ALUCon	=>  Location: PIN_AE5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ALUSrc	=>  Location: PIN_U3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- EXTEN_OUT[15]	=>  Location: PIN_J13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- EXTEN_OUT[14]	=>  Location: PIN_E11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- EXTEN_OUT[13]	=>  Location: PIN_AG11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- EXTEN_OUT[12]	=>  Location: PIN_B11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- EXTEN_OUT[11]	=>  Location: PIN_G13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- EXTEN_OUT[10]	=>  Location: PIN_C10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- EXTEN_OUT[9]	=>  Location: PIN_D10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- EXTEN_OUT[8]	=>  Location: PIN_A10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- EXTEN_OUT[7]	=>  Location: PIN_AC10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- EXTEN_OUT[6]	=>  Location: PIN_J12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- EXTEN_OUT[5]	=>  Location: PIN_B10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- EXTEN_OUT[4]	=>  Location: PIN_V5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- EXTEN_OUT[3]	=>  Location: PIN_F8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- EXTEN_OUT[2]	=>  Location: PIN_D11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- EXTEN_OUT[1]	=>  Location: PIN_J3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- EXTEN_OUT[0]	=>  Location: PIN_AC5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Branch	=>  Location: PIN_AE8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Jump	=>  Location: PIN_AC2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ALUOp[2]	=>  Location: PIN_AA7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ALUOp[1]	=>  Location: PIN_AF5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ALUOp[0]	=>  Location: PIN_AB21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- W_REG[15]	=>  Location: PIN_L1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- W_REG[14]	=>  Location: PIN_M2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- W_REG[13]	=>  Location: PIN_K7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- W_REG[12]	=>  Location: PIN_L6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- W_REG[11]	=>  Location: PIN_L2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- W_REG[10]	=>  Location: PIN_P2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- W_REG[9]	=>  Location: PIN_R7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- W_REG[8]	=>  Location: PIN_P1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- W_REG[7]	=>  Location: PIN_N3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- W_REG[6]	=>  Location: PIN_N8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- W_REG[5]	=>  Location: PIN_AH3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- W_REG[4]	=>  Location: PIN_N4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- W_REG[3]	=>  Location: PIN_J7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- W_REG[2]	=>  Location: PIN_L8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- W_REG[1]	=>  Location: PIN_L7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- W_REG[0]	=>  Location: PIN_M1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- MemtoReg	=>  Location: PIN_AE4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ALUOUT[15]	=>  Location: PIN_AA5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ALUOUT[14]	=>  Location: PIN_AA6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ALUOUT[13]	=>  Location: PIN_K3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ALUOUT[12]	=>  Location: PIN_AB4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ALUOUT[11]	=>  Location: PIN_AE3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ALUOUT[10]	=>  Location: PIN_H5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ALUOUT[9]	=>  Location: PIN_AC1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ALUOUT[8]	=>  Location: PIN_L4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ALUOUT[7]	=>  Location: PIN_K2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ALUOUT[6]	=>  Location: PIN_L3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ALUOUT[5]	=>  Location: PIN_M4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ALUOUT[4]	=>  Location: PIN_R2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ALUOUT[3]	=>  Location: PIN_U2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ALUOUT[2]	=>  Location: PIN_U1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ALUOUT[1]	=>  Location: PIN_V4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ALUOUT[0]	=>  Location: PIN_Y3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- MemWrite	=>  Location: PIN_AD1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- MemRead	=>  Location: PIN_AG3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- INS_OUT[15]	=>  Location: PIN_B4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- INS_OUT[14]	=>  Location: PIN_AB8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- INS_OUT[13]	=>  Location: PIN_W3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- INS_OUT[12]	=>  Location: PIN_AA3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- INS_OUT[11]	=>  Location: PIN_A4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- INS_OUT[10]	=>  Location: PIN_H8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- INS_OUT[9]	=>  Location: PIN_A8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- INS_OUT[8]	=>  Location: PIN_AB11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- INS_OUT[7]	=>  Location: PIN_G11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- INS_OUT[6]	=>  Location: PIN_C8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- INS_OUT[5]	=>  Location: PIN_A11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- INS_OUT[4]	=>  Location: PIN_V8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- INS_OUT[3]	=>  Location: PIN_G8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- INS_OUT[2]	=>  Location: PIN_C11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- INS_OUT[1]	=>  Location: PIN_J4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- INS_OUT[0]	=>  Location: PIN_AC4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- BRADDER_OUT[15]	=>  Location: PIN_J6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- BRADDER_OUT[14]	=>  Location: PIN_Y5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- BRADDER_OUT[13]	=>  Location: PIN_AE1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- BRADDER_OUT[12]	=>  Location: PIN_Y7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- BRADDER_OUT[11]	=>  Location: PIN_AE10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- BRADDER_OUT[10]	=>  Location: PIN_AF7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- BRADDER_OUT[9]	=>  Location: PIN_B8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- BRADDER_OUT[8]	=>  Location: PIN_B6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- BRADDER_OUT[7]	=>  Location: PIN_H10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- BRADDER_OUT[6]	=>  Location: PIN_F2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- BRADDER_OUT[5]	=>  Location: PIN_W7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- BRADDER_OUT[4]	=>  Location: PIN_AF9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- BRADDER_OUT[3]	=>  Location: PIN_G3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- BRADDER_OUT[2]	=>  Location: PIN_Y10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- BRADDER_OUT[1]	=>  Location: PIN_AH4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- BRADDER_OUT[0]	=>  Location: PIN_AH6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- DMEMOUT[15]	=>  Location: PIN_G2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- DMEMOUT[14]	=>  Location: PIN_E3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- DMEMOUT[13]	=>  Location: PIN_C6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- DMEMOUT[12]	=>  Location: PIN_M7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- DMEMOUT[11]	=>  Location: PIN_F3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- DMEMOUT[10]	=>  Location: PIN_A3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- DMEMOUT[9]	=>  Location: PIN_K1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- DMEMOUT[8]	=>  Location: PIN_M8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- DMEMOUT[7]	=>  Location: PIN_D2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- DMEMOUT[6]	=>  Location: PIN_D1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- DMEMOUT[5]	=>  Location: PIN_L5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- DMEMOUT[4]	=>  Location: PIN_D7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- DMEMOUT[3]	=>  Location: PIN_E7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- DMEMOUT[2]	=>  Location: PIN_D6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- DMEMOUT[1]	=>  Location: PIN_K8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- DMEMOUT[0]	=>  Location: PIN_K4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- JOUT[15]	=>  Location: PIN_G6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- JOUT[14]	=>  Location: PIN_H3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- JOUT[13]	=>  Location: PIN_AE6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- JOUT[12]	=>  Location: PIN_E10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- JOUT[11]	=>  Location: PIN_AE7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- JOUT[10]	=>  Location: PIN_AG6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- JOUT[9]	=>  Location: PIN_AB9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- JOUT[8]	=>  Location: PIN_F10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- JOUT[7]	=>  Location: PIN_AG8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- JOUT[6]	=>  Location: PIN_AG4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- JOUT[5]	=>  Location: PIN_G4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- JOUT[4]	=>  Location: PIN_U8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- JOUT[3]	=>  Location: PIN_D8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- JOUT[2]	=>  Location: PIN_G5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- JOUT[1]	=>  Location: PIN_AD10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- JOUT[0]	=>  Location: PIN_AC7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- JUMPMUX_OUT[15]	=>  Location: PIN_H6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- JUMPMUX_OUT[14]	=>  Location: PIN_E1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- JUMPMUX_OUT[13]	=>  Location: PIN_AD5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- JUMPMUX_OUT[12]	=>  Location: PIN_AD8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- JUMPMUX_OUT[11]	=>  Location: PIN_W4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- JUMPMUX_OUT[10]	=>  Location: PIN_AF10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- JUMPMUX_OUT[9]	=>  Location: PIN_W8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- JUMPMUX_OUT[8]	=>  Location: PIN_H12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- JUMPMUX_OUT[7]	=>  Location: PIN_F1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- JUMPMUX_OUT[6]	=>  Location: PIN_AB6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- JUMPMUX_OUT[5]	=>  Location: PIN_AD2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- JUMPMUX_OUT[4]	=>  Location: PIN_AB7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- JUMPMUX_OUT[3]	=>  Location: PIN_C9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- JUMPMUX_OUT[2]	=>  Location: PIN_T4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- JUMPMUX_OUT[1]	=>  Location: PIN_A6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- JUMPMUX_OUT[0]	=>  Location: PIN_AA10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- PCP2[15]	=>  Location: PIN_U4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- PCP2[14]	=>  Location: PIN_H4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- PCP2[13]	=>  Location: PIN_AF2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- PCP2[12]	=>  Location: PIN_AH10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- PCP2[11]	=>  Location: PIN_AG10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- PCP2[10]	=>  Location: PIN_AF8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- PCP2[9]	=>  Location: PIN_J5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- PCP2[8]	=>  Location: PIN_G10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- PCP2[7]	=>  Location: PIN_G1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- PCP2[6]	=>  Location: PIN_AA8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- PCP2[5]	=>  Location: PIN_D9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- PCP2[4]	=>  Location: PIN_AC8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- PCP2[3]	=>  Location: PIN_V7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- PCP2[2]	=>  Location: PIN_C7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- PCP2[1]	=>  Location: PIN_AC3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- PCP2[0]	=>  Location: PIN_AH7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- REG1OUT[15]	=>  Location: PIN_M3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- REG1OUT[14]	=>  Location: PIN_Y6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- REG1OUT[13]	=>  Location: PIN_AD3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- REG1OUT[12]	=>  Location: PIN_U7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- REG1OUT[11]	=>  Location: PIN_AA4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- REG1OUT[10]	=>  Location: PIN_A7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- REG1OUT[9]	=>  Location: PIN_G9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- REG1OUT[8]	=>  Location: PIN_U6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- REG1OUT[7]	=>  Location: PIN_T8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- REG1OUT[6]	=>  Location: PIN_T3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- REG1OUT[5]	=>  Location: PIN_M5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- REG1OUT[4]	=>  Location: PIN_AE9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- REG1OUT[3]	=>  Location: PIN_AE2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- REG1OUT[2]	=>  Location: PIN_AB3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- REG1OUT[1]	=>  Location: PIN_AH8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- REG1OUT[0]	=>  Location: PIN_AF6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- REG2_OUT[15]	=>  Location: PIN_R3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- REG2_OUT[14]	=>  Location: PIN_T7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- REG2_OUT[13]	=>  Location: PIN_W2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- REG2_OUT[12]	=>  Location: PIN_W1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- REG2_OUT[11]	=>  Location: PIN_R1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- REG2_OUT[10]	=>  Location: PIN_R4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- REG2_OUT[9]	=>  Location: PIN_R6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- REG2_OUT[8]	=>  Location: PIN_R5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- REG2_OUT[7]	=>  Location: PIN_AB1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- REG2_OUT[6]	=>  Location: PIN_V3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- REG2_OUT[5]	=>  Location: PIN_AB2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- REG2_OUT[4]	=>  Location: PIN_Y4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- REG2_OUT[3]	=>  Location: PIN_V1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- REG2_OUT[2]	=>  Location: PIN_U5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- REG2_OUT[1]	=>  Location: PIN_AF3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- REG2_OUT[0]	=>  Location: PIN_V2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- RST	=>  Location: PIN_J28,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- CLK	=>  Location: PIN_J1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- PCEN	=>  Location: PIN_J27,	 I/O Standard: 2.5 V,	 Current Strength: Default


ARCHITECTURE structure OF m16dp IS
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
SIGNAL ww_RegWrite : std_logic;
SIGNAL ww_CLK : std_logic;
SIGNAL ww_ALUCon : std_logic;
SIGNAL ww_ALUSrc : std_logic;
SIGNAL ww_EXTEN_OUT : std_logic_vector(15 DOWNTO 0);
SIGNAL ww_Branch : std_logic;
SIGNAL ww_PCEN : std_logic;
SIGNAL ww_Jump : std_logic;
SIGNAL ww_RST : std_logic;
SIGNAL ww_ALUOp : std_logic_vector(2 DOWNTO 0);
SIGNAL ww_W_REG : std_logic_vector(15 DOWNTO 0);
SIGNAL ww_MemtoReg : std_logic;
SIGNAL ww_ALUOUT : std_logic_vector(15 DOWNTO 0);
SIGNAL ww_MemWrite : std_logic;
SIGNAL ww_MemRead : std_logic;
SIGNAL ww_INS_OUT : std_logic_vector(15 DOWNTO 0);
SIGNAL ww_BRADDER_OUT : std_logic_vector(15 DOWNTO 0);
SIGNAL ww_DMEMOUT : std_logic_vector(15 DOWNTO 0);
SIGNAL ww_JOUT : std_logic_vector(15 DOWNTO 0);
SIGNAL ww_JUMPMUX_OUT : std_logic_vector(15 DOWNTO 0);
SIGNAL ww_PCP2 : std_logic_vector(15 DOWNTO 0);
SIGNAL ww_REG1OUT : std_logic_vector(15 DOWNTO 0);
SIGNAL ww_REG2_OUT : std_logic_vector(15 DOWNTO 0);
SIGNAL \inst1|DOUT[15]~53clkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \inst1|DOUT[15]~52clkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \CLK~inputclkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \DMEMOUT[15]~output_o\ : std_logic;
SIGNAL \DMEMOUT[14]~output_o\ : std_logic;
SIGNAL \DMEMOUT[13]~output_o\ : std_logic;
SIGNAL \DMEMOUT[12]~output_o\ : std_logic;
SIGNAL \DMEMOUT[11]~output_o\ : std_logic;
SIGNAL \DMEMOUT[10]~output_o\ : std_logic;
SIGNAL \DMEMOUT[9]~output_o\ : std_logic;
SIGNAL \DMEMOUT[8]~output_o\ : std_logic;
SIGNAL \DMEMOUT[7]~output_o\ : std_logic;
SIGNAL \DMEMOUT[6]~output_o\ : std_logic;
SIGNAL \DMEMOUT[5]~output_o\ : std_logic;
SIGNAL \DMEMOUT[4]~output_o\ : std_logic;
SIGNAL \DMEMOUT[3]~output_o\ : std_logic;
SIGNAL \DMEMOUT[2]~output_o\ : std_logic;
SIGNAL \DMEMOUT[1]~output_o\ : std_logic;
SIGNAL \DMEMOUT[0]~output_o\ : std_logic;
SIGNAL \RegDst~output_o\ : std_logic;
SIGNAL \RegWrite~output_o\ : std_logic;
SIGNAL \ALUCon~output_o\ : std_logic;
SIGNAL \ALUSrc~output_o\ : std_logic;
SIGNAL \EXTEN_OUT[15]~output_o\ : std_logic;
SIGNAL \EXTEN_OUT[14]~output_o\ : std_logic;
SIGNAL \EXTEN_OUT[13]~output_o\ : std_logic;
SIGNAL \EXTEN_OUT[12]~output_o\ : std_logic;
SIGNAL \EXTEN_OUT[11]~output_o\ : std_logic;
SIGNAL \EXTEN_OUT[10]~output_o\ : std_logic;
SIGNAL \EXTEN_OUT[9]~output_o\ : std_logic;
SIGNAL \EXTEN_OUT[8]~output_o\ : std_logic;
SIGNAL \EXTEN_OUT[7]~output_o\ : std_logic;
SIGNAL \EXTEN_OUT[6]~output_o\ : std_logic;
SIGNAL \EXTEN_OUT[5]~output_o\ : std_logic;
SIGNAL \EXTEN_OUT[4]~output_o\ : std_logic;
SIGNAL \EXTEN_OUT[3]~output_o\ : std_logic;
SIGNAL \EXTEN_OUT[2]~output_o\ : std_logic;
SIGNAL \EXTEN_OUT[1]~output_o\ : std_logic;
SIGNAL \EXTEN_OUT[0]~output_o\ : std_logic;
SIGNAL \Branch~output_o\ : std_logic;
SIGNAL \Jump~output_o\ : std_logic;
SIGNAL \ALUOp[2]~output_o\ : std_logic;
SIGNAL \ALUOp[1]~output_o\ : std_logic;
SIGNAL \ALUOp[0]~output_o\ : std_logic;
SIGNAL \W_REG[15]~output_o\ : std_logic;
SIGNAL \W_REG[14]~output_o\ : std_logic;
SIGNAL \W_REG[13]~output_o\ : std_logic;
SIGNAL \W_REG[12]~output_o\ : std_logic;
SIGNAL \W_REG[11]~output_o\ : std_logic;
SIGNAL \W_REG[10]~output_o\ : std_logic;
SIGNAL \W_REG[9]~output_o\ : std_logic;
SIGNAL \W_REG[8]~output_o\ : std_logic;
SIGNAL \W_REG[7]~output_o\ : std_logic;
SIGNAL \W_REG[6]~output_o\ : std_logic;
SIGNAL \W_REG[5]~output_o\ : std_logic;
SIGNAL \W_REG[4]~output_o\ : std_logic;
SIGNAL \W_REG[3]~output_o\ : std_logic;
SIGNAL \W_REG[2]~output_o\ : std_logic;
SIGNAL \W_REG[1]~output_o\ : std_logic;
SIGNAL \W_REG[0]~output_o\ : std_logic;
SIGNAL \MemtoReg~output_o\ : std_logic;
SIGNAL \ALUOUT[15]~output_o\ : std_logic;
SIGNAL \ALUOUT[14]~output_o\ : std_logic;
SIGNAL \ALUOUT[13]~output_o\ : std_logic;
SIGNAL \ALUOUT[12]~output_o\ : std_logic;
SIGNAL \ALUOUT[11]~output_o\ : std_logic;
SIGNAL \ALUOUT[10]~output_o\ : std_logic;
SIGNAL \ALUOUT[9]~output_o\ : std_logic;
SIGNAL \ALUOUT[8]~output_o\ : std_logic;
SIGNAL \ALUOUT[7]~output_o\ : std_logic;
SIGNAL \ALUOUT[6]~output_o\ : std_logic;
SIGNAL \ALUOUT[5]~output_o\ : std_logic;
SIGNAL \ALUOUT[4]~output_o\ : std_logic;
SIGNAL \ALUOUT[3]~output_o\ : std_logic;
SIGNAL \ALUOUT[2]~output_o\ : std_logic;
SIGNAL \ALUOUT[1]~output_o\ : std_logic;
SIGNAL \ALUOUT[0]~output_o\ : std_logic;
SIGNAL \MemWrite~output_o\ : std_logic;
SIGNAL \MemRead~output_o\ : std_logic;
SIGNAL \INS_OUT[15]~output_o\ : std_logic;
SIGNAL \INS_OUT[14]~output_o\ : std_logic;
SIGNAL \INS_OUT[13]~output_o\ : std_logic;
SIGNAL \INS_OUT[12]~output_o\ : std_logic;
SIGNAL \INS_OUT[11]~output_o\ : std_logic;
SIGNAL \INS_OUT[10]~output_o\ : std_logic;
SIGNAL \INS_OUT[9]~output_o\ : std_logic;
SIGNAL \INS_OUT[8]~output_o\ : std_logic;
SIGNAL \INS_OUT[7]~output_o\ : std_logic;
SIGNAL \INS_OUT[6]~output_o\ : std_logic;
SIGNAL \INS_OUT[5]~output_o\ : std_logic;
SIGNAL \INS_OUT[4]~output_o\ : std_logic;
SIGNAL \INS_OUT[3]~output_o\ : std_logic;
SIGNAL \INS_OUT[2]~output_o\ : std_logic;
SIGNAL \INS_OUT[1]~output_o\ : std_logic;
SIGNAL \INS_OUT[0]~output_o\ : std_logic;
SIGNAL \BRADDER_OUT[15]~output_o\ : std_logic;
SIGNAL \BRADDER_OUT[14]~output_o\ : std_logic;
SIGNAL \BRADDER_OUT[13]~output_o\ : std_logic;
SIGNAL \BRADDER_OUT[12]~output_o\ : std_logic;
SIGNAL \BRADDER_OUT[11]~output_o\ : std_logic;
SIGNAL \BRADDER_OUT[10]~output_o\ : std_logic;
SIGNAL \BRADDER_OUT[9]~output_o\ : std_logic;
SIGNAL \BRADDER_OUT[8]~output_o\ : std_logic;
SIGNAL \BRADDER_OUT[7]~output_o\ : std_logic;
SIGNAL \BRADDER_OUT[6]~output_o\ : std_logic;
SIGNAL \BRADDER_OUT[5]~output_o\ : std_logic;
SIGNAL \BRADDER_OUT[4]~output_o\ : std_logic;
SIGNAL \BRADDER_OUT[3]~output_o\ : std_logic;
SIGNAL \BRADDER_OUT[2]~output_o\ : std_logic;
SIGNAL \BRADDER_OUT[1]~output_o\ : std_logic;
SIGNAL \BRADDER_OUT[0]~output_o\ : std_logic;
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
SIGNAL \REG1OUT[15]~output_o\ : std_logic;
SIGNAL \REG1OUT[14]~output_o\ : std_logic;
SIGNAL \REG1OUT[13]~output_o\ : std_logic;
SIGNAL \REG1OUT[12]~output_o\ : std_logic;
SIGNAL \REG1OUT[11]~output_o\ : std_logic;
SIGNAL \REG1OUT[10]~output_o\ : std_logic;
SIGNAL \REG1OUT[9]~output_o\ : std_logic;
SIGNAL \REG1OUT[8]~output_o\ : std_logic;
SIGNAL \REG1OUT[7]~output_o\ : std_logic;
SIGNAL \REG1OUT[6]~output_o\ : std_logic;
SIGNAL \REG1OUT[5]~output_o\ : std_logic;
SIGNAL \REG1OUT[4]~output_o\ : std_logic;
SIGNAL \REG1OUT[3]~output_o\ : std_logic;
SIGNAL \REG1OUT[2]~output_o\ : std_logic;
SIGNAL \REG1OUT[1]~output_o\ : std_logic;
SIGNAL \REG1OUT[0]~output_o\ : std_logic;
SIGNAL \REG2_OUT[15]~output_o\ : std_logic;
SIGNAL \REG2_OUT[14]~output_o\ : std_logic;
SIGNAL \REG2_OUT[13]~output_o\ : std_logic;
SIGNAL \REG2_OUT[12]~output_o\ : std_logic;
SIGNAL \REG2_OUT[11]~output_o\ : std_logic;
SIGNAL \REG2_OUT[10]~output_o\ : std_logic;
SIGNAL \REG2_OUT[9]~output_o\ : std_logic;
SIGNAL \REG2_OUT[8]~output_o\ : std_logic;
SIGNAL \REG2_OUT[7]~output_o\ : std_logic;
SIGNAL \REG2_OUT[6]~output_o\ : std_logic;
SIGNAL \REG2_OUT[5]~output_o\ : std_logic;
SIGNAL \REG2_OUT[4]~output_o\ : std_logic;
SIGNAL \REG2_OUT[3]~output_o\ : std_logic;
SIGNAL \REG2_OUT[2]~output_o\ : std_logic;
SIGNAL \REG2_OUT[1]~output_o\ : std_logic;
SIGNAL \REG2_OUT[0]~output_o\ : std_logic;
SIGNAL \CLK~input_o\ : std_logic;
SIGNAL \CLK~inputclkctrl_outclk\ : std_logic;
SIGNAL \inst4|inst1|dec|dcd_0|D[5]~1_combout\ : std_logic;
SIGNAL \RST~input_o\ : std_logic;
SIGNAL \inst4|inst1|data_out[4]~5_combout\ : std_logic;
SIGNAL \inst4|inst1|INS_OUT[4]~7_combout\ : std_logic;
SIGNAL \inst4|inst1|dec|dcd_0|D[2]~0_combout\ : std_logic;
SIGNAL \inst4|inst1|INS_OUT[3]~8_combout\ : std_logic;
SIGNAL \inst4|inst1|data_out[2]~6_combout\ : std_logic;
SIGNAL \inst4|inst1|INS_OUT[2]~14_combout\ : std_logic;
SIGNAL \inst4|inst3|add_1|C[3]~1_combout\ : std_logic;
SIGNAL \inst4|inst2|alu0|alu0|adder|C~0_combout\ : std_logic;
SIGNAL \inst4|inst3|add_1|C4~0_combout\ : std_logic;
SIGNAL \inst4|inst2|alu0|alu0|adder|COUT~0_combout\ : std_logic;
SIGNAL \inst4|inst7|OUT16B[4]~15_combout\ : std_logic;
SIGNAL \PCEN~input_o\ : std_logic;
SIGNAL \inst4|inst3|add_2|C[1]~0_combout\ : std_logic;
SIGNAL \inst4|inst2|alu0|alu1|adder|C~0_combout\ : std_logic;
SIGNAL \inst4|inst1|INS_OUT[5]~6_combout\ : std_logic;
SIGNAL \inst4|inst7|OUT16B[5]~14_combout\ : std_logic;
SIGNAL \inst4|inst1|data_out[7]~0_combout\ : std_logic;
SIGNAL \inst4|inst1|INS_OUT[14]~3_combout\ : std_logic;
SIGNAL \inst4|inst1|data_out[9]~3_combout\ : std_logic;
SIGNAL \inst4|inst1|data_out[12]~4_combout\ : std_logic;
SIGNAL \inst4|inst1|INS_OUT[12]~5_combout\ : std_logic;
SIGNAL \inst|Mux9~0_combout\ : std_logic;
SIGNAL \inst2|inst3|DOUT[1]~4_combout\ : std_logic;
SIGNAL \inst|Mux5~0_combout\ : std_logic;
SIGNAL \inst2|inst2|OUT16B[0]~5_combout\ : std_logic;
SIGNAL \inst2|inst3|DOUT[2]~3_combout\ : std_logic;
SIGNAL \inst2|inst|mux_1|mux_1|mux_generate:2:mux_i|Mux2~0_combout\ : std_logic;
SIGNAL \inst|Mux7~8_combout\ : std_logic;
SIGNAL \inst4|inst1|data_out[6]~8_combout\ : std_logic;
SIGNAL \inst|Mux0~0_combout\ : std_logic;
SIGNAL \inst2|inst5|DOUT[0]~2_combout\ : std_logic;
SIGNAL \inst|Mux1~0_combout\ : std_logic;
SIGNAL \inst4|inst1|data_out[7]~9_combout\ : std_logic;
SIGNAL \inst4|inst1|data_out[7]~10_combout\ : std_logic;
SIGNAL \inst2|inst5|DOUT[1]~1_combout\ : std_logic;
SIGNAL \inst4|inst1|dec|dcd_0|D[4]~2_combout\ : std_logic;
SIGNAL \inst4|inst1|data_out[5]~11_combout\ : std_logic;
SIGNAL \inst2|inst5|DOUT[2]~0_combout\ : std_logic;
SIGNAL \inst2|inst|add_reg1_dcd|Mux3~3_combout\ : std_logic;
SIGNAL \inst2|inst|add_reg1_dcd|Mux3~2_combout\ : std_logic;
SIGNAL \inst2|inst|mux_2|mux_1|mux_generate:0:mux_i|Mux0~0_combout\ : std_logic;
SIGNAL \inst2|inst|mux_2|mux_1|mux_generate:0:mux_i|Mux3~2_combout\ : std_logic;
SIGNAL \inst2|inst|reg_gen:4:regs|reg_1|y[3]~feeder_combout\ : std_logic;
SIGNAL \inst2|inst|add_reg1_dcd|Mux3~5_combout\ : std_logic;
SIGNAL \inst2|inst|mux_2|mux_1|mux_generate:0:mux_i|Mux3~0_combout\ : std_logic;
SIGNAL \inst2|inst|reg_gen:5:regs|reg_1|y[3]~feeder_combout\ : std_logic;
SIGNAL \inst2|inst|add_reg1_dcd|Mux3~4_combout\ : std_logic;
SIGNAL \inst2|inst|mux_2|mux_1|mux_generate:0:mux_i|Mux3~1_combout\ : std_logic;
SIGNAL \inst2|inst|mux_2|mux_1|mux_generate:0:mux_i|Mux0~1_combout\ : std_logic;
SIGNAL \inst2|inst|mux_2|mux_1|mux_generate:0:mux_i|Mux0~2_combout\ : std_logic;
SIGNAL \inst2|inst|mux_2|mux_1|mux_generate:0:mux_i|Mux0~3_combout\ : std_logic;
SIGNAL \inst1|reg_gen:30:regs|y[3]~feeder_combout\ : std_logic;
SIGNAL \inst2|inst|mux_2|mux_1|mux_generate:0:mux_i|Mux3~4_combout\ : std_logic;
SIGNAL \inst2|inst|mux_2|mux_1|mux_generate:0:mux_i|Mux3~5_combout\ : std_logic;
SIGNAL \inst2|inst|mux_2|mux_1|mux_generate:0:mux_i|Mux3~3_combout\ : std_logic;
SIGNAL \inst2|inst2|OUT16B[0]~6_combout\ : std_logic;
SIGNAL \inst2|inst2|OUT16B[0]~18_combout\ : std_logic;
SIGNAL \inst2|inst1|alu0|mux|Mux3~0_combout\ : std_logic;
SIGNAL \inst|Mux6~0_combout\ : std_logic;
SIGNAL \inst1|dec_to_en[27]~3_combout\ : std_logic;
SIGNAL \inst1|DOUT[12]~24_combout\ : std_logic;
SIGNAL \inst1|DOUT[12]~34_combout\ : std_logic;
SIGNAL \inst1|DOUT[3]~203_combout\ : std_logic;
SIGNAL \inst1|DOUT[15]~259_combout\ : std_logic;
SIGNAL \inst1|dcd|dcd_3|dcd|Mux7~4_combout\ : std_logic;
SIGNAL \inst1|dcd|dcd_3|dcd|Mux7~3_combout\ : std_logic;
SIGNAL \inst1|DOUT[15]~51_combout\ : std_logic;
SIGNAL \inst1|DOUT[15]~52_combout\ : std_logic;
SIGNAL \inst1|DOUT[15]~53_combout\ : std_logic;
SIGNAL \inst1|DOUT[15]_2612~combout\ : std_logic;
SIGNAL \inst2|inst|add_reg1_dcd|Mux3~0_combout\ : std_logic;
SIGNAL \inst2|inst|reg_gen:1:regs|reg_2|y[2]~feeder_combout\ : std_logic;
SIGNAL \inst2|inst|add_reg1_dcd|Mux3~1_combout\ : std_logic;
SIGNAL \inst2|inst|mux_1|mux_1|mux_generate:2:mux_i|Mux1~0_combout\ : std_logic;
SIGNAL \inst2|inst|mux_1|mux_1|mux_generate:2:mux_i|Mux1~1_combout\ : std_logic;
SIGNAL \inst1|DOUT[12]~258_combout\ : std_logic;
SIGNAL \inst1|DOUT[12]~49_combout\ : std_logic;
SIGNAL \inst1|reg_gen:30:regs|y[1]~feeder_combout\ : std_logic;
SIGNAL \inst1|DOUT[3]~260_combout\ : std_logic;
SIGNAL \inst1|reg_gen:10:regs|y[1]~feeder_combout\ : std_logic;
SIGNAL \inst1|dcd|dcd_3|dcd|Mux7~5_combout\ : std_logic;
SIGNAL \inst1|dcd|dcd_3|dcd|Mux7~6_combout\ : std_logic;
SIGNAL \inst1|dec_to_en[11]~0_combout\ : std_logic;
SIGNAL \inst1|reg_gen:26:regs|y[1]~feeder_combout\ : std_logic;
SIGNAL \inst1|DOUT[9]~166_combout\ : std_logic;
SIGNAL \inst1|dec_to_en[17]~1_combout\ : std_logic;
SIGNAL \inst1|reg_gen:24:regs|y[1]~feeder_combout\ : std_logic;
SIGNAL \inst1|dec_to_en[24]~4_combout\ : std_logic;
SIGNAL \inst1|dec_to_en[24]~5_combout\ : std_logic;
SIGNAL \inst1|dec_to_en[8]~6_combout\ : std_logic;
SIGNAL \inst1|dec_to_en[8]~7_combout\ : std_logic;
SIGNAL \inst1|DOUT[9]~163_combout\ : std_logic;
SIGNAL \inst1|DOUT[1]~243_combout\ : std_logic;
SIGNAL \inst1|DOUT[1]~244_combout\ : std_logic;
SIGNAL \inst1|dec_to_en[7]~2_combout\ : std_logic;
SIGNAL \inst1|DOUT[9]~159_combout\ : std_logic;
SIGNAL \inst1|DOUT[9]~160_combout\ : std_logic;
SIGNAL \inst1|reg_gen:11:regs|y[1]~feeder_combout\ : std_logic;
SIGNAL \inst1|reg_gen:27:regs|y[1]~feeder_combout\ : std_logic;
SIGNAL \inst1|DOUT[9]~170_combout\ : std_logic;
SIGNAL \inst1|DOUT[9]~168_combout\ : std_logic;
SIGNAL \inst1|DOUT[9]~169_combout\ : std_logic;
SIGNAL \inst1|DOUT[9]~171_combout\ : std_logic;
SIGNAL \inst1|DOUT[12]~48_combout\ : std_logic;
SIGNAL \inst1|reg_gen:23:regs|y[1]~feeder_combout\ : std_logic;
SIGNAL \inst1|DOUT[9]~156_combout\ : std_logic;
SIGNAL \inst1|DOUT[3]~198_combout\ : std_logic;
SIGNAL \inst1|reg_gen:13:regs|y[1]~feeder_combout\ : std_logic;
SIGNAL \inst1|DOUT[9]~157_combout\ : std_logic;
SIGNAL \inst1|DOUT[9]~158_combout\ : std_logic;
SIGNAL \inst1|reg_gen:12:regs|y[1]~feeder_combout\ : std_logic;
SIGNAL \inst1|dcd|dcd_3|dcd|Mux7~2_combout\ : std_logic;
SIGNAL \inst1|reg_gen:20:regs|y[1]~feeder_combout\ : std_logic;
SIGNAL \inst1|reg_gen:4:regs|y[1]~feeder_combout\ : std_logic;
SIGNAL \inst1|DOUT[9]~164_combout\ : std_logic;
SIGNAL \inst1|DOUT[9]~165_combout\ : std_logic;
SIGNAL \inst1|DOUT[1]~245_combout\ : std_logic;
SIGNAL \inst1|DOUT[1]~246_combout\ : std_logic;
SIGNAL \inst1|DOUT[1]~247_combout\ : std_logic;
SIGNAL \inst1|DOUT[1]~248_combout\ : std_logic;
SIGNAL \inst1|DOUT[1]~249_combout\ : std_logic;
SIGNAL \inst1|DOUT[15]~52clkctrl_outclk\ : std_logic;
SIGNAL \inst1|DOUT[1]$latch~0_combout\ : std_logic;
SIGNAL \inst1|comb~3_combout\ : std_logic;
SIGNAL \inst1|DOUT[1]$latch~combout\ : std_logic;
SIGNAL \inst3|OUT16B[1]~14_combout\ : std_logic;
SIGNAL \inst2|inst|reg_gen:4:regs|reg_1|y[1]~feeder_combout\ : std_logic;
SIGNAL \inst2|inst|mux_2|mux_1|mux_generate:0:mux_i|Mux2~1_combout\ : std_logic;
SIGNAL \inst2|inst|mux_2|mux_1|mux_generate:0:mux_i|Mux2~2_combout\ : std_logic;
SIGNAL \inst2|inst|reg_gen:3:regs|reg_1|y[1]~feeder_combout\ : std_logic;
SIGNAL \inst2|inst|mux_2|mux_1|mux_generate:0:mux_i|Mux2~0_combout\ : std_logic;
SIGNAL \inst2|inst|mux_2|mux_1|mux_generate:0:mux_i|Mux2~3_combout\ : std_logic;
SIGNAL \inst1|dec_to_en[16]~8_combout\ : std_logic;
SIGNAL \inst1|dec_to_en[16]~9_combout\ : std_logic;
SIGNAL \inst1|DOUT[12]~32_combout\ : std_logic;
SIGNAL \inst1|DOUT[12]~37_combout\ : std_logic;
SIGNAL \inst1|DOUT[12]~39_combout\ : std_logic;
SIGNAL \inst1|DOUT[9]~167_combout\ : std_logic;
SIGNAL \inst1|DOUT[9]~172_combout\ : std_logic;
SIGNAL \inst1|DOUT[9]~173_combout\ : std_logic;
SIGNAL \inst1|DOUT[12]~27_combout\ : std_logic;
SIGNAL \inst1|DOUT[12]~25_combout\ : std_logic;
SIGNAL \inst1|DOUT[9]~161_combout\ : std_logic;
SIGNAL \inst1|DOUT[9]~162_combout\ : std_logic;
SIGNAL \inst1|DOUT[9]~174_combout\ : std_logic;
SIGNAL \inst1|DOUT[9]~175_combout\ : std_logic;
SIGNAL \inst1|DOUT[15]~53clkctrl_outclk\ : std_logic;
SIGNAL \inst1|DOUT[9]$latch~0_combout\ : std_logic;
SIGNAL \inst1|dcd|dcd_0|D[1]~1_combout\ : std_logic;
SIGNAL \inst1|dcd|dcd_0|D[0]~0_combout\ : std_logic;
SIGNAL \inst1|comb~0_combout\ : std_logic;
SIGNAL \inst1|DOUT[9]$latch~combout\ : std_logic;
SIGNAL \inst2|inst|reg_gen:1:regs|reg_2|y[1]~feeder_combout\ : std_logic;
SIGNAL \inst2|inst|mux_1|mux_1|mux_generate:2:mux_i|Mux2~1_combout\ : std_logic;
SIGNAL \inst2|inst|mux_1|mux_1|mux_generate:2:mux_i|Mux2~2_combout\ : std_logic;
SIGNAL \inst2|inst|reg_gen:5:regs|reg_2|y[0]~feeder_combout\ : std_logic;
SIGNAL \inst2|inst|mux_2|mux_1|mux_generate:2:mux_i|Mux3~1_combout\ : std_logic;
SIGNAL \inst2|inst|reg_gen:4:regs|reg_2|y[0]~feeder_combout\ : std_logic;
SIGNAL \inst2|inst|mux_2|mux_1|mux_generate:2:mux_i|Mux3~2_combout\ : std_logic;
SIGNAL \inst2|inst|reg_gen:3:regs|reg_2|y[0]~feeder_combout\ : std_logic;
SIGNAL \inst2|inst|reg_gen:2:regs|reg_2|y[0]~feeder_combout\ : std_logic;
SIGNAL \inst2|inst|mux_2|mux_1|mux_generate:2:mux_i|Mux3~0_combout\ : std_logic;
SIGNAL \inst2|inst|mux_2|mux_1|mux_generate:2:mux_i|Mux3~3_combout\ : std_logic;
SIGNAL \inst1|reg_gen:31:regs|y[0]~feeder_combout\ : std_logic;
SIGNAL \inst2|inst|mux_2|mux_1|mux_generate:0:mux_i|Mux3~7_combout\ : std_logic;
SIGNAL \inst1|reg_gen:8:regs|y[0]~feeder_combout\ : std_logic;
SIGNAL \inst1|DOUT[8]~176_combout\ : std_logic;
SIGNAL \inst1|reg_gen:21:regs|y[0]~feeder_combout\ : std_logic;
SIGNAL \inst1|DOUT[8]~177_combout\ : std_logic;
SIGNAL \inst1|DOUT[8]~178_combout\ : std_logic;
SIGNAL \inst1|DOUT[8]~179_combout\ : std_logic;
SIGNAL \inst1|reg_gen:22:regs|y[0]~feeder_combout\ : std_logic;
SIGNAL \inst1|reg_gen:30:regs|y[0]~feeder_combout\ : std_logic;
SIGNAL \inst1|reg_gen:14:regs|y[0]~feeder_combout\ : std_logic;
SIGNAL \inst1|reg_gen:6:regs|y[0]~feeder_combout\ : std_logic;
SIGNAL \inst1|DOUT[8]~180_combout\ : std_logic;
SIGNAL \inst1|DOUT[8]~181_combout\ : std_logic;
SIGNAL \inst1|DOUT[8]~182_combout\ : std_logic;
SIGNAL \inst1|DOUT[8]~183_combout\ : std_logic;
SIGNAL \inst1|reg_gen:10:regs|y[0]~feeder_combout\ : std_logic;
SIGNAL \inst1|DOUT[8]~184_combout\ : std_logic;
SIGNAL \inst1|reg_gen:27:regs|y[0]~feeder_combout\ : std_logic;
SIGNAL \inst1|DOUT[8]~190_combout\ : std_logic;
SIGNAL \inst1|DOUT[8]~188_combout\ : std_logic;
SIGNAL \inst1|DOUT[8]~189_combout\ : std_logic;
SIGNAL \inst1|DOUT[8]~191_combout\ : std_logic;
SIGNAL \inst1|reg_gen:12:regs|y[0]~feeder_combout\ : std_logic;
SIGNAL \inst1|reg_gen:20:regs|y[0]~feeder_combout\ : std_logic;
SIGNAL \inst1|reg_gen:4:regs|y[0]~feeder_combout\ : std_logic;
SIGNAL \inst1|DOUT[8]~185_combout\ : std_logic;
SIGNAL \inst1|DOUT[8]~186_combout\ : std_logic;
SIGNAL \inst1|DOUT[8]~187_combout\ : std_logic;
SIGNAL \inst1|DOUT[8]~192_combout\ : std_logic;
SIGNAL \inst1|DOUT[8]~193_combout\ : std_logic;
SIGNAL \inst1|DOUT[8]~194_combout\ : std_logic;
SIGNAL \inst1|DOUT[8]~195_combout\ : std_logic;
SIGNAL \inst1|DOUT[8]$latch~0_combout\ : std_logic;
SIGNAL \inst1|DOUT[8]$latch~combout\ : std_logic;
SIGNAL \inst2|inst|reg_gen:6:regs|reg_1|y[6]~feeder_combout\ : std_logic;
SIGNAL \inst2|inst|mux_1|mux_1|mux_generate:1:mux_i|Mux1~0_combout\ : std_logic;
SIGNAL \inst2|inst|mux_1|mux_1|mux_generate:1:mux_i|Mux1~1_combout\ : std_logic;
SIGNAL \inst1|DOUT[7]~206_combout\ : std_logic;
SIGNAL \inst1|reg_gen:30:regs|y[5]~feeder_combout\ : std_logic;
SIGNAL \inst1|reg_gen:14:regs|y[5]~feeder_combout\ : std_logic;
SIGNAL \inst1|reg_gen:6:regs|y[5]~feeder_combout\ : std_logic;
SIGNAL \inst1|DOUT[13]~79_combout\ : std_logic;
SIGNAL \inst1|DOUT[13]~80_combout\ : std_logic;
SIGNAL \inst1|reg_gen:10:regs|y[5]~feeder_combout\ : std_logic;
SIGNAL \inst1|DOUT[13]~86_combout\ : std_logic;
SIGNAL \inst1|reg_gen:24:regs|y[5]~feeder_combout\ : std_logic;
SIGNAL \inst1|DOUT[13]~83_combout\ : std_logic;
SIGNAL \inst1|DOUT[5]~215_combout\ : std_logic;
SIGNAL \inst1|DOUT[5]~216_combout\ : std_logic;
SIGNAL \inst2|inst2|OUT16B[11]~10_combout\ : std_logic;
SIGNAL \inst2|inst|mux_1|mux_1|mux_generate:2:mux_i|Mux0~0_combout\ : std_logic;
SIGNAL \inst2|inst|mux_1|mux_1|mux_generate:2:mux_i|Mux0~1_combout\ : std_logic;
SIGNAL \inst2|inst1|alu2|adder|C4~0_combout\ : std_logic;
SIGNAL \inst2|inst1|alu3|mux|Mux3~0_combout\ : std_logic;
SIGNAL \inst2|inst|reg_gen:1:regs|reg_2|y[4]~feeder_combout\ : std_logic;
SIGNAL \inst2|inst|mux_1|mux_1|mux_generate:3:mux_i|Mux3~0_combout\ : std_logic;
SIGNAL \inst2|inst|mux_1|mux_1|mux_generate:3:mux_i|Mux3~1_combout\ : std_logic;
SIGNAL \inst2|inst1|alu3|mux|Mux3~1_combout\ : std_logic;
SIGNAL \inst1|reg_gen:31:regs|y[4]~feeder_combout\ : std_logic;
SIGNAL \inst1|reg_gen:30:regs|y[4]~feeder_combout\ : std_logic;
SIGNAL \inst1|reg_gen:22:regs|y[4]~feeder_combout\ : std_logic;
SIGNAL \inst1|DOUT[12]~100_combout\ : std_logic;
SIGNAL \inst1|DOUT[12]~101_combout\ : std_logic;
SIGNAL \inst1|reg_gen:26:regs|y[4]~feeder_combout\ : std_logic;
SIGNAL \inst1|DOUT[12]~104_combout\ : std_logic;
SIGNAL \inst1|reg_gen:24:regs|y[4]~feeder_combout\ : std_logic;
SIGNAL \inst1|reg_gen:8:regs|y[4]~feeder_combout\ : std_logic;
SIGNAL \inst1|DOUT[12]~96_combout\ : std_logic;
SIGNAL \inst1|DOUT[4]~222_combout\ : std_logic;
SIGNAL \inst1|DOUT[4]~223_combout\ : std_logic;
SIGNAL \inst1|reg_gen:27:regs|y[4]~feeder_combout\ : std_logic;
SIGNAL \inst1|reg_gen:11:regs|y[4]~feeder_combout\ : std_logic;
SIGNAL \inst1|DOUT[12]~110_combout\ : std_logic;
SIGNAL \inst1|DOUT[12]~108_combout\ : std_logic;
SIGNAL \inst1|DOUT[12]~109_combout\ : std_logic;
SIGNAL \inst1|DOUT[12]~111_combout\ : std_logic;
SIGNAL \inst1|reg_gen:21:regs|y[4]~feeder_combout\ : std_logic;
SIGNAL \inst1|DOUT[12]~97_combout\ : std_logic;
SIGNAL \inst1|DOUT[12]~98_combout\ : std_logic;
SIGNAL \inst1|DOUT[12]~99_combout\ : std_logic;
SIGNAL \inst1|DOUT[4]~224_combout\ : std_logic;
SIGNAL \inst1|reg_gen:15:regs|y[4]~feeder_combout\ : std_logic;
SIGNAL \inst1|reg_gen:20:regs|y[4]~feeder_combout\ : std_logic;
SIGNAL \inst1|reg_gen:4:regs|y[4]~feeder_combout\ : std_logic;
SIGNAL \inst1|DOUT[12]~105_combout\ : std_logic;
SIGNAL \inst1|reg_gen:12:regs|y[4]~feeder_combout\ : std_logic;
SIGNAL \inst1|DOUT[12]~106_combout\ : std_logic;
SIGNAL \inst1|DOUT[4]~225_combout\ : std_logic;
SIGNAL \inst1|DOUT[4]~226_combout\ : std_logic;
SIGNAL \inst1|DOUT[4]~227_combout\ : std_logic;
SIGNAL \inst1|DOUT[4]~228_combout\ : std_logic;
SIGNAL \inst1|DOUT[4]$latch~combout\ : std_logic;
SIGNAL \inst3|OUT16B[4]~11_combout\ : std_logic;
SIGNAL \inst2|inst|reg_gen:2:regs|reg_1|y[4]~feeder_combout\ : std_logic;
SIGNAL \inst2|inst|reg_gen:3:regs|reg_1|y[4]~feeder_combout\ : std_logic;
SIGNAL \inst2|inst|mux_2|mux_1|mux_generate:1:mux_i|Mux3~0_combout\ : std_logic;
SIGNAL \inst2|inst|reg_gen:4:regs|reg_1|y[4]~feeder_combout\ : std_logic;
SIGNAL \inst2|inst|reg_gen:5:regs|reg_1|y[4]~feeder_combout\ : std_logic;
SIGNAL \inst2|inst|reg_gen:1:regs|reg_1|y[4]~feeder_combout\ : std_logic;
SIGNAL \inst2|inst|mux_2|mux_1|mux_generate:1:mux_i|Mux3~1_combout\ : std_logic;
SIGNAL \inst2|inst|mux_2|mux_1|mux_generate:1:mux_i|Mux3~2_combout\ : std_logic;
SIGNAL \inst2|inst|mux_2|mux_1|mux_generate:1:mux_i|Mux3~3_combout\ : std_logic;
SIGNAL \inst1|DOUT[12]~107_combout\ : std_logic;
SIGNAL \inst1|DOUT[12]~112_combout\ : std_logic;
SIGNAL \inst1|DOUT[12]~102_combout\ : std_logic;
SIGNAL \inst1|DOUT[12]~103_combout\ : std_logic;
SIGNAL \inst1|DOUT[12]~113_combout\ : std_logic;
SIGNAL \inst1|DOUT[12]~114_combout\ : std_logic;
SIGNAL \inst1|DOUT[12]~115_combout\ : std_logic;
SIGNAL \inst1|DOUT[12]$latch~combout\ : std_logic;
SIGNAL \inst3|OUT16B[12]~3_combout\ : std_logic;
SIGNAL \inst2|inst|mux_2|mux_1|mux_generate:3:mux_i|Mux3~0_combout\ : std_logic;
SIGNAL \inst2|inst|mux_2|mux_1|mux_generate:3:mux_i|Mux3~1_combout\ : std_logic;
SIGNAL \inst2|inst|reg_gen:5:regs|reg_2|y[4]~feeder_combout\ : std_logic;
SIGNAL \inst2|inst|mux_2|mux_1|mux_generate:3:mux_i|Mux3~2_combout\ : std_logic;
SIGNAL \inst2|inst|mux_2|mux_1|mux_generate:3:mux_i|Mux3~3_combout\ : std_logic;
SIGNAL \inst2|inst2|OUT16B[12]~15_combout\ : std_logic;
SIGNAL \inst2|inst1|alu3|adder|C[1]~0_combout\ : std_logic;
SIGNAL \inst2|inst2|OUT16B[13]~14_combout\ : std_logic;
SIGNAL \inst2|inst1|alu3|mux|Mux2~0_combout\ : std_logic;
SIGNAL \inst2|inst|mux_1|mux_1|mux_generate:3:mux_i|Mux2~0_combout\ : std_logic;
SIGNAL \inst2|inst|mux_1|mux_1|mux_generate:3:mux_i|Mux2~1_combout\ : std_logic;
SIGNAL \inst2|inst1|alu3|mux|Mux2~1_combout\ : std_logic;
SIGNAL \inst1|reg_gen:31:regs|y[5]~feeder_combout\ : std_logic;
SIGNAL \inst1|DOUT[13]~87_combout\ : std_logic;
SIGNAL \inst1|reg_gen:12:regs|y[5]~feeder_combout\ : std_logic;
SIGNAL \inst1|reg_gen:20:regs|y[5]~feeder_combout\ : std_logic;
SIGNAL \inst1|DOUT[13]~84_combout\ : std_logic;
SIGNAL \inst1|DOUT[13]~85_combout\ : std_logic;
SIGNAL \inst1|DOUT[13]~92_combout\ : std_logic;
SIGNAL \inst1|DOUT[13]~93_combout\ : std_logic;
SIGNAL \inst1|reg_gen:23:regs|y[5]~feeder_combout\ : std_logic;
SIGNAL \inst1|DOUT[13]~76_combout\ : std_logic;
SIGNAL \inst1|reg_gen:13:regs|y[5]~feeder_combout\ : std_logic;
SIGNAL \inst1|reg_gen:21:regs|y[5]~feeder_combout\ : std_logic;
SIGNAL \inst1|DOUT[13]~77_combout\ : std_logic;
SIGNAL \inst1|DOUT[13]~78_combout\ : std_logic;
SIGNAL \inst1|DOUT[13]~81_combout\ : std_logic;
SIGNAL \inst1|DOUT[13]~82_combout\ : std_logic;
SIGNAL \inst1|DOUT[13]~94_combout\ : std_logic;
SIGNAL \inst1|DOUT[13]~95_combout\ : std_logic;
SIGNAL \inst1|DOUT[13]$latch~combout\ : std_logic;
SIGNAL \inst3|OUT16B[13]~2_combout\ : std_logic;
SIGNAL \inst2|inst|reg_gen:3:regs|reg_2|y[5]~feeder_combout\ : std_logic;
SIGNAL \inst2|inst|reg_gen:2:regs|reg_2|y[5]~feeder_combout\ : std_logic;
SIGNAL \inst2|inst|mux_2|mux_1|mux_generate:3:mux_i|Mux2~0_combout\ : std_logic;
SIGNAL \inst2|inst|reg_gen:5:regs|reg_2|y[5]~feeder_combout\ : std_logic;
SIGNAL \inst2|inst|reg_gen:4:regs|reg_2|y[5]~feeder_combout\ : std_logic;
SIGNAL \inst2|inst|mux_2|mux_1|mux_generate:3:mux_i|Mux2~1_combout\ : std_logic;
SIGNAL \inst2|inst|mux_2|mux_1|mux_generate:3:mux_i|Mux2~2_combout\ : std_logic;
SIGNAL \inst2|inst|mux_2|mux_1|mux_generate:3:mux_i|Mux2~3_combout\ : std_logic;
SIGNAL \inst1|DOUT[13]~88_combout\ : std_logic;
SIGNAL \inst1|DOUT[13]~89_combout\ : std_logic;
SIGNAL \inst1|reg_gen:27:regs|y[5]~feeder_combout\ : std_logic;
SIGNAL \inst1|reg_gen:11:regs|y[5]~feeder_combout\ : std_logic;
SIGNAL \inst1|DOUT[13]~90_combout\ : std_logic;
SIGNAL \inst1|DOUT[13]~91_combout\ : std_logic;
SIGNAL \inst1|DOUT[5]~217_combout\ : std_logic;
SIGNAL \inst1|DOUT[5]~218_combout\ : std_logic;
SIGNAL \inst1|DOUT[5]~219_combout\ : std_logic;
SIGNAL \inst1|DOUT[5]~220_combout\ : std_logic;
SIGNAL \inst1|DOUT[5]~221_combout\ : std_logic;
SIGNAL \inst1|DOUT[5]$latch~combout\ : std_logic;
SIGNAL \inst2|inst|mux_1|mux_1|mux_generate:1:mux_i|Mux3~0_combout\ : std_logic;
SIGNAL \inst2|inst|mux_1|mux_1|mux_generate:1:mux_i|Mux3~1_combout\ : std_logic;
SIGNAL \inst2|inst2|OUT16B[4]~2_combout\ : std_logic;
SIGNAL \inst2|inst2|OUT16B[3]~3_combout\ : std_logic;
SIGNAL \inst2|inst|reg_gen:3:regs|reg_1|y[2]~feeder_combout\ : std_logic;
SIGNAL \inst2|inst|mux_2|mux_1|mux_generate:0:mux_i|Mux1~0_combout\ : std_logic;
SIGNAL \inst2|inst|reg_gen:4:regs|reg_1|y[2]~feeder_combout\ : std_logic;
SIGNAL \inst2|inst|mux_2|mux_1|mux_generate:0:mux_i|Mux1~1_combout\ : std_logic;
SIGNAL \inst2|inst|mux_2|mux_1|mux_generate:0:mux_i|Mux1~2_combout\ : std_logic;
SIGNAL \inst2|inst|mux_2|mux_1|mux_generate:0:mux_i|Mux1~3_combout\ : std_logic;
SIGNAL \inst2|inst2|OUT16B[2]~4_combout\ : std_logic;
SIGNAL \inst2|inst|mux_1|mux_1|mux_generate:0:mux_i|Mux2~0_combout\ : std_logic;
SIGNAL \inst2|inst|mux_1|mux_1|mux_generate:0:mux_i|Mux2~1_combout\ : std_logic;
SIGNAL \inst2|inst1|alu0|adder|C[2]~1_combout\ : std_logic;
SIGNAL \inst2|inst1|alu0|adder|C[3]~2_combout\ : std_logic;
SIGNAL \inst2|inst1|alu0|adder|C4~0_combout\ : std_logic;
SIGNAL \inst2|inst1|alu1|adder|C[1]~0_combout\ : std_logic;
SIGNAL \inst2|inst1|alu1|mux|Mux2~0_combout\ : std_logic;
SIGNAL \inst2|inst|reg_gen:6:regs|reg_1|y[5]~feeder_combout\ : std_logic;
SIGNAL \inst2|inst|reg_gen:1:regs|reg_1|y[5]~feeder_combout\ : std_logic;
SIGNAL \inst2|inst|mux_1|mux_1|mux_generate:1:mux_i|Mux2~0_combout\ : std_logic;
SIGNAL \inst2|inst|mux_1|mux_1|mux_generate:1:mux_i|Mux2~1_combout\ : std_logic;
SIGNAL \inst2|inst1|alu1|mux|Mux2~1_combout\ : std_logic;
SIGNAL \inst3|OUT16B[5]~10_combout\ : std_logic;
SIGNAL \inst2|inst|reg_gen:3:regs|reg_1|y[5]~feeder_combout\ : std_logic;
SIGNAL \inst2|inst|reg_gen:2:regs|reg_1|y[5]~feeder_combout\ : std_logic;
SIGNAL \inst2|inst|mux_2|mux_1|mux_generate:1:mux_i|Mux2~0_combout\ : std_logic;
SIGNAL \inst2|inst|reg_gen:4:regs|reg_1|y[5]~feeder_combout\ : std_logic;
SIGNAL \inst2|inst|mux_2|mux_1|mux_generate:1:mux_i|Mux2~1_combout\ : std_logic;
SIGNAL \inst2|inst|mux_2|mux_1|mux_generate:1:mux_i|Mux2~2_combout\ : std_logic;
SIGNAL \inst2|inst|mux_2|mux_1|mux_generate:1:mux_i|Mux2~3_combout\ : std_logic;
SIGNAL \inst2|inst2|OUT16B[5]~9_combout\ : std_logic;
SIGNAL \inst2|inst1|alu1|adder|C[2]~1_combout\ : std_logic;
SIGNAL \inst2|inst1|alu1|mux|Mux1~0_combout\ : std_logic;
SIGNAL \inst2|inst1|alu1|mux|Mux1~1_combout\ : std_logic;
SIGNAL \inst1|reg_gen:30:regs|y[6]~feeder_combout\ : std_logic;
SIGNAL \inst2|inst|mux_1|mux_1|mux_generate:3:mux_i|Mux1~0_combout\ : std_logic;
SIGNAL \inst2|inst|mux_1|mux_1|mux_generate:3:mux_i|Mux1~1_combout\ : std_logic;
SIGNAL \inst2|inst2|OUT16B[14]~17_combout\ : std_logic;
SIGNAL \inst2|inst1|alu3|adder|C[2]~1_combout\ : std_logic;
SIGNAL \inst2|inst1|alu3|mux|Mux1~0_combout\ : std_logic;
SIGNAL \inst2|inst1|alu3|mux|Mux1~1_combout\ : std_logic;
SIGNAL \inst1|reg_gen:24:regs|y[6]~feeder_combout\ : std_logic;
SIGNAL \inst1|DOUT[14]~56_combout\ : std_logic;
SIGNAL \inst1|reg_gen:26:regs|y[6]~feeder_combout\ : std_logic;
SIGNAL \inst1|reg_gen:10:regs|y[6]~feeder_combout\ : std_logic;
SIGNAL \inst1|DOUT[14]~64_combout\ : std_logic;
SIGNAL \inst1|reg_gen:20:regs|y[6]~feeder_combout\ : std_logic;
SIGNAL \inst1|DOUT[14]~65_combout\ : std_logic;
SIGNAL \inst1|DOUT[14]~66_combout\ : std_logic;
SIGNAL \inst1|DOUT[14]~67_combout\ : std_logic;
SIGNAL \inst1|DOUT[14]~72_combout\ : std_logic;
SIGNAL \inst1|reg_gen:23:regs|y[6]~feeder_combout\ : std_logic;
SIGNAL \inst1|DOUT[14]~59_combout\ : std_logic;
SIGNAL \inst1|reg_gen:22:regs|y[6]~feeder_combout\ : std_logic;
SIGNAL \inst1|reg_gen:6:regs|y[6]~feeder_combout\ : std_logic;
SIGNAL \inst1|DOUT[14]~60_combout\ : std_logic;
SIGNAL \inst1|reg_gen:14:regs|y[6]~feeder_combout\ : std_logic;
SIGNAL \inst1|DOUT[14]~61_combout\ : std_logic;
SIGNAL \inst1|DOUT[14]~62_combout\ : std_logic;
SIGNAL \inst1|reg_gen:21:regs|y[6]~feeder_combout\ : std_logic;
SIGNAL \inst1|DOUT[14]~57_combout\ : std_logic;
SIGNAL \inst1|DOUT[14]~58_combout\ : std_logic;
SIGNAL \inst1|DOUT[14]~63_combout\ : std_logic;
SIGNAL \inst1|DOUT[14]~73_combout\ : std_logic;
SIGNAL \inst1|DOUT[14]~74_combout\ : std_logic;
SIGNAL \inst1|DOUT[14]~75_combout\ : std_logic;
SIGNAL \inst1|DOUT[14]$latch~combout\ : std_logic;
SIGNAL \inst3|OUT16B[14]~1_combout\ : std_logic;
SIGNAL \inst2|inst|reg_gen:4:regs|reg_2|y[6]~feeder_combout\ : std_logic;
SIGNAL \inst2|inst|mux_2|mux_1|mux_generate:3:mux_i|Mux1~1_combout\ : std_logic;
SIGNAL \inst2|inst|reg_gen:5:regs|reg_2|y[6]~feeder_combout\ : std_logic;
SIGNAL \inst2|inst|mux_2|mux_1|mux_generate:3:mux_i|Mux1~2_combout\ : std_logic;
SIGNAL \inst2|inst|reg_gen:2:regs|reg_2|y[6]~feeder_combout\ : std_logic;
SIGNAL \inst2|inst|reg_gen:3:regs|reg_2|y[6]~feeder_combout\ : std_logic;
SIGNAL \inst2|inst|mux_2|mux_1|mux_generate:3:mux_i|Mux1~0_combout\ : std_logic;
SIGNAL \inst2|inst|mux_2|mux_1|mux_generate:3:mux_i|Mux1~3_combout\ : std_logic;
SIGNAL \inst1|DOUT[14]~70_combout\ : std_logic;
SIGNAL \inst1|reg_gen:25:regs|y[6]~feeder_combout\ : std_logic;
SIGNAL \inst1|DOUT[14]~68_combout\ : std_logic;
SIGNAL \inst1|DOUT[14]~69_combout\ : std_logic;
SIGNAL \inst1|DOUT[14]~71_combout\ : std_logic;
SIGNAL \inst1|DOUT[6]~210_combout\ : std_logic;
SIGNAL \inst1|DOUT[6]~211_combout\ : std_logic;
SIGNAL \inst1|DOUT[6]~212_combout\ : std_logic;
SIGNAL \inst1|DOUT[6]~208_combout\ : std_logic;
SIGNAL \inst1|DOUT[6]~209_combout\ : std_logic;
SIGNAL \inst1|DOUT[6]~213_combout\ : std_logic;
SIGNAL \inst1|DOUT[6]~214_combout\ : std_logic;
SIGNAL \inst1|DOUT[6]$latch~combout\ : std_logic;
SIGNAL \inst3|OUT16B[6]~9_combout\ : std_logic;
SIGNAL \inst2|inst|reg_gen:3:regs|reg_1|y[6]~feeder_combout\ : std_logic;
SIGNAL \inst2|inst|reg_gen:2:regs|reg_1|y[6]~feeder_combout\ : std_logic;
SIGNAL \inst2|inst|mux_2|mux_1|mux_generate:1:mux_i|Mux1~0_combout\ : std_logic;
SIGNAL \inst2|inst|reg_gen:4:regs|reg_1|y[6]~feeder_combout\ : std_logic;
SIGNAL \inst2|inst|mux_2|mux_1|mux_generate:1:mux_i|Mux1~1_combout\ : std_logic;
SIGNAL \inst2|inst|mux_2|mux_1|mux_generate:1:mux_i|Mux1~2_combout\ : std_logic;
SIGNAL \inst2|inst|mux_2|mux_1|mux_generate:1:mux_i|Mux1~3_combout\ : std_logic;
SIGNAL \inst2|inst2|OUT16B[6]~8_combout\ : std_logic;
SIGNAL \inst2|inst1|alu1|adder|C[3]~2_combout\ : std_logic;
SIGNAL \inst2|inst1|alu1|mux|Mux0~0_combout\ : std_logic;
SIGNAL \inst2|inst|reg_gen:1:regs|reg_1|y[7]~feeder_combout\ : std_logic;
SIGNAL \inst2|inst|mux_1|mux_1|mux_generate:1:mux_i|Mux0~0_combout\ : std_logic;
SIGNAL \inst2|inst|mux_1|mux_1|mux_generate:1:mux_i|Mux0~1_combout\ : std_logic;
SIGNAL \inst2|inst1|alu1|mux|Mux0~1_combout\ : std_logic;
SIGNAL \inst1|reg_gen:30:regs|y[7]~feeder_combout\ : std_logic;
SIGNAL \inst1|reg_gen:22:regs|y[7]~feeder_combout\ : std_logic;
SIGNAL \inst1|DOUT[15]~28_combout\ : std_logic;
SIGNAL \inst1|DOUT[15]~29_combout\ : std_logic;
SIGNAL \inst1|DOUT[15]~33_combout\ : std_logic;
SIGNAL \inst1|reg_gen:16:regs|y[7]~feeder_combout\ : std_logic;
SIGNAL \inst1|DOUT[7]~196_combout\ : std_logic;
SIGNAL \inst1|reg_gen:10:regs|y[7]~feeder_combout\ : std_logic;
SIGNAL \inst1|DOUT[15]~38_combout\ : std_logic;
SIGNAL \inst1|DOUT[7]~197_combout\ : std_logic;
SIGNAL \inst2|inst|mux_1|mux_1|mux_generate:3:mux_i|Mux0~0_combout\ : std_logic;
SIGNAL \inst2|inst|mux_1|mux_1|mux_generate:3:mux_i|Mux0~1_combout\ : std_logic;
SIGNAL \inst2|inst2|OUT16B[15]~16_combout\ : std_logic;
SIGNAL \inst2|inst1|alu3|adder|C[3]~2_combout\ : std_logic;
SIGNAL \inst2|inst1|alu3|mux|Mux0~0_combout\ : std_logic;
SIGNAL \inst2|inst1|alu3|mux|Mux0~1_combout\ : std_logic;
SIGNAL \inst3|OUT16B[15]~0_combout\ : std_logic;
SIGNAL \inst2|inst|reg_gen:5:regs|reg_2|y[7]~feeder_combout\ : std_logic;
SIGNAL \inst2|inst|mux_2|mux_1|mux_generate:3:mux_i|Mux0~1_combout\ : std_logic;
SIGNAL \inst2|inst|reg_gen:4:regs|reg_2|y[7]~feeder_combout\ : std_logic;
SIGNAL \inst2|inst|mux_2|mux_1|mux_generate:3:mux_i|Mux0~2_combout\ : std_logic;
SIGNAL \inst2|inst|reg_gen:3:regs|reg_2|y[7]~feeder_combout\ : std_logic;
SIGNAL \inst2|inst|reg_gen:2:regs|reg_2|y[7]~feeder_combout\ : std_logic;
SIGNAL \inst2|inst|mux_2|mux_1|mux_generate:3:mux_i|Mux0~0_combout\ : std_logic;
SIGNAL \inst2|inst|mux_2|mux_1|mux_generate:3:mux_i|Mux0~3_combout\ : std_logic;
SIGNAL \inst1|DOUT[15]~26_combout\ : std_logic;
SIGNAL \inst1|reg_gen:13:regs|y[7]~feeder_combout\ : std_logic;
SIGNAL \inst1|reg_gen:21:regs|y[7]~feeder_combout\ : std_logic;
SIGNAL \inst1|DOUT[15]~22_combout\ : std_logic;
SIGNAL \inst1|DOUT[15]~23_combout\ : std_logic;
SIGNAL \inst1|DOUT[7]~199_combout\ : std_logic;
SIGNAL \inst1|reg_gen:20:regs|y[7]~feeder_combout\ : std_logic;
SIGNAL \inst1|DOUT[15]~35_combout\ : std_logic;
SIGNAL \inst1|reg_gen:12:regs|y[7]~feeder_combout\ : std_logic;
SIGNAL \inst1|DOUT[15]~36_combout\ : std_logic;
SIGNAL \inst1|reg_gen:15:regs|y[7]~feeder_combout\ : std_logic;
SIGNAL \inst1|DOUT[7]~200_combout\ : std_logic;
SIGNAL \inst1|DOUT[15]~41_combout\ : std_logic;
SIGNAL \inst1|DOUT[15]~42_combout\ : std_logic;
SIGNAL \inst1|reg_gen:27:regs|y[7]~feeder_combout\ : std_logic;
SIGNAL \inst1|DOUT[15]~43_combout\ : std_logic;
SIGNAL \inst1|DOUT[15]~44_combout\ : std_logic;
SIGNAL \inst1|DOUT[7]~201_combout\ : std_logic;
SIGNAL \inst1|DOUT[7]~202_combout\ : std_logic;
SIGNAL \inst1|DOUT[7]~204_combout\ : std_logic;
SIGNAL \inst1|DOUT[7]$latch~combout\ : std_logic;
SIGNAL \inst3|OUT16B[7]~8_combout\ : std_logic;
SIGNAL \inst2|inst|reg_gen:3:regs|reg_1|y[7]~feeder_combout\ : std_logic;
SIGNAL \inst2|inst|mux_2|mux_1|mux_generate:1:mux_i|Mux0~0_combout\ : std_logic;
SIGNAL \inst2|inst|reg_gen:5:regs|reg_1|y[7]~feeder_combout\ : std_logic;
SIGNAL \inst2|inst|mux_2|mux_1|mux_generate:1:mux_i|Mux0~1_combout\ : std_logic;
SIGNAL \inst2|inst|mux_2|mux_1|mux_generate:1:mux_i|Mux0~2_combout\ : std_logic;
SIGNAL \inst2|inst|mux_2|mux_1|mux_generate:1:mux_i|Mux0~3_combout\ : std_logic;
SIGNAL \inst2|inst2|OUT16B[7]~7_combout\ : std_logic;
SIGNAL \inst2|inst1|alu1|adder|C4~0_combout\ : std_logic;
SIGNAL \inst2|inst2|OUT16B[8]~13_combout\ : std_logic;
SIGNAL \inst2|inst1|alu2|mux|Mux3~0_combout\ : std_logic;
SIGNAL \inst2|inst1|alu2|mux|Mux3~1_combout\ : std_logic;
SIGNAL \inst3|OUT16B[8]~7_combout\ : std_logic;
SIGNAL \inst2|inst|reg_gen:1:regs|reg_2|y[0]~feeder_combout\ : std_logic;
SIGNAL \inst2|inst|mux_1|mux_1|mux_generate:2:mux_i|Mux3~0_combout\ : std_logic;
SIGNAL \inst2|inst|reg_gen:6:regs|reg_2|y[0]~feeder_combout\ : std_logic;
SIGNAL \inst2|inst|mux_1|mux_1|mux_generate:2:mux_i|Mux3~1_combout\ : std_logic;
SIGNAL \inst2|inst1|alu2|adder|C[1]~0_combout\ : std_logic;
SIGNAL \inst2|inst1|alu2|mux|Mux2~0_combout\ : std_logic;
SIGNAL \inst2|inst1|alu2|mux|Mux2~1_combout\ : std_logic;
SIGNAL \inst3|OUT16B[9]~6_combout\ : std_logic;
SIGNAL \inst2|inst|reg_gen:2:regs|reg_2|y[1]~feeder_combout\ : std_logic;
SIGNAL \inst2|inst|reg_gen:3:regs|reg_2|y[1]~feeder_combout\ : std_logic;
SIGNAL \inst2|inst|mux_2|mux_1|mux_generate:2:mux_i|Mux2~0_combout\ : std_logic;
SIGNAL \inst2|inst|reg_gen:5:regs|reg_2|y[1]~feeder_combout\ : std_logic;
SIGNAL \inst2|inst|mux_2|mux_1|mux_generate:2:mux_i|Mux2~1_combout\ : std_logic;
SIGNAL \inst2|inst|reg_gen:4:regs|reg_2|y[1]~feeder_combout\ : std_logic;
SIGNAL \inst2|inst|mux_2|mux_1|mux_generate:2:mux_i|Mux2~2_combout\ : std_logic;
SIGNAL \inst2|inst|mux_2|mux_1|mux_generate:2:mux_i|Mux2~3_combout\ : std_logic;
SIGNAL \inst2|inst2|OUT16B[9]~12_combout\ : std_logic;
SIGNAL \inst2|inst1|alu2|adder|C[2]~1_combout\ : std_logic;
SIGNAL \inst2|inst1|alu2|mux|Mux1~0_combout\ : std_logic;
SIGNAL \inst2|inst1|alu2|mux|Mux1~1_combout\ : std_logic;
SIGNAL \inst1|reg_gen:31:regs|y[2]~feeder_combout\ : std_logic;
SIGNAL \inst1|DOUT[10]~136_combout\ : std_logic;
SIGNAL \inst1|reg_gen:21:regs|y[2]~feeder_combout\ : std_logic;
SIGNAL \inst1|reg_gen:13:regs|y[2]~feeder_combout\ : std_logic;
SIGNAL \inst1|DOUT[10]~137_combout\ : std_logic;
SIGNAL \inst1|DOUT[10]~138_combout\ : std_logic;
SIGNAL \inst1|reg_gen:23:regs|y[2]~feeder_combout\ : std_logic;
SIGNAL \inst1|DOUT[10]~139_combout\ : std_logic;
SIGNAL \inst1|reg_gen:22:regs|y[2]~feeder_combout\ : std_logic;
SIGNAL \inst1|reg_gen:6:regs|y[2]~feeder_combout\ : std_logic;
SIGNAL \inst1|reg_gen:14:regs|y[2]~feeder_combout\ : std_logic;
SIGNAL \inst1|DOUT[10]~140_combout\ : std_logic;
SIGNAL \inst1|DOUT[10]~141_combout\ : std_logic;
SIGNAL \inst1|DOUT[10]~142_combout\ : std_logic;
SIGNAL \inst1|DOUT[10]~143_combout\ : std_logic;
SIGNAL \inst1|DOUT[10]~144_combout\ : std_logic;
SIGNAL \inst1|reg_gen:12:regs|y[2]~feeder_combout\ : std_logic;
SIGNAL \inst1|reg_gen:20:regs|y[2]~feeder_combout\ : std_logic;
SIGNAL \inst1|reg_gen:4:regs|y[2]~feeder_combout\ : std_logic;
SIGNAL \inst1|DOUT[10]~145_combout\ : std_logic;
SIGNAL \inst1|DOUT[10]~146_combout\ : std_logic;
SIGNAL \inst1|DOUT[10]~147_combout\ : std_logic;
SIGNAL \inst1|reg_gen:11:regs|y[2]~feeder_combout\ : std_logic;
SIGNAL \inst1|reg_gen:27:regs|y[2]~feeder_combout\ : std_logic;
SIGNAL \inst1|DOUT[10]~150_combout\ : std_logic;
SIGNAL \inst1|DOUT[10]~148_combout\ : std_logic;
SIGNAL \inst1|DOUT[10]~149_combout\ : std_logic;
SIGNAL \inst1|DOUT[10]~151_combout\ : std_logic;
SIGNAL \inst1|DOUT[10]~152_combout\ : std_logic;
SIGNAL \inst1|DOUT[10]~153_combout\ : std_logic;
SIGNAL \inst1|DOUT[10]~154_combout\ : std_logic;
SIGNAL \inst1|DOUT[10]~155_combout\ : std_logic;
SIGNAL \inst1|DOUT[10]$latch~0_combout\ : std_logic;
SIGNAL \inst1|DOUT[10]$latch~combout\ : std_logic;
SIGNAL \inst3|OUT16B[10]~5_combout\ : std_logic;
SIGNAL \inst2|inst|reg_gen:3:regs|reg_2|y[2]~feeder_combout\ : std_logic;
SIGNAL \inst2|inst|reg_gen:2:regs|reg_2|y[2]~feeder_combout\ : std_logic;
SIGNAL \inst2|inst|mux_2|mux_1|mux_generate:2:mux_i|Mux1~0_combout\ : std_logic;
SIGNAL \inst2|inst|reg_gen:4:regs|reg_2|y[2]~feeder_combout\ : std_logic;
SIGNAL \inst2|inst|mux_2|mux_1|mux_generate:2:mux_i|Mux1~1_combout\ : std_logic;
SIGNAL \inst2|inst|mux_2|mux_1|mux_generate:2:mux_i|Mux1~2_combout\ : std_logic;
SIGNAL \inst2|inst|mux_2|mux_1|mux_generate:2:mux_i|Mux1~3_combout\ : std_logic;
SIGNAL \inst2|inst2|OUT16B[10]~11_combout\ : std_logic;
SIGNAL \inst2|inst1|alu2|adder|C[3]~2_combout\ : std_logic;
SIGNAL \inst2|inst1|alu2|mux|Mux0~0_combout\ : std_logic;
SIGNAL \inst2|inst1|alu2|mux|Mux0~1_combout\ : std_logic;
SIGNAL \inst1|reg_gen:24:regs|y[3]~feeder_combout\ : std_logic;
SIGNAL \inst1|DOUT[11]~123_combout\ : std_logic;
SIGNAL \inst1|reg_gen:20:regs|y[3]~feeder_combout\ : std_logic;
SIGNAL \inst1|DOUT[11]~124_combout\ : std_logic;
SIGNAL \inst1|DOUT[11]~125_combout\ : std_logic;
SIGNAL \inst1|reg_gen:26:regs|y[3]~feeder_combout\ : std_logic;
SIGNAL \inst1|reg_gen:10:regs|y[3]~feeder_combout\ : std_logic;
SIGNAL \inst1|DOUT[11]~126_combout\ : std_logic;
SIGNAL \inst1|DOUT[11]~127_combout\ : std_logic;
SIGNAL \inst1|DOUT[11]~132_combout\ : std_logic;
SIGNAL \inst1|DOUT[11]~133_combout\ : std_logic;
SIGNAL \inst1|DOUT[11]~116_combout\ : std_logic;
SIGNAL \inst1|reg_gen:22:regs|y[3]~feeder_combout\ : std_logic;
SIGNAL \inst1|reg_gen:6:regs|y[3]~feeder_combout\ : std_logic;
SIGNAL \inst1|DOUT[11]~119_combout\ : std_logic;
SIGNAL \inst1|DOUT[11]~120_combout\ : std_logic;
SIGNAL \inst1|reg_gen:13:regs|y[3]~feeder_combout\ : std_logic;
SIGNAL \inst1|DOUT[11]~117_combout\ : std_logic;
SIGNAL \inst1|reg_gen:21:regs|y[3]~feeder_combout\ : std_logic;
SIGNAL \inst1|DOUT[11]~118_combout\ : std_logic;
SIGNAL \inst1|DOUT[11]~121_combout\ : std_logic;
SIGNAL \inst1|DOUT[11]~122_combout\ : std_logic;
SIGNAL \inst1|DOUT[11]~134_combout\ : std_logic;
SIGNAL \inst1|DOUT[11]~135_combout\ : std_logic;
SIGNAL \inst1|DOUT[11]$latch~combout\ : std_logic;
SIGNAL \inst3|OUT16B[11]~4_combout\ : std_logic;
SIGNAL \inst2|inst|mux_2|mux_1|mux_generate:2:mux_i|Mux0~1_combout\ : std_logic;
SIGNAL \inst2|inst|reg_gen:5:regs|reg_2|y[3]~feeder_combout\ : std_logic;
SIGNAL \inst2|inst|mux_2|mux_1|mux_generate:2:mux_i|Mux0~2_combout\ : std_logic;
SIGNAL \inst2|inst|mux_2|mux_1|mux_generate:2:mux_i|Mux0~0_combout\ : std_logic;
SIGNAL \inst2|inst|mux_2|mux_1|mux_generate:2:mux_i|Mux0~3_combout\ : std_logic;
SIGNAL \inst1|reg_gen:27:regs|y[3]~feeder_combout\ : std_logic;
SIGNAL \inst1|DOUT[11]~130_combout\ : std_logic;
SIGNAL \inst1|DOUT[11]~128_combout\ : std_logic;
SIGNAL \inst1|DOUT[11]~129_combout\ : std_logic;
SIGNAL \inst1|DOUT[11]~131_combout\ : std_logic;
SIGNAL \inst1|DOUT[3]~231_combout\ : std_logic;
SIGNAL \inst1|DOUT[3]~232_combout\ : std_logic;
SIGNAL \inst1|DOUT[3]~233_combout\ : std_logic;
SIGNAL \inst1|DOUT[3]~229_combout\ : std_logic;
SIGNAL \inst1|DOUT[3]~230_combout\ : std_logic;
SIGNAL \inst1|DOUT[3]~234_combout\ : std_logic;
SIGNAL \inst1|DOUT[3]~235_combout\ : std_logic;
SIGNAL \inst1|DOUT[3]$latch~combout\ : std_logic;
SIGNAL \inst3|OUT16B[3]~12_combout\ : std_logic;
SIGNAL \inst2|inst|reg_gen:1:regs|reg_1|y[3]~feeder_combout\ : std_logic;
SIGNAL \inst2|inst|mux_1|mux_1|mux_generate:0:mux_i|Mux0~0_combout\ : std_logic;
SIGNAL \inst2|inst|reg_gen:6:regs|reg_1|y[3]~feeder_combout\ : std_logic;
SIGNAL \inst2|inst|mux_1|mux_1|mux_generate:0:mux_i|Mux0~1_combout\ : std_logic;
SIGNAL \inst2|inst1|alu0|mux|Mux0~0_combout\ : std_logic;
SIGNAL \inst2|inst1|alu0|mux|Mux0~1_combout\ : std_logic;
SIGNAL \inst1|DOUT[1]~250_combout\ : std_logic;
SIGNAL \inst1|comb~2_combout\ : std_logic;
SIGNAL \inst1|DOUT[0]~251_combout\ : std_logic;
SIGNAL \inst1|DOUT[0]~252_combout\ : std_logic;
SIGNAL \inst1|DOUT[0]~253_combout\ : std_logic;
SIGNAL \inst1|DOUT[0]~254_combout\ : std_logic;
SIGNAL \inst1|DOUT[0]~255_combout\ : std_logic;
SIGNAL \inst1|DOUT[0]~256_combout\ : std_logic;
SIGNAL \inst1|DOUT[0]~257_combout\ : std_logic;
SIGNAL \inst1|DOUT[0]$latch~0_combout\ : std_logic;
SIGNAL \inst1|DOUT[0]$latch~combout\ : std_logic;
SIGNAL \inst3|OUT16B[0]~15_combout\ : std_logic;
SIGNAL \inst2|inst|mux_1|mux_1|mux_generate:0:mux_i|Mux3~0_combout\ : std_logic;
SIGNAL \inst2|inst|mux_1|mux_1|mux_generate:0:mux_i|Mux3~1_combout\ : std_logic;
SIGNAL \inst2|inst1|alu0|adder|C~0_combout\ : std_logic;
SIGNAL \inst2|inst2|OUT16B[1]~19_combout\ : std_logic;
SIGNAL \inst2|inst1|alu0|mux|Mux2~0_combout\ : std_logic;
SIGNAL \inst2|inst1|alu0|mux|Mux2~1_combout\ : std_logic;
SIGNAL \inst1|dcd|dcd_3|dcd|Mux7~7_combout\ : std_logic;
SIGNAL \inst1|DOUT[7]~205_combout\ : std_logic;
SIGNAL \inst1|DOUT[7]~207_combout\ : std_logic;
SIGNAL \inst1|DOUT[7]_2052~combout\ : std_logic;
SIGNAL \inst1|DOUT[2]~236_combout\ : std_logic;
SIGNAL \inst1|DOUT[2]~237_combout\ : std_logic;
SIGNAL \inst1|DOUT[2]~238_combout\ : std_logic;
SIGNAL \inst1|DOUT[2]~239_combout\ : std_logic;
SIGNAL \inst1|DOUT[2]~240_combout\ : std_logic;
SIGNAL \inst1|DOUT[2]~241_combout\ : std_logic;
SIGNAL \inst1|DOUT[2]~242_combout\ : std_logic;
SIGNAL \inst1|DOUT[2]$latch~0_combout\ : std_logic;
SIGNAL \inst1|dcd|dcd_0|D[2]~2_combout\ : std_logic;
SIGNAL \inst1|comb~1_combout\ : std_logic;
SIGNAL \inst1|DOUT[2]$latch~combout\ : std_logic;
SIGNAL \inst3|OUT16B[2]~13_combout\ : std_logic;
SIGNAL \inst2|inst|mux_1|mux_1|mux_generate:0:mux_i|Mux1~0_combout\ : std_logic;
SIGNAL \inst2|inst|mux_1|mux_1|mux_generate:0:mux_i|Mux1~1_combout\ : std_logic;
SIGNAL \inst2|inst1|alu0|mux|Mux1~0_combout\ : std_logic;
SIGNAL \inst2|inst1|alu0|mux|Mux1~1_combout\ : std_logic;
SIGNAL \inst|Mux3~0_combout\ : std_logic;
SIGNAL \inst2|inst1|alu1|ZERO~0_combout\ : std_logic;
SIGNAL \inst2|inst1|alu2|ZERO~0_combout\ : std_logic;
SIGNAL \inst2|inst1|alu3|ZERO~0_combout\ : std_logic;
SIGNAL \inst|Mux3~1_combout\ : std_logic;
SIGNAL \inst4|inst1|INS_OUT[9]~11_combout\ : std_logic;
SIGNAL \inst4|inst2|alu0|alu1|adder|C~2_combout\ : std_logic;
SIGNAL \inst4|inst3|add_2|C[2]~1_combout\ : std_logic;
SIGNAL \inst4|inst7|OUT16B[6]~13_combout\ : std_logic;
SIGNAL \inst2|inst|mux_2|mux_1|mux_generate:0:mux_i|Mux3~6_combout\ : std_logic;
SIGNAL \inst4|inst3|add_2|C[3]~2_combout\ : std_logic;
SIGNAL \inst4|inst2|alu0|alu1|adder|C~1_combout\ : std_logic;
SIGNAL \inst4|inst1|INS_OUT[6]~13_combout\ : std_logic;
SIGNAL \inst4|inst7|OUT16B[7]~12_combout\ : std_logic;
SIGNAL \inst4|inst3|add_2|C4~0_combout\ : std_logic;
SIGNAL \inst4|inst7|OUT16B[8]~11_combout\ : std_logic;
SIGNAL \inst4|inst2|alu0|alu2|adder|C~1_combout\ : std_logic;
SIGNAL \inst4|inst1|INS_OUT[8]~12_combout\ : std_logic;
SIGNAL \inst4|inst3|add_3|C[1]~0_combout\ : std_logic;
SIGNAL \inst4|inst7|OUT16B[9]~10_combout\ : std_logic;
SIGNAL \inst4|inst3|add_3|C[2]~1_combout\ : std_logic;
SIGNAL \inst4|inst2|alu0|alu2|adder|C~0_combout\ : std_logic;
SIGNAL \inst4|inst7|OUT16B[10]~9_combout\ : std_logic;
SIGNAL \inst4|inst3|add_3|C[3]~2_combout\ : std_logic;
SIGNAL \inst4|JUMPMUX|OUT16B[11]~15_combout\ : std_logic;
SIGNAL \inst4|inst3|add_4|S[0]~0_combout\ : std_logic;
SIGNAL \inst4|inst3|add_4|S[0]~1_combout\ : std_logic;
SIGNAL \inst4|JUMPMUX|OUT16B[12]~14_combout\ : std_logic;
SIGNAL \inst4|inst2|alu0|alu3|adder|C~0_combout\ : std_logic;
SIGNAL \inst4|inst3|add_4|C[1]~0_combout\ : std_logic;
SIGNAL \inst4|inst2|alu0|alu3|adder|C~1_combout\ : std_logic;
SIGNAL \inst4|inst3|add_4|C[2]~1_combout\ : std_logic;
SIGNAL \inst4|inst3|add_4|C[3]~2_combout\ : std_logic;
SIGNAL \inst4|inst1|exception~0_combout\ : std_logic;
SIGNAL \inst4|inst1|exception~1_combout\ : std_logic;
SIGNAL \inst4|inst1|exception~2_combout\ : std_logic;
SIGNAL \inst4|inst1|INS_OUT[0]~10_combout\ : std_logic;
SIGNAL \inst4|JUMPMUX|OUT16B[0]~19_combout\ : std_logic;
SIGNAL \inst4|inst3|add_1|C~0_combout\ : std_logic;
SIGNAL \inst4|inst7|OUT16B[2]~22_combout\ : std_logic;
SIGNAL \inst4|inst1|data_out[1]~7_combout\ : std_logic;
SIGNAL \inst4|inst1|INS_OUT[1]~9_combout\ : std_logic;
SIGNAL \inst4|inst7|OUT16B[1]~17_combout\ : std_logic;
SIGNAL \inst4|inst1|data_out[13]~1_combout\ : std_logic;
SIGNAL \inst4|inst1|INS_OUT[13]~2_combout\ : std_logic;
SIGNAL \inst|Mux2~0_combout\ : std_logic;
SIGNAL \inst4|inst7|OUT16B[3]~16_combout\ : std_logic;
SIGNAL \inst4|inst1|data_out[10]~2_combout\ : std_logic;
SIGNAL \inst4|inst1|INS_OUT[15]~4_combout\ : std_logic;
SIGNAL \inst|Mux8~0_combout\ : std_logic;
SIGNAL \inst2|inst3|DOUT[0]~2_combout\ : std_logic;
SIGNAL \inst2|inst1|alu1|mux|Mux3~0_combout\ : std_logic;
SIGNAL \inst2|inst1|alu1|mux|Mux3~1_combout\ : std_logic;
SIGNAL \inst1|DOUT[7]~54_combout\ : std_logic;
SIGNAL \inst1|DOUT[15]~55_combout\ : std_logic;
SIGNAL \inst1|reg_gen:31:regs|y[7]~feeder_combout\ : std_logic;
SIGNAL \inst1|DOUT[15]~40_combout\ : std_logic;
SIGNAL \inst1|DOUT[15]~45_combout\ : std_logic;
SIGNAL \inst1|DOUT[15]~46_combout\ : std_logic;
SIGNAL \inst1|DOUT[15]~30_combout\ : std_logic;
SIGNAL \inst1|DOUT[15]~31_combout\ : std_logic;
SIGNAL \inst1|DOUT[15]~47_combout\ : std_logic;
SIGNAL \inst1|DOUT[15]~50_combout\ : std_logic;
SIGNAL \inst1|DOUT[15]$latch~combout\ : std_logic;
SIGNAL \inst4|inst3|add_3|S[0]~0_combout\ : std_logic;
SIGNAL \inst4|inst3|add_2|S[3]~0_combout\ : std_logic;
SIGNAL \inst4|inst7|OUT16B[15]~20_combout\ : std_logic;
SIGNAL \inst4|inst7|OUT16B[14]~8_combout\ : std_logic;
SIGNAL \inst4|inst7|OUT16B[13]~21_combout\ : std_logic;
SIGNAL \inst4|JUMPMUX|OUT16B[10]~20_combout\ : std_logic;
SIGNAL \inst4|JUMPMUX|OUT16B[9]~21_combout\ : std_logic;
SIGNAL \inst4|JUMPMUX|OUT16B[8]~22_combout\ : std_logic;
SIGNAL \inst4|JUMPMUX|OUT16B[7]~23_combout\ : std_logic;
SIGNAL \inst4|JUMPMUX|OUT16B[6]~16_combout\ : std_logic;
SIGNAL \inst4|JUMPMUX|OUT16B[5]~24_combout\ : std_logic;
SIGNAL \inst4|JUMPMUX|OUT16B[4]~25_combout\ : std_logic;
SIGNAL \inst4|JUMPMUX|OUT16B[3]~17_combout\ : std_logic;
SIGNAL \inst4|JUMPMUX|OUT16B[2]~26_combout\ : std_logic;
SIGNAL \inst4|JUMPMUX|OUT16B[1]~18_combout\ : std_logic;
SIGNAL \inst4|inst7|OUT16B[12]~18_combout\ : std_logic;
SIGNAL \inst4|inst7|OUT16B[11]~23_combout\ : std_logic;
SIGNAL \inst4|inst7|OUT16B[0]~19_combout\ : std_logic;
SIGNAL \inst1|reg_gen:31:regs|y\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \inst1|reg_gen:16:regs|y\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \inst1|reg_gen:11:regs|y\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \inst1|reg_gen:27:regs|y\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \inst1|reg_gen:17:regs|y\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \inst1|reg_gen:9:regs|y\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \inst1|reg_gen:25:regs|y\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \inst1|reg_gen:19:regs|y\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \inst1|reg_gen:18:regs|y\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \inst1|reg_gen:10:regs|y\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \inst1|reg_gen:26:regs|y\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \inst1|reg_gen:28:regs|y\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \inst2|inst1|alu0|bitwor|Res\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \inst2|inst|reg_gen:2:regs|reg_2|y\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \inst2|inst1|alu3|adder|S\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \inst2|inst|reg_gen:4:regs|reg_2|y\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \inst4|inst2|alu0|alu3|adder|S\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \inst1|reg_gen:13:regs|y\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \inst2|inst|reg_gen:5:regs|reg_2|y\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \inst4|inst|reg|reg_2|y\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \inst4|inst3|add_1|P\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \inst1|reg_gen:30:regs|y\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \inst2|inst1|alu0|adder|S\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \inst2|inst|reg_gen:1:regs|reg_2|y\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \inst2|inst|reg_gen:1:regs|reg_1|y\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \inst1|reg_gen:20:regs|y\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \inst1|dec_to_en\ : std_logic_vector(32 DOWNTO 0);
SIGNAL \inst2|inst|reg_gen:6:regs|reg_2|y\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \inst2|inst|reg_gen:6:regs|reg_1|y\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \inst2|inst|reg_gen:2:regs|reg_1|y\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \inst4|inst2|alu0|alu2|adder|S\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \inst2|inst|reg_gen:3:regs|reg_2|y\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \inst4|inst2|alu0|alu1|adder|S\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \inst1|reg_gen:15:regs|y\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \inst4|inst|reg|reg_1|y\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \inst2|inst1|alu0|ander|Result\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \inst2|inst|reg_gen:5:regs|reg_1|y\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \inst1|reg_gen:12:regs|y\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \inst2|inst|reg_gen:3:regs|reg_1|y\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \inst2|inst1|alu0|inverter|Rt\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \inst1|reg_gen:8:regs|y\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \inst2|inst1|alu0|adder|G\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \inst2|inst|reg_gen:4:regs|reg_1|y\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \inst1|reg_gen:14:regs|y\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \inst4|inst2|alu0|alu0|adder|S\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \inst1|reg_gen:21:regs|y\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \inst4|inst3|add_4|S\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \inst1|reg_gen:22:regs|y\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \inst4|inst3|add_3|S\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \inst1|reg_gen:23:regs|y\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \inst4|inst3|add_2|S\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \inst4|inst3|add_1|G\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \inst1|reg_gen:24:regs|y\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \inst4|inst3|add_1|S\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \inst1|reg_gen:5:regs|y\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \inst1|reg_gen:29:regs|y\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \inst1|reg_gen:7:regs|y\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \inst1|reg_gen:6:regs|y\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \inst4|inst|to_pc\ : std_logic_vector(15 DOWNTO 0);
SIGNAL \inst1|reg_gen:4:regs|y\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \inst4|inst7|ALT_INV_OUT16B[1]~17_combout\ : std_logic;
SIGNAL \inst4|inst3|add_1|ALT_INV_S\ : std_logic_vector(1 DOWNTO 1);
SIGNAL \inst|ALT_INV_Mux1~0_combout\ : std_logic;
SIGNAL \inst4|inst|reg|reg_1|ALT_INV_y\ : std_logic_vector(1 DOWNTO 1);

COMPONENT hard_block
    PORT (
	devoe : IN std_logic;
	devclrn : IN std_logic;
	devpor : IN std_logic);
END COMPONENT;

BEGIN

RegDst <= ww_RegDst;
RegWrite <= ww_RegWrite;
ww_CLK <= CLK;
ALUCon <= ww_ALUCon;
ALUSrc <= ww_ALUSrc;
EXTEN_OUT <= ww_EXTEN_OUT;
Branch <= ww_Branch;
ww_PCEN <= PCEN;
Jump <= ww_Jump;
ww_RST <= RST;
ALUOp <= ww_ALUOp;
W_REG <= ww_W_REG;
MemtoReg <= ww_MemtoReg;
ALUOUT <= ww_ALUOUT;
MemWrite <= ww_MemWrite;
MemRead <= ww_MemRead;
INS_OUT <= ww_INS_OUT;
BRADDER_OUT <= ww_BRADDER_OUT;
DMEMOUT <= ww_DMEMOUT;
JOUT <= ww_JOUT;
JUMPMUX_OUT <= ww_JUMPMUX_OUT;
PCP2 <= ww_PCP2;
REG1OUT <= ww_REG1OUT;
REG2_OUT <= ww_REG2_OUT;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

\inst1|DOUT[15]~53clkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \inst1|DOUT[15]~53_combout\);

\inst1|DOUT[15]~52clkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \inst1|DOUT[15]~52_combout\);

\CLK~inputclkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \CLK~input_o\);
\inst4|inst7|ALT_INV_OUT16B[1]~17_combout\ <= NOT \inst4|inst7|OUT16B[1]~17_combout\;
\inst4|inst3|add_1|ALT_INV_S\(1) <= NOT \inst4|inst3|add_1|S\(1);
\inst|ALT_INV_Mux1~0_combout\ <= NOT \inst|Mux1~0_combout\;
\inst4|inst|reg|reg_1|ALT_INV_y\(1) <= NOT \inst4|inst|reg|reg_1|y\(1);
auto_generated_inst : hard_block
PORT MAP (
	devoe => ww_devoe,
	devclrn => ww_devclrn,
	devpor => ww_devpor);

-- Location: IOOBUF_X0_Y55_N9
\DMEMOUT[15]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst1|DOUT[15]$latch~combout\,
	oe => \inst1|DOUT[15]_2612~combout\,
	devoe => ww_devoe,
	o => \DMEMOUT[15]~output_o\);

-- Location: IOOBUF_X0_Y66_N16
\DMEMOUT[14]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst1|DOUT[14]$latch~combout\,
	oe => \inst1|DOUT[15]_2612~combout\,
	devoe => ww_devoe,
	o => \DMEMOUT[14]~output_o\);

-- Location: IOOBUF_X5_Y73_N23
\DMEMOUT[13]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst1|DOUT[13]$latch~combout\,
	oe => \inst1|DOUT[15]_2612~combout\,
	devoe => ww_devoe,
	o => \DMEMOUT[13]~output_o\);

-- Location: IOOBUF_X0_Y45_N23
\DMEMOUT[12]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst1|DOUT[12]$latch~combout\,
	oe => \inst1|DOUT[15]_2612~combout\,
	devoe => ww_devoe,
	o => \DMEMOUT[12]~output_o\);

-- Location: IOOBUF_X0_Y66_N23
\DMEMOUT[11]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst1|DOUT[11]$latch~combout\,
	oe => \inst1|DOUT[15]_2612~combout\,
	devoe => ww_devoe,
	o => \DMEMOUT[11]~output_o\);

-- Location: IOOBUF_X5_Y73_N9
\DMEMOUT[10]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst1|DOUT[10]$latch~combout\,
	oe => \inst1|DOUT[15]_2612~combout\,
	devoe => ww_devoe,
	o => \DMEMOUT[10]~output_o\);

-- Location: IOOBUF_X0_Y54_N9
\DMEMOUT[9]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst1|DOUT[9]$latch~combout\,
	oe => \inst1|DOUT[15]_2612~combout\,
	devoe => ww_devoe,
	o => \DMEMOUT[9]~output_o\);

-- Location: IOOBUF_X0_Y45_N16
\DMEMOUT[8]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst1|DOUT[8]$latch~combout\,
	oe => \inst1|DOUT[15]_2612~combout\,
	devoe => ww_devoe,
	o => \DMEMOUT[8]~output_o\);

-- Location: IOOBUF_X0_Y68_N2
\DMEMOUT[7]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst1|DOUT[7]$latch~combout\,
	oe => \inst1|DOUT[7]_2052~combout\,
	devoe => ww_devoe,
	o => \DMEMOUT[7]~output_o\);

-- Location: IOOBUF_X0_Y68_N9
\DMEMOUT[6]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst1|DOUT[6]$latch~combout\,
	oe => \inst1|DOUT[7]_2052~combout\,
	devoe => ww_devoe,
	o => \DMEMOUT[6]~output_o\);

-- Location: IOOBUF_X0_Y58_N16
\DMEMOUT[5]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst1|DOUT[5]$latch~combout\,
	oe => \inst1|DOUT[7]_2052~combout\,
	devoe => ww_devoe,
	o => \DMEMOUT[5]~output_o\);

-- Location: IOOBUF_X13_Y73_N2
\DMEMOUT[4]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst1|DOUT[4]$latch~combout\,
	oe => \inst1|DOUT[7]_2052~combout\,
	devoe => ww_devoe,
	o => \DMEMOUT[4]~output_o\);

-- Location: IOOBUF_X13_Y73_N9
\DMEMOUT[3]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst1|DOUT[3]$latch~combout\,
	oe => \inst1|DOUT[7]_2052~combout\,
	devoe => ww_devoe,
	o => \DMEMOUT[3]~output_o\);

-- Location: IOOBUF_X13_Y73_N16
\DMEMOUT[2]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst1|DOUT[2]$latch~combout\,
	oe => \inst1|DOUT[7]_2052~combout\,
	devoe => ww_devoe,
	o => \DMEMOUT[2]~output_o\);

-- Location: IOOBUF_X0_Y48_N2
\DMEMOUT[1]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst1|DOUT[1]$latch~combout\,
	oe => \inst1|DOUT[7]_2052~combout\,
	devoe => ww_devoe,
	o => \DMEMOUT[1]~output_o\);

-- Location: IOOBUF_X0_Y53_N2
\DMEMOUT[0]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst1|DOUT[0]$latch~combout\,
	oe => \inst1|DOUT[7]_2052~combout\,
	devoe => ww_devoe,
	o => \DMEMOUT[0]~output_o\);

-- Location: IOOBUF_X16_Y0_N23
\RegDst~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst|Mux0~0_combout\,
	devoe => ww_devoe,
	o => \RegDst~output_o\);

-- Location: IOOBUF_X0_Y16_N23
\RegWrite~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst|ALT_INV_Mux1~0_combout\,
	devoe => ww_devoe,
	o => \RegWrite~output_o\);

-- Location: IOOBUF_X5_Y0_N23
\ALUCon~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst|Mux8~0_combout\,
	devoe => ww_devoe,
	o => \ALUCon~output_o\);

-- Location: IOOBUF_X0_Y34_N9
\ALUSrc~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst|Mux7~8_combout\,
	devoe => ww_devoe,
	o => \ALUSrc~output_o\);

-- Location: IOOBUF_X40_Y73_N2
\EXTEN_OUT[15]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst4|inst1|INS_OUT[5]~6_combout\,
	devoe => ww_devoe,
	o => \EXTEN_OUT[15]~output_o\);

-- Location: IOOBUF_X31_Y73_N2
\EXTEN_OUT[14]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst4|inst1|INS_OUT[5]~6_combout\,
	devoe => ww_devoe,
	o => \EXTEN_OUT[14]~output_o\);

-- Location: IOOBUF_X40_Y0_N23
\EXTEN_OUT[13]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst4|inst1|INS_OUT[5]~6_combout\,
	devoe => ww_devoe,
	o => \EXTEN_OUT[13]~output_o\);

-- Location: IOOBUF_X42_Y73_N9
\EXTEN_OUT[12]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst4|inst1|INS_OUT[5]~6_combout\,
	devoe => ww_devoe,
	o => \EXTEN_OUT[12]~output_o\);

-- Location: IOOBUF_X38_Y73_N16
\EXTEN_OUT[11]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst4|inst1|INS_OUT[5]~6_combout\,
	devoe => ww_devoe,
	o => \EXTEN_OUT[11]~output_o\);

-- Location: IOOBUF_X35_Y73_N16
\EXTEN_OUT[10]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst4|inst1|INS_OUT[5]~6_combout\,
	devoe => ww_devoe,
	o => \EXTEN_OUT[10]~output_o\);

-- Location: IOOBUF_X35_Y73_N23
\EXTEN_OUT[9]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst4|inst1|INS_OUT[5]~6_combout\,
	devoe => ww_devoe,
	o => \EXTEN_OUT[9]~output_o\);

-- Location: IOOBUF_X38_Y73_N2
\EXTEN_OUT[8]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst4|inst1|INS_OUT[5]~6_combout\,
	devoe => ww_devoe,
	o => \EXTEN_OUT[8]~output_o\);

-- Location: IOOBUF_X38_Y0_N2
\EXTEN_OUT[7]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst4|inst1|INS_OUT[5]~6_combout\,
	devoe => ww_devoe,
	o => \EXTEN_OUT[7]~output_o\);

-- Location: IOOBUF_X40_Y73_N9
\EXTEN_OUT[6]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst4|inst1|INS_OUT[5]~6_combout\,
	devoe => ww_devoe,
	o => \EXTEN_OUT[6]~output_o\);

-- Location: IOOBUF_X38_Y73_N9
\EXTEN_OUT[5]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst4|inst1|INS_OUT[5]~6_combout\,
	devoe => ww_devoe,
	o => \EXTEN_OUT[5]~output_o\);

-- Location: IOOBUF_X0_Y15_N16
\EXTEN_OUT[4]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst4|inst1|INS_OUT[4]~7_combout\,
	devoe => ww_devoe,
	o => \EXTEN_OUT[4]~output_o\);

-- Location: IOOBUF_X11_Y73_N9
\EXTEN_OUT[3]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst4|inst1|INS_OUT[3]~8_combout\,
	devoe => ww_devoe,
	o => \EXTEN_OUT[3]~output_o\);

-- Location: IOOBUF_X23_Y73_N9
\EXTEN_OUT[2]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst4|inst1|INS_OUT[2]~14_combout\,
	devoe => ww_devoe,
	o => \EXTEN_OUT[2]~output_o\);

-- Location: IOOBUF_X0_Y57_N23
\EXTEN_OUT[1]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst4|inst1|INS_OUT[1]~9_combout\,
	devoe => ww_devoe,
	o => \EXTEN_OUT[1]~output_o\);

-- Location: IOOBUF_X0_Y5_N16
\EXTEN_OUT[0]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst4|inst1|INS_OUT[0]~10_combout\,
	devoe => ww_devoe,
	o => \EXTEN_OUT[0]~output_o\);

-- Location: IOOBUF_X23_Y0_N23
\Branch~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst|Mux3~1_combout\,
	devoe => ww_devoe,
	o => \Branch~output_o\);

-- Location: IOOBUF_X0_Y24_N23
\Jump~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst|Mux2~0_combout\,
	devoe => ww_devoe,
	o => \Jump~output_o\);

-- Location: IOOBUF_X0_Y9_N16
\ALUOp[2]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst|Mux9~0_combout\,
	devoe => ww_devoe,
	o => \ALUOp[2]~output_o\);

-- Location: IOOBUF_X5_Y0_N16
\ALUOp[1]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst|Mux8~0_combout\,
	devoe => ww_devoe,
	o => \ALUOp[1]~output_o\);

-- Location: IOOBUF_X109_Y0_N9
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

-- Location: IOOBUF_X0_Y44_N9
\W_REG[15]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst3|OUT16B[15]~0_combout\,
	devoe => ww_devoe,
	o => \W_REG[15]~output_o\);

-- Location: IOOBUF_X0_Y44_N16
\W_REG[14]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst3|OUT16B[14]~1_combout\,
	devoe => ww_devoe,
	o => \W_REG[14]~output_o\);

-- Location: IOOBUF_X0_Y49_N9
\W_REG[13]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst3|OUT16B[13]~2_combout\,
	devoe => ww_devoe,
	o => \W_REG[13]~output_o\);

-- Location: IOOBUF_X0_Y47_N23
\W_REG[12]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst3|OUT16B[12]~3_combout\,
	devoe => ww_devoe,
	o => \W_REG[12]~output_o\);

-- Location: IOOBUF_X0_Y44_N2
\W_REG[11]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst3|OUT16B[11]~4_combout\,
	devoe => ww_devoe,
	o => \W_REG[11]~output_o\);

-- Location: IOOBUF_X0_Y43_N16
\W_REG[10]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst3|OUT16B[10]~5_combout\,
	devoe => ww_devoe,
	o => \W_REG[10]~output_o\);

-- Location: IOOBUF_X0_Y35_N16
\W_REG[9]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst3|OUT16B[9]~6_combout\,
	devoe => ww_devoe,
	o => \W_REG[9]~output_o\);

-- Location: IOOBUF_X0_Y42_N2
\W_REG[8]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst3|OUT16B[8]~7_combout\,
	devoe => ww_devoe,
	o => \W_REG[8]~output_o\);

-- Location: IOOBUF_X0_Y46_N23
\W_REG[7]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst3|OUT16B[7]~8_combout\,
	devoe => ww_devoe,
	o => \W_REG[7]~output_o\);

-- Location: IOOBUF_X0_Y42_N9
\W_REG[6]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst3|OUT16B[6]~9_combout\,
	devoe => ww_devoe,
	o => \W_REG[6]~output_o\);

-- Location: IOOBUF_X5_Y0_N9
\W_REG[5]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst3|OUT16B[5]~10_combout\,
	devoe => ww_devoe,
	o => \W_REG[5]~output_o\);

-- Location: IOOBUF_X0_Y46_N16
\W_REG[4]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst3|OUT16B[4]~11_combout\,
	devoe => ww_devoe,
	o => \W_REG[4]~output_o\);

-- Location: IOOBUF_X0_Y49_N2
\W_REG[3]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst3|OUT16B[3]~12_combout\,
	devoe => ww_devoe,
	o => \W_REG[3]~output_o\);

-- Location: IOOBUF_X0_Y48_N9
\W_REG[2]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst3|OUT16B[2]~13_combout\,
	devoe => ww_devoe,
	o => \W_REG[2]~output_o\);

-- Location: IOOBUF_X0_Y47_N16
\W_REG[1]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst3|OUT16B[1]~14_combout\,
	devoe => ww_devoe,
	o => \W_REG[1]~output_o\);

-- Location: IOOBUF_X0_Y44_N23
\W_REG[0]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst3|OUT16B[0]~15_combout\,
	devoe => ww_devoe,
	o => \W_REG[0]~output_o\);

-- Location: IOOBUF_X3_Y0_N23
\MemtoReg~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst|Mux5~0_combout\,
	devoe => ww_devoe,
	o => \MemtoReg~output_o\);

-- Location: IOOBUF_X0_Y10_N23
\ALUOUT[15]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst2|inst1|alu3|mux|Mux0~1_combout\,
	devoe => ww_devoe,
	o => \ALUOUT[15]~output_o\);

-- Location: IOOBUF_X0_Y10_N16
\ALUOUT[14]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst2|inst1|alu3|mux|Mux1~1_combout\,
	devoe => ww_devoe,
	o => \ALUOUT[14]~output_o\);

-- Location: IOOBUF_X0_Y53_N9
\ALUOUT[13]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst2|inst1|alu3|mux|Mux2~1_combout\,
	devoe => ww_devoe,
	o => \ALUOUT[13]~output_o\);

-- Location: IOOBUF_X0_Y8_N23
\ALUOUT[12]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst2|inst1|alu3|mux|Mux3~1_combout\,
	devoe => ww_devoe,
	o => \ALUOUT[12]~output_o\);

-- Location: IOOBUF_X0_Y7_N9
\ALUOUT[11]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst2|inst1|alu2|mux|Mux0~1_combout\,
	devoe => ww_devoe,
	o => \ALUOUT[11]~output_o\);

-- Location: IOOBUF_X0_Y59_N23
\ALUOUT[10]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst2|inst1|alu2|mux|Mux1~1_combout\,
	devoe => ww_devoe,
	o => \ALUOUT[10]~output_o\);

-- Location: IOOBUF_X0_Y23_N16
\ALUOUT[9]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst2|inst1|alu2|mux|Mux2~1_combout\,
	devoe => ww_devoe,
	o => \ALUOUT[9]~output_o\);

-- Location: IOOBUF_X0_Y52_N2
\ALUOUT[8]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst2|inst1|alu2|mux|Mux3~1_combout\,
	devoe => ww_devoe,
	o => \ALUOUT[8]~output_o\);

-- Location: IOOBUF_X0_Y55_N23
\ALUOUT[7]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst2|inst1|alu1|mux|Mux0~1_combout\,
	devoe => ww_devoe,
	o => \ALUOUT[7]~output_o\);

-- Location: IOOBUF_X0_Y52_N16
\ALUOUT[6]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst2|inst1|alu1|mux|Mux1~1_combout\,
	devoe => ww_devoe,
	o => \ALUOUT[6]~output_o\);

-- Location: IOOBUF_X0_Y52_N23
\ALUOUT[5]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst2|inst1|alu1|mux|Mux2~1_combout\,
	devoe => ww_devoe,
	o => \ALUOUT[5]~output_o\);

-- Location: IOOBUF_X0_Y35_N2
\ALUOUT[4]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst2|inst1|alu1|mux|Mux3~1_combout\,
	devoe => ww_devoe,
	o => \ALUOUT[4]~output_o\);

-- Location: IOOBUF_X0_Y30_N2
\ALUOUT[3]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst2|inst1|alu0|mux|Mux0~1_combout\,
	devoe => ww_devoe,
	o => \ALUOUT[3]~output_o\);

-- Location: IOOBUF_X0_Y30_N9
\ALUOUT[2]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst2|inst1|alu0|mux|Mux1~1_combout\,
	devoe => ww_devoe,
	o => \ALUOUT[2]~output_o\);

-- Location: IOOBUF_X0_Y29_N16
\ALUOUT[1]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst2|inst1|alu0|mux|Mux2~1_combout\,
	devoe => ww_devoe,
	o => \ALUOUT[1]~output_o\);

-- Location: IOOBUF_X0_Y24_N16
\ALUOUT[0]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst2|inst1|alu0|mux|Mux3~0_combout\,
	devoe => ww_devoe,
	o => \ALUOUT[0]~output_o\);

-- Location: IOOBUF_X0_Y21_N16
\MemWrite~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst|Mux6~0_combout\,
	devoe => ww_devoe,
	o => \MemWrite~output_o\);

-- Location: IOOBUF_X3_Y0_N16
\MemRead~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst|Mux5~0_combout\,
	devoe => ww_devoe,
	o => \MemRead~output_o\);

-- Location: IOOBUF_X7_Y73_N23
\INS_OUT[15]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst4|inst1|INS_OUT[15]~4_combout\,
	devoe => ww_devoe,
	o => \INS_OUT[15]~output_o\);

-- Location: IOOBUF_X11_Y0_N2
\INS_OUT[14]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst4|inst1|INS_OUT[14]~3_combout\,
	devoe => ww_devoe,
	o => \INS_OUT[14]~output_o\);

-- Location: IOOBUF_X0_Y13_N2
\INS_OUT[13]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst4|inst1|INS_OUT[13]~2_combout\,
	devoe => ww_devoe,
	o => \INS_OUT[13]~output_o\);

-- Location: IOOBUF_X0_Y19_N9
\INS_OUT[12]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst4|inst1|INS_OUT[12]~5_combout\,
	devoe => ww_devoe,
	o => \INS_OUT[12]~output_o\);

-- Location: IOOBUF_X7_Y73_N16
\INS_OUT[11]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst4|inst1|INS_OUT[15]~4_combout\,
	devoe => ww_devoe,
	o => \INS_OUT[11]~output_o\);

-- Location: IOOBUF_X11_Y73_N23
\INS_OUT[10]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst4|inst1|INS_OUT[15]~4_combout\,
	devoe => ww_devoe,
	o => \INS_OUT[10]~output_o\);

-- Location: IOOBUF_X18_Y73_N23
\INS_OUT[9]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst4|inst1|INS_OUT[9]~11_combout\,
	devoe => ww_devoe,
	o => \INS_OUT[9]~output_o\);

-- Location: IOOBUF_X27_Y0_N9
\INS_OUT[8]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst4|inst1|INS_OUT[8]~12_combout\,
	devoe => ww_devoe,
	o => \INS_OUT[8]~output_o\);

-- Location: IOOBUF_X25_Y73_N16
\INS_OUT[7]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst2|inst|mux_2|mux_1|mux_generate:0:mux_i|Mux3~6_combout\,
	devoe => ww_devoe,
	o => \INS_OUT[7]~output_o\);

-- Location: IOOBUF_X16_Y73_N9
\INS_OUT[6]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst4|inst1|INS_OUT[6]~13_combout\,
	devoe => ww_devoe,
	o => \INS_OUT[6]~output_o\);

-- Location: IOOBUF_X42_Y73_N2
\INS_OUT[5]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst4|inst1|INS_OUT[5]~6_combout\,
	devoe => ww_devoe,
	o => \INS_OUT[5]~output_o\);

-- Location: IOOBUF_X0_Y15_N23
\INS_OUT[4]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst4|inst1|INS_OUT[4]~7_combout\,
	devoe => ww_devoe,
	o => \INS_OUT[4]~output_o\);

-- Location: IOOBUF_X11_Y73_N16
\INS_OUT[3]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst4|inst1|INS_OUT[3]~8_combout\,
	devoe => ww_devoe,
	o => \INS_OUT[3]~output_o\);

-- Location: IOOBUF_X23_Y73_N2
\INS_OUT[2]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst4|inst1|INS_OUT[2]~14_combout\,
	devoe => ww_devoe,
	o => \INS_OUT[2]~output_o\);

-- Location: IOOBUF_X0_Y57_N16
\INS_OUT[1]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst4|inst1|INS_OUT[1]~9_combout\,
	devoe => ww_devoe,
	o => \INS_OUT[1]~output_o\);

-- Location: IOOBUF_X0_Y4_N2
\INS_OUT[0]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst4|inst1|INS_OUT[0]~10_combout\,
	devoe => ww_devoe,
	o => \INS_OUT[0]~output_o\);

-- Location: IOOBUF_X0_Y50_N16
\BRADDER_OUT[15]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst4|inst3|add_4|S\(3),
	devoe => ww_devoe,
	o => \BRADDER_OUT[15]~output_o\);

-- Location: IOOBUF_X0_Y12_N16
\BRADDER_OUT[14]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst4|inst3|add_4|S\(2),
	devoe => ww_devoe,
	o => \BRADDER_OUT[14]~output_o\);

-- Location: IOOBUF_X0_Y16_N16
\BRADDER_OUT[13]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst4|inst3|add_4|S\(1),
	devoe => ww_devoe,
	o => \BRADDER_OUT[13]~output_o\);

-- Location: IOOBUF_X0_Y11_N23
\BRADDER_OUT[12]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst4|inst3|add_4|S[0]~1_combout\,
	devoe => ww_devoe,
	o => \BRADDER_OUT[12]~output_o\);

-- Location: IOOBUF_X29_Y0_N23
\BRADDER_OUT[11]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst4|inst3|add_3|S\(3),
	devoe => ww_devoe,
	o => \BRADDER_OUT[11]~output_o\);

-- Location: IOOBUF_X20_Y0_N9
\BRADDER_OUT[10]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst4|inst3|add_3|S\(2),
	devoe => ww_devoe,
	o => \BRADDER_OUT[10]~output_o\);

-- Location: IOOBUF_X16_Y73_N2
\BRADDER_OUT[9]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst4|inst3|add_3|S\(1),
	devoe => ww_devoe,
	o => \BRADDER_OUT[9]~output_o\);

-- Location: IOOBUF_X27_Y73_N23
\BRADDER_OUT[8]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst4|inst3|add_3|S[0]~0_combout\,
	devoe => ww_devoe,
	o => \BRADDER_OUT[8]~output_o\);

-- Location: IOOBUF_X20_Y73_N16
\BRADDER_OUT[7]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst4|inst3|add_2|S[3]~0_combout\,
	devoe => ww_devoe,
	o => \BRADDER_OUT[7]~output_o\);

-- Location: IOOBUF_X0_Y60_N16
\BRADDER_OUT[6]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst4|inst3|add_2|S\(2),
	devoe => ww_devoe,
	o => \BRADDER_OUT[6]~output_o\);

-- Location: IOOBUF_X0_Y12_N23
\BRADDER_OUT[5]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst4|inst3|add_2|S\(1),
	devoe => ww_devoe,
	o => \BRADDER_OUT[5]~output_o\);

-- Location: IOOBUF_X20_Y0_N2
\BRADDER_OUT[4]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst4|inst3|add_2|S\(0),
	devoe => ww_devoe,
	o => \BRADDER_OUT[4]~output_o\);

-- Location: IOOBUF_X0_Y63_N23
\BRADDER_OUT[3]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst4|inst3|add_1|S\(3),
	devoe => ww_devoe,
	o => \BRADDER_OUT[3]~output_o\);

-- Location: IOOBUF_X7_Y0_N9
\BRADDER_OUT[2]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst4|inst3|add_1|S\(2),
	devoe => ww_devoe,
	o => \BRADDER_OUT[2]~output_o\);

-- Location: IOOBUF_X9_Y0_N16
\BRADDER_OUT[1]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst4|inst3|add_1|ALT_INV_S\(1),
	devoe => ww_devoe,
	o => \BRADDER_OUT[1]~output_o\);

-- Location: IOOBUF_X11_Y0_N16
\BRADDER_OUT[0]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst4|inst3|add_1|P\(0),
	devoe => ww_devoe,
	o => \BRADDER_OUT[0]~output_o\);

-- Location: IOOBUF_X0_Y67_N16
\JOUT[15]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst4|inst7|OUT16B[15]~20_combout\,
	devoe => ww_devoe,
	o => \JOUT[15]~output_o\);

-- Location: IOOBUF_X0_Y62_N23
\JOUT[14]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst4|inst7|OUT16B[14]~8_combout\,
	devoe => ww_devoe,
	o => \JOUT[14]~output_o\);

-- Location: IOOBUF_X1_Y0_N16
\JOUT[13]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst4|inst7|OUT16B[13]~21_combout\,
	devoe => ww_devoe,
	o => \JOUT[13]~output_o\);

-- Location: IOOBUF_X18_Y73_N16
\JOUT[12]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst4|JUMPMUX|OUT16B[12]~14_combout\,
	devoe => ww_devoe,
	o => \JOUT[12]~output_o\);

-- Location: IOOBUF_X20_Y0_N16
\JOUT[11]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst4|JUMPMUX|OUT16B[11]~15_combout\,
	devoe => ww_devoe,
	o => \JOUT[11]~output_o\);

-- Location: IOOBUF_X11_Y0_N23
\JOUT[10]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst4|JUMPMUX|OUT16B[10]~20_combout\,
	devoe => ww_devoe,
	o => \JOUT[10]~output_o\);

-- Location: IOOBUF_X11_Y0_N9
\JOUT[9]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst4|JUMPMUX|OUT16B[9]~21_combout\,
	devoe => ww_devoe,
	o => \JOUT[9]~output_o\);

-- Location: IOOBUF_X20_Y73_N2
\JOUT[8]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst4|JUMPMUX|OUT16B[8]~22_combout\,
	devoe => ww_devoe,
	o => \JOUT[8]~output_o\);

-- Location: IOOBUF_X18_Y0_N2
\JOUT[7]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst4|JUMPMUX|OUT16B[7]~23_combout\,
	devoe => ww_devoe,
	o => \JOUT[7]~output_o\);

-- Location: IOOBUF_X9_Y0_N23
\JOUT[6]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst4|JUMPMUX|OUT16B[6]~16_combout\,
	devoe => ww_devoe,
	o => \JOUT[6]~output_o\);

-- Location: IOOBUF_X0_Y63_N16
\JOUT[5]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst4|JUMPMUX|OUT16B[5]~24_combout\,
	devoe => ww_devoe,
	o => \JOUT[5]~output_o\);

-- Location: IOOBUF_X0_Y18_N23
\JOUT[4]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst4|JUMPMUX|OUT16B[4]~25_combout\,
	devoe => ww_devoe,
	o => \JOUT[4]~output_o\);

-- Location: IOOBUF_X16_Y73_N16
\JOUT[3]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst4|JUMPMUX|OUT16B[3]~17_combout\,
	devoe => ww_devoe,
	o => \JOUT[3]~output_o\);

-- Location: IOOBUF_X0_Y67_N23
\JOUT[2]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst4|JUMPMUX|OUT16B[2]~26_combout\,
	devoe => ww_devoe,
	o => \JOUT[2]~output_o\);

-- Location: IOOBUF_X13_Y0_N23
\JOUT[1]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst4|JUMPMUX|OUT16B[1]~18_combout\,
	devoe => ww_devoe,
	o => \JOUT[1]~output_o\);

-- Location: IOOBUF_X9_Y0_N2
\JOUT[0]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst4|JUMPMUX|OUT16B[0]~19_combout\,
	devoe => ww_devoe,
	o => \JOUT[0]~output_o\);

-- Location: IOOBUF_X0_Y64_N2
\JUMPMUX_OUT[15]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst4|inst7|OUT16B[15]~20_combout\,
	devoe => ww_devoe,
	o => \JUMPMUX_OUT[15]~output_o\);

-- Location: IOOBUF_X0_Y61_N23
\JUMPMUX_OUT[14]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst4|inst7|OUT16B[14]~8_combout\,
	devoe => ww_devoe,
	o => \JUMPMUX_OUT[14]~output_o\);

-- Location: IOOBUF_X1_Y0_N23
\JUMPMUX_OUT[13]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst4|inst7|OUT16B[13]~21_combout\,
	devoe => ww_devoe,
	o => \JUMPMUX_OUT[13]~output_o\);

-- Location: IOOBUF_X9_Y0_N9
\JUMPMUX_OUT[12]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst4|inst7|OUT16B[12]~18_combout\,
	devoe => ww_devoe,
	o => \JUMPMUX_OUT[12]~output_o\);

-- Location: IOOBUF_X0_Y14_N9
\JUMPMUX_OUT[11]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst4|inst7|OUT16B[11]~23_combout\,
	devoe => ww_devoe,
	o => \JUMPMUX_OUT[11]~output_o\);

-- Location: IOOBUF_X29_Y0_N16
\JUMPMUX_OUT[10]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst4|inst7|OUT16B[10]~9_combout\,
	devoe => ww_devoe,
	o => \JUMPMUX_OUT[10]~output_o\);

-- Location: IOOBUF_X0_Y11_N16
\JUMPMUX_OUT[9]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst4|inst7|OUT16B[9]~10_combout\,
	devoe => ww_devoe,
	o => \JUMPMUX_OUT[9]~output_o\);

-- Location: IOOBUF_X25_Y73_N23
\JUMPMUX_OUT[8]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst4|inst7|OUT16B[8]~11_combout\,
	devoe => ww_devoe,
	o => \JUMPMUX_OUT[8]~output_o\);

-- Location: IOOBUF_X0_Y59_N16
\JUMPMUX_OUT[7]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst4|inst7|OUT16B[7]~12_combout\,
	devoe => ww_devoe,
	o => \JUMPMUX_OUT[7]~output_o\);

-- Location: IOOBUF_X0_Y4_N9
\JUMPMUX_OUT[6]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst4|inst7|OUT16B[6]~13_combout\,
	devoe => ww_devoe,
	o => \JUMPMUX_OUT[6]~output_o\);

-- Location: IOOBUF_X0_Y22_N23
\JUMPMUX_OUT[5]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst4|inst7|OUT16B[5]~14_combout\,
	devoe => ww_devoe,
	o => \JUMPMUX_OUT[5]~output_o\);

-- Location: IOOBUF_X16_Y0_N2
\JUMPMUX_OUT[4]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst4|inst7|OUT16B[4]~15_combout\,
	devoe => ww_devoe,
	o => \JUMPMUX_OUT[4]~output_o\);

-- Location: IOOBUF_X23_Y73_N16
\JUMPMUX_OUT[3]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst4|inst7|OUT16B[3]~16_combout\,
	devoe => ww_devoe,
	o => \JUMPMUX_OUT[3]~output_o\);

-- Location: IOOBUF_X0_Y33_N23
\JUMPMUX_OUT[2]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst4|inst7|OUT16B[2]~22_combout\,
	devoe => ww_devoe,
	o => \JUMPMUX_OUT[2]~output_o\);

-- Location: IOOBUF_X27_Y73_N16
\JUMPMUX_OUT[1]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst4|inst7|ALT_INV_OUT16B[1]~17_combout\,
	devoe => ww_devoe,
	o => \JUMPMUX_OUT[1]~output_o\);

-- Location: IOOBUF_X18_Y0_N9
\JUMPMUX_OUT[0]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst4|inst7|OUT16B[0]~19_combout\,
	devoe => ww_devoe,
	o => \JUMPMUX_OUT[0]~output_o\);

-- Location: IOOBUF_X0_Y34_N16
\PCP2[15]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst4|inst2|alu0|alu3|adder|S\(3),
	devoe => ww_devoe,
	o => \PCP2[15]~output_o\);

-- Location: IOOBUF_X0_Y62_N16
\PCP2[14]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst4|inst2|alu0|alu3|adder|S\(2),
	devoe => ww_devoe,
	o => \PCP2[14]~output_o\);

-- Location: IOOBUF_X0_Y6_N2
\PCP2[13]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst4|inst2|alu0|alu3|adder|S\(1),
	devoe => ww_devoe,
	o => \PCP2[13]~output_o\);

-- Location: IOOBUF_X31_Y0_N2
\PCP2[12]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst4|inst2|alu0|alu3|adder|S\(0),
	devoe => ww_devoe,
	o => \PCP2[12]~output_o\);

-- Location: IOOBUF_X31_Y0_N9
\PCP2[11]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst4|inst2|alu0|alu2|adder|S\(3),
	devoe => ww_devoe,
	o => \PCP2[11]~output_o\);

-- Location: IOOBUF_X23_Y0_N16
\PCP2[10]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst4|inst2|alu0|alu2|adder|S\(2),
	devoe => ww_devoe,
	o => \PCP2[10]~output_o\);

-- Location: IOOBUF_X0_Y50_N23
\PCP2[9]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst4|inst2|alu0|alu2|adder|S\(1),
	devoe => ww_devoe,
	o => \PCP2[9]~output_o\);

-- Location: IOOBUF_X20_Y73_N9
\PCP2[8]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst4|inst2|alu0|alu2|adder|S\(0),
	devoe => ww_devoe,
	o => \PCP2[8]~output_o\);

-- Location: IOOBUF_X0_Y55_N16
\PCP2[7]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst4|inst2|alu0|alu1|adder|S\(3),
	devoe => ww_devoe,
	o => \PCP2[7]~output_o\);

-- Location: IOOBUF_X18_Y0_N16
\PCP2[6]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst4|inst2|alu0|alu1|adder|S\(2),
	devoe => ww_devoe,
	o => \PCP2[6]~output_o\);

-- Location: IOOBUF_X23_Y73_N23
\PCP2[5]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst4|inst2|alu0|alu1|adder|S\(1),
	devoe => ww_devoe,
	o => \PCP2[5]~output_o\);

-- Location: IOOBUF_X18_Y0_N23
\PCP2[4]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst4|inst2|alu0|alu1|adder|S\(0),
	devoe => ww_devoe,
	o => \PCP2[4]~output_o\);

-- Location: IOOBUF_X0_Y14_N2
\PCP2[3]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst4|inst2|alu0|alu0|adder|S\(3),
	devoe => ww_devoe,
	o => \PCP2[3]~output_o\);

-- Location: IOOBUF_X16_Y73_N23
\PCP2[2]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst4|inst2|alu0|alu0|adder|S\(2),
	devoe => ww_devoe,
	o => \PCP2[2]~output_o\);

-- Location: IOOBUF_X0_Y23_N23
\PCP2[1]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst4|inst|reg|reg_1|ALT_INV_y\(1),
	devoe => ww_devoe,
	o => \PCP2[1]~output_o\);

-- Location: IOOBUF_X16_Y0_N9
\PCP2[0]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst4|inst|reg|reg_1|y\(0),
	devoe => ww_devoe,
	o => \PCP2[0]~output_o\);

-- Location: IOOBUF_X0_Y51_N16
\REG1OUT[15]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst2|inst|mux_1|mux_1|mux_generate:3:mux_i|Mux0~1_combout\,
	devoe => ww_devoe,
	o => \REG1OUT[15]~output_o\);

-- Location: IOOBUF_X0_Y13_N9
\REG1OUT[14]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst2|inst|mux_1|mux_1|mux_generate:3:mux_i|Mux1~1_combout\,
	devoe => ww_devoe,
	o => \REG1OUT[14]~output_o\);

-- Location: IOOBUF_X0_Y22_N16
\REG1OUT[13]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst2|inst|mux_1|mux_1|mux_generate:3:mux_i|Mux2~1_combout\,
	devoe => ww_devoe,
	o => \REG1OUT[13]~output_o\);

-- Location: IOOBUF_X0_Y18_N16
\REG1OUT[12]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst2|inst|mux_1|mux_1|mux_generate:3:mux_i|Mux3~1_combout\,
	devoe => ww_devoe,
	o => \REG1OUT[12]~output_o\);

-- Location: IOOBUF_X0_Y19_N2
\REG1OUT[11]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst2|inst|mux_1|mux_1|mux_generate:2:mux_i|Mux0~1_combout\,
	devoe => ww_devoe,
	o => \REG1OUT[11]~output_o\);

-- Location: IOOBUF_X29_Y73_N2
\REG1OUT[10]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst2|inst|mux_1|mux_1|mux_generate:2:mux_i|Mux1~1_combout\,
	devoe => ww_devoe,
	o => \REG1OUT[10]~output_o\);

-- Location: IOOBUF_X13_Y73_N23
\REG1OUT[9]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst2|inst|mux_1|mux_1|mux_generate:2:mux_i|Mux2~2_combout\,
	devoe => ww_devoe,
	o => \REG1OUT[9]~output_o\);

-- Location: IOOBUF_X0_Y25_N23
\REG1OUT[8]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst2|inst|mux_1|mux_1|mux_generate:2:mux_i|Mux3~1_combout\,
	devoe => ww_devoe,
	o => \REG1OUT[8]~output_o\);

-- Location: IOOBUF_X0_Y20_N16
\REG1OUT[7]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst2|inst|mux_1|mux_1|mux_generate:1:mux_i|Mux0~1_combout\,
	devoe => ww_devoe,
	o => \REG1OUT[7]~output_o\);

-- Location: IOOBUF_X0_Y32_N16
\REG1OUT[6]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst2|inst|mux_1|mux_1|mux_generate:1:mux_i|Mux1~1_combout\,
	devoe => ww_devoe,
	o => \REG1OUT[6]~output_o\);

-- Location: IOOBUF_X0_Y47_N2
\REG1OUT[5]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst2|inst|mux_1|mux_1|mux_generate:1:mux_i|Mux2~1_combout\,
	devoe => ww_devoe,
	o => \REG1OUT[5]~output_o\);

-- Location: IOOBUF_X27_Y0_N23
\REG1OUT[4]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst2|inst|mux_1|mux_1|mux_generate:1:mux_i|Mux3~1_combout\,
	devoe => ww_devoe,
	o => \REG1OUT[4]~output_o\);

-- Location: IOOBUF_X0_Y17_N16
\REG1OUT[3]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst2|inst|mux_1|mux_1|mux_generate:0:mux_i|Mux0~1_combout\,
	devoe => ww_devoe,
	o => \REG1OUT[3]~output_o\);

-- Location: IOOBUF_X0_Y21_N23
\REG1OUT[2]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst2|inst|mux_1|mux_1|mux_generate:0:mux_i|Mux1~1_combout\,
	devoe => ww_devoe,
	o => \REG1OUT[2]~output_o\);

-- Location: IOOBUF_X20_Y0_N23
\REG1OUT[1]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst2|inst|mux_1|mux_1|mux_generate:0:mux_i|Mux2~1_combout\,
	devoe => ww_devoe,
	o => \REG1OUT[1]~output_o\);

-- Location: IOOBUF_X7_Y0_N16
\REG1OUT[0]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst2|inst|mux_1|mux_1|mux_generate:0:mux_i|Mux3~1_combout\,
	devoe => ww_devoe,
	o => \REG1OUT[0]~output_o\);

-- Location: IOOBUF_X0_Y34_N23
\REG2_OUT[15]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst2|inst|mux_2|mux_1|mux_generate:3:mux_i|Mux0~3_combout\,
	devoe => ww_devoe,
	o => \REG2_OUT[15]~output_o\);

-- Location: IOOBUF_X0_Y31_N16
\REG2_OUT[14]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst2|inst|mux_2|mux_1|mux_generate:3:mux_i|Mux1~3_combout\,
	devoe => ww_devoe,
	o => \REG2_OUT[14]~output_o\);

-- Location: IOOBUF_X0_Y26_N16
\REG2_OUT[13]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst2|inst|mux_2|mux_1|mux_generate:3:mux_i|Mux2~3_combout\,
	devoe => ww_devoe,
	o => \REG2_OUT[13]~output_o\);

-- Location: IOOBUF_X0_Y25_N16
\REG2_OUT[12]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst2|inst|mux_2|mux_1|mux_generate:3:mux_i|Mux3~3_combout\,
	devoe => ww_devoe,
	o => \REG2_OUT[12]~output_o\);

-- Location: IOOBUF_X0_Y35_N9
\REG2_OUT[11]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst2|inst|mux_2|mux_1|mux_generate:2:mux_i|Mux0~3_combout\,
	devoe => ww_devoe,
	o => \REG2_OUT[11]~output_o\);

-- Location: IOOBUF_X0_Y33_N16
\REG2_OUT[10]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst2|inst|mux_2|mux_1|mux_generate:2:mux_i|Mux1~3_combout\,
	devoe => ww_devoe,
	o => \REG2_OUT[10]~output_o\);

-- Location: IOOBUF_X0_Y34_N2
\REG2_OUT[9]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst2|inst|mux_2|mux_1|mux_generate:2:mux_i|Mux2~3_combout\,
	devoe => ww_devoe,
	o => \REG2_OUT[9]~output_o\);

-- Location: IOOBUF_X0_Y32_N23
\REG2_OUT[8]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst2|inst|mux_2|mux_1|mux_generate:2:mux_i|Mux3~3_combout\,
	devoe => ww_devoe,
	o => \REG2_OUT[8]~output_o\);

-- Location: IOOBUF_X0_Y27_N23
\REG2_OUT[7]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst2|inst|mux_2|mux_1|mux_generate:1:mux_i|Mux0~3_combout\,
	devoe => ww_devoe,
	o => \REG2_OUT[7]~output_o\);

-- Location: IOOBUF_X0_Y29_N23
\REG2_OUT[6]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst2|inst|mux_2|mux_1|mux_generate:1:mux_i|Mux1~3_combout\,
	devoe => ww_devoe,
	o => \REG2_OUT[6]~output_o\);

-- Location: IOOBUF_X0_Y27_N16
\REG2_OUT[5]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst2|inst|mux_2|mux_1|mux_generate:1:mux_i|Mux2~3_combout\,
	devoe => ww_devoe,
	o => \REG2_OUT[5]~output_o\);

-- Location: IOOBUF_X0_Y24_N9
\REG2_OUT[4]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst2|inst|mux_2|mux_1|mux_generate:1:mux_i|Mux3~3_combout\,
	devoe => ww_devoe,
	o => \REG2_OUT[4]~output_o\);

-- Location: IOOBUF_X0_Y28_N23
\REG2_OUT[3]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst2|inst|mux_2|mux_1|mux_generate:0:mux_i|Mux0~3_combout\,
	devoe => ww_devoe,
	o => \REG2_OUT[3]~output_o\);

-- Location: IOOBUF_X0_Y24_N2
\REG2_OUT[2]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst2|inst|mux_2|mux_1|mux_generate:0:mux_i|Mux1~3_combout\,
	devoe => ww_devoe,
	o => \REG2_OUT[2]~output_o\);

-- Location: IOOBUF_X7_Y0_N23
\REG2_OUT[1]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst2|inst|mux_2|mux_1|mux_generate:0:mux_i|Mux2~3_combout\,
	devoe => ww_devoe,
	o => \REG2_OUT[1]~output_o\);

-- Location: IOOBUF_X0_Y28_N16
\REG2_OUT[0]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst2|inst|mux_2|mux_1|mux_generate:0:mux_i|Mux3~7_combout\,
	devoe => ww_devoe,
	o => \REG2_OUT[0]~output_o\);

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

-- Location: LCCOMB_X17_Y33_N22
\inst4|inst1|dec|dcd_0|D[5]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|inst1|dec|dcd_0|D[5]~1_combout\ = (!\inst4|inst|reg|reg_1|y\(2) & \inst4|inst|reg|reg_1|y\(1))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst4|inst|reg|reg_1|y\(2),
	datad => \inst4|inst|reg|reg_1|y\(1),
	combout => \inst4|inst1|dec|dcd_0|D[5]~1_combout\);

-- Location: IOIBUF_X115_Y37_N8
\RST~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_RST,
	o => \RST~input_o\);

-- Location: LCCOMB_X17_Y35_N6
\inst4|inst1|data_out[4]~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|inst1|data_out[4]~5_combout\ = ((\inst4|inst|reg|reg_1|y\(2) & ((\inst4|inst|reg|reg_1|y\(3)) # (!\inst4|inst|reg|reg_1|y\(1))))) # (!\inst4|inst1|data_out[7]~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101010111110101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|inst1|data_out[7]~0_combout\,
	datab => \inst4|inst|reg|reg_1|y\(3),
	datac => \inst4|inst|reg|reg_1|y\(2),
	datad => \inst4|inst|reg|reg_1|y\(1),
	combout => \inst4|inst1|data_out[4]~5_combout\);

-- Location: LCCOMB_X18_Y33_N8
\inst4|inst1|INS_OUT[4]~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|inst1|INS_OUT[4]~7_combout\ = (\inst4|inst1|data_out[4]~5_combout\ & !\inst4|inst1|exception~2_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst4|inst1|data_out[4]~5_combout\,
	datac => \inst4|inst1|exception~2_combout\,
	combout => \inst4|inst1|INS_OUT[4]~7_combout\);

-- Location: LCCOMB_X17_Y35_N24
\inst4|inst1|dec|dcd_0|D[2]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|inst1|dec|dcd_0|D[2]~0_combout\ = (\inst4|inst1|data_out[7]~0_combout\ & (!\inst4|inst|reg|reg_1|y\(3) & (\inst4|inst|reg|reg_1|y\(2) & !\inst4|inst|reg|reg_1|y\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|inst1|data_out[7]~0_combout\,
	datab => \inst4|inst|reg|reg_1|y\(3),
	datac => \inst4|inst|reg|reg_1|y\(2),
	datad => \inst4|inst|reg|reg_1|y\(1),
	combout => \inst4|inst1|dec|dcd_0|D[2]~0_combout\);

-- Location: LCCOMB_X17_Y35_N14
\inst4|inst1|INS_OUT[3]~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|inst1|INS_OUT[3]~8_combout\ = (\inst4|inst1|dec|dcd_0|D[2]~0_combout\ & !\inst4|inst1|exception~2_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst4|inst1|dec|dcd_0|D[2]~0_combout\,
	datad => \inst4|inst1|exception~2_combout\,
	combout => \inst4|inst1|INS_OUT[3]~8_combout\);

-- Location: LCCOMB_X16_Y33_N14
\inst4|inst2|alu0|alu0|adder|S[2]\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|inst2|alu0|alu0|adder|S\(2) = \inst4|inst|reg|reg_1|y\(2) $ (\inst4|inst|reg|reg_1|y\(1))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst4|inst|reg|reg_1|y\(2),
	datad => \inst4|inst|reg|reg_1|y\(1),
	combout => \inst4|inst2|alu0|alu0|adder|S\(2));

-- Location: LCCOMB_X16_Y33_N6
\inst4|inst3|add_1|G[1]\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|inst3|add_1|G\(1) = (!\inst4|inst|reg|reg_1|y\(1) & (!\inst4|inst1|exception~2_combout\ & \inst4|inst1|data_out[1]~7_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|inst|reg|reg_1|y\(1),
	datac => \inst4|inst1|exception~2_combout\,
	datad => \inst4|inst1|data_out[1]~7_combout\,
	combout => \inst4|inst3|add_1|G\(1));

-- Location: LCCOMB_X16_Y32_N2
\inst4|inst1|data_out[2]~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|inst1|data_out[2]~6_combout\ = (!\inst4|inst|reg|reg_1|y\(3) & ((!\inst4|inst|reg|reg_1|y\(1)) # (!\inst4|inst|reg|reg_1|y\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst4|inst|reg|reg_1|y\(2),
	datac => \inst4|inst|reg|reg_1|y\(1),
	datad => \inst4|inst|reg|reg_1|y\(3),
	combout => \inst4|inst1|data_out[2]~6_combout\);

-- Location: LCCOMB_X16_Y32_N8
\inst4|inst1|INS_OUT[2]~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|inst1|INS_OUT[2]~14_combout\ = (!\inst4|inst1|exception~2_combout\ & ((\inst4|inst|reg|reg_1|y\(5)) # ((\inst4|inst|reg|reg_1|y\(4)) # (!\inst4|inst1|data_out[2]~6_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|inst|reg|reg_1|y\(5),
	datab => \inst4|inst1|data_out[2]~6_combout\,
	datac => \inst4|inst|reg|reg_1|y\(4),
	datad => \inst4|inst1|exception~2_combout\,
	combout => \inst4|inst1|INS_OUT[2]~14_combout\);

-- Location: LCCOMB_X16_Y33_N10
\inst4|inst3|add_1|C[3]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|inst3|add_1|C[3]~1_combout\ = (\inst4|inst2|alu0|alu0|adder|S\(2) & ((\inst4|inst3|add_1|C~0_combout\) # ((\inst4|inst3|add_1|G\(1)) # (\inst4|inst1|INS_OUT[2]~14_combout\)))) # (!\inst4|inst2|alu0|alu0|adder|S\(2) & 
-- (\inst4|inst1|INS_OUT[2]~14_combout\ & ((\inst4|inst3|add_1|C~0_combout\) # (\inst4|inst3|add_1|G\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111011001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|inst3|add_1|C~0_combout\,
	datab => \inst4|inst2|alu0|alu0|adder|S\(2),
	datac => \inst4|inst3|add_1|G\(1),
	datad => \inst4|inst1|INS_OUT[2]~14_combout\,
	combout => \inst4|inst3|add_1|C[3]~1_combout\);

-- Location: LCCOMB_X17_Y33_N24
\inst4|inst2|alu0|alu0|adder|C~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|inst2|alu0|alu0|adder|C~0_combout\ = (\inst4|inst|reg|reg_1|y\(2) & \inst4|inst|reg|reg_1|y\(1))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst4|inst|reg|reg_1|y\(2),
	datad => \inst4|inst|reg|reg_1|y\(1),
	combout => \inst4|inst2|alu0|alu0|adder|C~0_combout\);

-- Location: LCCOMB_X16_Y33_N12
\inst4|inst3|add_1|C4~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|inst3|add_1|C4~0_combout\ = (\inst4|inst3|add_1|C[3]~1_combout\ & ((\inst4|inst1|INS_OUT[3]~8_combout\) # (\inst4|inst2|alu0|alu0|adder|C~0_combout\ $ (\inst4|inst|reg|reg_1|y\(3))))) # (!\inst4|inst3|add_1|C[3]~1_combout\ & 
-- (\inst4|inst1|INS_OUT[3]~8_combout\ & (\inst4|inst2|alu0|alu0|adder|C~0_combout\ $ (\inst4|inst|reg|reg_1|y\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011111000101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|inst3|add_1|C[3]~1_combout\,
	datab => \inst4|inst2|alu0|alu0|adder|C~0_combout\,
	datac => \inst4|inst|reg|reg_1|y\(3),
	datad => \inst4|inst1|INS_OUT[3]~8_combout\,
	combout => \inst4|inst3|add_1|C4~0_combout\);

-- Location: LCCOMB_X18_Y30_N30
\inst4|inst2|alu0|alu0|adder|COUT~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|inst2|alu0|alu0|adder|COUT~0_combout\ = (\inst4|inst|reg|reg_1|y\(2) & (\inst4|inst|reg|reg_1|y\(1) & \inst4|inst|reg|reg_1|y\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst4|inst|reg|reg_1|y\(2),
	datac => \inst4|inst|reg|reg_1|y\(1),
	datad => \inst4|inst|reg|reg_1|y\(3),
	combout => \inst4|inst2|alu0|alu0|adder|COUT~0_combout\);

-- Location: LCCOMB_X18_Y30_N12
\inst4|inst3|add_2|S[0]\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|inst3|add_2|S\(0) = \inst4|inst|reg|reg_1|y\(4) $ (\inst4|inst3|add_1|C4~0_combout\ $ (\inst4|inst2|alu0|alu0|adder|COUT~0_combout\ $ (\inst4|inst1|INS_OUT[4]~7_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|inst|reg|reg_1|y\(4),
	datab => \inst4|inst3|add_1|C4~0_combout\,
	datac => \inst4|inst2|alu0|alu0|adder|COUT~0_combout\,
	datad => \inst4|inst1|INS_OUT[4]~7_combout\,
	combout => \inst4|inst3|add_2|S\(0));

-- Location: LCCOMB_X18_Y30_N20
\inst4|inst7|OUT16B[4]~15\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|inst7|OUT16B[4]~15_combout\ = (\inst|Mux3~1_combout\ & (((\inst4|inst3|add_2|S\(0))))) # (!\inst|Mux3~1_combout\ & (\inst4|inst|reg|reg_1|y\(4) $ (((\inst4|inst2|alu0|alu0|adder|COUT~0_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110001011010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|inst|reg|reg_1|y\(4),
	datab => \inst4|inst3|add_2|S\(0),
	datac => \inst4|inst2|alu0|alu0|adder|COUT~0_combout\,
	datad => \inst|Mux3~1_combout\,
	combout => \inst4|inst7|OUT16B[4]~15_combout\);

-- Location: LCCOMB_X17_Y33_N10
\inst4|inst|to_pc[4]\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|inst|to_pc\(4) = (!\RST~input_o\ & ((\inst|Mux2~0_combout\ & (\inst4|inst1|INS_OUT[3]~8_combout\)) # (!\inst|Mux2~0_combout\ & ((\inst4|inst7|OUT16B[4]~15_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101100001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|inst1|INS_OUT[3]~8_combout\,
	datab => \inst|Mux2~0_combout\,
	datac => \RST~input_o\,
	datad => \inst4|inst7|OUT16B[4]~15_combout\,
	combout => \inst4|inst|to_pc\(4));

-- Location: IOIBUF_X115_Y37_N1
\PCEN~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_PCEN,
	o => \PCEN~input_o\);

-- Location: FF_X17_Y33_N11
\inst4|inst|reg|reg_1|y[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~input_o\,
	d => \inst4|inst|to_pc\(4),
	ena => \PCEN~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst4|inst|reg|reg_1|y\(4));

-- Location: LCCOMB_X18_Y30_N10
\inst4|inst3|add_2|C[1]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|inst3|add_2|C[1]~0_combout\ = (\inst4|inst3|add_1|C4~0_combout\ & ((\inst4|inst1|INS_OUT[4]~7_combout\) # (\inst4|inst|reg|reg_1|y\(4) $ (\inst4|inst2|alu0|alu0|adder|COUT~0_combout\)))) # (!\inst4|inst3|add_1|C4~0_combout\ & 
-- (\inst4|inst1|INS_OUT[4]~7_combout\ & (\inst4|inst|reg|reg_1|y\(4) $ (\inst4|inst2|alu0|alu0|adder|COUT~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101111001001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|inst|reg|reg_1|y\(4),
	datab => \inst4|inst3|add_1|C4~0_combout\,
	datac => \inst4|inst2|alu0|alu0|adder|COUT~0_combout\,
	datad => \inst4|inst1|INS_OUT[4]~7_combout\,
	combout => \inst4|inst3|add_2|C[1]~0_combout\);

-- Location: LCCOMB_X18_Y30_N8
\inst4|inst2|alu0|alu1|adder|C~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|inst2|alu0|alu1|adder|C~0_combout\ = (\inst4|inst|reg|reg_1|y\(4) & (\inst4|inst|reg|reg_1|y\(2) & (\inst4|inst|reg|reg_1|y\(1) & \inst4|inst|reg|reg_1|y\(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|inst|reg|reg_1|y\(4),
	datab => \inst4|inst|reg|reg_1|y\(2),
	datac => \inst4|inst|reg|reg_1|y\(1),
	datad => \inst4|inst|reg|reg_1|y\(3),
	combout => \inst4|inst2|alu0|alu1|adder|C~0_combout\);

-- Location: LCCOMB_X17_Y36_N20
\inst4|inst1|INS_OUT[5]~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|inst1|INS_OUT[5]~6_combout\ = (!\inst4|inst1|exception~2_combout\ & (((\inst4|inst|reg|reg_1|y\(2) & \inst4|inst|reg|reg_1|y\(3))) # (!\inst4|inst1|data_out[7]~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|inst|reg|reg_1|y\(2),
	datab => \inst4|inst1|data_out[7]~0_combout\,
	datac => \inst4|inst|reg|reg_1|y\(3),
	datad => \inst4|inst1|exception~2_combout\,
	combout => \inst4|inst1|INS_OUT[5]~6_combout\);

-- Location: LCCOMB_X18_Y30_N2
\inst4|inst3|add_2|S[1]\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|inst3|add_2|S\(1) = \inst4|inst3|add_2|C[1]~0_combout\ $ (\inst4|inst2|alu0|alu1|adder|C~0_combout\ $ (\inst4|inst1|INS_OUT[5]~6_combout\ $ (\inst4|inst|reg|reg_1|y\(5))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|inst3|add_2|C[1]~0_combout\,
	datab => \inst4|inst2|alu0|alu1|adder|C~0_combout\,
	datac => \inst4|inst1|INS_OUT[5]~6_combout\,
	datad => \inst4|inst|reg|reg_1|y\(5),
	combout => \inst4|inst3|add_2|S\(1));

-- Location: LCCOMB_X18_Y30_N22
\inst4|inst7|OUT16B[5]~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|inst7|OUT16B[5]~14_combout\ = (\inst|Mux3~1_combout\ & (((\inst4|inst3|add_2|S\(1))))) # (!\inst|Mux3~1_combout\ & (\inst4|inst|reg|reg_1|y\(5) $ (((\inst4|inst2|alu0|alu1|adder|C~0_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110001011010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|inst|reg|reg_1|y\(5),
	datab => \inst4|inst3|add_2|S\(1),
	datac => \inst4|inst2|alu0|alu1|adder|C~0_combout\,
	datad => \inst|Mux3~1_combout\,
	combout => \inst4|inst7|OUT16B[5]~14_combout\);

-- Location: LCCOMB_X17_Y33_N26
\inst4|inst|to_pc[5]\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|inst|to_pc\(5) = (!\RST~input_o\ & ((\inst|Mux2~0_combout\ & (\inst4|inst1|INS_OUT[4]~7_combout\)) # (!\inst|Mux2~0_combout\ & ((\inst4|inst7|OUT16B[5]~14_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010001100100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|inst1|INS_OUT[4]~7_combout\,
	datab => \RST~input_o\,
	datac => \inst|Mux2~0_combout\,
	datad => \inst4|inst7|OUT16B[5]~14_combout\,
	combout => \inst4|inst|to_pc\(5));

-- Location: FF_X17_Y33_N27
\inst4|inst|reg|reg_1|y[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~input_o\,
	d => \inst4|inst|to_pc\(5),
	ena => \PCEN~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst4|inst|reg|reg_1|y\(5));

-- Location: LCCOMB_X17_Y33_N16
\inst4|inst1|data_out[7]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|inst1|data_out[7]~0_combout\ = (!\inst4|inst|reg|reg_1|y\(5) & !\inst4|inst|reg|reg_1|y\(4))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst4|inst|reg|reg_1|y\(5),
	datad => \inst4|inst|reg|reg_1|y\(4),
	combout => \inst4|inst1|data_out[7]~0_combout\);

-- Location: LCCOMB_X16_Y32_N26
\inst4|inst1|INS_OUT[14]~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|inst1|INS_OUT[14]~3_combout\ = (\inst4|inst1|data_out[7]~0_combout\ & (\inst4|inst2|alu0|alu0|adder|C~0_combout\ & (!\inst4|inst|reg|reg_1|y\(3) & !\inst4|inst1|exception~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|inst1|data_out[7]~0_combout\,
	datab => \inst4|inst2|alu0|alu0|adder|C~0_combout\,
	datac => \inst4|inst|reg|reg_1|y\(3),
	datad => \inst4|inst1|exception~2_combout\,
	combout => \inst4|inst1|INS_OUT[14]~3_combout\);

-- Location: LCCOMB_X17_Y33_N2
\inst4|inst1|data_out[9]~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|inst1|data_out[9]~3_combout\ = (((\inst4|inst|reg|reg_1|y\(2)) # (!\inst4|inst|reg|reg_1|y\(1))) # (!\inst4|inst1|data_out[7]~0_combout\)) # (!\inst4|inst|reg|reg_1|y\(3))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111011111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|inst|reg|reg_1|y\(3),
	datab => \inst4|inst1|data_out[7]~0_combout\,
	datac => \inst4|inst|reg|reg_1|y\(2),
	datad => \inst4|inst|reg|reg_1|y\(1),
	combout => \inst4|inst1|data_out[9]~3_combout\);

-- Location: LCCOMB_X17_Y33_N4
\inst4|inst1|data_out[12]~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|inst1|data_out[12]~4_combout\ = (\inst4|inst|reg|reg_1|y\(1)) # ((\inst4|inst|reg|reg_1|y\(3)) # ((!\inst4|inst1|data_out[7]~0_combout\) # (!\inst4|inst|reg|reg_1|y\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|inst|reg|reg_1|y\(1),
	datab => \inst4|inst|reg|reg_1|y\(3),
	datac => \inst4|inst|reg|reg_1|y\(2),
	datad => \inst4|inst1|data_out[7]~0_combout\,
	combout => \inst4|inst1|data_out[12]~4_combout\);

-- Location: LCCOMB_X17_Y33_N6
\inst4|inst1|INS_OUT[12]~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|inst1|INS_OUT[12]~5_combout\ = (\inst4|inst1|data_out[9]~3_combout\ & (\inst4|inst1|data_out[12]~4_combout\ & !\inst4|inst1|exception~2_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst4|inst1|data_out[9]~3_combout\,
	datac => \inst4|inst1|data_out[12]~4_combout\,
	datad => \inst4|inst1|exception~2_combout\,
	combout => \inst4|inst1|INS_OUT[12]~5_combout\);

-- Location: LCCOMB_X16_Y32_N4
\inst|Mux9~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Mux9~0_combout\ = (!\inst4|inst1|INS_OUT[15]~4_combout\ & (!\inst4|inst1|INS_OUT[13]~2_combout\ & (\inst4|inst1|INS_OUT[14]~3_combout\ & !\inst4|inst1|INS_OUT[12]~5_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|inst1|INS_OUT[15]~4_combout\,
	datab => \inst4|inst1|INS_OUT[13]~2_combout\,
	datac => \inst4|inst1|INS_OUT[14]~3_combout\,
	datad => \inst4|inst1|INS_OUT[12]~5_combout\,
	combout => \inst|Mux9~0_combout\);

-- Location: LCCOMB_X16_Y33_N30
\inst2|inst3|DOUT[1]~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|inst3|DOUT[1]~4_combout\ = (\inst|Mux8~0_combout\) # ((!\inst4|inst1|exception~2_combout\ & \inst4|inst1|data_out[1]~7_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst4|inst1|exception~2_combout\,
	datac => \inst4|inst1|data_out[1]~7_combout\,
	datad => \inst|Mux8~0_combout\,
	combout => \inst2|inst3|DOUT[1]~4_combout\);

-- Location: LCCOMB_X16_Y31_N2
\inst|Mux5~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Mux5~0_combout\ = (!\inst4|inst1|INS_OUT[14]~3_combout\ & (\inst4|inst1|INS_OUT[15]~4_combout\ & (\inst4|inst1|INS_OUT[13]~2_combout\ & \inst4|inst1|INS_OUT[12]~5_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|inst1|INS_OUT[14]~3_combout\,
	datab => \inst4|inst1|INS_OUT[15]~4_combout\,
	datac => \inst4|inst1|INS_OUT[13]~2_combout\,
	datad => \inst4|inst1|INS_OUT[12]~5_combout\,
	combout => \inst|Mux5~0_combout\);

-- Location: LCCOMB_X16_Y32_N12
\inst2|inst2|OUT16B[0]~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|inst2|OUT16B[0]~5_combout\ = (\inst4|inst1|INS_OUT[15]~4_combout\ & (\inst4|inst1|INS_OUT[13]~2_combout\ & (\inst4|inst1|INS_OUT[0]~10_combout\ & \inst4|inst1|INS_OUT[12]~5_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|inst1|INS_OUT[15]~4_combout\,
	datab => \inst4|inst1|INS_OUT[13]~2_combout\,
	datac => \inst4|inst1|INS_OUT[0]~10_combout\,
	datad => \inst4|inst1|INS_OUT[12]~5_combout\,
	combout => \inst2|inst2|OUT16B[0]~5_combout\);

-- Location: LCCOMB_X16_Y32_N16
\inst2|inst3|DOUT[2]~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|inst3|DOUT[2]~3_combout\ = (\inst|Mux8~0_combout\ & ((\inst|Mux9~0_combout\))) # (!\inst|Mux8~0_combout\ & (\inst4|inst1|INS_OUT[2]~14_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst4|inst1|INS_OUT[2]~14_combout\,
	datac => \inst|Mux9~0_combout\,
	datad => \inst|Mux8~0_combout\,
	combout => \inst2|inst3|DOUT[2]~3_combout\);

-- Location: LCCOMB_X16_Y32_N20
\inst2|inst|mux_1|mux_1|mux_generate:2:mux_i|Mux2~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|inst|mux_1|mux_1|mux_generate:2:mux_i|Mux2~0_combout\ = ((\inst4|inst1|exception~2_combout\) # (!\inst4|inst1|data_out[9]~3_combout\)) # (!\inst4|inst1|data_out[10]~2_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst4|inst1|data_out[10]~2_combout\,
	datac => \inst4|inst1|data_out[9]~3_combout\,
	datad => \inst4|inst1|exception~2_combout\,
	combout => \inst2|inst|mux_1|mux_1|mux_generate:2:mux_i|Mux2~0_combout\);

-- Location: LCCOMB_X17_Y33_N0
\inst|Mux7~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Mux7~8_combout\ = (!\inst4|inst1|exception~2_combout\ & (\inst4|inst1|data_out[10]~2_combout\ & (!\inst4|inst1|data_out[13]~1_combout\ & \inst4|inst1|INS_OUT[12]~5_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|inst1|exception~2_combout\,
	datab => \inst4|inst1|data_out[10]~2_combout\,
	datac => \inst4|inst1|data_out[13]~1_combout\,
	datad => \inst4|inst1|INS_OUT[12]~5_combout\,
	combout => \inst|Mux7~8_combout\);

-- Location: LCCOMB_X17_Y33_N12
\inst4|inst1|data_out[6]~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|inst1|data_out[6]~8_combout\ = (!\inst4|inst|reg|reg_1|y\(3) & (\inst4|inst1|data_out[7]~0_combout\ & (\inst4|inst|reg|reg_1|y\(2) $ (!\inst4|inst|reg|reg_1|y\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000000000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|inst|reg|reg_1|y\(3),
	datab => \inst4|inst1|data_out[7]~0_combout\,
	datac => \inst4|inst|reg|reg_1|y\(2),
	datad => \inst4|inst|reg|reg_1|y\(1),
	combout => \inst4|inst1|data_out[6]~8_combout\);

-- Location: LCCOMB_X16_Y31_N24
\inst|Mux0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Mux0~0_combout\ = (!\inst4|inst1|INS_OUT[15]~4_combout\ & (!\inst4|inst1|INS_OUT[12]~5_combout\ & (!\inst4|inst1|INS_OUT[14]~3_combout\ & !\inst4|inst1|INS_OUT[13]~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|inst1|INS_OUT[15]~4_combout\,
	datab => \inst4|inst1|INS_OUT[12]~5_combout\,
	datac => \inst4|inst1|INS_OUT[14]~3_combout\,
	datad => \inst4|inst1|INS_OUT[13]~2_combout\,
	combout => \inst|Mux0~0_combout\);

-- Location: LCCOMB_X18_Y33_N12
\inst2|inst5|DOUT[0]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|inst5|DOUT[0]~2_combout\ = (!\inst4|inst1|exception~2_combout\ & ((\inst|Mux0~0_combout\ & ((\inst4|inst1|dec|dcd_0|D[2]~0_combout\))) # (!\inst|Mux0~0_combout\ & (\inst4|inst1|data_out[6]~8_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|inst1|exception~2_combout\,
	datab => \inst4|inst1|data_out[6]~8_combout\,
	datac => \inst4|inst1|dec|dcd_0|D[2]~0_combout\,
	datad => \inst|Mux0~0_combout\,
	combout => \inst2|inst5|DOUT[0]~2_combout\);

-- Location: LCCOMB_X16_Y31_N10
\inst|Mux1~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Mux1~0_combout\ = (\inst4|inst1|INS_OUT[14]~3_combout\) # ((\inst4|inst1|INS_OUT[15]~4_combout\ & ((!\inst4|inst1|INS_OUT[13]~2_combout\) # (!\inst4|inst1|INS_OUT[12]~5_combout\))) # (!\inst4|inst1|INS_OUT[15]~4_combout\ & 
-- ((\inst4|inst1|INS_OUT[12]~5_combout\) # (\inst4|inst1|INS_OUT[13]~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111011111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|inst1|INS_OUT[15]~4_combout\,
	datab => \inst4|inst1|INS_OUT[12]~5_combout\,
	datac => \inst4|inst1|INS_OUT[14]~3_combout\,
	datad => \inst4|inst1|INS_OUT[13]~2_combout\,
	combout => \inst|Mux1~0_combout\);

-- Location: LCCOMB_X18_Y32_N28
\inst4|inst1|data_out[7]~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|inst1|data_out[7]~9_combout\ = (!\inst4|inst|reg|reg_1|y\(5) & !\inst4|inst|reg|reg_1|y\(3))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst4|inst|reg|reg_1|y\(5),
	datad => \inst4|inst|reg|reg_1|y\(3),
	combout => \inst4|inst1|data_out[7]~9_combout\);

-- Location: LCCOMB_X18_Y32_N16
\inst4|inst1|data_out[7]~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|inst1|data_out[7]~10_combout\ = (!\inst4|inst|reg|reg_1|y\(4) & (\inst4|inst1|data_out[7]~9_combout\ & ((\inst4|inst|reg|reg_1|y\(2)) # (\inst4|inst|reg|reg_1|y\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100010001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|inst|reg|reg_1|y\(4),
	datab => \inst4|inst1|data_out[7]~9_combout\,
	datac => \inst4|inst|reg|reg_1|y\(2),
	datad => \inst4|inst|reg|reg_1|y\(1),
	combout => \inst4|inst1|data_out[7]~10_combout\);

-- Location: LCCOMB_X18_Y33_N22
\inst2|inst5|DOUT[1]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|inst5|DOUT[1]~1_combout\ = (!\inst4|inst1|exception~2_combout\ & ((\inst|Mux0~0_combout\ & (\inst4|inst1|data_out[4]~5_combout\)) # (!\inst|Mux0~0_combout\ & ((\inst4|inst1|data_out[7]~10_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110100001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Mux0~0_combout\,
	datab => \inst4|inst1|data_out[4]~5_combout\,
	datac => \inst4|inst1|exception~2_combout\,
	datad => \inst4|inst1|data_out[7]~10_combout\,
	combout => \inst2|inst5|DOUT[1]~1_combout\);

-- Location: LCCOMB_X17_Y33_N28
\inst4|inst1|dec|dcd_0|D[4]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|inst1|dec|dcd_0|D[4]~2_combout\ = (!\inst4|inst|reg|reg_1|y\(1) & (\inst4|inst|reg|reg_1|y\(3) & (!\inst4|inst|reg|reg_1|y\(2) & \inst4|inst1|data_out[7]~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|inst|reg|reg_1|y\(1),
	datab => \inst4|inst|reg|reg_1|y\(3),
	datac => \inst4|inst|reg|reg_1|y\(2),
	datad => \inst4|inst1|data_out[7]~0_combout\,
	combout => \inst4|inst1|dec|dcd_0|D[4]~2_combout\);

-- Location: LCCOMB_X18_Y33_N18
\inst4|inst1|data_out[5]~11\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|inst1|data_out[5]~11_combout\ = (!\inst4|inst|reg|reg_1|y\(4) & (!\inst4|inst|reg|reg_1|y\(5) & ((!\inst4|inst|reg|reg_1|y\(3)) # (!\inst4|inst|reg|reg_1|y\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000100000011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|inst|reg|reg_1|y\(2),
	datab => \inst4|inst|reg|reg_1|y\(4),
	datac => \inst4|inst|reg|reg_1|y\(5),
	datad => \inst4|inst|reg|reg_1|y\(3),
	combout => \inst4|inst1|data_out[5]~11_combout\);

-- Location: LCCOMB_X18_Y33_N16
\inst2|inst5|DOUT[2]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|inst5|DOUT[2]~0_combout\ = (!\inst4|inst1|exception~2_combout\ & ((\inst|Mux0~0_combout\ & ((!\inst4|inst1|data_out[5]~11_combout\))) # (!\inst|Mux0~0_combout\ & (\inst4|inst1|dec|dcd_0|D[4]~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010000001110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Mux0~0_combout\,
	datab => \inst4|inst1|dec|dcd_0|D[4]~2_combout\,
	datac => \inst4|inst1|exception~2_combout\,
	datad => \inst4|inst1|data_out[5]~11_combout\,
	combout => \inst2|inst5|DOUT[2]~0_combout\);

-- Location: LCCOMB_X12_Y36_N4
\inst2|inst|add_reg1_dcd|Mux3~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|inst|add_reg1_dcd|Mux3~3_combout\ = (\inst2|inst5|DOUT[0]~2_combout\ & (!\inst|Mux1~0_combout\ & (\inst2|inst5|DOUT[1]~1_combout\ & !\inst2|inst5|DOUT[2]~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|inst5|DOUT[0]~2_combout\,
	datab => \inst|Mux1~0_combout\,
	datac => \inst2|inst5|DOUT[1]~1_combout\,
	datad => \inst2|inst5|DOUT[2]~0_combout\,
	combout => \inst2|inst|add_reg1_dcd|Mux3~3_combout\);

-- Location: FF_X17_Y35_N15
\inst2|inst|reg_gen:3:regs|reg_1|y[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~input_o\,
	asdata => \inst3|OUT16B[3]~12_combout\,
	sload => VCC,
	ena => \inst2|inst|add_reg1_dcd|Mux3~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst2|inst|reg_gen:3:regs|reg_1|y\(3));

-- Location: LCCOMB_X12_Y36_N28
\inst2|inst|add_reg1_dcd|Mux3~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|inst|add_reg1_dcd|Mux3~2_combout\ = (!\inst2|inst5|DOUT[0]~2_combout\ & (!\inst2|inst5|DOUT[2]~0_combout\ & (\inst2|inst5|DOUT[1]~1_combout\ & !\inst|Mux1~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|inst5|DOUT[0]~2_combout\,
	datab => \inst2|inst5|DOUT[2]~0_combout\,
	datac => \inst2|inst5|DOUT[1]~1_combout\,
	datad => \inst|Mux1~0_combout\,
	combout => \inst2|inst|add_reg1_dcd|Mux3~2_combout\);

-- Location: FF_X16_Y34_N25
\inst2|inst|reg_gen:2:regs|reg_1|y[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~input_o\,
	asdata => \inst3|OUT16B[3]~12_combout\,
	sload => VCC,
	ena => \inst2|inst|add_reg1_dcd|Mux3~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst2|inst|reg_gen:2:regs|reg_1|y\(3));

-- Location: LCCOMB_X17_Y35_N8
\inst2|inst|mux_2|mux_1|mux_generate:0:mux_i|Mux0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|inst|mux_2|mux_1|mux_generate:0:mux_i|Mux0~0_combout\ = (\inst4|inst1|data_out[6]~8_combout\ & ((\inst4|inst1|exception~2_combout\ & ((\inst2|inst|reg_gen:2:regs|reg_1|y\(3)))) # (!\inst4|inst1|exception~2_combout\ & 
-- (\inst2|inst|reg_gen:3:regs|reg_1|y\(3))))) # (!\inst4|inst1|data_out[6]~8_combout\ & (((\inst2|inst|reg_gen:2:regs|reg_1|y\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110100100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|inst1|data_out[6]~8_combout\,
	datab => \inst4|inst1|exception~2_combout\,
	datac => \inst2|inst|reg_gen:3:regs|reg_1|y\(3),
	datad => \inst2|inst|reg_gen:2:regs|reg_1|y\(3),
	combout => \inst2|inst|mux_2|mux_1|mux_generate:0:mux_i|Mux0~0_combout\);

-- Location: LCCOMB_X18_Y32_N30
\inst2|inst|mux_2|mux_1|mux_generate:0:mux_i|Mux3~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|inst|mux_2|mux_1|mux_generate:0:mux_i|Mux3~2_combout\ = (!\inst4|inst1|dec|dcd_0|D[4]~2_combout\ & (!\inst4|inst1|exception~2_combout\ & \inst4|inst1|data_out[7]~10_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|inst1|dec|dcd_0|D[4]~2_combout\,
	datab => \inst4|inst1|exception~2_combout\,
	datad => \inst4|inst1|data_out[7]~10_combout\,
	combout => \inst2|inst|mux_2|mux_1|mux_generate:0:mux_i|Mux3~2_combout\);

-- Location: LCCOMB_X16_Y35_N0
\inst2|inst|reg_gen:4:regs|reg_1|y[3]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|inst|reg_gen:4:regs|reg_1|y[3]~feeder_combout\ = \inst3|OUT16B[3]~12_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst3|OUT16B[3]~12_combout\,
	combout => \inst2|inst|reg_gen:4:regs|reg_1|y[3]~feeder_combout\);

-- Location: LCCOMB_X12_Y36_N2
\inst2|inst|add_reg1_dcd|Mux3~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|inst|add_reg1_dcd|Mux3~5_combout\ = (!\inst2|inst5|DOUT[0]~2_combout\ & (!\inst|Mux1~0_combout\ & (!\inst2|inst5|DOUT[1]~1_combout\ & \inst2|inst5|DOUT[2]~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|inst5|DOUT[0]~2_combout\,
	datab => \inst|Mux1~0_combout\,
	datac => \inst2|inst5|DOUT[1]~1_combout\,
	datad => \inst2|inst5|DOUT[2]~0_combout\,
	combout => \inst2|inst|add_reg1_dcd|Mux3~5_combout\);

-- Location: FF_X16_Y35_N1
\inst2|inst|reg_gen:4:regs|reg_1|y[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~input_o\,
	d => \inst2|inst|reg_gen:4:regs|reg_1|y[3]~feeder_combout\,
	ena => \inst2|inst|add_reg1_dcd|Mux3~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst2|inst|reg_gen:4:regs|reg_1|y\(3));

-- Location: LCCOMB_X18_Y32_N22
\inst2|inst|mux_2|mux_1|mux_generate:0:mux_i|Mux3~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|inst|mux_2|mux_1|mux_generate:0:mux_i|Mux3~0_combout\ = ((\inst4|inst1|exception~2_combout\) # (\inst4|inst1|data_out[7]~10_combout\)) # (!\inst4|inst1|dec|dcd_0|D[4]~2_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111011101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|inst1|dec|dcd_0|D[4]~2_combout\,
	datab => \inst4|inst1|exception~2_combout\,
	datad => \inst4|inst1|data_out[7]~10_combout\,
	combout => \inst2|inst|mux_2|mux_1|mux_generate:0:mux_i|Mux3~0_combout\);

-- Location: LCCOMB_X17_Y35_N4
\inst2|inst|reg_gen:5:regs|reg_1|y[3]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|inst|reg_gen:5:regs|reg_1|y[3]~feeder_combout\ = \inst3|OUT16B[3]~12_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst3|OUT16B[3]~12_combout\,
	combout => \inst2|inst|reg_gen:5:regs|reg_1|y[3]~feeder_combout\);

-- Location: LCCOMB_X12_Y36_N8
\inst2|inst|add_reg1_dcd|Mux3~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|inst|add_reg1_dcd|Mux3~4_combout\ = (\inst2|inst5|DOUT[0]~2_combout\ & (!\inst|Mux1~0_combout\ & (!\inst2|inst5|DOUT[1]~1_combout\ & \inst2|inst5|DOUT[2]~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|inst5|DOUT[0]~2_combout\,
	datab => \inst|Mux1~0_combout\,
	datac => \inst2|inst5|DOUT[1]~1_combout\,
	datad => \inst2|inst5|DOUT[2]~0_combout\,
	combout => \inst2|inst|add_reg1_dcd|Mux3~4_combout\);

-- Location: FF_X17_Y35_N5
\inst2|inst|reg_gen:5:regs|reg_1|y[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~input_o\,
	d => \inst2|inst|reg_gen:5:regs|reg_1|y[3]~feeder_combout\,
	ena => \inst2|inst|add_reg1_dcd|Mux3~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst2|inst|reg_gen:5:regs|reg_1|y\(3));

-- Location: LCCOMB_X17_Y32_N0
\inst2|inst|mux_2|mux_1|mux_generate:0:mux_i|Mux3~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|inst|mux_2|mux_1|mux_generate:0:mux_i|Mux3~1_combout\ = ((\inst4|inst1|exception~2_combout\) # ((!\inst4|inst1|data_out[6]~8_combout\ & \inst4|inst1|data_out[7]~10_combout\))) # (!\inst4|inst1|dec|dcd_0|D[4]~2_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111011111110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|inst1|data_out[6]~8_combout\,
	datab => \inst4|inst1|dec|dcd_0|D[4]~2_combout\,
	datac => \inst4|inst1|exception~2_combout\,
	datad => \inst4|inst1|data_out[7]~10_combout\,
	combout => \inst2|inst|mux_2|mux_1|mux_generate:0:mux_i|Mux3~1_combout\);

-- Location: LCCOMB_X16_Y35_N14
\inst2|inst|mux_2|mux_1|mux_generate:0:mux_i|Mux0~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|inst|mux_2|mux_1|mux_generate:0:mux_i|Mux0~1_combout\ = ((\inst2|inst|reg_gen:1:regs|reg_1|y\(3) & (\inst4|inst1|data_out[6]~8_combout\ & !\inst4|inst1|exception~2_combout\))) # (!\inst2|inst|mux_2|mux_1|mux_generate:0:mux_i|Mux3~1_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|inst|reg_gen:1:regs|reg_1|y\(3),
	datab => \inst4|inst1|data_out[6]~8_combout\,
	datac => \inst4|inst1|exception~2_combout\,
	datad => \inst2|inst|mux_2|mux_1|mux_generate:0:mux_i|Mux3~1_combout\,
	combout => \inst2|inst|mux_2|mux_1|mux_generate:0:mux_i|Mux0~1_combout\);

-- Location: LCCOMB_X17_Y35_N18
\inst2|inst|mux_2|mux_1|mux_generate:0:mux_i|Mux0~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|inst|mux_2|mux_1|mux_generate:0:mux_i|Mux0~2_combout\ = (\inst2|inst|mux_2|mux_1|mux_generate:0:mux_i|Mux3~0_combout\ & (((\inst2|inst|mux_2|mux_1|mux_generate:0:mux_i|Mux0~1_combout\)))) # 
-- (!\inst2|inst|mux_2|mux_1|mux_generate:0:mux_i|Mux3~0_combout\ & ((\inst2|inst|mux_2|mux_1|mux_generate:0:mux_i|Mux0~1_combout\ & (\inst2|inst|reg_gen:4:regs|reg_1|y\(3))) # (!\inst2|inst|mux_2|mux_1|mux_generate:0:mux_i|Mux0~1_combout\ & 
-- ((\inst2|inst|reg_gen:5:regs|reg_1|y\(3))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|inst|reg_gen:4:regs|reg_1|y\(3),
	datab => \inst2|inst|mux_2|mux_1|mux_generate:0:mux_i|Mux3~0_combout\,
	datac => \inst2|inst|reg_gen:5:regs|reg_1|y\(3),
	datad => \inst2|inst|mux_2|mux_1|mux_generate:0:mux_i|Mux0~1_combout\,
	combout => \inst2|inst|mux_2|mux_1|mux_generate:0:mux_i|Mux0~2_combout\);

-- Location: LCCOMB_X17_Y35_N2
\inst2|inst|mux_2|mux_1|mux_generate:0:mux_i|Mux0~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|inst|mux_2|mux_1|mux_generate:0:mux_i|Mux0~3_combout\ = (\inst2|inst|mux_2|mux_1|mux_generate:0:mux_i|Mux3~2_combout\ & (\inst2|inst|mux_2|mux_1|mux_generate:0:mux_i|Mux0~0_combout\)) # (!\inst2|inst|mux_2|mux_1|mux_generate:0:mux_i|Mux3~2_combout\ 
-- & ((\inst2|inst|mux_2|mux_1|mux_generate:0:mux_i|Mux0~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst2|inst|mux_2|mux_1|mux_generate:0:mux_i|Mux0~0_combout\,
	datac => \inst2|inst|mux_2|mux_1|mux_generate:0:mux_i|Mux3~2_combout\,
	datad => \inst2|inst|mux_2|mux_1|mux_generate:0:mux_i|Mux0~2_combout\,
	combout => \inst2|inst|mux_2|mux_1|mux_generate:0:mux_i|Mux0~3_combout\);

-- Location: LCCOMB_X16_Y31_N20
\inst1|reg_gen:30:regs|y[3]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|reg_gen:30:regs|y[3]~feeder_combout\ = \inst2|inst|mux_2|mux_1|mux_generate:0:mux_i|Mux0~3_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst2|inst|mux_2|mux_1|mux_generate:0:mux_i|Mux0~3_combout\,
	combout => \inst1|reg_gen:30:regs|y[3]~feeder_combout\);

-- Location: FF_X17_Y36_N7
\inst2|inst|reg_gen:5:regs|reg_1|y[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~input_o\,
	asdata => \inst3|OUT16B[0]~15_combout\,
	sload => VCC,
	ena => \inst2|inst|add_reg1_dcd|Mux3~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst2|inst|reg_gen:5:regs|reg_1|y\(0));

-- Location: FF_X14_Y36_N5
\inst2|inst|reg_gen:4:regs|reg_1|y[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~input_o\,
	d => \inst3|OUT16B[0]~15_combout\,
	ena => \inst2|inst|add_reg1_dcd|Mux3~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst2|inst|reg_gen:4:regs|reg_1|y\(0));

-- Location: LCCOMB_X17_Y32_N8
\inst2|inst|mux_2|mux_1|mux_generate:0:mux_i|Mux3~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|inst|mux_2|mux_1|mux_generate:0:mux_i|Mux3~4_combout\ = ((!\inst4|inst1|exception~2_combout\ & (\inst4|inst1|data_out[6]~8_combout\ & \inst2|inst|reg_gen:1:regs|reg_1|y\(0)))) # (!\inst2|inst|mux_2|mux_1|mux_generate:0:mux_i|Mux3~1_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|inst1|exception~2_combout\,
	datab => \inst4|inst1|data_out[6]~8_combout\,
	datac => \inst2|inst|reg_gen:1:regs|reg_1|y\(0),
	datad => \inst2|inst|mux_2|mux_1|mux_generate:0:mux_i|Mux3~1_combout\,
	combout => \inst2|inst|mux_2|mux_1|mux_generate:0:mux_i|Mux3~4_combout\);

-- Location: LCCOMB_X17_Y32_N30
\inst2|inst|mux_2|mux_1|mux_generate:0:mux_i|Mux3~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|inst|mux_2|mux_1|mux_generate:0:mux_i|Mux3~5_combout\ = (\inst2|inst|mux_2|mux_1|mux_generate:0:mux_i|Mux3~4_combout\ & (((\inst2|inst|reg_gen:4:regs|reg_1|y\(0)) # (\inst2|inst|mux_2|mux_1|mux_generate:0:mux_i|Mux3~0_combout\)))) # 
-- (!\inst2|inst|mux_2|mux_1|mux_generate:0:mux_i|Mux3~4_combout\ & (\inst2|inst|reg_gen:5:regs|reg_1|y\(0) & ((!\inst2|inst|mux_2|mux_1|mux_generate:0:mux_i|Mux3~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|inst|reg_gen:5:regs|reg_1|y\(0),
	datab => \inst2|inst|reg_gen:4:regs|reg_1|y\(0),
	datac => \inst2|inst|mux_2|mux_1|mux_generate:0:mux_i|Mux3~4_combout\,
	datad => \inst2|inst|mux_2|mux_1|mux_generate:0:mux_i|Mux3~0_combout\,
	combout => \inst2|inst|mux_2|mux_1|mux_generate:0:mux_i|Mux3~5_combout\);

-- Location: FF_X13_Y36_N15
\inst2|inst|reg_gen:2:regs|reg_1|y[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~input_o\,
	asdata => \inst3|OUT16B[0]~15_combout\,
	sload => VCC,
	ena => \inst2|inst|add_reg1_dcd|Mux3~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst2|inst|reg_gen:2:regs|reg_1|y\(0));

-- Location: FF_X14_Y36_N3
\inst2|inst|reg_gen:3:regs|reg_1|y[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~input_o\,
	asdata => \inst3|OUT16B[0]~15_combout\,
	sload => VCC,
	ena => \inst2|inst|add_reg1_dcd|Mux3~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst2|inst|reg_gen:3:regs|reg_1|y\(0));

-- Location: LCCOMB_X14_Y36_N24
\inst2|inst|mux_2|mux_1|mux_generate:0:mux_i|Mux3~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|inst|mux_2|mux_1|mux_generate:0:mux_i|Mux3~3_combout\ = (\inst4|inst1|data_out[6]~8_combout\ & ((\inst4|inst1|exception~2_combout\ & (\inst2|inst|reg_gen:2:regs|reg_1|y\(0))) # (!\inst4|inst1|exception~2_combout\ & 
-- ((\inst2|inst|reg_gen:3:regs|reg_1|y\(0)))))) # (!\inst4|inst1|data_out[6]~8_combout\ & (\inst2|inst|reg_gen:2:regs|reg_1|y\(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|inst|reg_gen:2:regs|reg_1|y\(0),
	datab => \inst2|inst|reg_gen:3:regs|reg_1|y\(0),
	datac => \inst4|inst1|data_out[6]~8_combout\,
	datad => \inst4|inst1|exception~2_combout\,
	combout => \inst2|inst|mux_2|mux_1|mux_generate:0:mux_i|Mux3~3_combout\);

-- Location: LCCOMB_X17_Y32_N4
\inst2|inst2|OUT16B[0]~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|inst2|OUT16B[0]~6_combout\ = (!\inst|Mux7~8_combout\ & ((\inst2|inst|mux_2|mux_1|mux_generate:0:mux_i|Mux3~2_combout\ & ((\inst2|inst|mux_2|mux_1|mux_generate:0:mux_i|Mux3~3_combout\))) # 
-- (!\inst2|inst|mux_2|mux_1|mux_generate:0:mux_i|Mux3~2_combout\ & (\inst2|inst|mux_2|mux_1|mux_generate:0:mux_i|Mux3~5_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|inst|mux_2|mux_1|mux_generate:0:mux_i|Mux3~2_combout\,
	datab => \inst|Mux7~8_combout\,
	datac => \inst2|inst|mux_2|mux_1|mux_generate:0:mux_i|Mux3~5_combout\,
	datad => \inst2|inst|mux_2|mux_1|mux_generate:0:mux_i|Mux3~3_combout\,
	combout => \inst2|inst2|OUT16B[0]~6_combout\);

-- Location: LCCOMB_X14_Y32_N0
\inst2|inst2|OUT16B[0]~18\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|inst2|OUT16B[0]~18_combout\ = (\inst2|inst2|OUT16B[0]~6_combout\) # (\inst2|inst2|OUT16B[0]~5_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst2|inst2|OUT16B[0]~6_combout\,
	datad => \inst2|inst2|OUT16B[0]~5_combout\,
	combout => \inst2|inst2|OUT16B[0]~18_combout\);

-- Location: LCCOMB_X14_Y32_N16
\inst2|inst1|alu0|mux|Mux3~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|inst1|alu0|mux|Mux3~0_combout\ = (\inst2|inst|mux_1|mux_1|mux_generate:0:mux_i|Mux3~1_combout\ & (\inst2|inst3|DOUT[1]~4_combout\ $ (((\inst2|inst2|OUT16B[0]~18_combout\) # (\inst2|inst3|DOUT[0]~2_combout\))))) # 
-- (!\inst2|inst|mux_1|mux_1|mux_generate:0:mux_i|Mux3~1_combout\ & (\inst2|inst2|OUT16B[0]~18_combout\ & (\inst2|inst3|DOUT[1]~4_combout\ $ (\inst2|inst3|DOUT[0]~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111001101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|inst|mux_1|mux_1|mux_generate:0:mux_i|Mux3~1_combout\,
	datab => \inst2|inst2|OUT16B[0]~18_combout\,
	datac => \inst2|inst3|DOUT[1]~4_combout\,
	datad => \inst2|inst3|DOUT[0]~2_combout\,
	combout => \inst2|inst1|alu0|mux|Mux3~0_combout\);

-- Location: LCCOMB_X16_Y31_N28
\inst|Mux6~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Mux6~0_combout\ = (\inst4|inst1|INS_OUT[15]~4_combout\ & (\inst4|inst1|INS_OUT[12]~5_combout\ & (\inst4|inst1|INS_OUT[14]~3_combout\ & \inst4|inst1|INS_OUT[13]~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|inst1|INS_OUT[15]~4_combout\,
	datab => \inst4|inst1|INS_OUT[12]~5_combout\,
	datac => \inst4|inst1|INS_OUT[14]~3_combout\,
	datad => \inst4|inst1|INS_OUT[13]~2_combout\,
	combout => \inst|Mux6~0_combout\);

-- Location: LCCOMB_X14_Y31_N14
\inst1|dec_to_en[27]~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|dec_to_en[27]~3_combout\ = (\inst2|inst1|alu0|mux|Mux0~1_combout\ & (\inst|Mux6~0_combout\ & \inst2|inst1|alu1|mux|Mux3~1_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|inst1|alu0|mux|Mux0~1_combout\,
	datab => \inst|Mux6~0_combout\,
	datad => \inst2|inst1|alu1|mux|Mux3~1_combout\,
	combout => \inst1|dec_to_en[27]~3_combout\);

-- Location: LCCOMB_X14_Y31_N16
\inst1|dec_to_en[30]\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|dec_to_en\(30) = (\inst2|inst1|alu0|mux|Mux1~1_combout\ & (\inst1|dec_to_en[27]~3_combout\ & (\inst2|inst1|alu0|mux|Mux3~0_combout\ $ (\inst2|inst1|alu0|mux|Mux2~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|inst1|alu0|mux|Mux1~1_combout\,
	datab => \inst2|inst1|alu0|mux|Mux3~0_combout\,
	datac => \inst1|dec_to_en[27]~3_combout\,
	datad => \inst2|inst1|alu0|mux|Mux2~1_combout\,
	combout => \inst1|dec_to_en\(30));

-- Location: FF_X16_Y31_N21
\inst1|reg_gen:30:regs|y[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \inst1|reg_gen:30:regs|y[3]~feeder_combout\,
	ena => \inst1|dec_to_en\(30),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|reg_gen:30:regs|y\(3));

-- Location: LCCOMB_X14_Y32_N6
\inst1|DOUT[12]~24\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|DOUT[12]~24_combout\ = (\inst2|inst|mux_1|mux_1|mux_generate:0:mux_i|Mux3~1_combout\ & (\inst2|inst3|DOUT[1]~4_combout\ $ (((!\inst2|inst3|DOUT[0]~2_combout\ & !\inst2|inst2|OUT16B[0]~18_combout\))))) # 
-- (!\inst2|inst|mux_1|mux_1|mux_generate:0:mux_i|Mux3~1_combout\ & ((\inst2|inst3|DOUT[1]~4_combout\ $ (!\inst2|inst3|DOUT[0]~2_combout\)) # (!\inst2|inst2|OUT16B[0]~18_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010100110011111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|inst3|DOUT[1]~4_combout\,
	datab => \inst2|inst3|DOUT[0]~2_combout\,
	datac => \inst2|inst|mux_1|mux_1|mux_generate:0:mux_i|Mux3~1_combout\,
	datad => \inst2|inst2|OUT16B[0]~18_combout\,
	combout => \inst1|DOUT[12]~24_combout\);

-- Location: LCCOMB_X14_Y31_N28
\inst1|DOUT[12]~34\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|DOUT[12]~34_combout\ = (!\inst1|DOUT[12]~24_combout\ & (\inst2|inst1|alu0|mux|Mux1~1_combout\ & \inst2|inst1|alu0|mux|Mux2~1_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100010000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|DOUT[12]~24_combout\,
	datab => \inst2|inst1|alu0|mux|Mux1~1_combout\,
	datad => \inst2|inst1|alu0|mux|Mux2~1_combout\,
	combout => \inst1|DOUT[12]~34_combout\);

-- Location: LCCOMB_X11_Y34_N22
\inst1|DOUT[3]~203\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|DOUT[3]~203_combout\ = (\inst2|inst1|alu0|mux|Mux0~1_combout\ & ((\inst2|inst1|alu1|mux|Mux3~1_combout\ $ (\inst2|inst1|alu0|mux|Mux1~1_combout\)) # (!\inst1|DOUT[12]~34_combout\))) # (!\inst2|inst1|alu0|mux|Mux0~1_combout\ & 
-- ((\inst2|inst1|alu1|mux|Mux3~1_combout\) # ((\inst2|inst1|alu0|mux|Mux1~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111111110111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|inst1|alu1|mux|Mux3~1_combout\,
	datab => \inst1|DOUT[12]~34_combout\,
	datac => \inst2|inst1|alu0|mux|Mux0~1_combout\,
	datad => \inst2|inst1|alu0|mux|Mux1~1_combout\,
	combout => \inst1|DOUT[3]~203_combout\);

-- Location: LCCOMB_X13_Y35_N2
\inst1|DOUT[15]~259\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|DOUT[15]~259_combout\ = ((\inst1|dcd|dcd_3|dcd|Mux7~7_combout\ & (!\inst2|inst1|alu0|mux|Mux0~1_combout\ & !\inst2|inst1|alu1|mux|Mux3~1_combout\))) # (!\inst1|DOUT[7]~54_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|dcd|dcd_3|dcd|Mux7~7_combout\,
	datab => \inst2|inst1|alu0|mux|Mux0~1_combout\,
	datac => \inst2|inst1|alu1|mux|Mux3~1_combout\,
	datad => \inst1|DOUT[7]~54_combout\,
	combout => \inst1|DOUT[15]~259_combout\);

-- Location: LCCOMB_X14_Y32_N10
\inst1|dcd|dcd_3|dcd|Mux7~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|dcd|dcd_3|dcd|Mux7~4_combout\ = (\inst2|inst1|alu0|mux|Mux3~0_combout\ & (\inst2|inst1|alu0|mux|Mux2~1_combout\ & !\inst2|inst1|alu0|mux|Mux1~1_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst2|inst1|alu0|mux|Mux3~0_combout\,
	datac => \inst2|inst1|alu0|mux|Mux2~1_combout\,
	datad => \inst2|inst1|alu0|mux|Mux1~1_combout\,
	combout => \inst1|dcd|dcd_3|dcd|Mux7~4_combout\);

-- Location: LCCOMB_X14_Y32_N20
\inst1|dcd|dcd_3|dcd|Mux7~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|dcd|dcd_3|dcd|Mux7~3_combout\ = (\inst2|inst1|alu0|mux|Mux3~0_combout\ & (\inst2|inst1|alu0|mux|Mux2~1_combout\ & \inst2|inst1|alu0|mux|Mux1~1_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst2|inst1|alu0|mux|Mux3~0_combout\,
	datac => \inst2|inst1|alu0|mux|Mux2~1_combout\,
	datad => \inst2|inst1|alu0|mux|Mux1~1_combout\,
	combout => \inst1|dcd|dcd_3|dcd|Mux7~3_combout\);

-- Location: LCCOMB_X13_Y32_N0
\inst1|DOUT[15]~51\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|DOUT[15]~51_combout\ = (\inst1|dcd|dcd_3|dcd|Mux7~3_combout\ & (((!\inst2|inst1|alu1|mux|Mux3~1_combout\) # (!\inst2|inst1|alu0|mux|Mux0~1_combout\)) # (!\inst2|inst1|alu0|mux|Mux1~1_combout\))) # (!\inst1|dcd|dcd_3|dcd|Mux7~3_combout\ & 
-- (!\inst2|inst1|alu0|mux|Mux1~1_combout\ & ((\inst2|inst1|alu0|mux|Mux0~1_combout\) # (\inst2|inst1|alu1|mux|Mux3~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011101110111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|dcd|dcd_3|dcd|Mux7~3_combout\,
	datab => \inst2|inst1|alu0|mux|Mux1~1_combout\,
	datac => \inst2|inst1|alu0|mux|Mux0~1_combout\,
	datad => \inst2|inst1|alu1|mux|Mux3~1_combout\,
	combout => \inst1|DOUT[15]~51_combout\);

-- Location: LCCOMB_X13_Y32_N18
\inst1|DOUT[15]~52\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|DOUT[15]~52_combout\ = (\inst1|DOUT[15]~51_combout\) # ((\inst2|inst1|alu0|mux|Mux1~1_combout\ & ((!\inst2|inst1|alu0|mux|Mux3~0_combout\) # (!\inst2|inst1|alu0|mux|Mux2~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111101110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|inst1|alu0|mux|Mux2~1_combout\,
	datab => \inst2|inst1|alu0|mux|Mux3~0_combout\,
	datac => \inst2|inst1|alu0|mux|Mux1~1_combout\,
	datad => \inst1|DOUT[15]~51_combout\,
	combout => \inst1|DOUT[15]~52_combout\);

-- Location: LCCOMB_X13_Y32_N6
\inst1|DOUT[15]~53\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|DOUT[15]~53_combout\ = (\inst1|DOUT[15]~52_combout\) # ((!\inst2|inst1|alu1|mux|Mux3~1_combout\ & (\inst1|dcd|dcd_3|dcd|Mux7~4_combout\ & !\inst2|inst1|alu0|mux|Mux0~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|inst1|alu1|mux|Mux3~1_combout\,
	datab => \inst1|dcd|dcd_3|dcd|Mux7~4_combout\,
	datac => \inst2|inst1|alu0|mux|Mux0~1_combout\,
	datad => \inst1|DOUT[15]~52_combout\,
	combout => \inst1|DOUT[15]~53_combout\);

-- Location: LCCOMB_X13_Y32_N14
\inst1|DOUT[15]_2612\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|DOUT[15]_2612~combout\ = (\inst|Mux5~0_combout\ & ((\inst1|DOUT[15]_2612~combout\) # ((\inst1|DOUT[15]~259_combout\) # (\inst1|DOUT[15]~53_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101010101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Mux5~0_combout\,
	datab => \inst1|DOUT[15]_2612~combout\,
	datac => \inst1|DOUT[15]~259_combout\,
	datad => \inst1|DOUT[15]~53_combout\,
	combout => \inst1|DOUT[15]_2612~combout\);

-- Location: LCCOMB_X12_Y36_N18
\inst2|inst|add_reg1_dcd|Mux3~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|inst|add_reg1_dcd|Mux3~0_combout\ = (!\inst2|inst5|DOUT[0]~2_combout\ & (\inst2|inst5|DOUT[2]~0_combout\ & (\inst2|inst5|DOUT[1]~1_combout\ & !\inst|Mux1~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|inst5|DOUT[0]~2_combout\,
	datab => \inst2|inst5|DOUT[2]~0_combout\,
	datac => \inst2|inst5|DOUT[1]~1_combout\,
	datad => \inst|Mux1~0_combout\,
	combout => \inst2|inst|add_reg1_dcd|Mux3~0_combout\);

-- Location: FF_X13_Y35_N5
\inst2|inst|reg_gen:6:regs|reg_2|y[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~input_o\,
	asdata => \inst3|OUT16B[10]~5_combout\,
	sload => VCC,
	ena => \inst2|inst|add_reg1_dcd|Mux3~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst2|inst|reg_gen:6:regs|reg_2|y\(2));

-- Location: LCCOMB_X16_Y35_N4
\inst2|inst|reg_gen:1:regs|reg_2|y[2]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|inst|reg_gen:1:regs|reg_2|y[2]~feeder_combout\ = \inst3|OUT16B[10]~5_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst3|OUT16B[10]~5_combout\,
	combout => \inst2|inst|reg_gen:1:regs|reg_2|y[2]~feeder_combout\);

-- Location: LCCOMB_X12_Y36_N26
\inst2|inst|add_reg1_dcd|Mux3~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|inst|add_reg1_dcd|Mux3~1_combout\ = (\inst2|inst5|DOUT[0]~2_combout\ & (!\inst|Mux1~0_combout\ & (!\inst2|inst5|DOUT[1]~1_combout\ & !\inst2|inst5|DOUT[2]~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|inst5|DOUT[0]~2_combout\,
	datab => \inst|Mux1~0_combout\,
	datac => \inst2|inst5|DOUT[1]~1_combout\,
	datad => \inst2|inst5|DOUT[2]~0_combout\,
	combout => \inst2|inst|add_reg1_dcd|Mux3~1_combout\);

-- Location: FF_X16_Y35_N5
\inst2|inst|reg_gen:1:regs|reg_2|y[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~input_o\,
	d => \inst2|inst|reg_gen:1:regs|reg_2|y[2]~feeder_combout\,
	ena => \inst2|inst|add_reg1_dcd|Mux3~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst2|inst|reg_gen:1:regs|reg_2|y\(2));

-- Location: LCCOMB_X16_Y35_N20
\inst2|inst|mux_1|mux_1|mux_generate:2:mux_i|Mux1~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|inst|mux_1|mux_1|mux_generate:2:mux_i|Mux1~0_combout\ = (!\inst4|inst1|exception~2_combout\ & (\inst2|inst|reg_gen:1:regs|reg_2|y\(2) & \inst4|inst1|data_out[9]~3_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst4|inst1|exception~2_combout\,
	datac => \inst2|inst|reg_gen:1:regs|reg_2|y\(2),
	datad => \inst4|inst1|data_out[9]~3_combout\,
	combout => \inst2|inst|mux_1|mux_1|mux_generate:2:mux_i|Mux1~0_combout\);

-- Location: LCCOMB_X16_Y35_N12
\inst2|inst|mux_1|mux_1|mux_generate:2:mux_i|Mux1~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|inst|mux_1|mux_1|mux_generate:2:mux_i|Mux1~1_combout\ = (\inst4|inst1|INS_OUT[15]~4_combout\ & (\inst2|inst|mux_1|mux_1|mux_generate:2:mux_i|Mux2~0_combout\ & (\inst2|inst|reg_gen:6:regs|reg_2|y\(2)))) # (!\inst4|inst1|INS_OUT[15]~4_combout\ & 
-- (((\inst2|inst|mux_1|mux_1|mux_generate:2:mux_i|Mux1~0_combout\)) # (!\inst2|inst|mux_1|mux_1|mux_generate:2:mux_i|Mux2~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101010110010001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|inst1|INS_OUT[15]~4_combout\,
	datab => \inst2|inst|mux_1|mux_1|mux_generate:2:mux_i|Mux2~0_combout\,
	datac => \inst2|inst|reg_gen:6:regs|reg_2|y\(2),
	datad => \inst2|inst|mux_1|mux_1|mux_generate:2:mux_i|Mux1~0_combout\,
	combout => \inst2|inst|mux_1|mux_1|mux_generate:2:mux_i|Mux1~1_combout\);

-- Location: LCCOMB_X13_Y34_N16
\inst1|DOUT[12]~258\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|DOUT[12]~258_combout\ = (\inst2|inst1|alu0|mux|Mux1~1_combout\ & (\inst2|inst1|alu0|mux|Mux2~1_combout\ & ((\inst2|inst1|alu0|mux|Mux0~1_combout\)))) # (!\inst2|inst1|alu0|mux|Mux1~1_combout\ & (!\inst2|inst1|alu0|mux|Mux0~1_combout\ & 
-- ((\inst1|DOUT[12]~24_combout\) # (!\inst2|inst1|alu0|mux|Mux2~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100000110001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|inst1|alu0|mux|Mux2~1_combout\,
	datab => \inst2|inst1|alu0|mux|Mux1~1_combout\,
	datac => \inst1|DOUT[12]~24_combout\,
	datad => \inst2|inst1|alu0|mux|Mux0~1_combout\,
	combout => \inst1|DOUT[12]~258_combout\);

-- Location: LCCOMB_X13_Y34_N24
\inst1|DOUT[12]~49\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|DOUT[12]~49_combout\ = (\inst2|inst1|alu0|mux|Mux1~1_combout\ $ (\inst2|inst1|alu1|mux|Mux3~1_combout\)) # (!\inst1|DOUT[12]~258_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst2|inst1|alu0|mux|Mux1~1_combout\,
	datac => \inst2|inst1|alu1|mux|Mux3~1_combout\,
	datad => \inst1|DOUT[12]~258_combout\,
	combout => \inst1|DOUT[12]~49_combout\);

-- Location: LCCOMB_X14_Y34_N28
\inst1|dec_to_en[31]\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|dec_to_en\(31) = (\inst2|inst1|alu0|mux|Mux2~1_combout\ & (\inst2|inst1|alu0|mux|Mux1~1_combout\ & \inst1|dec_to_en[27]~3_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|inst1|alu0|mux|Mux2~1_combout\,
	datab => \inst2|inst1|alu0|mux|Mux1~1_combout\,
	datad => \inst1|dec_to_en[27]~3_combout\,
	combout => \inst1|dec_to_en\(31));

-- Location: FF_X14_Y34_N21
\inst1|reg_gen:31:regs|y[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	asdata => \inst2|inst|mux_2|mux_1|mux_generate:2:mux_i|Mux2~3_combout\,
	sload => VCC,
	ena => \inst1|dec_to_en\(31),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|reg_gen:31:regs|y\(1));

-- Location: LCCOMB_X10_Y31_N4
\inst1|reg_gen:30:regs|y[1]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|reg_gen:30:regs|y[1]~feeder_combout\ = \inst2|inst|mux_2|mux_1|mux_generate:0:mux_i|Mux2~3_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst2|inst|mux_2|mux_1|mux_generate:0:mux_i|Mux2~3_combout\,
	combout => \inst1|reg_gen:30:regs|y[1]~feeder_combout\);

-- Location: FF_X10_Y31_N5
\inst1|reg_gen:30:regs|y[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \inst1|reg_gen:30:regs|y[1]~feeder_combout\,
	ena => \inst1|dec_to_en\(30),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|reg_gen:30:regs|y\(1));

-- Location: LCCOMB_X12_Y32_N14
\inst1|DOUT[3]~260\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|DOUT[3]~260_combout\ = (\inst1|DOUT[12]~24_combout\ & ((\inst2|inst1|alu0|mux|Mux2~1_combout\) # (!\inst2|inst1|alu0|mux|Mux1~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|inst1|alu0|mux|Mux1~1_combout\,
	datab => \inst1|DOUT[12]~24_combout\,
	datad => \inst2|inst1|alu0|mux|Mux2~1_combout\,
	combout => \inst1|DOUT[3]~260_combout\);

-- Location: LCCOMB_X9_Y31_N2
\inst1|reg_gen:10:regs|y[1]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|reg_gen:10:regs|y[1]~feeder_combout\ = \inst2|inst|mux_2|mux_1|mux_generate:0:mux_i|Mux2~3_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst2|inst|mux_2|mux_1|mux_generate:0:mux_i|Mux2~3_combout\,
	combout => \inst1|reg_gen:10:regs|y[1]~feeder_combout\);

-- Location: LCCOMB_X14_Y32_N12
\inst1|dcd|dcd_3|dcd|Mux7~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|dcd|dcd_3|dcd|Mux7~5_combout\ = (!\inst2|inst1|alu0|mux|Mux3~0_combout\ & (\inst2|inst1|alu0|mux|Mux2~1_combout\ & !\inst2|inst1|alu0|mux|Mux1~1_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst2|inst1|alu0|mux|Mux3~0_combout\,
	datac => \inst2|inst1|alu0|mux|Mux2~1_combout\,
	datad => \inst2|inst1|alu0|mux|Mux1~1_combout\,
	combout => \inst1|dcd|dcd_3|dcd|Mux7~5_combout\);

-- Location: LCCOMB_X14_Y31_N24
\inst1|dcd|dcd_3|dcd|Mux7~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|dcd|dcd_3|dcd|Mux7~6_combout\ = (!\inst2|inst1|alu0|mux|Mux1~1_combout\ & (!\inst2|inst1|alu0|mux|Mux2~1_combout\ & \inst2|inst1|alu0|mux|Mux3~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|inst1|alu0|mux|Mux1~1_combout\,
	datab => \inst2|inst1|alu0|mux|Mux2~1_combout\,
	datad => \inst2|inst1|alu0|mux|Mux3~0_combout\,
	combout => \inst1|dcd|dcd_3|dcd|Mux7~6_combout\);

-- Location: LCCOMB_X14_Y31_N26
\inst1|dec_to_en[11]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|dec_to_en[11]~0_combout\ = (\inst2|inst1|alu0|mux|Mux0~1_combout\ & (\inst|Mux6~0_combout\ & !\inst2|inst1|alu1|mux|Mux3~1_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|inst1|alu0|mux|Mux0~1_combout\,
	datab => \inst|Mux6~0_combout\,
	datad => \inst2|inst1|alu1|mux|Mux3~1_combout\,
	combout => \inst1|dec_to_en[11]~0_combout\);

-- Location: LCCOMB_X9_Y31_N28
\inst1|dec_to_en[10]\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|dec_to_en\(10) = (\inst1|dec_to_en[11]~0_combout\ & ((\inst1|dcd|dcd_3|dcd|Mux7~5_combout\) # (\inst1|dcd|dcd_3|dcd|Mux7~6_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|dcd|dcd_3|dcd|Mux7~5_combout\,
	datab => \inst1|dcd|dcd_3|dcd|Mux7~6_combout\,
	datad => \inst1|dec_to_en[11]~0_combout\,
	combout => \inst1|dec_to_en\(10));

-- Location: FF_X9_Y31_N3
\inst1|reg_gen:10:regs|y[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \inst1|reg_gen:10:regs|y[1]~feeder_combout\,
	ena => \inst1|dec_to_en\(10),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|reg_gen:10:regs|y\(1));

-- Location: LCCOMB_X9_Y31_N24
\inst1|reg_gen:26:regs|y[1]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|reg_gen:26:regs|y[1]~feeder_combout\ = \inst2|inst|mux_2|mux_1|mux_generate:0:mux_i|Mux2~3_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst2|inst|mux_2|mux_1|mux_generate:0:mux_i|Mux2~3_combout\,
	combout => \inst1|reg_gen:26:regs|y[1]~feeder_combout\);

-- Location: LCCOMB_X9_Y31_N8
\inst1|dec_to_en[26]\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|dec_to_en\(26) = (\inst1|dec_to_en[27]~3_combout\ & ((\inst1|dcd|dcd_3|dcd|Mux7~5_combout\) # (\inst1|dcd|dcd_3|dcd|Mux7~6_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|dcd|dcd_3|dcd|Mux7~5_combout\,
	datab => \inst1|dcd|dcd_3|dcd|Mux7~6_combout\,
	datad => \inst1|dec_to_en[27]~3_combout\,
	combout => \inst1|dec_to_en\(26));

-- Location: FF_X9_Y31_N25
\inst1|reg_gen:26:regs|y[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \inst1|reg_gen:26:regs|y[1]~feeder_combout\,
	ena => \inst1|dec_to_en\(26),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|reg_gen:26:regs|y\(1));

-- Location: LCCOMB_X10_Y32_N26
\inst1|DOUT[9]~166\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|DOUT[9]~166_combout\ = (\inst2|inst1|alu1|mux|Mux3~1_combout\ & ((\inst1|reg_gen:26:regs|y\(1)))) # (!\inst2|inst1|alu1|mux|Mux3~1_combout\ & (\inst1|reg_gen:10:regs|y\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|inst1|alu1|mux|Mux3~1_combout\,
	datab => \inst1|reg_gen:10:regs|y\(1),
	datad => \inst1|reg_gen:26:regs|y\(1),
	combout => \inst1|DOUT[9]~166_combout\);

-- Location: LCCOMB_X11_Y30_N16
\inst1|dec_to_en[17]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|dec_to_en[17]~1_combout\ = (\inst2|inst1|alu1|mux|Mux3~1_combout\ & (\inst|Mux6~0_combout\ & !\inst2|inst1|alu0|mux|Mux0~1_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|inst1|alu1|mux|Mux3~1_combout\,
	datab => \inst|Mux6~0_combout\,
	datad => \inst2|inst1|alu0|mux|Mux0~1_combout\,
	combout => \inst1|dec_to_en[17]~1_combout\);

-- Location: LCCOMB_X11_Y32_N14
\inst1|dec_to_en[18]\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|dec_to_en\(18) = (\inst1|dec_to_en[17]~1_combout\ & ((\inst1|dcd|dcd_3|dcd|Mux7~5_combout\) # (\inst1|dcd|dcd_3|dcd|Mux7~6_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|dcd|dcd_3|dcd|Mux7~5_combout\,
	datac => \inst1|dcd|dcd_3|dcd|Mux7~6_combout\,
	datad => \inst1|dec_to_en[17]~1_combout\,
	combout => \inst1|dec_to_en\(18));

-- Location: FF_X11_Y32_N11
\inst1|reg_gen:18:regs|y[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	asdata => \inst2|inst|mux_2|mux_1|mux_generate:0:mux_i|Mux2~3_combout\,
	sload => VCC,
	ena => \inst1|dec_to_en\(18),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|reg_gen:18:regs|y\(1));

-- Location: LCCOMB_X10_Y31_N14
\inst1|reg_gen:24:regs|y[1]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|reg_gen:24:regs|y[1]~feeder_combout\ = \inst2|inst|mux_2|mux_1|mux_generate:0:mux_i|Mux2~3_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst2|inst|mux_2|mux_1|mux_generate:0:mux_i|Mux2~3_combout\,
	combout => \inst1|reg_gen:24:regs|y[1]~feeder_combout\);

-- Location: LCCOMB_X10_Y31_N18
\inst1|dec_to_en[24]~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|dec_to_en[24]~4_combout\ = (\inst2|inst1|alu1|mux|Mux3~1_combout\ & ((\inst2|inst1|alu0|mux|Mux0~1_combout\ & ((\inst1|dcd|dcd_3|dcd|Mux7~7_combout\))) # (!\inst2|inst1|alu0|mux|Mux0~1_combout\ & (\inst1|dcd|dcd_3|dcd|Mux7~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|dcd|dcd_3|dcd|Mux7~3_combout\,
	datab => \inst1|dcd|dcd_3|dcd|Mux7~7_combout\,
	datac => \inst2|inst1|alu1|mux|Mux3~1_combout\,
	datad => \inst2|inst1|alu0|mux|Mux0~1_combout\,
	combout => \inst1|dec_to_en[24]~4_combout\);

-- Location: LCCOMB_X10_Y31_N30
\inst1|dec_to_en[24]~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|dec_to_en[24]~5_combout\ = (\inst|Mux6~0_combout\ & \inst1|dec_to_en[24]~4_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Mux6~0_combout\,
	datad => \inst1|dec_to_en[24]~4_combout\,
	combout => \inst1|dec_to_en[24]~5_combout\);

-- Location: FF_X10_Y31_N15
\inst1|reg_gen:24:regs|y[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \inst1|reg_gen:24:regs|y[1]~feeder_combout\,
	ena => \inst1|dec_to_en[24]~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|reg_gen:24:regs|y\(1));

-- Location: LCCOMB_X11_Y31_N20
\inst1|dec_to_en[8]~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|dec_to_en[8]~6_combout\ = (!\inst2|inst1|alu1|mux|Mux3~1_combout\ & \inst|Mux6~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|inst1|alu1|mux|Mux3~1_combout\,
	datad => \inst|Mux6~0_combout\,
	combout => \inst1|dec_to_en[8]~6_combout\);

-- Location: LCCOMB_X11_Y31_N16
\inst1|dec_to_en[8]~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|dec_to_en[8]~7_combout\ = (\inst1|dec_to_en[8]~6_combout\ & ((\inst2|inst1|alu0|mux|Mux0~1_combout\ & ((\inst1|dcd|dcd_3|dcd|Mux7~7_combout\))) # (!\inst2|inst1|alu0|mux|Mux0~1_combout\ & (\inst1|dcd|dcd_3|dcd|Mux7~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|dcd|dcd_3|dcd|Mux7~3_combout\,
	datab => \inst1|dec_to_en[8]~6_combout\,
	datac => \inst1|dcd|dcd_3|dcd|Mux7~7_combout\,
	datad => \inst2|inst1|alu0|mux|Mux0~1_combout\,
	combout => \inst1|dec_to_en[8]~7_combout\);

-- Location: FF_X11_Y31_N13
\inst1|reg_gen:8:regs|y[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	asdata => \inst2|inst|mux_2|mux_1|mux_generate:0:mux_i|Mux2~3_combout\,
	sload => VCC,
	ena => \inst1|dec_to_en[8]~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|reg_gen:8:regs|y\(1));

-- Location: LCCOMB_X11_Y31_N12
\inst1|DOUT[9]~163\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|DOUT[9]~163_combout\ = (\inst2|inst1|alu1|mux|Mux3~1_combout\ & (\inst1|reg_gen:24:regs|y\(1))) # (!\inst2|inst1|alu1|mux|Mux3~1_combout\ & ((\inst1|reg_gen:8:regs|y\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|reg_gen:24:regs|y\(1),
	datac => \inst1|reg_gen:8:regs|y\(1),
	datad => \inst2|inst1|alu1|mux|Mux3~1_combout\,
	combout => \inst1|DOUT[9]~163_combout\);

-- Location: LCCOMB_X10_Y32_N12
\inst1|DOUT[1]~243\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|DOUT[1]~243_combout\ = (\inst2|inst1|alu0|mux|Mux2~1_combout\ & (((\inst2|inst1|alu0|mux|Mux0~1_combout\)))) # (!\inst2|inst1|alu0|mux|Mux2~1_combout\ & ((\inst2|inst1|alu0|mux|Mux0~1_combout\ & (\inst1|DOUT[9]~163_combout\)) # 
-- (!\inst2|inst1|alu0|mux|Mux0~1_combout\ & ((\inst1|reg_gen:16:regs|y\(1))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|DOUT[9]~163_combout\,
	datab => \inst1|reg_gen:16:regs|y\(1),
	datac => \inst2|inst1|alu0|mux|Mux2~1_combout\,
	datad => \inst2|inst1|alu0|mux|Mux0~1_combout\,
	combout => \inst1|DOUT[1]~243_combout\);

-- Location: LCCOMB_X10_Y32_N18
\inst1|DOUT[1]~244\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|DOUT[1]~244_combout\ = (\inst2|inst1|alu0|mux|Mux2~1_combout\ & ((\inst1|DOUT[1]~243_combout\ & (\inst1|DOUT[9]~166_combout\)) # (!\inst1|DOUT[1]~243_combout\ & ((\inst1|reg_gen:18:regs|y\(1)))))) # (!\inst2|inst1|alu0|mux|Mux2~1_combout\ & 
-- (((\inst1|DOUT[1]~243_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|DOUT[9]~166_combout\,
	datab => \inst1|reg_gen:18:regs|y\(1),
	datac => \inst2|inst1|alu0|mux|Mux2~1_combout\,
	datad => \inst1|DOUT[1]~243_combout\,
	combout => \inst1|DOUT[1]~244_combout\);

-- Location: LCCOMB_X11_Y30_N20
\inst1|dec_to_en[22]\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|dec_to_en\(22) = (\inst1|dec_to_en[17]~1_combout\ & (\inst2|inst1|alu0|mux|Mux1~1_combout\ & (\inst2|inst1|alu0|mux|Mux3~0_combout\ $ (\inst2|inst1|alu0|mux|Mux2~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|inst1|alu0|mux|Mux3~0_combout\,
	datab => \inst1|dec_to_en[17]~1_combout\,
	datac => \inst2|inst1|alu0|mux|Mux1~1_combout\,
	datad => \inst2|inst1|alu0|mux|Mux2~1_combout\,
	combout => \inst1|dec_to_en\(22));

-- Location: FF_X14_Y30_N25
\inst1|reg_gen:22:regs|y[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	asdata => \inst2|inst|mux_2|mux_1|mux_generate:0:mux_i|Mux2~3_combout\,
	sload => VCC,
	ena => \inst1|dec_to_en\(22),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|reg_gen:22:regs|y\(1));

-- Location: LCCOMB_X14_Y31_N6
\inst1|dec_to_en[14]\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|dec_to_en\(14) = (\inst1|dec_to_en[11]~0_combout\ & (\inst2|inst1|alu0|mux|Mux1~1_combout\ & (\inst2|inst1|alu0|mux|Mux2~1_combout\ $ (\inst2|inst1|alu0|mux|Mux3~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|inst1|alu0|mux|Mux2~1_combout\,
	datab => \inst2|inst1|alu0|mux|Mux3~0_combout\,
	datac => \inst1|dec_to_en[11]~0_combout\,
	datad => \inst2|inst1|alu0|mux|Mux1~1_combout\,
	combout => \inst1|dec_to_en\(14));

-- Location: FF_X14_Y31_N27
\inst1|reg_gen:14:regs|y[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	asdata => \inst2|inst|mux_2|mux_1|mux_generate:0:mux_i|Mux2~3_combout\,
	sload => VCC,
	ena => \inst1|dec_to_en\(14),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|reg_gen:14:regs|y\(1));

-- Location: LCCOMB_X11_Y30_N22
\inst1|dec_to_en[7]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|dec_to_en[7]~2_combout\ = (!\inst2|inst1|alu1|mux|Mux3~1_combout\ & (\inst|Mux6~0_combout\ & !\inst2|inst1|alu0|mux|Mux0~1_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|inst1|alu1|mux|Mux3~1_combout\,
	datab => \inst|Mux6~0_combout\,
	datad => \inst2|inst1|alu0|mux|Mux0~1_combout\,
	combout => \inst1|dec_to_en[7]~2_combout\);

-- Location: LCCOMB_X11_Y30_N30
\inst1|dec_to_en[6]\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|dec_to_en\(6) = (\inst2|inst1|alu0|mux|Mux1~1_combout\ & (\inst1|dec_to_en[7]~2_combout\ & (\inst2|inst1|alu0|mux|Mux3~0_combout\ $ (\inst2|inst1|alu0|mux|Mux2~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|inst1|alu0|mux|Mux3~0_combout\,
	datab => \inst2|inst1|alu0|mux|Mux1~1_combout\,
	datac => \inst1|dec_to_en[7]~2_combout\,
	datad => \inst2|inst1|alu0|mux|Mux2~1_combout\,
	combout => \inst1|dec_to_en\(6));

-- Location: FF_X14_Y30_N7
\inst1|reg_gen:6:regs|y[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	asdata => \inst2|inst|mux_2|mux_1|mux_generate:0:mux_i|Mux2~3_combout\,
	sload => VCC,
	ena => \inst1|dec_to_en\(6),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|reg_gen:6:regs|y\(1));

-- Location: LCCOMB_X14_Y30_N6
\inst1|DOUT[9]~159\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|DOUT[9]~159_combout\ = (\inst2|inst1|alu1|mux|Mux3~1_combout\ & (((\inst2|inst1|alu0|mux|Mux0~1_combout\)))) # (!\inst2|inst1|alu1|mux|Mux3~1_combout\ & ((\inst2|inst1|alu0|mux|Mux0~1_combout\ & (\inst1|reg_gen:14:regs|y\(1))) # 
-- (!\inst2|inst1|alu0|mux|Mux0~1_combout\ & ((\inst1|reg_gen:6:regs|y\(1))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|reg_gen:14:regs|y\(1),
	datab => \inst2|inst1|alu1|mux|Mux3~1_combout\,
	datac => \inst1|reg_gen:6:regs|y\(1),
	datad => \inst2|inst1|alu0|mux|Mux0~1_combout\,
	combout => \inst1|DOUT[9]~159_combout\);

-- Location: LCCOMB_X14_Y30_N24
\inst1|DOUT[9]~160\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|DOUT[9]~160_combout\ = (\inst2|inst1|alu1|mux|Mux3~1_combout\ & ((\inst1|DOUT[9]~159_combout\ & (\inst1|reg_gen:30:regs|y\(1))) # (!\inst1|DOUT[9]~159_combout\ & ((\inst1|reg_gen:22:regs|y\(1)))))) # (!\inst2|inst1|alu1|mux|Mux3~1_combout\ & 
-- (((\inst1|DOUT[9]~159_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|reg_gen:30:regs|y\(1),
	datab => \inst2|inst1|alu1|mux|Mux3~1_combout\,
	datac => \inst1|reg_gen:22:regs|y\(1),
	datad => \inst1|DOUT[9]~159_combout\,
	combout => \inst1|DOUT[9]~160_combout\);

-- Location: LCCOMB_X8_Y34_N8
\inst1|reg_gen:11:regs|y[1]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|reg_gen:11:regs|y[1]~feeder_combout\ = \inst2|inst|mux_2|mux_1|mux_generate:2:mux_i|Mux2~3_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst2|inst|mux_2|mux_1|mux_generate:2:mux_i|Mux2~3_combout\,
	combout => \inst1|reg_gen:11:regs|y[1]~feeder_combout\);

-- Location: LCCOMB_X8_Y34_N2
\inst1|dec_to_en[11]\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|dec_to_en\(11) = (\inst1|dec_to_en[11]~0_combout\ & ((\inst1|dcd|dcd_3|dcd|Mux7~5_combout\) # (\inst1|dcd|dcd_3|dcd|Mux7~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|dcd|dcd_3|dcd|Mux7~5_combout\,
	datab => \inst1|dcd|dcd_3|dcd|Mux7~4_combout\,
	datad => \inst1|dec_to_en[11]~0_combout\,
	combout => \inst1|dec_to_en\(11));

-- Location: FF_X8_Y34_N9
\inst1|reg_gen:11:regs|y[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \inst1|reg_gen:11:regs|y[1]~feeder_combout\,
	ena => \inst1|dec_to_en\(11),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|reg_gen:11:regs|y\(1));

-- Location: LCCOMB_X8_Y34_N22
\inst1|reg_gen:27:regs|y[1]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|reg_gen:27:regs|y[1]~feeder_combout\ = \inst2|inst|mux_2|mux_1|mux_generate:2:mux_i|Mux2~3_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst2|inst|mux_2|mux_1|mux_generate:2:mux_i|Mux2~3_combout\,
	combout => \inst1|reg_gen:27:regs|y[1]~feeder_combout\);

-- Location: LCCOMB_X8_Y34_N16
\inst1|dec_to_en[27]\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|dec_to_en\(27) = (\inst1|dec_to_en[27]~3_combout\ & ((\inst1|dcd|dcd_3|dcd|Mux7~5_combout\) # (\inst1|dcd|dcd_3|dcd|Mux7~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|dcd|dcd_3|dcd|Mux7~5_combout\,
	datab => \inst1|dcd|dcd_3|dcd|Mux7~4_combout\,
	datad => \inst1|dec_to_en[27]~3_combout\,
	combout => \inst1|dec_to_en\(27));

-- Location: FF_X8_Y34_N23
\inst1|reg_gen:27:regs|y[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \inst1|reg_gen:27:regs|y[1]~feeder_combout\,
	ena => \inst1|dec_to_en\(27),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|reg_gen:27:regs|y\(1));

-- Location: LCCOMB_X9_Y34_N16
\inst1|DOUT[9]~170\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|DOUT[9]~170_combout\ = (\inst2|inst1|alu1|mux|Mux3~1_combout\ & ((\inst1|reg_gen:27:regs|y\(1)))) # (!\inst2|inst1|alu1|mux|Mux3~1_combout\ & (\inst1|reg_gen:11:regs|y\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|reg_gen:11:regs|y\(1),
	datab => \inst1|reg_gen:27:regs|y\(1),
	datad => \inst2|inst1|alu1|mux|Mux3~1_combout\,
	combout => \inst1|DOUT[9]~170_combout\);

-- Location: LCCOMB_X12_Y34_N8
\inst1|dec_to_en[19]\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|dec_to_en\(19) = (\inst1|dec_to_en[17]~1_combout\ & ((\inst1|dcd|dcd_3|dcd|Mux7~4_combout\) # (\inst1|dcd|dcd_3|dcd|Mux7~5_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|dcd|dcd_3|dcd|Mux7~4_combout\,
	datab => \inst1|dcd|dcd_3|dcd|Mux7~5_combout\,
	datad => \inst1|dec_to_en[17]~1_combout\,
	combout => \inst1|dec_to_en\(19));

-- Location: FF_X12_Y34_N21
\inst1|reg_gen:19:regs|y[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	asdata => \inst2|inst|mux_2|mux_1|mux_generate:2:mux_i|Mux2~3_combout\,
	sload => VCC,
	ena => \inst1|dec_to_en\(19),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|reg_gen:19:regs|y\(1));

-- Location: LCCOMB_X9_Y34_N8
\inst1|dec_to_en[25]\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|dec_to_en\(25) = (\inst1|dec_to_en[27]~3_combout\ & ((\inst1|dcd|dcd_3|dcd|Mux7~7_combout\) # (\inst1|dcd|dcd_3|dcd|Mux7~6_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|dcd|dcd_3|dcd|Mux7~7_combout\,
	datab => \inst1|dcd|dcd_3|dcd|Mux7~6_combout\,
	datad => \inst1|dec_to_en[27]~3_combout\,
	combout => \inst1|dec_to_en\(25));

-- Location: FF_X9_Y34_N9
\inst1|reg_gen:25:regs|y[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	asdata => \inst2|inst|mux_2|mux_1|mux_generate:2:mux_i|Mux2~3_combout\,
	sload => VCC,
	ena => \inst1|dec_to_en\(25),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|reg_gen:25:regs|y\(1));

-- Location: LCCOMB_X9_Y34_N10
\inst1|dec_to_en[9]\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|dec_to_en\(9) = (\inst1|dec_to_en[11]~0_combout\ & ((\inst1|dcd|dcd_3|dcd|Mux7~7_combout\) # (\inst1|dcd|dcd_3|dcd|Mux7~6_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|dcd|dcd_3|dcd|Mux7~7_combout\,
	datab => \inst1|dcd|dcd_3|dcd|Mux7~6_combout\,
	datad => \inst1|dec_to_en[11]~0_combout\,
	combout => \inst1|dec_to_en\(9));

-- Location: FF_X9_Y34_N7
\inst1|reg_gen:9:regs|y[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	asdata => \inst2|inst|mux_2|mux_1|mux_generate:2:mux_i|Mux2~3_combout\,
	sload => VCC,
	ena => \inst1|dec_to_en\(9),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|reg_gen:9:regs|y\(1));

-- Location: LCCOMB_X9_Y34_N6
\inst1|DOUT[9]~168\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|DOUT[9]~168_combout\ = (\inst2|inst1|alu1|mux|Mux3~1_combout\ & (\inst1|reg_gen:25:regs|y\(1))) # (!\inst2|inst1|alu1|mux|Mux3~1_combout\ & ((\inst1|reg_gen:9:regs|y\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst1|reg_gen:25:regs|y\(1),
	datac => \inst1|reg_gen:9:regs|y\(1),
	datad => \inst2|inst1|alu1|mux|Mux3~1_combout\,
	combout => \inst1|DOUT[9]~168_combout\);

-- Location: LCCOMB_X12_Y34_N26
\inst1|dec_to_en[17]\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|dec_to_en\(17) = (\inst1|dec_to_en[17]~1_combout\ & ((\inst1|dcd|dcd_3|dcd|Mux7~7_combout\) # (\inst1|dcd|dcd_3|dcd|Mux7~6_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|dcd|dcd_3|dcd|Mux7~7_combout\,
	datab => \inst1|dcd|dcd_3|dcd|Mux7~6_combout\,
	datad => \inst1|dec_to_en[17]~1_combout\,
	combout => \inst1|dec_to_en\(17));

-- Location: FF_X12_Y34_N7
\inst1|reg_gen:17:regs|y[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	asdata => \inst2|inst|mux_2|mux_1|mux_generate:2:mux_i|Mux2~3_combout\,
	sload => VCC,
	ena => \inst1|dec_to_en\(17),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|reg_gen:17:regs|y\(1));

-- Location: LCCOMB_X12_Y34_N6
\inst1|DOUT[9]~169\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|DOUT[9]~169_combout\ = (\inst2|inst1|alu0|mux|Mux2~1_combout\ & (((\inst2|inst1|alu0|mux|Mux0~1_combout\)))) # (!\inst2|inst1|alu0|mux|Mux2~1_combout\ & ((\inst2|inst1|alu0|mux|Mux0~1_combout\ & (\inst1|DOUT[9]~168_combout\)) # 
-- (!\inst2|inst1|alu0|mux|Mux0~1_combout\ & ((\inst1|reg_gen:17:regs|y\(1))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|DOUT[9]~168_combout\,
	datab => \inst2|inst1|alu0|mux|Mux2~1_combout\,
	datac => \inst1|reg_gen:17:regs|y\(1),
	datad => \inst2|inst1|alu0|mux|Mux0~1_combout\,
	combout => \inst1|DOUT[9]~169_combout\);

-- Location: LCCOMB_X12_Y34_N20
\inst1|DOUT[9]~171\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|DOUT[9]~171_combout\ = (\inst2|inst1|alu0|mux|Mux2~1_combout\ & ((\inst1|DOUT[9]~169_combout\ & (\inst1|DOUT[9]~170_combout\)) # (!\inst1|DOUT[9]~169_combout\ & ((\inst1|reg_gen:19:regs|y\(1)))))) # (!\inst2|inst1|alu0|mux|Mux2~1_combout\ & 
-- (((\inst1|DOUT[9]~169_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|inst1|alu0|mux|Mux2~1_combout\,
	datab => \inst1|DOUT[9]~170_combout\,
	datac => \inst1|reg_gen:19:regs|y\(1),
	datad => \inst1|DOUT[9]~169_combout\,
	combout => \inst1|DOUT[9]~171_combout\);

-- Location: LCCOMB_X14_Y34_N14
\inst1|dec_to_en[15]\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|dec_to_en\(15) = (\inst2|inst1|alu0|mux|Mux2~1_combout\ & (\inst2|inst1|alu0|mux|Mux1~1_combout\ & \inst1|dec_to_en[11]~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|inst1|alu0|mux|Mux2~1_combout\,
	datab => \inst2|inst1|alu0|mux|Mux1~1_combout\,
	datad => \inst1|dec_to_en[11]~0_combout\,
	combout => \inst1|dec_to_en\(15));

-- Location: FF_X12_Y31_N5
\inst1|reg_gen:15:regs|y[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	asdata => \inst2|inst|mux_2|mux_1|mux_generate:2:mux_i|Mux2~3_combout\,
	sload => VCC,
	ena => \inst1|dec_to_en\(15),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|reg_gen:15:regs|y\(1));

-- Location: LCCOMB_X12_Y32_N16
\inst1|DOUT[12]~48\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|DOUT[12]~48_combout\ = (\inst2|inst1|alu0|mux|Mux2~1_combout\ & !\inst1|DOUT[12]~24_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst2|inst1|alu0|mux|Mux2~1_combout\,
	datac => \inst1|DOUT[12]~24_combout\,
	combout => \inst1|DOUT[12]~48_combout\);

-- Location: LCCOMB_X14_Y31_N22
\inst1|reg_gen:23:regs|y[1]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|reg_gen:23:regs|y[1]~feeder_combout\ = \inst2|inst|mux_2|mux_1|mux_generate:2:mux_i|Mux2~3_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst2|inst|mux_2|mux_1|mux_generate:2:mux_i|Mux2~3_combout\,
	combout => \inst1|reg_gen:23:regs|y[1]~feeder_combout\);

-- Location: LCCOMB_X14_Y31_N12
\inst1|dec_to_en[23]\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|dec_to_en\(23) = (\inst2|inst1|alu0|mux|Mux2~1_combout\ & (\inst2|inst1|alu0|mux|Mux1~1_combout\ & \inst1|dec_to_en[17]~1_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|inst1|alu0|mux|Mux2~1_combout\,
	datab => \inst2|inst1|alu0|mux|Mux1~1_combout\,
	datad => \inst1|dec_to_en[17]~1_combout\,
	combout => \inst1|dec_to_en\(23));

-- Location: FF_X14_Y31_N23
\inst1|reg_gen:23:regs|y[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \inst1|reg_gen:23:regs|y[1]~feeder_combout\,
	ena => \inst1|dec_to_en\(23),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|reg_gen:23:regs|y\(1));

-- Location: LCCOMB_X12_Y31_N4
\inst1|dec_to_en[7]\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|dec_to_en\(7) = (\inst2|inst1|alu0|mux|Mux2~1_combout\ & (\inst2|inst1|alu0|mux|Mux1~1_combout\ & \inst1|dec_to_en[7]~2_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|inst1|alu0|mux|Mux2~1_combout\,
	datab => \inst2|inst1|alu0|mux|Mux1~1_combout\,
	datad => \inst1|dec_to_en[7]~2_combout\,
	combout => \inst1|dec_to_en\(7));

-- Location: FF_X12_Y31_N31
\inst1|reg_gen:7:regs|y[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	asdata => \inst2|inst|mux_2|mux_1|mux_generate:2:mux_i|Mux2~3_combout\,
	sload => VCC,
	ena => \inst1|dec_to_en\(7),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|reg_gen:7:regs|y\(1));

-- Location: LCCOMB_X12_Y31_N30
\inst1|DOUT[9]~156\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|DOUT[9]~156_combout\ = (\inst2|inst1|alu1|mux|Mux3~1_combout\ & (\inst1|reg_gen:23:regs|y\(1))) # (!\inst2|inst1|alu1|mux|Mux3~1_combout\ & ((\inst1|reg_gen:7:regs|y\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst1|reg_gen:23:regs|y\(1),
	datac => \inst1|reg_gen:7:regs|y\(1),
	datad => \inst2|inst1|alu1|mux|Mux3~1_combout\,
	combout => \inst1|DOUT[9]~156_combout\);

-- Location: LCCOMB_X13_Y32_N30
\inst1|DOUT[3]~198\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|DOUT[3]~198_combout\ = (\inst1|DOUT[12]~24_combout\) # ((\inst2|inst1|alu0|mux|Mux0~1_combout\ & \inst2|inst1|alu0|mux|Mux2~1_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|inst1|alu0|mux|Mux0~1_combout\,
	datab => \inst2|inst1|alu0|mux|Mux2~1_combout\,
	datad => \inst1|DOUT[12]~24_combout\,
	combout => \inst1|DOUT[3]~198_combout\);

-- Location: LCCOMB_X12_Y30_N24
\inst1|dec_to_en[5]\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|dec_to_en\(5) = (\inst2|inst1|alu0|mux|Mux1~1_combout\ & (!\inst2|inst1|alu0|mux|Mux2~1_combout\ & \inst1|dec_to_en[7]~2_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|inst1|alu0|mux|Mux1~1_combout\,
	datac => \inst2|inst1|alu0|mux|Mux2~1_combout\,
	datad => \inst1|dec_to_en[7]~2_combout\,
	combout => \inst1|dec_to_en\(5));

-- Location: FF_X11_Y34_N17
\inst1|reg_gen:5:regs|y[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	asdata => \inst2|inst|mux_2|mux_1|mux_generate:2:mux_i|Mux2~3_combout\,
	sload => VCC,
	ena => \inst1|dec_to_en\(5),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|reg_gen:5:regs|y\(1));

-- Location: LCCOMB_X10_Y34_N18
\inst1|reg_gen:13:regs|y[1]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|reg_gen:13:regs|y[1]~feeder_combout\ = \inst2|inst|mux_2|mux_1|mux_generate:2:mux_i|Mux2~3_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|inst|mux_2|mux_1|mux_generate:2:mux_i|Mux2~3_combout\,
	combout => \inst1|reg_gen:13:regs|y[1]~feeder_combout\);

-- Location: LCCOMB_X10_Y34_N20
\inst1|dec_to_en[13]\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|dec_to_en\(13) = (\inst2|inst1|alu0|mux|Mux1~1_combout\ & (!\inst2|inst1|alu0|mux|Mux2~1_combout\ & \inst1|dec_to_en[11]~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010001000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|inst1|alu0|mux|Mux1~1_combout\,
	datab => \inst2|inst1|alu0|mux|Mux2~1_combout\,
	datad => \inst1|dec_to_en[11]~0_combout\,
	combout => \inst1|dec_to_en\(13));

-- Location: FF_X10_Y34_N19
\inst1|reg_gen:13:regs|y[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \inst1|reg_gen:13:regs|y[1]~feeder_combout\,
	ena => \inst1|dec_to_en\(13),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|reg_gen:13:regs|y\(1));

-- Location: LCCOMB_X11_Y34_N16
\inst1|DOUT[9]~157\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|DOUT[9]~157_combout\ = (\inst2|inst1|alu1|mux|Mux3~1_combout\ & (\inst2|inst1|alu0|mux|Mux0~1_combout\)) # (!\inst2|inst1|alu1|mux|Mux3~1_combout\ & ((\inst2|inst1|alu0|mux|Mux0~1_combout\ & ((\inst1|reg_gen:13:regs|y\(1)))) # 
-- (!\inst2|inst1|alu0|mux|Mux0~1_combout\ & (\inst1|reg_gen:5:regs|y\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|inst1|alu1|mux|Mux3~1_combout\,
	datab => \inst2|inst1|alu0|mux|Mux0~1_combout\,
	datac => \inst1|reg_gen:5:regs|y\(1),
	datad => \inst1|reg_gen:13:regs|y\(1),
	combout => \inst1|DOUT[9]~157_combout\);

-- Location: LCCOMB_X13_Y33_N0
\inst1|dec_to_en[29]\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|dec_to_en\(29) = (\inst1|dec_to_en[27]~3_combout\ & (!\inst2|inst1|alu0|mux|Mux2~1_combout\ & \inst2|inst1|alu0|mux|Mux1~1_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010001000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|dec_to_en[27]~3_combout\,
	datab => \inst2|inst1|alu0|mux|Mux2~1_combout\,
	datad => \inst2|inst1|alu0|mux|Mux1~1_combout\,
	combout => \inst1|dec_to_en\(29));

-- Location: FF_X11_Y34_N27
\inst1|reg_gen:29:regs|y[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	asdata => \inst2|inst|mux_2|mux_1|mux_generate:2:mux_i|Mux2~3_combout\,
	sload => VCC,
	ena => \inst1|dec_to_en\(29),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|reg_gen:29:regs|y\(1));

-- Location: LCCOMB_X10_Y34_N12
\inst1|dec_to_en[21]\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|dec_to_en\(21) = (\inst2|inst1|alu0|mux|Mux1~1_combout\ & (\inst1|dec_to_en[17]~1_combout\ & !\inst2|inst1|alu0|mux|Mux2~1_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|inst1|alu0|mux|Mux1~1_combout\,
	datab => \inst1|dec_to_en[17]~1_combout\,
	datad => \inst2|inst1|alu0|mux|Mux2~1_combout\,
	combout => \inst1|dec_to_en\(21));

-- Location: FF_X10_Y34_N13
\inst1|reg_gen:21:regs|y[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	asdata => \inst2|inst|mux_2|mux_1|mux_generate:2:mux_i|Mux2~3_combout\,
	sload => VCC,
	ena => \inst1|dec_to_en\(21),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|reg_gen:21:regs|y\(1));

-- Location: LCCOMB_X11_Y34_N26
\inst1|DOUT[9]~158\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|DOUT[9]~158_combout\ = (\inst2|inst1|alu1|mux|Mux3~1_combout\ & ((\inst1|DOUT[9]~157_combout\ & (\inst1|reg_gen:29:regs|y\(1))) # (!\inst1|DOUT[9]~157_combout\ & ((\inst1|reg_gen:21:regs|y\(1)))))) # (!\inst2|inst1|alu1|mux|Mux3~1_combout\ & 
-- (\inst1|DOUT[9]~157_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110011011000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|inst1|alu1|mux|Mux3~1_combout\,
	datab => \inst1|DOUT[9]~157_combout\,
	datac => \inst1|reg_gen:29:regs|y\(1),
	datad => \inst1|reg_gen:21:regs|y\(1),
	combout => \inst1|DOUT[9]~158_combout\);

-- Location: LCCOMB_X10_Y32_N4
\inst1|reg_gen:12:regs|y[1]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|reg_gen:12:regs|y[1]~feeder_combout\ = \inst2|inst|mux_2|mux_1|mux_generate:0:mux_i|Mux2~3_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst2|inst|mux_2|mux_1|mux_generate:0:mux_i|Mux2~3_combout\,
	combout => \inst1|reg_gen:12:regs|y[1]~feeder_combout\);

-- Location: LCCOMB_X10_Y30_N20
\inst1|dcd|dcd_3|dcd|Mux7~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|dcd|dcd_3|dcd|Mux7~2_combout\ = (!\inst2|inst1|alu0|mux|Mux3~0_combout\ & !\inst2|inst1|alu0|mux|Mux2~1_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|inst1|alu0|mux|Mux3~0_combout\,
	datad => \inst2|inst1|alu0|mux|Mux2~1_combout\,
	combout => \inst1|dcd|dcd_3|dcd|Mux7~2_combout\);

-- Location: LCCOMB_X10_Y30_N12
\inst1|dec_to_en[12]\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|dec_to_en\(12) = (\inst1|dec_to_en[11]~0_combout\ & ((\inst1|dcd|dcd_3|dcd|Mux7~4_combout\) # ((\inst1|dcd|dcd_3|dcd|Mux7~2_combout\ & \inst2|inst1|alu0|mux|Mux1~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|dcd|dcd_3|dcd|Mux7~4_combout\,
	datab => \inst1|dcd|dcd_3|dcd|Mux7~2_combout\,
	datac => \inst2|inst1|alu0|mux|Mux1~1_combout\,
	datad => \inst1|dec_to_en[11]~0_combout\,
	combout => \inst1|dec_to_en\(12));

-- Location: FF_X10_Y32_N5
\inst1|reg_gen:12:regs|y[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \inst1|reg_gen:12:regs|y[1]~feeder_combout\,
	ena => \inst1|dec_to_en\(12),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|reg_gen:12:regs|y\(1));

-- Location: LCCOMB_X10_Y32_N28
\inst1|dec_to_en[28]\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|dec_to_en\(28) = (\inst1|dec_to_en[27]~3_combout\ & ((\inst1|dcd|dcd_3|dcd|Mux7~4_combout\) # ((\inst2|inst1|alu0|mux|Mux1~1_combout\ & \inst1|dcd|dcd_3|dcd|Mux7~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|inst1|alu0|mux|Mux1~1_combout\,
	datab => \inst1|dcd|dcd_3|dcd|Mux7~4_combout\,
	datac => \inst1|dcd|dcd_3|dcd|Mux7~2_combout\,
	datad => \inst1|dec_to_en[27]~3_combout\,
	combout => \inst1|dec_to_en\(28));

-- Location: FF_X10_Y32_N17
\inst1|reg_gen:28:regs|y[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	asdata => \inst2|inst|mux_2|mux_1|mux_generate:0:mux_i|Mux2~3_combout\,
	sload => VCC,
	ena => \inst1|dec_to_en\(28),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|reg_gen:28:regs|y\(1));

-- Location: LCCOMB_X9_Y32_N4
\inst1|reg_gen:20:regs|y[1]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|reg_gen:20:regs|y[1]~feeder_combout\ = \inst2|inst|mux_2|mux_1|mux_generate:0:mux_i|Mux2~3_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst2|inst|mux_2|mux_1|mux_generate:0:mux_i|Mux2~3_combout\,
	combout => \inst1|reg_gen:20:regs|y[1]~feeder_combout\);

-- Location: LCCOMB_X10_Y30_N26
\inst1|dec_to_en[20]\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|dec_to_en\(20) = (\inst1|dec_to_en[17]~1_combout\ & ((\inst1|dcd|dcd_3|dcd|Mux7~4_combout\) # ((\inst2|inst1|alu0|mux|Mux1~1_combout\ & \inst1|dcd|dcd_3|dcd|Mux7~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|inst1|alu0|mux|Mux1~1_combout\,
	datab => \inst1|dcd|dcd_3|dcd|Mux7~2_combout\,
	datac => \inst1|dcd|dcd_3|dcd|Mux7~4_combout\,
	datad => \inst1|dec_to_en[17]~1_combout\,
	combout => \inst1|dec_to_en\(20));

-- Location: FF_X9_Y32_N5
\inst1|reg_gen:20:regs|y[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \inst1|reg_gen:20:regs|y[1]~feeder_combout\,
	ena => \inst1|dec_to_en\(20),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|reg_gen:20:regs|y\(1));

-- Location: LCCOMB_X9_Y32_N10
\inst1|reg_gen:4:regs|y[1]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|reg_gen:4:regs|y[1]~feeder_combout\ = \inst2|inst|mux_2|mux_1|mux_generate:0:mux_i|Mux2~3_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst2|inst|mux_2|mux_1|mux_generate:0:mux_i|Mux2~3_combout\,
	combout => \inst1|reg_gen:4:regs|y[1]~feeder_combout\);

-- Location: LCCOMB_X10_Y30_N8
\inst1|dec_to_en[4]\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|dec_to_en\(4) = (\inst1|dec_to_en[7]~2_combout\ & ((\inst1|dcd|dcd_3|dcd|Mux7~4_combout\) # ((\inst1|dcd|dcd_3|dcd|Mux7~2_combout\ & \inst2|inst1|alu0|mux|Mux1~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|dcd|dcd_3|dcd|Mux7~4_combout\,
	datab => \inst1|dcd|dcd_3|dcd|Mux7~2_combout\,
	datac => \inst1|dec_to_en[7]~2_combout\,
	datad => \inst2|inst1|alu0|mux|Mux1~1_combout\,
	combout => \inst1|dec_to_en\(4));

-- Location: FF_X9_Y32_N11
\inst1|reg_gen:4:regs|y[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \inst1|reg_gen:4:regs|y[1]~feeder_combout\,
	ena => \inst1|dec_to_en\(4),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|reg_gen:4:regs|y\(1));

-- Location: LCCOMB_X10_Y32_N10
\inst1|DOUT[9]~164\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|DOUT[9]~164_combout\ = (\inst2|inst1|alu1|mux|Mux3~1_combout\ & ((\inst1|reg_gen:20:regs|y\(1)) # ((\inst2|inst1|alu0|mux|Mux0~1_combout\)))) # (!\inst2|inst1|alu1|mux|Mux3~1_combout\ & (((\inst1|reg_gen:4:regs|y\(1) & 
-- !\inst2|inst1|alu0|mux|Mux0~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|inst1|alu1|mux|Mux3~1_combout\,
	datab => \inst1|reg_gen:20:regs|y\(1),
	datac => \inst1|reg_gen:4:regs|y\(1),
	datad => \inst2|inst1|alu0|mux|Mux0~1_combout\,
	combout => \inst1|DOUT[9]~164_combout\);

-- Location: LCCOMB_X10_Y32_N16
\inst1|DOUT[9]~165\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|DOUT[9]~165_combout\ = (\inst2|inst1|alu0|mux|Mux0~1_combout\ & ((\inst1|DOUT[9]~164_combout\ & ((\inst1|reg_gen:28:regs|y\(1)))) # (!\inst1|DOUT[9]~164_combout\ & (\inst1|reg_gen:12:regs|y\(1))))) # (!\inst2|inst1|alu0|mux|Mux0~1_combout\ & 
-- (((\inst1|DOUT[9]~164_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|reg_gen:12:regs|y\(1),
	datab => \inst2|inst1|alu0|mux|Mux0~1_combout\,
	datac => \inst1|reg_gen:28:regs|y\(1),
	datad => \inst1|DOUT[9]~164_combout\,
	combout => \inst1|DOUT[9]~165_combout\);

-- Location: LCCOMB_X11_Y34_N8
\inst1|DOUT[1]~245\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|DOUT[1]~245_combout\ = (\inst1|DOUT[12]~48_combout\ & (\inst1|DOUT[3]~198_combout\)) # (!\inst1|DOUT[12]~48_combout\ & ((\inst1|DOUT[3]~198_combout\ & ((\inst1|DOUT[9]~165_combout\))) # (!\inst1|DOUT[3]~198_combout\ & 
-- (\inst1|DOUT[9]~158_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|DOUT[12]~48_combout\,
	datab => \inst1|DOUT[3]~198_combout\,
	datac => \inst1|DOUT[9]~158_combout\,
	datad => \inst1|DOUT[9]~165_combout\,
	combout => \inst1|DOUT[1]~245_combout\);

-- Location: LCCOMB_X10_Y32_N20
\inst1|DOUT[1]~246\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|DOUT[1]~246_combout\ = (\inst1|DOUT[12]~48_combout\ & ((\inst1|DOUT[1]~245_combout\ & (\inst1|reg_gen:15:regs|y\(1))) # (!\inst1|DOUT[1]~245_combout\ & ((\inst1|DOUT[9]~156_combout\))))) # (!\inst1|DOUT[12]~48_combout\ & 
-- (((\inst1|DOUT[1]~245_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|reg_gen:15:regs|y\(1),
	datab => \inst1|DOUT[12]~48_combout\,
	datac => \inst1|DOUT[9]~156_combout\,
	datad => \inst1|DOUT[1]~245_combout\,
	combout => \inst1|DOUT[1]~246_combout\);

-- Location: LCCOMB_X10_Y32_N6
\inst1|DOUT[1]~247\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|DOUT[1]~247_combout\ = (\inst1|DOUT[3]~260_combout\ & (((\inst2|inst1|alu0|mux|Mux1~1_combout\)))) # (!\inst1|DOUT[3]~260_combout\ & ((\inst2|inst1|alu0|mux|Mux1~1_combout\ & ((\inst1|DOUT[1]~246_combout\))) # 
-- (!\inst2|inst1|alu0|mux|Mux1~1_combout\ & (\inst1|DOUT[9]~171_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010010100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|DOUT[3]~260_combout\,
	datab => \inst1|DOUT[9]~171_combout\,
	datac => \inst2|inst1|alu0|mux|Mux1~1_combout\,
	datad => \inst1|DOUT[1]~246_combout\,
	combout => \inst1|DOUT[1]~247_combout\);

-- Location: LCCOMB_X10_Y32_N0
\inst1|DOUT[1]~248\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|DOUT[1]~248_combout\ = (\inst1|DOUT[3]~260_combout\ & ((\inst1|DOUT[1]~247_combout\ & ((\inst1|DOUT[9]~160_combout\))) # (!\inst1|DOUT[1]~247_combout\ & (\inst1|DOUT[1]~244_combout\)))) # (!\inst1|DOUT[3]~260_combout\ & 
-- (((\inst1|DOUT[1]~247_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|DOUT[3]~260_combout\,
	datab => \inst1|DOUT[1]~244_combout\,
	datac => \inst1|DOUT[9]~160_combout\,
	datad => \inst1|DOUT[1]~247_combout\,
	combout => \inst1|DOUT[1]~248_combout\);

-- Location: LCCOMB_X10_Y32_N30
\inst1|DOUT[1]~249\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|DOUT[1]~249_combout\ = (\inst1|DOUT[3]~203_combout\ & ((\inst1|DOUT[1]~248_combout\))) # (!\inst1|DOUT[3]~203_combout\ & (\inst1|reg_gen:30:regs|y\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst1|reg_gen:30:regs|y\(1),
	datac => \inst1|DOUT[3]~203_combout\,
	datad => \inst1|DOUT[1]~248_combout\,
	combout => \inst1|DOUT[1]~249_combout\);

-- Location: CLKCTRL_G3
\inst1|DOUT[15]~52clkctrl\ : cycloneive_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \inst1|DOUT[15]~52clkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \inst1|DOUT[15]~52clkctrl_outclk\);

-- Location: LCCOMB_X10_Y32_N14
\inst1|DOUT[1]$latch~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|DOUT[1]$latch~0_combout\ = (GLOBAL(\inst1|DOUT[15]~52clkctrl_outclk\) & ((\inst1|DOUT[1]~249_combout\))) # (!GLOBAL(\inst1|DOUT[15]~52clkctrl_outclk\) & (\inst1|DOUT[1]$latch~combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst1|DOUT[1]$latch~combout\,
	datac => \inst1|DOUT[1]~249_combout\,
	datad => \inst1|DOUT[15]~52clkctrl_outclk\,
	combout => \inst1|DOUT[1]$latch~0_combout\);

-- Location: LCCOMB_X13_Y36_N24
\inst1|comb~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|comb~3_combout\ = (\inst1|DOUT[1]~250_combout\ & ((\inst1|DOUT[7]~205_combout\) # ((!\inst|Mux5~0_combout\) # (!\inst1|DOUT[7]~54_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|DOUT[7]~205_combout\,
	datab => \inst1|DOUT[7]~54_combout\,
	datac => \inst1|DOUT[1]~250_combout\,
	datad => \inst|Mux5~0_combout\,
	combout => \inst1|comb~3_combout\);

-- Location: LCCOMB_X13_Y36_N16
\inst1|DOUT[1]$latch\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|DOUT[1]$latch~combout\ = (!\inst1|comb~2_combout\ & ((\inst1|DOUT[1]$latch~0_combout\) # (\inst1|comb~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|DOUT[1]$latch~0_combout\,
	datab => \inst1|comb~2_combout\,
	datad => \inst1|comb~3_combout\,
	combout => \inst1|DOUT[1]$latch~combout\);

-- Location: LCCOMB_X13_Y36_N0
\inst3|OUT16B[1]~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|OUT16B[1]~14_combout\ = (\inst|Mux5~0_combout\ & (((\inst1|DOUT[1]$latch~combout\)) # (!\inst1|DOUT[7]_2052~combout\))) # (!\inst|Mux5~0_combout\ & (((\inst2|inst1|alu0|mux|Mux2~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111011110100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Mux5~0_combout\,
	datab => \inst1|DOUT[7]_2052~combout\,
	datac => \inst1|DOUT[1]$latch~combout\,
	datad => \inst2|inst1|alu0|mux|Mux2~1_combout\,
	combout => \inst3|OUT16B[1]~14_combout\);

-- Location: FF_X17_Y36_N17
\inst2|inst|reg_gen:5:regs|reg_1|y[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~input_o\,
	asdata => \inst3|OUT16B[1]~14_combout\,
	sload => VCC,
	ena => \inst2|inst|add_reg1_dcd|Mux3~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst2|inst|reg_gen:5:regs|reg_1|y\(1));

-- Location: LCCOMB_X14_Y36_N30
\inst2|inst|reg_gen:4:regs|reg_1|y[1]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|inst|reg_gen:4:regs|reg_1|y[1]~feeder_combout\ = \inst3|OUT16B[1]~14_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst3|OUT16B[1]~14_combout\,
	combout => \inst2|inst|reg_gen:4:regs|reg_1|y[1]~feeder_combout\);

-- Location: FF_X14_Y36_N31
\inst2|inst|reg_gen:4:regs|reg_1|y[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~input_o\,
	d => \inst2|inst|reg_gen:4:regs|reg_1|y[1]~feeder_combout\,
	ena => \inst2|inst|add_reg1_dcd|Mux3~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst2|inst|reg_gen:4:regs|reg_1|y\(1));

-- Location: FF_X17_Y32_N25
\inst2|inst|reg_gen:1:regs|reg_1|y[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~input_o\,
	asdata => \inst3|OUT16B[1]~14_combout\,
	sload => VCC,
	ena => \inst2|inst|add_reg1_dcd|Mux3~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst2|inst|reg_gen:1:regs|reg_1|y\(1));

-- Location: LCCOMB_X17_Y32_N24
\inst2|inst|mux_2|mux_1|mux_generate:0:mux_i|Mux2~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|inst|mux_2|mux_1|mux_generate:0:mux_i|Mux2~1_combout\ = ((!\inst4|inst1|exception~2_combout\ & (\inst4|inst1|data_out[6]~8_combout\ & \inst2|inst|reg_gen:1:regs|reg_1|y\(1)))) # (!\inst2|inst|mux_2|mux_1|mux_generate:0:mux_i|Mux3~1_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|inst1|exception~2_combout\,
	datab => \inst4|inst1|data_out[6]~8_combout\,
	datac => \inst2|inst|reg_gen:1:regs|reg_1|y\(1),
	datad => \inst2|inst|mux_2|mux_1|mux_generate:0:mux_i|Mux3~1_combout\,
	combout => \inst2|inst|mux_2|mux_1|mux_generate:0:mux_i|Mux2~1_combout\);

-- Location: LCCOMB_X17_Y32_N26
\inst2|inst|mux_2|mux_1|mux_generate:0:mux_i|Mux2~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|inst|mux_2|mux_1|mux_generate:0:mux_i|Mux2~2_combout\ = (\inst2|inst|mux_2|mux_1|mux_generate:0:mux_i|Mux3~0_combout\ & (((\inst2|inst|mux_2|mux_1|mux_generate:0:mux_i|Mux2~1_combout\)))) # 
-- (!\inst2|inst|mux_2|mux_1|mux_generate:0:mux_i|Mux3~0_combout\ & ((\inst2|inst|mux_2|mux_1|mux_generate:0:mux_i|Mux2~1_combout\ & ((\inst2|inst|reg_gen:4:regs|reg_1|y\(1)))) # (!\inst2|inst|mux_2|mux_1|mux_generate:0:mux_i|Mux2~1_combout\ & 
-- (\inst2|inst|reg_gen:5:regs|reg_1|y\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|inst|reg_gen:5:regs|reg_1|y\(1),
	datab => \inst2|inst|mux_2|mux_1|mux_generate:0:mux_i|Mux3~0_combout\,
	datac => \inst2|inst|reg_gen:4:regs|reg_1|y\(1),
	datad => \inst2|inst|mux_2|mux_1|mux_generate:0:mux_i|Mux2~1_combout\,
	combout => \inst2|inst|mux_2|mux_1|mux_generate:0:mux_i|Mux2~2_combout\);

-- Location: LCCOMB_X14_Y36_N26
\inst2|inst|reg_gen:3:regs|reg_1|y[1]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|inst|reg_gen:3:regs|reg_1|y[1]~feeder_combout\ = \inst3|OUT16B[1]~14_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst3|OUT16B[1]~14_combout\,
	combout => \inst2|inst|reg_gen:3:regs|reg_1|y[1]~feeder_combout\);

-- Location: FF_X14_Y36_N27
\inst2|inst|reg_gen:3:regs|reg_1|y[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~input_o\,
	d => \inst2|inst|reg_gen:3:regs|reg_1|y[1]~feeder_combout\,
	ena => \inst2|inst|add_reg1_dcd|Mux3~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst2|inst|reg_gen:3:regs|reg_1|y\(1));

-- Location: FF_X13_Y36_N7
\inst2|inst|reg_gen:2:regs|reg_1|y[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~input_o\,
	asdata => \inst3|OUT16B[1]~14_combout\,
	sload => VCC,
	ena => \inst2|inst|add_reg1_dcd|Mux3~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst2|inst|reg_gen:2:regs|reg_1|y\(1));

-- Location: LCCOMB_X14_Y36_N10
\inst2|inst|mux_2|mux_1|mux_generate:0:mux_i|Mux2~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|inst|mux_2|mux_1|mux_generate:0:mux_i|Mux2~0_combout\ = (\inst4|inst1|data_out[6]~8_combout\ & ((\inst4|inst1|exception~2_combout\ & ((\inst2|inst|reg_gen:2:regs|reg_1|y\(1)))) # (!\inst4|inst1|exception~2_combout\ & 
-- (\inst2|inst|reg_gen:3:regs|reg_1|y\(1))))) # (!\inst4|inst1|data_out[6]~8_combout\ & (((\inst2|inst|reg_gen:2:regs|reg_1|y\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|inst|reg_gen:3:regs|reg_1|y\(1),
	datab => \inst2|inst|reg_gen:2:regs|reg_1|y\(1),
	datac => \inst4|inst1|data_out[6]~8_combout\,
	datad => \inst4|inst1|exception~2_combout\,
	combout => \inst2|inst|mux_2|mux_1|mux_generate:0:mux_i|Mux2~0_combout\);

-- Location: LCCOMB_X17_Y32_N16
\inst2|inst|mux_2|mux_1|mux_generate:0:mux_i|Mux2~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|inst|mux_2|mux_1|mux_generate:0:mux_i|Mux2~3_combout\ = (\inst2|inst|mux_2|mux_1|mux_generate:0:mux_i|Mux3~2_combout\ & ((\inst2|inst|mux_2|mux_1|mux_generate:0:mux_i|Mux2~0_combout\))) # 
-- (!\inst2|inst|mux_2|mux_1|mux_generate:0:mux_i|Mux3~2_combout\ & (\inst2|inst|mux_2|mux_1|mux_generate:0:mux_i|Mux2~2_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|inst|mux_2|mux_1|mux_generate:0:mux_i|Mux3~2_combout\,
	datac => \inst2|inst|mux_2|mux_1|mux_generate:0:mux_i|Mux2~2_combout\,
	datad => \inst2|inst|mux_2|mux_1|mux_generate:0:mux_i|Mux2~0_combout\,
	combout => \inst2|inst|mux_2|mux_1|mux_generate:0:mux_i|Mux2~3_combout\);

-- Location: LCCOMB_X11_Y31_N22
\inst1|dec_to_en[16]~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|dec_to_en[16]~8_combout\ = (\inst2|inst1|alu1|mux|Mux3~1_combout\ & (!\inst2|inst1|alu0|mux|Mux0~1_combout\ & (\inst1|dcd|dcd_3|dcd|Mux7~7_combout\))) # (!\inst2|inst1|alu1|mux|Mux3~1_combout\ & (\inst2|inst1|alu0|mux|Mux0~1_combout\ & 
-- ((\inst1|dcd|dcd_3|dcd|Mux7~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110010000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|inst1|alu1|mux|Mux3~1_combout\,
	datab => \inst2|inst1|alu0|mux|Mux0~1_combout\,
	datac => \inst1|dcd|dcd_3|dcd|Mux7~7_combout\,
	datad => \inst1|dcd|dcd_3|dcd|Mux7~3_combout\,
	combout => \inst1|dec_to_en[16]~8_combout\);

-- Location: LCCOMB_X11_Y31_N24
\inst1|dec_to_en[16]~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|dec_to_en[16]~9_combout\ = (\inst1|dec_to_en[16]~8_combout\ & \inst|Mux6~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|dec_to_en[16]~8_combout\,
	datad => \inst|Mux6~0_combout\,
	combout => \inst1|dec_to_en[16]~9_combout\);

-- Location: FF_X11_Y31_N27
\inst1|reg_gen:16:regs|y[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	asdata => \inst2|inst|mux_2|mux_1|mux_generate:0:mux_i|Mux2~3_combout\,
	sload => VCC,
	ena => \inst1|dec_to_en[16]~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|reg_gen:16:regs|y\(1));

-- Location: LCCOMB_X13_Y34_N0
\inst1|DOUT[12]~32\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|DOUT[12]~32_combout\ = (\inst2|inst1|alu0|mux|Mux1~1_combout\ & (((\inst1|DOUT[12]~24_combout\) # (\inst2|inst1|alu0|mux|Mux0~1_combout\)) # (!\inst2|inst1|alu0|mux|Mux2~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|inst1|alu0|mux|Mux2~1_combout\,
	datab => \inst2|inst1|alu0|mux|Mux1~1_combout\,
	datac => \inst1|DOUT[12]~24_combout\,
	datad => \inst2|inst1|alu0|mux|Mux0~1_combout\,
	combout => \inst1|DOUT[12]~32_combout\);

-- Location: LCCOMB_X13_Y32_N26
\inst1|DOUT[12]~37\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|DOUT[12]~37_combout\ = (\inst2|inst1|alu0|mux|Mux2~1_combout\) # (\inst1|DOUT[12]~24_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|inst1|alu0|mux|Mux2~1_combout\,
	datad => \inst1|DOUT[12]~24_combout\,
	combout => \inst1|DOUT[12]~37_combout\);

-- Location: LCCOMB_X12_Y32_N10
\inst1|DOUT[12]~39\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|DOUT[12]~39_combout\ = (\inst1|DOUT[12]~24_combout\) # ((\inst2|inst1|alu0|mux|Mux0~1_combout\ & !\inst2|inst1|alu0|mux|Mux2~1_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst2|inst1|alu0|mux|Mux0~1_combout\,
	datac => \inst1|DOUT[12]~24_combout\,
	datad => \inst2|inst1|alu0|mux|Mux2~1_combout\,
	combout => \inst1|DOUT[12]~39_combout\);

-- Location: LCCOMB_X11_Y32_N10
\inst1|DOUT[9]~167\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|DOUT[9]~167_combout\ = (\inst1|DOUT[12]~39_combout\ & ((\inst1|DOUT[9]~166_combout\) # ((\inst1|DOUT[12]~37_combout\)))) # (!\inst1|DOUT[12]~39_combout\ & (((\inst1|reg_gen:18:regs|y\(1) & !\inst1|DOUT[12]~37_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|DOUT[12]~39_combout\,
	datab => \inst1|DOUT[9]~166_combout\,
	datac => \inst1|reg_gen:18:regs|y\(1),
	datad => \inst1|DOUT[12]~37_combout\,
	combout => \inst1|DOUT[9]~167_combout\);

-- Location: LCCOMB_X11_Y34_N12
\inst1|DOUT[9]~172\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|DOUT[9]~172_combout\ = (\inst1|DOUT[12]~37_combout\ & ((\inst1|DOUT[9]~167_combout\ & ((\inst1|DOUT[9]~171_combout\))) # (!\inst1|DOUT[9]~167_combout\ & (\inst1|DOUT[9]~165_combout\)))) # (!\inst1|DOUT[12]~37_combout\ & 
-- (((\inst1|DOUT[9]~167_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|DOUT[9]~165_combout\,
	datab => \inst1|DOUT[12]~37_combout\,
	datac => \inst1|DOUT[9]~171_combout\,
	datad => \inst1|DOUT[9]~167_combout\,
	combout => \inst1|DOUT[9]~172_combout\);

-- Location: LCCOMB_X11_Y34_N14
\inst1|DOUT[9]~173\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|DOUT[9]~173_combout\ = (\inst1|DOUT[12]~32_combout\ & (((\inst1|DOUT[12]~34_combout\)))) # (!\inst1|DOUT[12]~32_combout\ & ((\inst1|DOUT[12]~34_combout\ & ((\inst1|DOUT[9]~163_combout\))) # (!\inst1|DOUT[12]~34_combout\ & 
-- (\inst1|DOUT[9]~172_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|DOUT[9]~172_combout\,
	datab => \inst1|DOUT[12]~32_combout\,
	datac => \inst1|DOUT[9]~163_combout\,
	datad => \inst1|DOUT[12]~34_combout\,
	combout => \inst1|DOUT[9]~173_combout\);

-- Location: LCCOMB_X12_Y35_N6
\inst1|DOUT[12]~27\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|DOUT[12]~27_combout\ = (\inst2|inst1|alu0|mux|Mux2~1_combout\ & \inst1|DOUT[12]~24_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst2|inst1|alu0|mux|Mux2~1_combout\,
	datad => \inst1|DOUT[12]~24_combout\,
	combout => \inst1|DOUT[12]~27_combout\);

-- Location: LCCOMB_X12_Y35_N8
\inst1|DOUT[12]~25\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|DOUT[12]~25_combout\ = (\inst1|DOUT[12]~24_combout\ & ((\inst2|inst1|alu0|mux|Mux0~1_combout\) # (!\inst2|inst1|alu0|mux|Mux2~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst2|inst1|alu0|mux|Mux2~1_combout\,
	datac => \inst1|DOUT[12]~24_combout\,
	datad => \inst2|inst1|alu0|mux|Mux0~1_combout\,
	combout => \inst1|DOUT[12]~25_combout\);

-- Location: LCCOMB_X11_Y34_N24
\inst1|DOUT[9]~161\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|DOUT[9]~161_combout\ = (\inst1|DOUT[12]~27_combout\ & (((\inst1|DOUT[12]~25_combout\)))) # (!\inst1|DOUT[12]~27_combout\ & ((\inst1|DOUT[12]~25_combout\ & (\inst1|DOUT[9]~158_combout\)) # (!\inst1|DOUT[12]~25_combout\ & 
-- ((\inst1|DOUT[9]~160_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|DOUT[9]~158_combout\,
	datab => \inst1|DOUT[12]~27_combout\,
	datac => \inst1|DOUT[9]~160_combout\,
	datad => \inst1|DOUT[12]~25_combout\,
	combout => \inst1|DOUT[9]~161_combout\);

-- Location: LCCOMB_X11_Y34_N18
\inst1|DOUT[9]~162\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|DOUT[9]~162_combout\ = (\inst1|DOUT[12]~27_combout\ & ((\inst1|DOUT[9]~161_combout\ & ((\inst1|reg_gen:15:regs|y\(1)))) # (!\inst1|DOUT[9]~161_combout\ & (\inst1|DOUT[9]~156_combout\)))) # (!\inst1|DOUT[12]~27_combout\ & 
-- (((\inst1|DOUT[9]~161_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|DOUT[9]~156_combout\,
	datab => \inst1|DOUT[12]~27_combout\,
	datac => \inst1|reg_gen:15:regs|y\(1),
	datad => \inst1|DOUT[9]~161_combout\,
	combout => \inst1|DOUT[9]~162_combout\);

-- Location: LCCOMB_X11_Y34_N28
\inst1|DOUT[9]~174\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|DOUT[9]~174_combout\ = (\inst1|DOUT[12]~32_combout\ & ((\inst1|DOUT[9]~173_combout\ & (\inst1|reg_gen:16:regs|y\(1))) # (!\inst1|DOUT[9]~173_combout\ & ((\inst1|DOUT[9]~162_combout\))))) # (!\inst1|DOUT[12]~32_combout\ & 
-- (((\inst1|DOUT[9]~173_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011110010110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|reg_gen:16:regs|y\(1),
	datab => \inst1|DOUT[12]~32_combout\,
	datac => \inst1|DOUT[9]~173_combout\,
	datad => \inst1|DOUT[9]~162_combout\,
	combout => \inst1|DOUT[9]~174_combout\);

-- Location: LCCOMB_X14_Y34_N20
\inst1|DOUT[9]~175\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|DOUT[9]~175_combout\ = (\inst1|DOUT[12]~49_combout\ & ((\inst1|DOUT[9]~174_combout\))) # (!\inst1|DOUT[12]~49_combout\ & (\inst1|reg_gen:31:regs|y\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst1|DOUT[12]~49_combout\,
	datac => \inst1|reg_gen:31:regs|y\(1),
	datad => \inst1|DOUT[9]~174_combout\,
	combout => \inst1|DOUT[9]~175_combout\);

-- Location: CLKCTRL_G4
\inst1|DOUT[15]~53clkctrl\ : cycloneive_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \inst1|DOUT[15]~53clkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \inst1|DOUT[15]~53clkctrl_outclk\);

-- Location: LCCOMB_X14_Y34_N8
\inst1|DOUT[9]$latch~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|DOUT[9]$latch~0_combout\ = (GLOBAL(\inst1|DOUT[15]~53clkctrl_outclk\) & ((\inst1|DOUT[9]~175_combout\))) # (!GLOBAL(\inst1|DOUT[15]~53clkctrl_outclk\) & (\inst1|DOUT[9]$latch~combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|DOUT[9]$latch~combout\,
	datab => \inst1|DOUT[9]~175_combout\,
	datad => \inst1|DOUT[15]~53clkctrl_outclk\,
	combout => \inst1|DOUT[9]$latch~0_combout\);

-- Location: LCCOMB_X13_Y35_N4
\inst1|dcd|dcd_0|D[1]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|dcd|dcd_0|D[1]~1_combout\ = (\inst1|dcd|dcd_3|dcd|Mux7~6_combout\ & (!\inst2|inst1|alu0|mux|Mux0~1_combout\ & !\inst2|inst1|alu1|mux|Mux3~1_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|dcd|dcd_3|dcd|Mux7~6_combout\,
	datab => \inst2|inst1|alu0|mux|Mux0~1_combout\,
	datad => \inst2|inst1|alu1|mux|Mux3~1_combout\,
	combout => \inst1|dcd|dcd_0|D[1]~1_combout\);

-- Location: LCCOMB_X13_Y35_N24
\inst1|dcd|dcd_0|D[0]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|dcd|dcd_0|D[0]~0_combout\ = (\inst1|dcd|dcd_3|dcd|Mux7~7_combout\ & (!\inst2|inst1|alu0|mux|Mux0~1_combout\ & !\inst2|inst1|alu1|mux|Mux3~1_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001000000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|dcd|dcd_3|dcd|Mux7~7_combout\,
	datab => \inst2|inst1|alu0|mux|Mux0~1_combout\,
	datac => \inst2|inst1|alu1|mux|Mux3~1_combout\,
	combout => \inst1|dcd|dcd_0|D[0]~0_combout\);

-- Location: LCCOMB_X13_Y35_N28
\inst1|comb~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|comb~0_combout\ = (!\inst1|dcd|dcd_0|D[1]~1_combout\ & (((\inst1|dcd|dcd_0|D[0]~0_combout\) # (!\inst1|DOUT[7]~54_combout\)) # (!\inst|Mux5~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Mux5~0_combout\,
	datab => \inst1|dcd|dcd_0|D[0]~0_combout\,
	datac => \inst1|dcd|dcd_0|D[1]~1_combout\,
	datad => \inst1|DOUT[7]~54_combout\,
	combout => \inst1|comb~0_combout\);

-- Location: LCCOMB_X13_Y35_N8
\inst1|DOUT[9]$latch\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|DOUT[9]$latch~combout\ = (!\inst1|comb~0_combout\ & ((\inst1|DOUT[9]$latch~0_combout\) # (\inst1|dcd|dcd_0|D[1]~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|DOUT[9]$latch~0_combout\,
	datac => \inst1|dcd|dcd_0|D[1]~1_combout\,
	datad => \inst1|comb~0_combout\,
	combout => \inst1|DOUT[9]$latch~combout\);

-- Location: FF_X13_Y35_N15
\inst2|inst|reg_gen:6:regs|reg_2|y[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~input_o\,
	d => \inst3|OUT16B[9]~6_combout\,
	ena => \inst2|inst|add_reg1_dcd|Mux3~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst2|inst|reg_gen:6:regs|reg_2|y\(1));

-- Location: LCCOMB_X14_Y33_N20
\inst2|inst|reg_gen:1:regs|reg_2|y[1]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|inst|reg_gen:1:regs|reg_2|y[1]~feeder_combout\ = \inst3|OUT16B[9]~6_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst3|OUT16B[9]~6_combout\,
	combout => \inst2|inst|reg_gen:1:regs|reg_2|y[1]~feeder_combout\);

-- Location: FF_X14_Y33_N21
\inst2|inst|reg_gen:1:regs|reg_2|y[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~input_o\,
	d => \inst2|inst|reg_gen:1:regs|reg_2|y[1]~feeder_combout\,
	ena => \inst2|inst|add_reg1_dcd|Mux3~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst2|inst|reg_gen:1:regs|reg_2|y\(1));

-- Location: LCCOMB_X14_Y33_N22
\inst2|inst|mux_1|mux_1|mux_generate:2:mux_i|Mux2~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|inst|mux_1|mux_1|mux_generate:2:mux_i|Mux2~1_combout\ = (!\inst4|inst1|exception~2_combout\ & (\inst4|inst1|data_out[9]~3_combout\ & \inst2|inst|reg_gen:1:regs|reg_2|y\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst4|inst1|exception~2_combout\,
	datac => \inst4|inst1|data_out[9]~3_combout\,
	datad => \inst2|inst|reg_gen:1:regs|reg_2|y\(1),
	combout => \inst2|inst|mux_1|mux_1|mux_generate:2:mux_i|Mux2~1_combout\);

-- Location: LCCOMB_X14_Y33_N24
\inst2|inst|mux_1|mux_1|mux_generate:2:mux_i|Mux2~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|inst|mux_1|mux_1|mux_generate:2:mux_i|Mux2~2_combout\ = (\inst4|inst1|INS_OUT[15]~4_combout\ & (\inst2|inst|reg_gen:6:regs|reg_2|y\(1) & ((\inst2|inst|mux_1|mux_1|mux_generate:2:mux_i|Mux2~0_combout\)))) # (!\inst4|inst1|INS_OUT[15]~4_combout\ & 
-- (((\inst2|inst|mux_1|mux_1|mux_generate:2:mux_i|Mux2~1_combout\) # (!\inst2|inst|mux_1|mux_1|mux_generate:2:mux_i|Mux2~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100001010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|inst1|INS_OUT[15]~4_combout\,
	datab => \inst2|inst|reg_gen:6:regs|reg_2|y\(1),
	datac => \inst2|inst|mux_1|mux_1|mux_generate:2:mux_i|Mux2~1_combout\,
	datad => \inst2|inst|mux_1|mux_1|mux_generate:2:mux_i|Mux2~0_combout\,
	combout => \inst2|inst|mux_1|mux_1|mux_generate:2:mux_i|Mux2~2_combout\);

-- Location: LCCOMB_X14_Y35_N16
\inst2|inst|reg_gen:5:regs|reg_2|y[0]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|inst|reg_gen:5:regs|reg_2|y[0]~feeder_combout\ = \inst3|OUT16B[8]~7_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|OUT16B[8]~7_combout\,
	combout => \inst2|inst|reg_gen:5:regs|reg_2|y[0]~feeder_combout\);

-- Location: FF_X14_Y35_N17
\inst2|inst|reg_gen:5:regs|reg_2|y[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~input_o\,
	d => \inst2|inst|reg_gen:5:regs|reg_2|y[0]~feeder_combout\,
	ena => \inst2|inst|add_reg1_dcd|Mux3~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst2|inst|reg_gen:5:regs|reg_2|y\(0));

-- Location: LCCOMB_X18_Y35_N30
\inst2|inst|mux_2|mux_1|mux_generate:2:mux_i|Mux3~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|inst|mux_2|mux_1|mux_generate:2:mux_i|Mux3~1_combout\ = (!\inst4|inst1|exception~2_combout\ & (\inst4|inst1|data_out[6]~8_combout\ & (\inst2|inst|mux_2|mux_1|mux_generate:0:mux_i|Mux3~1_combout\ & \inst2|inst|reg_gen:1:regs|reg_2|y\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|inst1|exception~2_combout\,
	datab => \inst4|inst1|data_out[6]~8_combout\,
	datac => \inst2|inst|mux_2|mux_1|mux_generate:0:mux_i|Mux3~1_combout\,
	datad => \inst2|inst|reg_gen:1:regs|reg_2|y\(0),
	combout => \inst2|inst|mux_2|mux_1|mux_generate:2:mux_i|Mux3~1_combout\);

-- Location: LCCOMB_X18_Y35_N28
\inst2|inst|reg_gen:4:regs|reg_2|y[0]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|inst|reg_gen:4:regs|reg_2|y[0]~feeder_combout\ = \inst3|OUT16B[8]~7_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst3|OUT16B[8]~7_combout\,
	combout => \inst2|inst|reg_gen:4:regs|reg_2|y[0]~feeder_combout\);

-- Location: FF_X18_Y35_N29
\inst2|inst|reg_gen:4:regs|reg_2|y[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~input_o\,
	d => \inst2|inst|reg_gen:4:regs|reg_2|y[0]~feeder_combout\,
	ena => \inst2|inst|add_reg1_dcd|Mux3~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst2|inst|reg_gen:4:regs|reg_2|y\(0));

-- Location: LCCOMB_X18_Y35_N4
\inst2|inst|mux_2|mux_1|mux_generate:2:mux_i|Mux3~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|inst|mux_2|mux_1|mux_generate:2:mux_i|Mux3~2_combout\ = (\inst2|inst|mux_2|mux_1|mux_generate:0:mux_i|Mux3~0_combout\ & (((\inst2|inst|mux_2|mux_1|mux_generate:2:mux_i|Mux3~1_combout\)))) # 
-- (!\inst2|inst|mux_2|mux_1|mux_generate:0:mux_i|Mux3~0_combout\ & ((\inst2|inst|mux_2|mux_1|mux_generate:2:mux_i|Mux3~1_combout\ & (\inst2|inst|reg_gen:5:regs|reg_2|y\(0))) # (!\inst2|inst|mux_2|mux_1|mux_generate:2:mux_i|Mux3~1_combout\ & 
-- ((\inst2|inst|reg_gen:4:regs|reg_2|y\(0))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110001111100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|inst|reg_gen:5:regs|reg_2|y\(0),
	datab => \inst2|inst|mux_2|mux_1|mux_generate:0:mux_i|Mux3~0_combout\,
	datac => \inst2|inst|mux_2|mux_1|mux_generate:2:mux_i|Mux3~1_combout\,
	datad => \inst2|inst|reg_gen:4:regs|reg_2|y\(0),
	combout => \inst2|inst|mux_2|mux_1|mux_generate:2:mux_i|Mux3~2_combout\);

-- Location: LCCOMB_X18_Y35_N16
\inst2|inst|reg_gen:3:regs|reg_2|y[0]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|inst|reg_gen:3:regs|reg_2|y[0]~feeder_combout\ = \inst3|OUT16B[8]~7_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst3|OUT16B[8]~7_combout\,
	combout => \inst2|inst|reg_gen:3:regs|reg_2|y[0]~feeder_combout\);

-- Location: FF_X18_Y35_N17
\inst2|inst|reg_gen:3:regs|reg_2|y[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~input_o\,
	d => \inst2|inst|reg_gen:3:regs|reg_2|y[0]~feeder_combout\,
	ena => \inst2|inst|add_reg1_dcd|Mux3~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst2|inst|reg_gen:3:regs|reg_2|y\(0));

-- Location: LCCOMB_X13_Y35_N18
\inst2|inst|reg_gen:2:regs|reg_2|y[0]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|inst|reg_gen:2:regs|reg_2|y[0]~feeder_combout\ = \inst3|OUT16B[8]~7_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|OUT16B[8]~7_combout\,
	combout => \inst2|inst|reg_gen:2:regs|reg_2|y[0]~feeder_combout\);

-- Location: FF_X13_Y35_N19
\inst2|inst|reg_gen:2:regs|reg_2|y[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~input_o\,
	d => \inst2|inst|reg_gen:2:regs|reg_2|y[0]~feeder_combout\,
	ena => \inst2|inst|add_reg1_dcd|Mux3~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst2|inst|reg_gen:2:regs|reg_2|y\(0));

-- Location: LCCOMB_X18_Y35_N6
\inst2|inst|mux_2|mux_1|mux_generate:2:mux_i|Mux3~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|inst|mux_2|mux_1|mux_generate:2:mux_i|Mux3~0_combout\ = (\inst4|inst1|exception~2_combout\ & (((\inst2|inst|reg_gen:2:regs|reg_2|y\(0))))) # (!\inst4|inst1|exception~2_combout\ & ((\inst4|inst1|data_out[6]~8_combout\ & 
-- (\inst2|inst|reg_gen:3:regs|reg_2|y\(0))) # (!\inst4|inst1|data_out[6]~8_combout\ & ((\inst2|inst|reg_gen:2:regs|reg_2|y\(0))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111100100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|inst|reg_gen:3:regs|reg_2|y\(0),
	datab => \inst4|inst1|exception~2_combout\,
	datac => \inst4|inst1|data_out[6]~8_combout\,
	datad => \inst2|inst|reg_gen:2:regs|reg_2|y\(0),
	combout => \inst2|inst|mux_2|mux_1|mux_generate:2:mux_i|Mux3~0_combout\);

-- Location: LCCOMB_X18_Y35_N20
\inst2|inst|mux_2|mux_1|mux_generate:2:mux_i|Mux3~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|inst|mux_2|mux_1|mux_generate:2:mux_i|Mux3~3_combout\ = (\inst2|inst|mux_2|mux_1|mux_generate:0:mux_i|Mux3~2_combout\ & ((\inst2|inst|mux_2|mux_1|mux_generate:2:mux_i|Mux3~0_combout\))) # 
-- (!\inst2|inst|mux_2|mux_1|mux_generate:0:mux_i|Mux3~2_combout\ & (\inst2|inst|mux_2|mux_1|mux_generate:2:mux_i|Mux3~2_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|inst|mux_2|mux_1|mux_generate:0:mux_i|Mux3~2_combout\,
	datac => \inst2|inst|mux_2|mux_1|mux_generate:2:mux_i|Mux3~2_combout\,
	datad => \inst2|inst|mux_2|mux_1|mux_generate:2:mux_i|Mux3~0_combout\,
	combout => \inst2|inst|mux_2|mux_1|mux_generate:2:mux_i|Mux3~3_combout\);

-- Location: LCCOMB_X10_Y33_N14
\inst1|reg_gen:31:regs|y[0]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|reg_gen:31:regs|y[0]~feeder_combout\ = \inst2|inst|mux_2|mux_1|mux_generate:2:mux_i|Mux3~3_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst2|inst|mux_2|mux_1|mux_generate:2:mux_i|Mux3~3_combout\,
	combout => \inst1|reg_gen:31:regs|y[0]~feeder_combout\);

-- Location: FF_X10_Y33_N15
\inst1|reg_gen:31:regs|y[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \inst1|reg_gen:31:regs|y[0]~feeder_combout\,
	ena => \inst1|dec_to_en\(31),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|reg_gen:31:regs|y\(0));

-- Location: LCCOMB_X13_Y31_N12
\inst2|inst|mux_2|mux_1|mux_generate:0:mux_i|Mux3~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|inst|mux_2|mux_1|mux_generate:0:mux_i|Mux3~7_combout\ = (\inst2|inst|mux_2|mux_1|mux_generate:0:mux_i|Mux3~2_combout\ & (\inst2|inst|mux_2|mux_1|mux_generate:0:mux_i|Mux3~3_combout\)) # (!\inst2|inst|mux_2|mux_1|mux_generate:0:mux_i|Mux3~2_combout\ 
-- & ((\inst2|inst|mux_2|mux_1|mux_generate:0:mux_i|Mux3~5_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst2|inst|mux_2|mux_1|mux_generate:0:mux_i|Mux3~3_combout\,
	datac => \inst2|inst|mux_2|mux_1|mux_generate:0:mux_i|Mux3~2_combout\,
	datad => \inst2|inst|mux_2|mux_1|mux_generate:0:mux_i|Mux3~5_combout\,
	combout => \inst2|inst|mux_2|mux_1|mux_generate:0:mux_i|Mux3~7_combout\);

-- Location: FF_X11_Y31_N19
\inst1|reg_gen:16:regs|y[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	asdata => \inst2|inst|mux_2|mux_1|mux_generate:0:mux_i|Mux3~7_combout\,
	sload => VCC,
	ena => \inst1|dec_to_en[16]~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|reg_gen:16:regs|y\(0));

-- Location: FF_X10_Y31_N1
\inst1|reg_gen:24:regs|y[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	asdata => \inst2|inst|mux_2|mux_1|mux_generate:0:mux_i|Mux3~7_combout\,
	sload => VCC,
	ena => \inst1|dec_to_en[24]~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|reg_gen:24:regs|y\(0));

-- Location: LCCOMB_X11_Y31_N4
\inst1|reg_gen:8:regs|y[0]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|reg_gen:8:regs|y[0]~feeder_combout\ = \inst2|inst|mux_2|mux_1|mux_generate:0:mux_i|Mux3~7_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|inst|mux_2|mux_1|mux_generate:0:mux_i|Mux3~7_combout\,
	combout => \inst1|reg_gen:8:regs|y[0]~feeder_combout\);

-- Location: FF_X11_Y31_N5
\inst1|reg_gen:8:regs|y[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \inst1|reg_gen:8:regs|y[0]~feeder_combout\,
	ena => \inst1|dec_to_en[8]~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|reg_gen:8:regs|y\(0));

-- Location: LCCOMB_X11_Y31_N26
\inst1|DOUT[8]~176\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|DOUT[8]~176_combout\ = (\inst2|inst1|alu1|mux|Mux3~1_combout\ & (\inst1|reg_gen:24:regs|y\(0))) # (!\inst2|inst1|alu1|mux|Mux3~1_combout\ & ((\inst1|reg_gen:8:regs|y\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|reg_gen:24:regs|y\(0),
	datab => \inst1|reg_gen:8:regs|y\(0),
	datad => \inst2|inst1|alu1|mux|Mux3~1_combout\,
	combout => \inst1|DOUT[8]~176_combout\);

-- Location: FF_X12_Y32_N23
\inst1|reg_gen:15:regs|y[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	asdata => \inst2|inst|mux_2|mux_1|mux_generate:2:mux_i|Mux3~3_combout\,
	sload => VCC,
	ena => \inst1|dec_to_en\(15),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|reg_gen:15:regs|y\(0));

-- Location: LCCOMB_X10_Y34_N28
\inst1|reg_gen:21:regs|y[0]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|reg_gen:21:regs|y[0]~feeder_combout\ = \inst2|inst|mux_2|mux_1|mux_generate:2:mux_i|Mux3~3_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst2|inst|mux_2|mux_1|mux_generate:2:mux_i|Mux3~3_combout\,
	combout => \inst1|reg_gen:21:regs|y[0]~feeder_combout\);

-- Location: FF_X10_Y34_N29
\inst1|reg_gen:21:regs|y[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \inst1|reg_gen:21:regs|y[0]~feeder_combout\,
	ena => \inst1|dec_to_en\(21),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|reg_gen:21:regs|y\(0));

-- Location: FF_X13_Y33_N27
\inst1|reg_gen:29:regs|y[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	asdata => \inst2|inst|mux_2|mux_1|mux_generate:2:mux_i|Mux3~3_combout\,
	sload => VCC,
	ena => \inst1|dec_to_en\(29),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|reg_gen:29:regs|y\(0));

-- Location: FF_X13_Y33_N21
\inst1|reg_gen:5:regs|y[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	asdata => \inst2|inst|mux_2|mux_1|mux_generate:2:mux_i|Mux3~3_combout\,
	sload => VCC,
	ena => \inst1|dec_to_en\(5),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|reg_gen:5:regs|y\(0));

-- Location: FF_X10_Y34_N3
\inst1|reg_gen:13:regs|y[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	asdata => \inst2|inst|mux_2|mux_1|mux_generate:2:mux_i|Mux3~3_combout\,
	sload => VCC,
	ena => \inst1|dec_to_en\(13),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|reg_gen:13:regs|y\(0));

-- Location: LCCOMB_X13_Y33_N20
\inst1|DOUT[8]~177\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|DOUT[8]~177_combout\ = (\inst2|inst1|alu1|mux|Mux3~1_combout\ & (\inst2|inst1|alu0|mux|Mux0~1_combout\)) # (!\inst2|inst1|alu1|mux|Mux3~1_combout\ & ((\inst2|inst1|alu0|mux|Mux0~1_combout\ & ((\inst1|reg_gen:13:regs|y\(0)))) # 
-- (!\inst2|inst1|alu0|mux|Mux0~1_combout\ & (\inst1|reg_gen:5:regs|y\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|inst1|alu1|mux|Mux3~1_combout\,
	datab => \inst2|inst1|alu0|mux|Mux0~1_combout\,
	datac => \inst1|reg_gen:5:regs|y\(0),
	datad => \inst1|reg_gen:13:regs|y\(0),
	combout => \inst1|DOUT[8]~177_combout\);

-- Location: LCCOMB_X13_Y33_N26
\inst1|DOUT[8]~178\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|DOUT[8]~178_combout\ = (\inst2|inst1|alu1|mux|Mux3~1_combout\ & ((\inst1|DOUT[8]~177_combout\ & ((\inst1|reg_gen:29:regs|y\(0)))) # (!\inst1|DOUT[8]~177_combout\ & (\inst1|reg_gen:21:regs|y\(0))))) # (!\inst2|inst1|alu1|mux|Mux3~1_combout\ & 
-- (((\inst1|DOUT[8]~177_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|inst1|alu1|mux|Mux3~1_combout\,
	datab => \inst1|reg_gen:21:regs|y\(0),
	datac => \inst1|reg_gen:29:regs|y\(0),
	datad => \inst1|DOUT[8]~177_combout\,
	combout => \inst1|DOUT[8]~178_combout\);

-- Location: FF_X14_Y31_N25
\inst1|reg_gen:23:regs|y[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	asdata => \inst2|inst|mux_2|mux_1|mux_generate:2:mux_i|Mux3~3_combout\,
	sload => VCC,
	ena => \inst1|dec_to_en\(23),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|reg_gen:23:regs|y\(0));

-- Location: FF_X12_Y31_N15
\inst1|reg_gen:7:regs|y[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	asdata => \inst2|inst|mux_2|mux_1|mux_generate:2:mux_i|Mux3~3_combout\,
	sload => VCC,
	ena => \inst1|dec_to_en\(7),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|reg_gen:7:regs|y\(0));

-- Location: LCCOMB_X12_Y31_N14
\inst1|DOUT[8]~179\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|DOUT[8]~179_combout\ = (\inst2|inst1|alu1|mux|Mux3~1_combout\ & (\inst1|reg_gen:23:regs|y\(0))) # (!\inst2|inst1|alu1|mux|Mux3~1_combout\ & ((\inst1|reg_gen:7:regs|y\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst1|reg_gen:23:regs|y\(0),
	datac => \inst1|reg_gen:7:regs|y\(0),
	datad => \inst2|inst1|alu1|mux|Mux3~1_combout\,
	combout => \inst1|DOUT[8]~179_combout\);

-- Location: LCCOMB_X11_Y30_N8
\inst1|reg_gen:22:regs|y[0]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|reg_gen:22:regs|y[0]~feeder_combout\ = \inst2|inst|mux_2|mux_1|mux_generate:0:mux_i|Mux3~7_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst2|inst|mux_2|mux_1|mux_generate:0:mux_i|Mux3~7_combout\,
	combout => \inst1|reg_gen:22:regs|y[0]~feeder_combout\);

-- Location: FF_X11_Y30_N9
\inst1|reg_gen:22:regs|y[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \inst1|reg_gen:22:regs|y[0]~feeder_combout\,
	ena => \inst1|dec_to_en\(22),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|reg_gen:22:regs|y\(0));

-- Location: LCCOMB_X10_Y31_N6
\inst1|reg_gen:30:regs|y[0]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|reg_gen:30:regs|y[0]~feeder_combout\ = \inst2|inst|mux_2|mux_1|mux_generate:0:mux_i|Mux3~7_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst2|inst|mux_2|mux_1|mux_generate:0:mux_i|Mux3~7_combout\,
	combout => \inst1|reg_gen:30:regs|y[0]~feeder_combout\);

-- Location: FF_X10_Y31_N7
\inst1|reg_gen:30:regs|y[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \inst1|reg_gen:30:regs|y[0]~feeder_combout\,
	ena => \inst1|dec_to_en\(30),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|reg_gen:30:regs|y\(0));

-- Location: LCCOMB_X13_Y31_N30
\inst1|reg_gen:14:regs|y[0]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|reg_gen:14:regs|y[0]~feeder_combout\ = \inst2|inst|mux_2|mux_1|mux_generate:0:mux_i|Mux3~7_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|inst|mux_2|mux_1|mux_generate:0:mux_i|Mux3~7_combout\,
	combout => \inst1|reg_gen:14:regs|y[0]~feeder_combout\);

-- Location: FF_X13_Y31_N31
\inst1|reg_gen:14:regs|y[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \inst1|reg_gen:14:regs|y[0]~feeder_combout\,
	ena => \inst1|dec_to_en\(14),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|reg_gen:14:regs|y\(0));

-- Location: LCCOMB_X11_Y30_N14
\inst1|reg_gen:6:regs|y[0]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|reg_gen:6:regs|y[0]~feeder_combout\ = \inst2|inst|mux_2|mux_1|mux_generate:0:mux_i|Mux3~7_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst2|inst|mux_2|mux_1|mux_generate:0:mux_i|Mux3~7_combout\,
	combout => \inst1|reg_gen:6:regs|y[0]~feeder_combout\);

-- Location: FF_X11_Y30_N15
\inst1|reg_gen:6:regs|y[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \inst1|reg_gen:6:regs|y[0]~feeder_combout\,
	ena => \inst1|dec_to_en\(6),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|reg_gen:6:regs|y\(0));

-- Location: LCCOMB_X11_Y33_N0
\inst1|DOUT[8]~180\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|DOUT[8]~180_combout\ = (\inst2|inst1|alu0|mux|Mux0~1_combout\ & ((\inst1|reg_gen:14:regs|y\(0)) # ((\inst2|inst1|alu1|mux|Mux3~1_combout\)))) # (!\inst2|inst1|alu0|mux|Mux0~1_combout\ & (((\inst1|reg_gen:6:regs|y\(0) & 
-- !\inst2|inst1|alu1|mux|Mux3~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|reg_gen:14:regs|y\(0),
	datab => \inst1|reg_gen:6:regs|y\(0),
	datac => \inst2|inst1|alu0|mux|Mux0~1_combout\,
	datad => \inst2|inst1|alu1|mux|Mux3~1_combout\,
	combout => \inst1|DOUT[8]~180_combout\);

-- Location: LCCOMB_X11_Y33_N26
\inst1|DOUT[8]~181\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|DOUT[8]~181_combout\ = (\inst2|inst1|alu1|mux|Mux3~1_combout\ & ((\inst1|DOUT[8]~180_combout\ & ((\inst1|reg_gen:30:regs|y\(0)))) # (!\inst1|DOUT[8]~180_combout\ & (\inst1|reg_gen:22:regs|y\(0))))) # (!\inst2|inst1|alu1|mux|Mux3~1_combout\ & 
-- (((\inst1|DOUT[8]~180_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|inst1|alu1|mux|Mux3~1_combout\,
	datab => \inst1|reg_gen:22:regs|y\(0),
	datac => \inst1|reg_gen:30:regs|y\(0),
	datad => \inst1|DOUT[8]~180_combout\,
	combout => \inst1|DOUT[8]~181_combout\);

-- Location: LCCOMB_X11_Y33_N4
\inst1|DOUT[8]~182\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|DOUT[8]~182_combout\ = (\inst1|DOUT[12]~27_combout\ & ((\inst1|DOUT[8]~179_combout\) # ((\inst1|DOUT[12]~25_combout\)))) # (!\inst1|DOUT[12]~27_combout\ & (((\inst1|DOUT[8]~181_combout\ & !\inst1|DOUT[12]~25_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|DOUT[8]~179_combout\,
	datab => \inst1|DOUT[12]~27_combout\,
	datac => \inst1|DOUT[8]~181_combout\,
	datad => \inst1|DOUT[12]~25_combout\,
	combout => \inst1|DOUT[8]~182_combout\);

-- Location: LCCOMB_X11_Y33_N22
\inst1|DOUT[8]~183\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|DOUT[8]~183_combout\ = (\inst1|DOUT[8]~182_combout\ & ((\inst1|reg_gen:15:regs|y\(0)) # ((!\inst1|DOUT[12]~25_combout\)))) # (!\inst1|DOUT[8]~182_combout\ & (((\inst1|DOUT[8]~178_combout\ & \inst1|DOUT[12]~25_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|reg_gen:15:regs|y\(0),
	datab => \inst1|DOUT[8]~178_combout\,
	datac => \inst1|DOUT[8]~182_combout\,
	datad => \inst1|DOUT[12]~25_combout\,
	combout => \inst1|DOUT[8]~183_combout\);

-- Location: FF_X9_Y31_N13
\inst1|reg_gen:26:regs|y[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	asdata => \inst2|inst|mux_2|mux_1|mux_generate:0:mux_i|Mux3~7_combout\,
	sload => VCC,
	ena => \inst1|dec_to_en\(26),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|reg_gen:26:regs|y\(0));

-- Location: LCCOMB_X9_Y31_N18
\inst1|reg_gen:10:regs|y[0]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|reg_gen:10:regs|y[0]~feeder_combout\ = \inst2|inst|mux_2|mux_1|mux_generate:0:mux_i|Mux3~7_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst2|inst|mux_2|mux_1|mux_generate:0:mux_i|Mux3~7_combout\,
	combout => \inst1|reg_gen:10:regs|y[0]~feeder_combout\);

-- Location: FF_X9_Y31_N19
\inst1|reg_gen:10:regs|y[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \inst1|reg_gen:10:regs|y[0]~feeder_combout\,
	ena => \inst1|dec_to_en\(10),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|reg_gen:10:regs|y\(0));

-- Location: LCCOMB_X10_Y31_N24
\inst1|DOUT[8]~184\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|DOUT[8]~184_combout\ = (\inst2|inst1|alu1|mux|Mux3~1_combout\ & (\inst1|reg_gen:26:regs|y\(0))) # (!\inst2|inst1|alu1|mux|Mux3~1_combout\ & ((\inst1|reg_gen:10:regs|y\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|reg_gen:26:regs|y\(0),
	datab => \inst1|reg_gen:10:regs|y\(0),
	datad => \inst2|inst1|alu1|mux|Mux3~1_combout\,
	combout => \inst1|DOUT[8]~184_combout\);

-- Location: FF_X12_Y34_N9
\inst1|reg_gen:19:regs|y[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	asdata => \inst2|inst|mux_2|mux_1|mux_generate:2:mux_i|Mux3~3_combout\,
	sload => VCC,
	ena => \inst1|dec_to_en\(19),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|reg_gen:19:regs|y\(0));

-- Location: FF_X8_Y34_N29
\inst1|reg_gen:11:regs|y[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	asdata => \inst2|inst|mux_2|mux_1|mux_generate:2:mux_i|Mux3~3_combout\,
	sload => VCC,
	ena => \inst1|dec_to_en\(11),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|reg_gen:11:regs|y\(0));

-- Location: LCCOMB_X8_Y34_N30
\inst1|reg_gen:27:regs|y[0]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|reg_gen:27:regs|y[0]~feeder_combout\ = \inst2|inst|mux_2|mux_1|mux_generate:2:mux_i|Mux3~3_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst2|inst|mux_2|mux_1|mux_generate:2:mux_i|Mux3~3_combout\,
	combout => \inst1|reg_gen:27:regs|y[0]~feeder_combout\);

-- Location: FF_X8_Y34_N31
\inst1|reg_gen:27:regs|y[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \inst1|reg_gen:27:regs|y[0]~feeder_combout\,
	ena => \inst1|dec_to_en\(27),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|reg_gen:27:regs|y\(0));

-- Location: LCCOMB_X9_Y34_N0
\inst1|DOUT[8]~190\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|DOUT[8]~190_combout\ = (\inst2|inst1|alu1|mux|Mux3~1_combout\ & ((\inst1|reg_gen:27:regs|y\(0)))) # (!\inst2|inst1|alu1|mux|Mux3~1_combout\ & (\inst1|reg_gen:11:regs|y\(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|reg_gen:11:regs|y\(0),
	datab => \inst1|reg_gen:27:regs|y\(0),
	datad => \inst2|inst1|alu1|mux|Mux3~1_combout\,
	combout => \inst1|DOUT[8]~190_combout\);

-- Location: FF_X12_Y34_N27
\inst1|reg_gen:17:regs|y[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	asdata => \inst2|inst|mux_2|mux_1|mux_generate:2:mux_i|Mux3~3_combout\,
	sload => VCC,
	ena => \inst1|dec_to_en\(17),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|reg_gen:17:regs|y\(0));

-- Location: FF_X9_Y34_N1
\inst1|reg_gen:25:regs|y[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	asdata => \inst2|inst|mux_2|mux_1|mux_generate:2:mux_i|Mux3~3_combout\,
	sload => VCC,
	ena => \inst1|dec_to_en\(25),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|reg_gen:25:regs|y\(0));

-- Location: FF_X9_Y34_N31
\inst1|reg_gen:9:regs|y[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	asdata => \inst2|inst|mux_2|mux_1|mux_generate:2:mux_i|Mux3~3_combout\,
	sload => VCC,
	ena => \inst1|dec_to_en\(9),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|reg_gen:9:regs|y\(0));

-- Location: LCCOMB_X9_Y34_N30
\inst1|DOUT[8]~188\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|DOUT[8]~188_combout\ = (\inst2|inst1|alu1|mux|Mux3~1_combout\ & (\inst1|reg_gen:25:regs|y\(0))) # (!\inst2|inst1|alu1|mux|Mux3~1_combout\ & ((\inst1|reg_gen:9:regs|y\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst1|reg_gen:25:regs|y\(0),
	datac => \inst1|reg_gen:9:regs|y\(0),
	datad => \inst2|inst1|alu1|mux|Mux3~1_combout\,
	combout => \inst1|DOUT[8]~188_combout\);

-- Location: LCCOMB_X10_Y33_N24
\inst1|DOUT[8]~189\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|DOUT[8]~189_combout\ = (\inst2|inst1|alu0|mux|Mux2~1_combout\ & (((\inst2|inst1|alu0|mux|Mux0~1_combout\)))) # (!\inst2|inst1|alu0|mux|Mux2~1_combout\ & ((\inst2|inst1|alu0|mux|Mux0~1_combout\ & ((\inst1|DOUT[8]~188_combout\))) # 
-- (!\inst2|inst1|alu0|mux|Mux0~1_combout\ & (\inst1|reg_gen:17:regs|y\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|inst1|alu0|mux|Mux2~1_combout\,
	datab => \inst1|reg_gen:17:regs|y\(0),
	datac => \inst1|DOUT[8]~188_combout\,
	datad => \inst2|inst1|alu0|mux|Mux0~1_combout\,
	combout => \inst1|DOUT[8]~189_combout\);

-- Location: LCCOMB_X10_Y33_N16
\inst1|DOUT[8]~191\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|DOUT[8]~191_combout\ = (\inst2|inst1|alu0|mux|Mux2~1_combout\ & ((\inst1|DOUT[8]~189_combout\ & ((\inst1|DOUT[8]~190_combout\))) # (!\inst1|DOUT[8]~189_combout\ & (\inst1|reg_gen:19:regs|y\(0))))) # (!\inst2|inst1|alu0|mux|Mux2~1_combout\ & 
-- (((\inst1|DOUT[8]~189_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|reg_gen:19:regs|y\(0),
	datab => \inst1|DOUT[8]~190_combout\,
	datac => \inst2|inst1|alu0|mux|Mux2~1_combout\,
	datad => \inst1|DOUT[8]~189_combout\,
	combout => \inst1|DOUT[8]~191_combout\);

-- Location: FF_X11_Y32_N17
\inst1|reg_gen:18:regs|y[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	asdata => \inst2|inst|mux_2|mux_1|mux_generate:0:mux_i|Mux3~7_combout\,
	sload => VCC,
	ena => \inst1|dec_to_en\(18),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|reg_gen:18:regs|y\(0));

-- Location: FF_X10_Y32_N27
\inst1|reg_gen:28:regs|y[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	asdata => \inst2|inst|mux_2|mux_1|mux_generate:0:mux_i|Mux3~7_combout\,
	sload => VCC,
	ena => \inst1|dec_to_en\(28),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|reg_gen:28:regs|y\(0));

-- Location: LCCOMB_X10_Y30_N4
\inst1|reg_gen:12:regs|y[0]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|reg_gen:12:regs|y[0]~feeder_combout\ = \inst2|inst|mux_2|mux_1|mux_generate:0:mux_i|Mux3~7_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst2|inst|mux_2|mux_1|mux_generate:0:mux_i|Mux3~7_combout\,
	combout => \inst1|reg_gen:12:regs|y[0]~feeder_combout\);

-- Location: FF_X10_Y30_N5
\inst1|reg_gen:12:regs|y[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \inst1|reg_gen:12:regs|y[0]~feeder_combout\,
	ena => \inst1|dec_to_en\(12),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|reg_gen:12:regs|y\(0));

-- Location: LCCOMB_X10_Y30_N18
\inst1|reg_gen:20:regs|y[0]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|reg_gen:20:regs|y[0]~feeder_combout\ = \inst2|inst|mux_2|mux_1|mux_generate:0:mux_i|Mux3~7_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst2|inst|mux_2|mux_1|mux_generate:0:mux_i|Mux3~7_combout\,
	combout => \inst1|reg_gen:20:regs|y[0]~feeder_combout\);

-- Location: FF_X10_Y30_N19
\inst1|reg_gen:20:regs|y[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \inst1|reg_gen:20:regs|y[0]~feeder_combout\,
	ena => \inst1|dec_to_en\(20),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|reg_gen:20:regs|y\(0));

-- Location: LCCOMB_X9_Y32_N28
\inst1|reg_gen:4:regs|y[0]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|reg_gen:4:regs|y[0]~feeder_combout\ = \inst2|inst|mux_2|mux_1|mux_generate:0:mux_i|Mux3~7_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst2|inst|mux_2|mux_1|mux_generate:0:mux_i|Mux3~7_combout\,
	combout => \inst1|reg_gen:4:regs|y[0]~feeder_combout\);

-- Location: FF_X9_Y32_N29
\inst1|reg_gen:4:regs|y[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \inst1|reg_gen:4:regs|y[0]~feeder_combout\,
	ena => \inst1|dec_to_en\(4),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|reg_gen:4:regs|y\(0));

-- Location: LCCOMB_X10_Y33_N26
\inst1|DOUT[8]~185\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|DOUT[8]~185_combout\ = (\inst2|inst1|alu1|mux|Mux3~1_combout\ & ((\inst1|reg_gen:20:regs|y\(0)) # ((\inst2|inst1|alu0|mux|Mux0~1_combout\)))) # (!\inst2|inst1|alu1|mux|Mux3~1_combout\ & (((\inst1|reg_gen:4:regs|y\(0) & 
-- !\inst2|inst1|alu0|mux|Mux0~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|inst1|alu1|mux|Mux3~1_combout\,
	datab => \inst1|reg_gen:20:regs|y\(0),
	datac => \inst1|reg_gen:4:regs|y\(0),
	datad => \inst2|inst1|alu0|mux|Mux0~1_combout\,
	combout => \inst1|DOUT[8]~185_combout\);

-- Location: LCCOMB_X10_Y33_N22
\inst1|DOUT[8]~186\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|DOUT[8]~186_combout\ = (\inst1|DOUT[8]~185_combout\ & ((\inst1|reg_gen:28:regs|y\(0)) # ((!\inst2|inst1|alu0|mux|Mux0~1_combout\)))) # (!\inst1|DOUT[8]~185_combout\ & (((\inst1|reg_gen:12:regs|y\(0) & \inst2|inst1|alu0|mux|Mux0~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|reg_gen:28:regs|y\(0),
	datab => \inst1|reg_gen:12:regs|y\(0),
	datac => \inst1|DOUT[8]~185_combout\,
	datad => \inst2|inst1|alu0|mux|Mux0~1_combout\,
	combout => \inst1|DOUT[8]~186_combout\);

-- Location: LCCOMB_X11_Y33_N16
\inst1|DOUT[8]~187\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|DOUT[8]~187_combout\ = (\inst1|DOUT[12]~39_combout\ & (\inst1|DOUT[12]~37_combout\)) # (!\inst1|DOUT[12]~39_combout\ & ((\inst1|DOUT[12]~37_combout\ & ((\inst1|DOUT[8]~186_combout\))) # (!\inst1|DOUT[12]~37_combout\ & 
-- (\inst1|reg_gen:18:regs|y\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|DOUT[12]~39_combout\,
	datab => \inst1|DOUT[12]~37_combout\,
	datac => \inst1|reg_gen:18:regs|y\(0),
	datad => \inst1|DOUT[8]~186_combout\,
	combout => \inst1|DOUT[8]~187_combout\);

-- Location: LCCOMB_X11_Y33_N2
\inst1|DOUT[8]~192\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|DOUT[8]~192_combout\ = (\inst1|DOUT[12]~39_combout\ & ((\inst1|DOUT[8]~187_combout\ & ((\inst1|DOUT[8]~191_combout\))) # (!\inst1|DOUT[8]~187_combout\ & (\inst1|DOUT[8]~184_combout\)))) # (!\inst1|DOUT[12]~39_combout\ & 
-- (((\inst1|DOUT[8]~187_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|DOUT[12]~39_combout\,
	datab => \inst1|DOUT[8]~184_combout\,
	datac => \inst1|DOUT[8]~191_combout\,
	datad => \inst1|DOUT[8]~187_combout\,
	combout => \inst1|DOUT[8]~192_combout\);

-- Location: LCCOMB_X11_Y33_N20
\inst1|DOUT[8]~193\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|DOUT[8]~193_combout\ = (\inst1|DOUT[12]~34_combout\ & (\inst1|DOUT[12]~32_combout\)) # (!\inst1|DOUT[12]~34_combout\ & ((\inst1|DOUT[12]~32_combout\ & (\inst1|DOUT[8]~183_combout\)) # (!\inst1|DOUT[12]~32_combout\ & 
-- ((\inst1|DOUT[8]~192_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100111001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|DOUT[12]~34_combout\,
	datab => \inst1|DOUT[12]~32_combout\,
	datac => \inst1|DOUT[8]~183_combout\,
	datad => \inst1|DOUT[8]~192_combout\,
	combout => \inst1|DOUT[8]~193_combout\);

-- Location: LCCOMB_X11_Y33_N30
\inst1|DOUT[8]~194\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|DOUT[8]~194_combout\ = (\inst1|DOUT[12]~34_combout\ & ((\inst1|DOUT[8]~193_combout\ & (\inst1|reg_gen:16:regs|y\(0))) # (!\inst1|DOUT[8]~193_combout\ & ((\inst1|DOUT[8]~176_combout\))))) # (!\inst1|DOUT[12]~34_combout\ & 
-- (((\inst1|DOUT[8]~193_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|DOUT[12]~34_combout\,
	datab => \inst1|reg_gen:16:regs|y\(0),
	datac => \inst1|DOUT[8]~176_combout\,
	datad => \inst1|DOUT[8]~193_combout\,
	combout => \inst1|DOUT[8]~194_combout\);

-- Location: LCCOMB_X12_Y33_N22
\inst1|DOUT[8]~195\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|DOUT[8]~195_combout\ = (\inst1|DOUT[12]~49_combout\ & ((\inst1|DOUT[8]~194_combout\))) # (!\inst1|DOUT[12]~49_combout\ & (\inst1|reg_gen:31:regs|y\(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|reg_gen:31:regs|y\(0),
	datac => \inst1|DOUT[12]~49_combout\,
	datad => \inst1|DOUT[8]~194_combout\,
	combout => \inst1|DOUT[8]~195_combout\);

-- Location: LCCOMB_X12_Y33_N18
\inst1|DOUT[8]$latch~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|DOUT[8]$latch~0_combout\ = (GLOBAL(\inst1|DOUT[15]~53clkctrl_outclk\) & (\inst1|DOUT[8]~195_combout\)) # (!GLOBAL(\inst1|DOUT[15]~53clkctrl_outclk\) & ((\inst1|DOUT[8]$latch~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|DOUT[8]~195_combout\,
	datab => \inst1|DOUT[15]~53clkctrl_outclk\,
	datad => \inst1|DOUT[8]$latch~combout\,
	combout => \inst1|DOUT[8]$latch~0_combout\);

-- Location: LCCOMB_X13_Y35_N22
\inst1|DOUT[8]$latch\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|DOUT[8]$latch~combout\ = (!\inst1|comb~0_combout\ & ((\inst1|DOUT[8]$latch~0_combout\) # (\inst1|dcd|dcd_0|D[1]~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst1|DOUT[8]$latch~0_combout\,
	datac => \inst1|dcd|dcd_0|D[1]~1_combout\,
	datad => \inst1|comb~0_combout\,
	combout => \inst1|DOUT[8]$latch~combout\);

-- Location: LCCOMB_X12_Y36_N14
\inst2|inst|reg_gen:6:regs|reg_1|y[6]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|inst|reg_gen:6:regs|reg_1|y[6]~feeder_combout\ = \inst3|OUT16B[6]~9_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst3|OUT16B[6]~9_combout\,
	combout => \inst2|inst|reg_gen:6:regs|reg_1|y[6]~feeder_combout\);

-- Location: FF_X12_Y36_N15
\inst2|inst|reg_gen:6:regs|reg_1|y[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~input_o\,
	d => \inst2|inst|reg_gen:6:regs|reg_1|y[6]~feeder_combout\,
	ena => \inst2|inst|add_reg1_dcd|Mux3~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst2|inst|reg_gen:6:regs|reg_1|y\(6));

-- Location: FF_X17_Y36_N9
\inst2|inst|reg_gen:1:regs|reg_1|y[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~input_o\,
	asdata => \inst3|OUT16B[6]~9_combout\,
	sload => VCC,
	ena => \inst2|inst|add_reg1_dcd|Mux3~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst2|inst|reg_gen:1:regs|reg_1|y\(6));

-- Location: LCCOMB_X17_Y36_N8
\inst2|inst|mux_1|mux_1|mux_generate:1:mux_i|Mux1~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|inst|mux_1|mux_1|mux_generate:1:mux_i|Mux1~0_combout\ = (\inst4|inst1|data_out[9]~3_combout\ & (\inst2|inst|reg_gen:1:regs|reg_1|y\(6) & !\inst4|inst1|exception~2_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|inst1|data_out[9]~3_combout\,
	datac => \inst2|inst|reg_gen:1:regs|reg_1|y\(6),
	datad => \inst4|inst1|exception~2_combout\,
	combout => \inst2|inst|mux_1|mux_1|mux_generate:1:mux_i|Mux1~0_combout\);

-- Location: LCCOMB_X16_Y32_N24
\inst2|inst|mux_1|mux_1|mux_generate:1:mux_i|Mux1~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|inst|mux_1|mux_1|mux_generate:1:mux_i|Mux1~1_combout\ = (\inst2|inst|mux_1|mux_1|mux_generate:2:mux_i|Mux2~0_combout\ & ((\inst4|inst1|INS_OUT[15]~4_combout\ & (\inst2|inst|reg_gen:6:regs|reg_1|y\(6))) # (!\inst4|inst1|INS_OUT[15]~4_combout\ & 
-- ((\inst2|inst|mux_1|mux_1|mux_generate:1:mux_i|Mux1~0_combout\))))) # (!\inst2|inst|mux_1|mux_1|mux_generate:2:mux_i|Mux2~0_combout\ & (((!\inst4|inst1|INS_OUT[15]~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100011110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|inst|reg_gen:6:regs|reg_1|y\(6),
	datab => \inst2|inst|mux_1|mux_1|mux_generate:2:mux_i|Mux2~0_combout\,
	datac => \inst2|inst|mux_1|mux_1|mux_generate:1:mux_i|Mux1~0_combout\,
	datad => \inst4|inst1|INS_OUT[15]~4_combout\,
	combout => \inst2|inst|mux_1|mux_1|mux_generate:1:mux_i|Mux1~1_combout\);

-- Location: LCCOMB_X13_Y36_N26
\inst1|DOUT[7]~206\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|DOUT[7]~206_combout\ = ((\inst1|DOUT[7]~205_combout\) # (!\inst1|DOUT[7]~54_combout\)) # (!\inst|Mux5~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111101110111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Mux5~0_combout\,
	datab => \inst1|DOUT[7]~54_combout\,
	datad => \inst1|DOUT[7]~205_combout\,
	combout => \inst1|DOUT[7]~206_combout\);

-- Location: LCCOMB_X10_Y31_N12
\inst1|reg_gen:30:regs|y[5]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|reg_gen:30:regs|y[5]~feeder_combout\ = \inst2|inst|mux_2|mux_1|mux_generate:1:mux_i|Mux2~3_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst2|inst|mux_2|mux_1|mux_generate:1:mux_i|Mux2~3_combout\,
	combout => \inst1|reg_gen:30:regs|y[5]~feeder_combout\);

-- Location: FF_X10_Y31_N13
\inst1|reg_gen:30:regs|y[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \inst1|reg_gen:30:regs|y[5]~feeder_combout\,
	ena => \inst1|dec_to_en\(30),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|reg_gen:30:regs|y\(5));

-- Location: LCCOMB_X14_Y31_N2
\inst1|reg_gen:14:regs|y[5]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|reg_gen:14:regs|y[5]~feeder_combout\ = \inst2|inst|mux_2|mux_1|mux_generate:1:mux_i|Mux2~3_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst2|inst|mux_2|mux_1|mux_generate:1:mux_i|Mux2~3_combout\,
	combout => \inst1|reg_gen:14:regs|y[5]~feeder_combout\);

-- Location: FF_X14_Y31_N3
\inst1|reg_gen:14:regs|y[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \inst1|reg_gen:14:regs|y[5]~feeder_combout\,
	ena => \inst1|dec_to_en\(14),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|reg_gen:14:regs|y\(5));

-- Location: FF_X11_Y30_N17
\inst1|reg_gen:22:regs|y[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	asdata => \inst2|inst|mux_2|mux_1|mux_generate:1:mux_i|Mux2~3_combout\,
	sload => VCC,
	ena => \inst1|dec_to_en\(22),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|reg_gen:22:regs|y\(5));

-- Location: LCCOMB_X11_Y30_N2
\inst1|reg_gen:6:regs|y[5]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|reg_gen:6:regs|y[5]~feeder_combout\ = \inst2|inst|mux_2|mux_1|mux_generate:1:mux_i|Mux2~3_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst2|inst|mux_2|mux_1|mux_generate:1:mux_i|Mux2~3_combout\,
	combout => \inst1|reg_gen:6:regs|y[5]~feeder_combout\);

-- Location: FF_X11_Y30_N3
\inst1|reg_gen:6:regs|y[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \inst1|reg_gen:6:regs|y[5]~feeder_combout\,
	ena => \inst1|dec_to_en\(6),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|reg_gen:6:regs|y\(5));

-- Location: LCCOMB_X12_Y33_N20
\inst1|DOUT[13]~79\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|DOUT[13]~79_combout\ = (\inst2|inst1|alu1|mux|Mux3~1_combout\ & ((\inst1|reg_gen:22:regs|y\(5)) # ((\inst2|inst1|alu0|mux|Mux0~1_combout\)))) # (!\inst2|inst1|alu1|mux|Mux3~1_combout\ & (((!\inst2|inst1|alu0|mux|Mux0~1_combout\ & 
-- \inst1|reg_gen:6:regs|y\(5)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010110110101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|inst1|alu1|mux|Mux3~1_combout\,
	datab => \inst1|reg_gen:22:regs|y\(5),
	datac => \inst2|inst1|alu0|mux|Mux0~1_combout\,
	datad => \inst1|reg_gen:6:regs|y\(5),
	combout => \inst1|DOUT[13]~79_combout\);

-- Location: LCCOMB_X12_Y33_N26
\inst1|DOUT[13]~80\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|DOUT[13]~80_combout\ = (\inst2|inst1|alu0|mux|Mux0~1_combout\ & ((\inst1|DOUT[13]~79_combout\ & (\inst1|reg_gen:30:regs|y\(5))) # (!\inst1|DOUT[13]~79_combout\ & ((\inst1|reg_gen:14:regs|y\(5)))))) # (!\inst2|inst1|alu0|mux|Mux0~1_combout\ & 
-- (((\inst1|DOUT[13]~79_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|reg_gen:30:regs|y\(5),
	datab => \inst1|reg_gen:14:regs|y\(5),
	datac => \inst2|inst1|alu0|mux|Mux0~1_combout\,
	datad => \inst1|DOUT[13]~79_combout\,
	combout => \inst1|DOUT[13]~80_combout\);

-- Location: LCCOMB_X9_Y31_N26
\inst1|reg_gen:10:regs|y[5]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|reg_gen:10:regs|y[5]~feeder_combout\ = \inst2|inst|mux_2|mux_1|mux_generate:1:mux_i|Mux2~3_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst2|inst|mux_2|mux_1|mux_generate:1:mux_i|Mux2~3_combout\,
	combout => \inst1|reg_gen:10:regs|y[5]~feeder_combout\);

-- Location: FF_X9_Y31_N27
\inst1|reg_gen:10:regs|y[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \inst1|reg_gen:10:regs|y[5]~feeder_combout\,
	ena => \inst1|dec_to_en\(10),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|reg_gen:10:regs|y\(5));

-- Location: FF_X9_Y31_N9
\inst1|reg_gen:26:regs|y[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	asdata => \inst2|inst|mux_2|mux_1|mux_generate:1:mux_i|Mux2~3_combout\,
	sload => VCC,
	ena => \inst1|dec_to_en\(26),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|reg_gen:26:regs|y\(5));

-- Location: LCCOMB_X10_Y31_N16
\inst1|DOUT[13]~86\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|DOUT[13]~86_combout\ = (\inst2|inst1|alu1|mux|Mux3~1_combout\ & ((\inst1|reg_gen:26:regs|y\(5)))) # (!\inst2|inst1|alu1|mux|Mux3~1_combout\ & (\inst1|reg_gen:10:regs|y\(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|reg_gen:10:regs|y\(5),
	datac => \inst1|reg_gen:26:regs|y\(5),
	datad => \inst2|inst1|alu1|mux|Mux3~1_combout\,
	combout => \inst1|DOUT[13]~86_combout\);

-- Location: FF_X11_Y32_N31
\inst1|reg_gen:18:regs|y[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	asdata => \inst2|inst|mux_2|mux_1|mux_generate:1:mux_i|Mux2~3_combout\,
	sload => VCC,
	ena => \inst1|dec_to_en\(18),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|reg_gen:18:regs|y\(5));

-- Location: LCCOMB_X10_Y31_N10
\inst1|reg_gen:24:regs|y[5]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|reg_gen:24:regs|y[5]~feeder_combout\ = \inst2|inst|mux_2|mux_1|mux_generate:1:mux_i|Mux2~3_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst2|inst|mux_2|mux_1|mux_generate:1:mux_i|Mux2~3_combout\,
	combout => \inst1|reg_gen:24:regs|y[5]~feeder_combout\);

-- Location: FF_X10_Y31_N11
\inst1|reg_gen:24:regs|y[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \inst1|reg_gen:24:regs|y[5]~feeder_combout\,
	ena => \inst1|dec_to_en[24]~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|reg_gen:24:regs|y\(5));

-- Location: FF_X11_Y31_N15
\inst1|reg_gen:8:regs|y[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	asdata => \inst2|inst|mux_2|mux_1|mux_generate:1:mux_i|Mux2~3_combout\,
	sload => VCC,
	ena => \inst1|dec_to_en[8]~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|reg_gen:8:regs|y\(5));

-- Location: LCCOMB_X11_Y31_N14
\inst1|DOUT[13]~83\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|DOUT[13]~83_combout\ = (\inst2|inst1|alu1|mux|Mux3~1_combout\ & (\inst1|reg_gen:24:regs|y\(5))) # (!\inst2|inst1|alu1|mux|Mux3~1_combout\ & ((\inst1|reg_gen:8:regs|y\(5))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst1|reg_gen:24:regs|y\(5),
	datac => \inst1|reg_gen:8:regs|y\(5),
	datad => \inst2|inst1|alu1|mux|Mux3~1_combout\,
	combout => \inst1|DOUT[13]~83_combout\);

-- Location: FF_X11_Y31_N21
\inst1|reg_gen:16:regs|y[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	asdata => \inst2|inst|mux_2|mux_1|mux_generate:1:mux_i|Mux2~3_combout\,
	sload => VCC,
	ena => \inst1|dec_to_en[16]~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|reg_gen:16:regs|y\(5));

-- Location: LCCOMB_X11_Y32_N28
\inst1|DOUT[5]~215\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|DOUT[5]~215_combout\ = (\inst2|inst1|alu0|mux|Mux2~1_combout\ & (((\inst2|inst1|alu0|mux|Mux0~1_combout\)))) # (!\inst2|inst1|alu0|mux|Mux2~1_combout\ & ((\inst2|inst1|alu0|mux|Mux0~1_combout\ & (\inst1|DOUT[13]~83_combout\)) # 
-- (!\inst2|inst1|alu0|mux|Mux0~1_combout\ & ((\inst1|reg_gen:16:regs|y\(5))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|DOUT[13]~83_combout\,
	datab => \inst1|reg_gen:16:regs|y\(5),
	datac => \inst2|inst1|alu0|mux|Mux2~1_combout\,
	datad => \inst2|inst1|alu0|mux|Mux0~1_combout\,
	combout => \inst1|DOUT[5]~215_combout\);

-- Location: LCCOMB_X11_Y32_N26
\inst1|DOUT[5]~216\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|DOUT[5]~216_combout\ = (\inst2|inst1|alu0|mux|Mux2~1_combout\ & ((\inst1|DOUT[5]~215_combout\ & (\inst1|DOUT[13]~86_combout\)) # (!\inst1|DOUT[5]~215_combout\ & ((\inst1|reg_gen:18:regs|y\(5)))))) # (!\inst2|inst1|alu0|mux|Mux2~1_combout\ & 
-- (((\inst1|DOUT[5]~215_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|DOUT[13]~86_combout\,
	datab => \inst1|reg_gen:18:regs|y\(5),
	datac => \inst2|inst1|alu0|mux|Mux2~1_combout\,
	datad => \inst1|DOUT[5]~215_combout\,
	combout => \inst1|DOUT[5]~216_combout\);

-- Location: LCCOMB_X14_Y36_N18
\inst2|inst2|OUT16B[11]~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|inst2|OUT16B[11]~10_combout\ = (\inst|Mux7~8_combout\ & (\inst4|inst1|INS_OUT[5]~6_combout\)) # (!\inst|Mux7~8_combout\ & ((\inst2|inst|mux_2|mux_1|mux_generate:2:mux_i|Mux0~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst|Mux7~8_combout\,
	datac => \inst4|inst1|INS_OUT[5]~6_combout\,
	datad => \inst2|inst|mux_2|mux_1|mux_generate:2:mux_i|Mux0~3_combout\,
	combout => \inst2|inst2|OUT16B[11]~10_combout\);

-- Location: LCCOMB_X14_Y33_N4
\inst2|inst|mux_1|mux_1|mux_generate:2:mux_i|Mux0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|inst|mux_1|mux_1|mux_generate:2:mux_i|Mux0~0_combout\ = (!\inst4|inst1|exception~2_combout\ & (\inst4|inst1|data_out[9]~3_combout\ & \inst2|inst|reg_gen:1:regs|reg_2|y\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst4|inst1|exception~2_combout\,
	datac => \inst4|inst1|data_out[9]~3_combout\,
	datad => \inst2|inst|reg_gen:1:regs|reg_2|y\(3),
	combout => \inst2|inst|mux_1|mux_1|mux_generate:2:mux_i|Mux0~0_combout\);

-- Location: FF_X13_Y36_N13
\inst2|inst|reg_gen:6:regs|reg_2|y[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~input_o\,
	asdata => \inst3|OUT16B[11]~4_combout\,
	sload => VCC,
	ena => \inst2|inst|add_reg1_dcd|Mux3~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst2|inst|reg_gen:6:regs|reg_2|y\(3));

-- Location: LCCOMB_X13_Y36_N12
\inst2|inst|mux_1|mux_1|mux_generate:2:mux_i|Mux0~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|inst|mux_1|mux_1|mux_generate:2:mux_i|Mux0~1_combout\ = (\inst2|inst|mux_1|mux_1|mux_generate:2:mux_i|Mux2~0_combout\ & ((\inst4|inst1|INS_OUT[15]~4_combout\ & ((\inst2|inst|reg_gen:6:regs|reg_2|y\(3)))) # (!\inst4|inst1|INS_OUT[15]~4_combout\ & 
-- (\inst2|inst|mux_1|mux_1|mux_generate:2:mux_i|Mux0~0_combout\)))) # (!\inst2|inst|mux_1|mux_1|mux_generate:2:mux_i|Mux2~0_combout\ & (((!\inst4|inst1|INS_OUT[15]~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000010111011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|inst|mux_1|mux_1|mux_generate:2:mux_i|Mux0~0_combout\,
	datab => \inst2|inst|mux_1|mux_1|mux_generate:2:mux_i|Mux2~0_combout\,
	datac => \inst2|inst|reg_gen:6:regs|reg_2|y\(3),
	datad => \inst4|inst1|INS_OUT[15]~4_combout\,
	combout => \inst2|inst|mux_1|mux_1|mux_generate:2:mux_i|Mux0~1_combout\);

-- Location: LCCOMB_X13_Y32_N20
\inst2|inst1|alu2|adder|C4~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|inst1|alu2|adder|C4~0_combout\ = (\inst2|inst|mux_1|mux_1|mux_generate:2:mux_i|Mux0~1_combout\ & ((\inst2|inst1|alu2|adder|C[3]~2_combout\) # (\inst2|inst3|DOUT[2]~3_combout\ $ (\inst2|inst2|OUT16B[11]~10_combout\)))) # 
-- (!\inst2|inst|mux_1|mux_1|mux_generate:2:mux_i|Mux0~1_combout\ & (\inst2|inst1|alu2|adder|C[3]~2_combout\ & (\inst2|inst3|DOUT[2]~3_combout\ $ (\inst2|inst2|OUT16B[11]~10_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111011001100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|inst3|DOUT[2]~3_combout\,
	datab => \inst2|inst2|OUT16B[11]~10_combout\,
	datac => \inst2|inst|mux_1|mux_1|mux_generate:2:mux_i|Mux0~1_combout\,
	datad => \inst2|inst1|alu2|adder|C[3]~2_combout\,
	combout => \inst2|inst1|alu2|adder|C4~0_combout\);

-- Location: LCCOMB_X14_Y32_N8
\inst2|inst1|alu3|mux|Mux3~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|inst1|alu3|mux|Mux3~0_combout\ = \inst2|inst2|OUT16B[12]~15_combout\ $ (((\inst2|inst3|DOUT[1]~4_combout\ & (\inst2|inst3|DOUT[2]~3_combout\ $ (\inst2|inst1|alu2|adder|C4~0_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001101001101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|inst2|OUT16B[12]~15_combout\,
	datab => \inst2|inst3|DOUT[2]~3_combout\,
	datac => \inst2|inst3|DOUT[1]~4_combout\,
	datad => \inst2|inst1|alu2|adder|C4~0_combout\,
	combout => \inst2|inst1|alu3|mux|Mux3~0_combout\);

-- Location: LCCOMB_X14_Y33_N28
\inst2|inst|reg_gen:1:regs|reg_2|y[4]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|inst|reg_gen:1:regs|reg_2|y[4]~feeder_combout\ = \inst3|OUT16B[12]~3_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst3|OUT16B[12]~3_combout\,
	combout => \inst2|inst|reg_gen:1:regs|reg_2|y[4]~feeder_combout\);

-- Location: FF_X14_Y33_N29
\inst2|inst|reg_gen:1:regs|reg_2|y[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~input_o\,
	d => \inst2|inst|reg_gen:1:regs|reg_2|y[4]~feeder_combout\,
	ena => \inst2|inst|add_reg1_dcd|Mux3~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst2|inst|reg_gen:1:regs|reg_2|y\(4));

-- Location: LCCOMB_X14_Y33_N30
\inst2|inst|mux_1|mux_1|mux_generate:3:mux_i|Mux3~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|inst|mux_1|mux_1|mux_generate:3:mux_i|Mux3~0_combout\ = (!\inst4|inst1|exception~2_combout\ & (\inst4|inst1|data_out[9]~3_combout\ & \inst2|inst|reg_gen:1:regs|reg_2|y\(4)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst4|inst1|exception~2_combout\,
	datac => \inst4|inst1|data_out[9]~3_combout\,
	datad => \inst2|inst|reg_gen:1:regs|reg_2|y\(4),
	combout => \inst2|inst|mux_1|mux_1|mux_generate:3:mux_i|Mux3~0_combout\);

-- Location: FF_X14_Y32_N27
\inst2|inst|reg_gen:6:regs|reg_2|y[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~input_o\,
	d => \inst3|OUT16B[12]~3_combout\,
	ena => \inst2|inst|add_reg1_dcd|Mux3~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst2|inst|reg_gen:6:regs|reg_2|y\(4));

-- Location: LCCOMB_X14_Y32_N14
\inst2|inst|mux_1|mux_1|mux_generate:3:mux_i|Mux3~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|inst|mux_1|mux_1|mux_generate:3:mux_i|Mux3~1_combout\ = (\inst4|inst1|INS_OUT[15]~4_combout\ & (((\inst2|inst|mux_1|mux_1|mux_generate:2:mux_i|Mux2~0_combout\ & \inst2|inst|reg_gen:6:regs|reg_2|y\(4))))) # (!\inst4|inst1|INS_OUT[15]~4_combout\ & 
-- ((\inst2|inst|mux_1|mux_1|mux_generate:3:mux_i|Mux3~0_combout\) # ((!\inst2|inst|mux_1|mux_1|mux_generate:2:mux_i|Mux2~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110001100100011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|inst|mux_1|mux_1|mux_generate:3:mux_i|Mux3~0_combout\,
	datab => \inst4|inst1|INS_OUT[15]~4_combout\,
	datac => \inst2|inst|mux_1|mux_1|mux_generate:2:mux_i|Mux2~0_combout\,
	datad => \inst2|inst|reg_gen:6:regs|reg_2|y\(4),
	combout => \inst2|inst|mux_1|mux_1|mux_generate:3:mux_i|Mux3~1_combout\);

-- Location: LCCOMB_X14_Y32_N18
\inst2|inst1|alu3|mux|Mux3~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|inst1|alu3|mux|Mux3~1_combout\ = (\inst2|inst1|alu3|mux|Mux3~0_combout\ & (\inst2|inst3|DOUT[1]~4_combout\ $ (((\inst2|inst|mux_1|mux_1|mux_generate:3:mux_i|Mux3~1_combout\) # (\inst2|inst3|DOUT[0]~2_combout\))))) # 
-- (!\inst2|inst1|alu3|mux|Mux3~0_combout\ & (\inst2|inst|mux_1|mux_1|mux_generate:3:mux_i|Mux3~1_combout\ & (\inst2|inst3|DOUT[1]~4_combout\ $ (\inst2|inst3|DOUT[0]~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010001101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|inst3|DOUT[1]~4_combout\,
	datab => \inst2|inst1|alu3|mux|Mux3~0_combout\,
	datac => \inst2|inst|mux_1|mux_1|mux_generate:3:mux_i|Mux3~1_combout\,
	datad => \inst2|inst3|DOUT[0]~2_combout\,
	combout => \inst2|inst1|alu3|mux|Mux3~1_combout\);

-- Location: LCCOMB_X14_Y34_N4
\inst1|reg_gen:31:regs|y[4]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|reg_gen:31:regs|y[4]~feeder_combout\ = \inst2|inst|mux_2|mux_1|mux_generate:3:mux_i|Mux3~3_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst2|inst|mux_2|mux_1|mux_generate:3:mux_i|Mux3~3_combout\,
	combout => \inst1|reg_gen:31:regs|y[4]~feeder_combout\);

-- Location: FF_X14_Y34_N5
\inst1|reg_gen:31:regs|y[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \inst1|reg_gen:31:regs|y[4]~feeder_combout\,
	ena => \inst1|dec_to_en\(31),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|reg_gen:31:regs|y\(4));

-- Location: LCCOMB_X16_Y31_N22
\inst1|reg_gen:30:regs|y[4]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|reg_gen:30:regs|y[4]~feeder_combout\ = \inst2|inst|mux_2|mux_1|mux_generate:1:mux_i|Mux3~3_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst2|inst|mux_2|mux_1|mux_generate:1:mux_i|Mux3~3_combout\,
	combout => \inst1|reg_gen:30:regs|y[4]~feeder_combout\);

-- Location: FF_X16_Y31_N23
\inst1|reg_gen:30:regs|y[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \inst1|reg_gen:30:regs|y[4]~feeder_combout\,
	ena => \inst1|dec_to_en\(30),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|reg_gen:30:regs|y\(4));

-- Location: FF_X13_Y31_N3
\inst1|reg_gen:14:regs|y[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	asdata => \inst2|inst|mux_2|mux_1|mux_generate:1:mux_i|Mux3~3_combout\,
	sload => VCC,
	ena => \inst1|dec_to_en\(14),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|reg_gen:14:regs|y\(4));

-- Location: FF_X14_Y30_N23
\inst1|reg_gen:6:regs|y[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	asdata => \inst2|inst|mux_2|mux_1|mux_generate:1:mux_i|Mux3~3_combout\,
	sload => VCC,
	ena => \inst1|dec_to_en\(6),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|reg_gen:6:regs|y\(4));

-- Location: LCCOMB_X14_Y30_N16
\inst1|reg_gen:22:regs|y[4]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|reg_gen:22:regs|y[4]~feeder_combout\ = \inst2|inst|mux_2|mux_1|mux_generate:1:mux_i|Mux3~3_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst2|inst|mux_2|mux_1|mux_generate:1:mux_i|Mux3~3_combout\,
	combout => \inst1|reg_gen:22:regs|y[4]~feeder_combout\);

-- Location: FF_X14_Y30_N17
\inst1|reg_gen:22:regs|y[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \inst1|reg_gen:22:regs|y[4]~feeder_combout\,
	ena => \inst1|dec_to_en\(22),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|reg_gen:22:regs|y\(4));

-- Location: LCCOMB_X14_Y30_N22
\inst1|DOUT[12]~100\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|DOUT[12]~100_combout\ = (\inst2|inst1|alu0|mux|Mux0~1_combout\ & (\inst2|inst1|alu1|mux|Mux3~1_combout\)) # (!\inst2|inst1|alu0|mux|Mux0~1_combout\ & ((\inst2|inst1|alu1|mux|Mux3~1_combout\ & ((\inst1|reg_gen:22:regs|y\(4)))) # 
-- (!\inst2|inst1|alu1|mux|Mux3~1_combout\ & (\inst1|reg_gen:6:regs|y\(4)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|inst1|alu0|mux|Mux0~1_combout\,
	datab => \inst2|inst1|alu1|mux|Mux3~1_combout\,
	datac => \inst1|reg_gen:6:regs|y\(4),
	datad => \inst1|reg_gen:22:regs|y\(4),
	combout => \inst1|DOUT[12]~100_combout\);

-- Location: LCCOMB_X13_Y31_N2
\inst1|DOUT[12]~101\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|DOUT[12]~101_combout\ = (\inst2|inst1|alu0|mux|Mux0~1_combout\ & ((\inst1|DOUT[12]~100_combout\ & (\inst1|reg_gen:30:regs|y\(4))) # (!\inst1|DOUT[12]~100_combout\ & ((\inst1|reg_gen:14:regs|y\(4)))))) # (!\inst2|inst1|alu0|mux|Mux0~1_combout\ & 
-- (((\inst1|DOUT[12]~100_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|inst1|alu0|mux|Mux0~1_combout\,
	datab => \inst1|reg_gen:30:regs|y\(4),
	datac => \inst1|reg_gen:14:regs|y\(4),
	datad => \inst1|DOUT[12]~100_combout\,
	combout => \inst1|DOUT[12]~101_combout\);

-- Location: FF_X9_Y31_N11
\inst1|reg_gen:10:regs|y[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	asdata => \inst2|inst|mux_2|mux_1|mux_generate:1:mux_i|Mux3~3_combout\,
	sload => VCC,
	ena => \inst1|dec_to_en\(10),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|reg_gen:10:regs|y\(4));

-- Location: LCCOMB_X9_Y31_N16
\inst1|reg_gen:26:regs|y[4]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|reg_gen:26:regs|y[4]~feeder_combout\ = \inst2|inst|mux_2|mux_1|mux_generate:1:mux_i|Mux3~3_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst2|inst|mux_2|mux_1|mux_generate:1:mux_i|Mux3~3_combout\,
	combout => \inst1|reg_gen:26:regs|y[4]~feeder_combout\);

-- Location: FF_X9_Y31_N17
\inst1|reg_gen:26:regs|y[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \inst1|reg_gen:26:regs|y[4]~feeder_combout\,
	ena => \inst1|dec_to_en\(26),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|reg_gen:26:regs|y\(4));

-- Location: LCCOMB_X9_Y31_N10
\inst1|DOUT[12]~104\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|DOUT[12]~104_combout\ = (\inst2|inst1|alu1|mux|Mux3~1_combout\ & ((\inst1|reg_gen:26:regs|y\(4)))) # (!\inst2|inst1|alu1|mux|Mux3~1_combout\ & (\inst1|reg_gen:10:regs|y\(4)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|inst1|alu1|mux|Mux3~1_combout\,
	datac => \inst1|reg_gen:10:regs|y\(4),
	datad => \inst1|reg_gen:26:regs|y\(4),
	combout => \inst1|DOUT[12]~104_combout\);

-- Location: FF_X11_Y32_N23
\inst1|reg_gen:18:regs|y[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	asdata => \inst2|inst|mux_2|mux_1|mux_generate:1:mux_i|Mux3~3_combout\,
	sload => VCC,
	ena => \inst1|dec_to_en\(18),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|reg_gen:18:regs|y\(4));

-- Location: LCCOMB_X10_Y31_N2
\inst1|reg_gen:24:regs|y[4]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|reg_gen:24:regs|y[4]~feeder_combout\ = \inst2|inst|mux_2|mux_1|mux_generate:1:mux_i|Mux3~3_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst2|inst|mux_2|mux_1|mux_generate:1:mux_i|Mux3~3_combout\,
	combout => \inst1|reg_gen:24:regs|y[4]~feeder_combout\);

-- Location: FF_X10_Y31_N3
\inst1|reg_gen:24:regs|y[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \inst1|reg_gen:24:regs|y[4]~feeder_combout\,
	ena => \inst1|dec_to_en[24]~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|reg_gen:24:regs|y\(4));

-- Location: LCCOMB_X11_Y31_N2
\inst1|reg_gen:8:regs|y[4]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|reg_gen:8:regs|y[4]~feeder_combout\ = \inst2|inst|mux_2|mux_1|mux_generate:1:mux_i|Mux3~3_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst2|inst|mux_2|mux_1|mux_generate:1:mux_i|Mux3~3_combout\,
	combout => \inst1|reg_gen:8:regs|y[4]~feeder_combout\);

-- Location: FF_X11_Y31_N3
\inst1|reg_gen:8:regs|y[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \inst1|reg_gen:8:regs|y[4]~feeder_combout\,
	ena => \inst1|dec_to_en[8]~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|reg_gen:8:regs|y\(4));

-- Location: LCCOMB_X11_Y31_N8
\inst1|DOUT[12]~96\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|DOUT[12]~96_combout\ = (\inst2|inst1|alu1|mux|Mux3~1_combout\ & (\inst1|reg_gen:24:regs|y\(4))) # (!\inst2|inst1|alu1|mux|Mux3~1_combout\ & ((\inst1|reg_gen:8:regs|y\(4))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|reg_gen:24:regs|y\(4),
	datab => \inst2|inst1|alu1|mux|Mux3~1_combout\,
	datad => \inst1|reg_gen:8:regs|y\(4),
	combout => \inst1|DOUT[12]~96_combout\);

-- Location: LCCOMB_X11_Y31_N0
\inst1|DOUT[4]~222\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|DOUT[4]~222_combout\ = (\inst2|inst1|alu0|mux|Mux2~1_combout\ & (((\inst2|inst1|alu0|mux|Mux0~1_combout\)))) # (!\inst2|inst1|alu0|mux|Mux2~1_combout\ & ((\inst2|inst1|alu0|mux|Mux0~1_combout\ & (\inst1|DOUT[12]~96_combout\)) # 
-- (!\inst2|inst1|alu0|mux|Mux0~1_combout\ & ((\inst1|reg_gen:16:regs|y\(4))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|inst1|alu0|mux|Mux2~1_combout\,
	datab => \inst1|DOUT[12]~96_combout\,
	datac => \inst1|reg_gen:16:regs|y\(4),
	datad => \inst2|inst1|alu0|mux|Mux0~1_combout\,
	combout => \inst1|DOUT[4]~222_combout\);

-- Location: LCCOMB_X12_Y31_N0
\inst1|DOUT[4]~223\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|DOUT[4]~223_combout\ = (\inst2|inst1|alu0|mux|Mux2~1_combout\ & ((\inst1|DOUT[4]~222_combout\ & (\inst1|DOUT[12]~104_combout\)) # (!\inst1|DOUT[4]~222_combout\ & ((\inst1|reg_gen:18:regs|y\(4)))))) # (!\inst2|inst1|alu0|mux|Mux2~1_combout\ & 
-- (((\inst1|DOUT[4]~222_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|inst1|alu0|mux|Mux2~1_combout\,
	datab => \inst1|DOUT[12]~104_combout\,
	datac => \inst1|reg_gen:18:regs|y\(4),
	datad => \inst1|DOUT[4]~222_combout\,
	combout => \inst1|DOUT[4]~223_combout\);

-- Location: LCCOMB_X8_Y34_N20
\inst1|reg_gen:27:regs|y[4]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|reg_gen:27:regs|y[4]~feeder_combout\ = \inst2|inst|mux_2|mux_1|mux_generate:3:mux_i|Mux3~3_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst2|inst|mux_2|mux_1|mux_generate:3:mux_i|Mux3~3_combout\,
	combout => \inst1|reg_gen:27:regs|y[4]~feeder_combout\);

-- Location: FF_X8_Y34_N21
\inst1|reg_gen:27:regs|y[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \inst1|reg_gen:27:regs|y[4]~feeder_combout\,
	ena => \inst1|dec_to_en\(27),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|reg_gen:27:regs|y\(4));

-- Location: LCCOMB_X8_Y34_N10
\inst1|reg_gen:11:regs|y[4]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|reg_gen:11:regs|y[4]~feeder_combout\ = \inst2|inst|mux_2|mux_1|mux_generate:3:mux_i|Mux3~3_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst2|inst|mux_2|mux_1|mux_generate:3:mux_i|Mux3~3_combout\,
	combout => \inst1|reg_gen:11:regs|y[4]~feeder_combout\);

-- Location: FF_X8_Y34_N11
\inst1|reg_gen:11:regs|y[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \inst1|reg_gen:11:regs|y[4]~feeder_combout\,
	ena => \inst1|dec_to_en\(11),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|reg_gen:11:regs|y\(4));

-- Location: LCCOMB_X9_Y34_N22
\inst1|DOUT[12]~110\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|DOUT[12]~110_combout\ = (\inst2|inst1|alu1|mux|Mux3~1_combout\ & (\inst1|reg_gen:27:regs|y\(4))) # (!\inst2|inst1|alu1|mux|Mux3~1_combout\ & ((\inst1|reg_gen:11:regs|y\(4))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|reg_gen:27:regs|y\(4),
	datab => \inst2|inst1|alu1|mux|Mux3~1_combout\,
	datad => \inst1|reg_gen:11:regs|y\(4),
	combout => \inst1|DOUT[12]~110_combout\);

-- Location: FF_X9_Y34_N11
\inst1|reg_gen:25:regs|y[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	asdata => \inst2|inst|mux_2|mux_1|mux_generate:3:mux_i|Mux3~3_combout\,
	sload => VCC,
	ena => \inst1|dec_to_en\(25),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|reg_gen:25:regs|y\(4));

-- Location: FF_X9_Y34_N29
\inst1|reg_gen:9:regs|y[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	asdata => \inst2|inst|mux_2|mux_1|mux_generate:3:mux_i|Mux3~3_combout\,
	sload => VCC,
	ena => \inst1|dec_to_en\(9),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|reg_gen:9:regs|y\(4));

-- Location: LCCOMB_X9_Y34_N28
\inst1|DOUT[12]~108\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|DOUT[12]~108_combout\ = (\inst2|inst1|alu1|mux|Mux3~1_combout\ & (\inst1|reg_gen:25:regs|y\(4))) # (!\inst2|inst1|alu1|mux|Mux3~1_combout\ & ((\inst1|reg_gen:9:regs|y\(4))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst1|reg_gen:25:regs|y\(4),
	datac => \inst1|reg_gen:9:regs|y\(4),
	datad => \inst2|inst1|alu1|mux|Mux3~1_combout\,
	combout => \inst1|DOUT[12]~108_combout\);

-- Location: FF_X12_Y34_N11
\inst1|reg_gen:17:regs|y[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	asdata => \inst2|inst|mux_2|mux_1|mux_generate:3:mux_i|Mux3~3_combout\,
	sload => VCC,
	ena => \inst1|dec_to_en\(17),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|reg_gen:17:regs|y\(4));

-- Location: LCCOMB_X12_Y34_N10
\inst1|DOUT[12]~109\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|DOUT[12]~109_combout\ = (\inst2|inst1|alu0|mux|Mux0~1_combout\ & ((\inst1|DOUT[12]~108_combout\) # ((\inst2|inst1|alu0|mux|Mux2~1_combout\)))) # (!\inst2|inst1|alu0|mux|Mux0~1_combout\ & (((\inst1|reg_gen:17:regs|y\(4) & 
-- !\inst2|inst1|alu0|mux|Mux2~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|DOUT[12]~108_combout\,
	datab => \inst2|inst1|alu0|mux|Mux0~1_combout\,
	datac => \inst1|reg_gen:17:regs|y\(4),
	datad => \inst2|inst1|alu0|mux|Mux2~1_combout\,
	combout => \inst1|DOUT[12]~109_combout\);

-- Location: FF_X12_Y34_N29
\inst1|reg_gen:19:regs|y[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	asdata => \inst2|inst|mux_2|mux_1|mux_generate:3:mux_i|Mux3~3_combout\,
	sload => VCC,
	ena => \inst1|dec_to_en\(19),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|reg_gen:19:regs|y\(4));

-- Location: LCCOMB_X12_Y34_N28
\inst1|DOUT[12]~111\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|DOUT[12]~111_combout\ = (\inst1|DOUT[12]~109_combout\ & ((\inst1|DOUT[12]~110_combout\) # ((!\inst2|inst1|alu0|mux|Mux2~1_combout\)))) # (!\inst1|DOUT[12]~109_combout\ & (((\inst1|reg_gen:19:regs|y\(4) & \inst2|inst1|alu0|mux|Mux2~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|DOUT[12]~110_combout\,
	datab => \inst1|DOUT[12]~109_combout\,
	datac => \inst1|reg_gen:19:regs|y\(4),
	datad => \inst2|inst1|alu0|mux|Mux2~1_combout\,
	combout => \inst1|DOUT[12]~111_combout\);

-- Location: FF_X13_Y33_N7
\inst1|reg_gen:5:regs|y[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	asdata => \inst2|inst|mux_2|mux_1|mux_generate:3:mux_i|Mux3~3_combout\,
	sload => VCC,
	ena => \inst1|dec_to_en\(5),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|reg_gen:5:regs|y\(4));

-- Location: LCCOMB_X10_Y34_N10
\inst1|reg_gen:21:regs|y[4]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|reg_gen:21:regs|y[4]~feeder_combout\ = \inst2|inst|mux_2|mux_1|mux_generate:3:mux_i|Mux3~3_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst2|inst|mux_2|mux_1|mux_generate:3:mux_i|Mux3~3_combout\,
	combout => \inst1|reg_gen:21:regs|y[4]~feeder_combout\);

-- Location: FF_X10_Y34_N11
\inst1|reg_gen:21:regs|y[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \inst1|reg_gen:21:regs|y[4]~feeder_combout\,
	ena => \inst1|dec_to_en\(21),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|reg_gen:21:regs|y\(4));

-- Location: LCCOMB_X13_Y33_N6
\inst1|DOUT[12]~97\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|DOUT[12]~97_combout\ = (\inst2|inst1|alu1|mux|Mux3~1_combout\ & ((\inst2|inst1|alu0|mux|Mux0~1_combout\) # ((\inst1|reg_gen:21:regs|y\(4))))) # (!\inst2|inst1|alu1|mux|Mux3~1_combout\ & (!\inst2|inst1|alu0|mux|Mux0~1_combout\ & 
-- (\inst1|reg_gen:5:regs|y\(4))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|inst1|alu1|mux|Mux3~1_combout\,
	datab => \inst2|inst1|alu0|mux|Mux0~1_combout\,
	datac => \inst1|reg_gen:5:regs|y\(4),
	datad => \inst1|reg_gen:21:regs|y\(4),
	combout => \inst1|DOUT[12]~97_combout\);

-- Location: FF_X10_Y34_N25
\inst1|reg_gen:13:regs|y[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	asdata => \inst2|inst|mux_2|mux_1|mux_generate:3:mux_i|Mux3~3_combout\,
	sload => VCC,
	ena => \inst1|dec_to_en\(13),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|reg_gen:13:regs|y\(4));

-- Location: FF_X13_Y33_N29
\inst1|reg_gen:29:regs|y[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	asdata => \inst2|inst|mux_2|mux_1|mux_generate:3:mux_i|Mux3~3_combout\,
	sload => VCC,
	ena => \inst1|dec_to_en\(29),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|reg_gen:29:regs|y\(4));

-- Location: LCCOMB_X13_Y33_N28
\inst1|DOUT[12]~98\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|DOUT[12]~98_combout\ = (\inst1|DOUT[12]~97_combout\ & (((\inst1|reg_gen:29:regs|y\(4)) # (!\inst2|inst1|alu0|mux|Mux0~1_combout\)))) # (!\inst1|DOUT[12]~97_combout\ & (\inst1|reg_gen:13:regs|y\(4) & ((\inst2|inst1|alu0|mux|Mux0~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|DOUT[12]~97_combout\,
	datab => \inst1|reg_gen:13:regs|y\(4),
	datac => \inst1|reg_gen:29:regs|y\(4),
	datad => \inst2|inst1|alu0|mux|Mux0~1_combout\,
	combout => \inst1|DOUT[12]~98_combout\);

-- Location: FF_X14_Y31_N15
\inst1|reg_gen:23:regs|y[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	asdata => \inst2|inst|mux_2|mux_1|mux_generate:3:mux_i|Mux3~3_combout\,
	sload => VCC,
	ena => \inst1|dec_to_en\(23),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|reg_gen:23:regs|y\(4));

-- Location: FF_X13_Y31_N27
\inst1|reg_gen:7:regs|y[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	asdata => \inst2|inst|mux_2|mux_1|mux_generate:3:mux_i|Mux3~3_combout\,
	sload => VCC,
	ena => \inst1|dec_to_en\(7),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|reg_gen:7:regs|y\(4));

-- Location: LCCOMB_X12_Y31_N28
\inst1|DOUT[12]~99\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|DOUT[12]~99_combout\ = (\inst2|inst1|alu1|mux|Mux3~1_combout\ & (\inst1|reg_gen:23:regs|y\(4))) # (!\inst2|inst1|alu1|mux|Mux3~1_combout\ & ((\inst1|reg_gen:7:regs|y\(4))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|reg_gen:23:regs|y\(4),
	datab => \inst1|reg_gen:7:regs|y\(4),
	datad => \inst2|inst1|alu1|mux|Mux3~1_combout\,
	combout => \inst1|DOUT[12]~99_combout\);

-- Location: LCCOMB_X12_Y31_N10
\inst1|DOUT[4]~224\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|DOUT[4]~224_combout\ = (\inst1|DOUT[3]~198_combout\ & (((\inst1|DOUT[12]~48_combout\)))) # (!\inst1|DOUT[3]~198_combout\ & ((\inst1|DOUT[12]~48_combout\ & ((\inst1|DOUT[12]~99_combout\))) # (!\inst1|DOUT[12]~48_combout\ & 
-- (\inst1|DOUT[12]~98_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|DOUT[12]~98_combout\,
	datab => \inst1|DOUT[12]~99_combout\,
	datac => \inst1|DOUT[3]~198_combout\,
	datad => \inst1|DOUT[12]~48_combout\,
	combout => \inst1|DOUT[4]~224_combout\);

-- Location: LCCOMB_X14_Y34_N16
\inst1|reg_gen:15:regs|y[4]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|reg_gen:15:regs|y[4]~feeder_combout\ = \inst2|inst|mux_2|mux_1|mux_generate:3:mux_i|Mux3~3_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst2|inst|mux_2|mux_1|mux_generate:3:mux_i|Mux3~3_combout\,
	combout => \inst1|reg_gen:15:regs|y[4]~feeder_combout\);

-- Location: FF_X14_Y34_N17
\inst1|reg_gen:15:regs|y[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \inst1|reg_gen:15:regs|y[4]~feeder_combout\,
	ena => \inst1|dec_to_en\(15),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|reg_gen:15:regs|y\(4));

-- Location: LCCOMB_X9_Y32_N14
\inst1|reg_gen:20:regs|y[4]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|reg_gen:20:regs|y[4]~feeder_combout\ = \inst2|inst|mux_2|mux_1|mux_generate:1:mux_i|Mux3~3_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst2|inst|mux_2|mux_1|mux_generate:1:mux_i|Mux3~3_combout\,
	combout => \inst1|reg_gen:20:regs|y[4]~feeder_combout\);

-- Location: FF_X9_Y32_N15
\inst1|reg_gen:20:regs|y[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \inst1|reg_gen:20:regs|y[4]~feeder_combout\,
	ena => \inst1|dec_to_en\(20),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|reg_gen:20:regs|y\(4));

-- Location: LCCOMB_X9_Y32_N12
\inst1|reg_gen:4:regs|y[4]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|reg_gen:4:regs|y[4]~feeder_combout\ = \inst2|inst|mux_2|mux_1|mux_generate:1:mux_i|Mux3~3_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst2|inst|mux_2|mux_1|mux_generate:1:mux_i|Mux3~3_combout\,
	combout => \inst1|reg_gen:4:regs|y[4]~feeder_combout\);

-- Location: FF_X9_Y32_N13
\inst1|reg_gen:4:regs|y[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \inst1|reg_gen:4:regs|y[4]~feeder_combout\,
	ena => \inst1|dec_to_en\(4),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|reg_gen:4:regs|y\(4));

-- Location: LCCOMB_X10_Y32_N22
\inst1|DOUT[12]~105\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|DOUT[12]~105_combout\ = (\inst2|inst1|alu1|mux|Mux3~1_combout\ & ((\inst2|inst1|alu0|mux|Mux0~1_combout\) # ((\inst1|reg_gen:20:regs|y\(4))))) # (!\inst2|inst1|alu1|mux|Mux3~1_combout\ & (!\inst2|inst1|alu0|mux|Mux0~1_combout\ & 
-- ((\inst1|reg_gen:4:regs|y\(4)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100110101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|inst1|alu1|mux|Mux3~1_combout\,
	datab => \inst2|inst1|alu0|mux|Mux0~1_combout\,
	datac => \inst1|reg_gen:20:regs|y\(4),
	datad => \inst1|reg_gen:4:regs|y\(4),
	combout => \inst1|DOUT[12]~105_combout\);

-- Location: LCCOMB_X10_Y32_N24
\inst1|reg_gen:12:regs|y[4]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|reg_gen:12:regs|y[4]~feeder_combout\ = \inst2|inst|mux_2|mux_1|mux_generate:1:mux_i|Mux3~3_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst2|inst|mux_2|mux_1|mux_generate:1:mux_i|Mux3~3_combout\,
	combout => \inst1|reg_gen:12:regs|y[4]~feeder_combout\);

-- Location: FF_X10_Y32_N25
\inst1|reg_gen:12:regs|y[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \inst1|reg_gen:12:regs|y[4]~feeder_combout\,
	ena => \inst1|dec_to_en\(12),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|reg_gen:12:regs|y\(4));

-- Location: FF_X10_Y32_N9
\inst1|reg_gen:28:regs|y[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	asdata => \inst2|inst|mux_2|mux_1|mux_generate:1:mux_i|Mux3~3_combout\,
	sload => VCC,
	ena => \inst1|dec_to_en\(28),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|reg_gen:28:regs|y\(4));

-- Location: LCCOMB_X10_Y32_N8
\inst1|DOUT[12]~106\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|DOUT[12]~106_combout\ = (\inst1|DOUT[12]~105_combout\ & (((\inst1|reg_gen:28:regs|y\(4)) # (!\inst2|inst1|alu0|mux|Mux0~1_combout\)))) # (!\inst1|DOUT[12]~105_combout\ & (\inst1|reg_gen:12:regs|y\(4) & ((\inst2|inst1|alu0|mux|Mux0~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|DOUT[12]~105_combout\,
	datab => \inst1|reg_gen:12:regs|y\(4),
	datac => \inst1|reg_gen:28:regs|y\(4),
	datad => \inst2|inst1|alu0|mux|Mux0~1_combout\,
	combout => \inst1|DOUT[12]~106_combout\);

-- Location: LCCOMB_X12_Y31_N16
\inst1|DOUT[4]~225\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|DOUT[4]~225_combout\ = (\inst1|DOUT[4]~224_combout\ & ((\inst1|reg_gen:15:regs|y\(4)) # ((!\inst1|DOUT[3]~198_combout\)))) # (!\inst1|DOUT[4]~224_combout\ & (((\inst1|DOUT[3]~198_combout\ & \inst1|DOUT[12]~106_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101101010001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|DOUT[4]~224_combout\,
	datab => \inst1|reg_gen:15:regs|y\(4),
	datac => \inst1|DOUT[3]~198_combout\,
	datad => \inst1|DOUT[12]~106_combout\,
	combout => \inst1|DOUT[4]~225_combout\);

-- Location: LCCOMB_X12_Y31_N6
\inst1|DOUT[4]~226\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|DOUT[4]~226_combout\ = (\inst2|inst1|alu0|mux|Mux1~1_combout\ & (((\inst1|DOUT[3]~260_combout\) # (\inst1|DOUT[4]~225_combout\)))) # (!\inst2|inst1|alu0|mux|Mux1~1_combout\ & (\inst1|DOUT[12]~111_combout\ & (!\inst1|DOUT[3]~260_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111011000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|DOUT[12]~111_combout\,
	datab => \inst2|inst1|alu0|mux|Mux1~1_combout\,
	datac => \inst1|DOUT[3]~260_combout\,
	datad => \inst1|DOUT[4]~225_combout\,
	combout => \inst1|DOUT[4]~226_combout\);

-- Location: LCCOMB_X12_Y31_N24
\inst1|DOUT[4]~227\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|DOUT[4]~227_combout\ = (\inst1|DOUT[3]~260_combout\ & ((\inst1|DOUT[4]~226_combout\ & (\inst1|DOUT[12]~101_combout\)) # (!\inst1|DOUT[4]~226_combout\ & ((\inst1|DOUT[4]~223_combout\))))) # (!\inst1|DOUT[3]~260_combout\ & 
-- (((\inst1|DOUT[4]~226_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|DOUT[12]~101_combout\,
	datab => \inst1|DOUT[3]~260_combout\,
	datac => \inst1|DOUT[4]~223_combout\,
	datad => \inst1|DOUT[4]~226_combout\,
	combout => \inst1|DOUT[4]~227_combout\);

-- Location: LCCOMB_X16_Y35_N28
\inst1|DOUT[4]~228\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|DOUT[4]~228_combout\ = (\inst1|DOUT[3]~203_combout\ & ((\inst1|DOUT[4]~227_combout\))) # (!\inst1|DOUT[3]~203_combout\ & (\inst1|reg_gen:30:regs|y\(4)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst1|reg_gen:30:regs|y\(4),
	datac => \inst1|DOUT[3]~203_combout\,
	datad => \inst1|DOUT[4]~227_combout\,
	combout => \inst1|DOUT[4]~228_combout\);

-- Location: LCCOMB_X16_Y35_N18
\inst1|DOUT[4]$latch\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|DOUT[4]$latch~combout\ = (!\inst1|DOUT[7]~206_combout\ & ((GLOBAL(\inst1|DOUT[15]~52clkctrl_outclk\) & ((\inst1|DOUT[4]~228_combout\))) # (!GLOBAL(\inst1|DOUT[15]~52clkctrl_outclk\) & (\inst1|DOUT[4]$latch~combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|DOUT[15]~52clkctrl_outclk\,
	datab => \inst1|DOUT[4]$latch~combout\,
	datac => \inst1|DOUT[4]~228_combout\,
	datad => \inst1|DOUT[7]~206_combout\,
	combout => \inst1|DOUT[4]$latch~combout\);

-- Location: LCCOMB_X16_Y35_N22
\inst3|OUT16B[4]~11\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|OUT16B[4]~11_combout\ = (\inst|Mux5~0_combout\ & (((\inst1|DOUT[4]$latch~combout\)) # (!\inst1|DOUT[7]_2052~combout\))) # (!\inst|Mux5~0_combout\ & (((\inst2|inst1|alu1|mux|Mux3~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110001110100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|DOUT[7]_2052~combout\,
	datab => \inst|Mux5~0_combout\,
	datac => \inst2|inst1|alu1|mux|Mux3~1_combout\,
	datad => \inst1|DOUT[4]$latch~combout\,
	combout => \inst3|OUT16B[4]~11_combout\);

-- Location: LCCOMB_X13_Y35_N26
\inst2|inst|reg_gen:2:regs|reg_1|y[4]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|inst|reg_gen:2:regs|reg_1|y[4]~feeder_combout\ = \inst3|OUT16B[4]~11_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst3|OUT16B[4]~11_combout\,
	combout => \inst2|inst|reg_gen:2:regs|reg_1|y[4]~feeder_combout\);

-- Location: FF_X13_Y35_N27
\inst2|inst|reg_gen:2:regs|reg_1|y[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~input_o\,
	d => \inst2|inst|reg_gen:2:regs|reg_1|y[4]~feeder_combout\,
	ena => \inst2|inst|add_reg1_dcd|Mux3~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst2|inst|reg_gen:2:regs|reg_1|y\(4));

-- Location: LCCOMB_X17_Y35_N22
\inst2|inst|reg_gen:3:regs|reg_1|y[4]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|inst|reg_gen:3:regs|reg_1|y[4]~feeder_combout\ = \inst3|OUT16B[4]~11_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst3|OUT16B[4]~11_combout\,
	combout => \inst2|inst|reg_gen:3:regs|reg_1|y[4]~feeder_combout\);

-- Location: FF_X17_Y35_N23
\inst2|inst|reg_gen:3:regs|reg_1|y[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~input_o\,
	d => \inst2|inst|reg_gen:3:regs|reg_1|y[4]~feeder_combout\,
	ena => \inst2|inst|add_reg1_dcd|Mux3~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst2|inst|reg_gen:3:regs|reg_1|y\(4));

-- Location: LCCOMB_X17_Y35_N10
\inst2|inst|mux_2|mux_1|mux_generate:1:mux_i|Mux3~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|inst|mux_2|mux_1|mux_generate:1:mux_i|Mux3~0_combout\ = (\inst4|inst1|exception~2_combout\ & (\inst2|inst|reg_gen:2:regs|reg_1|y\(4))) # (!\inst4|inst1|exception~2_combout\ & ((\inst4|inst1|data_out[6]~8_combout\ & 
-- ((\inst2|inst|reg_gen:3:regs|reg_1|y\(4)))) # (!\inst4|inst1|data_out[6]~8_combout\ & (\inst2|inst|reg_gen:2:regs|reg_1|y\(4)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|inst|reg_gen:2:regs|reg_1|y\(4),
	datab => \inst4|inst1|exception~2_combout\,
	datac => \inst2|inst|reg_gen:3:regs|reg_1|y\(4),
	datad => \inst4|inst1|data_out[6]~8_combout\,
	combout => \inst2|inst|mux_2|mux_1|mux_generate:1:mux_i|Mux3~0_combout\);

-- Location: LCCOMB_X16_Y35_N2
\inst2|inst|reg_gen:4:regs|reg_1|y[4]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|inst|reg_gen:4:regs|reg_1|y[4]~feeder_combout\ = \inst3|OUT16B[4]~11_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst3|OUT16B[4]~11_combout\,
	combout => \inst2|inst|reg_gen:4:regs|reg_1|y[4]~feeder_combout\);

-- Location: FF_X16_Y35_N3
\inst2|inst|reg_gen:4:regs|reg_1|y[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~input_o\,
	d => \inst2|inst|reg_gen:4:regs|reg_1|y[4]~feeder_combout\,
	ena => \inst2|inst|add_reg1_dcd|Mux3~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst2|inst|reg_gen:4:regs|reg_1|y\(4));

-- Location: LCCOMB_X17_Y35_N26
\inst2|inst|reg_gen:5:regs|reg_1|y[4]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|inst|reg_gen:5:regs|reg_1|y[4]~feeder_combout\ = \inst3|OUT16B[4]~11_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst3|OUT16B[4]~11_combout\,
	combout => \inst2|inst|reg_gen:5:regs|reg_1|y[4]~feeder_combout\);

-- Location: FF_X17_Y35_N27
\inst2|inst|reg_gen:5:regs|reg_1|y[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~input_o\,
	d => \inst2|inst|reg_gen:5:regs|reg_1|y[4]~feeder_combout\,
	ena => \inst2|inst|add_reg1_dcd|Mux3~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst2|inst|reg_gen:5:regs|reg_1|y\(4));

-- Location: LCCOMB_X16_Y35_N6
\inst2|inst|reg_gen:1:regs|reg_1|y[4]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|inst|reg_gen:1:regs|reg_1|y[4]~feeder_combout\ = \inst3|OUT16B[4]~11_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst3|OUT16B[4]~11_combout\,
	combout => \inst2|inst|reg_gen:1:regs|reg_1|y[4]~feeder_combout\);

-- Location: FF_X16_Y35_N7
\inst2|inst|reg_gen:1:regs|reg_1|y[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~input_o\,
	d => \inst2|inst|reg_gen:1:regs|reg_1|y[4]~feeder_combout\,
	ena => \inst2|inst|add_reg1_dcd|Mux3~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst2|inst|reg_gen:1:regs|reg_1|y\(4));

-- Location: LCCOMB_X16_Y35_N24
\inst2|inst|mux_2|mux_1|mux_generate:1:mux_i|Mux3~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|inst|mux_2|mux_1|mux_generate:1:mux_i|Mux3~1_combout\ = ((\inst2|inst|reg_gen:1:regs|reg_1|y\(4) & (\inst4|inst1|data_out[6]~8_combout\ & !\inst4|inst1|exception~2_combout\))) # (!\inst2|inst|mux_2|mux_1|mux_generate:0:mux_i|Mux3~1_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|inst|reg_gen:1:regs|reg_1|y\(4),
	datab => \inst4|inst1|data_out[6]~8_combout\,
	datac => \inst4|inst1|exception~2_combout\,
	datad => \inst2|inst|mux_2|mux_1|mux_generate:0:mux_i|Mux3~1_combout\,
	combout => \inst2|inst|mux_2|mux_1|mux_generate:1:mux_i|Mux3~1_combout\);

-- Location: LCCOMB_X17_Y35_N20
\inst2|inst|mux_2|mux_1|mux_generate:1:mux_i|Mux3~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|inst|mux_2|mux_1|mux_generate:1:mux_i|Mux3~2_combout\ = (\inst2|inst|mux_2|mux_1|mux_generate:0:mux_i|Mux3~0_combout\ & (((\inst2|inst|mux_2|mux_1|mux_generate:1:mux_i|Mux3~1_combout\)))) # 
-- (!\inst2|inst|mux_2|mux_1|mux_generate:0:mux_i|Mux3~0_combout\ & ((\inst2|inst|mux_2|mux_1|mux_generate:1:mux_i|Mux3~1_combout\ & (\inst2|inst|reg_gen:4:regs|reg_1|y\(4))) # (!\inst2|inst|mux_2|mux_1|mux_generate:1:mux_i|Mux3~1_combout\ & 
-- ((\inst2|inst|reg_gen:5:regs|reg_1|y\(4))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|inst|reg_gen:4:regs|reg_1|y\(4),
	datab => \inst2|inst|mux_2|mux_1|mux_generate:0:mux_i|Mux3~0_combout\,
	datac => \inst2|inst|reg_gen:5:regs|reg_1|y\(4),
	datad => \inst2|inst|mux_2|mux_1|mux_generate:1:mux_i|Mux3~1_combout\,
	combout => \inst2|inst|mux_2|mux_1|mux_generate:1:mux_i|Mux3~2_combout\);

-- Location: LCCOMB_X17_Y35_N0
\inst2|inst|mux_2|mux_1|mux_generate:1:mux_i|Mux3~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|inst|mux_2|mux_1|mux_generate:1:mux_i|Mux3~3_combout\ = (\inst2|inst|mux_2|mux_1|mux_generate:0:mux_i|Mux3~2_combout\ & (\inst2|inst|mux_2|mux_1|mux_generate:1:mux_i|Mux3~0_combout\)) # (!\inst2|inst|mux_2|mux_1|mux_generate:0:mux_i|Mux3~2_combout\ 
-- & ((\inst2|inst|mux_2|mux_1|mux_generate:1:mux_i|Mux3~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|inst|mux_2|mux_1|mux_generate:1:mux_i|Mux3~0_combout\,
	datac => \inst2|inst|mux_2|mux_1|mux_generate:0:mux_i|Mux3~2_combout\,
	datad => \inst2|inst|mux_2|mux_1|mux_generate:1:mux_i|Mux3~2_combout\,
	combout => \inst2|inst|mux_2|mux_1|mux_generate:1:mux_i|Mux3~3_combout\);

-- Location: FF_X11_Y31_N1
\inst1|reg_gen:16:regs|y[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	asdata => \inst2|inst|mux_2|mux_1|mux_generate:1:mux_i|Mux3~3_combout\,
	sload => VCC,
	ena => \inst1|dec_to_en[16]~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|reg_gen:16:regs|y\(4));

-- Location: LCCOMB_X11_Y32_N22
\inst1|DOUT[12]~107\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|DOUT[12]~107_combout\ = (\inst1|DOUT[12]~39_combout\ & (((\inst1|DOUT[12]~37_combout\)))) # (!\inst1|DOUT[12]~39_combout\ & ((\inst1|DOUT[12]~37_combout\ & (\inst1|DOUT[12]~106_combout\)) # (!\inst1|DOUT[12]~37_combout\ & 
-- ((\inst1|reg_gen:18:regs|y\(4))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|DOUT[12]~39_combout\,
	datab => \inst1|DOUT[12]~106_combout\,
	datac => \inst1|reg_gen:18:regs|y\(4),
	datad => \inst1|DOUT[12]~37_combout\,
	combout => \inst1|DOUT[12]~107_combout\);

-- Location: LCCOMB_X12_Y31_N8
\inst1|DOUT[12]~112\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|DOUT[12]~112_combout\ = (\inst1|DOUT[12]~107_combout\ & ((\inst1|DOUT[12]~111_combout\) # ((!\inst1|DOUT[12]~39_combout\)))) # (!\inst1|DOUT[12]~107_combout\ & (((\inst1|DOUT[12]~104_combout\ & \inst1|DOUT[12]~39_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|DOUT[12]~111_combout\,
	datab => \inst1|DOUT[12]~104_combout\,
	datac => \inst1|DOUT[12]~107_combout\,
	datad => \inst1|DOUT[12]~39_combout\,
	combout => \inst1|DOUT[12]~112_combout\);

-- Location: LCCOMB_X12_Y31_N20
\inst1|DOUT[12]~102\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|DOUT[12]~102_combout\ = (\inst1|DOUT[12]~25_combout\ & (\inst1|DOUT[12]~27_combout\)) # (!\inst1|DOUT[12]~25_combout\ & ((\inst1|DOUT[12]~27_combout\ & ((\inst1|DOUT[12]~99_combout\))) # (!\inst1|DOUT[12]~27_combout\ & 
-- (\inst1|DOUT[12]~101_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|DOUT[12]~25_combout\,
	datab => \inst1|DOUT[12]~27_combout\,
	datac => \inst1|DOUT[12]~101_combout\,
	datad => \inst1|DOUT[12]~99_combout\,
	combout => \inst1|DOUT[12]~102_combout\);

-- Location: LCCOMB_X12_Y31_N2
\inst1|DOUT[12]~103\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|DOUT[12]~103_combout\ = (\inst1|DOUT[12]~25_combout\ & ((\inst1|DOUT[12]~102_combout\ & (\inst1|reg_gen:15:regs|y\(4))) # (!\inst1|DOUT[12]~102_combout\ & ((\inst1|DOUT[12]~98_combout\))))) # (!\inst1|DOUT[12]~25_combout\ & 
-- (((\inst1|DOUT[12]~102_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|DOUT[12]~25_combout\,
	datab => \inst1|reg_gen:15:regs|y\(4),
	datac => \inst1|DOUT[12]~98_combout\,
	datad => \inst1|DOUT[12]~102_combout\,
	combout => \inst1|DOUT[12]~103_combout\);

-- Location: LCCOMB_X12_Y31_N22
\inst1|DOUT[12]~113\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|DOUT[12]~113_combout\ = (\inst1|DOUT[12]~32_combout\ & ((\inst1|DOUT[12]~34_combout\) # ((\inst1|DOUT[12]~103_combout\)))) # (!\inst1|DOUT[12]~32_combout\ & (!\inst1|DOUT[12]~34_combout\ & (\inst1|DOUT[12]~112_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|DOUT[12]~32_combout\,
	datab => \inst1|DOUT[12]~34_combout\,
	datac => \inst1|DOUT[12]~112_combout\,
	datad => \inst1|DOUT[12]~103_combout\,
	combout => \inst1|DOUT[12]~113_combout\);

-- Location: LCCOMB_X12_Y31_N12
\inst1|DOUT[12]~114\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|DOUT[12]~114_combout\ = (\inst1|DOUT[12]~34_combout\ & ((\inst1|DOUT[12]~113_combout\ & (\inst1|reg_gen:16:regs|y\(4))) # (!\inst1|DOUT[12]~113_combout\ & ((\inst1|DOUT[12]~96_combout\))))) # (!\inst1|DOUT[12]~34_combout\ & 
-- (((\inst1|DOUT[12]~113_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011110010110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|reg_gen:16:regs|y\(4),
	datab => \inst1|DOUT[12]~34_combout\,
	datac => \inst1|DOUT[12]~113_combout\,
	datad => \inst1|DOUT[12]~96_combout\,
	combout => \inst1|DOUT[12]~114_combout\);

-- Location: LCCOMB_X12_Y31_N18
\inst1|DOUT[12]~115\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|DOUT[12]~115_combout\ = (\inst1|DOUT[12]~49_combout\ & ((\inst1|DOUT[12]~114_combout\))) # (!\inst1|DOUT[12]~49_combout\ & (\inst1|reg_gen:31:regs|y\(4)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|reg_gen:31:regs|y\(4),
	datab => \inst1|DOUT[12]~49_combout\,
	datad => \inst1|DOUT[12]~114_combout\,
	combout => \inst1|DOUT[12]~115_combout\);

-- Location: LCCOMB_X12_Y31_N26
\inst1|DOUT[12]$latch\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|DOUT[12]$latch~combout\ = (!\inst1|DOUT[15]~55_combout\ & ((GLOBAL(\inst1|DOUT[15]~53clkctrl_outclk\) & ((\inst1|DOUT[12]~115_combout\))) # (!GLOBAL(\inst1|DOUT[15]~53clkctrl_outclk\) & (\inst1|DOUT[12]$latch~combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001000000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|DOUT[12]$latch~combout\,
	datab => \inst1|DOUT[15]~55_combout\,
	datac => \inst1|DOUT[15]~53clkctrl_outclk\,
	datad => \inst1|DOUT[12]~115_combout\,
	combout => \inst1|DOUT[12]$latch~combout\);

-- Location: LCCOMB_X14_Y32_N26
\inst3|OUT16B[12]~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|OUT16B[12]~3_combout\ = (\inst|Mux5~0_combout\ & (((\inst1|DOUT[12]$latch~combout\) # (!\inst1|DOUT[15]_2612~combout\)))) # (!\inst|Mux5~0_combout\ & (\inst2|inst1|alu3|mux|Mux3~1_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111001001110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Mux5~0_combout\,
	datab => \inst2|inst1|alu3|mux|Mux3~1_combout\,
	datac => \inst1|DOUT[15]_2612~combout\,
	datad => \inst1|DOUT[12]$latch~combout\,
	combout => \inst3|OUT16B[12]~3_combout\);

-- Location: FF_X14_Y32_N31
\inst2|inst|reg_gen:2:regs|reg_2|y[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~input_o\,
	asdata => \inst3|OUT16B[12]~3_combout\,
	sload => VCC,
	ena => \inst2|inst|add_reg1_dcd|Mux3~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst2|inst|reg_gen:2:regs|reg_2|y\(4));

-- Location: FF_X13_Y32_N27
\inst2|inst|reg_gen:3:regs|reg_2|y[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~input_o\,
	asdata => \inst3|OUT16B[12]~3_combout\,
	sload => VCC,
	ena => \inst2|inst|add_reg1_dcd|Mux3~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst2|inst|reg_gen:3:regs|reg_2|y\(4));

-- Location: LCCOMB_X13_Y31_N8
\inst2|inst|mux_2|mux_1|mux_generate:3:mux_i|Mux3~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|inst|mux_2|mux_1|mux_generate:3:mux_i|Mux3~0_combout\ = (\inst4|inst1|data_out[6]~8_combout\ & ((\inst4|inst1|exception~2_combout\ & (\inst2|inst|reg_gen:2:regs|reg_2|y\(4))) # (!\inst4|inst1|exception~2_combout\ & 
-- ((\inst2|inst|reg_gen:3:regs|reg_2|y\(4)))))) # (!\inst4|inst1|data_out[6]~8_combout\ & (((\inst2|inst|reg_gen:2:regs|reg_2|y\(4)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001011010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|inst1|data_out[6]~8_combout\,
	datab => \inst4|inst1|exception~2_combout\,
	datac => \inst2|inst|reg_gen:2:regs|reg_2|y\(4),
	datad => \inst2|inst|reg_gen:3:regs|reg_2|y\(4),
	combout => \inst2|inst|mux_2|mux_1|mux_generate:3:mux_i|Mux3~0_combout\);

-- Location: FF_X13_Y32_N31
\inst2|inst|reg_gen:4:regs|reg_2|y[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~input_o\,
	asdata => \inst3|OUT16B[12]~3_combout\,
	sload => VCC,
	ena => \inst2|inst|add_reg1_dcd|Mux3~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst2|inst|reg_gen:4:regs|reg_2|y\(4));

-- Location: LCCOMB_X13_Y31_N14
\inst2|inst|mux_2|mux_1|mux_generate:3:mux_i|Mux3~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|inst|mux_2|mux_1|mux_generate:3:mux_i|Mux3~1_combout\ = ((!\inst4|inst1|exception~2_combout\ & (\inst2|inst|reg_gen:1:regs|reg_2|y\(4) & \inst4|inst1|data_out[6]~8_combout\))) # (!\inst2|inst|mux_2|mux_1|mux_generate:0:mux_i|Mux3~1_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111010101010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|inst|mux_2|mux_1|mux_generate:0:mux_i|Mux3~1_combout\,
	datab => \inst4|inst1|exception~2_combout\,
	datac => \inst2|inst|reg_gen:1:regs|reg_2|y\(4),
	datad => \inst4|inst1|data_out[6]~8_combout\,
	combout => \inst2|inst|mux_2|mux_1|mux_generate:3:mux_i|Mux3~1_combout\);

-- Location: LCCOMB_X14_Y35_N2
\inst2|inst|reg_gen:5:regs|reg_2|y[4]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|inst|reg_gen:5:regs|reg_2|y[4]~feeder_combout\ = \inst3|OUT16B[12]~3_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst3|OUT16B[12]~3_combout\,
	combout => \inst2|inst|reg_gen:5:regs|reg_2|y[4]~feeder_combout\);

-- Location: FF_X14_Y35_N3
\inst2|inst|reg_gen:5:regs|reg_2|y[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~input_o\,
	d => \inst2|inst|reg_gen:5:regs|reg_2|y[4]~feeder_combout\,
	ena => \inst2|inst|add_reg1_dcd|Mux3~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst2|inst|reg_gen:5:regs|reg_2|y\(4));

-- Location: LCCOMB_X13_Y31_N20
\inst2|inst|mux_2|mux_1|mux_generate:3:mux_i|Mux3~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|inst|mux_2|mux_1|mux_generate:3:mux_i|Mux3~2_combout\ = (\inst2|inst|mux_2|mux_1|mux_generate:0:mux_i|Mux3~0_combout\ & (((\inst2|inst|mux_2|mux_1|mux_generate:3:mux_i|Mux3~1_combout\)))) # 
-- (!\inst2|inst|mux_2|mux_1|mux_generate:0:mux_i|Mux3~0_combout\ & ((\inst2|inst|mux_2|mux_1|mux_generate:3:mux_i|Mux3~1_combout\ & (\inst2|inst|reg_gen:4:regs|reg_2|y\(4))) # (!\inst2|inst|mux_2|mux_1|mux_generate:3:mux_i|Mux3~1_combout\ & 
-- ((\inst2|inst|reg_gen:5:regs|reg_2|y\(4))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110001111100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|inst|reg_gen:4:regs|reg_2|y\(4),
	datab => \inst2|inst|mux_2|mux_1|mux_generate:0:mux_i|Mux3~0_combout\,
	datac => \inst2|inst|mux_2|mux_1|mux_generate:3:mux_i|Mux3~1_combout\,
	datad => \inst2|inst|reg_gen:5:regs|reg_2|y\(4),
	combout => \inst2|inst|mux_2|mux_1|mux_generate:3:mux_i|Mux3~2_combout\);

-- Location: LCCOMB_X13_Y31_N28
\inst2|inst|mux_2|mux_1|mux_generate:3:mux_i|Mux3~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|inst|mux_2|mux_1|mux_generate:3:mux_i|Mux3~3_combout\ = (\inst2|inst|mux_2|mux_1|mux_generate:0:mux_i|Mux3~2_combout\ & (\inst2|inst|mux_2|mux_1|mux_generate:3:mux_i|Mux3~0_combout\)) # (!\inst2|inst|mux_2|mux_1|mux_generate:0:mux_i|Mux3~2_combout\ 
-- & ((\inst2|inst|mux_2|mux_1|mux_generate:3:mux_i|Mux3~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst2|inst|mux_2|mux_1|mux_generate:0:mux_i|Mux3~2_combout\,
	datac => \inst2|inst|mux_2|mux_1|mux_generate:3:mux_i|Mux3~0_combout\,
	datad => \inst2|inst|mux_2|mux_1|mux_generate:3:mux_i|Mux3~2_combout\,
	combout => \inst2|inst|mux_2|mux_1|mux_generate:3:mux_i|Mux3~3_combout\);

-- Location: LCCOMB_X13_Y31_N0
\inst2|inst2|OUT16B[12]~15\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|inst2|OUT16B[12]~15_combout\ = (\inst|Mux7~8_combout\ & (\inst4|inst1|INS_OUT[5]~6_combout\)) # (!\inst|Mux7~8_combout\ & ((\inst2|inst|mux_2|mux_1|mux_generate:3:mux_i|Mux3~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|inst1|INS_OUT[5]~6_combout\,
	datac => \inst|Mux7~8_combout\,
	datad => \inst2|inst|mux_2|mux_1|mux_generate:3:mux_i|Mux3~3_combout\,
	combout => \inst2|inst2|OUT16B[12]~15_combout\);

-- Location: LCCOMB_X13_Y32_N24
\inst2|inst1|alu3|adder|C[1]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|inst1|alu3|adder|C[1]~0_combout\ = (\inst2|inst|mux_1|mux_1|mux_generate:3:mux_i|Mux3~1_combout\ & ((\inst2|inst1|alu2|adder|C4~0_combout\) # (\inst2|inst3|DOUT[2]~3_combout\ $ (\inst2|inst2|OUT16B[12]~15_combout\)))) # 
-- (!\inst2|inst|mux_1|mux_1|mux_generate:3:mux_i|Mux3~1_combout\ & (\inst2|inst1|alu2|adder|C4~0_combout\ & (\inst2|inst3|DOUT[2]~3_combout\ $ (\inst2|inst2|OUT16B[12]~15_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111011001100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|inst3|DOUT[2]~3_combout\,
	datab => \inst2|inst2|OUT16B[12]~15_combout\,
	datac => \inst2|inst|mux_1|mux_1|mux_generate:3:mux_i|Mux3~1_combout\,
	datad => \inst2|inst1|alu2|adder|C4~0_combout\,
	combout => \inst2|inst1|alu3|adder|C[1]~0_combout\);

-- Location: LCCOMB_X14_Y34_N26
\inst2|inst2|OUT16B[13]~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|inst2|OUT16B[13]~14_combout\ = (\inst|Mux7~8_combout\ & ((\inst4|inst1|INS_OUT[5]~6_combout\))) # (!\inst|Mux7~8_combout\ & (\inst2|inst|mux_2|mux_1|mux_generate:3:mux_i|Mux2~3_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|inst|mux_2|mux_1|mux_generate:3:mux_i|Mux2~3_combout\,
	datab => \inst|Mux7~8_combout\,
	datad => \inst4|inst1|INS_OUT[5]~6_combout\,
	combout => \inst2|inst2|OUT16B[13]~14_combout\);

-- Location: LCCOMB_X13_Y30_N26
\inst2|inst1|alu3|mux|Mux2~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|inst1|alu3|mux|Mux2~0_combout\ = \inst2|inst2|OUT16B[13]~14_combout\ $ (((\inst2|inst3|DOUT[1]~4_combout\ & (\inst2|inst3|DOUT[2]~3_combout\ $ (\inst2|inst1|alu3|adder|C[1]~0_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011011101001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|inst3|DOUT[2]~3_combout\,
	datab => \inst2|inst3|DOUT[1]~4_combout\,
	datac => \inst2|inst1|alu3|adder|C[1]~0_combout\,
	datad => \inst2|inst2|OUT16B[13]~14_combout\,
	combout => \inst2|inst1|alu3|mux|Mux2~0_combout\);

-- Location: FF_X14_Y33_N1
\inst2|inst|reg_gen:1:regs|reg_2|y[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~input_o\,
	asdata => \inst3|OUT16B[13]~2_combout\,
	sload => VCC,
	ena => \inst2|inst|add_reg1_dcd|Mux3~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst2|inst|reg_gen:1:regs|reg_2|y\(5));

-- Location: LCCOMB_X14_Y33_N2
\inst2|inst|mux_1|mux_1|mux_generate:3:mux_i|Mux2~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|inst|mux_1|mux_1|mux_generate:3:mux_i|Mux2~0_combout\ = (!\inst4|inst1|exception~2_combout\ & (\inst4|inst1|data_out[9]~3_combout\ & \inst2|inst|reg_gen:1:regs|reg_2|y\(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst4|inst1|exception~2_combout\,
	datac => \inst4|inst1|data_out[9]~3_combout\,
	datad => \inst2|inst|reg_gen:1:regs|reg_2|y\(5),
	combout => \inst2|inst|mux_1|mux_1|mux_generate:3:mux_i|Mux2~0_combout\);

-- Location: FF_X9_Y33_N13
\inst2|inst|reg_gen:6:regs|reg_2|y[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~input_o\,
	asdata => \inst3|OUT16B[13]~2_combout\,
	sload => VCC,
	ena => \inst2|inst|add_reg1_dcd|Mux3~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst2|inst|reg_gen:6:regs|reg_2|y\(5));

-- Location: LCCOMB_X9_Y33_N12
\inst2|inst|mux_1|mux_1|mux_generate:3:mux_i|Mux2~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|inst|mux_1|mux_1|mux_generate:3:mux_i|Mux2~1_combout\ = (\inst4|inst1|INS_OUT[15]~4_combout\ & (((\inst2|inst|reg_gen:6:regs|reg_2|y\(5) & \inst2|inst|mux_1|mux_1|mux_generate:2:mux_i|Mux2~0_combout\)))) # (!\inst4|inst1|INS_OUT[15]~4_combout\ & 
-- ((\inst2|inst|mux_1|mux_1|mux_generate:3:mux_i|Mux2~0_combout\) # ((!\inst2|inst|mux_1|mux_1|mux_generate:2:mux_i|Mux2~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010001010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|inst1|INS_OUT[15]~4_combout\,
	datab => \inst2|inst|mux_1|mux_1|mux_generate:3:mux_i|Mux2~0_combout\,
	datac => \inst2|inst|reg_gen:6:regs|reg_2|y\(5),
	datad => \inst2|inst|mux_1|mux_1|mux_generate:2:mux_i|Mux2~0_combout\,
	combout => \inst2|inst|mux_1|mux_1|mux_generate:3:mux_i|Mux2~1_combout\);

-- Location: LCCOMB_X13_Y30_N20
\inst2|inst1|alu3|mux|Mux2~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|inst1|alu3|mux|Mux2~1_combout\ = (\inst2|inst1|alu3|mux|Mux2~0_combout\ & (\inst2|inst3|DOUT[1]~4_combout\ $ (((\inst2|inst3|DOUT[0]~2_combout\) # (\inst2|inst|mux_1|mux_1|mux_generate:3:mux_i|Mux2~1_combout\))))) # 
-- (!\inst2|inst1|alu3|mux|Mux2~0_combout\ & (\inst2|inst|mux_1|mux_1|mux_generate:3:mux_i|Mux2~1_combout\ & (\inst2|inst3|DOUT[0]~2_combout\ $ (\inst2|inst3|DOUT[1]~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011011001100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|inst3|DOUT[0]~2_combout\,
	datab => \inst2|inst3|DOUT[1]~4_combout\,
	datac => \inst2|inst1|alu3|mux|Mux2~0_combout\,
	datad => \inst2|inst|mux_1|mux_1|mux_generate:3:mux_i|Mux2~1_combout\,
	combout => \inst2|inst1|alu3|mux|Mux2~1_combout\);

-- Location: LCCOMB_X14_Y34_N18
\inst1|reg_gen:31:regs|y[5]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|reg_gen:31:regs|y[5]~feeder_combout\ = \inst2|inst|mux_2|mux_1|mux_generate:3:mux_i|Mux2~3_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst2|inst|mux_2|mux_1|mux_generate:3:mux_i|Mux2~3_combout\,
	combout => \inst1|reg_gen:31:regs|y[5]~feeder_combout\);

-- Location: FF_X14_Y34_N19
\inst1|reg_gen:31:regs|y[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \inst1|reg_gen:31:regs|y[5]~feeder_combout\,
	ena => \inst1|dec_to_en\(31),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|reg_gen:31:regs|y\(5));

-- Location: LCCOMB_X11_Y32_N30
\inst1|DOUT[13]~87\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|DOUT[13]~87_combout\ = (\inst1|DOUT[12]~39_combout\ & ((\inst1|DOUT[12]~37_combout\) # ((\inst1|DOUT[13]~86_combout\)))) # (!\inst1|DOUT[12]~39_combout\ & (!\inst1|DOUT[12]~37_combout\ & (\inst1|reg_gen:18:regs|y\(5))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|DOUT[12]~39_combout\,
	datab => \inst1|DOUT[12]~37_combout\,
	datac => \inst1|reg_gen:18:regs|y\(5),
	datad => \inst1|DOUT[13]~86_combout\,
	combout => \inst1|DOUT[13]~87_combout\);

-- Location: LCCOMB_X10_Y30_N14
\inst1|reg_gen:12:regs|y[5]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|reg_gen:12:regs|y[5]~feeder_combout\ = \inst2|inst|mux_2|mux_1|mux_generate:1:mux_i|Mux2~3_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst2|inst|mux_2|mux_1|mux_generate:1:mux_i|Mux2~3_combout\,
	combout => \inst1|reg_gen:12:regs|y[5]~feeder_combout\);

-- Location: FF_X10_Y30_N15
\inst1|reg_gen:12:regs|y[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \inst1|reg_gen:12:regs|y[5]~feeder_combout\,
	ena => \inst1|dec_to_en\(12),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|reg_gen:12:regs|y\(5));

-- Location: FF_X12_Y32_N19
\inst1|reg_gen:28:regs|y[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	asdata => \inst2|inst|mux_2|mux_1|mux_generate:1:mux_i|Mux2~3_combout\,
	sload => VCC,
	ena => \inst1|dec_to_en\(28),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|reg_gen:28:regs|y\(5));

-- Location: LCCOMB_X9_Y32_N18
\inst1|reg_gen:20:regs|y[5]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|reg_gen:20:regs|y[5]~feeder_combout\ = \inst2|inst|mux_2|mux_1|mux_generate:1:mux_i|Mux2~3_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst2|inst|mux_2|mux_1|mux_generate:1:mux_i|Mux2~3_combout\,
	combout => \inst1|reg_gen:20:regs|y[5]~feeder_combout\);

-- Location: FF_X9_Y32_N19
\inst1|reg_gen:20:regs|y[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \inst1|reg_gen:20:regs|y[5]~feeder_combout\,
	ena => \inst1|dec_to_en\(20),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|reg_gen:20:regs|y\(5));

-- Location: FF_X9_Y32_N21
\inst1|reg_gen:4:regs|y[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	asdata => \inst2|inst|mux_2|mux_1|mux_generate:1:mux_i|Mux2~3_combout\,
	sload => VCC,
	ena => \inst1|dec_to_en\(4),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|reg_gen:4:regs|y\(5));

-- Location: LCCOMB_X9_Y32_N20
\inst1|DOUT[13]~84\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|DOUT[13]~84_combout\ = (\inst2|inst1|alu1|mux|Mux3~1_combout\ & ((\inst1|reg_gen:20:regs|y\(5)) # ((\inst2|inst1|alu0|mux|Mux0~1_combout\)))) # (!\inst2|inst1|alu1|mux|Mux3~1_combout\ & (((\inst1|reg_gen:4:regs|y\(5) & 
-- !\inst2|inst1|alu0|mux|Mux0~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|inst1|alu1|mux|Mux3~1_combout\,
	datab => \inst1|reg_gen:20:regs|y\(5),
	datac => \inst1|reg_gen:4:regs|y\(5),
	datad => \inst2|inst1|alu0|mux|Mux0~1_combout\,
	combout => \inst1|DOUT[13]~84_combout\);

-- Location: LCCOMB_X12_Y32_N18
\inst1|DOUT[13]~85\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|DOUT[13]~85_combout\ = (\inst2|inst1|alu0|mux|Mux0~1_combout\ & ((\inst1|DOUT[13]~84_combout\ & ((\inst1|reg_gen:28:regs|y\(5)))) # (!\inst1|DOUT[13]~84_combout\ & (\inst1|reg_gen:12:regs|y\(5))))) # (!\inst2|inst1|alu0|mux|Mux0~1_combout\ & 
-- (((\inst1|DOUT[13]~84_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|reg_gen:12:regs|y\(5),
	datab => \inst2|inst1|alu0|mux|Mux0~1_combout\,
	datac => \inst1|reg_gen:28:regs|y\(5),
	datad => \inst1|DOUT[13]~84_combout\,
	combout => \inst1|DOUT[13]~85_combout\);

-- Location: LCCOMB_X11_Y32_N0
\inst1|DOUT[13]~92\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|DOUT[13]~92_combout\ = (\inst1|DOUT[12]~37_combout\ & ((\inst1|DOUT[13]~87_combout\ & (\inst1|DOUT[13]~91_combout\)) # (!\inst1|DOUT[13]~87_combout\ & ((\inst1|DOUT[13]~85_combout\))))) # (!\inst1|DOUT[12]~37_combout\ & 
-- (((\inst1|DOUT[13]~87_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011110010110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|DOUT[13]~91_combout\,
	datab => \inst1|DOUT[12]~37_combout\,
	datac => \inst1|DOUT[13]~87_combout\,
	datad => \inst1|DOUT[13]~85_combout\,
	combout => \inst1|DOUT[13]~92_combout\);

-- Location: LCCOMB_X10_Y33_N28
\inst1|DOUT[13]~93\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|DOUT[13]~93_combout\ = (\inst1|DOUT[12]~34_combout\ & ((\inst1|DOUT[13]~83_combout\) # ((\inst1|DOUT[12]~32_combout\)))) # (!\inst1|DOUT[12]~34_combout\ & (((!\inst1|DOUT[12]~32_combout\ & \inst1|DOUT[13]~92_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010110110101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|DOUT[12]~34_combout\,
	datab => \inst1|DOUT[13]~83_combout\,
	datac => \inst1|DOUT[12]~32_combout\,
	datad => \inst1|DOUT[13]~92_combout\,
	combout => \inst1|DOUT[13]~93_combout\);

-- Location: FF_X12_Y32_N1
\inst1|reg_gen:15:regs|y[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	asdata => \inst2|inst|mux_2|mux_1|mux_generate:3:mux_i|Mux2~3_combout\,
	sload => VCC,
	ena => \inst1|dec_to_en\(15),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|reg_gen:15:regs|y\(5));

-- Location: FF_X13_Y31_N7
\inst1|reg_gen:7:regs|y[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	asdata => \inst2|inst|mux_2|mux_1|mux_generate:3:mux_i|Mux2~3_combout\,
	sload => VCC,
	ena => \inst1|dec_to_en\(7),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|reg_gen:7:regs|y\(5));

-- Location: LCCOMB_X14_Y31_N8
\inst1|reg_gen:23:regs|y[5]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|reg_gen:23:regs|y[5]~feeder_combout\ = \inst2|inst|mux_2|mux_1|mux_generate:3:mux_i|Mux2~3_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst2|inst|mux_2|mux_1|mux_generate:3:mux_i|Mux2~3_combout\,
	combout => \inst1|reg_gen:23:regs|y[5]~feeder_combout\);

-- Location: FF_X14_Y31_N9
\inst1|reg_gen:23:regs|y[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \inst1|reg_gen:23:regs|y[5]~feeder_combout\,
	ena => \inst1|dec_to_en\(23),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|reg_gen:23:regs|y\(5));

-- Location: LCCOMB_X13_Y31_N6
\inst1|DOUT[13]~76\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|DOUT[13]~76_combout\ = (\inst2|inst1|alu1|mux|Mux3~1_combout\ & ((\inst1|reg_gen:23:regs|y\(5)))) # (!\inst2|inst1|alu1|mux|Mux3~1_combout\ & (\inst1|reg_gen:7:regs|y\(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|inst1|alu1|mux|Mux3~1_combout\,
	datac => \inst1|reg_gen:7:regs|y\(5),
	datad => \inst1|reg_gen:23:regs|y\(5),
	combout => \inst1|DOUT[13]~76_combout\);

-- Location: LCCOMB_X10_Y34_N0
\inst1|reg_gen:13:regs|y[5]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|reg_gen:13:regs|y[5]~feeder_combout\ = \inst2|inst|mux_2|mux_1|mux_generate:3:mux_i|Mux2~3_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst2|inst|mux_2|mux_1|mux_generate:3:mux_i|Mux2~3_combout\,
	combout => \inst1|reg_gen:13:regs|y[5]~feeder_combout\);

-- Location: FF_X10_Y34_N1
\inst1|reg_gen:13:regs|y[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \inst1|reg_gen:13:regs|y[5]~feeder_combout\,
	ena => \inst1|dec_to_en\(13),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|reg_gen:13:regs|y\(5));

-- Location: FF_X13_Y33_N15
\inst1|reg_gen:5:regs|y[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	asdata => \inst2|inst|mux_2|mux_1|mux_generate:3:mux_i|Mux2~3_combout\,
	sload => VCC,
	ena => \inst1|dec_to_en\(5),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|reg_gen:5:regs|y\(5));

-- Location: LCCOMB_X10_Y34_N30
\inst1|reg_gen:21:regs|y[5]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|reg_gen:21:regs|y[5]~feeder_combout\ = \inst2|inst|mux_2|mux_1|mux_generate:3:mux_i|Mux2~3_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst2|inst|mux_2|mux_1|mux_generate:3:mux_i|Mux2~3_combout\,
	combout => \inst1|reg_gen:21:regs|y[5]~feeder_combout\);

-- Location: FF_X10_Y34_N31
\inst1|reg_gen:21:regs|y[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \inst1|reg_gen:21:regs|y[5]~feeder_combout\,
	ena => \inst1|dec_to_en\(21),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|reg_gen:21:regs|y\(5));

-- Location: LCCOMB_X13_Y33_N14
\inst1|DOUT[13]~77\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|DOUT[13]~77_combout\ = (\inst2|inst1|alu1|mux|Mux3~1_combout\ & ((\inst2|inst1|alu0|mux|Mux0~1_combout\) # ((\inst1|reg_gen:21:regs|y\(5))))) # (!\inst2|inst1|alu1|mux|Mux3~1_combout\ & (!\inst2|inst1|alu0|mux|Mux0~1_combout\ & 
-- (\inst1|reg_gen:5:regs|y\(5))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|inst1|alu1|mux|Mux3~1_combout\,
	datab => \inst2|inst1|alu0|mux|Mux0~1_combout\,
	datac => \inst1|reg_gen:5:regs|y\(5),
	datad => \inst1|reg_gen:21:regs|y\(5),
	combout => \inst1|DOUT[13]~77_combout\);

-- Location: FF_X13_Y33_N5
\inst1|reg_gen:29:regs|y[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	asdata => \inst2|inst|mux_2|mux_1|mux_generate:3:mux_i|Mux2~3_combout\,
	sload => VCC,
	ena => \inst1|dec_to_en\(29),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|reg_gen:29:regs|y\(5));

-- Location: LCCOMB_X13_Y33_N4
\inst1|DOUT[13]~78\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|DOUT[13]~78_combout\ = (\inst1|DOUT[13]~77_combout\ & (((\inst1|reg_gen:29:regs|y\(5)) # (!\inst2|inst1|alu0|mux|Mux0~1_combout\)))) # (!\inst1|DOUT[13]~77_combout\ & (\inst1|reg_gen:13:regs|y\(5) & ((\inst2|inst1|alu0|mux|Mux0~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110001011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|reg_gen:13:regs|y\(5),
	datab => \inst1|DOUT[13]~77_combout\,
	datac => \inst1|reg_gen:29:regs|y\(5),
	datad => \inst2|inst1|alu0|mux|Mux0~1_combout\,
	combout => \inst1|DOUT[13]~78_combout\);

-- Location: LCCOMB_X10_Y33_N20
\inst1|DOUT[13]~81\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|DOUT[13]~81_combout\ = (\inst1|DOUT[12]~25_combout\ & (((\inst1|DOUT[13]~78_combout\) # (\inst1|DOUT[12]~27_combout\)))) # (!\inst1|DOUT[12]~25_combout\ & (\inst1|DOUT[13]~80_combout\ & ((!\inst1|DOUT[12]~27_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|DOUT[13]~80_combout\,
	datab => \inst1|DOUT[13]~78_combout\,
	datac => \inst1|DOUT[12]~25_combout\,
	datad => \inst1|DOUT[12]~27_combout\,
	combout => \inst1|DOUT[13]~81_combout\);

-- Location: LCCOMB_X10_Y33_N6
\inst1|DOUT[13]~82\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|DOUT[13]~82_combout\ = (\inst1|DOUT[12]~27_combout\ & ((\inst1|DOUT[13]~81_combout\ & (\inst1|reg_gen:15:regs|y\(5))) # (!\inst1|DOUT[13]~81_combout\ & ((\inst1|DOUT[13]~76_combout\))))) # (!\inst1|DOUT[12]~27_combout\ & 
-- (((\inst1|DOUT[13]~81_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|DOUT[12]~27_combout\,
	datab => \inst1|reg_gen:15:regs|y\(5),
	datac => \inst1|DOUT[13]~76_combout\,
	datad => \inst1|DOUT[13]~81_combout\,
	combout => \inst1|DOUT[13]~82_combout\);

-- Location: LCCOMB_X10_Y33_N18
\inst1|DOUT[13]~94\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|DOUT[13]~94_combout\ = (\inst1|DOUT[13]~93_combout\ & ((\inst1|reg_gen:16:regs|y\(5)) # ((!\inst1|DOUT[12]~32_combout\)))) # (!\inst1|DOUT[13]~93_combout\ & (((\inst1|DOUT[12]~32_combout\ & \inst1|DOUT[13]~82_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101101010001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|DOUT[13]~93_combout\,
	datab => \inst1|reg_gen:16:regs|y\(5),
	datac => \inst1|DOUT[12]~32_combout\,
	datad => \inst1|DOUT[13]~82_combout\,
	combout => \inst1|DOUT[13]~94_combout\);

-- Location: LCCOMB_X10_Y33_N0
\inst1|DOUT[13]~95\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|DOUT[13]~95_combout\ = (\inst1|DOUT[12]~49_combout\ & ((\inst1|DOUT[13]~94_combout\))) # (!\inst1|DOUT[12]~49_combout\ & (\inst1|reg_gen:31:regs|y\(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|DOUT[12]~49_combout\,
	datac => \inst1|reg_gen:31:regs|y\(5),
	datad => \inst1|DOUT[13]~94_combout\,
	combout => \inst1|DOUT[13]~95_combout\);

-- Location: LCCOMB_X10_Y33_N12
\inst1|DOUT[13]$latch\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|DOUT[13]$latch~combout\ = (!\inst1|DOUT[15]~55_combout\ & ((GLOBAL(\inst1|DOUT[15]~53clkctrl_outclk\) & ((\inst1|DOUT[13]~95_combout\))) # (!GLOBAL(\inst1|DOUT[15]~53clkctrl_outclk\) & (\inst1|DOUT[13]$latch~combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001000000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|DOUT[13]$latch~combout\,
	datab => \inst1|DOUT[15]~55_combout\,
	datac => \inst1|DOUT[15]~53clkctrl_outclk\,
	datad => \inst1|DOUT[13]~95_combout\,
	combout => \inst1|DOUT[13]$latch~combout\);

-- Location: LCCOMB_X10_Y33_N30
\inst3|OUT16B[13]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|OUT16B[13]~2_combout\ = (\inst|Mux5~0_combout\ & (((\inst1|DOUT[13]$latch~combout\) # (!\inst1|DOUT[15]_2612~combout\)))) # (!\inst|Mux5~0_combout\ & (\inst2|inst1|alu3|mux|Mux2~1_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101000111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|inst1|alu3|mux|Mux2~1_combout\,
	datab => \inst1|DOUT[15]_2612~combout\,
	datac => \inst|Mux5~0_combout\,
	datad => \inst1|DOUT[13]$latch~combout\,
	combout => \inst3|OUT16B[13]~2_combout\);

-- Location: LCCOMB_X11_Y36_N28
\inst2|inst|reg_gen:3:regs|reg_2|y[5]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|inst|reg_gen:3:regs|reg_2|y[5]~feeder_combout\ = \inst3|OUT16B[13]~2_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst3|OUT16B[13]~2_combout\,
	combout => \inst2|inst|reg_gen:3:regs|reg_2|y[5]~feeder_combout\);

-- Location: FF_X11_Y36_N29
\inst2|inst|reg_gen:3:regs|reg_2|y[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~input_o\,
	d => \inst2|inst|reg_gen:3:regs|reg_2|y[5]~feeder_combout\,
	ena => \inst2|inst|add_reg1_dcd|Mux3~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst2|inst|reg_gen:3:regs|reg_2|y\(5));

-- Location: LCCOMB_X11_Y36_N12
\inst2|inst|reg_gen:2:regs|reg_2|y[5]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|inst|reg_gen:2:regs|reg_2|y[5]~feeder_combout\ = \inst3|OUT16B[13]~2_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst3|OUT16B[13]~2_combout\,
	combout => \inst2|inst|reg_gen:2:regs|reg_2|y[5]~feeder_combout\);

-- Location: FF_X11_Y36_N13
\inst2|inst|reg_gen:2:regs|reg_2|y[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~input_o\,
	d => \inst2|inst|reg_gen:2:regs|reg_2|y[5]~feeder_combout\,
	ena => \inst2|inst|add_reg1_dcd|Mux3~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst2|inst|reg_gen:2:regs|reg_2|y\(5));

-- Location: LCCOMB_X14_Y34_N30
\inst2|inst|mux_2|mux_1|mux_generate:3:mux_i|Mux2~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|inst|mux_2|mux_1|mux_generate:3:mux_i|Mux2~0_combout\ = (\inst4|inst1|exception~2_combout\ & (((\inst2|inst|reg_gen:2:regs|reg_2|y\(5))))) # (!\inst4|inst1|exception~2_combout\ & ((\inst4|inst1|data_out[6]~8_combout\ & 
-- (\inst2|inst|reg_gen:3:regs|reg_2|y\(5))) # (!\inst4|inst1|data_out[6]~8_combout\ & ((\inst2|inst|reg_gen:2:regs|reg_2|y\(5))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|inst1|exception~2_combout\,
	datab => \inst2|inst|reg_gen:3:regs|reg_2|y\(5),
	datac => \inst2|inst|reg_gen:2:regs|reg_2|y\(5),
	datad => \inst4|inst1|data_out[6]~8_combout\,
	combout => \inst2|inst|mux_2|mux_1|mux_generate:3:mux_i|Mux2~0_combout\);

-- Location: LCCOMB_X10_Y36_N20
\inst2|inst|reg_gen:5:regs|reg_2|y[5]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|inst|reg_gen:5:regs|reg_2|y[5]~feeder_combout\ = \inst3|OUT16B[13]~2_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst3|OUT16B[13]~2_combout\,
	combout => \inst2|inst|reg_gen:5:regs|reg_2|y[5]~feeder_combout\);

-- Location: FF_X10_Y36_N21
\inst2|inst|reg_gen:5:regs|reg_2|y[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~input_o\,
	d => \inst2|inst|reg_gen:5:regs|reg_2|y[5]~feeder_combout\,
	ena => \inst2|inst|add_reg1_dcd|Mux3~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst2|inst|reg_gen:5:regs|reg_2|y\(5));

-- Location: LCCOMB_X10_Y33_N4
\inst2|inst|reg_gen:4:regs|reg_2|y[5]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|inst|reg_gen:4:regs|reg_2|y[5]~feeder_combout\ = \inst3|OUT16B[13]~2_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst3|OUT16B[13]~2_combout\,
	combout => \inst2|inst|reg_gen:4:regs|reg_2|y[5]~feeder_combout\);

-- Location: FF_X10_Y33_N5
\inst2|inst|reg_gen:4:regs|reg_2|y[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~input_o\,
	d => \inst2|inst|reg_gen:4:regs|reg_2|y[5]~feeder_combout\,
	ena => \inst2|inst|add_reg1_dcd|Mux3~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst2|inst|reg_gen:4:regs|reg_2|y\(5));

-- Location: LCCOMB_X14_Y33_N0
\inst2|inst|mux_2|mux_1|mux_generate:3:mux_i|Mux2~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|inst|mux_2|mux_1|mux_generate:3:mux_i|Mux2~1_combout\ = ((!\inst4|inst1|exception~2_combout\ & (\inst2|inst|reg_gen:1:regs|reg_2|y\(5) & \inst4|inst1|data_out[6]~8_combout\))) # (!\inst2|inst|mux_2|mux_1|mux_generate:0:mux_i|Mux3~1_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111010101010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|inst|mux_2|mux_1|mux_generate:0:mux_i|Mux3~1_combout\,
	datab => \inst4|inst1|exception~2_combout\,
	datac => \inst2|inst|reg_gen:1:regs|reg_2|y\(5),
	datad => \inst4|inst1|data_out[6]~8_combout\,
	combout => \inst2|inst|mux_2|mux_1|mux_generate:3:mux_i|Mux2~1_combout\);

-- Location: LCCOMB_X14_Y34_N12
\inst2|inst|mux_2|mux_1|mux_generate:3:mux_i|Mux2~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|inst|mux_2|mux_1|mux_generate:3:mux_i|Mux2~2_combout\ = (\inst2|inst|mux_2|mux_1|mux_generate:0:mux_i|Mux3~0_combout\ & (((\inst2|inst|mux_2|mux_1|mux_generate:3:mux_i|Mux2~1_combout\)))) # 
-- (!\inst2|inst|mux_2|mux_1|mux_generate:0:mux_i|Mux3~0_combout\ & ((\inst2|inst|mux_2|mux_1|mux_generate:3:mux_i|Mux2~1_combout\ & ((\inst2|inst|reg_gen:4:regs|reg_2|y\(5)))) # (!\inst2|inst|mux_2|mux_1|mux_generate:3:mux_i|Mux2~1_combout\ & 
-- (\inst2|inst|reg_gen:5:regs|reg_2|y\(5)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|inst|reg_gen:5:regs|reg_2|y\(5),
	datab => \inst2|inst|reg_gen:4:regs|reg_2|y\(5),
	datac => \inst2|inst|mux_2|mux_1|mux_generate:0:mux_i|Mux3~0_combout\,
	datad => \inst2|inst|mux_2|mux_1|mux_generate:3:mux_i|Mux2~1_combout\,
	combout => \inst2|inst|mux_2|mux_1|mux_generate:3:mux_i|Mux2~2_combout\);

-- Location: LCCOMB_X14_Y34_N10
\inst2|inst|mux_2|mux_1|mux_generate:3:mux_i|Mux2~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|inst|mux_2|mux_1|mux_generate:3:mux_i|Mux2~3_combout\ = (\inst2|inst|mux_2|mux_1|mux_generate:0:mux_i|Mux3~2_combout\ & (\inst2|inst|mux_2|mux_1|mux_generate:3:mux_i|Mux2~0_combout\)) # (!\inst2|inst|mux_2|mux_1|mux_generate:0:mux_i|Mux3~2_combout\ 
-- & ((\inst2|inst|mux_2|mux_1|mux_generate:3:mux_i|Mux2~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|inst|mux_2|mux_1|mux_generate:3:mux_i|Mux2~0_combout\,
	datac => \inst2|inst|mux_2|mux_1|mux_generate:0:mux_i|Mux3~2_combout\,
	datad => \inst2|inst|mux_2|mux_1|mux_generate:3:mux_i|Mux2~2_combout\,
	combout => \inst2|inst|mux_2|mux_1|mux_generate:3:mux_i|Mux2~3_combout\);

-- Location: FF_X9_Y34_N5
\inst1|reg_gen:25:regs|y[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	asdata => \inst2|inst|mux_2|mux_1|mux_generate:3:mux_i|Mux2~3_combout\,
	sload => VCC,
	ena => \inst1|dec_to_en\(25),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|reg_gen:25:regs|y\(5));

-- Location: FF_X9_Y34_N15
\inst1|reg_gen:9:regs|y[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	asdata => \inst2|inst|mux_2|mux_1|mux_generate:3:mux_i|Mux2~3_combout\,
	sload => VCC,
	ena => \inst1|dec_to_en\(9),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|reg_gen:9:regs|y\(5));

-- Location: LCCOMB_X9_Y34_N14
\inst1|DOUT[13]~88\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|DOUT[13]~88_combout\ = (\inst2|inst1|alu1|mux|Mux3~1_combout\ & (\inst1|reg_gen:25:regs|y\(5))) # (!\inst2|inst1|alu1|mux|Mux3~1_combout\ & ((\inst1|reg_gen:9:regs|y\(5))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst1|reg_gen:25:regs|y\(5),
	datac => \inst1|reg_gen:9:regs|y\(5),
	datad => \inst2|inst1|alu1|mux|Mux3~1_combout\,
	combout => \inst1|DOUT[13]~88_combout\);

-- Location: FF_X12_Y34_N31
\inst1|reg_gen:17:regs|y[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	asdata => \inst2|inst|mux_2|mux_1|mux_generate:3:mux_i|Mux2~3_combout\,
	sload => VCC,
	ena => \inst1|dec_to_en\(17),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|reg_gen:17:regs|y\(5));

-- Location: LCCOMB_X12_Y34_N30
\inst1|DOUT[13]~89\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|DOUT[13]~89_combout\ = (\inst2|inst1|alu0|mux|Mux2~1_combout\ & (((\inst2|inst1|alu0|mux|Mux0~1_combout\)))) # (!\inst2|inst1|alu0|mux|Mux2~1_combout\ & ((\inst2|inst1|alu0|mux|Mux0~1_combout\ & (\inst1|DOUT[13]~88_combout\)) # 
-- (!\inst2|inst1|alu0|mux|Mux0~1_combout\ & ((\inst1|reg_gen:17:regs|y\(5))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|DOUT[13]~88_combout\,
	datab => \inst2|inst1|alu0|mux|Mux2~1_combout\,
	datac => \inst1|reg_gen:17:regs|y\(5),
	datad => \inst2|inst1|alu0|mux|Mux0~1_combout\,
	combout => \inst1|DOUT[13]~89_combout\);

-- Location: LCCOMB_X8_Y34_N24
\inst1|reg_gen:27:regs|y[5]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|reg_gen:27:regs|y[5]~feeder_combout\ = \inst2|inst|mux_2|mux_1|mux_generate:3:mux_i|Mux2~3_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst2|inst|mux_2|mux_1|mux_generate:3:mux_i|Mux2~3_combout\,
	combout => \inst1|reg_gen:27:regs|y[5]~feeder_combout\);

-- Location: FF_X8_Y34_N25
\inst1|reg_gen:27:regs|y[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \inst1|reg_gen:27:regs|y[5]~feeder_combout\,
	ena => \inst1|dec_to_en\(27),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|reg_gen:27:regs|y\(5));

-- Location: LCCOMB_X8_Y34_N14
\inst1|reg_gen:11:regs|y[5]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|reg_gen:11:regs|y[5]~feeder_combout\ = \inst2|inst|mux_2|mux_1|mux_generate:3:mux_i|Mux2~3_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst2|inst|mux_2|mux_1|mux_generate:3:mux_i|Mux2~3_combout\,
	combout => \inst1|reg_gen:11:regs|y[5]~feeder_combout\);

-- Location: FF_X8_Y34_N15
\inst1|reg_gen:11:regs|y[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \inst1|reg_gen:11:regs|y[5]~feeder_combout\,
	ena => \inst1|dec_to_en\(11),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|reg_gen:11:regs|y\(5));

-- Location: LCCOMB_X9_Y34_N20
\inst1|DOUT[13]~90\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|DOUT[13]~90_combout\ = (\inst2|inst1|alu1|mux|Mux3~1_combout\ & (\inst1|reg_gen:27:regs|y\(5))) # (!\inst2|inst1|alu1|mux|Mux3~1_combout\ & ((\inst1|reg_gen:11:regs|y\(5))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|inst1|alu1|mux|Mux3~1_combout\,
	datab => \inst1|reg_gen:27:regs|y\(5),
	datad => \inst1|reg_gen:11:regs|y\(5),
	combout => \inst1|DOUT[13]~90_combout\);

-- Location: FF_X12_Y34_N17
\inst1|reg_gen:19:regs|y[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	asdata => \inst2|inst|mux_2|mux_1|mux_generate:3:mux_i|Mux2~3_combout\,
	sload => VCC,
	ena => \inst1|dec_to_en\(19),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|reg_gen:19:regs|y\(5));

-- Location: LCCOMB_X12_Y34_N16
\inst1|DOUT[13]~91\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|DOUT[13]~91_combout\ = (\inst1|DOUT[13]~89_combout\ & ((\inst1|DOUT[13]~90_combout\) # ((!\inst2|inst1|alu0|mux|Mux2~1_combout\)))) # (!\inst1|DOUT[13]~89_combout\ & (((\inst1|reg_gen:19:regs|y\(5) & \inst2|inst1|alu0|mux|Mux2~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|DOUT[13]~89_combout\,
	datab => \inst1|DOUT[13]~90_combout\,
	datac => \inst1|reg_gen:19:regs|y\(5),
	datad => \inst2|inst1|alu0|mux|Mux2~1_combout\,
	combout => \inst1|DOUT[13]~91_combout\);

-- Location: LCCOMB_X12_Y32_N20
\inst1|DOUT[5]~217\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|DOUT[5]~217_combout\ = (\inst1|DOUT[3]~198_combout\ & ((\inst1|DOUT[12]~48_combout\) # ((\inst1|DOUT[13]~85_combout\)))) # (!\inst1|DOUT[3]~198_combout\ & (!\inst1|DOUT[12]~48_combout\ & (\inst1|DOUT[13]~78_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|DOUT[3]~198_combout\,
	datab => \inst1|DOUT[12]~48_combout\,
	datac => \inst1|DOUT[13]~78_combout\,
	datad => \inst1|DOUT[13]~85_combout\,
	combout => \inst1|DOUT[5]~217_combout\);

-- Location: LCCOMB_X12_Y32_N0
\inst1|DOUT[5]~218\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|DOUT[5]~218_combout\ = (\inst1|DOUT[12]~48_combout\ & ((\inst1|DOUT[5]~217_combout\ & (\inst1|reg_gen:15:regs|y\(5))) # (!\inst1|DOUT[5]~217_combout\ & ((\inst1|DOUT[13]~76_combout\))))) # (!\inst1|DOUT[12]~48_combout\ & 
-- (\inst1|DOUT[5]~217_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110011011000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|DOUT[12]~48_combout\,
	datab => \inst1|DOUT[5]~217_combout\,
	datac => \inst1|reg_gen:15:regs|y\(5),
	datad => \inst1|DOUT[13]~76_combout\,
	combout => \inst1|DOUT[5]~218_combout\);

-- Location: LCCOMB_X11_Y34_N20
\inst1|DOUT[5]~219\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|DOUT[5]~219_combout\ = (\inst1|DOUT[3]~260_combout\ & (((\inst2|inst1|alu0|mux|Mux1~1_combout\)))) # (!\inst1|DOUT[3]~260_combout\ & ((\inst2|inst1|alu0|mux|Mux1~1_combout\ & ((\inst1|DOUT[5]~218_combout\))) # 
-- (!\inst2|inst1|alu0|mux|Mux1~1_combout\ & (\inst1|DOUT[13]~91_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|DOUT[13]~91_combout\,
	datab => \inst1|DOUT[5]~218_combout\,
	datac => \inst1|DOUT[3]~260_combout\,
	datad => \inst2|inst1|alu0|mux|Mux1~1_combout\,
	combout => \inst1|DOUT[5]~219_combout\);

-- Location: LCCOMB_X11_Y34_N30
\inst1|DOUT[5]~220\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|DOUT[5]~220_combout\ = (\inst1|DOUT[3]~260_combout\ & ((\inst1|DOUT[5]~219_combout\ & (\inst1|DOUT[13]~80_combout\)) # (!\inst1|DOUT[5]~219_combout\ & ((\inst1|DOUT[5]~216_combout\))))) # (!\inst1|DOUT[3]~260_combout\ & 
-- (((\inst1|DOUT[5]~219_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|DOUT[3]~260_combout\,
	datab => \inst1|DOUT[13]~80_combout\,
	datac => \inst1|DOUT[5]~216_combout\,
	datad => \inst1|DOUT[5]~219_combout\,
	combout => \inst1|DOUT[5]~220_combout\);

-- Location: LCCOMB_X11_Y34_N4
\inst1|DOUT[5]~221\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|DOUT[5]~221_combout\ = (\inst1|DOUT[3]~203_combout\ & ((\inst1|DOUT[5]~220_combout\))) # (!\inst1|DOUT[3]~203_combout\ & (\inst1|reg_gen:30:regs|y\(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|reg_gen:30:regs|y\(5),
	datac => \inst1|DOUT[3]~203_combout\,
	datad => \inst1|DOUT[5]~220_combout\,
	combout => \inst1|DOUT[5]~221_combout\);

-- Location: LCCOMB_X11_Y34_N10
\inst1|DOUT[5]$latch\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|DOUT[5]$latch~combout\ = (!\inst1|DOUT[7]~206_combout\ & ((GLOBAL(\inst1|DOUT[15]~52clkctrl_outclk\) & ((\inst1|DOUT[5]~221_combout\))) # (!GLOBAL(\inst1|DOUT[15]~52clkctrl_outclk\) & (\inst1|DOUT[5]$latch~combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|DOUT[5]$latch~combout\,
	datab => \inst1|DOUT[7]~206_combout\,
	datac => \inst1|DOUT[5]~221_combout\,
	datad => \inst1|DOUT[15]~52clkctrl_outclk\,
	combout => \inst1|DOUT[5]$latch~combout\);

-- Location: FF_X16_Y34_N11
\inst2|inst|reg_gen:6:regs|reg_1|y[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~input_o\,
	asdata => \inst3|OUT16B[4]~11_combout\,
	sload => VCC,
	ena => \inst2|inst|add_reg1_dcd|Mux3~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst2|inst|reg_gen:6:regs|reg_1|y\(4));

-- Location: LCCOMB_X16_Y35_N8
\inst2|inst|mux_1|mux_1|mux_generate:1:mux_i|Mux3~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|inst|mux_1|mux_1|mux_generate:1:mux_i|Mux3~0_combout\ = (\inst2|inst|reg_gen:1:regs|reg_1|y\(4) & (!\inst4|inst1|exception~2_combout\ & \inst4|inst1|data_out[9]~3_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|inst|reg_gen:1:regs|reg_1|y\(4),
	datac => \inst4|inst1|exception~2_combout\,
	datad => \inst4|inst1|data_out[9]~3_combout\,
	combout => \inst2|inst|mux_1|mux_1|mux_generate:1:mux_i|Mux3~0_combout\);

-- Location: LCCOMB_X16_Y34_N10
\inst2|inst|mux_1|mux_1|mux_generate:1:mux_i|Mux3~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|inst|mux_1|mux_1|mux_generate:1:mux_i|Mux3~1_combout\ = (\inst4|inst1|INS_OUT[15]~4_combout\ & (\inst2|inst|mux_1|mux_1|mux_generate:2:mux_i|Mux2~0_combout\ & (\inst2|inst|reg_gen:6:regs|reg_1|y\(4)))) # (!\inst4|inst1|INS_OUT[15]~4_combout\ & 
-- (((\inst2|inst|mux_1|mux_1|mux_generate:1:mux_i|Mux3~0_combout\)) # (!\inst2|inst|mux_1|mux_1|mux_generate:2:mux_i|Mux2~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101010110010001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|inst1|INS_OUT[15]~4_combout\,
	datab => \inst2|inst|mux_1|mux_1|mux_generate:2:mux_i|Mux2~0_combout\,
	datac => \inst2|inst|reg_gen:6:regs|reg_1|y\(4),
	datad => \inst2|inst|mux_1|mux_1|mux_generate:1:mux_i|Mux3~0_combout\,
	combout => \inst2|inst|mux_1|mux_1|mux_generate:1:mux_i|Mux3~1_combout\);

-- Location: LCCOMB_X17_Y35_N12
\inst2|inst2|OUT16B[4]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|inst2|OUT16B[4]~2_combout\ = (\inst|Mux7~8_combout\ & (\inst4|inst1|data_out[4]~5_combout\ & (!\inst4|inst1|exception~2_combout\))) # (!\inst|Mux7~8_combout\ & (((\inst2|inst|mux_2|mux_1|mux_generate:1:mux_i|Mux3~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010111100100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|inst1|data_out[4]~5_combout\,
	datab => \inst4|inst1|exception~2_combout\,
	datac => \inst|Mux7~8_combout\,
	datad => \inst2|inst|mux_2|mux_1|mux_generate:1:mux_i|Mux3~3_combout\,
	combout => \inst2|inst2|OUT16B[4]~2_combout\);

-- Location: LCCOMB_X17_Y35_N30
\inst2|inst2|OUT16B[3]~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|inst2|OUT16B[3]~3_combout\ = (\inst|Mux7~8_combout\ & (!\inst4|inst1|exception~2_combout\ & (\inst4|inst1|dec|dcd_0|D[2]~0_combout\))) # (!\inst|Mux7~8_combout\ & (((\inst2|inst|mux_2|mux_1|mux_generate:0:mux_i|Mux0~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100111101000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|inst1|exception~2_combout\,
	datab => \inst4|inst1|dec|dcd_0|D[2]~0_combout\,
	datac => \inst|Mux7~8_combout\,
	datad => \inst2|inst|mux_2|mux_1|mux_generate:0:mux_i|Mux0~3_combout\,
	combout => \inst2|inst2|OUT16B[3]~3_combout\);

-- Location: FF_X18_Y32_N1
\inst2|inst|reg_gen:2:regs|reg_1|y[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~input_o\,
	asdata => \inst3|OUT16B[2]~13_combout\,
	sload => VCC,
	ena => \inst2|inst|add_reg1_dcd|Mux3~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst2|inst|reg_gen:2:regs|reg_1|y\(2));

-- Location: LCCOMB_X19_Y32_N16
\inst2|inst|reg_gen:3:regs|reg_1|y[2]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|inst|reg_gen:3:regs|reg_1|y[2]~feeder_combout\ = \inst3|OUT16B[2]~13_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst3|OUT16B[2]~13_combout\,
	combout => \inst2|inst|reg_gen:3:regs|reg_1|y[2]~feeder_combout\);

-- Location: FF_X19_Y32_N17
\inst2|inst|reg_gen:3:regs|reg_1|y[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~input_o\,
	d => \inst2|inst|reg_gen:3:regs|reg_1|y[2]~feeder_combout\,
	ena => \inst2|inst|add_reg1_dcd|Mux3~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst2|inst|reg_gen:3:regs|reg_1|y\(2));

-- Location: LCCOMB_X18_Y32_N8
\inst2|inst|mux_2|mux_1|mux_generate:0:mux_i|Mux1~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|inst|mux_2|mux_1|mux_generate:0:mux_i|Mux1~0_combout\ = (\inst4|inst1|data_out[6]~8_combout\ & ((\inst4|inst1|exception~2_combout\ & (\inst2|inst|reg_gen:2:regs|reg_1|y\(2))) # (!\inst4|inst1|exception~2_combout\ & 
-- ((\inst2|inst|reg_gen:3:regs|reg_1|y\(2)))))) # (!\inst4|inst1|data_out[6]~8_combout\ & (\inst2|inst|reg_gen:2:regs|reg_1|y\(2)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111011000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|inst1|data_out[6]~8_combout\,
	datab => \inst2|inst|reg_gen:2:regs|reg_1|y\(2),
	datac => \inst4|inst1|exception~2_combout\,
	datad => \inst2|inst|reg_gen:3:regs|reg_1|y\(2),
	combout => \inst2|inst|mux_2|mux_1|mux_generate:0:mux_i|Mux1~0_combout\);

-- Location: FF_X17_Y36_N5
\inst2|inst|reg_gen:5:regs|reg_1|y[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~input_o\,
	asdata => \inst3|OUT16B[2]~13_combout\,
	sload => VCC,
	ena => \inst2|inst|add_reg1_dcd|Mux3~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst2|inst|reg_gen:5:regs|reg_1|y\(2));

-- Location: LCCOMB_X19_Y32_N24
\inst2|inst|reg_gen:4:regs|reg_1|y[2]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|inst|reg_gen:4:regs|reg_1|y[2]~feeder_combout\ = \inst3|OUT16B[2]~13_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst3|OUT16B[2]~13_combout\,
	combout => \inst2|inst|reg_gen:4:regs|reg_1|y[2]~feeder_combout\);

-- Location: FF_X19_Y32_N25
\inst2|inst|reg_gen:4:regs|reg_1|y[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~input_o\,
	d => \inst2|inst|reg_gen:4:regs|reg_1|y[2]~feeder_combout\,
	ena => \inst2|inst|add_reg1_dcd|Mux3~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst2|inst|reg_gen:4:regs|reg_1|y\(2));

-- Location: LCCOMB_X18_Y32_N2
\inst2|inst|mux_2|mux_1|mux_generate:0:mux_i|Mux1~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|inst|mux_2|mux_1|mux_generate:0:mux_i|Mux1~1_combout\ = ((\inst2|inst|reg_gen:1:regs|reg_1|y\(2) & (!\inst4|inst1|exception~2_combout\ & \inst4|inst1|data_out[6]~8_combout\))) # (!\inst2|inst|mux_2|mux_1|mux_generate:0:mux_i|Mux3~1_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|inst|reg_gen:1:regs|reg_1|y\(2),
	datab => \inst4|inst1|exception~2_combout\,
	datac => \inst4|inst1|data_out[6]~8_combout\,
	datad => \inst2|inst|mux_2|mux_1|mux_generate:0:mux_i|Mux3~1_combout\,
	combout => \inst2|inst|mux_2|mux_1|mux_generate:0:mux_i|Mux1~1_combout\);

-- Location: LCCOMB_X18_Y32_N6
\inst2|inst|mux_2|mux_1|mux_generate:0:mux_i|Mux1~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|inst|mux_2|mux_1|mux_generate:0:mux_i|Mux1~2_combout\ = (\inst2|inst|mux_2|mux_1|mux_generate:0:mux_i|Mux3~0_combout\ & (((\inst2|inst|mux_2|mux_1|mux_generate:0:mux_i|Mux1~1_combout\)))) # 
-- (!\inst2|inst|mux_2|mux_1|mux_generate:0:mux_i|Mux3~0_combout\ & ((\inst2|inst|mux_2|mux_1|mux_generate:0:mux_i|Mux1~1_combout\ & ((\inst2|inst|reg_gen:4:regs|reg_1|y\(2)))) # (!\inst2|inst|mux_2|mux_1|mux_generate:0:mux_i|Mux1~1_combout\ & 
-- (\inst2|inst|reg_gen:5:regs|reg_1|y\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|inst|reg_gen:5:regs|reg_1|y\(2),
	datab => \inst2|inst|reg_gen:4:regs|reg_1|y\(2),
	datac => \inst2|inst|mux_2|mux_1|mux_generate:0:mux_i|Mux3~0_combout\,
	datad => \inst2|inst|mux_2|mux_1|mux_generate:0:mux_i|Mux1~1_combout\,
	combout => \inst2|inst|mux_2|mux_1|mux_generate:0:mux_i|Mux1~2_combout\);

-- Location: LCCOMB_X18_Y32_N20
\inst2|inst|mux_2|mux_1|mux_generate:0:mux_i|Mux1~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|inst|mux_2|mux_1|mux_generate:0:mux_i|Mux1~3_combout\ = (\inst2|inst|mux_2|mux_1|mux_generate:0:mux_i|Mux3~2_combout\ & (\inst2|inst|mux_2|mux_1|mux_generate:0:mux_i|Mux1~0_combout\)) # (!\inst2|inst|mux_2|mux_1|mux_generate:0:mux_i|Mux3~2_combout\ 
-- & ((\inst2|inst|mux_2|mux_1|mux_generate:0:mux_i|Mux1~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|inst|mux_2|mux_1|mux_generate:0:mux_i|Mux3~2_combout\,
	datac => \inst2|inst|mux_2|mux_1|mux_generate:0:mux_i|Mux1~0_combout\,
	datad => \inst2|inst|mux_2|mux_1|mux_generate:0:mux_i|Mux1~2_combout\,
	combout => \inst2|inst|mux_2|mux_1|mux_generate:0:mux_i|Mux1~3_combout\);

-- Location: LCCOMB_X18_Y32_N14
\inst2|inst2|OUT16B[2]~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|inst2|OUT16B[2]~4_combout\ = (\inst|Mux7~8_combout\ & (\inst4|inst1|INS_OUT[2]~14_combout\)) # (!\inst|Mux7~8_combout\ & ((\inst2|inst|mux_2|mux_1|mux_generate:0:mux_i|Mux1~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Mux7~8_combout\,
	datac => \inst4|inst1|INS_OUT[2]~14_combout\,
	datad => \inst2|inst|mux_2|mux_1|mux_generate:0:mux_i|Mux1~3_combout\,
	combout => \inst2|inst2|OUT16B[2]~4_combout\);

-- Location: LCCOMB_X16_Y32_N14
\inst2|inst1|alu0|adder|G[0]\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|inst1|alu0|adder|G\(0) = (\inst2|inst|mux_1|mux_1|mux_generate:0:mux_i|Mux3~1_combout\ & (\inst2|inst3|DOUT[2]~3_combout\ $ (((\inst2|inst2|OUT16B[0]~5_combout\) # (\inst2|inst2|OUT16B[0]~6_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000001100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|inst2|OUT16B[0]~5_combout\,
	datab => \inst2|inst3|DOUT[2]~3_combout\,
	datac => \inst2|inst|mux_1|mux_1|mux_generate:0:mux_i|Mux3~1_combout\,
	datad => \inst2|inst2|OUT16B[0]~6_combout\,
	combout => \inst2|inst1|alu0|adder|G\(0));

-- Location: FF_X13_Y36_N1
\inst2|inst|reg_gen:6:regs|reg_1|y[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~input_o\,
	d => \inst3|OUT16B[1]~14_combout\,
	ena => \inst2|inst|add_reg1_dcd|Mux3~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst2|inst|reg_gen:6:regs|reg_1|y\(1));

-- Location: LCCOMB_X19_Y32_N28
\inst2|inst|mux_1|mux_1|mux_generate:0:mux_i|Mux2~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|inst|mux_1|mux_1|mux_generate:0:mux_i|Mux2~0_combout\ = (\inst2|inst|reg_gen:1:regs|reg_1|y\(1) & (!\inst4|inst1|exception~2_combout\ & \inst4|inst1|data_out[9]~3_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010001000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|inst|reg_gen:1:regs|reg_1|y\(1),
	datab => \inst4|inst1|exception~2_combout\,
	datad => \inst4|inst1|data_out[9]~3_combout\,
	combout => \inst2|inst|mux_1|mux_1|mux_generate:0:mux_i|Mux2~0_combout\);

-- Location: LCCOMB_X19_Y32_N18
\inst2|inst|mux_1|mux_1|mux_generate:0:mux_i|Mux2~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|inst|mux_1|mux_1|mux_generate:0:mux_i|Mux2~1_combout\ = (\inst4|inst1|INS_OUT[15]~4_combout\ & (\inst2|inst|reg_gen:6:regs|reg_1|y\(1) & (\inst2|inst|mux_1|mux_1|mux_generate:2:mux_i|Mux2~0_combout\))) # (!\inst4|inst1|INS_OUT[15]~4_combout\ & 
-- (((\inst2|inst|mux_1|mux_1|mux_generate:0:mux_i|Mux2~0_combout\) # (!\inst2|inst|mux_1|mux_1|mux_generate:2:mux_i|Mux2~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101010110000101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|inst1|INS_OUT[15]~4_combout\,
	datab => \inst2|inst|reg_gen:6:regs|reg_1|y\(1),
	datac => \inst2|inst|mux_1|mux_1|mux_generate:2:mux_i|Mux2~0_combout\,
	datad => \inst2|inst|mux_1|mux_1|mux_generate:0:mux_i|Mux2~0_combout\,
	combout => \inst2|inst|mux_1|mux_1|mux_generate:0:mux_i|Mux2~1_combout\);

-- Location: LCCOMB_X17_Y32_N14
\inst2|inst1|alu0|inverter|Rt[1]\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|inst1|alu0|inverter|Rt\(1) = \inst2|inst3|DOUT[2]~3_combout\ $ (((\inst|Mux7~8_combout\ & (\inst4|inst1|INS_OUT[1]~9_combout\)) # (!\inst|Mux7~8_combout\ & ((\inst2|inst|mux_2|mux_1|mux_generate:0:mux_i|Mux2~3_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100101101111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|inst1|INS_OUT[1]~9_combout\,
	datab => \inst|Mux7~8_combout\,
	datac => \inst2|inst3|DOUT[2]~3_combout\,
	datad => \inst2|inst|mux_2|mux_1|mux_generate:0:mux_i|Mux2~3_combout\,
	combout => \inst2|inst1|alu0|inverter|Rt\(1));

-- Location: LCCOMB_X17_Y32_N12
\inst2|inst1|alu0|adder|C[2]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|inst1|alu0|adder|C[2]~1_combout\ = (\inst2|inst|mux_1|mux_1|mux_generate:0:mux_i|Mux2~1_combout\ & ((\inst2|inst1|alu0|adder|G\(0)) # ((\inst2|inst1|alu0|inverter|Rt\(1)) # (\inst2|inst1|alu0|adder|C~0_combout\)))) # 
-- (!\inst2|inst|mux_1|mux_1|mux_generate:0:mux_i|Mux2~1_combout\ & (\inst2|inst1|alu0|inverter|Rt\(1) & ((\inst2|inst1|alu0|adder|G\(0)) # (\inst2|inst1|alu0|adder|C~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110011101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|inst1|alu0|adder|G\(0),
	datab => \inst2|inst|mux_1|mux_1|mux_generate:0:mux_i|Mux2~1_combout\,
	datac => \inst2|inst1|alu0|inverter|Rt\(1),
	datad => \inst2|inst1|alu0|adder|C~0_combout\,
	combout => \inst2|inst1|alu0|adder|C[2]~1_combout\);

-- Location: LCCOMB_X17_Y32_N10
\inst2|inst1|alu0|adder|C[3]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|inst1|alu0|adder|C[3]~2_combout\ = (\inst2|inst|mux_1|mux_1|mux_generate:0:mux_i|Mux1~1_combout\ & ((\inst2|inst1|alu0|adder|C[2]~1_combout\) # (\inst2|inst2|OUT16B[2]~4_combout\ $ (\inst2|inst3|DOUT[2]~3_combout\)))) # 
-- (!\inst2|inst|mux_1|mux_1|mux_generate:0:mux_i|Mux1~1_combout\ & (\inst2|inst1|alu0|adder|C[2]~1_combout\ & (\inst2|inst2|OUT16B[2]~4_combout\ $ (\inst2|inst3|DOUT[2]~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011111000101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|inst|mux_1|mux_1|mux_generate:0:mux_i|Mux1~1_combout\,
	datab => \inst2|inst2|OUT16B[2]~4_combout\,
	datac => \inst2|inst3|DOUT[2]~3_combout\,
	datad => \inst2|inst1|alu0|adder|C[2]~1_combout\,
	combout => \inst2|inst1|alu0|adder|C[3]~2_combout\);

-- Location: LCCOMB_X17_Y32_N6
\inst2|inst1|alu0|adder|C4~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|inst1|alu0|adder|C4~0_combout\ = (\inst2|inst|mux_1|mux_1|mux_generate:0:mux_i|Mux0~1_combout\ & ((\inst2|inst1|alu0|adder|C[3]~2_combout\) # (\inst2|inst3|DOUT[2]~3_combout\ $ (\inst2|inst2|OUT16B[3]~3_combout\)))) # 
-- (!\inst2|inst|mux_1|mux_1|mux_generate:0:mux_i|Mux0~1_combout\ & (\inst2|inst1|alu0|adder|C[3]~2_combout\ & (\inst2|inst3|DOUT[2]~3_combout\ $ (\inst2|inst2|OUT16B[3]~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101111001001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|inst3|DOUT[2]~3_combout\,
	datab => \inst2|inst|mux_1|mux_1|mux_generate:0:mux_i|Mux0~1_combout\,
	datac => \inst2|inst2|OUT16B[3]~3_combout\,
	datad => \inst2|inst1|alu0|adder|C[3]~2_combout\,
	combout => \inst2|inst1|alu0|adder|C4~0_combout\);

-- Location: LCCOMB_X17_Y32_N28
\inst2|inst1|alu1|adder|C[1]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|inst1|alu1|adder|C[1]~0_combout\ = (\inst2|inst|mux_1|mux_1|mux_generate:1:mux_i|Mux3~1_combout\ & ((\inst2|inst1|alu0|adder|C4~0_combout\) # (\inst2|inst3|DOUT[2]~3_combout\ $ (\inst2|inst2|OUT16B[4]~2_combout\)))) # 
-- (!\inst2|inst|mux_1|mux_1|mux_generate:1:mux_i|Mux3~1_combout\ & (\inst2|inst1|alu0|adder|C4~0_combout\ & (\inst2|inst3|DOUT[2]~3_combout\ $ (\inst2|inst2|OUT16B[4]~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101111001001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|inst3|DOUT[2]~3_combout\,
	datab => \inst2|inst|mux_1|mux_1|mux_generate:1:mux_i|Mux3~1_combout\,
	datac => \inst2|inst2|OUT16B[4]~2_combout\,
	datad => \inst2|inst1|alu0|adder|C4~0_combout\,
	combout => \inst2|inst1|alu1|adder|C[1]~0_combout\);

-- Location: LCCOMB_X19_Y32_N6
\inst2|inst1|alu1|mux|Mux2~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|inst1|alu1|mux|Mux2~0_combout\ = \inst2|inst2|OUT16B[5]~9_combout\ $ (((\inst2|inst3|DOUT[1]~4_combout\ & (\inst2|inst3|DOUT[2]~3_combout\ $ (\inst2|inst1|alu1|adder|C[1]~0_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001111101100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|inst3|DOUT[2]~3_combout\,
	datab => \inst2|inst1|alu1|adder|C[1]~0_combout\,
	datac => \inst2|inst3|DOUT[1]~4_combout\,
	datad => \inst2|inst2|OUT16B[5]~9_combout\,
	combout => \inst2|inst1|alu1|mux|Mux2~0_combout\);

-- Location: LCCOMB_X12_Y36_N24
\inst2|inst|reg_gen:6:regs|reg_1|y[5]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|inst|reg_gen:6:regs|reg_1|y[5]~feeder_combout\ = \inst3|OUT16B[5]~10_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst3|OUT16B[5]~10_combout\,
	combout => \inst2|inst|reg_gen:6:regs|reg_1|y[5]~feeder_combout\);

-- Location: FF_X12_Y36_N25
\inst2|inst|reg_gen:6:regs|reg_1|y[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~input_o\,
	d => \inst2|inst|reg_gen:6:regs|reg_1|y[5]~feeder_combout\,
	ena => \inst2|inst|add_reg1_dcd|Mux3~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst2|inst|reg_gen:6:regs|reg_1|y\(5));

-- Location: LCCOMB_X16_Y36_N16
\inst2|inst|reg_gen:1:regs|reg_1|y[5]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|inst|reg_gen:1:regs|reg_1|y[5]~feeder_combout\ = \inst3|OUT16B[5]~10_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst3|OUT16B[5]~10_combout\,
	combout => \inst2|inst|reg_gen:1:regs|reg_1|y[5]~feeder_combout\);

-- Location: FF_X16_Y36_N17
\inst2|inst|reg_gen:1:regs|reg_1|y[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~input_o\,
	d => \inst2|inst|reg_gen:1:regs|reg_1|y[5]~feeder_combout\,
	ena => \inst2|inst|add_reg1_dcd|Mux3~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst2|inst|reg_gen:1:regs|reg_1|y\(5));

-- Location: LCCOMB_X16_Y36_N14
\inst2|inst|mux_1|mux_1|mux_generate:1:mux_i|Mux2~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|inst|mux_1|mux_1|mux_generate:1:mux_i|Mux2~0_combout\ = (\inst2|inst|reg_gen:1:regs|reg_1|y\(5) & (!\inst4|inst1|exception~2_combout\ & \inst4|inst1|data_out[9]~3_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst2|inst|reg_gen:1:regs|reg_1|y\(5),
	datac => \inst4|inst1|exception~2_combout\,
	datad => \inst4|inst1|data_out[9]~3_combout\,
	combout => \inst2|inst|mux_1|mux_1|mux_generate:1:mux_i|Mux2~0_combout\);

-- Location: LCCOMB_X16_Y36_N12
\inst2|inst|mux_1|mux_1|mux_generate:1:mux_i|Mux2~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|inst|mux_1|mux_1|mux_generate:1:mux_i|Mux2~1_combout\ = (\inst4|inst1|INS_OUT[15]~4_combout\ & (\inst2|inst|reg_gen:6:regs|reg_1|y\(5) & ((\inst2|inst|mux_1|mux_1|mux_generate:2:mux_i|Mux2~0_combout\)))) # (!\inst4|inst1|INS_OUT[15]~4_combout\ & 
-- (((\inst2|inst|mux_1|mux_1|mux_generate:1:mux_i|Mux2~0_combout\) # (!\inst2|inst|mux_1|mux_1|mux_generate:2:mux_i|Mux2~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100000110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|inst|reg_gen:6:regs|reg_1|y\(5),
	datab => \inst4|inst1|INS_OUT[15]~4_combout\,
	datac => \inst2|inst|mux_1|mux_1|mux_generate:1:mux_i|Mux2~0_combout\,
	datad => \inst2|inst|mux_1|mux_1|mux_generate:2:mux_i|Mux2~0_combout\,
	combout => \inst2|inst|mux_1|mux_1|mux_generate:1:mux_i|Mux2~1_combout\);

-- Location: LCCOMB_X19_Y32_N4
\inst2|inst1|alu1|mux|Mux2~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|inst1|alu1|mux|Mux2~1_combout\ = (\inst2|inst1|alu1|mux|Mux2~0_combout\ & (\inst2|inst3|DOUT[1]~4_combout\ $ (((\inst2|inst|mux_1|mux_1|mux_generate:1:mux_i|Mux2~1_combout\) # (\inst2|inst3|DOUT[0]~2_combout\))))) # 
-- (!\inst2|inst1|alu1|mux|Mux2~0_combout\ & (\inst2|inst|mux_1|mux_1|mux_generate:1:mux_i|Mux2~1_combout\ & (\inst2|inst3|DOUT[0]~2_combout\ $ (\inst2|inst3|DOUT[1]~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000011011101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|inst1|alu1|mux|Mux2~0_combout\,
	datab => \inst2|inst|mux_1|mux_1|mux_generate:1:mux_i|Mux2~1_combout\,
	datac => \inst2|inst3|DOUT[0]~2_combout\,
	datad => \inst2|inst3|DOUT[1]~4_combout\,
	combout => \inst2|inst1|alu1|mux|Mux2~1_combout\);

-- Location: LCCOMB_X12_Y36_N10
\inst3|OUT16B[5]~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|OUT16B[5]~10_combout\ = (\inst|Mux5~0_combout\ & (((\inst1|DOUT[5]$latch~combout\)) # (!\inst1|DOUT[7]_2052~combout\))) # (!\inst|Mux5~0_combout\ & (((\inst2|inst1|alu1|mux|Mux2~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111011111000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|DOUT[7]_2052~combout\,
	datab => \inst|Mux5~0_combout\,
	datac => \inst1|DOUT[5]$latch~combout\,
	datad => \inst2|inst1|alu1|mux|Mux2~1_combout\,
	combout => \inst3|OUT16B[5]~10_combout\);

-- Location: LCCOMB_X14_Y36_N28
\inst2|inst|reg_gen:3:regs|reg_1|y[5]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|inst|reg_gen:3:regs|reg_1|y[5]~feeder_combout\ = \inst3|OUT16B[5]~10_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst3|OUT16B[5]~10_combout\,
	combout => \inst2|inst|reg_gen:3:regs|reg_1|y[5]~feeder_combout\);

-- Location: FF_X14_Y36_N29
\inst2|inst|reg_gen:3:regs|reg_1|y[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~input_o\,
	d => \inst2|inst|reg_gen:3:regs|reg_1|y[5]~feeder_combout\,
	ena => \inst2|inst|add_reg1_dcd|Mux3~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst2|inst|reg_gen:3:regs|reg_1|y\(5));

-- Location: LCCOMB_X12_Y36_N6
\inst2|inst|reg_gen:2:regs|reg_1|y[5]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|inst|reg_gen:2:regs|reg_1|y[5]~feeder_combout\ = \inst3|OUT16B[5]~10_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst3|OUT16B[5]~10_combout\,
	combout => \inst2|inst|reg_gen:2:regs|reg_1|y[5]~feeder_combout\);

-- Location: FF_X12_Y36_N7
\inst2|inst|reg_gen:2:regs|reg_1|y[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~input_o\,
	d => \inst2|inst|reg_gen:2:regs|reg_1|y[5]~feeder_combout\,
	ena => \inst2|inst|add_reg1_dcd|Mux3~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst2|inst|reg_gen:2:regs|reg_1|y\(5));

-- Location: LCCOMB_X17_Y36_N22
\inst2|inst|mux_2|mux_1|mux_generate:1:mux_i|Mux2~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|inst|mux_2|mux_1|mux_generate:1:mux_i|Mux2~0_combout\ = (\inst4|inst1|data_out[6]~8_combout\ & ((\inst4|inst1|exception~2_combout\ & ((\inst2|inst|reg_gen:2:regs|reg_1|y\(5)))) # (!\inst4|inst1|exception~2_combout\ & 
-- (\inst2|inst|reg_gen:3:regs|reg_1|y\(5))))) # (!\inst4|inst1|data_out[6]~8_combout\ & (((\inst2|inst|reg_gen:2:regs|reg_1|y\(5)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110100100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|inst1|data_out[6]~8_combout\,
	datab => \inst4|inst1|exception~2_combout\,
	datac => \inst2|inst|reg_gen:3:regs|reg_1|y\(5),
	datad => \inst2|inst|reg_gen:2:regs|reg_1|y\(5),
	combout => \inst2|inst|mux_2|mux_1|mux_generate:1:mux_i|Mux2~0_combout\);

-- Location: LCCOMB_X14_Y36_N14
\inst2|inst|reg_gen:4:regs|reg_1|y[5]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|inst|reg_gen:4:regs|reg_1|y[5]~feeder_combout\ = \inst3|OUT16B[5]~10_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst3|OUT16B[5]~10_combout\,
	combout => \inst2|inst|reg_gen:4:regs|reg_1|y[5]~feeder_combout\);

-- Location: FF_X14_Y36_N15
\inst2|inst|reg_gen:4:regs|reg_1|y[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~input_o\,
	d => \inst2|inst|reg_gen:4:regs|reg_1|y[5]~feeder_combout\,
	ena => \inst2|inst|add_reg1_dcd|Mux3~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst2|inst|reg_gen:4:regs|reg_1|y\(5));

-- Location: LCCOMB_X17_Y36_N24
\inst2|inst|mux_2|mux_1|mux_generate:1:mux_i|Mux2~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|inst|mux_2|mux_1|mux_generate:1:mux_i|Mux2~1_combout\ = ((\inst4|inst1|data_out[6]~8_combout\ & (!\inst4|inst1|exception~2_combout\ & \inst2|inst|reg_gen:1:regs|reg_1|y\(5)))) # (!\inst2|inst|mux_2|mux_1|mux_generate:0:mux_i|Mux3~1_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|inst1|data_out[6]~8_combout\,
	datab => \inst4|inst1|exception~2_combout\,
	datac => \inst2|inst|reg_gen:1:regs|reg_1|y\(5),
	datad => \inst2|inst|mux_2|mux_1|mux_generate:0:mux_i|Mux3~1_combout\,
	combout => \inst2|inst|mux_2|mux_1|mux_generate:1:mux_i|Mux2~1_combout\);

-- Location: FF_X17_Y36_N27
\inst2|inst|reg_gen:5:regs|reg_1|y[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~input_o\,
	asdata => \inst3|OUT16B[5]~10_combout\,
	sload => VCC,
	ena => \inst2|inst|add_reg1_dcd|Mux3~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst2|inst|reg_gen:5:regs|reg_1|y\(5));

-- Location: LCCOMB_X17_Y36_N10
\inst2|inst|mux_2|mux_1|mux_generate:1:mux_i|Mux2~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|inst|mux_2|mux_1|mux_generate:1:mux_i|Mux2~2_combout\ = (\inst2|inst|mux_2|mux_1|mux_generate:1:mux_i|Mux2~1_combout\ & ((\inst2|inst|reg_gen:4:regs|reg_1|y\(5)) # ((\inst2|inst|mux_2|mux_1|mux_generate:0:mux_i|Mux3~0_combout\)))) # 
-- (!\inst2|inst|mux_2|mux_1|mux_generate:1:mux_i|Mux2~1_combout\ & (((\inst2|inst|reg_gen:5:regs|reg_1|y\(5) & !\inst2|inst|mux_2|mux_1|mux_generate:0:mux_i|Mux3~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|inst|reg_gen:4:regs|reg_1|y\(5),
	datab => \inst2|inst|mux_2|mux_1|mux_generate:1:mux_i|Mux2~1_combout\,
	datac => \inst2|inst|reg_gen:5:regs|reg_1|y\(5),
	datad => \inst2|inst|mux_2|mux_1|mux_generate:0:mux_i|Mux3~0_combout\,
	combout => \inst2|inst|mux_2|mux_1|mux_generate:1:mux_i|Mux2~2_combout\);

-- Location: LCCOMB_X17_Y36_N6
\inst2|inst|mux_2|mux_1|mux_generate:1:mux_i|Mux2~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|inst|mux_2|mux_1|mux_generate:1:mux_i|Mux2~3_combout\ = (\inst2|inst|mux_2|mux_1|mux_generate:0:mux_i|Mux3~2_combout\ & (\inst2|inst|mux_2|mux_1|mux_generate:1:mux_i|Mux2~0_combout\)) # (!\inst2|inst|mux_2|mux_1|mux_generate:0:mux_i|Mux3~2_combout\ 
-- & ((\inst2|inst|mux_2|mux_1|mux_generate:1:mux_i|Mux2~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|inst|mux_2|mux_1|mux_generate:0:mux_i|Mux3~2_combout\,
	datab => \inst2|inst|mux_2|mux_1|mux_generate:1:mux_i|Mux2~0_combout\,
	datad => \inst2|inst|mux_2|mux_1|mux_generate:1:mux_i|Mux2~2_combout\,
	combout => \inst2|inst|mux_2|mux_1|mux_generate:1:mux_i|Mux2~3_combout\);

-- Location: LCCOMB_X17_Y36_N30
\inst2|inst2|OUT16B[5]~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|inst2|OUT16B[5]~9_combout\ = (\inst|Mux7~8_combout\ & (\inst4|inst1|INS_OUT[5]~6_combout\)) # (!\inst|Mux7~8_combout\ & ((\inst2|inst|mux_2|mux_1|mux_generate:1:mux_i|Mux2~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Mux7~8_combout\,
	datab => \inst4|inst1|INS_OUT[5]~6_combout\,
	datad => \inst2|inst|mux_2|mux_1|mux_generate:1:mux_i|Mux2~3_combout\,
	combout => \inst2|inst2|OUT16B[5]~9_combout\);

-- Location: LCCOMB_X17_Y32_N2
\inst2|inst1|alu1|adder|C[2]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|inst1|alu1|adder|C[2]~1_combout\ = (\inst2|inst|mux_1|mux_1|mux_generate:1:mux_i|Mux2~1_combout\ & ((\inst2|inst1|alu1|adder|C[1]~0_combout\) # (\inst2|inst3|DOUT[2]~3_combout\ $ (\inst2|inst2|OUT16B[5]~9_combout\)))) # 
-- (!\inst2|inst|mux_1|mux_1|mux_generate:1:mux_i|Mux2~1_combout\ & (\inst2|inst1|alu1|adder|C[1]~0_combout\ & (\inst2|inst3|DOUT[2]~3_combout\ $ (\inst2|inst2|OUT16B[5]~9_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111011001100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|inst3|DOUT[2]~3_combout\,
	datab => \inst2|inst2|OUT16B[5]~9_combout\,
	datac => \inst2|inst|mux_1|mux_1|mux_generate:1:mux_i|Mux2~1_combout\,
	datad => \inst2|inst1|alu1|adder|C[1]~0_combout\,
	combout => \inst2|inst1|alu1|adder|C[2]~1_combout\);

-- Location: LCCOMB_X19_Y32_N10
\inst2|inst1|alu1|mux|Mux1~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|inst1|alu1|mux|Mux1~0_combout\ = \inst2|inst2|OUT16B[6]~8_combout\ $ (((\inst2|inst3|DOUT[1]~4_combout\ & (\inst2|inst3|DOUT[2]~3_combout\ $ (\inst2|inst1|alu1|adder|C[2]~1_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011011101001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|inst3|DOUT[2]~3_combout\,
	datab => \inst2|inst3|DOUT[1]~4_combout\,
	datac => \inst2|inst1|alu1|adder|C[2]~1_combout\,
	datad => \inst2|inst2|OUT16B[6]~8_combout\,
	combout => \inst2|inst1|alu1|mux|Mux1~0_combout\);

-- Location: LCCOMB_X19_Y32_N26
\inst2|inst1|alu1|mux|Mux1~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|inst1|alu1|mux|Mux1~1_combout\ = (\inst2|inst|mux_1|mux_1|mux_generate:1:mux_i|Mux1~1_combout\ & (\inst2|inst3|DOUT[1]~4_combout\ $ (((\inst2|inst1|alu1|mux|Mux1~0_combout\) # (\inst2|inst3|DOUT[0]~2_combout\))))) # 
-- (!\inst2|inst|mux_1|mux_1|mux_generate:1:mux_i|Mux1~1_combout\ & (\inst2|inst1|alu1|mux|Mux1~0_combout\ & (\inst2|inst3|DOUT[1]~4_combout\ $ (\inst2|inst3|DOUT[0]~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010001101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|inst3|DOUT[1]~4_combout\,
	datab => \inst2|inst|mux_1|mux_1|mux_generate:1:mux_i|Mux1~1_combout\,
	datac => \inst2|inst1|alu1|mux|Mux1~0_combout\,
	datad => \inst2|inst3|DOUT[0]~2_combout\,
	combout => \inst2|inst1|alu1|mux|Mux1~1_combout\);

-- Location: LCCOMB_X12_Y30_N4
\inst1|reg_gen:30:regs|y[6]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|reg_gen:30:regs|y[6]~feeder_combout\ = \inst2|inst|mux_2|mux_1|mux_generate:1:mux_i|Mux1~3_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst2|inst|mux_2|mux_1|mux_generate:1:mux_i|Mux1~3_combout\,
	combout => \inst1|reg_gen:30:regs|y[6]~feeder_combout\);

-- Location: FF_X12_Y30_N5
\inst1|reg_gen:30:regs|y[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \inst1|reg_gen:30:regs|y[6]~feeder_combout\,
	ena => \inst1|dec_to_en\(30),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|reg_gen:30:regs|y\(6));

-- Location: FF_X14_Y33_N27
\inst2|inst|reg_gen:1:regs|reg_2|y[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~input_o\,
	asdata => \inst3|OUT16B[14]~1_combout\,
	sload => VCC,
	ena => \inst2|inst|add_reg1_dcd|Mux3~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst2|inst|reg_gen:1:regs|reg_2|y\(6));

-- Location: LCCOMB_X14_Y33_N26
\inst2|inst|mux_1|mux_1|mux_generate:3:mux_i|Mux1~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|inst|mux_1|mux_1|mux_generate:3:mux_i|Mux1~0_combout\ = (\inst4|inst1|data_out[9]~3_combout\ & (\inst2|inst|reg_gen:1:regs|reg_2|y\(6) & !\inst4|inst1|exception~2_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst4|inst1|data_out[9]~3_combout\,
	datac => \inst2|inst|reg_gen:1:regs|reg_2|y\(6),
	datad => \inst4|inst1|exception~2_combout\,
	combout => \inst2|inst|mux_1|mux_1|mux_generate:3:mux_i|Mux1~0_combout\);

-- Location: FF_X12_Y33_N19
\inst2|inst|reg_gen:6:regs|reg_2|y[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~input_o\,
	asdata => \inst3|OUT16B[14]~1_combout\,
	sload => VCC,
	ena => \inst2|inst|add_reg1_dcd|Mux3~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst2|inst|reg_gen:6:regs|reg_2|y\(6));

-- Location: LCCOMB_X12_Y33_N30
\inst2|inst|mux_1|mux_1|mux_generate:3:mux_i|Mux1~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|inst|mux_1|mux_1|mux_generate:3:mux_i|Mux1~1_combout\ = (\inst2|inst|mux_1|mux_1|mux_generate:2:mux_i|Mux2~0_combout\ & ((\inst4|inst1|INS_OUT[15]~4_combout\ & ((\inst2|inst|reg_gen:6:regs|reg_2|y\(6)))) # (!\inst4|inst1|INS_OUT[15]~4_combout\ & 
-- (\inst2|inst|mux_1|mux_1|mux_generate:3:mux_i|Mux1~0_combout\)))) # (!\inst2|inst|mux_1|mux_1|mux_generate:2:mux_i|Mux2~0_combout\ & (((!\inst4|inst1|INS_OUT[15]~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100101100001011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|inst|mux_1|mux_1|mux_generate:3:mux_i|Mux1~0_combout\,
	datab => \inst2|inst|mux_1|mux_1|mux_generate:2:mux_i|Mux2~0_combout\,
	datac => \inst4|inst1|INS_OUT[15]~4_combout\,
	datad => \inst2|inst|reg_gen:6:regs|reg_2|y\(6),
	combout => \inst2|inst|mux_1|mux_1|mux_generate:3:mux_i|Mux1~1_combout\);

-- Location: LCCOMB_X13_Y33_N30
\inst2|inst2|OUT16B[14]~17\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|inst2|OUT16B[14]~17_combout\ = (\inst|Mux7~8_combout\ & (\inst4|inst1|INS_OUT[5]~6_combout\)) # (!\inst|Mux7~8_combout\ & ((\inst2|inst|mux_2|mux_1|mux_generate:3:mux_i|Mux1~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|inst1|INS_OUT[5]~6_combout\,
	datac => \inst|Mux7~8_combout\,
	datad => \inst2|inst|mux_2|mux_1|mux_generate:3:mux_i|Mux1~3_combout\,
	combout => \inst2|inst2|OUT16B[14]~17_combout\);

-- Location: LCCOMB_X13_Y32_N12
\inst2|inst1|alu3|adder|C[2]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|inst1|alu3|adder|C[2]~1_combout\ = (\inst2|inst|mux_1|mux_1|mux_generate:3:mux_i|Mux2~1_combout\ & ((\inst2|inst1|alu3|adder|C[1]~0_combout\) # (\inst2|inst3|DOUT[2]~3_combout\ $ (\inst2|inst2|OUT16B[13]~14_combout\)))) # 
-- (!\inst2|inst|mux_1|mux_1|mux_generate:3:mux_i|Mux2~1_combout\ & (\inst2|inst1|alu3|adder|C[1]~0_combout\ & (\inst2|inst3|DOUT[2]~3_combout\ $ (\inst2|inst2|OUT16B[13]~14_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111011001100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|inst3|DOUT[2]~3_combout\,
	datab => \inst2|inst2|OUT16B[13]~14_combout\,
	datac => \inst2|inst|mux_1|mux_1|mux_generate:3:mux_i|Mux2~1_combout\,
	datad => \inst2|inst1|alu3|adder|C[1]~0_combout\,
	combout => \inst2|inst1|alu3|adder|C[2]~1_combout\);

-- Location: LCCOMB_X12_Y33_N14
\inst2|inst1|alu3|mux|Mux1~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|inst1|alu3|mux|Mux1~0_combout\ = \inst2|inst2|OUT16B[14]~17_combout\ $ (((\inst2|inst3|DOUT[1]~4_combout\ & (\inst2|inst3|DOUT[2]~3_combout\ $ (\inst2|inst1|alu3|adder|C[2]~1_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011010001111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|inst3|DOUT[2]~3_combout\,
	datab => \inst2|inst3|DOUT[1]~4_combout\,
	datac => \inst2|inst2|OUT16B[14]~17_combout\,
	datad => \inst2|inst1|alu3|adder|C[2]~1_combout\,
	combout => \inst2|inst1|alu3|mux|Mux1~0_combout\);

-- Location: LCCOMB_X12_Y33_N16
\inst2|inst1|alu3|mux|Mux1~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|inst1|alu3|mux|Mux1~1_combout\ = (\inst2|inst|mux_1|mux_1|mux_generate:3:mux_i|Mux1~1_combout\ & (\inst2|inst3|DOUT[1]~4_combout\ $ (((\inst2|inst1|alu3|mux|Mux1~0_combout\) # (\inst2|inst3|DOUT[0]~2_combout\))))) # 
-- (!\inst2|inst|mux_1|mux_1|mux_generate:3:mux_i|Mux1~1_combout\ & (\inst2|inst1|alu3|mux|Mux1~0_combout\ & (\inst2|inst3|DOUT[1]~4_combout\ $ (\inst2|inst3|DOUT[0]~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001001101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|inst|mux_1|mux_1|mux_generate:3:mux_i|Mux1~1_combout\,
	datab => \inst2|inst3|DOUT[1]~4_combout\,
	datac => \inst2|inst1|alu3|mux|Mux1~0_combout\,
	datad => \inst2|inst3|DOUT[0]~2_combout\,
	combout => \inst2|inst1|alu3|mux|Mux1~1_combout\);

-- Location: FF_X14_Y34_N29
\inst1|reg_gen:31:regs|y[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	asdata => \inst2|inst|mux_2|mux_1|mux_generate:3:mux_i|Mux1~3_combout\,
	sload => VCC,
	ena => \inst1|dec_to_en\(31),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|reg_gen:31:regs|y\(6));

-- Location: FF_X11_Y32_N25
\inst1|reg_gen:16:regs|y[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	asdata => \inst2|inst|mux_2|mux_1|mux_generate:1:mux_i|Mux1~3_combout\,
	sload => VCC,
	ena => \inst1|dec_to_en[16]~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|reg_gen:16:regs|y\(6));

-- Location: LCCOMB_X10_Y31_N26
\inst1|reg_gen:24:regs|y[6]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|reg_gen:24:regs|y[6]~feeder_combout\ = \inst2|inst|mux_2|mux_1|mux_generate:1:mux_i|Mux1~3_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst2|inst|mux_2|mux_1|mux_generate:1:mux_i|Mux1~3_combout\,
	combout => \inst1|reg_gen:24:regs|y[6]~feeder_combout\);

-- Location: FF_X10_Y31_N27
\inst1|reg_gen:24:regs|y[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \inst1|reg_gen:24:regs|y[6]~feeder_combout\,
	ena => \inst1|dec_to_en[24]~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|reg_gen:24:regs|y\(6));

-- Location: FF_X11_Y31_N29
\inst1|reg_gen:8:regs|y[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	asdata => \inst2|inst|mux_2|mux_1|mux_generate:1:mux_i|Mux1~3_combout\,
	sload => VCC,
	ena => \inst1|dec_to_en[8]~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|reg_gen:8:regs|y\(6));

-- Location: LCCOMB_X11_Y31_N28
\inst1|DOUT[14]~56\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|DOUT[14]~56_combout\ = (\inst2|inst1|alu1|mux|Mux3~1_combout\ & (\inst1|reg_gen:24:regs|y\(6))) # (!\inst2|inst1|alu1|mux|Mux3~1_combout\ & ((\inst1|reg_gen:8:regs|y\(6))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|reg_gen:24:regs|y\(6),
	datac => \inst1|reg_gen:8:regs|y\(6),
	datad => \inst2|inst1|alu1|mux|Mux3~1_combout\,
	combout => \inst1|DOUT[14]~56_combout\);

-- Location: LCCOMB_X9_Y31_N0
\inst1|reg_gen:26:regs|y[6]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|reg_gen:26:regs|y[6]~feeder_combout\ = \inst2|inst|mux_2|mux_1|mux_generate:1:mux_i|Mux1~3_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst2|inst|mux_2|mux_1|mux_generate:1:mux_i|Mux1~3_combout\,
	combout => \inst1|reg_gen:26:regs|y[6]~feeder_combout\);

-- Location: FF_X9_Y31_N1
\inst1|reg_gen:26:regs|y[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \inst1|reg_gen:26:regs|y[6]~feeder_combout\,
	ena => \inst1|dec_to_en\(26),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|reg_gen:26:regs|y\(6));

-- Location: LCCOMB_X9_Y31_N22
\inst1|reg_gen:10:regs|y[6]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|reg_gen:10:regs|y[6]~feeder_combout\ = \inst2|inst|mux_2|mux_1|mux_generate:1:mux_i|Mux1~3_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst2|inst|mux_2|mux_1|mux_generate:1:mux_i|Mux1~3_combout\,
	combout => \inst1|reg_gen:10:regs|y[6]~feeder_combout\);

-- Location: FF_X9_Y31_N23
\inst1|reg_gen:10:regs|y[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \inst1|reg_gen:10:regs|y[6]~feeder_combout\,
	ena => \inst1|dec_to_en\(10),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|reg_gen:10:regs|y\(6));

-- Location: LCCOMB_X9_Y32_N24
\inst1|DOUT[14]~64\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|DOUT[14]~64_combout\ = (\inst2|inst1|alu1|mux|Mux3~1_combout\ & (\inst1|reg_gen:26:regs|y\(6))) # (!\inst2|inst1|alu1|mux|Mux3~1_combout\ & ((\inst1|reg_gen:10:regs|y\(6))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|reg_gen:26:regs|y\(6),
	datab => \inst1|reg_gen:10:regs|y\(6),
	datad => \inst2|inst1|alu1|mux|Mux3~1_combout\,
	combout => \inst1|DOUT[14]~64_combout\);

-- Location: LCCOMB_X9_Y32_N30
\inst1|reg_gen:20:regs|y[6]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|reg_gen:20:regs|y[6]~feeder_combout\ = \inst2|inst|mux_2|mux_1|mux_generate:1:mux_i|Mux1~3_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst2|inst|mux_2|mux_1|mux_generate:1:mux_i|Mux1~3_combout\,
	combout => \inst1|reg_gen:20:regs|y[6]~feeder_combout\);

-- Location: FF_X9_Y32_N31
\inst1|reg_gen:20:regs|y[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \inst1|reg_gen:20:regs|y[6]~feeder_combout\,
	ena => \inst1|dec_to_en\(20),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|reg_gen:20:regs|y\(6));

-- Location: FF_X9_Y32_N17
\inst1|reg_gen:4:regs|y[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	asdata => \inst2|inst|mux_2|mux_1|mux_generate:1:mux_i|Mux1~3_combout\,
	sload => VCC,
	ena => \inst1|dec_to_en\(4),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|reg_gen:4:regs|y\(6));

-- Location: LCCOMB_X9_Y32_N16
\inst1|DOUT[14]~65\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|DOUT[14]~65_combout\ = (\inst2|inst1|alu0|mux|Mux0~1_combout\ & (((\inst2|inst1|alu1|mux|Mux3~1_combout\)))) # (!\inst2|inst1|alu0|mux|Mux0~1_combout\ & ((\inst2|inst1|alu1|mux|Mux3~1_combout\ & (\inst1|reg_gen:20:regs|y\(6))) # 
-- (!\inst2|inst1|alu1|mux|Mux3~1_combout\ & ((\inst1|reg_gen:4:regs|y\(6))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|inst1|alu0|mux|Mux0~1_combout\,
	datab => \inst1|reg_gen:20:regs|y\(6),
	datac => \inst1|reg_gen:4:regs|y\(6),
	datad => \inst2|inst1|alu1|mux|Mux3~1_combout\,
	combout => \inst1|DOUT[14]~65_combout\);

-- Location: FF_X12_Y32_N31
\inst1|reg_gen:28:regs|y[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	asdata => \inst2|inst|mux_2|mux_1|mux_generate:1:mux_i|Mux1~3_combout\,
	sload => VCC,
	ena => \inst1|dec_to_en\(28),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|reg_gen:28:regs|y\(6));

-- Location: FF_X10_Y30_N25
\inst1|reg_gen:12:regs|y[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	asdata => \inst2|inst|mux_2|mux_1|mux_generate:1:mux_i|Mux1~3_combout\,
	sload => VCC,
	ena => \inst1|dec_to_en\(12),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|reg_gen:12:regs|y\(6));

-- Location: LCCOMB_X12_Y32_N30
\inst1|DOUT[14]~66\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|DOUT[14]~66_combout\ = (\inst1|DOUT[14]~65_combout\ & (((\inst1|reg_gen:28:regs|y\(6))) # (!\inst2|inst1|alu0|mux|Mux0~1_combout\))) # (!\inst1|DOUT[14]~65_combout\ & (\inst2|inst1|alu0|mux|Mux0~1_combout\ & ((\inst1|reg_gen:12:regs|y\(6)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110011010100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|DOUT[14]~65_combout\,
	datab => \inst2|inst1|alu0|mux|Mux0~1_combout\,
	datac => \inst1|reg_gen:28:regs|y\(6),
	datad => \inst1|reg_gen:12:regs|y\(6),
	combout => \inst1|DOUT[14]~66_combout\);

-- Location: FF_X11_Y32_N5
\inst1|reg_gen:18:regs|y[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	asdata => \inst2|inst|mux_2|mux_1|mux_generate:1:mux_i|Mux1~3_combout\,
	sload => VCC,
	ena => \inst1|dec_to_en\(18),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|reg_gen:18:regs|y\(6));

-- Location: LCCOMB_X11_Y32_N4
\inst1|DOUT[14]~67\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|DOUT[14]~67_combout\ = (\inst1|DOUT[12]~39_combout\ & (((\inst1|DOUT[12]~37_combout\)))) # (!\inst1|DOUT[12]~39_combout\ & ((\inst1|DOUT[12]~37_combout\ & (\inst1|DOUT[14]~66_combout\)) # (!\inst1|DOUT[12]~37_combout\ & 
-- ((\inst1|reg_gen:18:regs|y\(6))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|DOUT[12]~39_combout\,
	datab => \inst1|DOUT[14]~66_combout\,
	datac => \inst1|reg_gen:18:regs|y\(6),
	datad => \inst1|DOUT[12]~37_combout\,
	combout => \inst1|DOUT[14]~67_combout\);

-- Location: LCCOMB_X11_Y32_N2
\inst1|DOUT[14]~72\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|DOUT[14]~72_combout\ = (\inst1|DOUT[12]~39_combout\ & ((\inst1|DOUT[14]~67_combout\ & ((\inst1|DOUT[14]~71_combout\))) # (!\inst1|DOUT[14]~67_combout\ & (\inst1|DOUT[14]~64_combout\)))) # (!\inst1|DOUT[12]~39_combout\ & 
-- (((\inst1|DOUT[14]~67_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100001011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|DOUT[12]~39_combout\,
	datab => \inst1|DOUT[14]~64_combout\,
	datac => \inst1|DOUT[14]~67_combout\,
	datad => \inst1|DOUT[14]~71_combout\,
	combout => \inst1|DOUT[14]~72_combout\);

-- Location: FF_X14_Y34_N27
\inst1|reg_gen:15:regs|y[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	asdata => \inst2|inst|mux_2|mux_1|mux_generate:3:mux_i|Mux1~3_combout\,
	sload => VCC,
	ena => \inst1|dec_to_en\(15),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|reg_gen:15:regs|y\(6));

-- Location: LCCOMB_X14_Y31_N18
\inst1|reg_gen:23:regs|y[6]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|reg_gen:23:regs|y[6]~feeder_combout\ = \inst2|inst|mux_2|mux_1|mux_generate:3:mux_i|Mux1~3_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst2|inst|mux_2|mux_1|mux_generate:3:mux_i|Mux1~3_combout\,
	combout => \inst1|reg_gen:23:regs|y[6]~feeder_combout\);

-- Location: FF_X14_Y31_N19
\inst1|reg_gen:23:regs|y[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \inst1|reg_gen:23:regs|y[6]~feeder_combout\,
	ena => \inst1|dec_to_en\(23),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|reg_gen:23:regs|y\(6));

-- Location: FF_X12_Y31_N19
\inst1|reg_gen:7:regs|y[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	asdata => \inst2|inst|mux_2|mux_1|mux_generate:3:mux_i|Mux1~3_combout\,
	sload => VCC,
	ena => \inst1|dec_to_en\(7),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|reg_gen:7:regs|y\(6));

-- Location: LCCOMB_X13_Y31_N16
\inst1|DOUT[14]~59\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|DOUT[14]~59_combout\ = (\inst2|inst1|alu1|mux|Mux3~1_combout\ & (\inst1|reg_gen:23:regs|y\(6))) # (!\inst2|inst1|alu1|mux|Mux3~1_combout\ & ((\inst1|reg_gen:7:regs|y\(6))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|reg_gen:23:regs|y\(6),
	datab => \inst1|reg_gen:7:regs|y\(6),
	datad => \inst2|inst1|alu1|mux|Mux3~1_combout\,
	combout => \inst1|DOUT[14]~59_combout\);

-- Location: LCCOMB_X11_Y30_N28
\inst1|reg_gen:22:regs|y[6]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|reg_gen:22:regs|y[6]~feeder_combout\ = \inst2|inst|mux_2|mux_1|mux_generate:1:mux_i|Mux1~3_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst2|inst|mux_2|mux_1|mux_generate:1:mux_i|Mux1~3_combout\,
	combout => \inst1|reg_gen:22:regs|y[6]~feeder_combout\);

-- Location: FF_X11_Y30_N29
\inst1|reg_gen:22:regs|y[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \inst1|reg_gen:22:regs|y[6]~feeder_combout\,
	ena => \inst1|dec_to_en\(22),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|reg_gen:22:regs|y\(6));

-- Location: LCCOMB_X11_Y30_N18
\inst1|reg_gen:6:regs|y[6]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|reg_gen:6:regs|y[6]~feeder_combout\ = \inst2|inst|mux_2|mux_1|mux_generate:1:mux_i|Mux1~3_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst2|inst|mux_2|mux_1|mux_generate:1:mux_i|Mux1~3_combout\,
	combout => \inst1|reg_gen:6:regs|y[6]~feeder_combout\);

-- Location: FF_X11_Y30_N19
\inst1|reg_gen:6:regs|y[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \inst1|reg_gen:6:regs|y[6]~feeder_combout\,
	ena => \inst1|dec_to_en\(6),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|reg_gen:6:regs|y\(6));

-- Location: LCCOMB_X12_Y30_N14
\inst1|DOUT[14]~60\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|DOUT[14]~60_combout\ = (\inst2|inst1|alu0|mux|Mux0~1_combout\ & (((\inst2|inst1|alu1|mux|Mux3~1_combout\)))) # (!\inst2|inst1|alu0|mux|Mux0~1_combout\ & ((\inst2|inst1|alu1|mux|Mux3~1_combout\ & (\inst1|reg_gen:22:regs|y\(6))) # 
-- (!\inst2|inst1|alu1|mux|Mux3~1_combout\ & ((\inst1|reg_gen:6:regs|y\(6))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110001111100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|reg_gen:22:regs|y\(6),
	datab => \inst2|inst1|alu0|mux|Mux0~1_combout\,
	datac => \inst2|inst1|alu1|mux|Mux3~1_combout\,
	datad => \inst1|reg_gen:6:regs|y\(6),
	combout => \inst1|DOUT[14]~60_combout\);

-- Location: LCCOMB_X14_Y31_N30
\inst1|reg_gen:14:regs|y[6]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|reg_gen:14:regs|y[6]~feeder_combout\ = \inst2|inst|mux_2|mux_1|mux_generate:1:mux_i|Mux1~3_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst2|inst|mux_2|mux_1|mux_generate:1:mux_i|Mux1~3_combout\,
	combout => \inst1|reg_gen:14:regs|y[6]~feeder_combout\);

-- Location: FF_X14_Y31_N31
\inst1|reg_gen:14:regs|y[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \inst1|reg_gen:14:regs|y[6]~feeder_combout\,
	ena => \inst1|dec_to_en\(14),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|reg_gen:14:regs|y\(6));

-- Location: LCCOMB_X12_Y30_N28
\inst1|DOUT[14]~61\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|DOUT[14]~61_combout\ = (\inst1|DOUT[14]~60_combout\ & (((\inst1|reg_gen:30:regs|y\(6)) # (!\inst2|inst1|alu0|mux|Mux0~1_combout\)))) # (!\inst1|DOUT[14]~60_combout\ & (\inst1|reg_gen:14:regs|y\(6) & ((\inst2|inst1|alu0|mux|Mux0~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|DOUT[14]~60_combout\,
	datab => \inst1|reg_gen:14:regs|y\(6),
	datac => \inst1|reg_gen:30:regs|y\(6),
	datad => \inst2|inst1|alu0|mux|Mux0~1_combout\,
	combout => \inst1|DOUT[14]~61_combout\);

-- Location: LCCOMB_X11_Y33_N24
\inst1|DOUT[14]~62\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|DOUT[14]~62_combout\ = (\inst1|DOUT[12]~27_combout\ & ((\inst1|DOUT[14]~59_combout\) # ((\inst1|DOUT[12]~25_combout\)))) # (!\inst1|DOUT[12]~27_combout\ & (((\inst1|DOUT[14]~61_combout\ & !\inst1|DOUT[12]~25_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|DOUT[14]~59_combout\,
	datab => \inst1|DOUT[12]~27_combout\,
	datac => \inst1|DOUT[14]~61_combout\,
	datad => \inst1|DOUT[12]~25_combout\,
	combout => \inst1|DOUT[14]~62_combout\);

-- Location: FF_X10_Y34_N21
\inst1|reg_gen:13:regs|y[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	asdata => \inst2|inst|mux_2|mux_1|mux_generate:3:mux_i|Mux1~3_combout\,
	sload => VCC,
	ena => \inst1|dec_to_en\(13),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|reg_gen:13:regs|y\(6));

-- Location: FF_X13_Y33_N23
\inst1|reg_gen:5:regs|y[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	asdata => \inst2|inst|mux_2|mux_1|mux_generate:3:mux_i|Mux1~3_combout\,
	sload => VCC,
	ena => \inst1|dec_to_en\(5),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|reg_gen:5:regs|y\(6));

-- Location: LCCOMB_X10_Y34_N6
\inst1|reg_gen:21:regs|y[6]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|reg_gen:21:regs|y[6]~feeder_combout\ = \inst2|inst|mux_2|mux_1|mux_generate:3:mux_i|Mux1~3_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst2|inst|mux_2|mux_1|mux_generate:3:mux_i|Mux1~3_combout\,
	combout => \inst1|reg_gen:21:regs|y[6]~feeder_combout\);

-- Location: FF_X10_Y34_N7
\inst1|reg_gen:21:regs|y[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \inst1|reg_gen:21:regs|y[6]~feeder_combout\,
	ena => \inst1|dec_to_en\(21),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|reg_gen:21:regs|y\(6));

-- Location: LCCOMB_X13_Y33_N22
\inst1|DOUT[14]~57\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|DOUT[14]~57_combout\ = (\inst2|inst1|alu1|mux|Mux3~1_combout\ & ((\inst2|inst1|alu0|mux|Mux0~1_combout\) # ((\inst1|reg_gen:21:regs|y\(6))))) # (!\inst2|inst1|alu1|mux|Mux3~1_combout\ & (!\inst2|inst1|alu0|mux|Mux0~1_combout\ & 
-- (\inst1|reg_gen:5:regs|y\(6))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|inst1|alu1|mux|Mux3~1_combout\,
	datab => \inst2|inst1|alu0|mux|Mux0~1_combout\,
	datac => \inst1|reg_gen:5:regs|y\(6),
	datad => \inst1|reg_gen:21:regs|y\(6),
	combout => \inst1|DOUT[14]~57_combout\);

-- Location: FF_X13_Y33_N13
\inst1|reg_gen:29:regs|y[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	asdata => \inst2|inst|mux_2|mux_1|mux_generate:3:mux_i|Mux1~3_combout\,
	sload => VCC,
	ena => \inst1|dec_to_en\(29),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|reg_gen:29:regs|y\(6));

-- Location: LCCOMB_X13_Y33_N12
\inst1|DOUT[14]~58\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|DOUT[14]~58_combout\ = (\inst1|DOUT[14]~57_combout\ & (((\inst1|reg_gen:29:regs|y\(6)) # (!\inst2|inst1|alu0|mux|Mux0~1_combout\)))) # (!\inst1|DOUT[14]~57_combout\ & (\inst1|reg_gen:13:regs|y\(6) & ((\inst2|inst1|alu0|mux|Mux0~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110001011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|reg_gen:13:regs|y\(6),
	datab => \inst1|DOUT[14]~57_combout\,
	datac => \inst1|reg_gen:29:regs|y\(6),
	datad => \inst2|inst1|alu0|mux|Mux0~1_combout\,
	combout => \inst1|DOUT[14]~58_combout\);

-- Location: LCCOMB_X11_Y33_N10
\inst1|DOUT[14]~63\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|DOUT[14]~63_combout\ = (\inst1|DOUT[14]~62_combout\ & ((\inst1|reg_gen:15:regs|y\(6)) # ((!\inst1|DOUT[12]~25_combout\)))) # (!\inst1|DOUT[14]~62_combout\ & (((\inst1|DOUT[12]~25_combout\ & \inst1|DOUT[14]~58_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011110010001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|reg_gen:15:regs|y\(6),
	datab => \inst1|DOUT[14]~62_combout\,
	datac => \inst1|DOUT[12]~25_combout\,
	datad => \inst1|DOUT[14]~58_combout\,
	combout => \inst1|DOUT[14]~63_combout\);

-- Location: LCCOMB_X11_Y33_N28
\inst1|DOUT[14]~73\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|DOUT[14]~73_combout\ = (\inst1|DOUT[12]~34_combout\ & (\inst1|DOUT[12]~32_combout\)) # (!\inst1|DOUT[12]~34_combout\ & ((\inst1|DOUT[12]~32_combout\ & ((\inst1|DOUT[14]~63_combout\))) # (!\inst1|DOUT[12]~32_combout\ & 
-- (\inst1|DOUT[14]~72_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|DOUT[12]~34_combout\,
	datab => \inst1|DOUT[12]~32_combout\,
	datac => \inst1|DOUT[14]~72_combout\,
	datad => \inst1|DOUT[14]~63_combout\,
	combout => \inst1|DOUT[14]~73_combout\);

-- Location: LCCOMB_X11_Y33_N14
\inst1|DOUT[14]~74\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|DOUT[14]~74_combout\ = (\inst1|DOUT[12]~34_combout\ & ((\inst1|DOUT[14]~73_combout\ & (\inst1|reg_gen:16:regs|y\(6))) # (!\inst1|DOUT[14]~73_combout\ & ((\inst1|DOUT[14]~56_combout\))))) # (!\inst1|DOUT[12]~34_combout\ & 
-- (((\inst1|DOUT[14]~73_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|DOUT[12]~34_combout\,
	datab => \inst1|reg_gen:16:regs|y\(6),
	datac => \inst1|DOUT[14]~56_combout\,
	datad => \inst1|DOUT[14]~73_combout\,
	combout => \inst1|DOUT[14]~74_combout\);

-- Location: LCCOMB_X12_Y33_N10
\inst1|DOUT[14]~75\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|DOUT[14]~75_combout\ = (\inst1|DOUT[12]~49_combout\ & ((\inst1|DOUT[14]~74_combout\))) # (!\inst1|DOUT[12]~49_combout\ & (\inst1|reg_gen:31:regs|y\(6)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst1|reg_gen:31:regs|y\(6),
	datac => \inst1|DOUT[12]~49_combout\,
	datad => \inst1|DOUT[14]~74_combout\,
	combout => \inst1|DOUT[14]~75_combout\);

-- Location: LCCOMB_X12_Y33_N24
\inst1|DOUT[14]$latch\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|DOUT[14]$latch~combout\ = (!\inst1|DOUT[15]~55_combout\ & ((GLOBAL(\inst1|DOUT[15]~53clkctrl_outclk\) & ((\inst1|DOUT[14]~75_combout\))) # (!GLOBAL(\inst1|DOUT[15]~53clkctrl_outclk\) & (\inst1|DOUT[14]$latch~combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010000000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|DOUT[15]~55_combout\,
	datab => \inst1|DOUT[14]$latch~combout\,
	datac => \inst1|DOUT[15]~53clkctrl_outclk\,
	datad => \inst1|DOUT[14]~75_combout\,
	combout => \inst1|DOUT[14]$latch~combout\);

-- Location: LCCOMB_X12_Y33_N4
\inst3|OUT16B[14]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|OUT16B[14]~1_combout\ = (\inst|Mux5~0_combout\ & (((\inst1|DOUT[14]$latch~combout\) # (!\inst1|DOUT[15]_2612~combout\)))) # (!\inst|Mux5~0_combout\ & (\inst2|inst1|alu3|mux|Mux1~1_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111001001110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Mux5~0_combout\,
	datab => \inst2|inst1|alu3|mux|Mux1~1_combout\,
	datac => \inst1|DOUT[15]_2612~combout\,
	datad => \inst1|DOUT[14]$latch~combout\,
	combout => \inst3|OUT16B[14]~1_combout\);

-- Location: LCCOMB_X14_Y33_N16
\inst2|inst|reg_gen:4:regs|reg_2|y[6]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|inst|reg_gen:4:regs|reg_2|y[6]~feeder_combout\ = \inst3|OUT16B[14]~1_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst3|OUT16B[14]~1_combout\,
	combout => \inst2|inst|reg_gen:4:regs|reg_2|y[6]~feeder_combout\);

-- Location: FF_X14_Y33_N17
\inst2|inst|reg_gen:4:regs|reg_2|y[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~input_o\,
	d => \inst2|inst|reg_gen:4:regs|reg_2|y[6]~feeder_combout\,
	ena => \inst2|inst|add_reg1_dcd|Mux3~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst2|inst|reg_gen:4:regs|reg_2|y\(6));

-- Location: LCCOMB_X14_Y35_N4
\inst2|inst|mux_2|mux_1|mux_generate:3:mux_i|Mux1~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|inst|mux_2|mux_1|mux_generate:3:mux_i|Mux1~1_combout\ = ((!\inst4|inst1|exception~2_combout\ & (\inst4|inst1|data_out[6]~8_combout\ & \inst2|inst|reg_gen:1:regs|reg_2|y\(6)))) # (!\inst2|inst|mux_2|mux_1|mux_generate:0:mux_i|Mux3~1_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111001100110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|inst1|exception~2_combout\,
	datab => \inst2|inst|mux_2|mux_1|mux_generate:0:mux_i|Mux3~1_combout\,
	datac => \inst4|inst1|data_out[6]~8_combout\,
	datad => \inst2|inst|reg_gen:1:regs|reg_2|y\(6),
	combout => \inst2|inst|mux_2|mux_1|mux_generate:3:mux_i|Mux1~1_combout\);

-- Location: LCCOMB_X14_Y35_N10
\inst2|inst|reg_gen:5:regs|reg_2|y[6]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|inst|reg_gen:5:regs|reg_2|y[6]~feeder_combout\ = \inst3|OUT16B[14]~1_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst3|OUT16B[14]~1_combout\,
	combout => \inst2|inst|reg_gen:5:regs|reg_2|y[6]~feeder_combout\);

-- Location: FF_X14_Y35_N11
\inst2|inst|reg_gen:5:regs|reg_2|y[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~input_o\,
	d => \inst2|inst|reg_gen:5:regs|reg_2|y[6]~feeder_combout\,
	ena => \inst2|inst|add_reg1_dcd|Mux3~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst2|inst|reg_gen:5:regs|reg_2|y\(6));

-- Location: LCCOMB_X14_Y35_N26
\inst2|inst|mux_2|mux_1|mux_generate:3:mux_i|Mux1~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|inst|mux_2|mux_1|mux_generate:3:mux_i|Mux1~2_combout\ = (\inst2|inst|mux_2|mux_1|mux_generate:0:mux_i|Mux3~0_combout\ & (((\inst2|inst|mux_2|mux_1|mux_generate:3:mux_i|Mux1~1_combout\)))) # 
-- (!\inst2|inst|mux_2|mux_1|mux_generate:0:mux_i|Mux3~0_combout\ & ((\inst2|inst|mux_2|mux_1|mux_generate:3:mux_i|Mux1~1_combout\ & (\inst2|inst|reg_gen:4:regs|reg_2|y\(6))) # (!\inst2|inst|mux_2|mux_1|mux_generate:3:mux_i|Mux1~1_combout\ & 
-- ((\inst2|inst|reg_gen:5:regs|reg_2|y\(6))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110001111100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|inst|reg_gen:4:regs|reg_2|y\(6),
	datab => \inst2|inst|mux_2|mux_1|mux_generate:0:mux_i|Mux3~0_combout\,
	datac => \inst2|inst|mux_2|mux_1|mux_generate:3:mux_i|Mux1~1_combout\,
	datad => \inst2|inst|reg_gen:5:regs|reg_2|y\(6),
	combout => \inst2|inst|mux_2|mux_1|mux_generate:3:mux_i|Mux1~2_combout\);

-- Location: LCCOMB_X12_Y33_N6
\inst2|inst|reg_gen:2:regs|reg_2|y[6]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|inst|reg_gen:2:regs|reg_2|y[6]~feeder_combout\ = \inst3|OUT16B[14]~1_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst3|OUT16B[14]~1_combout\,
	combout => \inst2|inst|reg_gen:2:regs|reg_2|y[6]~feeder_combout\);

-- Location: FF_X12_Y33_N7
\inst2|inst|reg_gen:2:regs|reg_2|y[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~input_o\,
	d => \inst2|inst|reg_gen:2:regs|reg_2|y[6]~feeder_combout\,
	ena => \inst2|inst|add_reg1_dcd|Mux3~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst2|inst|reg_gen:2:regs|reg_2|y\(6));

-- Location: LCCOMB_X13_Y37_N14
\inst2|inst|reg_gen:3:regs|reg_2|y[6]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|inst|reg_gen:3:regs|reg_2|y[6]~feeder_combout\ = \inst3|OUT16B[14]~1_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst3|OUT16B[14]~1_combout\,
	combout => \inst2|inst|reg_gen:3:regs|reg_2|y[6]~feeder_combout\);

-- Location: FF_X13_Y37_N15
\inst2|inst|reg_gen:3:regs|reg_2|y[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~input_o\,
	d => \inst2|inst|reg_gen:3:regs|reg_2|y[6]~feeder_combout\,
	ena => \inst2|inst|add_reg1_dcd|Mux3~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst2|inst|reg_gen:3:regs|reg_2|y\(6));

-- Location: LCCOMB_X13_Y33_N8
\inst2|inst|mux_2|mux_1|mux_generate:3:mux_i|Mux1~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|inst|mux_2|mux_1|mux_generate:3:mux_i|Mux1~0_combout\ = (\inst4|inst1|data_out[6]~8_combout\ & ((\inst4|inst1|exception~2_combout\ & (\inst2|inst|reg_gen:2:regs|reg_2|y\(6))) # (!\inst4|inst1|exception~2_combout\ & 
-- ((\inst2|inst|reg_gen:3:regs|reg_2|y\(6)))))) # (!\inst4|inst1|data_out[6]~8_combout\ & (((\inst2|inst|reg_gen:2:regs|reg_2|y\(6)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001011010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|inst1|data_out[6]~8_combout\,
	datab => \inst4|inst1|exception~2_combout\,
	datac => \inst2|inst|reg_gen:2:regs|reg_2|y\(6),
	datad => \inst2|inst|reg_gen:3:regs|reg_2|y\(6),
	combout => \inst2|inst|mux_2|mux_1|mux_generate:3:mux_i|Mux1~0_combout\);

-- Location: LCCOMB_X13_Y33_N16
\inst2|inst|mux_2|mux_1|mux_generate:3:mux_i|Mux1~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|inst|mux_2|mux_1|mux_generate:3:mux_i|Mux1~3_combout\ = (\inst2|inst|mux_2|mux_1|mux_generate:0:mux_i|Mux3~2_combout\ & ((\inst2|inst|mux_2|mux_1|mux_generate:3:mux_i|Mux1~0_combout\))) # 
-- (!\inst2|inst|mux_2|mux_1|mux_generate:0:mux_i|Mux3~2_combout\ & (\inst2|inst|mux_2|mux_1|mux_generate:3:mux_i|Mux1~2_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|inst|mux_2|mux_1|mux_generate:3:mux_i|Mux1~2_combout\,
	datac => \inst2|inst|mux_2|mux_1|mux_generate:3:mux_i|Mux1~0_combout\,
	datad => \inst2|inst|mux_2|mux_1|mux_generate:0:mux_i|Mux3~2_combout\,
	combout => \inst2|inst|mux_2|mux_1|mux_generate:3:mux_i|Mux1~3_combout\);

-- Location: FF_X8_Y34_N17
\inst1|reg_gen:27:regs|y[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	asdata => \inst2|inst|mux_2|mux_1|mux_generate:3:mux_i|Mux1~3_combout\,
	sload => VCC,
	ena => \inst1|dec_to_en\(27),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|reg_gen:27:regs|y\(6));

-- Location: FF_X8_Y34_N3
\inst1|reg_gen:11:regs|y[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	asdata => \inst2|inst|mux_2|mux_1|mux_generate:3:mux_i|Mux1~3_combout\,
	sload => VCC,
	ena => \inst1|dec_to_en\(11),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|reg_gen:11:regs|y\(6));

-- Location: LCCOMB_X9_Y34_N4
\inst1|DOUT[14]~70\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|DOUT[14]~70_combout\ = (\inst2|inst1|alu1|mux|Mux3~1_combout\ & (\inst1|reg_gen:27:regs|y\(6))) # (!\inst2|inst1|alu1|mux|Mux3~1_combout\ & ((\inst1|reg_gen:11:regs|y\(6))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|reg_gen:27:regs|y\(6),
	datab => \inst2|inst1|alu1|mux|Mux3~1_combout\,
	datad => \inst1|reg_gen:11:regs|y\(6),
	combout => \inst1|DOUT[14]~70_combout\);

-- Location: FF_X12_Y34_N5
\inst1|reg_gen:19:regs|y[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	asdata => \inst2|inst|mux_2|mux_1|mux_generate:3:mux_i|Mux1~3_combout\,
	sload => VCC,
	ena => \inst1|dec_to_en\(19),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|reg_gen:19:regs|y\(6));

-- Location: LCCOMB_X9_Y34_N24
\inst1|reg_gen:25:regs|y[6]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|reg_gen:25:regs|y[6]~feeder_combout\ = \inst2|inst|mux_2|mux_1|mux_generate:3:mux_i|Mux1~3_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst2|inst|mux_2|mux_1|mux_generate:3:mux_i|Mux1~3_combout\,
	combout => \inst1|reg_gen:25:regs|y[6]~feeder_combout\);

-- Location: FF_X9_Y34_N25
\inst1|reg_gen:25:regs|y[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \inst1|reg_gen:25:regs|y[6]~feeder_combout\,
	ena => \inst1|dec_to_en\(25),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|reg_gen:25:regs|y\(6));

-- Location: FF_X9_Y34_N19
\inst1|reg_gen:9:regs|y[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	asdata => \inst2|inst|mux_2|mux_1|mux_generate:3:mux_i|Mux1~3_combout\,
	sload => VCC,
	ena => \inst1|dec_to_en\(9),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|reg_gen:9:regs|y\(6));

-- Location: LCCOMB_X9_Y34_N18
\inst1|DOUT[14]~68\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|DOUT[14]~68_combout\ = (\inst2|inst1|alu1|mux|Mux3~1_combout\ & (\inst1|reg_gen:25:regs|y\(6))) # (!\inst2|inst1|alu1|mux|Mux3~1_combout\ & ((\inst1|reg_gen:9:regs|y\(6))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst1|reg_gen:25:regs|y\(6),
	datac => \inst1|reg_gen:9:regs|y\(6),
	datad => \inst2|inst1|alu1|mux|Mux3~1_combout\,
	combout => \inst1|DOUT[14]~68_combout\);

-- Location: FF_X12_Y34_N23
\inst1|reg_gen:17:regs|y[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	asdata => \inst2|inst|mux_2|mux_1|mux_generate:3:mux_i|Mux1~3_combout\,
	sload => VCC,
	ena => \inst1|dec_to_en\(17),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|reg_gen:17:regs|y\(6));

-- Location: LCCOMB_X12_Y34_N22
\inst1|DOUT[14]~69\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|DOUT[14]~69_combout\ = (\inst2|inst1|alu0|mux|Mux2~1_combout\ & (((\inst2|inst1|alu0|mux|Mux0~1_combout\)))) # (!\inst2|inst1|alu0|mux|Mux2~1_combout\ & ((\inst2|inst1|alu0|mux|Mux0~1_combout\ & (\inst1|DOUT[14]~68_combout\)) # 
-- (!\inst2|inst1|alu0|mux|Mux0~1_combout\ & ((\inst1|reg_gen:17:regs|y\(6))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|DOUT[14]~68_combout\,
	datab => \inst2|inst1|alu0|mux|Mux2~1_combout\,
	datac => \inst1|reg_gen:17:regs|y\(6),
	datad => \inst2|inst1|alu0|mux|Mux0~1_combout\,
	combout => \inst1|DOUT[14]~69_combout\);

-- Location: LCCOMB_X12_Y34_N4
\inst1|DOUT[14]~71\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|DOUT[14]~71_combout\ = (\inst2|inst1|alu0|mux|Mux2~1_combout\ & ((\inst1|DOUT[14]~69_combout\ & (\inst1|DOUT[14]~70_combout\)) # (!\inst1|DOUT[14]~69_combout\ & ((\inst1|reg_gen:19:regs|y\(6)))))) # (!\inst2|inst1|alu0|mux|Mux2~1_combout\ & 
-- (((\inst1|DOUT[14]~69_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|DOUT[14]~70_combout\,
	datab => \inst2|inst1|alu0|mux|Mux2~1_combout\,
	datac => \inst1|reg_gen:19:regs|y\(6),
	datad => \inst1|DOUT[14]~69_combout\,
	combout => \inst1|DOUT[14]~71_combout\);

-- Location: LCCOMB_X13_Y33_N10
\inst1|DOUT[6]~210\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|DOUT[6]~210_combout\ = (\inst1|DOUT[12]~48_combout\ & (((\inst1|DOUT[14]~59_combout\) # (\inst1|DOUT[3]~198_combout\)))) # (!\inst1|DOUT[12]~48_combout\ & (\inst1|DOUT[14]~58_combout\ & ((!\inst1|DOUT[3]~198_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|DOUT[14]~58_combout\,
	datab => \inst1|DOUT[12]~48_combout\,
	datac => \inst1|DOUT[14]~59_combout\,
	datad => \inst1|DOUT[3]~198_combout\,
	combout => \inst1|DOUT[6]~210_combout\);

-- Location: LCCOMB_X12_Y32_N28
\inst1|DOUT[6]~211\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|DOUT[6]~211_combout\ = (\inst1|DOUT[6]~210_combout\ & ((\inst1|reg_gen:15:regs|y\(6)) # ((!\inst1|DOUT[3]~198_combout\)))) # (!\inst1|DOUT[6]~210_combout\ & (((\inst1|DOUT[3]~198_combout\ & \inst1|DOUT[14]~66_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101101010001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|DOUT[6]~210_combout\,
	datab => \inst1|reg_gen:15:regs|y\(6),
	datac => \inst1|DOUT[3]~198_combout\,
	datad => \inst1|DOUT[14]~66_combout\,
	combout => \inst1|DOUT[6]~211_combout\);

-- Location: LCCOMB_X12_Y32_N26
\inst1|DOUT[6]~212\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|DOUT[6]~212_combout\ = (\inst2|inst1|alu0|mux|Mux1~1_combout\ & ((\inst1|DOUT[3]~260_combout\) # ((\inst1|DOUT[6]~211_combout\)))) # (!\inst2|inst1|alu0|mux|Mux1~1_combout\ & (!\inst1|DOUT[3]~260_combout\ & (\inst1|DOUT[14]~71_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|inst1|alu0|mux|Mux1~1_combout\,
	datab => \inst1|DOUT[3]~260_combout\,
	datac => \inst1|DOUT[14]~71_combout\,
	datad => \inst1|DOUT[6]~211_combout\,
	combout => \inst1|DOUT[6]~212_combout\);

-- Location: LCCOMB_X11_Y32_N24
\inst1|DOUT[6]~208\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|DOUT[6]~208_combout\ = (\inst2|inst1|alu0|mux|Mux2~1_combout\ & (((\inst2|inst1|alu0|mux|Mux0~1_combout\)))) # (!\inst2|inst1|alu0|mux|Mux2~1_combout\ & ((\inst2|inst1|alu0|mux|Mux0~1_combout\ & (\inst1|DOUT[14]~56_combout\)) # 
-- (!\inst2|inst1|alu0|mux|Mux0~1_combout\ & ((\inst1|reg_gen:16:regs|y\(6))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|inst1|alu0|mux|Mux2~1_combout\,
	datab => \inst1|DOUT[14]~56_combout\,
	datac => \inst1|reg_gen:16:regs|y\(6),
	datad => \inst2|inst1|alu0|mux|Mux0~1_combout\,
	combout => \inst1|DOUT[6]~208_combout\);

-- Location: LCCOMB_X12_Y32_N6
\inst1|DOUT[6]~209\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|DOUT[6]~209_combout\ = (\inst1|DOUT[6]~208_combout\ & (((\inst1|DOUT[14]~64_combout\) # (!\inst2|inst1|alu0|mux|Mux2~1_combout\)))) # (!\inst1|DOUT[6]~208_combout\ & (\inst1|reg_gen:18:regs|y\(6) & ((\inst2|inst1|alu0|mux|Mux2~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110001011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|reg_gen:18:regs|y\(6),
	datab => \inst1|DOUT[6]~208_combout\,
	datac => \inst1|DOUT[14]~64_combout\,
	datad => \inst2|inst1|alu0|mux|Mux2~1_combout\,
	combout => \inst1|DOUT[6]~209_combout\);

-- Location: LCCOMB_X13_Y36_N28
\inst1|DOUT[6]~213\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|DOUT[6]~213_combout\ = (\inst1|DOUT[3]~260_combout\ & ((\inst1|DOUT[6]~212_combout\ & (\inst1|DOUT[14]~61_combout\)) # (!\inst1|DOUT[6]~212_combout\ & ((\inst1|DOUT[6]~209_combout\))))) # (!\inst1|DOUT[3]~260_combout\ & 
-- (\inst1|DOUT[6]~212_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110011011000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|DOUT[3]~260_combout\,
	datab => \inst1|DOUT[6]~212_combout\,
	datac => \inst1|DOUT[14]~61_combout\,
	datad => \inst1|DOUT[6]~209_combout\,
	combout => \inst1|DOUT[6]~213_combout\);

-- Location: LCCOMB_X13_Y36_N18
\inst1|DOUT[6]~214\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|DOUT[6]~214_combout\ = (\inst1|DOUT[3]~203_combout\ & ((\inst1|DOUT[6]~213_combout\))) # (!\inst1|DOUT[3]~203_combout\ & (\inst1|reg_gen:30:regs|y\(6)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|reg_gen:30:regs|y\(6),
	datac => \inst1|DOUT[6]~213_combout\,
	datad => \inst1|DOUT[3]~203_combout\,
	combout => \inst1|DOUT[6]~214_combout\);

-- Location: LCCOMB_X13_Y36_N2
\inst1|DOUT[6]$latch\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|DOUT[6]$latch~combout\ = (!\inst1|DOUT[7]~206_combout\ & ((GLOBAL(\inst1|DOUT[15]~52clkctrl_outclk\) & ((\inst1|DOUT[6]~214_combout\))) # (!GLOBAL(\inst1|DOUT[15]~52clkctrl_outclk\) & (\inst1|DOUT[6]$latch~combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111000000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|DOUT[15]~52clkctrl_outclk\,
	datab => \inst1|DOUT[6]$latch~combout\,
	datac => \inst1|DOUT[7]~206_combout\,
	datad => \inst1|DOUT[6]~214_combout\,
	combout => \inst1|DOUT[6]$latch~combout\);

-- Location: LCCOMB_X12_Y36_N20
\inst3|OUT16B[6]~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|OUT16B[6]~9_combout\ = (\inst|Mux5~0_combout\ & (((\inst1|DOUT[6]$latch~combout\)) # (!\inst1|DOUT[7]_2052~combout\))) # (!\inst|Mux5~0_combout\ & (((\inst2|inst1|alu1|mux|Mux1~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110001110100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|DOUT[7]_2052~combout\,
	datab => \inst|Mux5~0_combout\,
	datac => \inst2|inst1|alu1|mux|Mux1~1_combout\,
	datad => \inst1|DOUT[6]$latch~combout\,
	combout => \inst3|OUT16B[6]~9_combout\);

-- Location: LCCOMB_X11_Y36_N6
\inst2|inst|reg_gen:3:regs|reg_1|y[6]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|inst|reg_gen:3:regs|reg_1|y[6]~feeder_combout\ = \inst3|OUT16B[6]~9_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst3|OUT16B[6]~9_combout\,
	combout => \inst2|inst|reg_gen:3:regs|reg_1|y[6]~feeder_combout\);

-- Location: FF_X11_Y36_N7
\inst2|inst|reg_gen:3:regs|reg_1|y[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~input_o\,
	d => \inst2|inst|reg_gen:3:regs|reg_1|y[6]~feeder_combout\,
	ena => \inst2|inst|add_reg1_dcd|Mux3~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst2|inst|reg_gen:3:regs|reg_1|y\(6));

-- Location: LCCOMB_X12_Y36_N12
\inst2|inst|reg_gen:2:regs|reg_1|y[6]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|inst|reg_gen:2:regs|reg_1|y[6]~feeder_combout\ = \inst3|OUT16B[6]~9_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst3|OUT16B[6]~9_combout\,
	combout => \inst2|inst|reg_gen:2:regs|reg_1|y[6]~feeder_combout\);

-- Location: FF_X12_Y36_N13
\inst2|inst|reg_gen:2:regs|reg_1|y[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~input_o\,
	d => \inst2|inst|reg_gen:2:regs|reg_1|y[6]~feeder_combout\,
	ena => \inst2|inst|add_reg1_dcd|Mux3~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst2|inst|reg_gen:2:regs|reg_1|y\(6));

-- Location: LCCOMB_X17_Y36_N0
\inst2|inst|mux_2|mux_1|mux_generate:1:mux_i|Mux1~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|inst|mux_2|mux_1|mux_generate:1:mux_i|Mux1~0_combout\ = (\inst4|inst1|data_out[6]~8_combout\ & ((\inst4|inst1|exception~2_combout\ & ((\inst2|inst|reg_gen:2:regs|reg_1|y\(6)))) # (!\inst4|inst1|exception~2_combout\ & 
-- (\inst2|inst|reg_gen:3:regs|reg_1|y\(6))))) # (!\inst4|inst1|data_out[6]~8_combout\ & (((\inst2|inst|reg_gen:2:regs|reg_1|y\(6)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110100100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|inst1|data_out[6]~8_combout\,
	datab => \inst4|inst1|exception~2_combout\,
	datac => \inst2|inst|reg_gen:3:regs|reg_1|y\(6),
	datad => \inst2|inst|reg_gen:2:regs|reg_1|y\(6),
	combout => \inst2|inst|mux_2|mux_1|mux_generate:1:mux_i|Mux1~0_combout\);

-- Location: LCCOMB_X14_Y36_N0
\inst2|inst|reg_gen:4:regs|reg_1|y[6]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|inst|reg_gen:4:regs|reg_1|y[6]~feeder_combout\ = \inst3|OUT16B[6]~9_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst3|OUT16B[6]~9_combout\,
	combout => \inst2|inst|reg_gen:4:regs|reg_1|y[6]~feeder_combout\);

-- Location: FF_X14_Y36_N1
\inst2|inst|reg_gen:4:regs|reg_1|y[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~input_o\,
	d => \inst2|inst|reg_gen:4:regs|reg_1|y[6]~feeder_combout\,
	ena => \inst2|inst|add_reg1_dcd|Mux3~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst2|inst|reg_gen:4:regs|reg_1|y\(6));

-- Location: LCCOMB_X17_Y36_N2
\inst2|inst|mux_2|mux_1|mux_generate:1:mux_i|Mux1~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|inst|mux_2|mux_1|mux_generate:1:mux_i|Mux1~1_combout\ = ((\inst4|inst1|data_out[6]~8_combout\ & (!\inst4|inst1|exception~2_combout\ & \inst2|inst|reg_gen:1:regs|reg_1|y\(6)))) # (!\inst2|inst|mux_2|mux_1|mux_generate:0:mux_i|Mux3~1_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|inst1|data_out[6]~8_combout\,
	datab => \inst4|inst1|exception~2_combout\,
	datac => \inst2|inst|reg_gen:1:regs|reg_1|y\(6),
	datad => \inst2|inst|mux_2|mux_1|mux_generate:0:mux_i|Mux3~1_combout\,
	combout => \inst2|inst|mux_2|mux_1|mux_generate:1:mux_i|Mux1~1_combout\);

-- Location: FF_X17_Y36_N31
\inst2|inst|reg_gen:5:regs|reg_1|y[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~input_o\,
	asdata => \inst3|OUT16B[6]~9_combout\,
	sload => VCC,
	ena => \inst2|inst|add_reg1_dcd|Mux3~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst2|inst|reg_gen:5:regs|reg_1|y\(6));

-- Location: LCCOMB_X17_Y36_N28
\inst2|inst|mux_2|mux_1|mux_generate:1:mux_i|Mux1~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|inst|mux_2|mux_1|mux_generate:1:mux_i|Mux1~2_combout\ = (\inst2|inst|mux_2|mux_1|mux_generate:1:mux_i|Mux1~1_combout\ & ((\inst2|inst|reg_gen:4:regs|reg_1|y\(6)) # ((\inst2|inst|mux_2|mux_1|mux_generate:0:mux_i|Mux3~0_combout\)))) # 
-- (!\inst2|inst|mux_2|mux_1|mux_generate:1:mux_i|Mux1~1_combout\ & (((\inst2|inst|reg_gen:5:regs|reg_1|y\(6) & !\inst2|inst|mux_2|mux_1|mux_generate:0:mux_i|Mux3~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|inst|reg_gen:4:regs|reg_1|y\(6),
	datab => \inst2|inst|mux_2|mux_1|mux_generate:1:mux_i|Mux1~1_combout\,
	datac => \inst2|inst|reg_gen:5:regs|reg_1|y\(6),
	datad => \inst2|inst|mux_2|mux_1|mux_generate:0:mux_i|Mux3~0_combout\,
	combout => \inst2|inst|mux_2|mux_1|mux_generate:1:mux_i|Mux1~2_combout\);

-- Location: LCCOMB_X17_Y36_N12
\inst2|inst|mux_2|mux_1|mux_generate:1:mux_i|Mux1~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|inst|mux_2|mux_1|mux_generate:1:mux_i|Mux1~3_combout\ = (\inst2|inst|mux_2|mux_1|mux_generate:0:mux_i|Mux3~2_combout\ & (\inst2|inst|mux_2|mux_1|mux_generate:1:mux_i|Mux1~0_combout\)) # (!\inst2|inst|mux_2|mux_1|mux_generate:0:mux_i|Mux3~2_combout\ 
-- & ((\inst2|inst|mux_2|mux_1|mux_generate:1:mux_i|Mux1~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|inst|mux_2|mux_1|mux_generate:0:mux_i|Mux3~2_combout\,
	datab => \inst2|inst|mux_2|mux_1|mux_generate:1:mux_i|Mux1~0_combout\,
	datad => \inst2|inst|mux_2|mux_1|mux_generate:1:mux_i|Mux1~2_combout\,
	combout => \inst2|inst|mux_2|mux_1|mux_generate:1:mux_i|Mux1~3_combout\);

-- Location: LCCOMB_X17_Y36_N4
\inst2|inst2|OUT16B[6]~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|inst2|OUT16B[6]~8_combout\ = (\inst|Mux7~8_combout\ & ((\inst4|inst1|INS_OUT[5]~6_combout\))) # (!\inst|Mux7~8_combout\ & (\inst2|inst|mux_2|mux_1|mux_generate:1:mux_i|Mux1~3_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|inst|mux_2|mux_1|mux_generate:1:mux_i|Mux1~3_combout\,
	datab => \inst4|inst1|INS_OUT[5]~6_combout\,
	datad => \inst|Mux7~8_combout\,
	combout => \inst2|inst2|OUT16B[6]~8_combout\);

-- Location: LCCOMB_X17_Y32_N18
\inst2|inst1|alu1|adder|C[3]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|inst1|alu1|adder|C[3]~2_combout\ = (\inst2|inst|mux_1|mux_1|mux_generate:1:mux_i|Mux1~1_combout\ & ((\inst2|inst1|alu1|adder|C[2]~1_combout\) # (\inst2|inst2|OUT16B[6]~8_combout\ $ (\inst2|inst3|DOUT[2]~3_combout\)))) # 
-- (!\inst2|inst|mux_1|mux_1|mux_generate:1:mux_i|Mux1~1_combout\ & (\inst2|inst1|alu1|adder|C[2]~1_combout\ & (\inst2|inst2|OUT16B[6]~8_combout\ $ (\inst2|inst3|DOUT[2]~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101111001001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|inst2|OUT16B[6]~8_combout\,
	datab => \inst2|inst|mux_1|mux_1|mux_generate:1:mux_i|Mux1~1_combout\,
	datac => \inst2|inst3|DOUT[2]~3_combout\,
	datad => \inst2|inst1|alu1|adder|C[2]~1_combout\,
	combout => \inst2|inst1|alu1|adder|C[3]~2_combout\);

-- Location: LCCOMB_X19_Y32_N12
\inst2|inst1|alu1|mux|Mux0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|inst1|alu1|mux|Mux0~0_combout\ = \inst2|inst2|OUT16B[7]~7_combout\ $ (((\inst2|inst3|DOUT[1]~4_combout\ & (\inst2|inst1|alu1|adder|C[3]~2_combout\ $ (\inst2|inst3|DOUT[2]~3_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101011100101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|inst3|DOUT[1]~4_combout\,
	datab => \inst2|inst1|alu1|adder|C[3]~2_combout\,
	datac => \inst2|inst3|DOUT[2]~3_combout\,
	datad => \inst2|inst2|OUT16B[7]~7_combout\,
	combout => \inst2|inst1|alu1|mux|Mux0~0_combout\);

-- Location: FF_X14_Y32_N25
\inst2|inst|reg_gen:6:regs|reg_1|y[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~input_o\,
	asdata => \inst3|OUT16B[7]~8_combout\,
	sload => VCC,
	ena => \inst2|inst|add_reg1_dcd|Mux3~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst2|inst|reg_gen:6:regs|reg_1|y\(7));

-- Location: LCCOMB_X16_Y36_N4
\inst2|inst|reg_gen:1:regs|reg_1|y[7]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|inst|reg_gen:1:regs|reg_1|y[7]~feeder_combout\ = \inst3|OUT16B[7]~8_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst3|OUT16B[7]~8_combout\,
	combout => \inst2|inst|reg_gen:1:regs|reg_1|y[7]~feeder_combout\);

-- Location: FF_X16_Y36_N5
\inst2|inst|reg_gen:1:regs|reg_1|y[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~input_o\,
	d => \inst2|inst|reg_gen:1:regs|reg_1|y[7]~feeder_combout\,
	ena => \inst2|inst|add_reg1_dcd|Mux3~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst2|inst|reg_gen:1:regs|reg_1|y\(7));

-- Location: LCCOMB_X16_Y36_N0
\inst2|inst|mux_1|mux_1|mux_generate:1:mux_i|Mux0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|inst|mux_1|mux_1|mux_generate:1:mux_i|Mux0~0_combout\ = (!\inst4|inst1|exception~2_combout\ & (\inst2|inst|reg_gen:1:regs|reg_1|y\(7) & \inst4|inst1|data_out[9]~3_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst4|inst1|exception~2_combout\,
	datac => \inst2|inst|reg_gen:1:regs|reg_1|y\(7),
	datad => \inst4|inst1|data_out[9]~3_combout\,
	combout => \inst2|inst|mux_1|mux_1|mux_generate:1:mux_i|Mux0~0_combout\);

-- Location: LCCOMB_X14_Y32_N24
\inst2|inst|mux_1|mux_1|mux_generate:1:mux_i|Mux0~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|inst|mux_1|mux_1|mux_generate:1:mux_i|Mux0~1_combout\ = (\inst2|inst|mux_1|mux_1|mux_generate:2:mux_i|Mux2~0_combout\ & ((\inst4|inst1|INS_OUT[15]~4_combout\ & (\inst2|inst|reg_gen:6:regs|reg_1|y\(7))) # (!\inst4|inst1|INS_OUT[15]~4_combout\ & 
-- ((\inst2|inst|mux_1|mux_1|mux_generate:1:mux_i|Mux0~0_combout\))))) # (!\inst2|inst|mux_1|mux_1|mux_generate:2:mux_i|Mux2~0_combout\ & (!\inst4|inst1|INS_OUT[15]~4_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011001110010001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|inst|mux_1|mux_1|mux_generate:2:mux_i|Mux2~0_combout\,
	datab => \inst4|inst1|INS_OUT[15]~4_combout\,
	datac => \inst2|inst|reg_gen:6:regs|reg_1|y\(7),
	datad => \inst2|inst|mux_1|mux_1|mux_generate:1:mux_i|Mux0~0_combout\,
	combout => \inst2|inst|mux_1|mux_1|mux_generate:1:mux_i|Mux0~1_combout\);

-- Location: LCCOMB_X19_Y32_N2
\inst2|inst1|alu1|mux|Mux0~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|inst1|alu1|mux|Mux0~1_combout\ = (\inst2|inst1|alu1|mux|Mux0~0_combout\ & (\inst2|inst3|DOUT[1]~4_combout\ $ (((\inst2|inst3|DOUT[0]~2_combout\) # (\inst2|inst|mux_1|mux_1|mux_generate:1:mux_i|Mux0~1_combout\))))) # 
-- (!\inst2|inst1|alu1|mux|Mux0~0_combout\ & (\inst2|inst|mux_1|mux_1|mux_generate:1:mux_i|Mux0~1_combout\ & (\inst2|inst3|DOUT[1]~4_combout\ $ (\inst2|inst3|DOUT[0]~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011011000101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|inst1|alu1|mux|Mux0~0_combout\,
	datab => \inst2|inst3|DOUT[1]~4_combout\,
	datac => \inst2|inst3|DOUT[0]~2_combout\,
	datad => \inst2|inst|mux_1|mux_1|mux_generate:1:mux_i|Mux0~1_combout\,
	combout => \inst2|inst1|alu1|mux|Mux0~1_combout\);

-- Location: LCCOMB_X10_Y31_N28
\inst1|reg_gen:30:regs|y[7]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|reg_gen:30:regs|y[7]~feeder_combout\ = \inst2|inst|mux_2|mux_1|mux_generate:1:mux_i|Mux0~3_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst2|inst|mux_2|mux_1|mux_generate:1:mux_i|Mux0~3_combout\,
	combout => \inst1|reg_gen:30:regs|y[7]~feeder_combout\);

-- Location: FF_X10_Y31_N29
\inst1|reg_gen:30:regs|y[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \inst1|reg_gen:30:regs|y[7]~feeder_combout\,
	ena => \inst1|dec_to_en\(30),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|reg_gen:30:regs|y\(7));

-- Location: FF_X14_Y31_N29
\inst1|reg_gen:14:regs|y[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	asdata => \inst2|inst|mux_2|mux_1|mux_generate:1:mux_i|Mux0~3_combout\,
	sload => VCC,
	ena => \inst1|dec_to_en\(14),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|reg_gen:14:regs|y\(7));

-- Location: LCCOMB_X11_Y30_N4
\inst1|reg_gen:22:regs|y[7]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|reg_gen:22:regs|y[7]~feeder_combout\ = \inst2|inst|mux_2|mux_1|mux_generate:1:mux_i|Mux0~3_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|inst|mux_2|mux_1|mux_generate:1:mux_i|Mux0~3_combout\,
	combout => \inst1|reg_gen:22:regs|y[7]~feeder_combout\);

-- Location: FF_X11_Y30_N5
\inst1|reg_gen:22:regs|y[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \inst1|reg_gen:22:regs|y[7]~feeder_combout\,
	ena => \inst1|dec_to_en\(22),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|reg_gen:22:regs|y\(7));

-- Location: FF_X11_Y30_N23
\inst1|reg_gen:6:regs|y[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	asdata => \inst2|inst|mux_2|mux_1|mux_generate:1:mux_i|Mux0~3_combout\,
	sload => VCC,
	ena => \inst1|dec_to_en\(6),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|reg_gen:6:regs|y\(7));

-- Location: LCCOMB_X14_Y30_N8
\inst1|DOUT[15]~28\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|DOUT[15]~28_combout\ = (\inst2|inst1|alu1|mux|Mux3~1_combout\ & ((\inst1|reg_gen:22:regs|y\(7)) # ((\inst2|inst1|alu0|mux|Mux0~1_combout\)))) # (!\inst2|inst1|alu1|mux|Mux3~1_combout\ & (((\inst1|reg_gen:6:regs|y\(7) & 
-- !\inst2|inst1|alu0|mux|Mux0~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|reg_gen:22:regs|y\(7),
	datab => \inst2|inst1|alu1|mux|Mux3~1_combout\,
	datac => \inst1|reg_gen:6:regs|y\(7),
	datad => \inst2|inst1|alu0|mux|Mux0~1_combout\,
	combout => \inst1|DOUT[15]~28_combout\);

-- Location: LCCOMB_X14_Y30_N30
\inst1|DOUT[15]~29\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|DOUT[15]~29_combout\ = (\inst2|inst1|alu0|mux|Mux0~1_combout\ & ((\inst1|DOUT[15]~28_combout\ & (\inst1|reg_gen:30:regs|y\(7))) # (!\inst1|DOUT[15]~28_combout\ & ((\inst1|reg_gen:14:regs|y\(7)))))) # (!\inst2|inst1|alu0|mux|Mux0~1_combout\ & 
-- (((\inst1|DOUT[15]~28_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|reg_gen:30:regs|y\(7),
	datab => \inst1|reg_gen:14:regs|y\(7),
	datac => \inst2|inst1|alu0|mux|Mux0~1_combout\,
	datad => \inst1|DOUT[15]~28_combout\,
	combout => \inst1|DOUT[15]~29_combout\);

-- Location: FF_X10_Y31_N31
\inst1|reg_gen:24:regs|y[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	asdata => \inst2|inst|mux_2|mux_1|mux_generate:1:mux_i|Mux0~3_combout\,
	sload => VCC,
	ena => \inst1|dec_to_en[24]~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|reg_gen:24:regs|y\(7));

-- Location: FF_X11_Y31_N9
\inst1|reg_gen:8:regs|y[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	asdata => \inst2|inst|mux_2|mux_1|mux_generate:1:mux_i|Mux0~3_combout\,
	sload => VCC,
	ena => \inst1|dec_to_en[8]~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|reg_gen:8:regs|y\(7));

-- Location: LCCOMB_X10_Y31_N20
\inst1|DOUT[15]~33\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|DOUT[15]~33_combout\ = (\inst2|inst1|alu1|mux|Mux3~1_combout\ & (\inst1|reg_gen:24:regs|y\(7))) # (!\inst2|inst1|alu1|mux|Mux3~1_combout\ & ((\inst1|reg_gen:8:regs|y\(7))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|reg_gen:24:regs|y\(7),
	datab => \inst1|reg_gen:8:regs|y\(7),
	datad => \inst2|inst1|alu1|mux|Mux3~1_combout\,
	combout => \inst1|DOUT[15]~33_combout\);

-- Location: LCCOMB_X11_Y31_N30
\inst1|reg_gen:16:regs|y[7]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|reg_gen:16:regs|y[7]~feeder_combout\ = \inst2|inst|mux_2|mux_1|mux_generate:1:mux_i|Mux0~3_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst2|inst|mux_2|mux_1|mux_generate:1:mux_i|Mux0~3_combout\,
	combout => \inst1|reg_gen:16:regs|y[7]~feeder_combout\);

-- Location: FF_X11_Y31_N31
\inst1|reg_gen:16:regs|y[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \inst1|reg_gen:16:regs|y[7]~feeder_combout\,
	ena => \inst1|dec_to_en[16]~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|reg_gen:16:regs|y\(7));

-- Location: LCCOMB_X12_Y36_N16
\inst1|DOUT[7]~196\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|DOUT[7]~196_combout\ = (\inst2|inst1|alu0|mux|Mux2~1_combout\ & (((\inst2|inst1|alu0|mux|Mux0~1_combout\)))) # (!\inst2|inst1|alu0|mux|Mux2~1_combout\ & ((\inst2|inst1|alu0|mux|Mux0~1_combout\ & (\inst1|DOUT[15]~33_combout\)) # 
-- (!\inst2|inst1|alu0|mux|Mux0~1_combout\ & ((\inst1|reg_gen:16:regs|y\(7))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|DOUT[15]~33_combout\,
	datab => \inst1|reg_gen:16:regs|y\(7),
	datac => \inst2|inst1|alu0|mux|Mux2~1_combout\,
	datad => \inst2|inst1|alu0|mux|Mux0~1_combout\,
	combout => \inst1|DOUT[7]~196_combout\);

-- Location: FF_X11_Y32_N7
\inst1|reg_gen:18:regs|y[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	asdata => \inst2|inst|mux_2|mux_1|mux_generate:1:mux_i|Mux0~3_combout\,
	sload => VCC,
	ena => \inst1|dec_to_en\(18),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|reg_gen:18:regs|y\(7));

-- Location: LCCOMB_X9_Y31_N14
\inst1|reg_gen:10:regs|y[7]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|reg_gen:10:regs|y[7]~feeder_combout\ = \inst2|inst|mux_2|mux_1|mux_generate:1:mux_i|Mux0~3_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst2|inst|mux_2|mux_1|mux_generate:1:mux_i|Mux0~3_combout\,
	combout => \inst1|reg_gen:10:regs|y[7]~feeder_combout\);

-- Location: FF_X9_Y31_N15
\inst1|reg_gen:10:regs|y[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \inst1|reg_gen:10:regs|y[7]~feeder_combout\,
	ena => \inst1|dec_to_en\(10),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|reg_gen:10:regs|y\(7));

-- Location: FF_X9_Y31_N5
\inst1|reg_gen:26:regs|y[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	asdata => \inst2|inst|mux_2|mux_1|mux_generate:1:mux_i|Mux0~3_combout\,
	sload => VCC,
	ena => \inst1|dec_to_en\(26),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|reg_gen:26:regs|y\(7));

-- Location: LCCOMB_X11_Y32_N16
\inst1|DOUT[15]~38\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|DOUT[15]~38_combout\ = (\inst2|inst1|alu1|mux|Mux3~1_combout\ & ((\inst1|reg_gen:26:regs|y\(7)))) # (!\inst2|inst1|alu1|mux|Mux3~1_combout\ & (\inst1|reg_gen:10:regs|y\(7)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|reg_gen:10:regs|y\(7),
	datab => \inst1|reg_gen:26:regs|y\(7),
	datad => \inst2|inst1|alu1|mux|Mux3~1_combout\,
	combout => \inst1|DOUT[15]~38_combout\);

-- Location: LCCOMB_X12_Y36_N22
\inst1|DOUT[7]~197\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|DOUT[7]~197_combout\ = (\inst1|DOUT[7]~196_combout\ & (((\inst1|DOUT[15]~38_combout\) # (!\inst2|inst1|alu0|mux|Mux2~1_combout\)))) # (!\inst1|DOUT[7]~196_combout\ & (\inst1|reg_gen:18:regs|y\(7) & (\inst2|inst1|alu0|mux|Mux2~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101001001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|DOUT[7]~196_combout\,
	datab => \inst1|reg_gen:18:regs|y\(7),
	datac => \inst2|inst1|alu0|mux|Mux2~1_combout\,
	datad => \inst1|DOUT[15]~38_combout\,
	combout => \inst1|DOUT[7]~197_combout\);

-- Location: FF_X14_Y33_N19
\inst2|inst|reg_gen:1:regs|reg_2|y[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~input_o\,
	asdata => \inst3|OUT16B[15]~0_combout\,
	sload => VCC,
	ena => \inst2|inst|add_reg1_dcd|Mux3~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst2|inst|reg_gen:1:regs|reg_2|y\(7));

-- Location: LCCOMB_X14_Y33_N18
\inst2|inst|mux_1|mux_1|mux_generate:3:mux_i|Mux0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|inst|mux_1|mux_1|mux_generate:3:mux_i|Mux0~0_combout\ = (\inst4|inst1|data_out[9]~3_combout\ & (\inst2|inst|reg_gen:1:regs|reg_2|y\(7) & !\inst4|inst1|exception~2_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst4|inst1|data_out[9]~3_combout\,
	datac => \inst2|inst|reg_gen:1:regs|reg_2|y\(7),
	datad => \inst4|inst1|exception~2_combout\,
	combout => \inst2|inst|mux_1|mux_1|mux_generate:3:mux_i|Mux0~0_combout\);

-- Location: FF_X12_Y33_N13
\inst2|inst|reg_gen:6:regs|reg_2|y[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~input_o\,
	d => \inst3|OUT16B[15]~0_combout\,
	ena => \inst2|inst|add_reg1_dcd|Mux3~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst2|inst|reg_gen:6:regs|reg_2|y\(7));

-- Location: LCCOMB_X12_Y33_N0
\inst2|inst|mux_1|mux_1|mux_generate:3:mux_i|Mux0~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|inst|mux_1|mux_1|mux_generate:3:mux_i|Mux0~1_combout\ = (\inst2|inst|mux_1|mux_1|mux_generate:2:mux_i|Mux2~0_combout\ & ((\inst4|inst1|INS_OUT[15]~4_combout\ & ((\inst2|inst|reg_gen:6:regs|reg_2|y\(7)))) # (!\inst4|inst1|INS_OUT[15]~4_combout\ & 
-- (\inst2|inst|mux_1|mux_1|mux_generate:3:mux_i|Mux0~0_combout\)))) # (!\inst2|inst|mux_1|mux_1|mux_generate:2:mux_i|Mux2~0_combout\ & (((!\inst4|inst1|INS_OUT[15]~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100101100001011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|inst|mux_1|mux_1|mux_generate:3:mux_i|Mux0~0_combout\,
	datab => \inst2|inst|mux_1|mux_1|mux_generate:2:mux_i|Mux2~0_combout\,
	datac => \inst4|inst1|INS_OUT[15]~4_combout\,
	datad => \inst2|inst|reg_gen:6:regs|reg_2|y\(7),
	combout => \inst2|inst|mux_1|mux_1|mux_generate:3:mux_i|Mux0~1_combout\);

-- Location: LCCOMB_X13_Y33_N18
\inst2|inst2|OUT16B[15]~16\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|inst2|OUT16B[15]~16_combout\ = (\inst|Mux7~8_combout\ & (\inst4|inst1|INS_OUT[5]~6_combout\)) # (!\inst|Mux7~8_combout\ & ((\inst2|inst|mux_2|mux_1|mux_generate:3:mux_i|Mux0~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|inst1|INS_OUT[5]~6_combout\,
	datac => \inst|Mux7~8_combout\,
	datad => \inst2|inst|mux_2|mux_1|mux_generate:3:mux_i|Mux0~3_combout\,
	combout => \inst2|inst2|OUT16B[15]~16_combout\);

-- Location: LCCOMB_X13_Y32_N28
\inst2|inst1|alu3|adder|C[3]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|inst1|alu3|adder|C[3]~2_combout\ = (\inst2|inst|mux_1|mux_1|mux_generate:3:mux_i|Mux1~1_combout\ & ((\inst2|inst1|alu3|adder|C[2]~1_combout\) # (\inst2|inst2|OUT16B[14]~17_combout\ $ (\inst2|inst3|DOUT[2]~3_combout\)))) # 
-- (!\inst2|inst|mux_1|mux_1|mux_generate:3:mux_i|Mux1~1_combout\ & (\inst2|inst1|alu3|adder|C[2]~1_combout\ & (\inst2|inst2|OUT16B[14]~17_combout\ $ (\inst2|inst3|DOUT[2]~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101111001001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|inst2|OUT16B[14]~17_combout\,
	datab => \inst2|inst|mux_1|mux_1|mux_generate:3:mux_i|Mux1~1_combout\,
	datac => \inst2|inst3|DOUT[2]~3_combout\,
	datad => \inst2|inst1|alu3|adder|C[2]~1_combout\,
	combout => \inst2|inst1|alu3|adder|C[3]~2_combout\);

-- Location: LCCOMB_X13_Y32_N2
\inst2|inst1|alu3|adder|S[3]\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|inst1|alu3|adder|S\(3) = \inst2|inst|mux_1|mux_1|mux_generate:3:mux_i|Mux0~1_combout\ $ (\inst2|inst2|OUT16B[15]~16_combout\ $ (\inst2|inst3|DOUT[2]~3_combout\ $ (\inst2|inst1|alu3|adder|C[3]~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|inst|mux_1|mux_1|mux_generate:3:mux_i|Mux0~1_combout\,
	datab => \inst2|inst2|OUT16B[15]~16_combout\,
	datac => \inst2|inst3|DOUT[2]~3_combout\,
	datad => \inst2|inst1|alu3|adder|C[3]~2_combout\,
	combout => \inst2|inst1|alu3|adder|S\(3));

-- Location: LCCOMB_X12_Y33_N2
\inst2|inst1|alu3|mux|Mux0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|inst1|alu3|mux|Mux0~0_combout\ = (!\inst2|inst3|DOUT[1]~4_combout\ & ((\inst2|inst3|DOUT[0]~2_combout\ & ((\inst2|inst|mux_1|mux_1|mux_generate:3:mux_i|Mux0~1_combout\) # (\inst2|inst2|OUT16B[15]~16_combout\))) # (!\inst2|inst3|DOUT[0]~2_combout\ & 
-- (\inst2|inst|mux_1|mux_1|mux_generate:3:mux_i|Mux0~1_combout\ & \inst2|inst2|OUT16B[15]~16_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|inst3|DOUT[0]~2_combout\,
	datab => \inst2|inst|mux_1|mux_1|mux_generate:3:mux_i|Mux0~1_combout\,
	datac => \inst2|inst2|OUT16B[15]~16_combout\,
	datad => \inst2|inst3|DOUT[1]~4_combout\,
	combout => \inst2|inst1|alu3|mux|Mux0~0_combout\);

-- Location: LCCOMB_X12_Y33_N8
\inst2|inst1|alu3|mux|Mux0~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|inst1|alu3|mux|Mux0~1_combout\ = (\inst2|inst1|alu3|mux|Mux0~0_combout\) # ((!\inst2|inst3|DOUT[0]~2_combout\ & (\inst2|inst1|alu3|adder|S\(3) & \inst2|inst3|DOUT[1]~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|inst3|DOUT[0]~2_combout\,
	datab => \inst2|inst1|alu3|adder|S\(3),
	datac => \inst2|inst1|alu3|mux|Mux0~0_combout\,
	datad => \inst2|inst3|DOUT[1]~4_combout\,
	combout => \inst2|inst1|alu3|mux|Mux0~1_combout\);

-- Location: LCCOMB_X12_Y33_N12
\inst3|OUT16B[15]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|OUT16B[15]~0_combout\ = (\inst|Mux5~0_combout\ & (((\inst1|DOUT[15]$latch~combout\)) # (!\inst1|DOUT[15]_2612~combout\))) # (!\inst|Mux5~0_combout\ & (((\inst2|inst1|alu3|mux|Mux0~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111011110100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Mux5~0_combout\,
	datab => \inst1|DOUT[15]_2612~combout\,
	datac => \inst1|DOUT[15]$latch~combout\,
	datad => \inst2|inst1|alu3|mux|Mux0~1_combout\,
	combout => \inst3|OUT16B[15]~0_combout\);

-- Location: LCCOMB_X11_Y35_N30
\inst2|inst|reg_gen:5:regs|reg_2|y[7]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|inst|reg_gen:5:regs|reg_2|y[7]~feeder_combout\ = \inst3|OUT16B[15]~0_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst3|OUT16B[15]~0_combout\,
	combout => \inst2|inst|reg_gen:5:regs|reg_2|y[7]~feeder_combout\);

-- Location: FF_X11_Y35_N31
\inst2|inst|reg_gen:5:regs|reg_2|y[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~input_o\,
	d => \inst2|inst|reg_gen:5:regs|reg_2|y[7]~feeder_combout\,
	ena => \inst2|inst|add_reg1_dcd|Mux3~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst2|inst|reg_gen:5:regs|reg_2|y\(7));

-- Location: LCCOMB_X14_Y33_N8
\inst2|inst|mux_2|mux_1|mux_generate:3:mux_i|Mux0~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|inst|mux_2|mux_1|mux_generate:3:mux_i|Mux0~1_combout\ = ((!\inst4|inst1|exception~2_combout\ & (\inst4|inst1|data_out[6]~8_combout\ & \inst2|inst|reg_gen:1:regs|reg_2|y\(7)))) # (!\inst2|inst|mux_2|mux_1|mux_generate:0:mux_i|Mux3~1_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111010101010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|inst|mux_2|mux_1|mux_generate:0:mux_i|Mux3~1_combout\,
	datab => \inst4|inst1|exception~2_combout\,
	datac => \inst4|inst1|data_out[6]~8_combout\,
	datad => \inst2|inst|reg_gen:1:regs|reg_2|y\(7),
	combout => \inst2|inst|mux_2|mux_1|mux_generate:3:mux_i|Mux0~1_combout\);

-- Location: LCCOMB_X14_Y33_N12
\inst2|inst|reg_gen:4:regs|reg_2|y[7]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|inst|reg_gen:4:regs|reg_2|y[7]~feeder_combout\ = \inst3|OUT16B[15]~0_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst3|OUT16B[15]~0_combout\,
	combout => \inst2|inst|reg_gen:4:regs|reg_2|y[7]~feeder_combout\);

-- Location: FF_X14_Y33_N13
\inst2|inst|reg_gen:4:regs|reg_2|y[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~input_o\,
	d => \inst2|inst|reg_gen:4:regs|reg_2|y[7]~feeder_combout\,
	ena => \inst2|inst|add_reg1_dcd|Mux3~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst2|inst|reg_gen:4:regs|reg_2|y\(7));

-- Location: LCCOMB_X14_Y33_N14
\inst2|inst|mux_2|mux_1|mux_generate:3:mux_i|Mux0~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|inst|mux_2|mux_1|mux_generate:3:mux_i|Mux0~2_combout\ = (\inst2|inst|mux_2|mux_1|mux_generate:0:mux_i|Mux3~0_combout\ & (((\inst2|inst|mux_2|mux_1|mux_generate:3:mux_i|Mux0~1_combout\)))) # 
-- (!\inst2|inst|mux_2|mux_1|mux_generate:0:mux_i|Mux3~0_combout\ & ((\inst2|inst|mux_2|mux_1|mux_generate:3:mux_i|Mux0~1_combout\ & ((\inst2|inst|reg_gen:4:regs|reg_2|y\(7)))) # (!\inst2|inst|mux_2|mux_1|mux_generate:3:mux_i|Mux0~1_combout\ & 
-- (\inst2|inst|reg_gen:5:regs|reg_2|y\(7)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001011000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|inst|reg_gen:5:regs|reg_2|y\(7),
	datab => \inst2|inst|mux_2|mux_1|mux_generate:0:mux_i|Mux3~0_combout\,
	datac => \inst2|inst|mux_2|mux_1|mux_generate:3:mux_i|Mux0~1_combout\,
	datad => \inst2|inst|reg_gen:4:regs|reg_2|y\(7),
	combout => \inst2|inst|mux_2|mux_1|mux_generate:3:mux_i|Mux0~2_combout\);

-- Location: LCCOMB_X9_Y33_N28
\inst2|inst|reg_gen:3:regs|reg_2|y[7]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|inst|reg_gen:3:regs|reg_2|y[7]~feeder_combout\ = \inst3|OUT16B[15]~0_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst3|OUT16B[15]~0_combout\,
	combout => \inst2|inst|reg_gen:3:regs|reg_2|y[7]~feeder_combout\);

-- Location: FF_X9_Y33_N29
\inst2|inst|reg_gen:3:regs|reg_2|y[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~input_o\,
	d => \inst2|inst|reg_gen:3:regs|reg_2|y[7]~feeder_combout\,
	ena => \inst2|inst|add_reg1_dcd|Mux3~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst2|inst|reg_gen:3:regs|reg_2|y\(7));

-- Location: LCCOMB_X12_Y33_N28
\inst2|inst|reg_gen:2:regs|reg_2|y[7]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|inst|reg_gen:2:regs|reg_2|y[7]~feeder_combout\ = \inst3|OUT16B[15]~0_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst3|OUT16B[15]~0_combout\,
	combout => \inst2|inst|reg_gen:2:regs|reg_2|y[7]~feeder_combout\);

-- Location: FF_X12_Y33_N29
\inst2|inst|reg_gen:2:regs|reg_2|y[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~input_o\,
	d => \inst2|inst|reg_gen:2:regs|reg_2|y[7]~feeder_combout\,
	ena => \inst2|inst|add_reg1_dcd|Mux3~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst2|inst|reg_gen:2:regs|reg_2|y\(7));

-- Location: LCCOMB_X13_Y33_N24
\inst2|inst|mux_2|mux_1|mux_generate:3:mux_i|Mux0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|inst|mux_2|mux_1|mux_generate:3:mux_i|Mux0~0_combout\ = (\inst4|inst1|data_out[6]~8_combout\ & ((\inst4|inst1|exception~2_combout\ & ((\inst2|inst|reg_gen:2:regs|reg_2|y\(7)))) # (!\inst4|inst1|exception~2_combout\ & 
-- (\inst2|inst|reg_gen:3:regs|reg_2|y\(7))))) # (!\inst4|inst1|data_out[6]~8_combout\ & (((\inst2|inst|reg_gen:2:regs|reg_2|y\(7)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110100001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|inst1|data_out[6]~8_combout\,
	datab => \inst2|inst|reg_gen:3:regs|reg_2|y\(7),
	datac => \inst4|inst1|exception~2_combout\,
	datad => \inst2|inst|reg_gen:2:regs|reg_2|y\(7),
	combout => \inst2|inst|mux_2|mux_1|mux_generate:3:mux_i|Mux0~0_combout\);

-- Location: LCCOMB_X13_Y33_N2
\inst2|inst|mux_2|mux_1|mux_generate:3:mux_i|Mux0~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|inst|mux_2|mux_1|mux_generate:3:mux_i|Mux0~3_combout\ = (\inst2|inst|mux_2|mux_1|mux_generate:0:mux_i|Mux3~2_combout\ & ((\inst2|inst|mux_2|mux_1|mux_generate:3:mux_i|Mux0~0_combout\))) # 
-- (!\inst2|inst|mux_2|mux_1|mux_generate:0:mux_i|Mux3~2_combout\ & (\inst2|inst|mux_2|mux_1|mux_generate:3:mux_i|Mux0~2_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst2|inst|mux_2|mux_1|mux_generate:0:mux_i|Mux3~2_combout\,
	datac => \inst2|inst|mux_2|mux_1|mux_generate:3:mux_i|Mux0~2_combout\,
	datad => \inst2|inst|mux_2|mux_1|mux_generate:3:mux_i|Mux0~0_combout\,
	combout => \inst2|inst|mux_2|mux_1|mux_generate:3:mux_i|Mux0~3_combout\);

-- Location: FF_X14_Y31_N13
\inst1|reg_gen:23:regs|y[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	asdata => \inst2|inst|mux_2|mux_1|mux_generate:3:mux_i|Mux0~3_combout\,
	sload => VCC,
	ena => \inst1|dec_to_en\(23),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|reg_gen:23:regs|y\(7));

-- Location: FF_X12_Y31_N29
\inst1|reg_gen:7:regs|y[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	asdata => \inst2|inst|mux_2|mux_1|mux_generate:3:mux_i|Mux0~3_combout\,
	sload => VCC,
	ena => \inst1|dec_to_en\(7),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|reg_gen:7:regs|y\(7));

-- Location: LCCOMB_X13_Y31_N10
\inst1|DOUT[15]~26\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|DOUT[15]~26_combout\ = (\inst2|inst1|alu1|mux|Mux3~1_combout\ & (\inst1|reg_gen:23:regs|y\(7))) # (!\inst2|inst1|alu1|mux|Mux3~1_combout\ & ((\inst1|reg_gen:7:regs|y\(7))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst1|reg_gen:23:regs|y\(7),
	datac => \inst1|reg_gen:7:regs|y\(7),
	datad => \inst2|inst1|alu1|mux|Mux3~1_combout\,
	combout => \inst1|DOUT[15]~26_combout\);

-- Location: LCCOMB_X10_Y34_N8
\inst1|reg_gen:13:regs|y[7]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|reg_gen:13:regs|y[7]~feeder_combout\ = \inst2|inst|mux_2|mux_1|mux_generate:3:mux_i|Mux0~3_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst2|inst|mux_2|mux_1|mux_generate:3:mux_i|Mux0~3_combout\,
	combout => \inst1|reg_gen:13:regs|y[7]~feeder_combout\);

-- Location: FF_X10_Y34_N9
\inst1|reg_gen:13:regs|y[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \inst1|reg_gen:13:regs|y[7]~feeder_combout\,
	ena => \inst1|dec_to_en\(13),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|reg_gen:13:regs|y\(7));

-- Location: LCCOMB_X10_Y34_N14
\inst1|reg_gen:21:regs|y[7]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|reg_gen:21:regs|y[7]~feeder_combout\ = \inst2|inst|mux_2|mux_1|mux_generate:3:mux_i|Mux0~3_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst2|inst|mux_2|mux_1|mux_generate:3:mux_i|Mux0~3_combout\,
	combout => \inst1|reg_gen:21:regs|y[7]~feeder_combout\);

-- Location: FF_X10_Y34_N15
\inst1|reg_gen:21:regs|y[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \inst1|reg_gen:21:regs|y[7]~feeder_combout\,
	ena => \inst1|dec_to_en\(21),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|reg_gen:21:regs|y\(7));

-- Location: FF_X13_Y34_N21
\inst1|reg_gen:5:regs|y[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	asdata => \inst2|inst|mux_2|mux_1|mux_generate:3:mux_i|Mux0~3_combout\,
	sload => VCC,
	ena => \inst1|dec_to_en\(5),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|reg_gen:5:regs|y\(7));

-- Location: LCCOMB_X13_Y34_N20
\inst1|DOUT[15]~22\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|DOUT[15]~22_combout\ = (\inst2|inst1|alu1|mux|Mux3~1_combout\ & ((\inst1|reg_gen:21:regs|y\(7)) # ((\inst2|inst1|alu0|mux|Mux0~1_combout\)))) # (!\inst2|inst1|alu1|mux|Mux3~1_combout\ & (((\inst1|reg_gen:5:regs|y\(7) & 
-- !\inst2|inst1|alu0|mux|Mux0~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|inst1|alu1|mux|Mux3~1_combout\,
	datab => \inst1|reg_gen:21:regs|y\(7),
	datac => \inst1|reg_gen:5:regs|y\(7),
	datad => \inst2|inst1|alu0|mux|Mux0~1_combout\,
	combout => \inst1|DOUT[15]~22_combout\);

-- Location: FF_X13_Y34_N19
\inst1|reg_gen:29:regs|y[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	asdata => \inst2|inst|mux_2|mux_1|mux_generate:3:mux_i|Mux0~3_combout\,
	sload => VCC,
	ena => \inst1|dec_to_en\(29),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|reg_gen:29:regs|y\(7));

-- Location: LCCOMB_X13_Y34_N18
\inst1|DOUT[15]~23\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|DOUT[15]~23_combout\ = (\inst1|DOUT[15]~22_combout\ & (((\inst1|reg_gen:29:regs|y\(7)) # (!\inst2|inst1|alu0|mux|Mux0~1_combout\)))) # (!\inst1|DOUT[15]~22_combout\ & (\inst1|reg_gen:13:regs|y\(7) & ((\inst2|inst1|alu0|mux|Mux0~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110001011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|reg_gen:13:regs|y\(7),
	datab => \inst1|DOUT[15]~22_combout\,
	datac => \inst1|reg_gen:29:regs|y\(7),
	datad => \inst2|inst1|alu0|mux|Mux0~1_combout\,
	combout => \inst1|DOUT[15]~23_combout\);

-- Location: LCCOMB_X13_Y34_N28
\inst1|DOUT[7]~199\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|DOUT[7]~199_combout\ = (\inst1|DOUT[3]~198_combout\ & (((\inst1|DOUT[12]~48_combout\)))) # (!\inst1|DOUT[3]~198_combout\ & ((\inst1|DOUT[12]~48_combout\ & (\inst1|DOUT[15]~26_combout\)) # (!\inst1|DOUT[12]~48_combout\ & 
-- ((\inst1|DOUT[15]~23_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110001111100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|DOUT[15]~26_combout\,
	datab => \inst1|DOUT[3]~198_combout\,
	datac => \inst1|DOUT[12]~48_combout\,
	datad => \inst1|DOUT[15]~23_combout\,
	combout => \inst1|DOUT[7]~199_combout\);

-- Location: LCCOMB_X9_Y32_N0
\inst1|reg_gen:20:regs|y[7]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|reg_gen:20:regs|y[7]~feeder_combout\ = \inst2|inst|mux_2|mux_1|mux_generate:1:mux_i|Mux0~3_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst2|inst|mux_2|mux_1|mux_generate:1:mux_i|Mux0~3_combout\,
	combout => \inst1|reg_gen:20:regs|y[7]~feeder_combout\);

-- Location: FF_X9_Y32_N1
\inst1|reg_gen:20:regs|y[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \inst1|reg_gen:20:regs|y[7]~feeder_combout\,
	ena => \inst1|dec_to_en\(20),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|reg_gen:20:regs|y\(7));

-- Location: FF_X9_Y32_N7
\inst1|reg_gen:4:regs|y[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	asdata => \inst2|inst|mux_2|mux_1|mux_generate:1:mux_i|Mux0~3_combout\,
	sload => VCC,
	ena => \inst1|dec_to_en\(4),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|reg_gen:4:regs|y\(7));

-- Location: LCCOMB_X9_Y32_N6
\inst1|DOUT[15]~35\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|DOUT[15]~35_combout\ = (\inst2|inst1|alu0|mux|Mux0~1_combout\ & (((\inst2|inst1|alu1|mux|Mux3~1_combout\)))) # (!\inst2|inst1|alu0|mux|Mux0~1_combout\ & ((\inst2|inst1|alu1|mux|Mux3~1_combout\ & (\inst1|reg_gen:20:regs|y\(7))) # 
-- (!\inst2|inst1|alu1|mux|Mux3~1_combout\ & ((\inst1|reg_gen:4:regs|y\(7))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|inst1|alu0|mux|Mux0~1_combout\,
	datab => \inst1|reg_gen:20:regs|y\(7),
	datac => \inst1|reg_gen:4:regs|y\(7),
	datad => \inst2|inst1|alu1|mux|Mux3~1_combout\,
	combout => \inst1|DOUT[15]~35_combout\);

-- Location: FF_X12_Y32_N5
\inst1|reg_gen:28:regs|y[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	asdata => \inst2|inst|mux_2|mux_1|mux_generate:1:mux_i|Mux0~3_combout\,
	sload => VCC,
	ena => \inst1|dec_to_en\(28),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|reg_gen:28:regs|y\(7));

-- Location: LCCOMB_X10_Y30_N10
\inst1|reg_gen:12:regs|y[7]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|reg_gen:12:regs|y[7]~feeder_combout\ = \inst2|inst|mux_2|mux_1|mux_generate:1:mux_i|Mux0~3_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst2|inst|mux_2|mux_1|mux_generate:1:mux_i|Mux0~3_combout\,
	combout => \inst1|reg_gen:12:regs|y[7]~feeder_combout\);

-- Location: FF_X10_Y30_N11
\inst1|reg_gen:12:regs|y[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \inst1|reg_gen:12:regs|y[7]~feeder_combout\,
	ena => \inst1|dec_to_en\(12),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|reg_gen:12:regs|y\(7));

-- Location: LCCOMB_X12_Y32_N4
\inst1|DOUT[15]~36\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|DOUT[15]~36_combout\ = (\inst1|DOUT[15]~35_combout\ & (((\inst1|reg_gen:28:regs|y\(7))) # (!\inst2|inst1|alu0|mux|Mux0~1_combout\))) # (!\inst1|DOUT[15]~35_combout\ & (\inst2|inst1|alu0|mux|Mux0~1_combout\ & ((\inst1|reg_gen:12:regs|y\(7)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110011010100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|DOUT[15]~35_combout\,
	datab => \inst2|inst1|alu0|mux|Mux0~1_combout\,
	datac => \inst1|reg_gen:28:regs|y\(7),
	datad => \inst1|reg_gen:12:regs|y\(7),
	combout => \inst1|DOUT[15]~36_combout\);

-- Location: LCCOMB_X14_Y34_N22
\inst1|reg_gen:15:regs|y[7]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|reg_gen:15:regs|y[7]~feeder_combout\ = \inst2|inst|mux_2|mux_1|mux_generate:3:mux_i|Mux0~3_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst2|inst|mux_2|mux_1|mux_generate:3:mux_i|Mux0~3_combout\,
	combout => \inst1|reg_gen:15:regs|y[7]~feeder_combout\);

-- Location: FF_X14_Y34_N23
\inst1|reg_gen:15:regs|y[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \inst1|reg_gen:15:regs|y[7]~feeder_combout\,
	ena => \inst1|dec_to_en\(15),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|reg_gen:15:regs|y\(7));

-- Location: LCCOMB_X12_Y32_N24
\inst1|DOUT[7]~200\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|DOUT[7]~200_combout\ = (\inst1|DOUT[3]~198_combout\ & ((\inst1|DOUT[7]~199_combout\ & ((\inst1|reg_gen:15:regs|y\(7)))) # (!\inst1|DOUT[7]~199_combout\ & (\inst1|DOUT[15]~36_combout\)))) # (!\inst1|DOUT[3]~198_combout\ & 
-- (\inst1|DOUT[7]~199_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110001100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|DOUT[3]~198_combout\,
	datab => \inst1|DOUT[7]~199_combout\,
	datac => \inst1|DOUT[15]~36_combout\,
	datad => \inst1|reg_gen:15:regs|y\(7),
	combout => \inst1|DOUT[7]~200_combout\);

-- Location: FF_X9_Y34_N17
\inst1|reg_gen:25:regs|y[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	asdata => \inst2|inst|mux_2|mux_1|mux_generate:3:mux_i|Mux0~3_combout\,
	sload => VCC,
	ena => \inst1|dec_to_en\(25),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|reg_gen:25:regs|y\(7));

-- Location: FF_X9_Y34_N27
\inst1|reg_gen:9:regs|y[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	asdata => \inst2|inst|mux_2|mux_1|mux_generate:3:mux_i|Mux0~3_combout\,
	sload => VCC,
	ena => \inst1|dec_to_en\(9),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|reg_gen:9:regs|y\(7));

-- Location: LCCOMB_X9_Y34_N26
\inst1|DOUT[15]~41\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|DOUT[15]~41_combout\ = (\inst2|inst1|alu1|mux|Mux3~1_combout\ & (\inst1|reg_gen:25:regs|y\(7))) # (!\inst2|inst1|alu1|mux|Mux3~1_combout\ & ((\inst1|reg_gen:9:regs|y\(7))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst1|reg_gen:25:regs|y\(7),
	datac => \inst1|reg_gen:9:regs|y\(7),
	datad => \inst2|inst1|alu1|mux|Mux3~1_combout\,
	combout => \inst1|DOUT[15]~41_combout\);

-- Location: FF_X12_Y34_N15
\inst1|reg_gen:17:regs|y[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	asdata => \inst2|inst|mux_2|mux_1|mux_generate:3:mux_i|Mux0~3_combout\,
	sload => VCC,
	ena => \inst1|dec_to_en\(17),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|reg_gen:17:regs|y\(7));

-- Location: LCCOMB_X12_Y34_N14
\inst1|DOUT[15]~42\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|DOUT[15]~42_combout\ = (\inst2|inst1|alu0|mux|Mux2~1_combout\ & (((\inst2|inst1|alu0|mux|Mux0~1_combout\)))) # (!\inst2|inst1|alu0|mux|Mux2~1_combout\ & ((\inst2|inst1|alu0|mux|Mux0~1_combout\ & (\inst1|DOUT[15]~41_combout\)) # 
-- (!\inst2|inst1|alu0|mux|Mux0~1_combout\ & ((\inst1|reg_gen:17:regs|y\(7))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|DOUT[15]~41_combout\,
	datab => \inst2|inst1|alu0|mux|Mux2~1_combout\,
	datac => \inst1|reg_gen:17:regs|y\(7),
	datad => \inst2|inst1|alu0|mux|Mux0~1_combout\,
	combout => \inst1|DOUT[15]~42_combout\);

-- Location: LCCOMB_X8_Y34_N0
\inst1|reg_gen:27:regs|y[7]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|reg_gen:27:regs|y[7]~feeder_combout\ = \inst2|inst|mux_2|mux_1|mux_generate:3:mux_i|Mux0~3_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst2|inst|mux_2|mux_1|mux_generate:3:mux_i|Mux0~3_combout\,
	combout => \inst1|reg_gen:27:regs|y[7]~feeder_combout\);

-- Location: FF_X8_Y34_N1
\inst1|reg_gen:27:regs|y[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \inst1|reg_gen:27:regs|y[7]~feeder_combout\,
	ena => \inst1|dec_to_en\(27),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|reg_gen:27:regs|y\(7));

-- Location: FF_X8_Y34_N19
\inst1|reg_gen:11:regs|y[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	asdata => \inst2|inst|mux_2|mux_1|mux_generate:3:mux_i|Mux0~3_combout\,
	sload => VCC,
	ena => \inst1|dec_to_en\(11),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|reg_gen:11:regs|y\(7));

-- Location: LCCOMB_X8_Y34_N18
\inst1|DOUT[15]~43\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|DOUT[15]~43_combout\ = (\inst2|inst1|alu1|mux|Mux3~1_combout\ & (\inst1|reg_gen:27:regs|y\(7))) # (!\inst2|inst1|alu1|mux|Mux3~1_combout\ & ((\inst1|reg_gen:11:regs|y\(7))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|reg_gen:27:regs|y\(7),
	datac => \inst1|reg_gen:11:regs|y\(7),
	datad => \inst2|inst1|alu1|mux|Mux3~1_combout\,
	combout => \inst1|DOUT[15]~43_combout\);

-- Location: FF_X12_Y34_N25
\inst1|reg_gen:19:regs|y[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	asdata => \inst2|inst|mux_2|mux_1|mux_generate:3:mux_i|Mux0~3_combout\,
	sload => VCC,
	ena => \inst1|dec_to_en\(19),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|reg_gen:19:regs|y\(7));

-- Location: LCCOMB_X12_Y34_N24
\inst1|DOUT[15]~44\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|DOUT[15]~44_combout\ = (\inst1|DOUT[15]~42_combout\ & ((\inst1|DOUT[15]~43_combout\) # ((!\inst2|inst1|alu0|mux|Mux2~1_combout\)))) # (!\inst1|DOUT[15]~42_combout\ & (((\inst1|reg_gen:19:regs|y\(7) & \inst2|inst1|alu0|mux|Mux2~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|DOUT[15]~42_combout\,
	datab => \inst1|DOUT[15]~43_combout\,
	datac => \inst1|reg_gen:19:regs|y\(7),
	datad => \inst2|inst1|alu0|mux|Mux2~1_combout\,
	combout => \inst1|DOUT[15]~44_combout\);

-- Location: LCCOMB_X13_Y36_N20
\inst1|DOUT[7]~201\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|DOUT[7]~201_combout\ = (\inst1|DOUT[3]~260_combout\ & (\inst2|inst1|alu0|mux|Mux1~1_combout\)) # (!\inst1|DOUT[3]~260_combout\ & ((\inst2|inst1|alu0|mux|Mux1~1_combout\ & (\inst1|DOUT[7]~200_combout\)) # (!\inst2|inst1|alu0|mux|Mux1~1_combout\ & 
-- ((\inst1|DOUT[15]~44_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100111001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|DOUT[3]~260_combout\,
	datab => \inst2|inst1|alu0|mux|Mux1~1_combout\,
	datac => \inst1|DOUT[7]~200_combout\,
	datad => \inst1|DOUT[15]~44_combout\,
	combout => \inst1|DOUT[7]~201_combout\);

-- Location: LCCOMB_X13_Y36_N10
\inst1|DOUT[7]~202\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|DOUT[7]~202_combout\ = (\inst1|DOUT[3]~260_combout\ & ((\inst1|DOUT[7]~201_combout\ & (\inst1|DOUT[15]~29_combout\)) # (!\inst1|DOUT[7]~201_combout\ & ((\inst1|DOUT[7]~197_combout\))))) # (!\inst1|DOUT[3]~260_combout\ & 
-- (((\inst1|DOUT[7]~201_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|DOUT[3]~260_combout\,
	datab => \inst1|DOUT[15]~29_combout\,
	datac => \inst1|DOUT[7]~197_combout\,
	datad => \inst1|DOUT[7]~201_combout\,
	combout => \inst1|DOUT[7]~202_combout\);

-- Location: LCCOMB_X13_Y36_N6
\inst1|DOUT[7]~204\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|DOUT[7]~204_combout\ = (\inst1|DOUT[3]~203_combout\ & ((\inst1|DOUT[7]~202_combout\))) # (!\inst1|DOUT[3]~203_combout\ & (\inst1|reg_gen:30:regs|y\(7)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|DOUT[3]~203_combout\,
	datab => \inst1|reg_gen:30:regs|y\(7),
	datad => \inst1|DOUT[7]~202_combout\,
	combout => \inst1|DOUT[7]~204_combout\);

-- Location: LCCOMB_X13_Y36_N4
\inst1|DOUT[7]$latch\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|DOUT[7]$latch~combout\ = (!\inst1|DOUT[7]~206_combout\ & ((GLOBAL(\inst1|DOUT[15]~52clkctrl_outclk\) & ((\inst1|DOUT[7]~204_combout\))) # (!GLOBAL(\inst1|DOUT[15]~52clkctrl_outclk\) & (\inst1|DOUT[7]$latch~combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111000000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|DOUT[15]~52clkctrl_outclk\,
	datab => \inst1|DOUT[7]$latch~combout\,
	datac => \inst1|DOUT[7]~206_combout\,
	datad => \inst1|DOUT[7]~204_combout\,
	combout => \inst1|DOUT[7]$latch~combout\);

-- Location: LCCOMB_X14_Y36_N22
\inst3|OUT16B[7]~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|OUT16B[7]~8_combout\ = (\inst|Mux5~0_combout\ & (((\inst1|DOUT[7]$latch~combout\) # (!\inst1|DOUT[7]_2052~combout\)))) # (!\inst|Mux5~0_combout\ & (\inst2|inst1|alu1|mux|Mux0~1_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111001001110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Mux5~0_combout\,
	datab => \inst2|inst1|alu1|mux|Mux0~1_combout\,
	datac => \inst1|DOUT[7]_2052~combout\,
	datad => \inst1|DOUT[7]$latch~combout\,
	combout => \inst3|OUT16B[7]~8_combout\);

-- Location: LCCOMB_X14_Y36_N16
\inst2|inst|reg_gen:3:regs|reg_1|y[7]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|inst|reg_gen:3:regs|reg_1|y[7]~feeder_combout\ = \inst3|OUT16B[7]~8_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst3|OUT16B[7]~8_combout\,
	combout => \inst2|inst|reg_gen:3:regs|reg_1|y[7]~feeder_combout\);

-- Location: FF_X14_Y36_N17
\inst2|inst|reg_gen:3:regs|reg_1|y[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~input_o\,
	d => \inst2|inst|reg_gen:3:regs|reg_1|y[7]~feeder_combout\,
	ena => \inst2|inst|add_reg1_dcd|Mux3~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst2|inst|reg_gen:3:regs|reg_1|y\(7));

-- Location: FF_X13_Y36_N17
\inst2|inst|reg_gen:2:regs|reg_1|y[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~input_o\,
	asdata => \inst3|OUT16B[7]~8_combout\,
	sload => VCC,
	ena => \inst2|inst|add_reg1_dcd|Mux3~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst2|inst|reg_gen:2:regs|reg_1|y\(7));

-- Location: LCCOMB_X16_Y36_N26
\inst2|inst|mux_2|mux_1|mux_generate:1:mux_i|Mux0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|inst|mux_2|mux_1|mux_generate:1:mux_i|Mux0~0_combout\ = (\inst4|inst1|data_out[6]~8_combout\ & ((\inst4|inst1|exception~2_combout\ & ((\inst2|inst|reg_gen:2:regs|reg_1|y\(7)))) # (!\inst4|inst1|exception~2_combout\ & 
-- (\inst2|inst|reg_gen:3:regs|reg_1|y\(7))))) # (!\inst4|inst1|data_out[6]~8_combout\ & (((\inst2|inst|reg_gen:2:regs|reg_1|y\(7)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101100001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|inst|reg_gen:3:regs|reg_1|y\(7),
	datab => \inst4|inst1|data_out[6]~8_combout\,
	datac => \inst4|inst1|exception~2_combout\,
	datad => \inst2|inst|reg_gen:2:regs|reg_1|y\(7),
	combout => \inst2|inst|mux_2|mux_1|mux_generate:1:mux_i|Mux0~0_combout\);

-- Location: FF_X14_Y36_N23
\inst2|inst|reg_gen:4:regs|reg_1|y[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~input_o\,
	d => \inst3|OUT16B[7]~8_combout\,
	ena => \inst2|inst|add_reg1_dcd|Mux3~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst2|inst|reg_gen:4:regs|reg_1|y\(7));

-- Location: LCCOMB_X16_Y36_N8
\inst2|inst|reg_gen:5:regs|reg_1|y[7]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|inst|reg_gen:5:regs|reg_1|y[7]~feeder_combout\ = \inst3|OUT16B[7]~8_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst3|OUT16B[7]~8_combout\,
	combout => \inst2|inst|reg_gen:5:regs|reg_1|y[7]~feeder_combout\);

-- Location: FF_X16_Y36_N9
\inst2|inst|reg_gen:5:regs|reg_1|y[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~input_o\,
	d => \inst2|inst|reg_gen:5:regs|reg_1|y[7]~feeder_combout\,
	ena => \inst2|inst|add_reg1_dcd|Mux3~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst2|inst|reg_gen:5:regs|reg_1|y\(7));

-- Location: LCCOMB_X16_Y36_N18
\inst2|inst|mux_2|mux_1|mux_generate:1:mux_i|Mux0~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|inst|mux_2|mux_1|mux_generate:1:mux_i|Mux0~1_combout\ = ((\inst4|inst1|data_out[6]~8_combout\ & (\inst2|inst|reg_gen:1:regs|reg_1|y\(7) & !\inst4|inst1|exception~2_combout\))) # (!\inst2|inst|mux_2|mux_1|mux_generate:0:mux_i|Mux3~1_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010111010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|inst|mux_2|mux_1|mux_generate:0:mux_i|Mux3~1_combout\,
	datab => \inst4|inst1|data_out[6]~8_combout\,
	datac => \inst2|inst|reg_gen:1:regs|reg_1|y\(7),
	datad => \inst4|inst1|exception~2_combout\,
	combout => \inst2|inst|mux_2|mux_1|mux_generate:1:mux_i|Mux0~1_combout\);

-- Location: LCCOMB_X16_Y36_N28
\inst2|inst|mux_2|mux_1|mux_generate:1:mux_i|Mux0~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|inst|mux_2|mux_1|mux_generate:1:mux_i|Mux0~2_combout\ = (\inst2|inst|mux_2|mux_1|mux_generate:0:mux_i|Mux3~0_combout\ & (((\inst2|inst|mux_2|mux_1|mux_generate:1:mux_i|Mux0~1_combout\)))) # 
-- (!\inst2|inst|mux_2|mux_1|mux_generate:0:mux_i|Mux3~0_combout\ & ((\inst2|inst|mux_2|mux_1|mux_generate:1:mux_i|Mux0~1_combout\ & (\inst2|inst|reg_gen:4:regs|reg_1|y\(7))) # (!\inst2|inst|mux_2|mux_1|mux_generate:1:mux_i|Mux0~1_combout\ & 
-- ((\inst2|inst|reg_gen:5:regs|reg_1|y\(7))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|inst|reg_gen:4:regs|reg_1|y\(7),
	datab => \inst2|inst|mux_2|mux_1|mux_generate:0:mux_i|Mux3~0_combout\,
	datac => \inst2|inst|reg_gen:5:regs|reg_1|y\(7),
	datad => \inst2|inst|mux_2|mux_1|mux_generate:1:mux_i|Mux0~1_combout\,
	combout => \inst2|inst|mux_2|mux_1|mux_generate:1:mux_i|Mux0~2_combout\);

-- Location: LCCOMB_X16_Y36_N20
\inst2|inst|mux_2|mux_1|mux_generate:1:mux_i|Mux0~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|inst|mux_2|mux_1|mux_generate:1:mux_i|Mux0~3_combout\ = (\inst2|inst|mux_2|mux_1|mux_generate:0:mux_i|Mux3~2_combout\ & (\inst2|inst|mux_2|mux_1|mux_generate:1:mux_i|Mux0~0_combout\)) # (!\inst2|inst|mux_2|mux_1|mux_generate:0:mux_i|Mux3~2_combout\ 
-- & ((\inst2|inst|mux_2|mux_1|mux_generate:1:mux_i|Mux0~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst2|inst|mux_2|mux_1|mux_generate:0:mux_i|Mux3~2_combout\,
	datac => \inst2|inst|mux_2|mux_1|mux_generate:1:mux_i|Mux0~0_combout\,
	datad => \inst2|inst|mux_2|mux_1|mux_generate:1:mux_i|Mux0~2_combout\,
	combout => \inst2|inst|mux_2|mux_1|mux_generate:1:mux_i|Mux0~3_combout\);

-- Location: LCCOMB_X16_Y36_N6
\inst2|inst2|OUT16B[7]~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|inst2|OUT16B[7]~7_combout\ = (\inst|Mux7~8_combout\ & (\inst4|inst1|INS_OUT[5]~6_combout\)) # (!\inst|Mux7~8_combout\ & ((\inst2|inst|mux_2|mux_1|mux_generate:1:mux_i|Mux0~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst|Mux7~8_combout\,
	datac => \inst4|inst1|INS_OUT[5]~6_combout\,
	datad => \inst2|inst|mux_2|mux_1|mux_generate:1:mux_i|Mux0~3_combout\,
	combout => \inst2|inst2|OUT16B[7]~7_combout\);

-- Location: LCCOMB_X17_Y32_N20
\inst2|inst1|alu1|adder|C4~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|inst1|alu1|adder|C4~0_combout\ = (\inst2|inst|mux_1|mux_1|mux_generate:1:mux_i|Mux0~1_combout\ & ((\inst2|inst1|alu1|adder|C[3]~2_combout\) # (\inst2|inst2|OUT16B[7]~7_combout\ $ (\inst2|inst3|DOUT[2]~3_combout\)))) # 
-- (!\inst2|inst|mux_1|mux_1|mux_generate:1:mux_i|Mux0~1_combout\ & (\inst2|inst1|alu1|adder|C[3]~2_combout\ & (\inst2|inst2|OUT16B[7]~7_combout\ $ (\inst2|inst3|DOUT[2]~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101111001001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|inst2|OUT16B[7]~7_combout\,
	datab => \inst2|inst|mux_1|mux_1|mux_generate:1:mux_i|Mux0~1_combout\,
	datac => \inst2|inst3|DOUT[2]~3_combout\,
	datad => \inst2|inst1|alu1|adder|C[3]~2_combout\,
	combout => \inst2|inst1|alu1|adder|C4~0_combout\);

-- Location: LCCOMB_X18_Y32_N12
\inst2|inst2|OUT16B[8]~13\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|inst2|OUT16B[8]~13_combout\ = (\inst|Mux7~8_combout\ & ((\inst4|inst1|INS_OUT[5]~6_combout\))) # (!\inst|Mux7~8_combout\ & (\inst2|inst|mux_2|mux_1|mux_generate:2:mux_i|Mux3~3_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Mux7~8_combout\,
	datac => \inst2|inst|mux_2|mux_1|mux_generate:2:mux_i|Mux3~3_combout\,
	datad => \inst4|inst1|INS_OUT[5]~6_combout\,
	combout => \inst2|inst2|OUT16B[8]~13_combout\);

-- Location: LCCOMB_X13_Y30_N28
\inst2|inst1|alu2|mux|Mux3~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|inst1|alu2|mux|Mux3~0_combout\ = \inst2|inst2|OUT16B[8]~13_combout\ $ (((\inst2|inst3|DOUT[1]~4_combout\ & (\inst2|inst1|alu1|adder|C4~0_combout\ $ (\inst2|inst3|DOUT[2]~3_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011010001111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|inst1|alu1|adder|C4~0_combout\,
	datab => \inst2|inst3|DOUT[1]~4_combout\,
	datac => \inst2|inst2|OUT16B[8]~13_combout\,
	datad => \inst2|inst3|DOUT[2]~3_combout\,
	combout => \inst2|inst1|alu2|mux|Mux3~0_combout\);

-- Location: LCCOMB_X13_Y30_N30
\inst2|inst1|alu2|mux|Mux3~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|inst1|alu2|mux|Mux3~1_combout\ = (\inst2|inst1|alu2|mux|Mux3~0_combout\ & (\inst2|inst3|DOUT[1]~4_combout\ $ (((\inst2|inst3|DOUT[0]~2_combout\) # (\inst2|inst|mux_1|mux_1|mux_generate:2:mux_i|Mux3~1_combout\))))) # 
-- (!\inst2|inst1|alu2|mux|Mux3~0_combout\ & (\inst2|inst|mux_1|mux_1|mux_generate:2:mux_i|Mux3~1_combout\ & (\inst2|inst3|DOUT[0]~2_combout\ $ (\inst2|inst3|DOUT[1]~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001010011101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|inst3|DOUT[0]~2_combout\,
	datab => \inst2|inst1|alu2|mux|Mux3~0_combout\,
	datac => \inst2|inst|mux_1|mux_1|mux_generate:2:mux_i|Mux3~1_combout\,
	datad => \inst2|inst3|DOUT[1]~4_combout\,
	combout => \inst2|inst1|alu2|mux|Mux3~1_combout\);

-- Location: LCCOMB_X13_Y35_N0
\inst3|OUT16B[8]~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|OUT16B[8]~7_combout\ = (\inst|Mux5~0_combout\ & (((\inst1|DOUT[8]$latch~combout\)) # (!\inst1|DOUT[15]_2612~combout\))) # (!\inst|Mux5~0_combout\ & (((\inst2|inst1|alu2|mux|Mux3~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111011111000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|DOUT[15]_2612~combout\,
	datab => \inst|Mux5~0_combout\,
	datac => \inst1|DOUT[8]$latch~combout\,
	datad => \inst2|inst1|alu2|mux|Mux3~1_combout\,
	combout => \inst3|OUT16B[8]~7_combout\);

-- Location: LCCOMB_X16_Y36_N30
\inst2|inst|reg_gen:1:regs|reg_2|y[0]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|inst|reg_gen:1:regs|reg_2|y[0]~feeder_combout\ = \inst3|OUT16B[8]~7_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst3|OUT16B[8]~7_combout\,
	combout => \inst2|inst|reg_gen:1:regs|reg_2|y[0]~feeder_combout\);

-- Location: FF_X16_Y36_N31
\inst2|inst|reg_gen:1:regs|reg_2|y[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~input_o\,
	d => \inst2|inst|reg_gen:1:regs|reg_2|y[0]~feeder_combout\,
	ena => \inst2|inst|add_reg1_dcd|Mux3~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst2|inst|reg_gen:1:regs|reg_2|y\(0));

-- Location: LCCOMB_X16_Y36_N22
\inst2|inst|mux_1|mux_1|mux_generate:2:mux_i|Mux3~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|inst|mux_1|mux_1|mux_generate:2:mux_i|Mux3~0_combout\ = (!\inst4|inst1|exception~2_combout\ & (\inst2|inst|reg_gen:1:regs|reg_2|y\(0) & \inst4|inst1|data_out[9]~3_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst4|inst1|exception~2_combout\,
	datac => \inst2|inst|reg_gen:1:regs|reg_2|y\(0),
	datad => \inst4|inst1|data_out[9]~3_combout\,
	combout => \inst2|inst|mux_1|mux_1|mux_generate:2:mux_i|Mux3~0_combout\);

-- Location: LCCOMB_X13_Y35_N30
\inst2|inst|reg_gen:6:regs|reg_2|y[0]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|inst|reg_gen:6:regs|reg_2|y[0]~feeder_combout\ = \inst3|OUT16B[8]~7_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|OUT16B[8]~7_combout\,
	combout => \inst2|inst|reg_gen:6:regs|reg_2|y[0]~feeder_combout\);

-- Location: FF_X13_Y35_N31
\inst2|inst|reg_gen:6:regs|reg_2|y[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~input_o\,
	d => \inst2|inst|reg_gen:6:regs|reg_2|y[0]~feeder_combout\,
	ena => \inst2|inst|add_reg1_dcd|Mux3~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst2|inst|reg_gen:6:regs|reg_2|y\(0));

-- Location: LCCOMB_X16_Y36_N24
\inst2|inst|mux_1|mux_1|mux_generate:2:mux_i|Mux3~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|inst|mux_1|mux_1|mux_generate:2:mux_i|Mux3~1_combout\ = (\inst2|inst|mux_1|mux_1|mux_generate:2:mux_i|Mux2~0_combout\ & ((\inst4|inst1|INS_OUT[15]~4_combout\ & ((\inst2|inst|reg_gen:6:regs|reg_2|y\(0)))) # (!\inst4|inst1|INS_OUT[15]~4_combout\ & 
-- (\inst2|inst|mux_1|mux_1|mux_generate:2:mux_i|Mux3~0_combout\)))) # (!\inst2|inst|mux_1|mux_1|mux_generate:2:mux_i|Mux2~0_combout\ & (((\inst4|inst1|INS_OUT[15]~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100000111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|inst|mux_1|mux_1|mux_generate:2:mux_i|Mux3~0_combout\,
	datab => \inst2|inst|mux_1|mux_1|mux_generate:2:mux_i|Mux2~0_combout\,
	datac => \inst4|inst1|INS_OUT[15]~4_combout\,
	datad => \inst2|inst|reg_gen:6:regs|reg_2|y\(0),
	combout => \inst2|inst|mux_1|mux_1|mux_generate:2:mux_i|Mux3~1_combout\);

-- Location: LCCOMB_X17_Y32_N22
\inst2|inst1|alu2|adder|C[1]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|inst1|alu2|adder|C[1]~0_combout\ = (\inst2|inst|mux_1|mux_1|mux_generate:2:mux_i|Mux3~1_combout\ & ((\inst2|inst1|alu1|adder|C4~0_combout\) # (\inst2|inst3|DOUT[2]~3_combout\ $ (\inst2|inst2|OUT16B[8]~13_combout\)))) # 
-- (!\inst2|inst|mux_1|mux_1|mux_generate:2:mux_i|Mux3~1_combout\ & (\inst2|inst1|alu1|adder|C4~0_combout\ & (\inst2|inst3|DOUT[2]~3_combout\ $ (\inst2|inst2|OUT16B[8]~13_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101111001001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|inst3|DOUT[2]~3_combout\,
	datab => \inst2|inst|mux_1|mux_1|mux_generate:2:mux_i|Mux3~1_combout\,
	datac => \inst2|inst2|OUT16B[8]~13_combout\,
	datad => \inst2|inst1|alu1|adder|C4~0_combout\,
	combout => \inst2|inst1|alu2|adder|C[1]~0_combout\);

-- Location: LCCOMB_X14_Y32_N2
\inst2|inst1|alu2|mux|Mux2~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|inst1|alu2|mux|Mux2~0_combout\ = \inst2|inst2|OUT16B[9]~12_combout\ $ (((\inst2|inst3|DOUT[1]~4_combout\ & (\inst2|inst3|DOUT[2]~3_combout\ $ (\inst2|inst1|alu2|adder|C[1]~0_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001101001101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|inst2|OUT16B[9]~12_combout\,
	datab => \inst2|inst3|DOUT[2]~3_combout\,
	datac => \inst2|inst3|DOUT[1]~4_combout\,
	datad => \inst2|inst1|alu2|adder|C[1]~0_combout\,
	combout => \inst2|inst1|alu2|mux|Mux2~0_combout\);

-- Location: LCCOMB_X14_Y33_N6
\inst2|inst1|alu2|mux|Mux2~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|inst1|alu2|mux|Mux2~1_combout\ = (\inst2|inst|mux_1|mux_1|mux_generate:2:mux_i|Mux2~2_combout\ & (\inst2|inst3|DOUT[1]~4_combout\ $ (((\inst2|inst3|DOUT[0]~2_combout\) # (\inst2|inst1|alu2|mux|Mux2~0_combout\))))) # 
-- (!\inst2|inst|mux_1|mux_1|mux_generate:2:mux_i|Mux2~2_combout\ & (\inst2|inst1|alu2|mux|Mux2~0_combout\ & (\inst2|inst3|DOUT[0]~2_combout\ $ (\inst2|inst3|DOUT[1]~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001010011101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|inst3|DOUT[0]~2_combout\,
	datab => \inst2|inst|mux_1|mux_1|mux_generate:2:mux_i|Mux2~2_combout\,
	datac => \inst2|inst1|alu2|mux|Mux2~0_combout\,
	datad => \inst2|inst3|DOUT[1]~4_combout\,
	combout => \inst2|inst1|alu2|mux|Mux2~1_combout\);

-- Location: LCCOMB_X13_Y35_N14
\inst3|OUT16B[9]~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|OUT16B[9]~6_combout\ = (\inst|Mux5~0_combout\ & ((\inst1|DOUT[9]$latch~combout\) # ((!\inst1|DOUT[15]_2612~combout\)))) # (!\inst|Mux5~0_combout\ & (((\inst2|inst1|alu2|mux|Mux2~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100011111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Mux5~0_combout\,
	datab => \inst1|DOUT[9]$latch~combout\,
	datac => \inst2|inst1|alu2|mux|Mux2~1_combout\,
	datad => \inst1|DOUT[15]_2612~combout\,
	combout => \inst3|OUT16B[9]~6_combout\);

-- Location: LCCOMB_X13_Y35_N16
\inst2|inst|reg_gen:2:regs|reg_2|y[1]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|inst|reg_gen:2:regs|reg_2|y[1]~feeder_combout\ = \inst3|OUT16B[9]~6_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst3|OUT16B[9]~6_combout\,
	combout => \inst2|inst|reg_gen:2:regs|reg_2|y[1]~feeder_combout\);

-- Location: FF_X13_Y35_N17
\inst2|inst|reg_gen:2:regs|reg_2|y[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~input_o\,
	d => \inst2|inst|reg_gen:2:regs|reg_2|y[1]~feeder_combout\,
	ena => \inst2|inst|add_reg1_dcd|Mux3~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst2|inst|reg_gen:2:regs|reg_2|y\(1));

-- Location: LCCOMB_X14_Y35_N6
\inst2|inst|reg_gen:3:regs|reg_2|y[1]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|inst|reg_gen:3:regs|reg_2|y[1]~feeder_combout\ = \inst3|OUT16B[9]~6_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst3|OUT16B[9]~6_combout\,
	combout => \inst2|inst|reg_gen:3:regs|reg_2|y[1]~feeder_combout\);

-- Location: FF_X14_Y35_N7
\inst2|inst|reg_gen:3:regs|reg_2|y[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~input_o\,
	d => \inst2|inst|reg_gen:3:regs|reg_2|y[1]~feeder_combout\,
	ena => \inst2|inst|add_reg1_dcd|Mux3~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst2|inst|reg_gen:3:regs|reg_2|y\(1));

-- Location: LCCOMB_X14_Y35_N20
\inst2|inst|mux_2|mux_1|mux_generate:2:mux_i|Mux2~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|inst|mux_2|mux_1|mux_generate:2:mux_i|Mux2~0_combout\ = (\inst4|inst1|data_out[6]~8_combout\ & ((\inst4|inst1|exception~2_combout\ & (\inst2|inst|reg_gen:2:regs|reg_2|y\(1))) # (!\inst4|inst1|exception~2_combout\ & 
-- ((\inst2|inst|reg_gen:3:regs|reg_2|y\(1)))))) # (!\inst4|inst1|data_out[6]~8_combout\ & (((\inst2|inst|reg_gen:2:regs|reg_2|y\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001011010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|inst1|data_out[6]~8_combout\,
	datab => \inst4|inst1|exception~2_combout\,
	datac => \inst2|inst|reg_gen:2:regs|reg_2|y\(1),
	datad => \inst2|inst|reg_gen:3:regs|reg_2|y\(1),
	combout => \inst2|inst|mux_2|mux_1|mux_generate:2:mux_i|Mux2~0_combout\);

-- Location: LCCOMB_X14_Y35_N0
\inst2|inst|reg_gen:5:regs|reg_2|y[1]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|inst|reg_gen:5:regs|reg_2|y[1]~feeder_combout\ = \inst3|OUT16B[9]~6_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst3|OUT16B[9]~6_combout\,
	combout => \inst2|inst|reg_gen:5:regs|reg_2|y[1]~feeder_combout\);

-- Location: FF_X14_Y35_N1
\inst2|inst|reg_gen:5:regs|reg_2|y[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~input_o\,
	d => \inst2|inst|reg_gen:5:regs|reg_2|y[1]~feeder_combout\,
	ena => \inst2|inst|add_reg1_dcd|Mux3~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst2|inst|reg_gen:5:regs|reg_2|y\(1));

-- Location: LCCOMB_X18_Y35_N22
\inst2|inst|mux_2|mux_1|mux_generate:2:mux_i|Mux2~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|inst|mux_2|mux_1|mux_generate:2:mux_i|Mux2~1_combout\ = ((!\inst4|inst1|exception~2_combout\ & (\inst4|inst1|data_out[6]~8_combout\ & \inst2|inst|reg_gen:1:regs|reg_2|y\(1)))) # (!\inst2|inst|mux_2|mux_1|mux_generate:0:mux_i|Mux3~1_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|inst1|exception~2_combout\,
	datab => \inst4|inst1|data_out[6]~8_combout\,
	datac => \inst2|inst|mux_2|mux_1|mux_generate:0:mux_i|Mux3~1_combout\,
	datad => \inst2|inst|reg_gen:1:regs|reg_2|y\(1),
	combout => \inst2|inst|mux_2|mux_1|mux_generate:2:mux_i|Mux2~1_combout\);

-- Location: LCCOMB_X18_Y35_N24
\inst2|inst|reg_gen:4:regs|reg_2|y[1]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|inst|reg_gen:4:regs|reg_2|y[1]~feeder_combout\ = \inst3|OUT16B[9]~6_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst3|OUT16B[9]~6_combout\,
	combout => \inst2|inst|reg_gen:4:regs|reg_2|y[1]~feeder_combout\);

-- Location: FF_X18_Y35_N25
\inst2|inst|reg_gen:4:regs|reg_2|y[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~input_o\,
	d => \inst2|inst|reg_gen:4:regs|reg_2|y[1]~feeder_combout\,
	ena => \inst2|inst|add_reg1_dcd|Mux3~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst2|inst|reg_gen:4:regs|reg_2|y\(1));

-- Location: LCCOMB_X18_Y35_N12
\inst2|inst|mux_2|mux_1|mux_generate:2:mux_i|Mux2~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|inst|mux_2|mux_1|mux_generate:2:mux_i|Mux2~2_combout\ = (\inst2|inst|mux_2|mux_1|mux_generate:0:mux_i|Mux3~0_combout\ & (((\inst2|inst|mux_2|mux_1|mux_generate:2:mux_i|Mux2~1_combout\)))) # 
-- (!\inst2|inst|mux_2|mux_1|mux_generate:0:mux_i|Mux3~0_combout\ & ((\inst2|inst|mux_2|mux_1|mux_generate:2:mux_i|Mux2~1_combout\ & ((\inst2|inst|reg_gen:4:regs|reg_2|y\(1)))) # (!\inst2|inst|mux_2|mux_1|mux_generate:2:mux_i|Mux2~1_combout\ & 
-- (\inst2|inst|reg_gen:5:regs|reg_2|y\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001011000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|inst|reg_gen:5:regs|reg_2|y\(1),
	datab => \inst2|inst|mux_2|mux_1|mux_generate:0:mux_i|Mux3~0_combout\,
	datac => \inst2|inst|mux_2|mux_1|mux_generate:2:mux_i|Mux2~1_combout\,
	datad => \inst2|inst|reg_gen:4:regs|reg_2|y\(1),
	combout => \inst2|inst|mux_2|mux_1|mux_generate:2:mux_i|Mux2~2_combout\);

-- Location: LCCOMB_X18_Y35_N14
\inst2|inst|mux_2|mux_1|mux_generate:2:mux_i|Mux2~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|inst|mux_2|mux_1|mux_generate:2:mux_i|Mux2~3_combout\ = (\inst2|inst|mux_2|mux_1|mux_generate:0:mux_i|Mux3~2_combout\ & (\inst2|inst|mux_2|mux_1|mux_generate:2:mux_i|Mux2~0_combout\)) # (!\inst2|inst|mux_2|mux_1|mux_generate:0:mux_i|Mux3~2_combout\ 
-- & ((\inst2|inst|mux_2|mux_1|mux_generate:2:mux_i|Mux2~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|inst|mux_2|mux_1|mux_generate:2:mux_i|Mux2~0_combout\,
	datac => \inst2|inst|mux_2|mux_1|mux_generate:0:mux_i|Mux3~2_combout\,
	datad => \inst2|inst|mux_2|mux_1|mux_generate:2:mux_i|Mux2~2_combout\,
	combout => \inst2|inst|mux_2|mux_1|mux_generate:2:mux_i|Mux2~3_combout\);

-- Location: LCCOMB_X14_Y32_N4
\inst2|inst2|OUT16B[9]~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|inst2|OUT16B[9]~12_combout\ = (\inst|Mux7~8_combout\ & ((\inst4|inst1|INS_OUT[5]~6_combout\))) # (!\inst|Mux7~8_combout\ & (\inst2|inst|mux_2|mux_1|mux_generate:2:mux_i|Mux2~3_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst2|inst|mux_2|mux_1|mux_generate:2:mux_i|Mux2~3_combout\,
	datac => \inst|Mux7~8_combout\,
	datad => \inst4|inst1|INS_OUT[5]~6_combout\,
	combout => \inst2|inst2|OUT16B[9]~12_combout\);

-- Location: LCCOMB_X13_Y32_N10
\inst2|inst1|alu2|adder|C[2]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|inst1|alu2|adder|C[2]~1_combout\ = (\inst2|inst|mux_1|mux_1|mux_generate:2:mux_i|Mux2~2_combout\ & ((\inst2|inst1|alu2|adder|C[1]~0_combout\) # (\inst2|inst2|OUT16B[9]~12_combout\ $ (\inst2|inst3|DOUT[2]~3_combout\)))) # 
-- (!\inst2|inst|mux_1|mux_1|mux_generate:2:mux_i|Mux2~2_combout\ & (\inst2|inst1|alu2|adder|C[1]~0_combout\ & (\inst2|inst2|OUT16B[9]~12_combout\ $ (\inst2|inst3|DOUT[2]~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101111001001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|inst2|OUT16B[9]~12_combout\,
	datab => \inst2|inst|mux_1|mux_1|mux_generate:2:mux_i|Mux2~2_combout\,
	datac => \inst2|inst3|DOUT[2]~3_combout\,
	datad => \inst2|inst1|alu2|adder|C[1]~0_combout\,
	combout => \inst2|inst1|alu2|adder|C[2]~1_combout\);

-- Location: LCCOMB_X13_Y30_N4
\inst2|inst1|alu2|mux|Mux1~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|inst1|alu2|mux|Mux1~0_combout\ = \inst2|inst2|OUT16B[10]~11_combout\ $ (((\inst2|inst3|DOUT[1]~4_combout\ & (\inst2|inst3|DOUT[2]~3_combout\ $ (\inst2|inst1|alu2|adder|C[2]~1_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011010001111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|inst3|DOUT[2]~3_combout\,
	datab => \inst2|inst3|DOUT[1]~4_combout\,
	datac => \inst2|inst2|OUT16B[10]~11_combout\,
	datad => \inst2|inst1|alu2|adder|C[2]~1_combout\,
	combout => \inst2|inst1|alu2|mux|Mux1~0_combout\);

-- Location: LCCOMB_X13_Y30_N18
\inst2|inst1|alu2|mux|Mux1~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|inst1|alu2|mux|Mux1~1_combout\ = (\inst2|inst|mux_1|mux_1|mux_generate:2:mux_i|Mux1~1_combout\ & (\inst2|inst3|DOUT[1]~4_combout\ $ (((\inst2|inst3|DOUT[0]~2_combout\) # (\inst2|inst1|alu2|mux|Mux1~0_combout\))))) # 
-- (!\inst2|inst|mux_1|mux_1|mux_generate:2:mux_i|Mux1~1_combout\ & (\inst2|inst1|alu2|mux|Mux1~0_combout\ & (\inst2|inst3|DOUT[0]~2_combout\ $ (\inst2|inst3|DOUT[1]~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001010011101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|inst3|DOUT[0]~2_combout\,
	datab => \inst2|inst|mux_1|mux_1|mux_generate:2:mux_i|Mux1~1_combout\,
	datac => \inst2|inst1|alu2|mux|Mux1~0_combout\,
	datad => \inst2|inst3|DOUT[1]~4_combout\,
	combout => \inst2|inst1|alu2|mux|Mux1~1_combout\);

-- Location: LCCOMB_X14_Y34_N0
\inst1|reg_gen:31:regs|y[2]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|reg_gen:31:regs|y[2]~feeder_combout\ = \inst2|inst|mux_2|mux_1|mux_generate:2:mux_i|Mux1~3_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst2|inst|mux_2|mux_1|mux_generate:2:mux_i|Mux1~3_combout\,
	combout => \inst1|reg_gen:31:regs|y[2]~feeder_combout\);

-- Location: FF_X14_Y34_N1
\inst1|reg_gen:31:regs|y[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \inst1|reg_gen:31:regs|y[2]~feeder_combout\,
	ena => \inst1|dec_to_en\(31),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|reg_gen:31:regs|y\(2));

-- Location: FF_X10_Y31_N21
\inst1|reg_gen:24:regs|y[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	asdata => \inst2|inst|mux_2|mux_1|mux_generate:0:mux_i|Mux1~3_combout\,
	sload => VCC,
	ena => \inst1|dec_to_en[24]~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|reg_gen:24:regs|y\(2));

-- Location: FF_X11_Y31_N11
\inst1|reg_gen:8:regs|y[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	asdata => \inst2|inst|mux_2|mux_1|mux_generate:0:mux_i|Mux1~3_combout\,
	sload => VCC,
	ena => \inst1|dec_to_en[8]~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|reg_gen:8:regs|y\(2));

-- Location: LCCOMB_X11_Y31_N10
\inst1|DOUT[10]~136\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|DOUT[10]~136_combout\ = (\inst2|inst1|alu1|mux|Mux3~1_combout\ & (\inst1|reg_gen:24:regs|y\(2))) # (!\inst2|inst1|alu1|mux|Mux3~1_combout\ & ((\inst1|reg_gen:8:regs|y\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst1|reg_gen:24:regs|y\(2),
	datac => \inst1|reg_gen:8:regs|y\(2),
	datad => \inst2|inst1|alu1|mux|Mux3~1_combout\,
	combout => \inst1|DOUT[10]~136_combout\);

-- Location: FF_X11_Y32_N13
\inst1|reg_gen:16:regs|y[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	asdata => \inst2|inst|mux_2|mux_1|mux_generate:0:mux_i|Mux1~3_combout\,
	sload => VCC,
	ena => \inst1|dec_to_en[16]~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|reg_gen:16:regs|y\(2));

-- Location: FF_X12_Y32_N9
\inst1|reg_gen:15:regs|y[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	asdata => \inst2|inst|mux_2|mux_1|mux_generate:2:mux_i|Mux1~3_combout\,
	sload => VCC,
	ena => \inst1|dec_to_en\(15),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|reg_gen:15:regs|y\(2));

-- Location: LCCOMB_X10_Y34_N4
\inst1|reg_gen:21:regs|y[2]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|reg_gen:21:regs|y[2]~feeder_combout\ = \inst2|inst|mux_2|mux_1|mux_generate:2:mux_i|Mux1~3_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst2|inst|mux_2|mux_1|mux_generate:2:mux_i|Mux1~3_combout\,
	combout => \inst1|reg_gen:21:regs|y[2]~feeder_combout\);

-- Location: FF_X10_Y34_N5
\inst1|reg_gen:21:regs|y[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \inst1|reg_gen:21:regs|y[2]~feeder_combout\,
	ena => \inst1|dec_to_en\(21),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|reg_gen:21:regs|y\(2));

-- Location: FF_X13_Y34_N11
\inst1|reg_gen:29:regs|y[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	asdata => \inst2|inst|mux_2|mux_1|mux_generate:2:mux_i|Mux1~3_combout\,
	sload => VCC,
	ena => \inst1|dec_to_en\(29),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|reg_gen:29:regs|y\(2));

-- Location: LCCOMB_X10_Y34_N22
\inst1|reg_gen:13:regs|y[2]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|reg_gen:13:regs|y[2]~feeder_combout\ = \inst2|inst|mux_2|mux_1|mux_generate:2:mux_i|Mux1~3_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst2|inst|mux_2|mux_1|mux_generate:2:mux_i|Mux1~3_combout\,
	combout => \inst1|reg_gen:13:regs|y[2]~feeder_combout\);

-- Location: FF_X10_Y34_N23
\inst1|reg_gen:13:regs|y[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \inst1|reg_gen:13:regs|y[2]~feeder_combout\,
	ena => \inst1|dec_to_en\(13),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|reg_gen:13:regs|y\(2));

-- Location: FF_X13_Y34_N13
\inst1|reg_gen:5:regs|y[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	asdata => \inst2|inst|mux_2|mux_1|mux_generate:2:mux_i|Mux1~3_combout\,
	sload => VCC,
	ena => \inst1|dec_to_en\(5),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|reg_gen:5:regs|y\(2));

-- Location: LCCOMB_X13_Y34_N12
\inst1|DOUT[10]~137\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|DOUT[10]~137_combout\ = (\inst2|inst1|alu1|mux|Mux3~1_combout\ & (((\inst2|inst1|alu0|mux|Mux0~1_combout\)))) # (!\inst2|inst1|alu1|mux|Mux3~1_combout\ & ((\inst2|inst1|alu0|mux|Mux0~1_combout\ & (\inst1|reg_gen:13:regs|y\(2))) # 
-- (!\inst2|inst1|alu0|mux|Mux0~1_combout\ & ((\inst1|reg_gen:5:regs|y\(2))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|reg_gen:13:regs|y\(2),
	datab => \inst2|inst1|alu1|mux|Mux3~1_combout\,
	datac => \inst1|reg_gen:5:regs|y\(2),
	datad => \inst2|inst1|alu0|mux|Mux0~1_combout\,
	combout => \inst1|DOUT[10]~137_combout\);

-- Location: LCCOMB_X13_Y34_N10
\inst1|DOUT[10]~138\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|DOUT[10]~138_combout\ = (\inst2|inst1|alu1|mux|Mux3~1_combout\ & ((\inst1|DOUT[10]~137_combout\ & ((\inst1|reg_gen:29:regs|y\(2)))) # (!\inst1|DOUT[10]~137_combout\ & (\inst1|reg_gen:21:regs|y\(2))))) # (!\inst2|inst1|alu1|mux|Mux3~1_combout\ & 
-- (((\inst1|DOUT[10]~137_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|reg_gen:21:regs|y\(2),
	datab => \inst2|inst1|alu1|mux|Mux3~1_combout\,
	datac => \inst1|reg_gen:29:regs|y\(2),
	datad => \inst1|DOUT[10]~137_combout\,
	combout => \inst1|DOUT[10]~138_combout\);

-- Location: LCCOMB_X14_Y31_N20
\inst1|reg_gen:23:regs|y[2]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|reg_gen:23:regs|y[2]~feeder_combout\ = \inst2|inst|mux_2|mux_1|mux_generate:2:mux_i|Mux1~3_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst2|inst|mux_2|mux_1|mux_generate:2:mux_i|Mux1~3_combout\,
	combout => \inst1|reg_gen:23:regs|y[2]~feeder_combout\);

-- Location: FF_X14_Y31_N21
\inst1|reg_gen:23:regs|y[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \inst1|reg_gen:23:regs|y[2]~feeder_combout\,
	ena => \inst1|dec_to_en\(23),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|reg_gen:23:regs|y\(2));

-- Location: FF_X13_Y31_N17
\inst1|reg_gen:7:regs|y[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	asdata => \inst2|inst|mux_2|mux_1|mux_generate:2:mux_i|Mux1~3_combout\,
	sload => VCC,
	ena => \inst1|dec_to_en\(7),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|reg_gen:7:regs|y\(2));

-- Location: LCCOMB_X13_Y31_N26
\inst1|DOUT[10]~139\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|DOUT[10]~139_combout\ = (\inst2|inst1|alu1|mux|Mux3~1_combout\ & (\inst1|reg_gen:23:regs|y\(2))) # (!\inst2|inst1|alu1|mux|Mux3~1_combout\ & ((\inst1|reg_gen:7:regs|y\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|inst1|alu1|mux|Mux3~1_combout\,
	datab => \inst1|reg_gen:23:regs|y\(2),
	datad => \inst1|reg_gen:7:regs|y\(2),
	combout => \inst1|DOUT[10]~139_combout\);

-- Location: LCCOMB_X11_Y30_N12
\inst1|reg_gen:22:regs|y[2]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|reg_gen:22:regs|y[2]~feeder_combout\ = \inst2|inst|mux_2|mux_1|mux_generate:0:mux_i|Mux1~3_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst2|inst|mux_2|mux_1|mux_generate:0:mux_i|Mux1~3_combout\,
	combout => \inst1|reg_gen:22:regs|y[2]~feeder_combout\);

-- Location: FF_X11_Y30_N13
\inst1|reg_gen:22:regs|y[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \inst1|reg_gen:22:regs|y[2]~feeder_combout\,
	ena => \inst1|dec_to_en\(22),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|reg_gen:22:regs|y\(2));

-- Location: FF_X13_Y30_N13
\inst1|reg_gen:30:regs|y[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	asdata => \inst2|inst|mux_2|mux_1|mux_generate:0:mux_i|Mux1~3_combout\,
	sload => VCC,
	ena => \inst1|dec_to_en\(30),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|reg_gen:30:regs|y\(2));

-- Location: LCCOMB_X11_Y30_N26
\inst1|reg_gen:6:regs|y[2]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|reg_gen:6:regs|y[2]~feeder_combout\ = \inst2|inst|mux_2|mux_1|mux_generate:0:mux_i|Mux1~3_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst2|inst|mux_2|mux_1|mux_generate:0:mux_i|Mux1~3_combout\,
	combout => \inst1|reg_gen:6:regs|y[2]~feeder_combout\);

-- Location: FF_X11_Y30_N27
\inst1|reg_gen:6:regs|y[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \inst1|reg_gen:6:regs|y[2]~feeder_combout\,
	ena => \inst1|dec_to_en\(6),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|reg_gen:6:regs|y\(2));

-- Location: LCCOMB_X13_Y31_N24
\inst1|reg_gen:14:regs|y[2]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|reg_gen:14:regs|y[2]~feeder_combout\ = \inst2|inst|mux_2|mux_1|mux_generate:0:mux_i|Mux1~3_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst2|inst|mux_2|mux_1|mux_generate:0:mux_i|Mux1~3_combout\,
	combout => \inst1|reg_gen:14:regs|y[2]~feeder_combout\);

-- Location: FF_X13_Y31_N25
\inst1|reg_gen:14:regs|y[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \inst1|reg_gen:14:regs|y[2]~feeder_combout\,
	ena => \inst1|dec_to_en\(14),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|reg_gen:14:regs|y\(2));

-- Location: LCCOMB_X12_Y30_N18
\inst1|DOUT[10]~140\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|DOUT[10]~140_combout\ = (\inst2|inst1|alu1|mux|Mux3~1_combout\ & (((\inst2|inst1|alu0|mux|Mux0~1_combout\)))) # (!\inst2|inst1|alu1|mux|Mux3~1_combout\ & ((\inst2|inst1|alu0|mux|Mux0~1_combout\ & ((\inst1|reg_gen:14:regs|y\(2)))) # 
-- (!\inst2|inst1|alu0|mux|Mux0~1_combout\ & (\inst1|reg_gen:6:regs|y\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|reg_gen:6:regs|y\(2),
	datab => \inst1|reg_gen:14:regs|y\(2),
	datac => \inst2|inst1|alu1|mux|Mux3~1_combout\,
	datad => \inst2|inst1|alu0|mux|Mux0~1_combout\,
	combout => \inst1|DOUT[10]~140_combout\);

-- Location: LCCOMB_X12_Y30_N12
\inst1|DOUT[10]~141\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|DOUT[10]~141_combout\ = (\inst2|inst1|alu1|mux|Mux3~1_combout\ & ((\inst1|DOUT[10]~140_combout\ & ((\inst1|reg_gen:30:regs|y\(2)))) # (!\inst1|DOUT[10]~140_combout\ & (\inst1|reg_gen:22:regs|y\(2))))) # (!\inst2|inst1|alu1|mux|Mux3~1_combout\ & 
-- (((\inst1|DOUT[10]~140_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|reg_gen:22:regs|y\(2),
	datab => \inst1|reg_gen:30:regs|y\(2),
	datac => \inst2|inst1|alu1|mux|Mux3~1_combout\,
	datad => \inst1|DOUT[10]~140_combout\,
	combout => \inst1|DOUT[10]~141_combout\);

-- Location: LCCOMB_X12_Y35_N28
\inst1|DOUT[10]~142\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|DOUT[10]~142_combout\ = (\inst1|DOUT[12]~27_combout\ & ((\inst1|DOUT[10]~139_combout\) # ((\inst1|DOUT[12]~25_combout\)))) # (!\inst1|DOUT[12]~27_combout\ & (((!\inst1|DOUT[12]~25_combout\ & \inst1|DOUT[10]~141_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010110110101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|DOUT[12]~27_combout\,
	datab => \inst1|DOUT[10]~139_combout\,
	datac => \inst1|DOUT[12]~25_combout\,
	datad => \inst1|DOUT[10]~141_combout\,
	combout => \inst1|DOUT[10]~142_combout\);

-- Location: LCCOMB_X12_Y35_N22
\inst1|DOUT[10]~143\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|DOUT[10]~143_combout\ = (\inst1|DOUT[12]~25_combout\ & ((\inst1|DOUT[10]~142_combout\ & (\inst1|reg_gen:15:regs|y\(2))) # (!\inst1|DOUT[10]~142_combout\ & ((\inst1|DOUT[10]~138_combout\))))) # (!\inst1|DOUT[12]~25_combout\ & 
-- (((\inst1|DOUT[10]~142_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|reg_gen:15:regs|y\(2),
	datab => \inst1|DOUT[10]~138_combout\,
	datac => \inst1|DOUT[12]~25_combout\,
	datad => \inst1|DOUT[10]~142_combout\,
	combout => \inst1|DOUT[10]~143_combout\);

-- Location: FF_X9_Y31_N29
\inst1|reg_gen:26:regs|y[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	asdata => \inst2|inst|mux_2|mux_1|mux_generate:0:mux_i|Mux1~3_combout\,
	sload => VCC,
	ena => \inst1|dec_to_en\(26),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|reg_gen:26:regs|y\(2));

-- Location: FF_X9_Y31_N7
\inst1|reg_gen:10:regs|y[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	asdata => \inst2|inst|mux_2|mux_1|mux_generate:0:mux_i|Mux1~3_combout\,
	sload => VCC,
	ena => \inst1|dec_to_en\(10),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|reg_gen:10:regs|y\(2));

-- Location: LCCOMB_X9_Y31_N6
\inst1|DOUT[10]~144\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|DOUT[10]~144_combout\ = (\inst2|inst1|alu1|mux|Mux3~1_combout\ & (\inst1|reg_gen:26:regs|y\(2))) # (!\inst2|inst1|alu1|mux|Mux3~1_combout\ & ((\inst1|reg_gen:10:regs|y\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|reg_gen:26:regs|y\(2),
	datac => \inst1|reg_gen:10:regs|y\(2),
	datad => \inst2|inst1|alu1|mux|Mux3~1_combout\,
	combout => \inst1|DOUT[10]~144_combout\);

-- Location: FF_X11_Y32_N19
\inst1|reg_gen:18:regs|y[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	asdata => \inst2|inst|mux_2|mux_1|mux_generate:0:mux_i|Mux1~3_combout\,
	sload => VCC,
	ena => \inst1|dec_to_en\(18),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|reg_gen:18:regs|y\(2));

-- Location: LCCOMB_X10_Y30_N28
\inst1|reg_gen:12:regs|y[2]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|reg_gen:12:regs|y[2]~feeder_combout\ = \inst2|inst|mux_2|mux_1|mux_generate:0:mux_i|Mux1~3_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|inst|mux_2|mux_1|mux_generate:0:mux_i|Mux1~3_combout\,
	combout => \inst1|reg_gen:12:regs|y[2]~feeder_combout\);

-- Location: FF_X10_Y30_N29
\inst1|reg_gen:12:regs|y[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \inst1|reg_gen:12:regs|y[2]~feeder_combout\,
	ena => \inst1|dec_to_en\(12),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|reg_gen:12:regs|y\(2));

-- Location: LCCOMB_X10_Y30_N22
\inst1|reg_gen:20:regs|y[2]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|reg_gen:20:regs|y[2]~feeder_combout\ = \inst2|inst|mux_2|mux_1|mux_generate:0:mux_i|Mux1~3_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|inst|mux_2|mux_1|mux_generate:0:mux_i|Mux1~3_combout\,
	combout => \inst1|reg_gen:20:regs|y[2]~feeder_combout\);

-- Location: FF_X10_Y30_N23
\inst1|reg_gen:20:regs|y[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \inst1|reg_gen:20:regs|y[2]~feeder_combout\,
	ena => \inst1|dec_to_en\(20),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|reg_gen:20:regs|y\(2));

-- Location: LCCOMB_X9_Y32_N22
\inst1|reg_gen:4:regs|y[2]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|reg_gen:4:regs|y[2]~feeder_combout\ = \inst2|inst|mux_2|mux_1|mux_generate:0:mux_i|Mux1~3_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst2|inst|mux_2|mux_1|mux_generate:0:mux_i|Mux1~3_combout\,
	combout => \inst1|reg_gen:4:regs|y[2]~feeder_combout\);

-- Location: FF_X9_Y32_N23
\inst1|reg_gen:4:regs|y[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \inst1|reg_gen:4:regs|y[2]~feeder_combout\,
	ena => \inst1|dec_to_en\(4),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|reg_gen:4:regs|y\(2));

-- Location: LCCOMB_X12_Y32_N2
\inst1|DOUT[10]~145\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|DOUT[10]~145_combout\ = (\inst2|inst1|alu1|mux|Mux3~1_combout\ & ((\inst1|reg_gen:20:regs|y\(2)) # ((\inst2|inst1|alu0|mux|Mux0~1_combout\)))) # (!\inst2|inst1|alu1|mux|Mux3~1_combout\ & (((\inst1|reg_gen:4:regs|y\(2) & 
-- !\inst2|inst1|alu0|mux|Mux0~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|reg_gen:20:regs|y\(2),
	datab => \inst1|reg_gen:4:regs|y\(2),
	datac => \inst2|inst1|alu1|mux|Mux3~1_combout\,
	datad => \inst2|inst1|alu0|mux|Mux0~1_combout\,
	combout => \inst1|DOUT[10]~145_combout\);

-- Location: FF_X12_Y32_N13
\inst1|reg_gen:28:regs|y[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	asdata => \inst2|inst|mux_2|mux_1|mux_generate:0:mux_i|Mux1~3_combout\,
	sload => VCC,
	ena => \inst1|dec_to_en\(28),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|reg_gen:28:regs|y\(2));

-- Location: LCCOMB_X12_Y32_N12
\inst1|DOUT[10]~146\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|DOUT[10]~146_combout\ = (\inst1|DOUT[10]~145_combout\ & (((\inst1|reg_gen:28:regs|y\(2)) # (!\inst2|inst1|alu0|mux|Mux0~1_combout\)))) # (!\inst1|DOUT[10]~145_combout\ & (\inst1|reg_gen:12:regs|y\(2) & ((\inst2|inst1|alu0|mux|Mux0~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110001011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|reg_gen:12:regs|y\(2),
	datab => \inst1|DOUT[10]~145_combout\,
	datac => \inst1|reg_gen:28:regs|y\(2),
	datad => \inst2|inst1|alu0|mux|Mux0~1_combout\,
	combout => \inst1|DOUT[10]~146_combout\);

-- Location: LCCOMB_X11_Y32_N18
\inst1|DOUT[10]~147\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|DOUT[10]~147_combout\ = (\inst1|DOUT[12]~39_combout\ & (\inst1|DOUT[12]~37_combout\)) # (!\inst1|DOUT[12]~39_combout\ & ((\inst1|DOUT[12]~37_combout\ & ((\inst1|DOUT[10]~146_combout\))) # (!\inst1|DOUT[12]~37_combout\ & 
-- (\inst1|reg_gen:18:regs|y\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|DOUT[12]~39_combout\,
	datab => \inst1|DOUT[12]~37_combout\,
	datac => \inst1|reg_gen:18:regs|y\(2),
	datad => \inst1|DOUT[10]~146_combout\,
	combout => \inst1|DOUT[10]~147_combout\);

-- Location: LCCOMB_X8_Y34_N6
\inst1|reg_gen:11:regs|y[2]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|reg_gen:11:regs|y[2]~feeder_combout\ = \inst2|inst|mux_2|mux_1|mux_generate:2:mux_i|Mux1~3_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst2|inst|mux_2|mux_1|mux_generate:2:mux_i|Mux1~3_combout\,
	combout => \inst1|reg_gen:11:regs|y[2]~feeder_combout\);

-- Location: FF_X8_Y34_N7
\inst1|reg_gen:11:regs|y[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \inst1|reg_gen:11:regs|y[2]~feeder_combout\,
	ena => \inst1|dec_to_en\(11),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|reg_gen:11:regs|y\(2));

-- Location: LCCOMB_X8_Y34_N4
\inst1|reg_gen:27:regs|y[2]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|reg_gen:27:regs|y[2]~feeder_combout\ = \inst2|inst|mux_2|mux_1|mux_generate:2:mux_i|Mux1~3_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst2|inst|mux_2|mux_1|mux_generate:2:mux_i|Mux1~3_combout\,
	combout => \inst1|reg_gen:27:regs|y[2]~feeder_combout\);

-- Location: FF_X8_Y34_N5
\inst1|reg_gen:27:regs|y[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \inst1|reg_gen:27:regs|y[2]~feeder_combout\,
	ena => \inst1|dec_to_en\(27),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|reg_gen:27:regs|y\(2));

-- Location: LCCOMB_X8_Y34_N28
\inst1|DOUT[10]~150\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|DOUT[10]~150_combout\ = (\inst2|inst1|alu1|mux|Mux3~1_combout\ & ((\inst1|reg_gen:27:regs|y\(2)))) # (!\inst2|inst1|alu1|mux|Mux3~1_combout\ & (\inst1|reg_gen:11:regs|y\(2)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|reg_gen:11:regs|y\(2),
	datab => \inst1|reg_gen:27:regs|y\(2),
	datad => \inst2|inst1|alu1|mux|Mux3~1_combout\,
	combout => \inst1|DOUT[10]~150_combout\);

-- Location: FF_X12_Y34_N1
\inst1|reg_gen:19:regs|y[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	asdata => \inst2|inst|mux_2|mux_1|mux_generate:2:mux_i|Mux1~3_combout\,
	sload => VCC,
	ena => \inst1|dec_to_en\(19),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|reg_gen:19:regs|y\(2));

-- Location: FF_X9_Y34_N21
\inst1|reg_gen:25:regs|y[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	asdata => \inst2|inst|mux_2|mux_1|mux_generate:2:mux_i|Mux1~3_combout\,
	sload => VCC,
	ena => \inst1|dec_to_en\(25),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|reg_gen:25:regs|y\(2));

-- Location: FF_X9_Y34_N3
\inst1|reg_gen:9:regs|y[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	asdata => \inst2|inst|mux_2|mux_1|mux_generate:2:mux_i|Mux1~3_combout\,
	sload => VCC,
	ena => \inst1|dec_to_en\(9),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|reg_gen:9:regs|y\(2));

-- Location: LCCOMB_X9_Y34_N2
\inst1|DOUT[10]~148\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|DOUT[10]~148_combout\ = (\inst2|inst1|alu1|mux|Mux3~1_combout\ & (\inst1|reg_gen:25:regs|y\(2))) # (!\inst2|inst1|alu1|mux|Mux3~1_combout\ & ((\inst1|reg_gen:9:regs|y\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst1|reg_gen:25:regs|y\(2),
	datac => \inst1|reg_gen:9:regs|y\(2),
	datad => \inst2|inst1|alu1|mux|Mux3~1_combout\,
	combout => \inst1|DOUT[10]~148_combout\);

-- Location: FF_X12_Y34_N3
\inst1|reg_gen:17:regs|y[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	asdata => \inst2|inst|mux_2|mux_1|mux_generate:2:mux_i|Mux1~3_combout\,
	sload => VCC,
	ena => \inst1|dec_to_en\(17),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|reg_gen:17:regs|y\(2));

-- Location: LCCOMB_X12_Y34_N2
\inst1|DOUT[10]~149\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|DOUT[10]~149_combout\ = (\inst2|inst1|alu0|mux|Mux2~1_combout\ & (((\inst2|inst1|alu0|mux|Mux0~1_combout\)))) # (!\inst2|inst1|alu0|mux|Mux2~1_combout\ & ((\inst2|inst1|alu0|mux|Mux0~1_combout\ & (\inst1|DOUT[10]~148_combout\)) # 
-- (!\inst2|inst1|alu0|mux|Mux0~1_combout\ & ((\inst1|reg_gen:17:regs|y\(2))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|DOUT[10]~148_combout\,
	datab => \inst2|inst1|alu0|mux|Mux2~1_combout\,
	datac => \inst1|reg_gen:17:regs|y\(2),
	datad => \inst2|inst1|alu0|mux|Mux0~1_combout\,
	combout => \inst1|DOUT[10]~149_combout\);

-- Location: LCCOMB_X12_Y34_N0
\inst1|DOUT[10]~151\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|DOUT[10]~151_combout\ = (\inst2|inst1|alu0|mux|Mux2~1_combout\ & ((\inst1|DOUT[10]~149_combout\ & (\inst1|DOUT[10]~150_combout\)) # (!\inst1|DOUT[10]~149_combout\ & ((\inst1|reg_gen:19:regs|y\(2)))))) # (!\inst2|inst1|alu0|mux|Mux2~1_combout\ & 
-- (((\inst1|DOUT[10]~149_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|inst1|alu0|mux|Mux2~1_combout\,
	datab => \inst1|DOUT[10]~150_combout\,
	datac => \inst1|reg_gen:19:regs|y\(2),
	datad => \inst1|DOUT[10]~149_combout\,
	combout => \inst1|DOUT[10]~151_combout\);

-- Location: LCCOMB_X12_Y35_N24
\inst1|DOUT[10]~152\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|DOUT[10]~152_combout\ = (\inst1|DOUT[12]~39_combout\ & ((\inst1|DOUT[10]~147_combout\ & ((\inst1|DOUT[10]~151_combout\))) # (!\inst1|DOUT[10]~147_combout\ & (\inst1|DOUT[10]~144_combout\)))) # (!\inst1|DOUT[12]~39_combout\ & 
-- (((\inst1|DOUT[10]~147_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100000111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|DOUT[10]~144_combout\,
	datab => \inst1|DOUT[12]~39_combout\,
	datac => \inst1|DOUT[10]~147_combout\,
	datad => \inst1|DOUT[10]~151_combout\,
	combout => \inst1|DOUT[10]~152_combout\);

-- Location: LCCOMB_X12_Y35_N18
\inst1|DOUT[10]~153\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|DOUT[10]~153_combout\ = (\inst1|DOUT[12]~32_combout\ & ((\inst1|DOUT[12]~34_combout\) # ((\inst1|DOUT[10]~143_combout\)))) # (!\inst1|DOUT[12]~32_combout\ & (!\inst1|DOUT[12]~34_combout\ & ((\inst1|DOUT[10]~152_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100110101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|DOUT[12]~32_combout\,
	datab => \inst1|DOUT[12]~34_combout\,
	datac => \inst1|DOUT[10]~143_combout\,
	datad => \inst1|DOUT[10]~152_combout\,
	combout => \inst1|DOUT[10]~153_combout\);

-- Location: LCCOMB_X12_Y35_N20
\inst1|DOUT[10]~154\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|DOUT[10]~154_combout\ = (\inst1|DOUT[12]~34_combout\ & ((\inst1|DOUT[10]~153_combout\ & ((\inst1|reg_gen:16:regs|y\(2)))) # (!\inst1|DOUT[10]~153_combout\ & (\inst1|DOUT[10]~136_combout\)))) # (!\inst1|DOUT[12]~34_combout\ & 
-- (((\inst1|DOUT[10]~153_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|DOUT[10]~136_combout\,
	datab => \inst1|DOUT[12]~34_combout\,
	datac => \inst1|reg_gen:16:regs|y\(2),
	datad => \inst1|DOUT[10]~153_combout\,
	combout => \inst1|DOUT[10]~154_combout\);

-- Location: LCCOMB_X12_Y35_N26
\inst1|DOUT[10]~155\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|DOUT[10]~155_combout\ = (\inst1|DOUT[12]~49_combout\ & ((\inst1|DOUT[10]~154_combout\))) # (!\inst1|DOUT[12]~49_combout\ & (\inst1|reg_gen:31:regs|y\(2)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst1|reg_gen:31:regs|y\(2),
	datac => \inst1|DOUT[12]~49_combout\,
	datad => \inst1|DOUT[10]~154_combout\,
	combout => \inst1|DOUT[10]~155_combout\);

-- Location: LCCOMB_X12_Y35_N14
\inst1|DOUT[10]$latch~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|DOUT[10]$latch~0_combout\ = (GLOBAL(\inst1|DOUT[15]~53clkctrl_outclk\) & ((\inst1|DOUT[10]~155_combout\))) # (!GLOBAL(\inst1|DOUT[15]~53clkctrl_outclk\) & (\inst1|DOUT[10]$latch~combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|DOUT[10]$latch~combout\,
	datac => \inst1|DOUT[10]~155_combout\,
	datad => \inst1|DOUT[15]~53clkctrl_outclk\,
	combout => \inst1|DOUT[10]$latch~0_combout\);

-- Location: LCCOMB_X13_Y35_N6
\inst1|DOUT[10]$latch\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|DOUT[10]$latch~combout\ = (!\inst1|comb~0_combout\ & ((\inst1|DOUT[10]$latch~0_combout\) # (\inst1|dcd|dcd_0|D[1]~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|DOUT[10]$latch~0_combout\,
	datac => \inst1|dcd|dcd_0|D[1]~1_combout\,
	datad => \inst1|comb~0_combout\,
	combout => \inst1|DOUT[10]$latch~combout\);

-- Location: LCCOMB_X13_Y35_N12
\inst3|OUT16B[10]~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|OUT16B[10]~5_combout\ = (\inst|Mux5~0_combout\ & (((\inst1|DOUT[10]$latch~combout\)) # (!\inst1|DOUT[15]_2612~combout\))) # (!\inst|Mux5~0_combout\ & (((\inst2|inst1|alu2|mux|Mux1~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110001110100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|DOUT[15]_2612~combout\,
	datab => \inst|Mux5~0_combout\,
	datac => \inst2|inst1|alu2|mux|Mux1~1_combout\,
	datad => \inst1|DOUT[10]$latch~combout\,
	combout => \inst3|OUT16B[10]~5_combout\);

-- Location: LCCOMB_X18_Y35_N8
\inst2|inst|reg_gen:3:regs|reg_2|y[2]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|inst|reg_gen:3:regs|reg_2|y[2]~feeder_combout\ = \inst3|OUT16B[10]~5_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst3|OUT16B[10]~5_combout\,
	combout => \inst2|inst|reg_gen:3:regs|reg_2|y[2]~feeder_combout\);

-- Location: FF_X18_Y35_N9
\inst2|inst|reg_gen:3:regs|reg_2|y[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~input_o\,
	d => \inst2|inst|reg_gen:3:regs|reg_2|y[2]~feeder_combout\,
	ena => \inst2|inst|add_reg1_dcd|Mux3~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst2|inst|reg_gen:3:regs|reg_2|y\(2));

-- Location: LCCOMB_X13_Y35_N10
\inst2|inst|reg_gen:2:regs|reg_2|y[2]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|inst|reg_gen:2:regs|reg_2|y[2]~feeder_combout\ = \inst3|OUT16B[10]~5_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|OUT16B[10]~5_combout\,
	combout => \inst2|inst|reg_gen:2:regs|reg_2|y[2]~feeder_combout\);

-- Location: FF_X13_Y35_N11
\inst2|inst|reg_gen:2:regs|reg_2|y[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~input_o\,
	d => \inst2|inst|reg_gen:2:regs|reg_2|y[2]~feeder_combout\,
	ena => \inst2|inst|add_reg1_dcd|Mux3~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst2|inst|reg_gen:2:regs|reg_2|y\(2));

-- Location: LCCOMB_X18_Y35_N0
\inst2|inst|mux_2|mux_1|mux_generate:2:mux_i|Mux1~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|inst|mux_2|mux_1|mux_generate:2:mux_i|Mux1~0_combout\ = (\inst4|inst1|exception~2_combout\ & (((\inst2|inst|reg_gen:2:regs|reg_2|y\(2))))) # (!\inst4|inst1|exception~2_combout\ & ((\inst4|inst1|data_out[6]~8_combout\ & 
-- (\inst2|inst|reg_gen:3:regs|reg_2|y\(2))) # (!\inst4|inst1|data_out[6]~8_combout\ & ((\inst2|inst|reg_gen:2:regs|reg_2|y\(2))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101101000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|inst1|exception~2_combout\,
	datab => \inst4|inst1|data_out[6]~8_combout\,
	datac => \inst2|inst|reg_gen:3:regs|reg_2|y\(2),
	datad => \inst2|inst|reg_gen:2:regs|reg_2|y\(2),
	combout => \inst2|inst|mux_2|mux_1|mux_generate:2:mux_i|Mux1~0_combout\);

-- Location: LCCOMB_X16_Y35_N16
\inst2|inst|reg_gen:4:regs|reg_2|y[2]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|inst|reg_gen:4:regs|reg_2|y[2]~feeder_combout\ = \inst3|OUT16B[10]~5_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst3|OUT16B[10]~5_combout\,
	combout => \inst2|inst|reg_gen:4:regs|reg_2|y[2]~feeder_combout\);

-- Location: FF_X16_Y35_N17
\inst2|inst|reg_gen:4:regs|reg_2|y[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~input_o\,
	d => \inst2|inst|reg_gen:4:regs|reg_2|y[2]~feeder_combout\,
	ena => \inst2|inst|add_reg1_dcd|Mux3~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst2|inst|reg_gen:4:regs|reg_2|y\(2));

-- Location: FF_X17_Y36_N13
\inst2|inst|reg_gen:5:regs|reg_2|y[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~input_o\,
	asdata => \inst3|OUT16B[10]~5_combout\,
	sload => VCC,
	ena => \inst2|inst|add_reg1_dcd|Mux3~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst2|inst|reg_gen:5:regs|reg_2|y\(2));

-- Location: LCCOMB_X16_Y35_N26
\inst2|inst|mux_2|mux_1|mux_generate:2:mux_i|Mux1~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|inst|mux_2|mux_1|mux_generate:2:mux_i|Mux1~1_combout\ = ((!\inst4|inst1|exception~2_combout\ & (\inst4|inst1|data_out[6]~8_combout\ & \inst2|inst|reg_gen:1:regs|reg_2|y\(2)))) # (!\inst2|inst|mux_2|mux_1|mux_generate:0:mux_i|Mux3~1_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|inst1|exception~2_combout\,
	datab => \inst4|inst1|data_out[6]~8_combout\,
	datac => \inst2|inst|reg_gen:1:regs|reg_2|y\(2),
	datad => \inst2|inst|mux_2|mux_1|mux_generate:0:mux_i|Mux3~1_combout\,
	combout => \inst2|inst|mux_2|mux_1|mux_generate:2:mux_i|Mux1~1_combout\);

-- Location: LCCOMB_X17_Y36_N18
\inst2|inst|mux_2|mux_1|mux_generate:2:mux_i|Mux1~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|inst|mux_2|mux_1|mux_generate:2:mux_i|Mux1~2_combout\ = (\inst2|inst|mux_2|mux_1|mux_generate:2:mux_i|Mux1~1_combout\ & ((\inst2|inst|reg_gen:4:regs|reg_2|y\(2)) # ((\inst2|inst|mux_2|mux_1|mux_generate:0:mux_i|Mux3~0_combout\)))) # 
-- (!\inst2|inst|mux_2|mux_1|mux_generate:2:mux_i|Mux1~1_combout\ & (((\inst2|inst|reg_gen:5:regs|reg_2|y\(2) & !\inst2|inst|mux_2|mux_1|mux_generate:0:mux_i|Mux3~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|inst|reg_gen:4:regs|reg_2|y\(2),
	datab => \inst2|inst|reg_gen:5:regs|reg_2|y\(2),
	datac => \inst2|inst|mux_2|mux_1|mux_generate:2:mux_i|Mux1~1_combout\,
	datad => \inst2|inst|mux_2|mux_1|mux_generate:0:mux_i|Mux3~0_combout\,
	combout => \inst2|inst|mux_2|mux_1|mux_generate:2:mux_i|Mux1~2_combout\);

-- Location: LCCOMB_X17_Y36_N14
\inst2|inst|mux_2|mux_1|mux_generate:2:mux_i|Mux1~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|inst|mux_2|mux_1|mux_generate:2:mux_i|Mux1~3_combout\ = (\inst2|inst|mux_2|mux_1|mux_generate:0:mux_i|Mux3~2_combout\ & (\inst2|inst|mux_2|mux_1|mux_generate:2:mux_i|Mux1~0_combout\)) # (!\inst2|inst|mux_2|mux_1|mux_generate:0:mux_i|Mux3~2_combout\ 
-- & ((\inst2|inst|mux_2|mux_1|mux_generate:2:mux_i|Mux1~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|inst|mux_2|mux_1|mux_generate:0:mux_i|Mux3~2_combout\,
	datac => \inst2|inst|mux_2|mux_1|mux_generate:2:mux_i|Mux1~0_combout\,
	datad => \inst2|inst|mux_2|mux_1|mux_generate:2:mux_i|Mux1~2_combout\,
	combout => \inst2|inst|mux_2|mux_1|mux_generate:2:mux_i|Mux1~3_combout\);

-- Location: LCCOMB_X17_Y36_N26
\inst2|inst2|OUT16B[10]~11\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|inst2|OUT16B[10]~11_combout\ = (\inst|Mux7~8_combout\ & ((\inst4|inst1|INS_OUT[5]~6_combout\))) # (!\inst|Mux7~8_combout\ & (\inst2|inst|mux_2|mux_1|mux_generate:2:mux_i|Mux1~3_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Mux7~8_combout\,
	datab => \inst2|inst|mux_2|mux_1|mux_generate:2:mux_i|Mux1~3_combout\,
	datad => \inst4|inst1|INS_OUT[5]~6_combout\,
	combout => \inst2|inst2|OUT16B[10]~11_combout\);

-- Location: LCCOMB_X13_Y32_N16
\inst2|inst1|alu2|adder|C[3]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|inst1|alu2|adder|C[3]~2_combout\ = (\inst2|inst|mux_1|mux_1|mux_generate:2:mux_i|Mux1~1_combout\ & ((\inst2|inst1|alu2|adder|C[2]~1_combout\) # (\inst2|inst3|DOUT[2]~3_combout\ $ (\inst2|inst2|OUT16B[10]~11_combout\)))) # 
-- (!\inst2|inst|mux_1|mux_1|mux_generate:2:mux_i|Mux1~1_combout\ & (\inst2|inst1|alu2|adder|C[2]~1_combout\ & (\inst2|inst3|DOUT[2]~3_combout\ $ (\inst2|inst2|OUT16B[10]~11_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111011001100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|inst3|DOUT[2]~3_combout\,
	datab => \inst2|inst2|OUT16B[10]~11_combout\,
	datac => \inst2|inst|mux_1|mux_1|mux_generate:2:mux_i|Mux1~1_combout\,
	datad => \inst2|inst1|alu2|adder|C[2]~1_combout\,
	combout => \inst2|inst1|alu2|adder|C[3]~2_combout\);

-- Location: LCCOMB_X13_Y30_N24
\inst2|inst1|alu2|mux|Mux0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|inst1|alu2|mux|Mux0~0_combout\ = \inst2|inst2|OUT16B[11]~10_combout\ $ (((\inst2|inst3|DOUT[1]~4_combout\ & (\inst2|inst3|DOUT[2]~3_combout\ $ (\inst2|inst1|alu2|adder|C[3]~2_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011011101001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|inst3|DOUT[2]~3_combout\,
	datab => \inst2|inst3|DOUT[1]~4_combout\,
	datac => \inst2|inst1|alu2|adder|C[3]~2_combout\,
	datad => \inst2|inst2|OUT16B[11]~10_combout\,
	combout => \inst2|inst1|alu2|mux|Mux0~0_combout\);

-- Location: LCCOMB_X13_Y30_N22
\inst2|inst1|alu2|mux|Mux0~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|inst1|alu2|mux|Mux0~1_combout\ = (\inst2|inst1|alu2|mux|Mux0~0_combout\ & (\inst2|inst3|DOUT[1]~4_combout\ $ (((\inst2|inst3|DOUT[0]~2_combout\) # (\inst2|inst|mux_1|mux_1|mux_generate:2:mux_i|Mux0~1_combout\))))) # 
-- (!\inst2|inst1|alu2|mux|Mux0~0_combout\ & (\inst2|inst|mux_1|mux_1|mux_generate:2:mux_i|Mux0~1_combout\ & (\inst2|inst3|DOUT[1]~4_combout\ $ (\inst2|inst3|DOUT[0]~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011011000101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|inst1|alu2|mux|Mux0~0_combout\,
	datab => \inst2|inst3|DOUT[1]~4_combout\,
	datac => \inst2|inst3|DOUT[0]~2_combout\,
	datad => \inst2|inst|mux_1|mux_1|mux_generate:2:mux_i|Mux0~1_combout\,
	combout => \inst2|inst1|alu2|mux|Mux0~1_combout\);

-- Location: FF_X14_Y34_N9
\inst1|reg_gen:31:regs|y[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	asdata => \inst2|inst|mux_2|mux_1|mux_generate:2:mux_i|Mux0~3_combout\,
	sload => VCC,
	ena => \inst1|dec_to_en\(31),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|reg_gen:31:regs|y\(3));

-- Location: FF_X11_Y31_N25
\inst1|reg_gen:16:regs|y[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	asdata => \inst2|inst|mux_2|mux_1|mux_generate:0:mux_i|Mux0~3_combout\,
	sload => VCC,
	ena => \inst1|dec_to_en[16]~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|reg_gen:16:regs|y\(3));

-- Location: LCCOMB_X10_Y31_N8
\inst1|reg_gen:24:regs|y[3]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|reg_gen:24:regs|y[3]~feeder_combout\ = \inst2|inst|mux_2|mux_1|mux_generate:0:mux_i|Mux0~3_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst2|inst|mux_2|mux_1|mux_generate:0:mux_i|Mux0~3_combout\,
	combout => \inst1|reg_gen:24:regs|y[3]~feeder_combout\);

-- Location: FF_X10_Y31_N9
\inst1|reg_gen:24:regs|y[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \inst1|reg_gen:24:regs|y[3]~feeder_combout\,
	ena => \inst1|dec_to_en[24]~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|reg_gen:24:regs|y\(3));

-- Location: FF_X11_Y31_N7
\inst1|reg_gen:8:regs|y[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	asdata => \inst2|inst|mux_2|mux_1|mux_generate:0:mux_i|Mux0~3_combout\,
	sload => VCC,
	ena => \inst1|dec_to_en[8]~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|reg_gen:8:regs|y\(3));

-- Location: LCCOMB_X11_Y31_N6
\inst1|DOUT[11]~123\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|DOUT[11]~123_combout\ = (\inst2|inst1|alu1|mux|Mux3~1_combout\ & (\inst1|reg_gen:24:regs|y\(3))) # (!\inst2|inst1|alu1|mux|Mux3~1_combout\ & ((\inst1|reg_gen:8:regs|y\(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|reg_gen:24:regs|y\(3),
	datac => \inst1|reg_gen:8:regs|y\(3),
	datad => \inst2|inst1|alu1|mux|Mux3~1_combout\,
	combout => \inst1|DOUT[11]~123_combout\);

-- Location: FF_X10_Y30_N21
\inst1|reg_gen:12:regs|y[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	asdata => \inst2|inst|mux_2|mux_1|mux_generate:0:mux_i|Mux0~3_combout\,
	sload => VCC,
	ena => \inst1|dec_to_en\(12),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|reg_gen:12:regs|y\(3));

-- Location: LCCOMB_X9_Y32_N2
\inst1|reg_gen:20:regs|y[3]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|reg_gen:20:regs|y[3]~feeder_combout\ = \inst2|inst|mux_2|mux_1|mux_generate:0:mux_i|Mux0~3_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst2|inst|mux_2|mux_1|mux_generate:0:mux_i|Mux0~3_combout\,
	combout => \inst1|reg_gen:20:regs|y[3]~feeder_combout\);

-- Location: FF_X9_Y32_N3
\inst1|reg_gen:20:regs|y[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \inst1|reg_gen:20:regs|y[3]~feeder_combout\,
	ena => \inst1|dec_to_en\(20),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|reg_gen:20:regs|y\(3));

-- Location: FF_X9_Y32_N9
\inst1|reg_gen:4:regs|y[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	asdata => \inst2|inst|mux_2|mux_1|mux_generate:0:mux_i|Mux0~3_combout\,
	sload => VCC,
	ena => \inst1|dec_to_en\(4),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|reg_gen:4:regs|y\(3));

-- Location: LCCOMB_X9_Y32_N8
\inst1|DOUT[11]~124\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|DOUT[11]~124_combout\ = (\inst2|inst1|alu1|mux|Mux3~1_combout\ & ((\inst1|reg_gen:20:regs|y\(3)) # ((\inst2|inst1|alu0|mux|Mux0~1_combout\)))) # (!\inst2|inst1|alu1|mux|Mux3~1_combout\ & (((\inst1|reg_gen:4:regs|y\(3) & 
-- !\inst2|inst1|alu0|mux|Mux0~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|inst1|alu1|mux|Mux3~1_combout\,
	datab => \inst1|reg_gen:20:regs|y\(3),
	datac => \inst1|reg_gen:4:regs|y\(3),
	datad => \inst2|inst1|alu0|mux|Mux0~1_combout\,
	combout => \inst1|DOUT[11]~124_combout\);

-- Location: FF_X10_Y32_N3
\inst1|reg_gen:28:regs|y[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	asdata => \inst2|inst|mux_2|mux_1|mux_generate:0:mux_i|Mux0~3_combout\,
	sload => VCC,
	ena => \inst1|dec_to_en\(28),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|reg_gen:28:regs|y\(3));

-- Location: LCCOMB_X10_Y32_N2
\inst1|DOUT[11]~125\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|DOUT[11]~125_combout\ = (\inst1|DOUT[11]~124_combout\ & (((\inst1|reg_gen:28:regs|y\(3)) # (!\inst2|inst1|alu0|mux|Mux0~1_combout\)))) # (!\inst1|DOUT[11]~124_combout\ & (\inst1|reg_gen:12:regs|y\(3) & ((\inst2|inst1|alu0|mux|Mux0~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110001011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|reg_gen:12:regs|y\(3),
	datab => \inst1|DOUT[11]~124_combout\,
	datac => \inst1|reg_gen:28:regs|y\(3),
	datad => \inst2|inst1|alu0|mux|Mux0~1_combout\,
	combout => \inst1|DOUT[11]~125_combout\);

-- Location: FF_X11_Y32_N9
\inst1|reg_gen:18:regs|y[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	asdata => \inst2|inst|mux_2|mux_1|mux_generate:0:mux_i|Mux0~3_combout\,
	sload => VCC,
	ena => \inst1|dec_to_en\(18),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|reg_gen:18:regs|y\(3));

-- Location: LCCOMB_X9_Y31_N20
\inst1|reg_gen:26:regs|y[3]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|reg_gen:26:regs|y[3]~feeder_combout\ = \inst2|inst|mux_2|mux_1|mux_generate:0:mux_i|Mux0~3_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst2|inst|mux_2|mux_1|mux_generate:0:mux_i|Mux0~3_combout\,
	combout => \inst1|reg_gen:26:regs|y[3]~feeder_combout\);

-- Location: FF_X9_Y31_N21
\inst1|reg_gen:26:regs|y[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \inst1|reg_gen:26:regs|y[3]~feeder_combout\,
	ena => \inst1|dec_to_en\(26),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|reg_gen:26:regs|y\(3));

-- Location: LCCOMB_X9_Y31_N30
\inst1|reg_gen:10:regs|y[3]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|reg_gen:10:regs|y[3]~feeder_combout\ = \inst2|inst|mux_2|mux_1|mux_generate:0:mux_i|Mux0~3_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst2|inst|mux_2|mux_1|mux_generate:0:mux_i|Mux0~3_combout\,
	combout => \inst1|reg_gen:10:regs|y[3]~feeder_combout\);

-- Location: FF_X9_Y31_N31
\inst1|reg_gen:10:regs|y[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \inst1|reg_gen:10:regs|y[3]~feeder_combout\,
	ena => \inst1|dec_to_en\(10),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|reg_gen:10:regs|y\(3));

-- Location: LCCOMB_X10_Y31_N22
\inst1|DOUT[11]~126\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|DOUT[11]~126_combout\ = (\inst2|inst1|alu1|mux|Mux3~1_combout\ & (\inst1|reg_gen:26:regs|y\(3))) # (!\inst2|inst1|alu1|mux|Mux3~1_combout\ & ((\inst1|reg_gen:10:regs|y\(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100011011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|inst1|alu1|mux|Mux3~1_combout\,
	datab => \inst1|reg_gen:26:regs|y\(3),
	datac => \inst1|reg_gen:10:regs|y\(3),
	combout => \inst1|DOUT[11]~126_combout\);

-- Location: LCCOMB_X11_Y32_N8
\inst1|DOUT[11]~127\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|DOUT[11]~127_combout\ = (\inst1|DOUT[12]~39_combout\ & ((\inst1|DOUT[12]~37_combout\) # ((\inst1|DOUT[11]~126_combout\)))) # (!\inst1|DOUT[12]~39_combout\ & (!\inst1|DOUT[12]~37_combout\ & (\inst1|reg_gen:18:regs|y\(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|DOUT[12]~39_combout\,
	datab => \inst1|DOUT[12]~37_combout\,
	datac => \inst1|reg_gen:18:regs|y\(3),
	datad => \inst1|DOUT[11]~126_combout\,
	combout => \inst1|DOUT[11]~127_combout\);

-- Location: LCCOMB_X12_Y35_N16
\inst1|DOUT[11]~132\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|DOUT[11]~132_combout\ = (\inst1|DOUT[12]~37_combout\ & ((\inst1|DOUT[11]~127_combout\ & ((\inst1|DOUT[11]~131_combout\))) # (!\inst1|DOUT[11]~127_combout\ & (\inst1|DOUT[11]~125_combout\)))) # (!\inst1|DOUT[12]~37_combout\ & 
-- (((\inst1|DOUT[11]~127_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100000111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|DOUT[11]~125_combout\,
	datab => \inst1|DOUT[12]~37_combout\,
	datac => \inst1|DOUT[11]~127_combout\,
	datad => \inst1|DOUT[11]~131_combout\,
	combout => \inst1|DOUT[11]~132_combout\);

-- Location: LCCOMB_X12_Y35_N30
\inst1|DOUT[11]~133\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|DOUT[11]~133_combout\ = (\inst1|DOUT[12]~32_combout\ & (\inst1|DOUT[12]~34_combout\)) # (!\inst1|DOUT[12]~32_combout\ & ((\inst1|DOUT[12]~34_combout\ & (\inst1|DOUT[11]~123_combout\)) # (!\inst1|DOUT[12]~34_combout\ & 
-- ((\inst1|DOUT[11]~132_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100111001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|DOUT[12]~32_combout\,
	datab => \inst1|DOUT[12]~34_combout\,
	datac => \inst1|DOUT[11]~123_combout\,
	datad => \inst1|DOUT[11]~132_combout\,
	combout => \inst1|DOUT[11]~133_combout\);

-- Location: FF_X14_Y34_N15
\inst1|reg_gen:15:regs|y[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	asdata => \inst2|inst|mux_2|mux_1|mux_generate:2:mux_i|Mux0~3_combout\,
	sload => VCC,
	ena => \inst1|dec_to_en\(15),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|reg_gen:15:regs|y\(3));

-- Location: FF_X14_Y31_N1
\inst1|reg_gen:23:regs|y[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	asdata => \inst2|inst|mux_2|mux_1|mux_generate:2:mux_i|Mux0~3_combout\,
	sload => VCC,
	ena => \inst1|dec_to_en\(23),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|reg_gen:23:regs|y\(3));

-- Location: FF_X13_Y31_N23
\inst1|reg_gen:7:regs|y[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	asdata => \inst2|inst|mux_2|mux_1|mux_generate:2:mux_i|Mux0~3_combout\,
	sload => VCC,
	ena => \inst1|dec_to_en\(7),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|reg_gen:7:regs|y\(3));

-- Location: LCCOMB_X13_Y31_N22
\inst1|DOUT[11]~116\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|DOUT[11]~116_combout\ = (\inst2|inst1|alu1|mux|Mux3~1_combout\ & (\inst1|reg_gen:23:regs|y\(3))) # (!\inst2|inst1|alu1|mux|Mux3~1_combout\ & ((\inst1|reg_gen:7:regs|y\(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|reg_gen:23:regs|y\(3),
	datac => \inst1|reg_gen:7:regs|y\(3),
	datad => \inst2|inst1|alu1|mux|Mux3~1_combout\,
	combout => \inst1|DOUT[11]~116_combout\);

-- Location: FF_X13_Y31_N5
\inst1|reg_gen:14:regs|y[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	asdata => \inst2|inst|mux_2|mux_1|mux_generate:0:mux_i|Mux0~3_combout\,
	sload => VCC,
	ena => \inst1|dec_to_en\(14),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|reg_gen:14:regs|y\(3));

-- Location: LCCOMB_X14_Y30_N28
\inst1|reg_gen:22:regs|y[3]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|reg_gen:22:regs|y[3]~feeder_combout\ = \inst2|inst|mux_2|mux_1|mux_generate:0:mux_i|Mux0~3_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst2|inst|mux_2|mux_1|mux_generate:0:mux_i|Mux0~3_combout\,
	combout => \inst1|reg_gen:22:regs|y[3]~feeder_combout\);

-- Location: FF_X14_Y30_N29
\inst1|reg_gen:22:regs|y[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \inst1|reg_gen:22:regs|y[3]~feeder_combout\,
	ena => \inst1|dec_to_en\(22),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|reg_gen:22:regs|y\(3));

-- Location: LCCOMB_X14_Y30_N10
\inst1|reg_gen:6:regs|y[3]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|reg_gen:6:regs|y[3]~feeder_combout\ = \inst2|inst|mux_2|mux_1|mux_generate:0:mux_i|Mux0~3_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst2|inst|mux_2|mux_1|mux_generate:0:mux_i|Mux0~3_combout\,
	combout => \inst1|reg_gen:6:regs|y[3]~feeder_combout\);

-- Location: FF_X14_Y30_N11
\inst1|reg_gen:6:regs|y[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \inst1|reg_gen:6:regs|y[3]~feeder_combout\,
	ena => \inst1|dec_to_en\(6),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|reg_gen:6:regs|y\(3));

-- Location: LCCOMB_X13_Y31_N18
\inst1|DOUT[11]~119\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|DOUT[11]~119_combout\ = (\inst2|inst1|alu0|mux|Mux0~1_combout\ & (((\inst2|inst1|alu1|mux|Mux3~1_combout\)))) # (!\inst2|inst1|alu0|mux|Mux0~1_combout\ & ((\inst2|inst1|alu1|mux|Mux3~1_combout\ & (\inst1|reg_gen:22:regs|y\(3))) # 
-- (!\inst2|inst1|alu1|mux|Mux3~1_combout\ & ((\inst1|reg_gen:6:regs|y\(3))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|inst1|alu0|mux|Mux0~1_combout\,
	datab => \inst1|reg_gen:22:regs|y\(3),
	datac => \inst1|reg_gen:6:regs|y\(3),
	datad => \inst2|inst1|alu1|mux|Mux3~1_combout\,
	combout => \inst1|DOUT[11]~119_combout\);

-- Location: LCCOMB_X13_Y31_N4
\inst1|DOUT[11]~120\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|DOUT[11]~120_combout\ = (\inst2|inst1|alu0|mux|Mux0~1_combout\ & ((\inst1|DOUT[11]~119_combout\ & (\inst1|reg_gen:30:regs|y\(3))) # (!\inst1|DOUT[11]~119_combout\ & ((\inst1|reg_gen:14:regs|y\(3)))))) # (!\inst2|inst1|alu0|mux|Mux0~1_combout\ & 
-- (((\inst1|DOUT[11]~119_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|inst1|alu0|mux|Mux0~1_combout\,
	datab => \inst1|reg_gen:30:regs|y\(3),
	datac => \inst1|reg_gen:14:regs|y\(3),
	datad => \inst1|DOUT[11]~119_combout\,
	combout => \inst1|DOUT[11]~120_combout\);

-- Location: FF_X11_Y34_N1
\inst1|reg_gen:5:regs|y[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	asdata => \inst2|inst|mux_2|mux_1|mux_generate:2:mux_i|Mux0~3_combout\,
	sload => VCC,
	ena => \inst1|dec_to_en\(5),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|reg_gen:5:regs|y\(3));

-- Location: LCCOMB_X10_Y34_N26
\inst1|reg_gen:13:regs|y[3]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|reg_gen:13:regs|y[3]~feeder_combout\ = \inst2|inst|mux_2|mux_1|mux_generate:2:mux_i|Mux0~3_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst2|inst|mux_2|mux_1|mux_generate:2:mux_i|Mux0~3_combout\,
	combout => \inst1|reg_gen:13:regs|y[3]~feeder_combout\);

-- Location: FF_X10_Y34_N27
\inst1|reg_gen:13:regs|y[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \inst1|reg_gen:13:regs|y[3]~feeder_combout\,
	ena => \inst1|dec_to_en\(13),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|reg_gen:13:regs|y\(3));

-- Location: LCCOMB_X11_Y34_N0
\inst1|DOUT[11]~117\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|DOUT[11]~117_combout\ = (\inst2|inst1|alu1|mux|Mux3~1_combout\ & (\inst2|inst1|alu0|mux|Mux0~1_combout\)) # (!\inst2|inst1|alu1|mux|Mux3~1_combout\ & ((\inst2|inst1|alu0|mux|Mux0~1_combout\ & ((\inst1|reg_gen:13:regs|y\(3)))) # 
-- (!\inst2|inst1|alu0|mux|Mux0~1_combout\ & (\inst1|reg_gen:5:regs|y\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|inst1|alu1|mux|Mux3~1_combout\,
	datab => \inst2|inst1|alu0|mux|Mux0~1_combout\,
	datac => \inst1|reg_gen:5:regs|y\(3),
	datad => \inst1|reg_gen:13:regs|y\(3),
	combout => \inst1|DOUT[11]~117_combout\);

-- Location: FF_X11_Y34_N7
\inst1|reg_gen:29:regs|y[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	asdata => \inst2|inst|mux_2|mux_1|mux_generate:2:mux_i|Mux0~3_combout\,
	sload => VCC,
	ena => \inst1|dec_to_en\(29),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|reg_gen:29:regs|y\(3));

-- Location: LCCOMB_X10_Y34_N16
\inst1|reg_gen:21:regs|y[3]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|reg_gen:21:regs|y[3]~feeder_combout\ = \inst2|inst|mux_2|mux_1|mux_generate:2:mux_i|Mux0~3_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst2|inst|mux_2|mux_1|mux_generate:2:mux_i|Mux0~3_combout\,
	combout => \inst1|reg_gen:21:regs|y[3]~feeder_combout\);

-- Location: FF_X10_Y34_N17
\inst1|reg_gen:21:regs|y[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \inst1|reg_gen:21:regs|y[3]~feeder_combout\,
	ena => \inst1|dec_to_en\(21),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|reg_gen:21:regs|y\(3));

-- Location: LCCOMB_X11_Y34_N6
\inst1|DOUT[11]~118\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|DOUT[11]~118_combout\ = (\inst2|inst1|alu1|mux|Mux3~1_combout\ & ((\inst1|DOUT[11]~117_combout\ & (\inst1|reg_gen:29:regs|y\(3))) # (!\inst1|DOUT[11]~117_combout\ & ((\inst1|reg_gen:21:regs|y\(3)))))) # (!\inst2|inst1|alu1|mux|Mux3~1_combout\ & 
-- (\inst1|DOUT[11]~117_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110011011000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|inst1|alu1|mux|Mux3~1_combout\,
	datab => \inst1|DOUT[11]~117_combout\,
	datac => \inst1|reg_gen:29:regs|y\(3),
	datad => \inst1|reg_gen:21:regs|y\(3),
	combout => \inst1|DOUT[11]~118_combout\);

-- Location: LCCOMB_X12_Y35_N12
\inst1|DOUT[11]~121\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|DOUT[11]~121_combout\ = (\inst1|DOUT[12]~25_combout\ & (((\inst1|DOUT[11]~118_combout\) # (\inst1|DOUT[12]~27_combout\)))) # (!\inst1|DOUT[12]~25_combout\ & (\inst1|DOUT[11]~120_combout\ & ((!\inst1|DOUT[12]~27_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|DOUT[11]~120_combout\,
	datab => \inst1|DOUT[11]~118_combout\,
	datac => \inst1|DOUT[12]~25_combout\,
	datad => \inst1|DOUT[12]~27_combout\,
	combout => \inst1|DOUT[11]~121_combout\);

-- Location: LCCOMB_X12_Y35_N2
\inst1|DOUT[11]~122\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|DOUT[11]~122_combout\ = (\inst1|DOUT[11]~121_combout\ & ((\inst1|reg_gen:15:regs|y\(3)) # ((!\inst1|DOUT[12]~27_combout\)))) # (!\inst1|DOUT[11]~121_combout\ & (((\inst1|DOUT[11]~116_combout\ & \inst1|DOUT[12]~27_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|reg_gen:15:regs|y\(3),
	datab => \inst1|DOUT[11]~116_combout\,
	datac => \inst1|DOUT[11]~121_combout\,
	datad => \inst1|DOUT[12]~27_combout\,
	combout => \inst1|DOUT[11]~122_combout\);

-- Location: LCCOMB_X12_Y35_N4
\inst1|DOUT[11]~134\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|DOUT[11]~134_combout\ = (\inst1|DOUT[12]~32_combout\ & ((\inst1|DOUT[11]~133_combout\ & (\inst1|reg_gen:16:regs|y\(3))) # (!\inst1|DOUT[11]~133_combout\ & ((\inst1|DOUT[11]~122_combout\))))) # (!\inst1|DOUT[12]~32_combout\ & 
-- (((\inst1|DOUT[11]~133_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101101011010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|DOUT[12]~32_combout\,
	datab => \inst1|reg_gen:16:regs|y\(3),
	datac => \inst1|DOUT[11]~133_combout\,
	datad => \inst1|DOUT[11]~122_combout\,
	combout => \inst1|DOUT[11]~134_combout\);

-- Location: LCCOMB_X12_Y35_N10
\inst1|DOUT[11]~135\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|DOUT[11]~135_combout\ = (\inst1|DOUT[12]~49_combout\ & ((\inst1|DOUT[11]~134_combout\))) # (!\inst1|DOUT[12]~49_combout\ & (\inst1|reg_gen:31:regs|y\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|reg_gen:31:regs|y\(3),
	datac => \inst1|DOUT[11]~134_combout\,
	datad => \inst1|DOUT[12]~49_combout\,
	combout => \inst1|DOUT[11]~135_combout\);

-- Location: LCCOMB_X12_Y35_N0
\inst1|DOUT[11]$latch\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|DOUT[11]$latch~combout\ = (!\inst1|DOUT[15]~55_combout\ & ((GLOBAL(\inst1|DOUT[15]~53clkctrl_outclk\) & ((\inst1|DOUT[11]~135_combout\))) # (!GLOBAL(\inst1|DOUT[15]~53clkctrl_outclk\) & (\inst1|DOUT[11]$latch~combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010000000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|DOUT[15]~55_combout\,
	datab => \inst1|DOUT[11]$latch~combout\,
	datac => \inst1|DOUT[15]~53clkctrl_outclk\,
	datad => \inst1|DOUT[11]~135_combout\,
	combout => \inst1|DOUT[11]$latch~combout\);

-- Location: LCCOMB_X14_Y36_N8
\inst3|OUT16B[11]~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|OUT16B[11]~4_combout\ = (\inst|Mux5~0_combout\ & (((\inst1|DOUT[11]$latch~combout\)) # (!\inst1|DOUT[15]_2612~combout\))) # (!\inst|Mux5~0_combout\ & (((\inst2|inst1|alu2|mux|Mux0~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|DOUT[15]_2612~combout\,
	datab => \inst2|inst1|alu2|mux|Mux0~1_combout\,
	datac => \inst1|DOUT[11]$latch~combout\,
	datad => \inst|Mux5~0_combout\,
	combout => \inst3|OUT16B[11]~4_combout\);

-- Location: FF_X14_Y33_N11
\inst2|inst|reg_gen:1:regs|reg_2|y[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~input_o\,
	asdata => \inst3|OUT16B[11]~4_combout\,
	sload => VCC,
	ena => \inst2|inst|add_reg1_dcd|Mux3~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst2|inst|reg_gen:1:regs|reg_2|y\(3));

-- Location: LCCOMB_X14_Y33_N10
\inst2|inst|mux_2|mux_1|mux_generate:2:mux_i|Mux0~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|inst|mux_2|mux_1|mux_generate:2:mux_i|Mux0~1_combout\ = ((!\inst4|inst1|exception~2_combout\ & (\inst2|inst|reg_gen:1:regs|reg_2|y\(3) & \inst4|inst1|data_out[6]~8_combout\))) # (!\inst2|inst|mux_2|mux_1|mux_generate:0:mux_i|Mux3~1_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111010101010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|inst|mux_2|mux_1|mux_generate:0:mux_i|Mux3~1_combout\,
	datab => \inst4|inst1|exception~2_combout\,
	datac => \inst2|inst|reg_gen:1:regs|reg_2|y\(3),
	datad => \inst4|inst1|data_out[6]~8_combout\,
	combout => \inst2|inst|mux_2|mux_1|mux_generate:2:mux_i|Mux0~1_combout\);

-- Location: FF_X14_Y36_N9
\inst2|inst|reg_gen:4:regs|reg_2|y[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~input_o\,
	d => \inst3|OUT16B[11]~4_combout\,
	ena => \inst2|inst|add_reg1_dcd|Mux3~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst2|inst|reg_gen:4:regs|reg_2|y\(3));

-- Location: LCCOMB_X9_Y36_N14
\inst2|inst|reg_gen:5:regs|reg_2|y[3]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|inst|reg_gen:5:regs|reg_2|y[3]~feeder_combout\ = \inst3|OUT16B[11]~4_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst3|OUT16B[11]~4_combout\,
	combout => \inst2|inst|reg_gen:5:regs|reg_2|y[3]~feeder_combout\);

-- Location: FF_X9_Y36_N15
\inst2|inst|reg_gen:5:regs|reg_2|y[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~input_o\,
	d => \inst2|inst|reg_gen:5:regs|reg_2|y[3]~feeder_combout\,
	ena => \inst2|inst|add_reg1_dcd|Mux3~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst2|inst|reg_gen:5:regs|reg_2|y\(3));

-- Location: LCCOMB_X14_Y36_N12
\inst2|inst|mux_2|mux_1|mux_generate:2:mux_i|Mux0~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|inst|mux_2|mux_1|mux_generate:2:mux_i|Mux0~2_combout\ = (\inst2|inst|mux_2|mux_1|mux_generate:0:mux_i|Mux3~0_combout\ & (\inst2|inst|mux_2|mux_1|mux_generate:2:mux_i|Mux0~1_combout\)) # (!\inst2|inst|mux_2|mux_1|mux_generate:0:mux_i|Mux3~0_combout\ 
-- & ((\inst2|inst|mux_2|mux_1|mux_generate:2:mux_i|Mux0~1_combout\ & (\inst2|inst|reg_gen:4:regs|reg_2|y\(3))) # (!\inst2|inst|mux_2|mux_1|mux_generate:2:mux_i|Mux0~1_combout\ & ((\inst2|inst|reg_gen:5:regs|reg_2|y\(3))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100111001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|inst|mux_2|mux_1|mux_generate:0:mux_i|Mux3~0_combout\,
	datab => \inst2|inst|mux_2|mux_1|mux_generate:2:mux_i|Mux0~1_combout\,
	datac => \inst2|inst|reg_gen:4:regs|reg_2|y\(3),
	datad => \inst2|inst|reg_gen:5:regs|reg_2|y\(3),
	combout => \inst2|inst|mux_2|mux_1|mux_generate:2:mux_i|Mux0~2_combout\);

-- Location: FF_X13_Y36_N27
\inst2|inst|reg_gen:2:regs|reg_2|y[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~input_o\,
	asdata => \inst3|OUT16B[11]~4_combout\,
	sload => VCC,
	ena => \inst2|inst|add_reg1_dcd|Mux3~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst2|inst|reg_gen:2:regs|reg_2|y\(3));

-- Location: FF_X14_Y36_N21
\inst2|inst|reg_gen:3:regs|reg_2|y[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~input_o\,
	asdata => \inst3|OUT16B[11]~4_combout\,
	sload => VCC,
	ena => \inst2|inst|add_reg1_dcd|Mux3~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst2|inst|reg_gen:3:regs|reg_2|y\(3));

-- Location: LCCOMB_X14_Y36_N6
\inst2|inst|mux_2|mux_1|mux_generate:2:mux_i|Mux0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|inst|mux_2|mux_1|mux_generate:2:mux_i|Mux0~0_combout\ = (\inst4|inst1|exception~2_combout\ & (((\inst2|inst|reg_gen:2:regs|reg_2|y\(3))))) # (!\inst4|inst1|exception~2_combout\ & ((\inst4|inst1|data_out[6]~8_combout\ & 
-- ((\inst2|inst|reg_gen:3:regs|reg_2|y\(3)))) # (!\inst4|inst1|data_out[6]~8_combout\ & (\inst2|inst|reg_gen:2:regs|reg_2|y\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010010110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|inst1|exception~2_combout\,
	datab => \inst4|inst1|data_out[6]~8_combout\,
	datac => \inst2|inst|reg_gen:2:regs|reg_2|y\(3),
	datad => \inst2|inst|reg_gen:3:regs|reg_2|y\(3),
	combout => \inst2|inst|mux_2|mux_1|mux_generate:2:mux_i|Mux0~0_combout\);

-- Location: LCCOMB_X14_Y36_N20
\inst2|inst|mux_2|mux_1|mux_generate:2:mux_i|Mux0~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|inst|mux_2|mux_1|mux_generate:2:mux_i|Mux0~3_combout\ = (\inst2|inst|mux_2|mux_1|mux_generate:0:mux_i|Mux3~2_combout\ & ((\inst2|inst|mux_2|mux_1|mux_generate:2:mux_i|Mux0~0_combout\))) # 
-- (!\inst2|inst|mux_2|mux_1|mux_generate:0:mux_i|Mux3~2_combout\ & (\inst2|inst|mux_2|mux_1|mux_generate:2:mux_i|Mux0~2_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|inst|mux_2|mux_1|mux_generate:2:mux_i|Mux0~2_combout\,
	datab => \inst2|inst|mux_2|mux_1|mux_generate:0:mux_i|Mux3~2_combout\,
	datad => \inst2|inst|mux_2|mux_1|mux_generate:2:mux_i|Mux0~0_combout\,
	combout => \inst2|inst|mux_2|mux_1|mux_generate:2:mux_i|Mux0~3_combout\);

-- Location: LCCOMB_X8_Y34_N12
\inst1|reg_gen:27:regs|y[3]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|reg_gen:27:regs|y[3]~feeder_combout\ = \inst2|inst|mux_2|mux_1|mux_generate:2:mux_i|Mux0~3_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst2|inst|mux_2|mux_1|mux_generate:2:mux_i|Mux0~3_combout\,
	combout => \inst1|reg_gen:27:regs|y[3]~feeder_combout\);

-- Location: FF_X8_Y34_N13
\inst1|reg_gen:27:regs|y[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \inst1|reg_gen:27:regs|y[3]~feeder_combout\,
	ena => \inst1|dec_to_en\(27),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|reg_gen:27:regs|y\(3));

-- Location: FF_X8_Y34_N27
\inst1|reg_gen:11:regs|y[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	asdata => \inst2|inst|mux_2|mux_1|mux_generate:2:mux_i|Mux0~3_combout\,
	sload => VCC,
	ena => \inst1|dec_to_en\(11),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|reg_gen:11:regs|y\(3));

-- Location: LCCOMB_X8_Y34_N26
\inst1|DOUT[11]~130\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|DOUT[11]~130_combout\ = (\inst2|inst1|alu1|mux|Mux3~1_combout\ & (\inst1|reg_gen:27:regs|y\(3))) # (!\inst2|inst1|alu1|mux|Mux3~1_combout\ & ((\inst1|reg_gen:11:regs|y\(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|reg_gen:27:regs|y\(3),
	datac => \inst1|reg_gen:11:regs|y\(3),
	datad => \inst2|inst1|alu1|mux|Mux3~1_combout\,
	combout => \inst1|DOUT[11]~130_combout\);

-- Location: FF_X12_Y34_N13
\inst1|reg_gen:19:regs|y[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	asdata => \inst2|inst|mux_2|mux_1|mux_generate:2:mux_i|Mux0~3_combout\,
	sload => VCC,
	ena => \inst1|dec_to_en\(19),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|reg_gen:19:regs|y\(3));

-- Location: FF_X9_Y34_N23
\inst1|reg_gen:25:regs|y[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	asdata => \inst2|inst|mux_2|mux_1|mux_generate:2:mux_i|Mux0~3_combout\,
	sload => VCC,
	ena => \inst1|dec_to_en\(25),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|reg_gen:25:regs|y\(3));

-- Location: FF_X9_Y34_N13
\inst1|reg_gen:9:regs|y[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	asdata => \inst2|inst|mux_2|mux_1|mux_generate:2:mux_i|Mux0~3_combout\,
	sload => VCC,
	ena => \inst1|dec_to_en\(9),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|reg_gen:9:regs|y\(3));

-- Location: LCCOMB_X9_Y34_N12
\inst1|DOUT[11]~128\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|DOUT[11]~128_combout\ = (\inst2|inst1|alu1|mux|Mux3~1_combout\ & (\inst1|reg_gen:25:regs|y\(3))) # (!\inst2|inst1|alu1|mux|Mux3~1_combout\ & ((\inst1|reg_gen:9:regs|y\(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|reg_gen:25:regs|y\(3),
	datac => \inst1|reg_gen:9:regs|y\(3),
	datad => \inst2|inst1|alu1|mux|Mux3~1_combout\,
	combout => \inst1|DOUT[11]~128_combout\);

-- Location: FF_X12_Y34_N19
\inst1|reg_gen:17:regs|y[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	asdata => \inst2|inst|mux_2|mux_1|mux_generate:2:mux_i|Mux0~3_combout\,
	sload => VCC,
	ena => \inst1|dec_to_en\(17),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|reg_gen:17:regs|y\(3));

-- Location: LCCOMB_X12_Y34_N18
\inst1|DOUT[11]~129\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|DOUT[11]~129_combout\ = (\inst2|inst1|alu0|mux|Mux2~1_combout\ & (((\inst2|inst1|alu0|mux|Mux0~1_combout\)))) # (!\inst2|inst1|alu0|mux|Mux2~1_combout\ & ((\inst2|inst1|alu0|mux|Mux0~1_combout\ & (\inst1|DOUT[11]~128_combout\)) # 
-- (!\inst2|inst1|alu0|mux|Mux0~1_combout\ & ((\inst1|reg_gen:17:regs|y\(3))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|DOUT[11]~128_combout\,
	datab => \inst2|inst1|alu0|mux|Mux2~1_combout\,
	datac => \inst1|reg_gen:17:regs|y\(3),
	datad => \inst2|inst1|alu0|mux|Mux0~1_combout\,
	combout => \inst1|DOUT[11]~129_combout\);

-- Location: LCCOMB_X12_Y34_N12
\inst1|DOUT[11]~131\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|DOUT[11]~131_combout\ = (\inst2|inst1|alu0|mux|Mux2~1_combout\ & ((\inst1|DOUT[11]~129_combout\ & (\inst1|DOUT[11]~130_combout\)) # (!\inst1|DOUT[11]~129_combout\ & ((\inst1|reg_gen:19:regs|y\(3)))))) # (!\inst2|inst1|alu0|mux|Mux2~1_combout\ & 
-- (((\inst1|DOUT[11]~129_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|inst1|alu0|mux|Mux2~1_combout\,
	datab => \inst1|DOUT[11]~130_combout\,
	datac => \inst1|reg_gen:19:regs|y\(3),
	datad => \inst1|DOUT[11]~129_combout\,
	combout => \inst1|DOUT[11]~131_combout\);

-- Location: LCCOMB_X11_Y34_N2
\inst1|DOUT[3]~231\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|DOUT[3]~231_combout\ = (\inst1|DOUT[3]~198_combout\ & (((\inst1|DOUT[11]~125_combout\) # (\inst1|DOUT[12]~48_combout\)))) # (!\inst1|DOUT[3]~198_combout\ & (\inst1|DOUT[11]~118_combout\ & ((!\inst1|DOUT[12]~48_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|DOUT[11]~118_combout\,
	datab => \inst1|DOUT[11]~125_combout\,
	datac => \inst1|DOUT[3]~198_combout\,
	datad => \inst1|DOUT[12]~48_combout\,
	combout => \inst1|DOUT[3]~231_combout\);

-- Location: LCCOMB_X16_Y34_N20
\inst1|DOUT[3]~232\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|DOUT[3]~232_combout\ = (\inst1|DOUT[12]~48_combout\ & ((\inst1|DOUT[3]~231_combout\ & (\inst1|reg_gen:15:regs|y\(3))) # (!\inst1|DOUT[3]~231_combout\ & ((\inst1|DOUT[11]~116_combout\))))) # (!\inst1|DOUT[12]~48_combout\ & 
-- (((\inst1|DOUT[3]~231_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|reg_gen:15:regs|y\(3),
	datab => \inst1|DOUT[11]~116_combout\,
	datac => \inst1|DOUT[12]~48_combout\,
	datad => \inst1|DOUT[3]~231_combout\,
	combout => \inst1|DOUT[3]~232_combout\);

-- Location: LCCOMB_X16_Y34_N4
\inst1|DOUT[3]~233\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|DOUT[3]~233_combout\ = (\inst2|inst1|alu0|mux|Mux1~1_combout\ & (((\inst1|DOUT[3]~232_combout\) # (\inst1|DOUT[3]~260_combout\)))) # (!\inst2|inst1|alu0|mux|Mux1~1_combout\ & (\inst1|DOUT[11]~131_combout\ & ((!\inst1|DOUT[3]~260_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|DOUT[11]~131_combout\,
	datab => \inst1|DOUT[3]~232_combout\,
	datac => \inst2|inst1|alu0|mux|Mux1~1_combout\,
	datad => \inst1|DOUT[3]~260_combout\,
	combout => \inst1|DOUT[3]~233_combout\);

-- Location: LCCOMB_X16_Y34_N6
\inst1|DOUT[3]~229\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|DOUT[3]~229_combout\ = (\inst2|inst1|alu0|mux|Mux0~1_combout\ & (((\inst1|DOUT[11]~123_combout\) # (\inst2|inst1|alu0|mux|Mux2~1_combout\)))) # (!\inst2|inst1|alu0|mux|Mux0~1_combout\ & (\inst1|reg_gen:16:regs|y\(3) & 
-- ((!\inst2|inst1|alu0|mux|Mux2~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|reg_gen:16:regs|y\(3),
	datab => \inst1|DOUT[11]~123_combout\,
	datac => \inst2|inst1|alu0|mux|Mux0~1_combout\,
	datad => \inst2|inst1|alu0|mux|Mux2~1_combout\,
	combout => \inst1|DOUT[3]~229_combout\);

-- Location: LCCOMB_X16_Y34_N0
\inst1|DOUT[3]~230\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|DOUT[3]~230_combout\ = (\inst1|DOUT[3]~229_combout\ & (((\inst1|DOUT[11]~126_combout\)) # (!\inst2|inst1|alu0|mux|Mux2~1_combout\))) # (!\inst1|DOUT[3]~229_combout\ & (\inst2|inst1|alu0|mux|Mux2~1_combout\ & ((\inst1|reg_gen:18:regs|y\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110011010100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|DOUT[3]~229_combout\,
	datab => \inst2|inst1|alu0|mux|Mux2~1_combout\,
	datac => \inst1|DOUT[11]~126_combout\,
	datad => \inst1|reg_gen:18:regs|y\(3),
	combout => \inst1|DOUT[3]~230_combout\);

-- Location: LCCOMB_X16_Y34_N30
\inst1|DOUT[3]~234\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|DOUT[3]~234_combout\ = (\inst1|DOUT[3]~233_combout\ & (((\inst1|DOUT[11]~120_combout\)) # (!\inst1|DOUT[3]~260_combout\))) # (!\inst1|DOUT[3]~233_combout\ & (\inst1|DOUT[3]~260_combout\ & ((\inst1|DOUT[3]~230_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110011010100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|DOUT[3]~233_combout\,
	datab => \inst1|DOUT[3]~260_combout\,
	datac => \inst1|DOUT[11]~120_combout\,
	datad => \inst1|DOUT[3]~230_combout\,
	combout => \inst1|DOUT[3]~234_combout\);

-- Location: LCCOMB_X16_Y34_N26
\inst1|DOUT[3]~235\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|DOUT[3]~235_combout\ = (\inst1|DOUT[3]~203_combout\ & ((\inst1|DOUT[3]~234_combout\))) # (!\inst1|DOUT[3]~203_combout\ & (\inst1|reg_gen:30:regs|y\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst1|reg_gen:30:regs|y\(3),
	datac => \inst1|DOUT[3]~203_combout\,
	datad => \inst1|DOUT[3]~234_combout\,
	combout => \inst1|DOUT[3]~235_combout\);

-- Location: LCCOMB_X16_Y34_N12
\inst1|DOUT[3]$latch\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|DOUT[3]$latch~combout\ = (!\inst1|DOUT[7]~206_combout\ & ((GLOBAL(\inst1|DOUT[15]~52clkctrl_outclk\) & ((\inst1|DOUT[3]~235_combout\))) # (!GLOBAL(\inst1|DOUT[15]~52clkctrl_outclk\) & (\inst1|DOUT[3]$latch~combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|DOUT[3]$latch~combout\,
	datab => \inst1|DOUT[3]~235_combout\,
	datac => \inst1|DOUT[15]~52clkctrl_outclk\,
	datad => \inst1|DOUT[7]~206_combout\,
	combout => \inst1|DOUT[3]$latch~combout\);

-- Location: LCCOMB_X16_Y34_N22
\inst3|OUT16B[3]~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|OUT16B[3]~12_combout\ = (\inst|Mux5~0_combout\ & (((\inst1|DOUT[3]$latch~combout\)) # (!\inst1|DOUT[7]_2052~combout\))) # (!\inst|Mux5~0_combout\ & (((\inst2|inst1|alu0|mux|Mux0~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101001110010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Mux5~0_combout\,
	datab => \inst1|DOUT[7]_2052~combout\,
	datac => \inst2|inst1|alu0|mux|Mux0~1_combout\,
	datad => \inst1|DOUT[3]$latch~combout\,
	combout => \inst3|OUT16B[3]~12_combout\);

-- Location: LCCOMB_X16_Y35_N10
\inst2|inst|reg_gen:1:regs|reg_1|y[3]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|inst|reg_gen:1:regs|reg_1|y[3]~feeder_combout\ = \inst3|OUT16B[3]~12_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst3|OUT16B[3]~12_combout\,
	combout => \inst2|inst|reg_gen:1:regs|reg_1|y[3]~feeder_combout\);

-- Location: FF_X16_Y35_N11
\inst2|inst|reg_gen:1:regs|reg_1|y[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~input_o\,
	d => \inst2|inst|reg_gen:1:regs|reg_1|y[3]~feeder_combout\,
	ena => \inst2|inst|add_reg1_dcd|Mux3~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst2|inst|reg_gen:1:regs|reg_1|y\(3));

-- Location: LCCOMB_X16_Y35_N30
\inst2|inst|mux_1|mux_1|mux_generate:0:mux_i|Mux0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|inst|mux_1|mux_1|mux_generate:0:mux_i|Mux0~0_combout\ = (\inst2|inst|reg_gen:1:regs|reg_1|y\(3) & (!\inst4|inst1|exception~2_combout\ & \inst4|inst1|data_out[9]~3_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|inst|reg_gen:1:regs|reg_1|y\(3),
	datac => \inst4|inst1|exception~2_combout\,
	datad => \inst4|inst1|data_out[9]~3_combout\,
	combout => \inst2|inst|mux_1|mux_1|mux_generate:0:mux_i|Mux0~0_combout\);

-- Location: LCCOMB_X16_Y34_N28
\inst2|inst|reg_gen:6:regs|reg_1|y[3]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|inst|reg_gen:6:regs|reg_1|y[3]~feeder_combout\ = \inst3|OUT16B[3]~12_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst3|OUT16B[3]~12_combout\,
	combout => \inst2|inst|reg_gen:6:regs|reg_1|y[3]~feeder_combout\);

-- Location: FF_X16_Y34_N29
\inst2|inst|reg_gen:6:regs|reg_1|y[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~input_o\,
	d => \inst2|inst|reg_gen:6:regs|reg_1|y[3]~feeder_combout\,
	ena => \inst2|inst|add_reg1_dcd|Mux3~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst2|inst|reg_gen:6:regs|reg_1|y\(3));

-- Location: LCCOMB_X16_Y34_N16
\inst2|inst|mux_1|mux_1|mux_generate:0:mux_i|Mux0~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|inst|mux_1|mux_1|mux_generate:0:mux_i|Mux0~1_combout\ = (\inst4|inst1|INS_OUT[15]~4_combout\ & (\inst2|inst|mux_1|mux_1|mux_generate:2:mux_i|Mux2~0_combout\ & ((\inst2|inst|reg_gen:6:regs|reg_1|y\(3))))) # (!\inst4|inst1|INS_OUT[15]~4_combout\ & 
-- (((\inst2|inst|mux_1|mux_1|mux_generate:0:mux_i|Mux0~0_combout\)) # (!\inst2|inst|mux_1|mux_1|mux_generate:2:mux_i|Mux2~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100101010001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|inst1|INS_OUT[15]~4_combout\,
	datab => \inst2|inst|mux_1|mux_1|mux_generate:2:mux_i|Mux2~0_combout\,
	datac => \inst2|inst|mux_1|mux_1|mux_generate:0:mux_i|Mux0~0_combout\,
	datad => \inst2|inst|reg_gen:6:regs|reg_1|y\(3),
	combout => \inst2|inst|mux_1|mux_1|mux_generate:0:mux_i|Mux0~1_combout\);

-- Location: LCCOMB_X16_Y34_N14
\inst2|inst1|alu0|bitwor|Res[3]\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|inst1|alu0|bitwor|Res\(3) = (\inst2|inst|mux_1|mux_1|mux_generate:0:mux_i|Mux0~1_combout\) # ((\inst|Mux7~8_combout\ & ((\inst4|inst1|INS_OUT[3]~8_combout\))) # (!\inst|Mux7~8_combout\ & 
-- (\inst2|inst|mux_2|mux_1|mux_generate:0:mux_i|Mux0~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111011011100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Mux7~8_combout\,
	datab => \inst2|inst|mux_1|mux_1|mux_generate:0:mux_i|Mux0~1_combout\,
	datac => \inst2|inst|mux_2|mux_1|mux_generate:0:mux_i|Mux0~3_combout\,
	datad => \inst4|inst1|INS_OUT[3]~8_combout\,
	combout => \inst2|inst1|alu0|bitwor|Res\(3));

-- Location: LCCOMB_X16_Y34_N18
\inst2|inst1|alu0|ander|Result[3]\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|inst1|alu0|ander|Result\(3) = (\inst2|inst|mux_1|mux_1|mux_generate:0:mux_i|Mux0~1_combout\ & ((\inst|Mux7~8_combout\ & ((\inst4|inst1|INS_OUT[3]~8_combout\))) # (!\inst|Mux7~8_combout\ & 
-- (\inst2|inst|mux_2|mux_1|mux_generate:0:mux_i|Mux0~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100100001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Mux7~8_combout\,
	datab => \inst2|inst|mux_1|mux_1|mux_generate:0:mux_i|Mux0~1_combout\,
	datac => \inst2|inst|mux_2|mux_1|mux_generate:0:mux_i|Mux0~3_combout\,
	datad => \inst4|inst1|INS_OUT[3]~8_combout\,
	combout => \inst2|inst1|alu0|ander|Result\(3));

-- Location: LCCOMB_X14_Y34_N6
\inst2|inst1|alu0|adder|S[3]\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|inst1|alu0|adder|S\(3) = \inst2|inst2|OUT16B[3]~3_combout\ $ (\inst2|inst1|alu0|adder|C[3]~2_combout\ $ (\inst2|inst3|DOUT[2]~3_combout\ $ (\inst2|inst|mux_1|mux_1|mux_generate:0:mux_i|Mux0~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|inst2|OUT16B[3]~3_combout\,
	datab => \inst2|inst1|alu0|adder|C[3]~2_combout\,
	datac => \inst2|inst3|DOUT[2]~3_combout\,
	datad => \inst2|inst|mux_1|mux_1|mux_generate:0:mux_i|Mux0~1_combout\,
	combout => \inst2|inst1|alu0|adder|S\(3));

-- Location: LCCOMB_X14_Y34_N24
\inst2|inst1|alu0|mux|Mux0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|inst1|alu0|mux|Mux0~0_combout\ = (\inst2|inst3|DOUT[1]~4_combout\ & (((\inst2|inst3|DOUT[0]~2_combout\) # (\inst2|inst1|alu0|adder|S\(3))))) # (!\inst2|inst3|DOUT[1]~4_combout\ & (\inst2|inst1|alu0|ander|Result\(3) & 
-- (!\inst2|inst3|DOUT[0]~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111010100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|inst3|DOUT[1]~4_combout\,
	datab => \inst2|inst1|alu0|ander|Result\(3),
	datac => \inst2|inst3|DOUT[0]~2_combout\,
	datad => \inst2|inst1|alu0|adder|S\(3),
	combout => \inst2|inst1|alu0|mux|Mux0~0_combout\);

-- Location: LCCOMB_X13_Y32_N22
\inst2|inst1|alu0|mux|Mux0~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|inst1|alu0|mux|Mux0~1_combout\ = (\inst2|inst3|DOUT[0]~2_combout\ & ((\inst2|inst1|alu0|mux|Mux0~0_combout\ & ((\inst2|inst1|alu3|adder|S\(3)))) # (!\inst2|inst1|alu0|mux|Mux0~0_combout\ & (\inst2|inst1|alu0|bitwor|Res\(3))))) # 
-- (!\inst2|inst3|DOUT[0]~2_combout\ & (((\inst2|inst1|alu0|mux|Mux0~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100001011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|inst3|DOUT[0]~2_combout\,
	datab => \inst2|inst1|alu0|bitwor|Res\(3),
	datac => \inst2|inst1|alu0|mux|Mux0~0_combout\,
	datad => \inst2|inst1|alu3|adder|S\(3),
	combout => \inst2|inst1|alu0|mux|Mux0~1_combout\);

-- Location: LCCOMB_X13_Y36_N22
\inst1|DOUT[1]~250\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|DOUT[1]~250_combout\ = (!\inst2|inst1|alu0|mux|Mux0~1_combout\ & (!\inst2|inst1|alu1|mux|Mux3~1_combout\ & ((\inst1|dcd|dcd_3|dcd|Mux7~7_combout\) # (\inst1|dcd|dcd_3|dcd|Mux7~5_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000110010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|dcd|dcd_3|dcd|Mux7~7_combout\,
	datab => \inst2|inst1|alu0|mux|Mux0~1_combout\,
	datac => \inst1|dcd|dcd_3|dcd|Mux7~5_combout\,
	datad => \inst2|inst1|alu1|mux|Mux3~1_combout\,
	combout => \inst1|DOUT[1]~250_combout\);

-- Location: LCCOMB_X13_Y36_N8
\inst1|comb~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|comb~2_combout\ = (!\inst1|DOUT[1]~250_combout\ & ((\inst1|DOUT[7]~205_combout\) # ((!\inst|Mux5~0_combout\) # (!\inst1|DOUT[7]~54_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|DOUT[7]~205_combout\,
	datab => \inst1|DOUT[7]~54_combout\,
	datac => \inst1|DOUT[1]~250_combout\,
	datad => \inst|Mux5~0_combout\,
	combout => \inst1|comb~2_combout\);

-- Location: LCCOMB_X11_Y31_N18
\inst1|DOUT[0]~251\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|DOUT[0]~251_combout\ = (\inst2|inst1|alu0|mux|Mux2~1_combout\ & (((\inst2|inst1|alu0|mux|Mux0~1_combout\)))) # (!\inst2|inst1|alu0|mux|Mux2~1_combout\ & ((\inst2|inst1|alu0|mux|Mux0~1_combout\ & (\inst1|DOUT[8]~176_combout\)) # 
-- (!\inst2|inst1|alu0|mux|Mux0~1_combout\ & ((\inst1|reg_gen:16:regs|y\(0))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|inst1|alu0|mux|Mux2~1_combout\,
	datab => \inst1|DOUT[8]~176_combout\,
	datac => \inst1|reg_gen:16:regs|y\(0),
	datad => \inst2|inst1|alu0|mux|Mux0~1_combout\,
	combout => \inst1|DOUT[0]~251_combout\);

-- Location: LCCOMB_X11_Y33_N8
\inst1|DOUT[0]~252\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|DOUT[0]~252_combout\ = (\inst2|inst1|alu0|mux|Mux2~1_combout\ & ((\inst1|DOUT[0]~251_combout\ & ((\inst1|DOUT[8]~184_combout\))) # (!\inst1|DOUT[0]~251_combout\ & (\inst1|reg_gen:18:regs|y\(0))))) # (!\inst2|inst1|alu0|mux|Mux2~1_combout\ & 
-- (((\inst1|DOUT[0]~251_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|reg_gen:18:regs|y\(0),
	datab => \inst2|inst1|alu0|mux|Mux2~1_combout\,
	datac => \inst1|DOUT[8]~184_combout\,
	datad => \inst1|DOUT[0]~251_combout\,
	combout => \inst1|DOUT[0]~252_combout\);

-- Location: LCCOMB_X12_Y32_N22
\inst1|DOUT[0]~253\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|DOUT[0]~253_combout\ = (\inst1|DOUT[3]~198_combout\ & (((\inst1|reg_gen:15:regs|y\(0))) # (!\inst1|DOUT[12]~48_combout\))) # (!\inst1|DOUT[3]~198_combout\ & (\inst1|DOUT[12]~48_combout\ & ((\inst1|DOUT[8]~179_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110011010100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|DOUT[3]~198_combout\,
	datab => \inst1|DOUT[12]~48_combout\,
	datac => \inst1|reg_gen:15:regs|y\(0),
	datad => \inst1|DOUT[8]~179_combout\,
	combout => \inst1|DOUT[0]~253_combout\);

-- Location: LCCOMB_X11_Y33_N6
\inst1|DOUT[0]~254\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|DOUT[0]~254_combout\ = (\inst1|DOUT[12]~48_combout\ & (((\inst1|DOUT[0]~253_combout\)))) # (!\inst1|DOUT[12]~48_combout\ & ((\inst1|DOUT[0]~253_combout\ & (\inst1|DOUT[8]~186_combout\)) # (!\inst1|DOUT[0]~253_combout\ & 
-- ((\inst1|DOUT[8]~178_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010111100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|DOUT[12]~48_combout\,
	datab => \inst1|DOUT[8]~186_combout\,
	datac => \inst1|DOUT[0]~253_combout\,
	datad => \inst1|DOUT[8]~178_combout\,
	combout => \inst1|DOUT[0]~254_combout\);

-- Location: LCCOMB_X11_Y33_N12
\inst1|DOUT[0]~255\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|DOUT[0]~255_combout\ = (\inst2|inst1|alu0|mux|Mux1~1_combout\ & ((\inst1|DOUT[3]~260_combout\) # ((\inst1|DOUT[0]~254_combout\)))) # (!\inst2|inst1|alu0|mux|Mux1~1_combout\ & (!\inst1|DOUT[3]~260_combout\ & (\inst1|DOUT[8]~191_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|inst1|alu0|mux|Mux1~1_combout\,
	datab => \inst1|DOUT[3]~260_combout\,
	datac => \inst1|DOUT[8]~191_combout\,
	datad => \inst1|DOUT[0]~254_combout\,
	combout => \inst1|DOUT[0]~255_combout\);

-- Location: LCCOMB_X11_Y33_N18
\inst1|DOUT[0]~256\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|DOUT[0]~256_combout\ = (\inst1|DOUT[3]~260_combout\ & ((\inst1|DOUT[0]~255_combout\ & (\inst1|DOUT[8]~181_combout\)) # (!\inst1|DOUT[0]~255_combout\ & ((\inst1|DOUT[0]~252_combout\))))) # (!\inst1|DOUT[3]~260_combout\ & 
-- (((\inst1|DOUT[0]~255_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|DOUT[8]~181_combout\,
	datab => \inst1|DOUT[3]~260_combout\,
	datac => \inst1|DOUT[0]~252_combout\,
	datad => \inst1|DOUT[0]~255_combout\,
	combout => \inst1|DOUT[0]~256_combout\);

-- Location: LCCOMB_X10_Y34_N2
\inst1|DOUT[0]~257\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|DOUT[0]~257_combout\ = (\inst1|DOUT[3]~203_combout\ & ((\inst1|DOUT[0]~256_combout\))) # (!\inst1|DOUT[3]~203_combout\ & (\inst1|reg_gen:30:regs|y\(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|reg_gen:30:regs|y\(0),
	datab => \inst1|DOUT[3]~203_combout\,
	datad => \inst1|DOUT[0]~256_combout\,
	combout => \inst1|DOUT[0]~257_combout\);

-- Location: LCCOMB_X10_Y34_N24
\inst1|DOUT[0]$latch~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|DOUT[0]$latch~0_combout\ = (GLOBAL(\inst1|DOUT[15]~52clkctrl_outclk\) & ((\inst1|DOUT[0]~257_combout\))) # (!GLOBAL(\inst1|DOUT[15]~52clkctrl_outclk\) & (\inst1|DOUT[0]$latch~combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|DOUT[0]$latch~combout\,
	datab => \inst1|DOUT[0]~257_combout\,
	datad => \inst1|DOUT[15]~52clkctrl_outclk\,
	combout => \inst1|DOUT[0]$latch~0_combout\);

-- Location: LCCOMB_X14_Y36_N2
\inst1|DOUT[0]$latch\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|DOUT[0]$latch~combout\ = (!\inst1|comb~2_combout\ & ((\inst1|DOUT[0]$latch~0_combout\) # (\inst1|comb~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010101000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|comb~2_combout\,
	datab => \inst1|DOUT[0]$latch~0_combout\,
	datad => \inst1|comb~3_combout\,
	combout => \inst1|DOUT[0]$latch~combout\);

-- Location: LCCOMB_X14_Y36_N4
\inst3|OUT16B[0]~15\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|OUT16B[0]~15_combout\ = (\inst|Mux5~0_combout\ & ((\inst1|DOUT[0]$latch~combout\) # ((!\inst1|DOUT[7]_2052~combout\)))) # (!\inst|Mux5~0_combout\ & (((\inst2|inst1|alu0|mux|Mux3~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101111110001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Mux5~0_combout\,
	datab => \inst1|DOUT[0]$latch~combout\,
	datac => \inst1|DOUT[7]_2052~combout\,
	datad => \inst2|inst1|alu0|mux|Mux3~0_combout\,
	combout => \inst3|OUT16B[0]~15_combout\);

-- Location: FF_X17_Y32_N9
\inst2|inst|reg_gen:1:regs|reg_1|y[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~input_o\,
	asdata => \inst3|OUT16B[0]~15_combout\,
	sload => VCC,
	ena => \inst2|inst|add_reg1_dcd|Mux3~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst2|inst|reg_gen:1:regs|reg_1|y\(0));

-- Location: LCCOMB_X14_Y32_N28
\inst2|inst|mux_1|mux_1|mux_generate:0:mux_i|Mux3~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|inst|mux_1|mux_1|mux_generate:0:mux_i|Mux3~0_combout\ = (\inst2|inst|reg_gen:1:regs|reg_1|y\(0) & (!\inst4|inst1|exception~2_combout\ & \inst4|inst1|data_out[9]~3_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst2|inst|reg_gen:1:regs|reg_1|y\(0),
	datac => \inst4|inst1|exception~2_combout\,
	datad => \inst4|inst1|data_out[9]~3_combout\,
	combout => \inst2|inst|mux_1|mux_1|mux_generate:0:mux_i|Mux3~0_combout\);

-- Location: FF_X14_Y32_N23
\inst2|inst|reg_gen:6:regs|reg_1|y[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~input_o\,
	asdata => \inst3|OUT16B[0]~15_combout\,
	sload => VCC,
	ena => \inst2|inst|add_reg1_dcd|Mux3~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst2|inst|reg_gen:6:regs|reg_1|y\(0));

-- Location: LCCOMB_X14_Y32_N22
\inst2|inst|mux_1|mux_1|mux_generate:0:mux_i|Mux3~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|inst|mux_1|mux_1|mux_generate:0:mux_i|Mux3~1_combout\ = (\inst2|inst|mux_1|mux_1|mux_generate:2:mux_i|Mux2~0_combout\ & ((\inst4|inst1|INS_OUT[15]~4_combout\ & ((\inst2|inst|reg_gen:6:regs|reg_1|y\(0)))) # (!\inst4|inst1|INS_OUT[15]~4_combout\ & 
-- (\inst2|inst|mux_1|mux_1|mux_generate:0:mux_i|Mux3~0_combout\)))) # (!\inst2|inst|mux_1|mux_1|mux_generate:2:mux_i|Mux2~0_combout\ & (((!\inst4|inst1|INS_OUT[15]~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000011011101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|inst|mux_1|mux_1|mux_generate:2:mux_i|Mux2~0_combout\,
	datab => \inst2|inst|mux_1|mux_1|mux_generate:0:mux_i|Mux3~0_combout\,
	datac => \inst2|inst|reg_gen:6:regs|reg_1|y\(0),
	datad => \inst4|inst1|INS_OUT[15]~4_combout\,
	combout => \inst2|inst|mux_1|mux_1|mux_generate:0:mux_i|Mux3~1_combout\);

-- Location: LCCOMB_X16_Y32_N28
\inst2|inst1|alu0|adder|C~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|inst1|alu0|adder|C~0_combout\ = (\inst2|inst3|DOUT[2]~3_combout\ & (\inst2|inst|mux_1|mux_1|mux_generate:0:mux_i|Mux3~1_combout\ $ (((!\inst2|inst2|OUT16B[0]~5_combout\ & !\inst2|inst2|OUT16B[0]~6_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000010000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|inst2|OUT16B[0]~5_combout\,
	datab => \inst2|inst3|DOUT[2]~3_combout\,
	datac => \inst2|inst|mux_1|mux_1|mux_generate:0:mux_i|Mux3~1_combout\,
	datad => \inst2|inst2|OUT16B[0]~6_combout\,
	combout => \inst2|inst1|alu0|adder|C~0_combout\);

-- Location: LCCOMB_X19_Y32_N30
\inst2|inst1|alu0|adder|S[1]\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|inst1|alu0|adder|S\(1) = \inst2|inst1|alu0|inverter|Rt\(1) $ (\inst2|inst|mux_1|mux_1|mux_generate:0:mux_i|Mux2~1_combout\ $ (((\inst2|inst1|alu0|adder|C~0_combout\) # (\inst2|inst1|alu0|adder|G\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100100100110110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|inst1|alu0|adder|C~0_combout\,
	datab => \inst2|inst1|alu0|inverter|Rt\(1),
	datac => \inst2|inst1|alu0|adder|G\(0),
	datad => \inst2|inst|mux_1|mux_1|mux_generate:0:mux_i|Mux2~1_combout\,
	combout => \inst2|inst1|alu0|adder|S\(1));

-- Location: LCCOMB_X19_Y32_N14
\inst2|inst2|OUT16B[1]~19\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|inst2|OUT16B[1]~19_combout\ = (\inst|Mux7~8_combout\ & (((!\inst4|inst1|exception~2_combout\ & \inst4|inst1|data_out[1]~7_combout\)))) # (!\inst|Mux7~8_combout\ & (\inst2|inst|mux_2|mux_1|mux_generate:0:mux_i|Mux2~3_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011101000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|inst|mux_2|mux_1|mux_generate:0:mux_i|Mux2~3_combout\,
	datab => \inst4|inst1|exception~2_combout\,
	datac => \inst|Mux7~8_combout\,
	datad => \inst4|inst1|data_out[1]~7_combout\,
	combout => \inst2|inst2|OUT16B[1]~19_combout\);

-- Location: LCCOMB_X19_Y32_N20
\inst2|inst1|alu0|mux|Mux2~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|inst1|alu0|mux|Mux2~0_combout\ = (!\inst2|inst3|DOUT[1]~4_combout\ & ((\inst2|inst3|DOUT[0]~2_combout\ & ((\inst2|inst2|OUT16B[1]~19_combout\) # (\inst2|inst|mux_1|mux_1|mux_generate:0:mux_i|Mux2~1_combout\))) # (!\inst2|inst3|DOUT[0]~2_combout\ & 
-- (\inst2|inst2|OUT16B[1]~19_combout\ & \inst2|inst|mux_1|mux_1|mux_generate:0:mux_i|Mux2~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|inst3|DOUT[0]~2_combout\,
	datab => \inst2|inst3|DOUT[1]~4_combout\,
	datac => \inst2|inst2|OUT16B[1]~19_combout\,
	datad => \inst2|inst|mux_1|mux_1|mux_generate:0:mux_i|Mux2~1_combout\,
	combout => \inst2|inst1|alu0|mux|Mux2~0_combout\);

-- Location: LCCOMB_X19_Y32_N22
\inst2|inst1|alu0|mux|Mux2~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|inst1|alu0|mux|Mux2~1_combout\ = (\inst2|inst1|alu0|mux|Mux2~0_combout\) # ((!\inst2|inst3|DOUT[0]~2_combout\ & (\inst2|inst3|DOUT[1]~4_combout\ & \inst2|inst1|alu0|adder|S\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111101000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|inst3|DOUT[0]~2_combout\,
	datab => \inst2|inst3|DOUT[1]~4_combout\,
	datac => \inst2|inst1|alu0|adder|S\(1),
	datad => \inst2|inst1|alu0|mux|Mux2~0_combout\,
	combout => \inst2|inst1|alu0|mux|Mux2~1_combout\);

-- Location: LCCOMB_X14_Y32_N30
\inst1|dcd|dcd_3|dcd|Mux7~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|dcd|dcd_3|dcd|Mux7~7_combout\ = (!\inst2|inst1|alu0|mux|Mux2~1_combout\ & (!\inst2|inst1|alu0|mux|Mux3~0_combout\ & !\inst2|inst1|alu0|mux|Mux1~1_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000010001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|inst1|alu0|mux|Mux2~1_combout\,
	datab => \inst2|inst1|alu0|mux|Mux3~0_combout\,
	datad => \inst2|inst1|alu0|mux|Mux1~1_combout\,
	combout => \inst1|dcd|dcd_3|dcd|Mux7~7_combout\);

-- Location: LCCOMB_X13_Y36_N30
\inst1|DOUT[7]~205\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|DOUT[7]~205_combout\ = (!\inst2|inst1|alu0|mux|Mux0~1_combout\ & (!\inst2|inst1|alu1|mux|Mux3~1_combout\ & ((\inst1|dcd|dcd_3|dcd|Mux7~7_combout\) # (\inst1|dcd|dcd_3|dcd|Mux7~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000110010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|dcd|dcd_3|dcd|Mux7~7_combout\,
	datab => \inst2|inst1|alu0|mux|Mux0~1_combout\,
	datac => \inst1|dcd|dcd_3|dcd|Mux7~4_combout\,
	datad => \inst2|inst1|alu1|mux|Mux3~1_combout\,
	combout => \inst1|DOUT[7]~205_combout\);

-- Location: LCCOMB_X13_Y36_N14
\inst1|DOUT[7]~207\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|DOUT[7]~207_combout\ = (\inst1|DOUT[7]~205_combout\) # (!\inst1|DOUT[7]~54_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101110111011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|DOUT[7]~205_combout\,
	datab => \inst1|DOUT[7]~54_combout\,
	combout => \inst1|DOUT[7]~207_combout\);

-- Location: LCCOMB_X13_Y32_N4
\inst1|DOUT[7]_2052\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|DOUT[7]_2052~combout\ = (\inst|Mux5~0_combout\ & ((\inst1|DOUT[7]~207_combout\) # ((\inst1|DOUT[7]_2052~combout\) # (\inst1|DOUT[15]~52_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|DOUT[7]~207_combout\,
	datab => \inst1|DOUT[7]_2052~combout\,
	datac => \inst|Mux5~0_combout\,
	datad => \inst1|DOUT[15]~52_combout\,
	combout => \inst1|DOUT[7]_2052~combout\);

-- Location: LCCOMB_X11_Y32_N12
\inst1|DOUT[2]~236\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|DOUT[2]~236_combout\ = (\inst2|inst1|alu0|mux|Mux2~1_combout\ & (((\inst2|inst1|alu0|mux|Mux0~1_combout\)))) # (!\inst2|inst1|alu0|mux|Mux2~1_combout\ & ((\inst2|inst1|alu0|mux|Mux0~1_combout\ & (\inst1|DOUT[10]~136_combout\)) # 
-- (!\inst2|inst1|alu0|mux|Mux0~1_combout\ & ((\inst1|reg_gen:16:regs|y\(2))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|inst1|alu0|mux|Mux2~1_combout\,
	datab => \inst1|DOUT[10]~136_combout\,
	datac => \inst1|reg_gen:16:regs|y\(2),
	datad => \inst2|inst1|alu0|mux|Mux0~1_combout\,
	combout => \inst1|DOUT[2]~236_combout\);

-- Location: LCCOMB_X11_Y32_N20
\inst1|DOUT[2]~237\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|DOUT[2]~237_combout\ = (\inst2|inst1|alu0|mux|Mux2~1_combout\ & ((\inst1|DOUT[2]~236_combout\ & ((\inst1|DOUT[10]~144_combout\))) # (!\inst1|DOUT[2]~236_combout\ & (\inst1|reg_gen:18:regs|y\(2))))) # (!\inst2|inst1|alu0|mux|Mux2~1_combout\ & 
-- (((\inst1|DOUT[2]~236_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|inst1|alu0|mux|Mux2~1_combout\,
	datab => \inst1|reg_gen:18:regs|y\(2),
	datac => \inst1|DOUT[10]~144_combout\,
	datad => \inst1|DOUT[2]~236_combout\,
	combout => \inst1|DOUT[2]~237_combout\);

-- Location: LCCOMB_X13_Y34_N26
\inst1|DOUT[2]~238\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|DOUT[2]~238_combout\ = (\inst1|DOUT[12]~48_combout\ & (((\inst1|DOUT[10]~139_combout\) # (\inst1|DOUT[3]~198_combout\)))) # (!\inst1|DOUT[12]~48_combout\ & (\inst1|DOUT[10]~138_combout\ & ((!\inst1|DOUT[3]~198_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|DOUT[10]~138_combout\,
	datab => \inst1|DOUT[10]~139_combout\,
	datac => \inst1|DOUT[12]~48_combout\,
	datad => \inst1|DOUT[3]~198_combout\,
	combout => \inst1|DOUT[2]~238_combout\);

-- Location: LCCOMB_X12_Y32_N8
\inst1|DOUT[2]~239\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|DOUT[2]~239_combout\ = (\inst1|DOUT[3]~198_combout\ & ((\inst1|DOUT[2]~238_combout\ & (\inst1|reg_gen:15:regs|y\(2))) # (!\inst1|DOUT[2]~238_combout\ & ((\inst1|DOUT[10]~146_combout\))))) # (!\inst1|DOUT[3]~198_combout\ & 
-- (\inst1|DOUT[2]~238_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110011011000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|DOUT[3]~198_combout\,
	datab => \inst1|DOUT[2]~238_combout\,
	datac => \inst1|reg_gen:15:regs|y\(2),
	datad => \inst1|DOUT[10]~146_combout\,
	combout => \inst1|DOUT[2]~239_combout\);

-- Location: LCCOMB_X12_Y30_N6
\inst1|DOUT[2]~240\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|DOUT[2]~240_combout\ = (\inst1|DOUT[3]~260_combout\ & (\inst2|inst1|alu0|mux|Mux1~1_combout\)) # (!\inst1|DOUT[3]~260_combout\ & ((\inst2|inst1|alu0|mux|Mux1~1_combout\ & ((\inst1|DOUT[2]~239_combout\))) # (!\inst2|inst1|alu0|mux|Mux1~1_combout\ & 
-- (\inst1|DOUT[10]~151_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|DOUT[3]~260_combout\,
	datab => \inst2|inst1|alu0|mux|Mux1~1_combout\,
	datac => \inst1|DOUT[10]~151_combout\,
	datad => \inst1|DOUT[2]~239_combout\,
	combout => \inst1|DOUT[2]~240_combout\);

-- Location: LCCOMB_X12_Y30_N20
\inst1|DOUT[2]~241\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|DOUT[2]~241_combout\ = (\inst1|DOUT[3]~260_combout\ & ((\inst1|DOUT[2]~240_combout\ & (\inst1|DOUT[10]~141_combout\)) # (!\inst1|DOUT[2]~240_combout\ & ((\inst1|DOUT[2]~237_combout\))))) # (!\inst1|DOUT[3]~260_combout\ & 
-- (((\inst1|DOUT[2]~240_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|DOUT[10]~141_combout\,
	datab => \inst1|DOUT[3]~260_combout\,
	datac => \inst1|DOUT[2]~237_combout\,
	datad => \inst1|DOUT[2]~240_combout\,
	combout => \inst1|DOUT[2]~241_combout\);

-- Location: LCCOMB_X12_Y30_N30
\inst1|DOUT[2]~242\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|DOUT[2]~242_combout\ = (\inst1|DOUT[3]~203_combout\ & ((\inst1|DOUT[2]~241_combout\))) # (!\inst1|DOUT[3]~203_combout\ & (\inst1|reg_gen:30:regs|y\(2)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst1|reg_gen:30:regs|y\(2),
	datac => \inst1|DOUT[3]~203_combout\,
	datad => \inst1|DOUT[2]~241_combout\,
	combout => \inst1|DOUT[2]~242_combout\);

-- Location: LCCOMB_X12_Y30_N22
\inst1|DOUT[2]$latch~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|DOUT[2]$latch~0_combout\ = (GLOBAL(\inst1|DOUT[15]~52clkctrl_outclk\) & ((\inst1|DOUT[2]~242_combout\))) # (!GLOBAL(\inst1|DOUT[15]~52clkctrl_outclk\) & (\inst1|DOUT[2]$latch~combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|DOUT[2]$latch~combout\,
	datac => \inst1|DOUT[2]~242_combout\,
	datad => \inst1|DOUT[15]~52clkctrl_outclk\,
	combout => \inst1|DOUT[2]$latch~0_combout\);

-- Location: LCCOMB_X18_Y32_N4
\inst1|dcd|dcd_0|D[2]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|dcd|dcd_0|D[2]~2_combout\ = (!\inst2|inst1|alu0|mux|Mux0~1_combout\ & (!\inst2|inst1|alu1|mux|Mux3~1_combout\ & \inst1|dcd|dcd_3|dcd|Mux7~5_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst2|inst1|alu0|mux|Mux0~1_combout\,
	datac => \inst2|inst1|alu1|mux|Mux3~1_combout\,
	datad => \inst1|dcd|dcd_3|dcd|Mux7~5_combout\,
	combout => \inst1|dcd|dcd_0|D[2]~2_combout\);

-- Location: LCCOMB_X18_Y32_N24
\inst1|comb~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|comb~1_combout\ = (!\inst1|dcd|dcd_0|D[2]~2_combout\ & (((\inst1|DOUT[7]~205_combout\) # (!\inst1|DOUT[7]~54_combout\)) # (!\inst|Mux5~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100010011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Mux5~0_combout\,
	datab => \inst1|dcd|dcd_0|D[2]~2_combout\,
	datac => \inst1|DOUT[7]~54_combout\,
	datad => \inst1|DOUT[7]~205_combout\,
	combout => \inst1|comb~1_combout\);

-- Location: LCCOMB_X18_Y32_N10
\inst1|DOUT[2]$latch\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|DOUT[2]$latch~combout\ = (!\inst1|comb~1_combout\ & ((\inst1|DOUT[2]$latch~0_combout\) # (\inst1|dcd|dcd_0|D[2]~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|DOUT[2]$latch~0_combout\,
	datac => \inst1|dcd|dcd_0|D[2]~2_combout\,
	datad => \inst1|comb~1_combout\,
	combout => \inst1|DOUT[2]$latch~combout\);

-- Location: LCCOMB_X18_Y32_N18
\inst3|OUT16B[2]~13\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|OUT16B[2]~13_combout\ = (\inst|Mux5~0_combout\ & (((\inst1|DOUT[2]$latch~combout\) # (!\inst1|DOUT[7]_2052~combout\)))) # (!\inst|Mux5~0_combout\ & (\inst2|inst1|alu0|mux|Mux1~1_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111001001110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Mux5~0_combout\,
	datab => \inst2|inst1|alu0|mux|Mux1~1_combout\,
	datac => \inst1|DOUT[7]_2052~combout\,
	datad => \inst1|DOUT[2]$latch~combout\,
	combout => \inst3|OUT16B[2]~13_combout\);

-- Location: FF_X16_Y32_N7
\inst2|inst|reg_gen:1:regs|reg_1|y[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~input_o\,
	asdata => \inst3|OUT16B[2]~13_combout\,
	sload => VCC,
	ena => \inst2|inst|add_reg1_dcd|Mux3~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst2|inst|reg_gen:1:regs|reg_1|y\(2));

-- Location: LCCOMB_X16_Y32_N6
\inst2|inst|mux_1|mux_1|mux_generate:0:mux_i|Mux1~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|inst|mux_1|mux_1|mux_generate:0:mux_i|Mux1~0_combout\ = (\inst4|inst1|data_out[9]~3_combout\ & (\inst2|inst|reg_gen:1:regs|reg_1|y\(2) & !\inst4|inst1|exception~2_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|inst1|data_out[9]~3_combout\,
	datac => \inst2|inst|reg_gen:1:regs|reg_1|y\(2),
	datad => \inst4|inst1|exception~2_combout\,
	combout => \inst2|inst|mux_1|mux_1|mux_generate:0:mux_i|Mux1~0_combout\);

-- Location: FF_X18_Y32_N27
\inst2|inst|reg_gen:6:regs|reg_1|y[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~input_o\,
	asdata => \inst3|OUT16B[2]~13_combout\,
	sload => VCC,
	ena => \inst2|inst|add_reg1_dcd|Mux3~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst2|inst|reg_gen:6:regs|reg_1|y\(2));

-- Location: LCCOMB_X16_Y32_N30
\inst2|inst|mux_1|mux_1|mux_generate:0:mux_i|Mux1~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|inst|mux_1|mux_1|mux_generate:0:mux_i|Mux1~1_combout\ = (\inst2|inst|mux_1|mux_1|mux_generate:2:mux_i|Mux2~0_combout\ & ((\inst4|inst1|INS_OUT[15]~4_combout\ & ((\inst2|inst|reg_gen:6:regs|reg_1|y\(2)))) # (!\inst4|inst1|INS_OUT[15]~4_combout\ & 
-- (\inst2|inst|mux_1|mux_1|mux_generate:0:mux_i|Mux1~0_combout\)))) # (!\inst2|inst|mux_1|mux_1|mux_generate:2:mux_i|Mux2~0_combout\ & (((!\inst4|inst1|INS_OUT[15]~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000010111011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|inst|mux_1|mux_1|mux_generate:0:mux_i|Mux1~0_combout\,
	datab => \inst2|inst|mux_1|mux_1|mux_generate:2:mux_i|Mux2~0_combout\,
	datac => \inst2|inst|reg_gen:6:regs|reg_1|y\(2),
	datad => \inst4|inst1|INS_OUT[15]~4_combout\,
	combout => \inst2|inst|mux_1|mux_1|mux_generate:0:mux_i|Mux1~1_combout\);

-- Location: LCCOMB_X14_Y31_N4
\inst2|inst1|alu0|mux|Mux1~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|inst1|alu0|mux|Mux1~0_combout\ = \inst2|inst2|OUT16B[2]~4_combout\ $ (((\inst2|inst3|DOUT[1]~4_combout\ & (\inst2|inst1|alu0|adder|C[2]~1_combout\ $ (\inst2|inst3|DOUT[2]~3_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100011001101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|inst3|DOUT[1]~4_combout\,
	datab => \inst2|inst2|OUT16B[2]~4_combout\,
	datac => \inst2|inst1|alu0|adder|C[2]~1_combout\,
	datad => \inst2|inst3|DOUT[2]~3_combout\,
	combout => \inst2|inst1|alu0|mux|Mux1~0_combout\);

-- Location: LCCOMB_X14_Y31_N10
\inst2|inst1|alu0|mux|Mux1~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|inst1|alu0|mux|Mux1~1_combout\ = (\inst2|inst|mux_1|mux_1|mux_generate:0:mux_i|Mux1~1_combout\ & (\inst2|inst3|DOUT[1]~4_combout\ $ (((\inst2|inst1|alu0|mux|Mux1~0_combout\) # (\inst2|inst3|DOUT[0]~2_combout\))))) # 
-- (!\inst2|inst|mux_1|mux_1|mux_generate:0:mux_i|Mux1~1_combout\ & (\inst2|inst1|alu0|mux|Mux1~0_combout\ & (\inst2|inst3|DOUT[1]~4_combout\ $ (\inst2|inst3|DOUT[0]~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010001101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|inst3|DOUT[1]~4_combout\,
	datab => \inst2|inst|mux_1|mux_1|mux_generate:0:mux_i|Mux1~1_combout\,
	datac => \inst2|inst1|alu0|mux|Mux1~0_combout\,
	datad => \inst2|inst3|DOUT[0]~2_combout\,
	combout => \inst2|inst1|alu0|mux|Mux1~1_combout\);

-- Location: LCCOMB_X14_Y30_N12
\inst|Mux3~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Mux3~0_combout\ = (\inst|Mux9~0_combout\ & ((\inst2|inst1|alu0|mux|Mux1~1_combout\) # ((\inst2|inst1|alu0|mux|Mux0~1_combout\) # (!\inst1|dcd|dcd_3|dcd|Mux7~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101010001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Mux9~0_combout\,
	datab => \inst2|inst1|alu0|mux|Mux1~1_combout\,
	datac => \inst1|dcd|dcd_3|dcd|Mux7~2_combout\,
	datad => \inst2|inst1|alu0|mux|Mux0~1_combout\,
	combout => \inst|Mux3~0_combout\);

-- Location: LCCOMB_X19_Y32_N8
\inst2|inst1|alu1|ZERO~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|inst1|alu1|ZERO~0_combout\ = (\inst2|inst1|alu1|mux|Mux1~1_combout\) # ((\inst2|inst1|alu1|mux|Mux3~1_combout\) # ((\inst2|inst1|alu1|mux|Mux2~1_combout\) # (\inst2|inst1|alu1|mux|Mux0~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|inst1|alu1|mux|Mux1~1_combout\,
	datab => \inst2|inst1|alu1|mux|Mux3~1_combout\,
	datac => \inst2|inst1|alu1|mux|Mux2~1_combout\,
	datad => \inst2|inst1|alu1|mux|Mux0~1_combout\,
	combout => \inst2|inst1|alu1|ZERO~0_combout\);

-- Location: LCCOMB_X13_Y30_N16
\inst2|inst1|alu2|ZERO~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|inst1|alu2|ZERO~0_combout\ = (\inst2|inst1|alu2|mux|Mux0~1_combout\) # ((\inst2|inst1|alu2|mux|Mux1~1_combout\) # ((\inst2|inst1|alu2|mux|Mux3~1_combout\) # (\inst2|inst1|alu2|mux|Mux2~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|inst1|alu2|mux|Mux0~1_combout\,
	datab => \inst2|inst1|alu2|mux|Mux1~1_combout\,
	datac => \inst2|inst1|alu2|mux|Mux3~1_combout\,
	datad => \inst2|inst1|alu2|mux|Mux2~1_combout\,
	combout => \inst2|inst1|alu2|ZERO~0_combout\);

-- Location: LCCOMB_X13_Y30_N14
\inst2|inst1|alu3|ZERO~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|inst1|alu3|ZERO~0_combout\ = (\inst2|inst1|alu3|mux|Mux0~1_combout\) # ((\inst2|inst1|alu3|mux|Mux2~1_combout\) # ((\inst2|inst1|alu3|mux|Mux3~1_combout\) # (\inst2|inst1|alu3|mux|Mux1~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|inst1|alu3|mux|Mux0~1_combout\,
	datab => \inst2|inst1|alu3|mux|Mux2~1_combout\,
	datac => \inst2|inst1|alu3|mux|Mux3~1_combout\,
	datad => \inst2|inst1|alu3|mux|Mux1~1_combout\,
	combout => \inst2|inst1|alu3|ZERO~0_combout\);

-- Location: LCCOMB_X14_Y30_N26
\inst|Mux3~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Mux3~1_combout\ = (\inst|Mux3~0_combout\ & (\inst2|inst1|alu1|ZERO~0_combout\ & (\inst2|inst1|alu2|ZERO~0_combout\ & \inst2|inst1|alu3|ZERO~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Mux3~0_combout\,
	datab => \inst2|inst1|alu1|ZERO~0_combout\,
	datac => \inst2|inst1|alu2|ZERO~0_combout\,
	datad => \inst2|inst1|alu3|ZERO~0_combout\,
	combout => \inst|Mux3~1_combout\);

-- Location: LCCOMB_X18_Y35_N26
\inst4|inst1|INS_OUT[9]~11\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|inst1|INS_OUT[9]~11_combout\ = (!\inst4|inst1|exception~2_combout\ & \inst4|inst1|data_out[9]~3_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst4|inst1|exception~2_combout\,
	datad => \inst4|inst1|data_out[9]~3_combout\,
	combout => \inst4|inst1|INS_OUT[9]~11_combout\);

-- Location: LCCOMB_X18_Y30_N24
\inst4|inst2|alu0|alu1|adder|C~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|inst2|alu0|alu1|adder|C~2_combout\ = (\inst4|inst2|alu0|alu0|adder|COUT~0_combout\ & (\inst4|inst|reg|reg_1|y\(5) & \inst4|inst|reg|reg_1|y\(4)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|inst2|alu0|alu0|adder|COUT~0_combout\,
	datac => \inst4|inst|reg|reg_1|y\(5),
	datad => \inst4|inst|reg|reg_1|y\(4),
	combout => \inst4|inst2|alu0|alu1|adder|C~2_combout\);

-- Location: LCCOMB_X18_Y30_N4
\inst4|inst3|add_2|C[2]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|inst3|add_2|C[2]~1_combout\ = (\inst4|inst1|INS_OUT[5]~6_combout\ & ((\inst4|inst3|add_2|C[1]~0_combout\) # (\inst4|inst|reg|reg_1|y\(5) $ (\inst4|inst2|alu0|alu1|adder|C~0_combout\)))) # (!\inst4|inst1|INS_OUT[5]~6_combout\ & 
-- (\inst4|inst3|add_2|C[1]~0_combout\ & (\inst4|inst|reg|reg_1|y\(5) $ (\inst4|inst2|alu0|alu1|adder|C~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011111000101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|inst1|INS_OUT[5]~6_combout\,
	datab => \inst4|inst|reg|reg_1|y\(5),
	datac => \inst4|inst2|alu0|alu1|adder|C~0_combout\,
	datad => \inst4|inst3|add_2|C[1]~0_combout\,
	combout => \inst4|inst3|add_2|C[2]~1_combout\);

-- Location: LCCOMB_X18_Y30_N0
\inst4|inst3|add_2|S[2]\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|inst3|add_2|S\(2) = \inst4|inst1|INS_OUT[5]~6_combout\ $ (\inst4|inst2|alu0|alu1|adder|C~2_combout\ $ (\inst4|inst3|add_2|C[2]~1_combout\ $ (\inst4|inst|reg|reg_1|y\(6))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|inst1|INS_OUT[5]~6_combout\,
	datab => \inst4|inst2|alu0|alu1|adder|C~2_combout\,
	datac => \inst4|inst3|add_2|C[2]~1_combout\,
	datad => \inst4|inst|reg|reg_1|y\(6),
	combout => \inst4|inst3|add_2|S\(2));

-- Location: LCCOMB_X17_Y34_N14
\inst4|inst7|OUT16B[6]~13\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|inst7|OUT16B[6]~13_combout\ = (\inst|Mux3~1_combout\ & (((\inst4|inst3|add_2|S\(2))))) # (!\inst|Mux3~1_combout\ & (\inst4|inst|reg|reg_1|y\(6) $ (((\inst4|inst2|alu0|alu1|adder|C~2_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110001011010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|inst|reg|reg_1|y\(6),
	datab => \inst4|inst3|add_2|S\(2),
	datac => \inst4|inst2|alu0|alu1|adder|C~2_combout\,
	datad => \inst|Mux3~1_combout\,
	combout => \inst4|inst7|OUT16B[6]~13_combout\);

-- Location: LCCOMB_X17_Y34_N22
\inst4|inst|to_pc[6]\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|inst|to_pc\(6) = (!\RST~input_o\ & ((\inst|Mux2~0_combout\ & ((\inst4|inst1|INS_OUT[5]~6_combout\))) # (!\inst|Mux2~0_combout\ & (\inst4|inst7|OUT16B[6]~13_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RST~input_o\,
	datab => \inst|Mux2~0_combout\,
	datac => \inst4|inst7|OUT16B[6]~13_combout\,
	datad => \inst4|inst1|INS_OUT[5]~6_combout\,
	combout => \inst4|inst|to_pc\(6));

-- Location: FF_X17_Y34_N23
\inst4|inst|reg|reg_1|y[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~input_o\,
	d => \inst4|inst|to_pc\(6),
	ena => \PCEN~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst4|inst|reg|reg_1|y\(6));

-- Location: LCCOMB_X18_Y33_N10
\inst2|inst|mux_2|mux_1|mux_generate:0:mux_i|Mux3~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|inst|mux_2|mux_1|mux_generate:0:mux_i|Mux3~6_combout\ = (!\inst4|inst1|exception~2_combout\ & \inst4|inst1|data_out[7]~10_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst4|inst1|exception~2_combout\,
	datad => \inst4|inst1|data_out[7]~10_combout\,
	combout => \inst2|inst|mux_2|mux_1|mux_generate:0:mux_i|Mux3~6_combout\);

-- Location: LCCOMB_X18_Y30_N14
\inst4|inst3|add_2|C[3]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|inst3|add_2|C[3]~2_combout\ = (\inst4|inst1|INS_OUT[5]~6_combout\ & ((\inst4|inst3|add_2|C[2]~1_combout\) # (\inst4|inst2|alu0|alu1|adder|C~2_combout\ $ (\inst4|inst|reg|reg_1|y\(6))))) # (!\inst4|inst1|INS_OUT[5]~6_combout\ & 
-- (\inst4|inst3|add_2|C[2]~1_combout\ & (\inst4|inst2|alu0|alu1|adder|C~2_combout\ $ (\inst4|inst|reg|reg_1|y\(6)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011001011101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|inst1|INS_OUT[5]~6_combout\,
	datab => \inst4|inst2|alu0|alu1|adder|C~2_combout\,
	datac => \inst4|inst3|add_2|C[2]~1_combout\,
	datad => \inst4|inst|reg|reg_1|y\(6),
	combout => \inst4|inst3|add_2|C[3]~2_combout\);

-- Location: LCCOMB_X19_Y34_N28
\inst4|inst2|alu0|alu1|adder|C~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|inst2|alu0|alu1|adder|C~1_combout\ = (\inst4|inst|reg|reg_1|y\(5) & (\inst4|inst|reg|reg_1|y\(6) & \inst4|inst2|alu0|alu1|adder|C~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|inst|reg|reg_1|y\(5),
	datac => \inst4|inst|reg|reg_1|y\(6),
	datad => \inst4|inst2|alu0|alu1|adder|C~0_combout\,
	combout => \inst4|inst2|alu0|alu1|adder|C~1_combout\);

-- Location: LCCOMB_X17_Y36_N16
\inst4|inst1|INS_OUT[6]~13\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|inst1|INS_OUT[6]~13_combout\ = (!\inst4|inst1|exception~2_combout\ & \inst4|inst1|data_out[6]~8_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst4|inst1|exception~2_combout\,
	datad => \inst4|inst1|data_out[6]~8_combout\,
	combout => \inst4|inst1|INS_OUT[6]~13_combout\);

-- Location: LCCOMB_X19_Y34_N30
\inst4|inst2|alu0|alu1|adder|S[3]\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|inst2|alu0|alu1|adder|S\(3) = \inst4|inst|reg|reg_1|y\(7) $ (((\inst4|inst|reg|reg_1|y\(5) & (\inst4|inst|reg|reg_1|y\(6) & \inst4|inst2|alu0|alu1|adder|C~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110110011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|inst|reg|reg_1|y\(5),
	datab => \inst4|inst|reg|reg_1|y\(7),
	datac => \inst4|inst|reg|reg_1|y\(6),
	datad => \inst4|inst2|alu0|alu1|adder|C~0_combout\,
	combout => \inst4|inst2|alu0|alu1|adder|S\(3));

-- Location: LCCOMB_X17_Y34_N12
\inst4|inst7|OUT16B[7]~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|inst7|OUT16B[7]~12_combout\ = \inst4|inst2|alu0|alu1|adder|S\(3) $ (((\inst|Mux3~1_combout\ & (\inst4|inst3|add_2|C[3]~2_combout\ $ (\inst4|inst1|INS_OUT[5]~6_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|inst3|add_2|C[3]~2_combout\,
	datab => \inst4|inst1|INS_OUT[5]~6_combout\,
	datac => \inst4|inst2|alu0|alu1|adder|S\(3),
	datad => \inst|Mux3~1_combout\,
	combout => \inst4|inst7|OUT16B[7]~12_combout\);

-- Location: LCCOMB_X17_Y34_N10
\inst4|inst|to_pc[7]\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|inst|to_pc\(7) = (!\RST~input_o\ & ((\inst|Mux2~0_combout\ & (\inst4|inst1|INS_OUT[6]~13_combout\)) # (!\inst|Mux2~0_combout\ & ((\inst4|inst7|OUT16B[7]~12_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100010101000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RST~input_o\,
	datab => \inst4|inst1|INS_OUT[6]~13_combout\,
	datac => \inst|Mux2~0_combout\,
	datad => \inst4|inst7|OUT16B[7]~12_combout\,
	combout => \inst4|inst|to_pc\(7));

-- Location: FF_X17_Y34_N11
\inst4|inst|reg|reg_1|y[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~input_o\,
	d => \inst4|inst|to_pc\(7),
	ena => \PCEN~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst4|inst|reg|reg_1|y\(7));

-- Location: LCCOMB_X19_Y34_N20
\inst4|inst3|add_2|C4~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|inst3|add_2|C4~0_combout\ = (\inst4|inst3|add_2|C[3]~2_combout\ & ((\inst4|inst1|INS_OUT[5]~6_combout\) # (\inst4|inst2|alu0|alu1|adder|C~1_combout\ $ (\inst4|inst|reg|reg_1|y\(7))))) # (!\inst4|inst3|add_2|C[3]~2_combout\ & 
-- (\inst4|inst1|INS_OUT[5]~6_combout\ & (\inst4|inst2|alu0|alu1|adder|C~1_combout\ $ (\inst4|inst|reg|reg_1|y\(7)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011001011101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|inst3|add_2|C[3]~2_combout\,
	datab => \inst4|inst2|alu0|alu1|adder|C~1_combout\,
	datac => \inst4|inst1|INS_OUT[5]~6_combout\,
	datad => \inst4|inst|reg|reg_1|y\(7),
	combout => \inst4|inst3|add_2|C4~0_combout\);

-- Location: LCCOMB_X19_Y34_N24
\inst4|inst2|alu0|alu2|adder|S[0]\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|inst2|alu0|alu2|adder|S\(0) = \inst4|inst|reg|reg_2|y\(0) $ (((\inst4|inst|reg|reg_1|y\(6) & (\inst4|inst2|alu0|alu1|adder|C~2_combout\ & \inst4|inst|reg|reg_1|y\(7)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110110011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|inst|reg|reg_1|y\(6),
	datab => \inst4|inst|reg|reg_2|y\(0),
	datac => \inst4|inst2|alu0|alu1|adder|C~2_combout\,
	datad => \inst4|inst|reg|reg_1|y\(7),
	combout => \inst4|inst2|alu0|alu2|adder|S\(0));

-- Location: LCCOMB_X17_Y34_N16
\inst4|inst7|OUT16B[8]~11\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|inst7|OUT16B[8]~11_combout\ = \inst4|inst2|alu0|alu2|adder|S\(0) $ (((\inst|Mux3~1_combout\ & (\inst4|inst3|add_2|C4~0_combout\ $ (\inst4|inst1|INS_OUT[5]~6_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|inst3|add_2|C4~0_combout\,
	datab => \inst4|inst2|alu0|alu2|adder|S\(0),
	datac => \inst4|inst1|INS_OUT[5]~6_combout\,
	datad => \inst|Mux3~1_combout\,
	combout => \inst4|inst7|OUT16B[8]~11_combout\);

-- Location: LCCOMB_X17_Y34_N4
\inst4|inst|to_pc[8]\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|inst|to_pc\(8) = (!\RST~input_o\ & ((\inst|Mux2~0_combout\ & (\inst2|inst|mux_2|mux_1|mux_generate:0:mux_i|Mux3~6_combout\)) # (!\inst|Mux2~0_combout\ & ((\inst4|inst7|OUT16B[8]~11_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100010101000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RST~input_o\,
	datab => \inst2|inst|mux_2|mux_1|mux_generate:0:mux_i|Mux3~6_combout\,
	datac => \inst|Mux2~0_combout\,
	datad => \inst4|inst7|OUT16B[8]~11_combout\,
	combout => \inst4|inst|to_pc\(8));

-- Location: FF_X17_Y34_N5
\inst4|inst|reg|reg_2|y[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~input_o\,
	d => \inst4|inst|to_pc\(8),
	ena => \PCEN~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst4|inst|reg|reg_2|y\(0));

-- Location: LCCOMB_X19_Y34_N12
\inst4|inst2|alu0|alu2|adder|C~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|inst2|alu0|alu2|adder|C~1_combout\ = (\inst4|inst|reg|reg_1|y\(6) & (\inst4|inst|reg|reg_2|y\(0) & (\inst4|inst2|alu0|alu1|adder|C~2_combout\ & \inst4|inst|reg|reg_1|y\(7))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|inst|reg|reg_1|y\(6),
	datab => \inst4|inst|reg|reg_2|y\(0),
	datac => \inst4|inst2|alu0|alu1|adder|C~2_combout\,
	datad => \inst4|inst|reg|reg_1|y\(7),
	combout => \inst4|inst2|alu0|alu2|adder|C~1_combout\);

-- Location: LCCOMB_X18_Y32_N26
\inst4|inst1|INS_OUT[8]~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|inst1|INS_OUT[8]~12_combout\ = (\inst4|inst1|dec|dcd_0|D[4]~2_combout\ & !\inst4|inst1|exception~2_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst4|inst1|dec|dcd_0|D[4]~2_combout\,
	datad => \inst4|inst1|exception~2_combout\,
	combout => \inst4|inst1|INS_OUT[8]~12_combout\);

-- Location: LCCOMB_X19_Y34_N10
\inst4|inst3|add_3|C[1]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|inst3|add_3|C[1]~0_combout\ = (\inst4|inst2|alu0|alu1|adder|S\(3) & ((\inst4|inst1|INS_OUT[5]~6_combout\) # ((\inst4|inst2|alu0|alu2|adder|S\(0) & \inst4|inst3|add_2|C[3]~2_combout\)))) # (!\inst4|inst2|alu0|alu1|adder|S\(3) & 
-- (\inst4|inst1|INS_OUT[5]~6_combout\ & ((\inst4|inst2|alu0|alu2|adder|S\(0)) # (\inst4|inst3|add_2|C[3]~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100011100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|inst2|alu0|alu1|adder|S\(3),
	datab => \inst4|inst2|alu0|alu2|adder|S\(0),
	datac => \inst4|inst1|INS_OUT[5]~6_combout\,
	datad => \inst4|inst3|add_2|C[3]~2_combout\,
	combout => \inst4|inst3|add_3|C[1]~0_combout\);

-- Location: LCCOMB_X17_Y34_N28
\inst4|inst3|add_3|S[1]\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|inst3|add_3|S\(1) = \inst4|inst2|alu0|alu2|adder|C~1_combout\ $ (\inst4|inst1|INS_OUT[5]~6_combout\ $ (\inst4|inst|reg|reg_2|y\(1) $ (\inst4|inst3|add_3|C[1]~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|inst2|alu0|alu2|adder|C~1_combout\,
	datab => \inst4|inst1|INS_OUT[5]~6_combout\,
	datac => \inst4|inst|reg|reg_2|y\(1),
	datad => \inst4|inst3|add_3|C[1]~0_combout\,
	combout => \inst4|inst3|add_3|S\(1));

-- Location: LCCOMB_X17_Y34_N0
\inst4|inst7|OUT16B[9]~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|inst7|OUT16B[9]~10_combout\ = (\inst|Mux3~1_combout\ & (((\inst4|inst3|add_3|S\(1))))) # (!\inst|Mux3~1_combout\ & (\inst4|inst2|alu0|alu2|adder|C~1_combout\ $ (((\inst4|inst|reg|reg_2|y\(1))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110001011010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|inst2|alu0|alu2|adder|C~1_combout\,
	datab => \inst4|inst3|add_3|S\(1),
	datac => \inst4|inst|reg|reg_2|y\(1),
	datad => \inst|Mux3~1_combout\,
	combout => \inst4|inst7|OUT16B[9]~10_combout\);

-- Location: LCCOMB_X17_Y34_N6
\inst4|inst|to_pc[9]\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|inst|to_pc\(9) = (!\RST~input_o\ & ((\inst|Mux2~0_combout\ & (\inst4|inst1|INS_OUT[8]~12_combout\)) # (!\inst|Mux2~0_combout\ & ((\inst4|inst7|OUT16B[9]~10_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100010101000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RST~input_o\,
	datab => \inst4|inst1|INS_OUT[8]~12_combout\,
	datac => \inst|Mux2~0_combout\,
	datad => \inst4|inst7|OUT16B[9]~10_combout\,
	combout => \inst4|inst|to_pc\(9));

-- Location: FF_X17_Y34_N7
\inst4|inst|reg|reg_2|y[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~input_o\,
	d => \inst4|inst|to_pc\(9),
	ena => \PCEN~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst4|inst|reg|reg_2|y\(1));

-- Location: LCCOMB_X19_Y34_N8
\inst4|inst3|add_3|C[2]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|inst3|add_3|C[2]~1_combout\ = (\inst4|inst1|INS_OUT[5]~6_combout\ & ((\inst4|inst3|add_3|C[1]~0_combout\) # (\inst4|inst2|alu0|alu2|adder|C~1_combout\ $ (\inst4|inst|reg|reg_2|y\(1))))) # (!\inst4|inst1|INS_OUT[5]~6_combout\ & 
-- (\inst4|inst3|add_3|C[1]~0_combout\ & (\inst4|inst2|alu0|alu2|adder|C~1_combout\ $ (\inst4|inst|reg|reg_2|y\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101111001001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|inst2|alu0|alu2|adder|C~1_combout\,
	datab => \inst4|inst1|INS_OUT[5]~6_combout\,
	datac => \inst4|inst|reg|reg_2|y\(1),
	datad => \inst4|inst3|add_3|C[1]~0_combout\,
	combout => \inst4|inst3|add_3|C[2]~1_combout\);

-- Location: LCCOMB_X19_Y34_N18
\inst4|inst2|alu0|alu2|adder|C~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|inst2|alu0|alu2|adder|C~0_combout\ = (\inst4|inst2|alu0|alu1|adder|C~1_combout\ & (\inst4|inst|reg|reg_1|y\(7) & (\inst4|inst|reg|reg_2|y\(1) & \inst4|inst|reg|reg_2|y\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|inst2|alu0|alu1|adder|C~1_combout\,
	datab => \inst4|inst|reg|reg_1|y\(7),
	datac => \inst4|inst|reg|reg_2|y\(1),
	datad => \inst4|inst|reg|reg_2|y\(0),
	combout => \inst4|inst2|alu0|alu2|adder|C~0_combout\);

-- Location: LCCOMB_X18_Y34_N8
\inst4|inst3|add_3|S[2]\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|inst3|add_3|S\(2) = \inst4|inst1|INS_OUT[5]~6_combout\ $ (\inst4|inst3|add_3|C[2]~1_combout\ $ (\inst4|inst|reg|reg_2|y\(2) $ (\inst4|inst2|alu0|alu2|adder|C~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|inst1|INS_OUT[5]~6_combout\,
	datab => \inst4|inst3|add_3|C[2]~1_combout\,
	datac => \inst4|inst|reg|reg_2|y\(2),
	datad => \inst4|inst2|alu0|alu2|adder|C~0_combout\,
	combout => \inst4|inst3|add_3|S\(2));

-- Location: LCCOMB_X18_Y34_N18
\inst4|inst7|OUT16B[10]~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|inst7|OUT16B[10]~9_combout\ = (\inst|Mux3~1_combout\ & (((\inst4|inst3|add_3|S\(2))))) # (!\inst|Mux3~1_combout\ & (\inst4|inst|reg|reg_2|y\(2) $ (((\inst4|inst2|alu0|alu2|adder|C~0_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011000111100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Mux3~1_combout\,
	datab => \inst4|inst|reg|reg_2|y\(2),
	datac => \inst4|inst3|add_3|S\(2),
	datad => \inst4|inst2|alu0|alu2|adder|C~0_combout\,
	combout => \inst4|inst7|OUT16B[10]~9_combout\);

-- Location: LCCOMB_X18_Y34_N26
\inst4|inst|to_pc[10]\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|inst|to_pc\(10) = (!\RST~input_o\ & ((\inst|Mux2~0_combout\ & (\inst4|inst1|INS_OUT[9]~11_combout\)) # (!\inst|Mux2~0_combout\ & ((\inst4|inst7|OUT16B[10]~9_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010001100100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|inst1|INS_OUT[9]~11_combout\,
	datab => \RST~input_o\,
	datac => \inst|Mux2~0_combout\,
	datad => \inst4|inst7|OUT16B[10]~9_combout\,
	combout => \inst4|inst|to_pc\(10));

-- Location: FF_X18_Y34_N27
\inst4|inst|reg|reg_2|y[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~input_o\,
	d => \inst4|inst|to_pc\(10),
	ena => \PCEN~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst4|inst|reg|reg_2|y\(2));

-- Location: LCCOMB_X18_Y34_N14
\inst4|inst2|alu0|alu2|adder|S[3]\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|inst2|alu0|alu2|adder|S\(3) = \inst4|inst|reg|reg_2|y\(3) $ (((\inst4|inst|reg|reg_2|y\(2) & \inst4|inst2|alu0|alu2|adder|C~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst4|inst|reg|reg_2|y\(3),
	datac => \inst4|inst|reg|reg_2|y\(2),
	datad => \inst4|inst2|alu0|alu2|adder|C~0_combout\,
	combout => \inst4|inst2|alu0|alu2|adder|S\(3));

-- Location: LCCOMB_X18_Y34_N20
\inst4|inst3|add_3|C[3]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|inst3|add_3|C[3]~2_combout\ = (\inst4|inst1|INS_OUT[5]~6_combout\ & ((\inst4|inst3|add_3|C[2]~1_combout\) # (\inst4|inst|reg|reg_2|y\(2) $ (\inst4|inst2|alu0|alu2|adder|C~0_combout\)))) # (!\inst4|inst1|INS_OUT[5]~6_combout\ & 
-- (\inst4|inst3|add_3|C[2]~1_combout\ & (\inst4|inst|reg|reg_2|y\(2) $ (\inst4|inst2|alu0|alu2|adder|C~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000111011101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|inst1|INS_OUT[5]~6_combout\,
	datab => \inst4|inst3|add_3|C[2]~1_combout\,
	datac => \inst4|inst|reg|reg_2|y\(2),
	datad => \inst4|inst2|alu0|alu2|adder|C~0_combout\,
	combout => \inst4|inst3|add_3|C[3]~2_combout\);

-- Location: LCCOMB_X18_Y34_N0
\inst4|inst3|add_3|S[3]\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|inst3|add_3|S\(3) = \inst4|inst2|alu0|alu2|adder|S\(3) $ (\inst4|inst1|INS_OUT[5]~6_combout\ $ (\inst4|inst3|add_3|C[3]~2_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst4|inst2|alu0|alu2|adder|S\(3),
	datac => \inst4|inst1|INS_OUT[5]~6_combout\,
	datad => \inst4|inst3|add_3|C[3]~2_combout\,
	combout => \inst4|inst3|add_3|S\(3));

-- Location: LCCOMB_X18_Y34_N6
\inst4|JUMPMUX|OUT16B[11]~15\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|JUMPMUX|OUT16B[11]~15_combout\ = (!\inst|Mux2~0_combout\ & ((\inst|Mux3~1_combout\ & ((\inst4|inst3|add_3|S\(3)))) # (!\inst|Mux3~1_combout\ & (\inst4|inst2|alu0|alu2|adder|S\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Mux3~1_combout\,
	datab => \inst|Mux2~0_combout\,
	datac => \inst4|inst2|alu0|alu2|adder|S\(3),
	datad => \inst4|inst3|add_3|S\(3),
	combout => \inst4|JUMPMUX|OUT16B[11]~15_combout\);

-- Location: LCCOMB_X18_Y34_N24
\inst4|inst|to_pc[11]\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|inst|to_pc\(11) = (!\RST~input_o\ & \inst4|JUMPMUX|OUT16B[11]~15_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \RST~input_o\,
	datad => \inst4|JUMPMUX|OUT16B[11]~15_combout\,
	combout => \inst4|inst|to_pc\(11));

-- Location: FF_X18_Y34_N25
\inst4|inst|reg|reg_2|y[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~input_o\,
	d => \inst4|inst|to_pc\(11),
	ena => \PCEN~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst4|inst|reg|reg_2|y\(3));

-- Location: LCCOMB_X18_Y34_N4
\inst4|inst2|alu0|alu3|adder|S[0]\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|inst2|alu0|alu3|adder|S\(0) = \inst4|inst|reg|reg_2|y\(4) $ (((\inst4|inst|reg|reg_2|y\(3) & (\inst4|inst|reg|reg_2|y\(2) & \inst4|inst2|alu0|alu2|adder|C~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110110011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|inst|reg|reg_2|y\(3),
	datab => \inst4|inst|reg|reg_2|y\(4),
	datac => \inst4|inst|reg|reg_2|y\(2),
	datad => \inst4|inst2|alu0|alu2|adder|C~0_combout\,
	combout => \inst4|inst2|alu0|alu3|adder|S\(0));

-- Location: LCCOMB_X19_Y34_N6
\inst4|inst3|add_4|S[0]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|inst3|add_4|S[0]~0_combout\ = \inst4|inst|reg|reg_2|y\(3) $ (((\inst4|inst2|alu0|alu2|adder|C~1_combout\ & (\inst4|inst|reg|reg_2|y\(1) & \inst4|inst|reg|reg_2|y\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110110011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|inst2|alu0|alu2|adder|C~1_combout\,
	datab => \inst4|inst|reg|reg_2|y\(3),
	datac => \inst4|inst|reg|reg_2|y\(1),
	datad => \inst4|inst|reg|reg_2|y\(2),
	combout => \inst4|inst3|add_4|S[0]~0_combout\);

-- Location: LCCOMB_X17_Y30_N24
\inst4|inst3|add_4|S[0]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|inst3|add_4|S[0]~1_combout\ = \inst4|inst2|alu0|alu3|adder|S\(0) $ (((\inst4|inst3|add_3|C[3]~2_combout\ & (\inst4|inst3|add_4|S[0]~0_combout\ & !\inst4|inst1|INS_OUT[5]~6_combout\)) # (!\inst4|inst3|add_3|C[3]~2_combout\ & 
-- (!\inst4|inst3|add_4|S[0]~0_combout\ & \inst4|inst1|INS_OUT[5]~6_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010100101101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|inst2|alu0|alu3|adder|S\(0),
	datab => \inst4|inst3|add_3|C[3]~2_combout\,
	datac => \inst4|inst3|add_4|S[0]~0_combout\,
	datad => \inst4|inst1|INS_OUT[5]~6_combout\,
	combout => \inst4|inst3|add_4|S[0]~1_combout\);

-- Location: LCCOMB_X18_Y34_N10
\inst4|JUMPMUX|OUT16B[12]~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|JUMPMUX|OUT16B[12]~14_combout\ = (!\inst|Mux2~0_combout\ & ((\inst|Mux3~1_combout\ & ((\inst4|inst3|add_4|S[0]~1_combout\))) # (!\inst|Mux3~1_combout\ & (\inst4|inst2|alu0|alu3|adder|S\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Mux3~1_combout\,
	datab => \inst|Mux2~0_combout\,
	datac => \inst4|inst2|alu0|alu3|adder|S\(0),
	datad => \inst4|inst3|add_4|S[0]~1_combout\,
	combout => \inst4|JUMPMUX|OUT16B[12]~14_combout\);

-- Location: LCCOMB_X18_Y34_N16
\inst4|inst|to_pc[12]\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|inst|to_pc\(12) = (!\RST~input_o\ & \inst4|JUMPMUX|OUT16B[12]~14_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \RST~input_o\,
	datad => \inst4|JUMPMUX|OUT16B[12]~14_combout\,
	combout => \inst4|inst|to_pc\(12));

-- Location: FF_X18_Y34_N17
\inst4|inst|reg|reg_2|y[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~input_o\,
	d => \inst4|inst|to_pc\(12),
	ena => \PCEN~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst4|inst|reg|reg_2|y\(4));

-- Location: LCCOMB_X19_Y34_N0
\inst4|inst2|alu0|alu3|adder|C~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|inst2|alu0|alu3|adder|C~0_combout\ = (\inst4|inst|reg|reg_2|y\(4) & (\inst4|inst2|alu0|alu2|adder|C~0_combout\ & (\inst4|inst|reg|reg_2|y\(3) & \inst4|inst|reg|reg_2|y\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|inst|reg|reg_2|y\(4),
	datab => \inst4|inst2|alu0|alu2|adder|C~0_combout\,
	datac => \inst4|inst|reg|reg_2|y\(3),
	datad => \inst4|inst|reg|reg_2|y\(2),
	combout => \inst4|inst2|alu0|alu3|adder|C~0_combout\);

-- Location: LCCOMB_X16_Y34_N8
\inst4|inst2|alu0|alu3|adder|S[1]\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|inst2|alu0|alu3|adder|S\(1) = \inst4|inst2|alu0|alu3|adder|C~0_combout\ $ (\inst4|inst|reg|reg_2|y\(5))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|inst2|alu0|alu3|adder|C~0_combout\,
	datad => \inst4|inst|reg|reg_2|y\(5),
	combout => \inst4|inst2|alu0|alu3|adder|S\(1));

-- Location: LCCOMB_X17_Y30_N14
\inst4|inst3|add_4|C[1]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|inst3|add_4|C[1]~0_combout\ = (\inst4|inst2|alu0|alu3|adder|S\(0) & ((\inst4|inst1|INS_OUT[5]~6_combout\) # ((\inst4|inst2|alu0|alu2|adder|S\(3) & \inst4|inst3|add_3|C[3]~2_combout\)))) # (!\inst4|inst2|alu0|alu3|adder|S\(0) & 
-- (\inst4|inst1|INS_OUT[5]~6_combout\ & ((\inst4|inst2|alu0|alu2|adder|S\(3)) # (\inst4|inst3|add_3|C[3]~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110011001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|inst2|alu0|alu3|adder|S\(0),
	datab => \inst4|inst1|INS_OUT[5]~6_combout\,
	datac => \inst4|inst2|alu0|alu2|adder|S\(3),
	datad => \inst4|inst3|add_3|C[3]~2_combout\,
	combout => \inst4|inst3|add_4|C[1]~0_combout\);

-- Location: LCCOMB_X18_Y33_N0
\inst4|inst3|add_4|S[1]\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|inst3|add_4|S\(1) = \inst4|inst2|alu0|alu3|adder|C~0_combout\ $ (\inst4|inst1|INS_OUT[5]~6_combout\ $ (\inst4|inst|reg|reg_2|y\(5) $ (\inst4|inst3|add_4|C[1]~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|inst2|alu0|alu3|adder|C~0_combout\,
	datab => \inst4|inst1|INS_OUT[5]~6_combout\,
	datac => \inst4|inst|reg|reg_2|y\(5),
	datad => \inst4|inst3|add_4|C[1]~0_combout\,
	combout => \inst4|inst3|add_4|S\(1));

-- Location: LCCOMB_X18_Y34_N22
\inst4|inst|to_pc[13]\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|inst|to_pc\(13) = (!\RST~input_o\ & ((\inst|Mux3~1_combout\ & ((\inst4|inst3|add_4|S\(1)))) # (!\inst|Mux3~1_combout\ & (\inst4|inst2|alu0|alu3|adder|S\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001000000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|inst2|alu0|alu3|adder|S\(1),
	datab => \RST~input_o\,
	datac => \inst|Mux3~1_combout\,
	datad => \inst4|inst3|add_4|S\(1),
	combout => \inst4|inst|to_pc\(13));

-- Location: FF_X18_Y34_N23
\inst4|inst|reg|reg_2|y[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~input_o\,
	d => \inst4|inst|to_pc\(13),
	ena => \PCEN~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst4|inst|reg|reg_2|y\(5));

-- Location: LCCOMB_X16_Y34_N24
\inst4|inst2|alu0|alu3|adder|S[2]\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|inst2|alu0|alu3|adder|S\(2) = \inst4|inst|reg|reg_2|y\(6) $ (((\inst4|inst|reg|reg_2|y\(5) & \inst4|inst2|alu0|alu3|adder|C~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|inst|reg|reg_2|y\(6),
	datab => \inst4|inst|reg|reg_2|y\(5),
	datad => \inst4|inst2|alu0|alu3|adder|C~0_combout\,
	combout => \inst4|inst2|alu0|alu3|adder|S\(2));

-- Location: LCCOMB_X19_Y34_N26
\inst4|inst2|alu0|alu3|adder|C~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|inst2|alu0|alu3|adder|C~1_combout\ = (\inst4|inst|reg|reg_2|y\(5) & \inst4|inst2|alu0|alu3|adder|C~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst4|inst|reg|reg_2|y\(5),
	datad => \inst4|inst2|alu0|alu3|adder|C~0_combout\,
	combout => \inst4|inst2|alu0|alu3|adder|C~1_combout\);

-- Location: LCCOMB_X18_Y34_N30
\inst4|inst3|add_4|C[2]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|inst3|add_4|C[2]~1_combout\ = (\inst4|inst1|INS_OUT[5]~6_combout\ & ((\inst4|inst3|add_4|C[1]~0_combout\) # (\inst4|inst|reg|reg_2|y\(5) $ (\inst4|inst2|alu0|alu3|adder|C~0_combout\)))) # (!\inst4|inst1|INS_OUT[5]~6_combout\ & 
-- (\inst4|inst3|add_4|C[1]~0_combout\ & (\inst4|inst|reg|reg_2|y\(5) $ (\inst4|inst2|alu0|alu3|adder|C~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111011001100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|inst|reg|reg_2|y\(5),
	datab => \inst4|inst2|alu0|alu3|adder|C~0_combout\,
	datac => \inst4|inst1|INS_OUT[5]~6_combout\,
	datad => \inst4|inst3|add_4|C[1]~0_combout\,
	combout => \inst4|inst3|add_4|C[2]~1_combout\);

-- Location: LCCOMB_X18_Y34_N12
\inst4|inst3|add_4|S[2]\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|inst3|add_4|S\(2) = \inst4|inst1|INS_OUT[5]~6_combout\ $ (\inst4|inst2|alu0|alu3|adder|C~1_combout\ $ (\inst4|inst3|add_4|C[2]~1_combout\ $ (\inst4|inst|reg|reg_2|y\(6))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|inst1|INS_OUT[5]~6_combout\,
	datab => \inst4|inst2|alu0|alu3|adder|C~1_combout\,
	datac => \inst4|inst3|add_4|C[2]~1_combout\,
	datad => \inst4|inst|reg|reg_2|y\(6),
	combout => \inst4|inst3|add_4|S\(2));

-- Location: LCCOMB_X17_Y34_N18
\inst4|inst|to_pc[14]\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|inst|to_pc\(14) = (!\RST~input_o\ & ((\inst|Mux3~1_combout\ & ((\inst4|inst3|add_4|S\(2)))) # (!\inst|Mux3~1_combout\ & (\inst4|inst2|alu0|alu3|adder|S\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|inst2|alu0|alu3|adder|S\(2),
	datab => \inst4|inst3|add_4|S\(2),
	datac => \RST~input_o\,
	datad => \inst|Mux3~1_combout\,
	combout => \inst4|inst|to_pc\(14));

-- Location: FF_X17_Y34_N19
\inst4|inst|reg|reg_2|y[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~input_o\,
	d => \inst4|inst|to_pc\(14),
	ena => \PCEN~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst4|inst|reg|reg_2|y\(6));

-- Location: LCCOMB_X16_Y34_N2
\inst4|inst2|alu0|alu3|adder|S[3]\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|inst2|alu0|alu3|adder|S\(3) = \inst4|inst|reg|reg_2|y\(7) $ (((\inst4|inst2|alu0|alu3|adder|C~0_combout\ & (\inst4|inst|reg|reg_2|y\(6) & \inst4|inst|reg|reg_2|y\(5)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110110011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|inst2|alu0|alu3|adder|C~0_combout\,
	datab => \inst4|inst|reg|reg_2|y\(7),
	datac => \inst4|inst|reg|reg_2|y\(6),
	datad => \inst4|inst|reg|reg_2|y\(5),
	combout => \inst4|inst2|alu0|alu3|adder|S\(3));

-- Location: LCCOMB_X18_Y34_N2
\inst4|inst3|add_4|C[3]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|inst3|add_4|C[3]~2_combout\ = (\inst4|inst1|INS_OUT[5]~6_combout\ & ((\inst4|inst3|add_4|C[2]~1_combout\) # (\inst4|inst2|alu0|alu3|adder|C~1_combout\ $ (\inst4|inst|reg|reg_2|y\(6))))) # (!\inst4|inst1|INS_OUT[5]~6_combout\ & 
-- (\inst4|inst3|add_4|C[2]~1_combout\ & (\inst4|inst2|alu0|alu3|adder|C~1_combout\ $ (\inst4|inst|reg|reg_2|y\(6)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011001011101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|inst1|INS_OUT[5]~6_combout\,
	datab => \inst4|inst2|alu0|alu3|adder|C~1_combout\,
	datac => \inst4|inst3|add_4|C[2]~1_combout\,
	datad => \inst4|inst|reg|reg_2|y\(6),
	combout => \inst4|inst3|add_4|C[3]~2_combout\);

-- Location: LCCOMB_X17_Y34_N2
\inst4|inst3|add_4|S[3]\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|inst3|add_4|S\(3) = \inst4|inst3|add_4|C[3]~2_combout\ $ (\inst4|inst1|INS_OUT[5]~6_combout\ $ (\inst4|inst2|alu0|alu3|adder|S\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010101011010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|inst3|add_4|C[3]~2_combout\,
	datac => \inst4|inst1|INS_OUT[5]~6_combout\,
	datad => \inst4|inst2|alu0|alu3|adder|S\(3),
	combout => \inst4|inst3|add_4|S\(3));

-- Location: LCCOMB_X17_Y34_N26
\inst4|inst|to_pc[15]\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|inst|to_pc\(15) = (!\RST~input_o\ & ((\inst|Mux3~1_combout\ & ((\inst4|inst3|add_4|S\(3)))) # (!\inst|Mux3~1_combout\ & (\inst4|inst2|alu0|alu3|adder|S\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|inst2|alu0|alu3|adder|S\(3),
	datab => \inst4|inst3|add_4|S\(3),
	datac => \RST~input_o\,
	datad => \inst|Mux3~1_combout\,
	combout => \inst4|inst|to_pc\(15));

-- Location: FF_X17_Y34_N27
\inst4|inst|reg|reg_2|y[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~input_o\,
	d => \inst4|inst|to_pc\(15),
	ena => \PCEN~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst4|inst|reg|reg_2|y\(7));

-- Location: LCCOMB_X17_Y34_N8
\inst4|inst1|exception~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|inst1|exception~0_combout\ = (\inst4|inst|reg|reg_2|y\(1)) # ((\inst4|inst|reg|reg_2|y\(0)) # ((\inst4|inst|reg|reg_1|y\(6)) # (\inst4|inst|reg|reg_1|y\(7))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|inst|reg|reg_2|y\(1),
	datab => \inst4|inst|reg|reg_2|y\(0),
	datac => \inst4|inst|reg|reg_1|y\(6),
	datad => \inst4|inst|reg|reg_1|y\(7),
	combout => \inst4|inst1|exception~0_combout\);

-- Location: LCCOMB_X18_Y34_N28
\inst4|inst1|exception~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|inst1|exception~1_combout\ = (\inst4|inst|reg|reg_2|y\(5)) # ((\inst4|inst|reg|reg_2|y\(3)) # ((\inst4|inst|reg|reg_2|y\(2)) # (\inst4|inst|reg|reg_2|y\(4))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|inst|reg|reg_2|y\(5),
	datab => \inst4|inst|reg|reg_2|y\(3),
	datac => \inst4|inst|reg|reg_2|y\(2),
	datad => \inst4|inst|reg|reg_2|y\(4),
	combout => \inst4|inst1|exception~1_combout\);

-- Location: LCCOMB_X17_Y34_N30
\inst4|inst1|exception~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|inst1|exception~2_combout\ = (\inst4|inst|reg|reg_2|y\(7)) # ((\inst4|inst|reg|reg_2|y\(6)) # ((\inst4|inst1|exception~0_combout\) # (\inst4|inst1|exception~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|inst|reg|reg_2|y\(7),
	datab => \inst4|inst|reg|reg_2|y\(6),
	datac => \inst4|inst1|exception~0_combout\,
	datad => \inst4|inst1|exception~1_combout\,
	combout => \inst4|inst1|exception~2_combout\);

-- Location: LCCOMB_X16_Y32_N22
\inst4|inst1|INS_OUT[0]~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|inst1|INS_OUT[0]~10_combout\ = (\inst4|inst1|dec|dcd_0|D[5]~1_combout\ & (!\inst4|inst1|exception~2_combout\ & (\inst4|inst1|data_out[7]~0_combout\ & \inst4|inst|reg|reg_1|y\(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|inst1|dec|dcd_0|D[5]~1_combout\,
	datab => \inst4|inst1|exception~2_combout\,
	datac => \inst4|inst1|data_out[7]~0_combout\,
	datad => \inst4|inst|reg|reg_1|y\(3),
	combout => \inst4|inst1|INS_OUT[0]~10_combout\);

-- Location: LCCOMB_X17_Y30_N2
\inst4|JUMPMUX|OUT16B[0]~19\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|JUMPMUX|OUT16B[0]~19_combout\ = (!\inst|Mux2~0_combout\ & (\inst4|inst|reg|reg_1|y\(0) $ (((\inst4|inst1|INS_OUT[0]~10_combout\ & \inst|Mux3~1_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001001100100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|inst1|INS_OUT[0]~10_combout\,
	datab => \inst|Mux2~0_combout\,
	datac => \inst|Mux3~1_combout\,
	datad => \inst4|inst|reg|reg_1|y\(0),
	combout => \inst4|JUMPMUX|OUT16B[0]~19_combout\);

-- Location: LCCOMB_X17_Y30_N28
\inst4|inst|to_pc[0]\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|inst|to_pc\(0) = (\inst4|JUMPMUX|OUT16B[0]~19_combout\ & !\RST~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst4|JUMPMUX|OUT16B[0]~19_combout\,
	datad => \RST~input_o\,
	combout => \inst4|inst|to_pc\(0));

-- Location: FF_X17_Y30_N29
\inst4|inst|reg|reg_1|y[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \inst4|inst|to_pc\(0),
	ena => \PCEN~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst4|inst|reg|reg_1|y\(0));

-- Location: LCCOMB_X16_Y33_N28
\inst4|inst3|add_1|C~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|inst3|add_1|C~0_combout\ = (\inst4|inst|reg|reg_1|y\(0) & (\inst4|inst1|INS_OUT[0]~10_combout\ & (\inst4|inst|reg|reg_1|y\(1) $ (!\inst4|inst1|INS_OUT[1]~9_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000001000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|inst|reg|reg_1|y\(0),
	datab => \inst4|inst|reg|reg_1|y\(1),
	datac => \inst4|inst1|INS_OUT[1]~9_combout\,
	datad => \inst4|inst1|INS_OUT[0]~10_combout\,
	combout => \inst4|inst3|add_1|C~0_combout\);

-- Location: LCCOMB_X16_Y33_N22
\inst4|inst3|add_1|S[2]\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|inst3|add_1|S\(2) = \inst4|inst2|alu0|alu0|adder|S\(2) $ (\inst4|inst1|INS_OUT[2]~14_combout\ $ (((\inst4|inst3|add_1|C~0_combout\) # (\inst4|inst3|add_1|G\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000100011110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|inst3|add_1|C~0_combout\,
	datab => \inst4|inst3|add_1|G\(1),
	datac => \inst4|inst2|alu0|alu0|adder|S\(2),
	datad => \inst4|inst1|INS_OUT[2]~14_combout\,
	combout => \inst4|inst3|add_1|S\(2));

-- Location: LCCOMB_X16_Y33_N16
\inst4|inst7|OUT16B[2]~22\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|inst7|OUT16B[2]~22_combout\ = (\inst|Mux3~1_combout\ & (((\inst4|inst3|add_1|S\(2))))) # (!\inst|Mux3~1_combout\ & (\inst4|inst|reg|reg_1|y\(1) $ (((\inst4|inst|reg|reg_1|y\(2))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110001011010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|inst|reg|reg_1|y\(1),
	datab => \inst4|inst3|add_1|S\(2),
	datac => \inst4|inst|reg|reg_1|y\(2),
	datad => \inst|Mux3~1_combout\,
	combout => \inst4|inst7|OUT16B[2]~22_combout\);

-- Location: LCCOMB_X17_Y33_N8
\inst4|inst|to_pc[2]\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|inst|to_pc\(2) = (!\RST~input_o\ & ((\inst|Mux2~0_combout\ & ((\inst4|inst1|INS_OUT[1]~9_combout\))) # (!\inst|Mux2~0_combout\ & (\inst4|inst7|OUT16B[2]~22_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001000000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|inst7|OUT16B[2]~22_combout\,
	datab => \RST~input_o\,
	datac => \inst|Mux2~0_combout\,
	datad => \inst4|inst1|INS_OUT[1]~9_combout\,
	combout => \inst4|inst|to_pc\(2));

-- Location: FF_X17_Y33_N9
\inst4|inst|reg|reg_1|y[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~input_o\,
	d => \inst4|inst|to_pc\(2),
	ena => \PCEN~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst4|inst|reg|reg_1|y\(2));

-- Location: LCCOMB_X16_Y33_N4
\inst4|inst1|data_out[1]~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|inst1|data_out[1]~7_combout\ = (!\inst4|inst|reg|reg_1|y\(3) & (\inst4|inst1|data_out[7]~0_combout\ & (\inst4|inst|reg|reg_1|y\(1) $ (\inst4|inst|reg|reg_1|y\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001001000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|inst|reg|reg_1|y\(1),
	datab => \inst4|inst|reg|reg_1|y\(3),
	datac => \inst4|inst|reg|reg_1|y\(2),
	datad => \inst4|inst1|data_out[7]~0_combout\,
	combout => \inst4|inst1|data_out[1]~7_combout\);

-- Location: LCCOMB_X16_Y33_N2
\inst4|inst1|INS_OUT[1]~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|inst1|INS_OUT[1]~9_combout\ = (\inst4|inst1|data_out[1]~7_combout\ & !\inst4|inst1|exception~2_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst4|inst1|data_out[1]~7_combout\,
	datad => \inst4|inst1|exception~2_combout\,
	combout => \inst4|inst1|INS_OUT[1]~9_combout\);

-- Location: LCCOMB_X17_Y30_N18
\inst4|inst3|add_1|S[1]\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|inst3|add_1|S\(1) = \inst4|inst1|INS_OUT[1]~9_combout\ $ (\inst4|inst|reg|reg_1|y\(1) $ (((\inst4|inst|reg|reg_1|y\(0) & \inst4|inst1|INS_OUT[0]~10_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011001011010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|inst1|INS_OUT[1]~9_combout\,
	datab => \inst4|inst|reg|reg_1|y\(0),
	datac => \inst4|inst|reg|reg_1|y\(1),
	datad => \inst4|inst1|INS_OUT[0]~10_combout\,
	combout => \inst4|inst3|add_1|S\(1));

-- Location: LCCOMB_X17_Y30_N10
\inst4|inst7|OUT16B[1]~17\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|inst7|OUT16B[1]~17_combout\ = (\inst|Mux3~1_combout\ & (\inst4|inst3|add_1|S\(1))) # (!\inst|Mux3~1_combout\ & ((\inst4|inst|reg|reg_1|y\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst4|inst3|add_1|S\(1),
	datac => \inst|Mux3~1_combout\,
	datad => \inst4|inst|reg|reg_1|y\(1),
	combout => \inst4|inst7|OUT16B[1]~17_combout\);

-- Location: LCCOMB_X17_Y33_N20
\inst4|inst|to_pc[1]\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|inst|to_pc\(1) = (!\RST~input_o\ & ((\inst|Mux2~0_combout\ & ((\inst4|inst1|INS_OUT[0]~10_combout\))) # (!\inst|Mux2~0_combout\ & (!\inst4|inst7|OUT16B[1]~17_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101100000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Mux2~0_combout\,
	datab => \inst4|inst7|OUT16B[1]~17_combout\,
	datac => \RST~input_o\,
	datad => \inst4|inst1|INS_OUT[0]~10_combout\,
	combout => \inst4|inst|to_pc\(1));

-- Location: FF_X17_Y33_N21
\inst4|inst|reg|reg_1|y[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \inst4|inst|to_pc\(1),
	ena => \PCEN~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst4|inst|reg|reg_1|y\(1));

-- Location: LCCOMB_X17_Y33_N30
\inst4|inst1|data_out[13]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|inst1|data_out[13]~1_combout\ = ((\inst4|inst|reg|reg_1|y\(2) & ((\inst4|inst|reg|reg_1|y\(3)) # (!\inst4|inst|reg|reg_1|y\(1))))) # (!\inst4|inst1|data_out[7]~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|inst|reg|reg_1|y\(1),
	datab => \inst4|inst|reg|reg_1|y\(3),
	datac => \inst4|inst|reg|reg_1|y\(2),
	datad => \inst4|inst1|data_out[7]~0_combout\,
	combout => \inst4|inst1|data_out[13]~1_combout\);

-- Location: LCCOMB_X16_Y32_N18
\inst4|inst1|INS_OUT[13]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|inst1|INS_OUT[13]~2_combout\ = (!\inst4|inst1|data_out[13]~1_combout\ & !\inst4|inst1|exception~2_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst4|inst1|data_out[13]~1_combout\,
	datad => \inst4|inst1|exception~2_combout\,
	combout => \inst4|inst1|INS_OUT[13]~2_combout\);

-- Location: LCCOMB_X16_Y31_N4
\inst|Mux2~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Mux2~0_combout\ = (\inst4|inst1|INS_OUT[13]~2_combout\ & (!\inst4|inst1|INS_OUT[14]~3_combout\ & (!\inst4|inst1|INS_OUT[12]~5_combout\ & !\inst4|inst1|INS_OUT[15]~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|inst1|INS_OUT[13]~2_combout\,
	datab => \inst4|inst1|INS_OUT[14]~3_combout\,
	datac => \inst4|inst1|INS_OUT[12]~5_combout\,
	datad => \inst4|inst1|INS_OUT[15]~4_combout\,
	combout => \inst|Mux2~0_combout\);

-- Location: LCCOMB_X16_Y33_N8
\inst4|inst3|add_1|S[3]\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|inst3|add_1|S\(3) = \inst4|inst3|add_1|C[3]~1_combout\ $ (\inst4|inst|reg|reg_1|y\(3) $ (\inst4|inst2|alu0|alu0|adder|C~0_combout\ $ (\inst4|inst1|INS_OUT[3]~8_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|inst3|add_1|C[3]~1_combout\,
	datab => \inst4|inst|reg|reg_1|y\(3),
	datac => \inst4|inst2|alu0|alu0|adder|C~0_combout\,
	datad => \inst4|inst1|INS_OUT[3]~8_combout\,
	combout => \inst4|inst3|add_1|S\(3));

-- Location: LCCOMB_X16_Y33_N20
\inst4|inst7|OUT16B[3]~16\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|inst7|OUT16B[3]~16_combout\ = (\inst|Mux3~1_combout\ & (\inst4|inst3|add_1|S\(3))) # (!\inst|Mux3~1_combout\ & ((\inst4|inst2|alu0|alu0|adder|C~0_combout\ $ (\inst4|inst|reg|reg_1|y\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|inst3|add_1|S\(3),
	datab => \inst4|inst2|alu0|alu0|adder|C~0_combout\,
	datac => \inst4|inst|reg|reg_1|y\(3),
	datad => \inst|Mux3~1_combout\,
	combout => \inst4|inst7|OUT16B[3]~16_combout\);

-- Location: LCCOMB_X17_Y33_N14
\inst4|inst|to_pc[3]\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|inst|to_pc\(3) = (!\RST~input_o\ & ((\inst|Mux2~0_combout\ & (\inst4|inst1|INS_OUT[2]~14_combout\)) # (!\inst|Mux2~0_combout\ & ((\inst4|inst7|OUT16B[3]~16_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000100100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Mux2~0_combout\,
	datab => \RST~input_o\,
	datac => \inst4|inst1|INS_OUT[2]~14_combout\,
	datad => \inst4|inst7|OUT16B[3]~16_combout\,
	combout => \inst4|inst|to_pc\(3));

-- Location: FF_X17_Y33_N15
\inst4|inst|reg|reg_1|y[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~input_o\,
	d => \inst4|inst|to_pc\(3),
	ena => \PCEN~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst4|inst|reg|reg_1|y\(3));

-- Location: LCCOMB_X17_Y33_N18
\inst4|inst1|data_out[10]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|inst1|data_out[10]~2_combout\ = (\inst4|inst1|data_out[7]~0_combout\ & ((\inst4|inst|reg|reg_1|y\(1) & (!\inst4|inst|reg|reg_1|y\(3))) # (!\inst4|inst|reg|reg_1|y\(1) & ((!\inst4|inst|reg|reg_1|y\(2))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100010000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|inst|reg|reg_1|y\(3),
	datab => \inst4|inst1|data_out[7]~0_combout\,
	datac => \inst4|inst|reg|reg_1|y\(2),
	datad => \inst4|inst|reg|reg_1|y\(1),
	combout => \inst4|inst1|data_out[10]~2_combout\);

-- Location: LCCOMB_X16_Y32_N10
\inst4|inst1|INS_OUT[15]~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|inst1|INS_OUT[15]~4_combout\ = (\inst4|inst1|data_out[10]~2_combout\ & !\inst4|inst1|exception~2_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst4|inst1|data_out[10]~2_combout\,
	datad => \inst4|inst1|exception~2_combout\,
	combout => \inst4|inst1|INS_OUT[15]~4_combout\);

-- Location: LCCOMB_X16_Y32_N0
\inst|Mux8~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Mux8~0_combout\ = (\inst4|inst1|INS_OUT[15]~4_combout\ & (\inst4|inst1|INS_OUT[13]~2_combout\ & ((\inst4|inst1|INS_OUT[12]~5_combout\)))) # (!\inst4|inst1|INS_OUT[15]~4_combout\ & (!\inst4|inst1|INS_OUT[13]~2_combout\ & 
-- (\inst4|inst1|INS_OUT[14]~3_combout\ & !\inst4|inst1|INS_OUT[12]~5_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|inst1|INS_OUT[15]~4_combout\,
	datab => \inst4|inst1|INS_OUT[13]~2_combout\,
	datac => \inst4|inst1|INS_OUT[14]~3_combout\,
	datad => \inst4|inst1|INS_OUT[12]~5_combout\,
	combout => \inst|Mux8~0_combout\);

-- Location: LCCOMB_X14_Y31_N0
\inst2|inst3|DOUT[0]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|inst3|DOUT[0]~2_combout\ = (!\inst|Mux8~0_combout\ & \inst4|inst1|INS_OUT[0]~10_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Mux8~0_combout\,
	datad => \inst4|inst1|INS_OUT[0]~10_combout\,
	combout => \inst2|inst3|DOUT[0]~2_combout\);

-- Location: LCCOMB_X17_Y35_N28
\inst2|inst1|alu1|mux|Mux3~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|inst1|alu1|mux|Mux3~0_combout\ = \inst2|inst2|OUT16B[4]~2_combout\ $ (((\inst2|inst3|DOUT[1]~4_combout\ & (\inst2|inst3|DOUT[2]~3_combout\ $ (\inst2|inst1|alu0|adder|C4~0_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001111101100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|inst3|DOUT[2]~3_combout\,
	datab => \inst2|inst1|alu0|adder|C4~0_combout\,
	datac => \inst2|inst3|DOUT[1]~4_combout\,
	datad => \inst2|inst2|OUT16B[4]~2_combout\,
	combout => \inst2|inst1|alu1|mux|Mux3~0_combout\);

-- Location: LCCOMB_X17_Y35_N16
\inst2|inst1|alu1|mux|Mux3~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|inst1|alu1|mux|Mux3~1_combout\ = (\inst2|inst1|alu1|mux|Mux3~0_combout\ & (\inst2|inst3|DOUT[1]~4_combout\ $ (((\inst2|inst3|DOUT[0]~2_combout\) # (\inst2|inst|mux_1|mux_1|mux_generate:1:mux_i|Mux3~1_combout\))))) # 
-- (!\inst2|inst1|alu1|mux|Mux3~0_combout\ & (\inst2|inst|mux_1|mux_1|mux_generate:1:mux_i|Mux3~1_combout\ & (\inst2|inst3|DOUT[0]~2_combout\ $ (\inst2|inst3|DOUT[1]~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001111001001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|inst3|DOUT[0]~2_combout\,
	datab => \inst2|inst1|alu1|mux|Mux3~0_combout\,
	datac => \inst2|inst3|DOUT[1]~4_combout\,
	datad => \inst2|inst|mux_1|mux_1|mux_generate:1:mux_i|Mux3~1_combout\,
	combout => \inst2|inst1|alu1|mux|Mux3~1_combout\);

-- Location: LCCOMB_X13_Y32_N8
\inst1|DOUT[7]~54\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|DOUT[7]~54_combout\ = (\inst2|inst1|alu1|mux|Mux3~1_combout\) # ((\inst2|inst1|alu0|mux|Mux0~1_combout\) # ((!\inst1|dcd|dcd_3|dcd|Mux7~5_combout\ & !\inst1|dcd|dcd_3|dcd|Mux7~6_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101011111011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|inst1|alu1|mux|Mux3~1_combout\,
	datab => \inst1|dcd|dcd_3|dcd|Mux7~5_combout\,
	datac => \inst2|inst1|alu0|mux|Mux0~1_combout\,
	datad => \inst1|dcd|dcd_3|dcd|Mux7~6_combout\,
	combout => \inst1|DOUT[7]~54_combout\);

-- Location: LCCOMB_X13_Y35_N20
\inst1|DOUT[15]~55\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|DOUT[15]~55_combout\ = ((\inst1|dcd|dcd_0|D[0]~0_combout\) # (!\inst|Mux5~0_combout\)) # (!\inst1|DOUT[7]~54_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111101110111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|DOUT[7]~54_combout\,
	datab => \inst|Mux5~0_combout\,
	datad => \inst1|dcd|dcd_0|D[0]~0_combout\,
	combout => \inst1|DOUT[15]~55_combout\);

-- Location: LCCOMB_X14_Y34_N2
\inst1|reg_gen:31:regs|y[7]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|reg_gen:31:regs|y[7]~feeder_combout\ = \inst2|inst|mux_2|mux_1|mux_generate:3:mux_i|Mux0~3_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst2|inst|mux_2|mux_1|mux_generate:3:mux_i|Mux0~3_combout\,
	combout => \inst1|reg_gen:31:regs|y[7]~feeder_combout\);

-- Location: FF_X14_Y34_N3
\inst1|reg_gen:31:regs|y[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \inst1|reg_gen:31:regs|y[7]~feeder_combout\,
	ena => \inst1|dec_to_en\(31),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|reg_gen:31:regs|y\(7));

-- Location: LCCOMB_X11_Y32_N6
\inst1|DOUT[15]~40\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|DOUT[15]~40_combout\ = (\inst1|DOUT[12]~39_combout\ & ((\inst1|DOUT[12]~37_combout\) # ((\inst1|DOUT[15]~38_combout\)))) # (!\inst1|DOUT[12]~39_combout\ & (!\inst1|DOUT[12]~37_combout\ & (\inst1|reg_gen:18:regs|y\(7))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|DOUT[12]~39_combout\,
	datab => \inst1|DOUT[12]~37_combout\,
	datac => \inst1|reg_gen:18:regs|y\(7),
	datad => \inst1|DOUT[15]~38_combout\,
	combout => \inst1|DOUT[15]~40_combout\);

-- Location: LCCOMB_X13_Y34_N14
\inst1|DOUT[15]~45\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|DOUT[15]~45_combout\ = (\inst1|DOUT[12]~37_combout\ & ((\inst1|DOUT[15]~40_combout\ & (\inst1|DOUT[15]~44_combout\)) # (!\inst1|DOUT[15]~40_combout\ & ((\inst1|DOUT[15]~36_combout\))))) # (!\inst1|DOUT[12]~37_combout\ & 
-- (((\inst1|DOUT[15]~40_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|DOUT[12]~37_combout\,
	datab => \inst1|DOUT[15]~44_combout\,
	datac => \inst1|DOUT[15]~36_combout\,
	datad => \inst1|DOUT[15]~40_combout\,
	combout => \inst1|DOUT[15]~45_combout\);

-- Location: LCCOMB_X13_Y34_N8
\inst1|DOUT[15]~46\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|DOUT[15]~46_combout\ = (\inst1|DOUT[12]~34_combout\ & ((\inst1|DOUT[15]~33_combout\) # ((\inst1|DOUT[12]~32_combout\)))) # (!\inst1|DOUT[12]~34_combout\ & (((\inst1|DOUT[15]~45_combout\ & !\inst1|DOUT[12]~32_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|DOUT[12]~34_combout\,
	datab => \inst1|DOUT[15]~33_combout\,
	datac => \inst1|DOUT[15]~45_combout\,
	datad => \inst1|DOUT[12]~32_combout\,
	combout => \inst1|DOUT[15]~46_combout\);

-- Location: LCCOMB_X13_Y34_N4
\inst1|DOUT[15]~30\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|DOUT[15]~30_combout\ = (\inst1|DOUT[12]~27_combout\ & ((\inst1|DOUT[15]~26_combout\) # ((\inst1|DOUT[12]~25_combout\)))) # (!\inst1|DOUT[12]~27_combout\ & (((!\inst1|DOUT[12]~25_combout\ & \inst1|DOUT[15]~29_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100101111001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|DOUT[15]~26_combout\,
	datab => \inst1|DOUT[12]~27_combout\,
	datac => \inst1|DOUT[12]~25_combout\,
	datad => \inst1|DOUT[15]~29_combout\,
	combout => \inst1|DOUT[15]~30_combout\);

-- Location: LCCOMB_X13_Y34_N2
\inst1|DOUT[15]~31\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|DOUT[15]~31_combout\ = (\inst1|DOUT[15]~30_combout\ & ((\inst1|reg_gen:15:regs|y\(7)) # ((!\inst1|DOUT[12]~25_combout\)))) # (!\inst1|DOUT[15]~30_combout\ & (((\inst1|DOUT[12]~25_combout\ & \inst1|DOUT[15]~23_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011110010001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|reg_gen:15:regs|y\(7),
	datab => \inst1|DOUT[15]~30_combout\,
	datac => \inst1|DOUT[12]~25_combout\,
	datad => \inst1|DOUT[15]~23_combout\,
	combout => \inst1|DOUT[15]~31_combout\);

-- Location: LCCOMB_X13_Y34_N6
\inst1|DOUT[15]~47\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|DOUT[15]~47_combout\ = (\inst1|DOUT[12]~32_combout\ & ((\inst1|DOUT[15]~46_combout\ & (\inst1|reg_gen:16:regs|y\(7))) # (!\inst1|DOUT[15]~46_combout\ & ((\inst1|DOUT[15]~31_combout\))))) # (!\inst1|DOUT[12]~32_combout\ & 
-- (((\inst1|DOUT[15]~46_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011110010110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|reg_gen:16:regs|y\(7),
	datab => \inst1|DOUT[12]~32_combout\,
	datac => \inst1|DOUT[15]~46_combout\,
	datad => \inst1|DOUT[15]~31_combout\,
	combout => \inst1|DOUT[15]~47_combout\);

-- Location: LCCOMB_X13_Y34_N22
\inst1|DOUT[15]~50\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|DOUT[15]~50_combout\ = (\inst1|DOUT[12]~49_combout\ & ((\inst1|DOUT[15]~47_combout\))) # (!\inst1|DOUT[12]~49_combout\ & (\inst1|reg_gen:31:regs|y\(7)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst1|reg_gen:31:regs|y\(7),
	datac => \inst1|DOUT[12]~49_combout\,
	datad => \inst1|DOUT[15]~47_combout\,
	combout => \inst1|DOUT[15]~50_combout\);

-- Location: LCCOMB_X13_Y34_N30
\inst1|DOUT[15]$latch\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|DOUT[15]$latch~combout\ = (!\inst1|DOUT[15]~55_combout\ & ((GLOBAL(\inst1|DOUT[15]~53clkctrl_outclk\) & ((\inst1|DOUT[15]~50_combout\))) # (!GLOBAL(\inst1|DOUT[15]~53clkctrl_outclk\) & (\inst1|DOUT[15]$latch~combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|DOUT[15]$latch~combout\,
	datab => \inst1|DOUT[15]~55_combout\,
	datac => \inst1|DOUT[15]~50_combout\,
	datad => \inst1|DOUT[15]~53clkctrl_outclk\,
	combout => \inst1|DOUT[15]$latch~combout\);

-- Location: LCCOMB_X19_Y34_N22
\inst4|inst3|add_3|S[0]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|inst3|add_3|S[0]~0_combout\ = \inst4|inst3|add_2|C4~0_combout\ $ (\inst4|inst1|INS_OUT[5]~6_combout\ $ (\inst4|inst2|alu0|alu2|adder|S\(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst4|inst3|add_2|C4~0_combout\,
	datac => \inst4|inst1|INS_OUT[5]~6_combout\,
	datad => \inst4|inst2|alu0|alu2|adder|S\(0),
	combout => \inst4|inst3|add_3|S[0]~0_combout\);

-- Location: LCCOMB_X19_Y34_N16
\inst4|inst3|add_2|S[3]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|inst3|add_2|S[3]~0_combout\ = \inst4|inst1|INS_OUT[5]~6_combout\ $ (\inst4|inst2|alu0|alu1|adder|S\(3) $ (\inst4|inst3|add_2|C[3]~2_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010101011010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|inst1|INS_OUT[5]~6_combout\,
	datac => \inst4|inst2|alu0|alu1|adder|S\(3),
	datad => \inst4|inst3|add_2|C[3]~2_combout\,
	combout => \inst4|inst3|add_2|S[3]~0_combout\);

-- Location: LCCOMB_X16_Y3_N4
\inst4|inst3|add_1|P[0]\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|inst3|add_1|P\(0) = \inst4|inst1|INS_OUT[0]~10_combout\ $ (\inst4|inst|reg|reg_1|y\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst4|inst1|INS_OUT[0]~10_combout\,
	datad => \inst4|inst|reg|reg_1|y\(0),
	combout => \inst4|inst3|add_1|P\(0));

-- Location: LCCOMB_X17_Y34_N24
\inst4|inst7|OUT16B[15]~20\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|inst7|OUT16B[15]~20_combout\ = \inst4|inst2|alu0|alu3|adder|S\(3) $ (((\inst|Mux3~1_combout\ & (\inst4|inst1|INS_OUT[5]~6_combout\ $ (\inst4|inst3|add_4|C[3]~2_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001101001101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|inst2|alu0|alu3|adder|S\(3),
	datab => \inst4|inst1|INS_OUT[5]~6_combout\,
	datac => \inst|Mux3~1_combout\,
	datad => \inst4|inst3|add_4|C[3]~2_combout\,
	combout => \inst4|inst7|OUT16B[15]~20_combout\);

-- Location: LCCOMB_X17_Y34_N20
\inst4|inst7|OUT16B[14]~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|inst7|OUT16B[14]~8_combout\ = (\inst|Mux3~1_combout\ & (\inst4|inst3|add_4|S\(2))) # (!\inst|Mux3~1_combout\ & ((\inst4|inst2|alu0|alu3|adder|S\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst4|inst3|add_4|S\(2),
	datac => \inst4|inst2|alu0|alu3|adder|S\(2),
	datad => \inst|Mux3~1_combout\,
	combout => \inst4|inst7|OUT16B[14]~8_combout\);

-- Location: LCCOMB_X16_Y33_N18
\inst4|inst7|OUT16B[13]~21\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|inst7|OUT16B[13]~21_combout\ = (\inst|Mux3~1_combout\ & (((\inst4|inst3|add_4|S\(1))))) # (!\inst|Mux3~1_combout\ & (\inst4|inst|reg|reg_2|y\(5) $ ((\inst4|inst2|alu0|alu3|adder|C~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000001100110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|inst|reg|reg_2|y\(5),
	datab => \inst4|inst2|alu0|alu3|adder|C~0_combout\,
	datac => \inst4|inst3|add_4|S\(1),
	datad => \inst|Mux3~1_combout\,
	combout => \inst4|inst7|OUT16B[13]~21_combout\);

-- Location: LCCOMB_X17_Y30_N30
\inst4|JUMPMUX|OUT16B[10]~20\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|JUMPMUX|OUT16B[10]~20_combout\ = (\inst|Mux2~0_combout\ & (\inst4|inst1|data_out[9]~3_combout\ & (!\inst4|inst1|exception~2_combout\))) # (!\inst|Mux2~0_combout\ & (((\inst4|inst7|OUT16B[10]~9_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011101100001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|inst1|data_out[9]~3_combout\,
	datab => \inst|Mux2~0_combout\,
	datac => \inst4|inst1|exception~2_combout\,
	datad => \inst4|inst7|OUT16B[10]~9_combout\,
	combout => \inst4|JUMPMUX|OUT16B[10]~20_combout\);

-- Location: LCCOMB_X17_Y30_N12
\inst4|JUMPMUX|OUT16B[9]~21\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|JUMPMUX|OUT16B[9]~21_combout\ = (\inst|Mux2~0_combout\ & (\inst4|inst1|dec|dcd_0|D[4]~2_combout\ & (!\inst4|inst1|exception~2_combout\))) # (!\inst|Mux2~0_combout\ & (((\inst4|inst7|OUT16B[9]~10_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101110100001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Mux2~0_combout\,
	datab => \inst4|inst1|dec|dcd_0|D[4]~2_combout\,
	datac => \inst4|inst1|exception~2_combout\,
	datad => \inst4|inst7|OUT16B[9]~10_combout\,
	combout => \inst4|JUMPMUX|OUT16B[9]~21_combout\);

-- Location: LCCOMB_X18_Y33_N6
\inst4|JUMPMUX|OUT16B[8]~22\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|JUMPMUX|OUT16B[8]~22_combout\ = (\inst|Mux2~0_combout\ & (((!\inst4|inst1|exception~2_combout\ & \inst4|inst1|data_out[7]~10_combout\)))) # (!\inst|Mux2~0_combout\ & (\inst4|inst7|OUT16B[8]~11_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010111000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|inst7|OUT16B[8]~11_combout\,
	datab => \inst|Mux2~0_combout\,
	datac => \inst4|inst1|exception~2_combout\,
	datad => \inst4|inst1|data_out[7]~10_combout\,
	combout => \inst4|JUMPMUX|OUT16B[8]~22_combout\);

-- Location: LCCOMB_X18_Y33_N4
\inst4|JUMPMUX|OUT16B[7]~23\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|JUMPMUX|OUT16B[7]~23_combout\ = (\inst|Mux2~0_combout\ & (!\inst4|inst1|exception~2_combout\ & (\inst4|inst1|data_out[6]~8_combout\))) # (!\inst|Mux2~0_combout\ & (((\inst4|inst7|OUT16B[7]~12_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100111101000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|inst1|exception~2_combout\,
	datab => \inst4|inst1|data_out[6]~8_combout\,
	datac => \inst|Mux2~0_combout\,
	datad => \inst4|inst7|OUT16B[7]~12_combout\,
	combout => \inst4|JUMPMUX|OUT16B[7]~23_combout\);

-- Location: LCCOMB_X17_Y30_N4
\inst4|JUMPMUX|OUT16B[6]~16\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|JUMPMUX|OUT16B[6]~16_combout\ = (\inst|Mux2~0_combout\ & ((\inst4|inst1|INS_OUT[5]~6_combout\))) # (!\inst|Mux2~0_combout\ & (\inst4|inst7|OUT16B[6]~13_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|inst7|OUT16B[6]~13_combout\,
	datab => \inst|Mux2~0_combout\,
	datad => \inst4|inst1|INS_OUT[5]~6_combout\,
	combout => \inst4|JUMPMUX|OUT16B[6]~16_combout\);

-- Location: LCCOMB_X18_Y33_N26
\inst4|JUMPMUX|OUT16B[5]~24\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|JUMPMUX|OUT16B[5]~24_combout\ = (\inst|Mux2~0_combout\ & (!\inst4|inst1|exception~2_combout\ & (\inst4|inst1|data_out[4]~5_combout\))) # (!\inst|Mux2~0_combout\ & (((\inst4|inst7|OUT16B[5]~14_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100111101000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|inst1|exception~2_combout\,
	datab => \inst4|inst1|data_out[4]~5_combout\,
	datac => \inst|Mux2~0_combout\,
	datad => \inst4|inst7|OUT16B[5]~14_combout\,
	combout => \inst4|JUMPMUX|OUT16B[5]~24_combout\);

-- Location: LCCOMB_X18_Y30_N28
\inst4|JUMPMUX|OUT16B[4]~25\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|JUMPMUX|OUT16B[4]~25_combout\ = (\inst|Mux2~0_combout\ & (!\inst4|inst1|exception~2_combout\ & (\inst4|inst1|dec|dcd_0|D[2]~0_combout\))) # (!\inst|Mux2~0_combout\ & (((\inst4|inst7|OUT16B[4]~15_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111001101000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|inst1|exception~2_combout\,
	datab => \inst|Mux2~0_combout\,
	datac => \inst4|inst1|dec|dcd_0|D[2]~0_combout\,
	datad => \inst4|inst7|OUT16B[4]~15_combout\,
	combout => \inst4|JUMPMUX|OUT16B[4]~25_combout\);

-- Location: LCCOMB_X16_Y33_N24
\inst4|JUMPMUX|OUT16B[3]~17\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|JUMPMUX|OUT16B[3]~17_combout\ = (\inst|Mux2~0_combout\ & ((\inst4|inst1|INS_OUT[2]~14_combout\))) # (!\inst|Mux2~0_combout\ & (\inst4|inst7|OUT16B[3]~16_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Mux2~0_combout\,
	datab => \inst4|inst7|OUT16B[3]~16_combout\,
	datad => \inst4|inst1|INS_OUT[2]~14_combout\,
	combout => \inst4|JUMPMUX|OUT16B[3]~17_combout\);

-- Location: LCCOMB_X16_Y33_N26
\inst4|JUMPMUX|OUT16B[2]~26\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|JUMPMUX|OUT16B[2]~26_combout\ = (\inst|Mux2~0_combout\ & (\inst4|inst1|data_out[1]~7_combout\ & (!\inst4|inst1|exception~2_combout\))) # (!\inst|Mux2~0_combout\ & (((\inst4|inst7|OUT16B[2]~22_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010001011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|inst1|data_out[1]~7_combout\,
	datab => \inst4|inst1|exception~2_combout\,
	datac => \inst4|inst7|OUT16B[2]~22_combout\,
	datad => \inst|Mux2~0_combout\,
	combout => \inst4|JUMPMUX|OUT16B[2]~26_combout\);

-- Location: LCCOMB_X17_Y30_N16
\inst4|JUMPMUX|OUT16B[1]~18\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|JUMPMUX|OUT16B[1]~18_combout\ = (\inst|Mux2~0_combout\ & ((\inst4|inst1|INS_OUT[0]~10_combout\))) # (!\inst|Mux2~0_combout\ & (!\inst4|inst7|OUT16B[1]~17_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101000111010001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|inst7|OUT16B[1]~17_combout\,
	datab => \inst|Mux2~0_combout\,
	datac => \inst4|inst1|INS_OUT[0]~10_combout\,
	combout => \inst4|JUMPMUX|OUT16B[1]~18_combout\);

-- Location: LCCOMB_X17_Y30_N20
\inst4|inst7|OUT16B[12]~18\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|inst7|OUT16B[12]~18_combout\ = (\inst|Mux3~1_combout\ & (\inst4|inst3|add_4|S[0]~1_combout\)) # (!\inst|Mux3~1_combout\ & ((\inst4|inst2|alu0|alu3|adder|S\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst4|inst3|add_4|S[0]~1_combout\,
	datac => \inst|Mux3~1_combout\,
	datad => \inst4|inst2|alu0|alu3|adder|S\(0),
	combout => \inst4|inst7|OUT16B[12]~18_combout\);

-- Location: LCCOMB_X17_Y30_N22
\inst4|inst7|OUT16B[11]~23\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|inst7|OUT16B[11]~23_combout\ = \inst4|inst2|alu0|alu2|adder|S\(3) $ (((\inst|Mux3~1_combout\ & (\inst4|inst1|INS_OUT[5]~6_combout\ $ (\inst4|inst3|add_3|C[3]~2_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101001001111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Mux3~1_combout\,
	datab => \inst4|inst1|INS_OUT[5]~6_combout\,
	datac => \inst4|inst2|alu0|alu2|adder|S\(3),
	datad => \inst4|inst3|add_3|C[3]~2_combout\,
	combout => \inst4|inst7|OUT16B[11]~23_combout\);

-- Location: LCCOMB_X18_Y3_N4
\inst4|inst7|OUT16B[0]~19\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|inst7|OUT16B[0]~19_combout\ = \inst4|inst|reg|reg_1|y\(0) $ (((\inst4|inst1|INS_OUT[0]~10_combout\ & \inst|Mux3~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|inst1|INS_OUT[0]~10_combout\,
	datac => \inst|Mux3~1_combout\,
	datad => \inst4|inst|reg|reg_1|y\(0),
	combout => \inst4|inst7|OUT16B[0]~19_combout\);

-- Location: LCCOMB_X19_Y34_N14
\inst4|inst2|alu0|alu2|adder|S[2]\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|inst2|alu0|alu2|adder|S\(2) = \inst4|inst|reg|reg_2|y\(2) $ (\inst4|inst2|alu0|alu2|adder|C~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst4|inst|reg|reg_2|y\(2),
	datad => \inst4|inst2|alu0|alu2|adder|C~0_combout\,
	combout => \inst4|inst2|alu0|alu2|adder|S\(2));

-- Location: LCCOMB_X19_Y34_N4
\inst4|inst2|alu0|alu2|adder|S[1]\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|inst2|alu0|alu2|adder|S\(1) = \inst4|inst|reg|reg_2|y\(1) $ (((\inst4|inst2|alu0|alu1|adder|C~1_combout\ & (\inst4|inst|reg|reg_1|y\(7) & \inst4|inst|reg|reg_2|y\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111100011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|inst2|alu0|alu1|adder|C~1_combout\,
	datab => \inst4|inst|reg|reg_1|y\(7),
	datac => \inst4|inst|reg|reg_2|y\(1),
	datad => \inst4|inst|reg|reg_2|y\(0),
	combout => \inst4|inst2|alu0|alu2|adder|S\(1));

-- Location: LCCOMB_X18_Y30_N26
\inst4|inst2|alu0|alu1|adder|S[2]\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|inst2|alu0|alu1|adder|S\(2) = \inst4|inst|reg|reg_1|y\(6) $ (((\inst4|inst2|alu0|alu1|adder|C~0_combout\ & \inst4|inst|reg|reg_1|y\(5))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst4|inst2|alu0|alu1|adder|C~0_combout\,
	datac => \inst4|inst|reg|reg_1|y\(5),
	datad => \inst4|inst|reg|reg_1|y\(6),
	combout => \inst4|inst2|alu0|alu1|adder|S\(2));

-- Location: LCCOMB_X19_Y34_N2
\inst4|inst2|alu0|alu1|adder|S[1]\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|inst2|alu0|alu1|adder|S\(1) = \inst4|inst|reg|reg_1|y\(5) $ (\inst4|inst2|alu0|alu1|adder|C~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst4|inst|reg|reg_1|y\(5),
	datad => \inst4|inst2|alu0|alu1|adder|C~0_combout\,
	combout => \inst4|inst2|alu0|alu1|adder|S\(1));

-- Location: LCCOMB_X18_Y30_N16
\inst4|inst2|alu0|alu1|adder|S[0]\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|inst2|alu0|alu1|adder|S\(0) = \inst4|inst|reg|reg_1|y\(4) $ (((\inst4|inst|reg|reg_1|y\(2) & (\inst4|inst|reg|reg_1|y\(1) & \inst4|inst|reg|reg_1|y\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110101010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|inst|reg|reg_1|y\(4),
	datab => \inst4|inst|reg|reg_1|y\(2),
	datac => \inst4|inst|reg|reg_1|y\(1),
	datad => \inst4|inst|reg|reg_1|y\(3),
	combout => \inst4|inst2|alu0|alu1|adder|S\(0));

-- Location: LCCOMB_X18_Y30_N18
\inst4|inst2|alu0|alu0|adder|S[3]\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|inst2|alu0|alu0|adder|S\(3) = \inst4|inst|reg|reg_1|y\(3) $ (((\inst4|inst|reg|reg_1|y\(2) & \inst4|inst|reg|reg_1|y\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst4|inst|reg|reg_1|y\(2),
	datac => \inst4|inst|reg|reg_1|y\(1),
	datad => \inst4|inst|reg|reg_1|y\(3),
	combout => \inst4|inst2|alu0|alu0|adder|S\(3));

ww_RegDst <= \RegDst~output_o\;

ww_RegWrite <= \RegWrite~output_o\;

ww_ALUCon <= \ALUCon~output_o\;

ww_ALUSrc <= \ALUSrc~output_o\;

ww_EXTEN_OUT(15) <= \EXTEN_OUT[15]~output_o\;

ww_EXTEN_OUT(14) <= \EXTEN_OUT[14]~output_o\;

ww_EXTEN_OUT(13) <= \EXTEN_OUT[13]~output_o\;

ww_EXTEN_OUT(12) <= \EXTEN_OUT[12]~output_o\;

ww_EXTEN_OUT(11) <= \EXTEN_OUT[11]~output_o\;

ww_EXTEN_OUT(10) <= \EXTEN_OUT[10]~output_o\;

ww_EXTEN_OUT(9) <= \EXTEN_OUT[9]~output_o\;

ww_EXTEN_OUT(8) <= \EXTEN_OUT[8]~output_o\;

ww_EXTEN_OUT(7) <= \EXTEN_OUT[7]~output_o\;

ww_EXTEN_OUT(6) <= \EXTEN_OUT[6]~output_o\;

ww_EXTEN_OUT(5) <= \EXTEN_OUT[5]~output_o\;

ww_EXTEN_OUT(4) <= \EXTEN_OUT[4]~output_o\;

ww_EXTEN_OUT(3) <= \EXTEN_OUT[3]~output_o\;

ww_EXTEN_OUT(2) <= \EXTEN_OUT[2]~output_o\;

ww_EXTEN_OUT(1) <= \EXTEN_OUT[1]~output_o\;

ww_EXTEN_OUT(0) <= \EXTEN_OUT[0]~output_o\;

ww_Branch <= \Branch~output_o\;

ww_Jump <= \Jump~output_o\;

ww_ALUOp(2) <= \ALUOp[2]~output_o\;

ww_ALUOp(1) <= \ALUOp[1]~output_o\;

ww_ALUOp(0) <= \ALUOp[0]~output_o\;

ww_W_REG(15) <= \W_REG[15]~output_o\;

ww_W_REG(14) <= \W_REG[14]~output_o\;

ww_W_REG(13) <= \W_REG[13]~output_o\;

ww_W_REG(12) <= \W_REG[12]~output_o\;

ww_W_REG(11) <= \W_REG[11]~output_o\;

ww_W_REG(10) <= \W_REG[10]~output_o\;

ww_W_REG(9) <= \W_REG[9]~output_o\;

ww_W_REG(8) <= \W_REG[8]~output_o\;

ww_W_REG(7) <= \W_REG[7]~output_o\;

ww_W_REG(6) <= \W_REG[6]~output_o\;

ww_W_REG(5) <= \W_REG[5]~output_o\;

ww_W_REG(4) <= \W_REG[4]~output_o\;

ww_W_REG(3) <= \W_REG[3]~output_o\;

ww_W_REG(2) <= \W_REG[2]~output_o\;

ww_W_REG(1) <= \W_REG[1]~output_o\;

ww_W_REG(0) <= \W_REG[0]~output_o\;

ww_MemtoReg <= \MemtoReg~output_o\;

ww_ALUOUT(15) <= \ALUOUT[15]~output_o\;

ww_ALUOUT(14) <= \ALUOUT[14]~output_o\;

ww_ALUOUT(13) <= \ALUOUT[13]~output_o\;

ww_ALUOUT(12) <= \ALUOUT[12]~output_o\;

ww_ALUOUT(11) <= \ALUOUT[11]~output_o\;

ww_ALUOUT(10) <= \ALUOUT[10]~output_o\;

ww_ALUOUT(9) <= \ALUOUT[9]~output_o\;

ww_ALUOUT(8) <= \ALUOUT[8]~output_o\;

ww_ALUOUT(7) <= \ALUOUT[7]~output_o\;

ww_ALUOUT(6) <= \ALUOUT[6]~output_o\;

ww_ALUOUT(5) <= \ALUOUT[5]~output_o\;

ww_ALUOUT(4) <= \ALUOUT[4]~output_o\;

ww_ALUOUT(3) <= \ALUOUT[3]~output_o\;

ww_ALUOUT(2) <= \ALUOUT[2]~output_o\;

ww_ALUOUT(1) <= \ALUOUT[1]~output_o\;

ww_ALUOUT(0) <= \ALUOUT[0]~output_o\;

ww_MemWrite <= \MemWrite~output_o\;

ww_MemRead <= \MemRead~output_o\;

ww_INS_OUT(15) <= \INS_OUT[15]~output_o\;

ww_INS_OUT(14) <= \INS_OUT[14]~output_o\;

ww_INS_OUT(13) <= \INS_OUT[13]~output_o\;

ww_INS_OUT(12) <= \INS_OUT[12]~output_o\;

ww_INS_OUT(11) <= \INS_OUT[11]~output_o\;

ww_INS_OUT(10) <= \INS_OUT[10]~output_o\;

ww_INS_OUT(9) <= \INS_OUT[9]~output_o\;

ww_INS_OUT(8) <= \INS_OUT[8]~output_o\;

ww_INS_OUT(7) <= \INS_OUT[7]~output_o\;

ww_INS_OUT(6) <= \INS_OUT[6]~output_o\;

ww_INS_OUT(5) <= \INS_OUT[5]~output_o\;

ww_INS_OUT(4) <= \INS_OUT[4]~output_o\;

ww_INS_OUT(3) <= \INS_OUT[3]~output_o\;

ww_INS_OUT(2) <= \INS_OUT[2]~output_o\;

ww_INS_OUT(1) <= \INS_OUT[1]~output_o\;

ww_INS_OUT(0) <= \INS_OUT[0]~output_o\;

ww_BRADDER_OUT(15) <= \BRADDER_OUT[15]~output_o\;

ww_BRADDER_OUT(14) <= \BRADDER_OUT[14]~output_o\;

ww_BRADDER_OUT(13) <= \BRADDER_OUT[13]~output_o\;

ww_BRADDER_OUT(12) <= \BRADDER_OUT[12]~output_o\;

ww_BRADDER_OUT(11) <= \BRADDER_OUT[11]~output_o\;

ww_BRADDER_OUT(10) <= \BRADDER_OUT[10]~output_o\;

ww_BRADDER_OUT(9) <= \BRADDER_OUT[9]~output_o\;

ww_BRADDER_OUT(8) <= \BRADDER_OUT[8]~output_o\;

ww_BRADDER_OUT(7) <= \BRADDER_OUT[7]~output_o\;

ww_BRADDER_OUT(6) <= \BRADDER_OUT[6]~output_o\;

ww_BRADDER_OUT(5) <= \BRADDER_OUT[5]~output_o\;

ww_BRADDER_OUT(4) <= \BRADDER_OUT[4]~output_o\;

ww_BRADDER_OUT(3) <= \BRADDER_OUT[3]~output_o\;

ww_BRADDER_OUT(2) <= \BRADDER_OUT[2]~output_o\;

ww_BRADDER_OUT(1) <= \BRADDER_OUT[1]~output_o\;

ww_BRADDER_OUT(0) <= \BRADDER_OUT[0]~output_o\;

ww_DMEMOUT(15) <= \DMEMOUT[15]~output_o\;

ww_DMEMOUT(14) <= \DMEMOUT[14]~output_o\;

ww_DMEMOUT(13) <= \DMEMOUT[13]~output_o\;

ww_DMEMOUT(12) <= \DMEMOUT[12]~output_o\;

ww_DMEMOUT(11) <= \DMEMOUT[11]~output_o\;

ww_DMEMOUT(10) <= \DMEMOUT[10]~output_o\;

ww_DMEMOUT(9) <= \DMEMOUT[9]~output_o\;

ww_DMEMOUT(8) <= \DMEMOUT[8]~output_o\;

ww_DMEMOUT(7) <= \DMEMOUT[7]~output_o\;

ww_DMEMOUT(6) <= \DMEMOUT[6]~output_o\;

ww_DMEMOUT(5) <= \DMEMOUT[5]~output_o\;

ww_DMEMOUT(4) <= \DMEMOUT[4]~output_o\;

ww_DMEMOUT(3) <= \DMEMOUT[3]~output_o\;

ww_DMEMOUT(2) <= \DMEMOUT[2]~output_o\;

ww_DMEMOUT(1) <= \DMEMOUT[1]~output_o\;

ww_DMEMOUT(0) <= \DMEMOUT[0]~output_o\;

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

ww_REG1OUT(15) <= \REG1OUT[15]~output_o\;

ww_REG1OUT(14) <= \REG1OUT[14]~output_o\;

ww_REG1OUT(13) <= \REG1OUT[13]~output_o\;

ww_REG1OUT(12) <= \REG1OUT[12]~output_o\;

ww_REG1OUT(11) <= \REG1OUT[11]~output_o\;

ww_REG1OUT(10) <= \REG1OUT[10]~output_o\;

ww_REG1OUT(9) <= \REG1OUT[9]~output_o\;

ww_REG1OUT(8) <= \REG1OUT[8]~output_o\;

ww_REG1OUT(7) <= \REG1OUT[7]~output_o\;

ww_REG1OUT(6) <= \REG1OUT[6]~output_o\;

ww_REG1OUT(5) <= \REG1OUT[5]~output_o\;

ww_REG1OUT(4) <= \REG1OUT[4]~output_o\;

ww_REG1OUT(3) <= \REG1OUT[3]~output_o\;

ww_REG1OUT(2) <= \REG1OUT[2]~output_o\;

ww_REG1OUT(1) <= \REG1OUT[1]~output_o\;

ww_REG1OUT(0) <= \REG1OUT[0]~output_o\;

ww_REG2_OUT(15) <= \REG2_OUT[15]~output_o\;

ww_REG2_OUT(14) <= \REG2_OUT[14]~output_o\;

ww_REG2_OUT(13) <= \REG2_OUT[13]~output_o\;

ww_REG2_OUT(12) <= \REG2_OUT[12]~output_o\;

ww_REG2_OUT(11) <= \REG2_OUT[11]~output_o\;

ww_REG2_OUT(10) <= \REG2_OUT[10]~output_o\;

ww_REG2_OUT(9) <= \REG2_OUT[9]~output_o\;

ww_REG2_OUT(8) <= \REG2_OUT[8]~output_o\;

ww_REG2_OUT(7) <= \REG2_OUT[7]~output_o\;

ww_REG2_OUT(6) <= \REG2_OUT[6]~output_o\;

ww_REG2_OUT(5) <= \REG2_OUT[5]~output_o\;

ww_REG2_OUT(4) <= \REG2_OUT[4]~output_o\;

ww_REG2_OUT(3) <= \REG2_OUT[3]~output_o\;

ww_REG2_OUT(2) <= \REG2_OUT[2]~output_o\;

ww_REG2_OUT(1) <= \REG2_OUT[1]~output_o\;

ww_REG2_OUT(0) <= \REG2_OUT[0]~output_o\;
END structure;


