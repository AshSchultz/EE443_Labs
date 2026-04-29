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

-- DATE "04/28/2026 16:29:31"

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
	SW17 : IN std_logic;
	ALUCon : OUT std_logic;
	ALUSrc : OUT std_logic;
	EXTEN_OUT : OUT std_logic_vector(15 DOWNTO 0);
	Branch : OUT std_logic;
	PCEnable : OUT std_logic;
	Jump : OUT std_logic;
	SW0 : IN std_logic;
	ALUOp : OUT std_logic_vector(2 DOWNTO 0);
	W_REG : OUT std_logic_vector(15 DOWNTO 0);
	MemtoReg : OUT std_logic;
	ALUOUT : OUT std_logic_vector(15 DOWNTO 0);
	MemWrite : OUT std_logic;
	MemRead : OUT std_logic;
	INS_OUT : OUT std_logic_vector(15 DOWNTO 0);
	BRADDER_OUT : OUT std_logic_vector(15 DOWNTO 0);
	DMEMOUT : OUT std_logic_vector(15 DOWNTO 0);
	HEX0 : OUT std_logic_vector(0 TO 6);
	HEX1 : OUT std_logic_vector(0 TO 6);
	HEX2 : OUT std_logic_vector(0 TO 6);
	HEX3 : OUT std_logic_vector(0 TO 6);
	HEX4 : OUT std_logic_vector(0 TO 6);
	HEX5 : OUT std_logic_vector(0 TO 6);
	HEX6 : OUT std_logic_vector(0 TO 6);
	HEX7 : OUT std_logic_vector(0 TO 6);
	JOUT : OUT std_logic_vector(15 DOWNTO 0);
	JUMPMUX_OUT : OUT std_logic_vector(15 DOWNTO 0);
	PCP2 : OUT std_logic_vector(15 DOWNTO 0);
	REG1OUT : OUT std_logic_vector(15 DOWNTO 0);
	REG2_OUT : OUT std_logic_vector(15 DOWNTO 0)
	);
END m16dp;

-- Design Ports Information
-- RegDst	=>  Location: PIN_AD3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- RegWrite	=>  Location: PIN_AD2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ALUCon	=>  Location: PIN_A21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ALUSrc	=>  Location: PIN_V23,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- EXTEN_OUT[15]	=>  Location: PIN_F15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- EXTEN_OUT[14]	=>  Location: PIN_E12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- EXTEN_OUT[13]	=>  Location: PIN_A17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- EXTEN_OUT[12]	=>  Location: PIN_B17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- EXTEN_OUT[11]	=>  Location: PIN_B10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- EXTEN_OUT[10]	=>  Location: PIN_E15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- EXTEN_OUT[9]	=>  Location: PIN_F11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- EXTEN_OUT[8]	=>  Location: PIN_F14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- EXTEN_OUT[7]	=>  Location: PIN_H12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- EXTEN_OUT[6]	=>  Location: PIN_J14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- EXTEN_OUT[5]	=>  Location: PIN_H14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- EXTEN_OUT[4]	=>  Location: PIN_C26,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- EXTEN_OUT[3]	=>  Location: PIN_E21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- EXTEN_OUT[2]	=>  Location: PIN_K21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- EXTEN_OUT[1]	=>  Location: PIN_F24,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- EXTEN_OUT[0]	=>  Location: PIN_C22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Branch	=>  Location: PIN_U25,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- PCEnable	=>  Location: PIN_U1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Jump	=>  Location: PIN_R27,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ALUOp[2]	=>  Location: PIN_F17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ALUOp[1]	=>  Location: PIN_A22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ALUOp[0]	=>  Location: PIN_B3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- W_REG[15]	=>  Location: PIN_T26,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- W_REG[14]	=>  Location: PIN_U8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- W_REG[13]	=>  Location: PIN_R28,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- W_REG[12]	=>  Location: PIN_R23,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- W_REG[11]	=>  Location: PIN_R26,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- W_REG[10]	=>  Location: PIN_E18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- W_REG[9]	=>  Location: PIN_C18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- W_REG[8]	=>  Location: PIN_T25,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- W_REG[7]	=>  Location: PIN_M23,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- W_REG[6]	=>  Location: PIN_AC3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- W_REG[5]	=>  Location: PIN_U28,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- W_REG[4]	=>  Location: PIN_C21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- W_REG[3]	=>  Location: PIN_T8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- W_REG[2]	=>  Location: PIN_U27,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- W_REG[1]	=>  Location: PIN_AB23,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- W_REG[0]	=>  Location: PIN_U22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- MemtoReg	=>  Location: PIN_D18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ALUOUT[15]	=>  Location: PIN_C20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ALUOUT[14]	=>  Location: PIN_B18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ALUOUT[13]	=>  Location: PIN_D27,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ALUOUT[12]	=>  Location: PIN_AD1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ALUOUT[11]	=>  Location: PIN_F28,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ALUOUT[10]	=>  Location: PIN_L27,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ALUOUT[9]	=>  Location: PIN_D20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ALUOUT[8]	=>  Location: PIN_K26,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ALUOUT[7]	=>  Location: PIN_AA3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ALUOUT[6]	=>  Location: PIN_K25,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ALUOUT[5]	=>  Location: PIN_K27,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ALUOUT[4]	=>  Location: PIN_AC27,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ALUOUT[3]	=>  Location: PIN_AC28,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ALUOUT[2]	=>  Location: PIN_AB27,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ALUOUT[1]	=>  Location: PIN_AE28,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ALUOUT[0]	=>  Location: PIN_AC25,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- MemWrite	=>  Location: PIN_V28,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- MemRead	=>  Location: PIN_F18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- INS_OUT[15]	=>  Location: PIN_H23,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- INS_OUT[14]	=>  Location: PIN_G27,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- INS_OUT[13]	=>  Location: PIN_R25,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- INS_OUT[12]	=>  Location: PIN_R24,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- INS_OUT[11]	=>  Location: PIN_H24,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- INS_OUT[10]	=>  Location: PIN_T22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- INS_OUT[9]	=>  Location: PIN_G28,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- INS_OUT[8]	=>  Location: PIN_L28,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- INS_OUT[7]	=>  Location: PIN_G24,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- INS_OUT[6]	=>  Location: PIN_P25,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- INS_OUT[5]	=>  Location: PIN_G11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- INS_OUT[4]	=>  Location: PIN_B26,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- INS_OUT[3]	=>  Location: PIN_B25,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- INS_OUT[2]	=>  Location: PIN_K22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- INS_OUT[1]	=>  Location: PIN_G23,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- INS_OUT[0]	=>  Location: PIN_D21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- BRADDER_OUT[15]	=>  Location: PIN_M27,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- BRADDER_OUT[14]	=>  Location: PIN_J23,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- BRADDER_OUT[13]	=>  Location: PIN_C23,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- BRADDER_OUT[12]	=>  Location: PIN_F26,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- BRADDER_OUT[11]	=>  Location: PIN_E28,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- BRADDER_OUT[10]	=>  Location: PIN_G20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- BRADDER_OUT[9]	=>  Location: PIN_AC1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- BRADDER_OUT[8]	=>  Location: PIN_B21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- BRADDER_OUT[7]	=>  Location: PIN_V3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- BRADDER_OUT[6]	=>  Location: PIN_AB1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- BRADDER_OUT[5]	=>  Location: PIN_L21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- BRADDER_OUT[4]	=>  Location: PIN_G26,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- BRADDER_OUT[3]	=>  Location: PIN_A23,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- BRADDER_OUT[2]	=>  Location: PIN_L23,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- BRADDER_OUT[1]	=>  Location: PIN_L22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- BRADDER_OUT[0]	=>  Location: PIN_M5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- DMEMOUT[15]	=>  Location: PIN_J19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- DMEMOUT[14]	=>  Location: PIN_C17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- DMEMOUT[13]	=>  Location: PIN_G22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- DMEMOUT[12]	=>  Location: PIN_H21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- DMEMOUT[11]	=>  Location: PIN_D19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- DMEMOUT[10]	=>  Location: PIN_B19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- DMEMOUT[9]	=>  Location: PIN_A19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- DMEMOUT[8]	=>  Location: PIN_C19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- DMEMOUT[7]	=>  Location: PIN_W7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- DMEMOUT[6]	=>  Location: PIN_AB4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- DMEMOUT[5]	=>  Location: PIN_AC24,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- DMEMOUT[4]	=>  Location: PIN_Y5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- DMEMOUT[3]	=>  Location: PIN_AB24,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- DMEMOUT[2]	=>  Location: PIN_AC4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- DMEMOUT[1]	=>  Location: PIN_AB6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- DMEMOUT[0]	=>  Location: PIN_AB5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX0[0]	=>  Location: PIN_G18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX0[1]	=>  Location: PIN_F22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX0[2]	=>  Location: PIN_E17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX0[3]	=>  Location: PIN_L26,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX0[4]	=>  Location: PIN_L25,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX0[5]	=>  Location: PIN_J22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX0[6]	=>  Location: PIN_H22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX1[0]	=>  Location: PIN_M24,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX1[1]	=>  Location: PIN_Y22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX1[2]	=>  Location: PIN_W21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX1[3]	=>  Location: PIN_W22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX1[4]	=>  Location: PIN_W25,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX1[5]	=>  Location: PIN_U23,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX1[6]	=>  Location: PIN_U24,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX2[0]	=>  Location: PIN_AA25,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX2[1]	=>  Location: PIN_AA26,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX2[2]	=>  Location: PIN_Y25,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX2[3]	=>  Location: PIN_W26,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX2[4]	=>  Location: PIN_Y26,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX2[5]	=>  Location: PIN_W27,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX2[6]	=>  Location: PIN_W28,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX3[0]	=>  Location: PIN_V21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX3[1]	=>  Location: PIN_U21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX3[2]	=>  Location: PIN_AB20,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- HEX3[3]	=>  Location: PIN_AA21,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- HEX3[4]	=>  Location: PIN_AD24,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- HEX3[5]	=>  Location: PIN_AF23,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- HEX3[6]	=>  Location: PIN_Y19,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- HEX4[0]	=>  Location: PIN_AB19,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- HEX4[1]	=>  Location: PIN_AA19,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- HEX4[2]	=>  Location: PIN_AG21,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- HEX4[3]	=>  Location: PIN_AH21,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- HEX4[4]	=>  Location: PIN_AE19,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- HEX4[5]	=>  Location: PIN_AF19,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- HEX4[6]	=>  Location: PIN_AE18,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- HEX5[0]	=>  Location: PIN_AD18,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- HEX5[1]	=>  Location: PIN_AC18,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- HEX5[2]	=>  Location: PIN_AB18,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- HEX5[3]	=>  Location: PIN_AH19,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- HEX5[4]	=>  Location: PIN_AG19,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- HEX5[5]	=>  Location: PIN_AF18,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- HEX5[6]	=>  Location: PIN_AH18,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- HEX6[0]	=>  Location: PIN_AA17,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- HEX6[1]	=>  Location: PIN_AB16,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- HEX6[2]	=>  Location: PIN_AA16,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- HEX6[3]	=>  Location: PIN_AB17,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- HEX6[4]	=>  Location: PIN_AB15,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- HEX6[5]	=>  Location: PIN_AA15,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- HEX6[6]	=>  Location: PIN_AC17,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- HEX7[0]	=>  Location: PIN_AD17,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- HEX7[1]	=>  Location: PIN_AE17,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- HEX7[2]	=>  Location: PIN_AG17,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- HEX7[3]	=>  Location: PIN_AH17,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- HEX7[4]	=>  Location: PIN_AF17,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- HEX7[5]	=>  Location: PIN_AG18,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- HEX7[6]	=>  Location: PIN_AA14,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- JOUT[15]	=>  Location: PIN_E22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- JOUT[14]	=>  Location: PIN_D25,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- JOUT[13]	=>  Location: PIN_D17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- JOUT[12]	=>  Location: PIN_M21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- JOUT[11]	=>  Location: PIN_C27,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- JOUT[10]	=>  Location: PIN_D26,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- JOUT[9]	=>  Location: PIN_G25,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- JOUT[8]	=>  Location: PIN_D24,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- JOUT[7]	=>  Location: PIN_D28,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- JOUT[6]	=>  Location: PIN_B23,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- JOUT[5]	=>  Location: PIN_V4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- JOUT[4]	=>  Location: PIN_B22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- JOUT[3]	=>  Location: PIN_C24,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- JOUT[2]	=>  Location: PIN_AB2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- JOUT[1]	=>  Location: PIN_J26,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- JOUT[0]	=>  Location: PIN_A3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- JUMPMUX_OUT[15]	=>  Location: PIN_D22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- JUMPMUX_OUT[14]	=>  Location: PIN_C25,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- JUMPMUX_OUT[13]	=>  Location: PIN_A18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- JUMPMUX_OUT[12]	=>  Location: PIN_H19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- JUMPMUX_OUT[11]	=>  Location: PIN_M25,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- JUMPMUX_OUT[10]	=>  Location: PIN_V26,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- JUMPMUX_OUT[9]	=>  Location: PIN_A25,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- JUMPMUX_OUT[8]	=>  Location: PIN_G17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- JUMPMUX_OUT[7]	=>  Location: PIN_J25,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- JUMPMUX_OUT[6]	=>  Location: PIN_N21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- JUMPMUX_OUT[5]	=>  Location: PIN_E26,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- JUMPMUX_OUT[4]	=>  Location: PIN_W2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- JUMPMUX_OUT[3]	=>  Location: PIN_E19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- JUMPMUX_OUT[2]	=>  Location: PIN_N25,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- JUMPMUX_OUT[1]	=>  Location: PIN_H26,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- JUMPMUX_OUT[0]	=>  Location: PIN_C6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- PCP2[15]	=>  Location: PIN_F21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- PCP2[14]	=>  Location: PIN_J17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- PCP2[13]	=>  Location: PIN_Y4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- PCP2[12]	=>  Location: PIN_J24,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- PCP2[11]	=>  Location: PIN_D23,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- PCP2[10]	=>  Location: PIN_F19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- PCP2[9]	=>  Location: PIN_U6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- PCP2[8]	=>  Location: PIN_W1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- PCP2[7]	=>  Location: PIN_Y3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- PCP2[6]	=>  Location: PIN_E27,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- PCP2[5]	=>  Location: PIN_A26,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- PCP2[4]	=>  Location: PIN_F25,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- PCP2[3]	=>  Location: PIN_H25,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- PCP2[2]	=>  Location: PIN_F27,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- PCP2[1]	=>  Location: PIN_V22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- PCP2[0]	=>  Location: PIN_V6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- REG1OUT[15]	=>  Location: PIN_E25,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- REG1OUT[14]	=>  Location: PIN_E24,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- REG1OUT[13]	=>  Location: PIN_K28,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- REG1OUT[12]	=>  Location: PIN_N26,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- REG1OUT[11]	=>  Location: PIN_U26,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- REG1OUT[10]	=>  Location: PIN_R21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- REG1OUT[9]	=>  Location: PIN_R22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- REG1OUT[8]	=>  Location: PIN_T21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- REG1OUT[7]	=>  Location: PIN_P26,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- REG1OUT[6]	=>  Location: PIN_AB3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- REG1OUT[5]	=>  Location: PIN_L24,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- REG1OUT[4]	=>  Location: PIN_P21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- REG1OUT[3]	=>  Location: PIN_M26,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- REG1OUT[2]	=>  Location: PIN_P27,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- REG1OUT[1]	=>  Location: PIN_M28,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- REG1OUT[0]	=>  Location: PIN_G21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- REG2_OUT[15]	=>  Location: PIN_V27,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- REG2_OUT[14]	=>  Location: PIN_V24,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- REG2_OUT[13]	=>  Location: PIN_Y24,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- REG2_OUT[12]	=>  Location: PIN_AB25,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- REG2_OUT[11]	=>  Location: PIN_AA23,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- REG2_OUT[10]	=>  Location: PIN_AB26,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- REG2_OUT[9]	=>  Location: PIN_V25,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- REG2_OUT[8]	=>  Location: PIN_AD27,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- REG2_OUT[7]	=>  Location: PIN_AF27,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- REG2_OUT[6]	=>  Location: PIN_AD28,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- REG2_OUT[5]	=>  Location: PIN_AC26,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- REG2_OUT[4]	=>  Location: PIN_AD26,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- REG2_OUT[3]	=>  Location: PIN_AA22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- REG2_OUT[2]	=>  Location: PIN_AA24,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- REG2_OUT[1]	=>  Location: PIN_AE26,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- REG2_OUT[0]	=>  Location: PIN_AE27,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SW0	=>  Location: PIN_AB28,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SW17	=>  Location: PIN_Y23,	 I/O Standard: 2.5 V,	 Current Strength: Default


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
SIGNAL ww_SW17 : std_logic;
SIGNAL ww_ALUCon : std_logic;
SIGNAL ww_ALUSrc : std_logic;
SIGNAL ww_EXTEN_OUT : std_logic_vector(15 DOWNTO 0);
SIGNAL ww_Branch : std_logic;
SIGNAL ww_PCEnable : std_logic;
SIGNAL ww_Jump : std_logic;
SIGNAL ww_SW0 : std_logic;
SIGNAL ww_ALUOp : std_logic_vector(2 DOWNTO 0);
SIGNAL ww_W_REG : std_logic_vector(15 DOWNTO 0);
SIGNAL ww_MemtoReg : std_logic;
SIGNAL ww_ALUOUT : std_logic_vector(15 DOWNTO 0);
SIGNAL ww_MemWrite : std_logic;
SIGNAL ww_MemRead : std_logic;
SIGNAL ww_INS_OUT : std_logic_vector(15 DOWNTO 0);
SIGNAL ww_BRADDER_OUT : std_logic_vector(15 DOWNTO 0);
SIGNAL ww_DMEMOUT : std_logic_vector(15 DOWNTO 0);
SIGNAL ww_HEX0 : std_logic_vector(0 TO 6);
SIGNAL ww_HEX1 : std_logic_vector(0 TO 6);
SIGNAL ww_HEX2 : std_logic_vector(0 TO 6);
SIGNAL ww_HEX3 : std_logic_vector(0 TO 6);
SIGNAL ww_HEX4 : std_logic_vector(0 TO 6);
SIGNAL ww_HEX5 : std_logic_vector(0 TO 6);
SIGNAL ww_HEX6 : std_logic_vector(0 TO 6);
SIGNAL ww_HEX7 : std_logic_vector(0 TO 6);
SIGNAL ww_JOUT : std_logic_vector(15 DOWNTO 0);
SIGNAL ww_JUMPMUX_OUT : std_logic_vector(15 DOWNTO 0);
SIGNAL ww_PCP2 : std_logic_vector(15 DOWNTO 0);
SIGNAL ww_REG1OUT : std_logic_vector(15 DOWNTO 0);
SIGNAL ww_REG2_OUT : std_logic_vector(15 DOWNTO 0);
SIGNAL \inst1|DOUT[15]~52clkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \inst1|DOUT[15]~51clkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
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
SIGNAL \PCEnable~output_o\ : std_logic;
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
SIGNAL \HEX0[0]~output_o\ : std_logic;
SIGNAL \HEX0[1]~output_o\ : std_logic;
SIGNAL \HEX0[2]~output_o\ : std_logic;
SIGNAL \HEX0[3]~output_o\ : std_logic;
SIGNAL \HEX0[4]~output_o\ : std_logic;
SIGNAL \HEX0[5]~output_o\ : std_logic;
SIGNAL \HEX0[6]~output_o\ : std_logic;
SIGNAL \HEX1[0]~output_o\ : std_logic;
SIGNAL \HEX1[1]~output_o\ : std_logic;
SIGNAL \HEX1[2]~output_o\ : std_logic;
SIGNAL \HEX1[3]~output_o\ : std_logic;
SIGNAL \HEX1[4]~output_o\ : std_logic;
SIGNAL \HEX1[5]~output_o\ : std_logic;
SIGNAL \HEX1[6]~output_o\ : std_logic;
SIGNAL \HEX2[0]~output_o\ : std_logic;
SIGNAL \HEX2[1]~output_o\ : std_logic;
SIGNAL \HEX2[2]~output_o\ : std_logic;
SIGNAL \HEX2[3]~output_o\ : std_logic;
SIGNAL \HEX2[4]~output_o\ : std_logic;
SIGNAL \HEX2[5]~output_o\ : std_logic;
SIGNAL \HEX2[6]~output_o\ : std_logic;
SIGNAL \HEX3[0]~output_o\ : std_logic;
SIGNAL \HEX3[1]~output_o\ : std_logic;
SIGNAL \HEX3[2]~output_o\ : std_logic;
SIGNAL \HEX3[3]~output_o\ : std_logic;
SIGNAL \HEX3[4]~output_o\ : std_logic;
SIGNAL \HEX3[5]~output_o\ : std_logic;
SIGNAL \HEX3[6]~output_o\ : std_logic;
SIGNAL \HEX4[0]~output_o\ : std_logic;
SIGNAL \HEX4[1]~output_o\ : std_logic;
SIGNAL \HEX4[2]~output_o\ : std_logic;
SIGNAL \HEX4[3]~output_o\ : std_logic;
SIGNAL \HEX4[4]~output_o\ : std_logic;
SIGNAL \HEX4[5]~output_o\ : std_logic;
SIGNAL \HEX4[6]~output_o\ : std_logic;
SIGNAL \HEX5[0]~output_o\ : std_logic;
SIGNAL \HEX5[1]~output_o\ : std_logic;
SIGNAL \HEX5[2]~output_o\ : std_logic;
SIGNAL \HEX5[3]~output_o\ : std_logic;
SIGNAL \HEX5[4]~output_o\ : std_logic;
SIGNAL \HEX5[5]~output_o\ : std_logic;
SIGNAL \HEX5[6]~output_o\ : std_logic;
SIGNAL \HEX6[0]~output_o\ : std_logic;
SIGNAL \HEX6[1]~output_o\ : std_logic;
SIGNAL \HEX6[2]~output_o\ : std_logic;
SIGNAL \HEX6[3]~output_o\ : std_logic;
SIGNAL \HEX6[4]~output_o\ : std_logic;
SIGNAL \HEX6[5]~output_o\ : std_logic;
SIGNAL \HEX6[6]~output_o\ : std_logic;
SIGNAL \HEX7[0]~output_o\ : std_logic;
SIGNAL \HEX7[1]~output_o\ : std_logic;
SIGNAL \HEX7[2]~output_o\ : std_logic;
SIGNAL \HEX7[3]~output_o\ : std_logic;
SIGNAL \HEX7[4]~output_o\ : std_logic;
SIGNAL \HEX7[5]~output_o\ : std_logic;
SIGNAL \HEX7[6]~output_o\ : std_logic;
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
SIGNAL \SW17~input_o\ : std_logic;
SIGNAL \SW0~input_o\ : std_logic;
SIGNAL \inst4|inst1|dec|en_0~combout\ : std_logic;
SIGNAL \inst4|inst1|data_out[3]~7_combout\ : std_logic;
SIGNAL \inst4|inst1|data_out[3]~8_combout\ : std_logic;
SIGNAL \inst4|inst1|data_out[0]~12_combout\ : std_logic;
SIGNAL \inst4|inst1|INS_OUT[0]~12_combout\ : std_logic;
SIGNAL \inst4|inst1|data_out[11]~3_combout\ : std_logic;
SIGNAL \inst4|inst1|INS_OUT[15]~15_combout\ : std_logic;
SIGNAL \inst4|inst1|data_out[12]~2_combout\ : std_logic;
SIGNAL \inst4|inst1|INS_OUT[12]~6_combout\ : std_logic;
SIGNAL \inst4|inst1|data_out[14]~1_combout\ : std_logic;
SIGNAL \inst4|inst1|INS_OUT[14]~5_combout\ : std_logic;
SIGNAL \inst|Mux5~0_combout\ : std_logic;
SIGNAL \inst2|inst2|OUT16B[0]~27_combout\ : std_logic;
SIGNAL \inst|Mux7~0_combout\ : std_logic;
SIGNAL \inst4|inst1|data_out[9]~13_combout\ : std_logic;
SIGNAL \inst4|inst1|data_out[9]~14_combout\ : std_logic;
SIGNAL \inst1|DOUT[7]~266_combout\ : std_logic;
SIGNAL \inst1|DOUT[15]~51clkctrl_outclk\ : std_logic;
SIGNAL \inst4|inst1|data_out[8]~18_combout\ : std_logic;
SIGNAL \inst4|inst1|data_out[8]~19_combout\ : std_logic;
SIGNAL \inst2|inst|mux_2|mux_1|mux_generate:0:mux_i|Mux2~7_combout\ : std_logic;
SIGNAL \inst4|inst1|data_out[6]~16_combout\ : std_logic;
SIGNAL \inst4|inst1|data_out[6]~17_combout\ : std_logic;
SIGNAL \inst|Mux0~0_combout\ : std_logic;
SIGNAL \inst4|inst1|data_out[3]~9_combout\ : std_logic;
SIGNAL \inst4|inst1|data_out[3]~22_combout\ : std_logic;
SIGNAL \inst2|inst5|DOUT[0]~2_combout\ : std_logic;
SIGNAL \inst4|inst1|data_out[5]~5_combout\ : std_logic;
SIGNAL \inst4|inst1|data_out[4]~21_combout\ : std_logic;
SIGNAL \inst2|inst5|DOUT[1]~0_combout\ : std_logic;
SIGNAL \inst2|inst5|DOUT[2]~1_combout\ : std_logic;
SIGNAL \inst|Mux1~0_combout\ : std_logic;
SIGNAL \inst2|inst|add_reg1_dcd|Mux3~0_combout\ : std_logic;
SIGNAL \inst2|inst|mux_2|mux_1|mux_generate:0:mux_i|Mux0~0_combout\ : std_logic;
SIGNAL \inst2|inst|add_reg1_dcd|Mux3~3_combout\ : std_logic;
SIGNAL \inst2|inst|mux_2|mux_1|mux_generate:0:mux_i|Mux2~1_combout\ : std_logic;
SIGNAL \inst2|inst|add_reg1_dcd|Mux3~2_combout\ : std_logic;
SIGNAL \inst2|inst|mux_2|mux_1|mux_generate:0:mux_i|Mux2~4_combout\ : std_logic;
SIGNAL \inst2|inst|add_reg1_dcd|Mux3~4_combout\ : std_logic;
SIGNAL \inst2|inst|add_reg1_dcd|Mux3~5_combout\ : std_logic;
SIGNAL \inst2|inst|mux_2|mux_1|mux_generate:0:mux_i|Mux0~1_combout\ : std_logic;
SIGNAL \inst2|inst|mux_2|mux_1|mux_generate:0:mux_i|Mux2~3_combout\ : std_logic;
SIGNAL \inst2|inst|mux_2|mux_1|mux_generate:0:mux_i|Mux0~2_combout\ : std_logic;
SIGNAL \inst2|inst|mux_2|mux_1|mux_generate:0:mux_i|Mux0~3_combout\ : std_logic;
SIGNAL \inst2|inst|mux_2|mux_1|mux_generate:0:mux_i|Mux0~4_combout\ : std_logic;
SIGNAL \inst1|reg_gen:30:regs|y[3]~feeder_combout\ : std_logic;
SIGNAL \inst1|reg_gen:22:regs|y[3]~feeder_combout\ : std_logic;
SIGNAL \inst|Mux6~0_combout\ : std_logic;
SIGNAL \inst|Mux8~0_combout\ : std_logic;
SIGNAL \inst2|inst3|DOUT[1]~4_combout\ : std_logic;
SIGNAL \inst2|inst3|DOUT[0]~2_combout\ : std_logic;
SIGNAL \inst2|inst|add_reg1_dcd|Mux3~1_combout\ : std_logic;
SIGNAL \inst2|inst|mux_1|mux_1|mux_generate:0:mux_i|Mux3~2_combout\ : std_logic;
SIGNAL \inst4|inst1|data_out[10]~15_combout\ : std_logic;
SIGNAL \inst2|inst|mux_1|mux_1|mux_generate:3:mux_i|Mux3~12_combout\ : std_logic;
SIGNAL \inst2|inst|mux_1|mux_1|mux_generate:3:mux_i|Mux3~4_combout\ : std_logic;
SIGNAL \inst2|inst|mux_1|mux_1|mux_generate:0:mux_i|Mux3~6_combout\ : std_logic;
SIGNAL \inst4|inst1|data_out[11]~4_combout\ : std_logic;
SIGNAL \inst2|inst|mux_1|mux_1|mux_generate:3:mux_i|Mux3~6_combout\ : std_logic;
SIGNAL \inst2|inst|mux_1|mux_1|mux_generate:3:mux_i|Mux3~5_combout\ : std_logic;
SIGNAL \inst2|inst|mux_1|mux_1|mux_generate:0:mux_i|Mux3~3_combout\ : std_logic;
SIGNAL \inst2|inst|mux_1|mux_1|mux_generate:0:mux_i|Mux3~4_combout\ : std_logic;
SIGNAL \inst2|inst|mux_1|mux_1|mux_generate:0:mux_i|Mux3~5_combout\ : std_logic;
SIGNAL \inst2|inst1|alu0|mux|Mux3~0_combout\ : std_logic;
SIGNAL \inst1|dec_to_en~9_combout\ : std_logic;
SIGNAL \inst1|reg_gen:6:regs|y[3]~feeder_combout\ : std_logic;
SIGNAL \inst1|DOUT[11]~122_combout\ : std_logic;
SIGNAL \inst1|dcd|dcd_3|dcd|Mux7~5_combout\ : std_logic;
SIGNAL \inst1|dcd|dcd_3|dcd|Mux7~7_combout\ : std_logic;
SIGNAL \inst1|dec_to_en[21]~1_combout\ : std_logic;
SIGNAL \inst1|DOUT[3]~232_combout\ : std_logic;
SIGNAL \inst1|reg_gen:16:regs|y[3]~feeder_combout\ : std_logic;
SIGNAL \inst1|dcd|dcd_3|dcd|Mux7~2_combout\ : std_logic;
SIGNAL \inst1|dec_to_en[16]~3_combout\ : std_logic;
SIGNAL \inst1|dec_to_en[16]~4_combout\ : std_logic;
SIGNAL \inst1|reg_gen:20:regs|y[3]~feeder_combout\ : std_logic;
SIGNAL \inst1|dcd|dcd_3|dcd|Mux7~4_combout\ : std_logic;
SIGNAL \inst1|dcd|dcd_3|dcd|Mux7~6_combout\ : std_logic;
SIGNAL \inst1|DOUT[3]~233_combout\ : std_logic;
SIGNAL \inst2|inst1|alu0|adder|C~0_combout\ : std_logic;
SIGNAL \inst2|inst|reg_gen:2:regs|reg_1|y[1]~feeder_combout\ : std_logic;
SIGNAL \inst2|inst|mux_2|mux_1|mux_generate:0:mux_i|Mux2~0_combout\ : std_logic;
SIGNAL \inst2|inst|mux_2|mux_1|mux_generate:0:mux_i|Mux2~2_combout\ : std_logic;
SIGNAL \inst2|inst|mux_2|mux_1|mux_generate:0:mux_i|Mux2~5_combout\ : std_logic;
SIGNAL \inst2|inst|mux_2|mux_1|mux_generate:0:mux_i|Mux2~6_combout\ : std_logic;
SIGNAL \inst2|inst|mux_2|mux_1|mux_generate:0:mux_i|Mux2~8_combout\ : std_logic;
SIGNAL \inst2|inst1|alu0|adder|C[2]~1_combout\ : std_logic;
SIGNAL \inst2|inst|reg_gen:3:regs|reg_1|y[2]~feeder_combout\ : std_logic;
SIGNAL \inst2|inst|mux_1|mux_1|mux_generate:0:mux_i|Mux1~2_combout\ : std_logic;
SIGNAL \inst2|inst|mux_1|mux_1|mux_generate:0:mux_i|Mux1~6_combout\ : std_logic;
SIGNAL \inst2|inst|mux_1|mux_1|mux_generate:0:mux_i|Mux1~3_combout\ : std_logic;
SIGNAL \inst2|inst|mux_1|mux_1|mux_generate:0:mux_i|Mux1~4_combout\ : std_logic;
SIGNAL \inst2|inst|mux_1|mux_1|mux_generate:0:mux_i|Mux1~5_combout\ : std_logic;
SIGNAL \inst2|inst1|alu0|mux|Mux1~4_combout\ : std_logic;
SIGNAL \inst1|dcd|dcd_3|dcd|Mux7~1_combout\ : std_logic;
SIGNAL \inst1|DOUT[7]~197_combout\ : std_logic;
SIGNAL \inst1|DOUT[5]~198_combout\ : std_logic;
SIGNAL \inst1|DOUT[3]~234_combout\ : std_logic;
SIGNAL \inst1|DOUT[13]~29_combout\ : std_logic;
SIGNAL \inst2|inst2|OUT16B[11]~32_combout\ : std_logic;
SIGNAL \inst2|inst|reg_gen:3:regs|reg_2|y[3]~feeder_combout\ : std_logic;
SIGNAL \inst2|inst|mux_1|mux_1|mux_generate:2:mux_i|Mux0~2_combout\ : std_logic;
SIGNAL \inst2|inst|mux_1|mux_1|mux_generate:2:mux_i|Mux0~6_combout\ : std_logic;
SIGNAL \inst2|inst|mux_1|mux_1|mux_generate:2:mux_i|Mux0~3_combout\ : std_logic;
SIGNAL \inst2|inst|mux_1|mux_1|mux_generate:2:mux_i|Mux0~4_combout\ : std_logic;
SIGNAL \inst2|inst|mux_1|mux_1|mux_generate:2:mux_i|Mux0~5_combout\ : std_logic;
SIGNAL \inst1|dcd|dcd_3|dcd|Mux7~3_combout\ : std_logic;
SIGNAL \inst1|DOUT[15]~52_combout\ : std_logic;
SIGNAL \inst1|DOUT[15]_2612~combout\ : std_logic;
SIGNAL \inst2|inst|reg_gen:4:regs|reg_2|y[2]~feeder_combout\ : std_logic;
SIGNAL \inst2|inst|mux_1|mux_1|mux_generate:2:mux_i|Mux1~6_combout\ : std_logic;
SIGNAL \inst2|inst|mux_1|mux_1|mux_generate:2:mux_i|Mux1~3_combout\ : std_logic;
SIGNAL \inst2|inst|mux_1|mux_1|mux_generate:2:mux_i|Mux1~4_combout\ : std_logic;
SIGNAL \inst2|inst|reg_gen:3:regs|reg_2|y[2]~feeder_combout\ : std_logic;
SIGNAL \inst2|inst|mux_1|mux_1|mux_generate:2:mux_i|Mux1~2_combout\ : std_logic;
SIGNAL \inst2|inst|mux_1|mux_1|mux_generate:2:mux_i|Mux1~5_combout\ : std_logic;
SIGNAL \inst1|DOUT[13]~265_combout\ : std_logic;
SIGNAL \inst1|DOUT[13]~23_combout\ : std_logic;
SIGNAL \inst1|DOUT[15]~47_combout\ : std_logic;
SIGNAL \inst2|inst|reg_gen:3:regs|reg_2|y[1]~feeder_combout\ : std_logic;
SIGNAL \inst2|inst|mux_2|mux_1|mux_generate:2:mux_i|Mux2~0_combout\ : std_logic;
SIGNAL \inst2|inst|mux_2|mux_1|mux_generate:2:mux_i|Mux2~1_combout\ : std_logic;
SIGNAL \inst2|inst|mux_2|mux_1|mux_generate:2:mux_i|Mux2~2_combout\ : std_logic;
SIGNAL \inst2|inst|mux_2|mux_1|mux_generate:2:mux_i|Mux2~3_combout\ : std_logic;
SIGNAL \inst2|inst|mux_2|mux_1|mux_generate:2:mux_i|Mux2~4_combout\ : std_logic;
SIGNAL \inst1|reg_gen:31:regs|y[1]~feeder_combout\ : std_logic;
SIGNAL \inst1|dec_to_en[31]~0_combout\ : std_logic;
SIGNAL \inst1|DOUT[9]~155_combout\ : std_logic;
SIGNAL \inst1|DOUT[13]~40_combout\ : std_logic;
SIGNAL \inst1|DOUT[13]~37_combout\ : std_logic;
SIGNAL \inst1|reg_gen:10:regs|y[1]~feeder_combout\ : std_logic;
SIGNAL \inst1|dec_to_en[13]~10_combout\ : std_logic;
SIGNAL \inst1|reg_gen:30:regs|y[1]~feeder_combout\ : std_logic;
SIGNAL \inst1|dec_to_en[25]~11_combout\ : std_logic;
SIGNAL \inst1|DOUT[9]~166_combout\ : std_logic;
SIGNAL \inst1|DOUT[9]~167_combout\ : std_logic;
SIGNAL \inst1|DOUT[9]~168_combout\ : std_logic;
SIGNAL \inst1|DOUT[9]~169_combout\ : std_logic;
SIGNAL \inst1|dec_to_en~2_combout\ : std_logic;
SIGNAL \inst1|reg_gen:13:regs|y[1]~feeder_combout\ : std_logic;
SIGNAL \inst1|reg_gen:9:regs|y[1]~feeder_combout\ : std_logic;
SIGNAL \inst1|reg_gen:25:regs|y[1]~feeder_combout\ : std_logic;
SIGNAL \inst1|DOUT[9]~170_combout\ : std_logic;
SIGNAL \inst1|DOUT[9]~171_combout\ : std_logic;
SIGNAL \inst1|DOUT[9]~172_combout\ : std_logic;
SIGNAL \inst1|reg_gen:12:regs|y[1]~feeder_combout\ : std_logic;
SIGNAL \inst1|reg_gen:28:regs|y[1]~feeder_combout\ : std_logic;
SIGNAL \inst1|DOUT[9]~164_combout\ : std_logic;
SIGNAL \inst1|reg_gen:18:regs|y[1]~feeder_combout\ : std_logic;
SIGNAL \inst1|reg_gen:8:regs|y[1]~feeder_combout\ : std_logic;
SIGNAL \inst1|dec_to_en[8]~5_combout\ : std_logic;
SIGNAL \inst1|dec_to_en[8]~6_combout\ : std_logic;
SIGNAL \inst1|dec_to_en[24]~7_combout\ : std_logic;
SIGNAL \inst1|dec_to_en[24]~8_combout\ : std_logic;
SIGNAL \inst1|DOUT[9]~160_combout\ : std_logic;
SIGNAL \inst1|DOUT[9]~161_combout\ : std_logic;
SIGNAL \inst1|reg_gen:22:regs|y[1]~feeder_combout\ : std_logic;
SIGNAL \inst1|reg_gen:6:regs|y[1]~feeder_combout\ : std_logic;
SIGNAL \inst1|DOUT[9]~162_combout\ : std_logic;
SIGNAL \inst1|DOUT[9]~163_combout\ : std_logic;
SIGNAL \inst1|DOUT[13]~34_combout\ : std_logic;
SIGNAL \inst1|DOUT[9]~165_combout\ : std_logic;
SIGNAL \inst1|DOUT[9]~173_combout\ : std_logic;
SIGNAL \inst1|reg_gen:21:regs|y[1]~feeder_combout\ : std_logic;
SIGNAL \inst1|reg_gen:17:regs|y[1]~feeder_combout\ : std_logic;
SIGNAL \inst1|reg_gen:19:regs|y[1]~feeder_combout\ : std_logic;
SIGNAL \inst1|reg_gen:23:regs|y[1]~feeder_combout\ : std_logic;
SIGNAL \inst1|reg_gen:7:regs|y[1]~feeder_combout\ : std_logic;
SIGNAL \inst1|DOUT[9]~156_combout\ : std_logic;
SIGNAL \inst1|DOUT[9]~157_combout\ : std_logic;
SIGNAL \inst1|DOUT[9]~158_combout\ : std_logic;
SIGNAL \inst1|DOUT[9]~159_combout\ : std_logic;
SIGNAL \inst1|DOUT[9]~174_combout\ : std_logic;
SIGNAL \inst1|DOUT[15]~52clkctrl_outclk\ : std_logic;
SIGNAL \inst1|DOUT[9]$latch~0_combout\ : std_logic;
SIGNAL \inst1|comb~1_combout\ : std_logic;
SIGNAL \inst1|dcd|dcd_0|D[1]~1_combout\ : std_logic;
SIGNAL \inst1|DOUT[9]$latch~combout\ : std_logic;
SIGNAL \inst2|inst|mux_1|mux_1|mux_generate:1:mux_i|Mux0~6_combout\ : std_logic;
SIGNAL \inst2|inst|mux_1|mux_1|mux_generate:1:mux_i|Mux0~3_combout\ : std_logic;
SIGNAL \inst2|inst|mux_1|mux_1|mux_generate:1:mux_i|Mux0~4_combout\ : std_logic;
SIGNAL \inst2|inst|mux_1|mux_1|mux_generate:1:mux_i|Mux0~2_combout\ : std_logic;
SIGNAL \inst2|inst|mux_1|mux_1|mux_generate:1:mux_i|Mux0~5_combout\ : std_logic;
SIGNAL \inst2|inst|mux_2|mux_1|mux_generate:1:mux_i|Mux2~0_combout\ : std_logic;
SIGNAL \inst2|inst|mux_2|mux_1|mux_generate:1:mux_i|Mux2~1_combout\ : std_logic;
SIGNAL \inst2|inst|mux_2|mux_1|mux_generate:1:mux_i|Mux2~2_combout\ : std_logic;
SIGNAL \inst2|inst|mux_2|mux_1|mux_generate:1:mux_i|Mux2~3_combout\ : std_logic;
SIGNAL \inst2|inst|mux_2|mux_1|mux_generate:1:mux_i|Mux2~4_combout\ : std_logic;
SIGNAL \inst1|reg_gen:30:regs|y[5]~feeder_combout\ : std_logic;
SIGNAL \inst1|reg_gen:20:regs|y[5]~feeder_combout\ : std_logic;
SIGNAL \inst1|reg_gen:6:regs|y[5]~feeder_combout\ : std_logic;
SIGNAL \inst1|reg_gen:22:regs|y[5]~feeder_combout\ : std_logic;
SIGNAL \inst1|DOUT[13]~82_combout\ : std_logic;
SIGNAL \inst1|DOUT[5]~216_combout\ : std_logic;
SIGNAL \inst1|DOUT[5]~217_combout\ : std_logic;
SIGNAL \inst1|DOUT[5]~218_combout\ : std_logic;
SIGNAL \inst2|inst|reg_gen:3:regs|reg_2|y[4]~feeder_combout\ : std_logic;
SIGNAL \inst2|inst|mux_1|mux_1|mux_generate:3:mux_i|Mux3~7_combout\ : std_logic;
SIGNAL \inst2|inst|mux_1|mux_1|mux_generate:3:mux_i|Mux3~13_combout\ : std_logic;
SIGNAL \inst2|inst|mux_1|mux_1|mux_generate:3:mux_i|Mux3~8_combout\ : std_logic;
SIGNAL \inst2|inst|mux_1|mux_1|mux_generate:3:mux_i|Mux3~9_combout\ : std_logic;
SIGNAL \inst2|inst|mux_1|mux_1|mux_generate:3:mux_i|Mux3~10_combout\ : std_logic;
SIGNAL \inst2|inst1|alu3|mux|Mux3~0_combout\ : std_logic;
SIGNAL \inst2|inst1|alu2|adder|C4~0_combout\ : std_logic;
SIGNAL \inst2|inst1|alu3|mux|Mux3~1_combout\ : std_logic;
SIGNAL \inst1|reg_gen:19:regs|y[4]~feeder_combout\ : std_logic;
SIGNAL \inst1|reg_gen:23:regs|y[4]~feeder_combout\ : std_logic;
SIGNAL \inst1|DOUT[12]~96_combout\ : std_logic;
SIGNAL \inst1|DOUT[12]~97_combout\ : std_logic;
SIGNAL \inst1|reg_gen:21:regs|y[4]~feeder_combout\ : std_logic;
SIGNAL \inst1|DOUT[12]~98_combout\ : std_logic;
SIGNAL \inst1|DOUT[12]~99_combout\ : std_logic;
SIGNAL \inst1|reg_gen:18:regs|y[4]~feeder_combout\ : std_logic;
SIGNAL \inst1|DOUT[4]~224_combout\ : std_logic;
SIGNAL \inst1|DOUT[4]~225_combout\ : std_logic;
SIGNAL \inst1|DOUT[4]~226_combout\ : std_logic;
SIGNAL \inst1|reg_gen:8:regs|y[4]~feeder_combout\ : std_logic;
SIGNAL \inst1|DOUT[12]~100_combout\ : std_logic;
SIGNAL \inst1|reg_gen:28:regs|y[4]~feeder_combout\ : std_logic;
SIGNAL \inst1|DOUT[12]~104_combout\ : std_logic;
SIGNAL \inst1|DOUT[5]~22_combout\ : std_logic;
SIGNAL \inst1|DOUT[5]~201_combout\ : std_logic;
SIGNAL \inst1|reg_gen:9:regs|y[4]~feeder_combout\ : std_logic;
SIGNAL \inst1|reg_gen:13:regs|y[4]~feeder_combout\ : std_logic;
SIGNAL \inst1|reg_gen:29:regs|y[4]~feeder_combout\ : std_logic;
SIGNAL \inst1|DOUT[12]~110_combout\ : std_logic;
SIGNAL \inst1|DOUT[12]~111_combout\ : std_logic;
SIGNAL \inst1|DOUT[12]~106_combout\ : std_logic;
SIGNAL \inst1|DOUT[12]~107_combout\ : std_logic;
SIGNAL \inst1|DOUT[4]~228_combout\ : std_logic;
SIGNAL \inst1|DOUT[4]~229_combout\ : std_logic;
SIGNAL \inst1|DOUT[12]~108_combout\ : std_logic;
SIGNAL \inst1|reg_gen:15:regs|y[4]~feeder_combout\ : std_logic;
SIGNAL \inst1|DOUT[4]~227_combout\ : std_logic;
SIGNAL \inst1|DOUT[4]~230_combout\ : std_logic;
SIGNAL \inst1|DOUT[4]~231_combout\ : std_logic;
SIGNAL \inst1|DOUT[4]$latch~0_combout\ : std_logic;
SIGNAL \inst1|DOUT[7]~207_combout\ : std_logic;
SIGNAL \inst1|comb~2_combout\ : std_logic;
SIGNAL \inst1|dcd|dcd_0|D[4]~2_combout\ : std_logic;
SIGNAL \inst1|DOUT[4]$latch~combout\ : std_logic;
SIGNAL \inst3|OUT16B[4]~33_combout\ : std_logic;
SIGNAL \inst2|inst|mux_2|mux_1|mux_generate:1:mux_i|Mux3~0_combout\ : std_logic;
SIGNAL \inst2|inst|mux_2|mux_1|mux_generate:1:mux_i|Mux3~1_combout\ : std_logic;
SIGNAL \inst2|inst|mux_2|mux_1|mux_generate:1:mux_i|Mux3~2_combout\ : std_logic;
SIGNAL \inst2|inst|mux_2|mux_1|mux_generate:1:mux_i|Mux3~3_combout\ : std_logic;
SIGNAL \inst2|inst|mux_2|mux_1|mux_generate:1:mux_i|Mux3~4_combout\ : std_logic;
SIGNAL \inst1|reg_gen:22:regs|y[4]~feeder_combout\ : std_logic;
SIGNAL \inst1|reg_gen:6:regs|y[4]~feeder_combout\ : std_logic;
SIGNAL \inst1|DOUT[12]~102_combout\ : std_logic;
SIGNAL \inst1|DOUT[12]~101_combout\ : std_logic;
SIGNAL \inst1|DOUT[12]~103_combout\ : std_logic;
SIGNAL \inst1|DOUT[12]~109_combout\ : std_logic;
SIGNAL \inst1|DOUT[12]~112_combout\ : std_logic;
SIGNAL \inst1|DOUT[12]~105_combout\ : std_logic;
SIGNAL \inst1|DOUT[12]~113_combout\ : std_logic;
SIGNAL \inst1|reg_gen:31:regs|y[4]~feeder_combout\ : std_logic;
SIGNAL \inst1|DOUT[12]~95_combout\ : std_logic;
SIGNAL \inst1|DOUT[12]~114_combout\ : std_logic;
SIGNAL \inst1|DOUT[12]$latch~0_combout\ : std_logic;
SIGNAL \inst1|dcd|dcd_0|D[3]~0_combout\ : std_logic;
SIGNAL \inst1|comb~0_combout\ : std_logic;
SIGNAL \inst1|DOUT[12]$latch~combout\ : std_logic;
SIGNAL \inst3|OUT16B[12]~25_combout\ : std_logic;
SIGNAL \inst2|inst|mux_2|mux_1|mux_generate:3:mux_i|Mux3~0_combout\ : std_logic;
SIGNAL \inst2|inst|mux_2|mux_1|mux_generate:3:mux_i|Mux3~1_combout\ : std_logic;
SIGNAL \inst2|inst|mux_2|mux_1|mux_generate:3:mux_i|Mux3~2_combout\ : std_logic;
SIGNAL \inst2|inst|mux_2|mux_1|mux_generate:3:mux_i|Mux3~3_combout\ : std_logic;
SIGNAL \inst2|inst|mux_2|mux_1|mux_generate:3:mux_i|Mux3~4_combout\ : std_logic;
SIGNAL \inst2|inst2|OUT16B[12]~31_combout\ : std_logic;
SIGNAL \inst2|inst1|alu3|adder|C[1]~0_combout\ : std_logic;
SIGNAL \inst2|inst2|OUT16B[13]~30_combout\ : std_logic;
SIGNAL \inst2|inst|mux_1|mux_1|mux_generate:3:mux_i|Mux2~6_combout\ : std_logic;
SIGNAL \inst2|inst|mux_1|mux_1|mux_generate:3:mux_i|Mux2~3_combout\ : std_logic;
SIGNAL \inst2|inst|mux_1|mux_1|mux_generate:3:mux_i|Mux2~4_combout\ : std_logic;
SIGNAL \inst2|inst|reg_gen:2:regs|reg_2|y[5]~feeder_combout\ : std_logic;
SIGNAL \inst2|inst|reg_gen:3:regs|reg_2|y[5]~feeder_combout\ : std_logic;
SIGNAL \inst2|inst|mux_1|mux_1|mux_generate:3:mux_i|Mux2~2_combout\ : std_logic;
SIGNAL \inst2|inst|mux_1|mux_1|mux_generate:3:mux_i|Mux2~5_combout\ : std_logic;
SIGNAL \inst2|inst1|alu3|mux|Mux2~0_combout\ : std_logic;
SIGNAL \inst2|inst1|alu3|mux|Mux2~1_combout\ : std_logic;
SIGNAL \inst1|reg_gen:11:regs|y[5]~feeder_combout\ : std_logic;
SIGNAL \inst1|DOUT[13]~88_combout\ : std_logic;
SIGNAL \inst1|reg_gen:26:regs|y[5]~feeder_combout\ : std_logic;
SIGNAL \inst1|DOUT[13]~86_combout\ : std_logic;
SIGNAL \inst1|DOUT[13]~87_combout\ : std_logic;
SIGNAL \inst1|DOUT[13]~89_combout\ : std_logic;
SIGNAL \inst1|DOUT[13]~92_combout\ : std_logic;
SIGNAL \inst1|reg_gen:28:regs|y[5]~feeder_combout\ : std_logic;
SIGNAL \inst1|reg_gen:12:regs|y[5]~feeder_combout\ : std_logic;
SIGNAL \inst1|DOUT[13]~84_combout\ : std_logic;
SIGNAL \inst1|reg_gen:8:regs|y[5]~feeder_combout\ : std_logic;
SIGNAL \inst1|DOUT[13]~80_combout\ : std_logic;
SIGNAL \inst1|DOUT[13]~81_combout\ : std_logic;
SIGNAL \inst1|DOUT[13]~83_combout\ : std_logic;
SIGNAL \inst1|DOUT[13]~85_combout\ : std_logic;
SIGNAL \inst1|DOUT[13]~93_combout\ : std_logic;
SIGNAL \inst1|reg_gen:31:regs|y[5]~feeder_combout\ : std_logic;
SIGNAL \inst1|DOUT[13]~75_combout\ : std_logic;
SIGNAL \inst1|reg_gen:17:regs|y[5]~feeder_combout\ : std_logic;
SIGNAL \inst1|reg_gen:19:regs|y[5]~feeder_combout\ : std_logic;
SIGNAL \inst1|reg_gen:23:regs|y[5]~feeder_combout\ : std_logic;
SIGNAL \inst1|reg_gen:7:regs|y[5]~feeder_combout\ : std_logic;
SIGNAL \inst1|DOUT[13]~76_combout\ : std_logic;
SIGNAL \inst1|DOUT[13]~77_combout\ : std_logic;
SIGNAL \inst1|DOUT[13]~78_combout\ : std_logic;
SIGNAL \inst1|DOUT[13]~79_combout\ : std_logic;
SIGNAL \inst1|DOUT[13]~94_combout\ : std_logic;
SIGNAL \inst1|DOUT[13]$latch~combout\ : std_logic;
SIGNAL \inst3|OUT16B[13]~24_combout\ : std_logic;
SIGNAL \inst2|inst|mux_2|mux_1|mux_generate:3:mux_i|Mux2~1_combout\ : std_logic;
SIGNAL \inst2|inst|mux_2|mux_1|mux_generate:3:mux_i|Mux2~2_combout\ : std_logic;
SIGNAL \inst2|inst|mux_2|mux_1|mux_generate:3:mux_i|Mux2~3_combout\ : std_logic;
SIGNAL \inst2|inst|mux_2|mux_1|mux_generate:3:mux_i|Mux2~0_combout\ : std_logic;
SIGNAL \inst2|inst|mux_2|mux_1|mux_generate:3:mux_i|Mux2~4_combout\ : std_logic;
SIGNAL \inst1|reg_gen:25:regs|y[5]~feeder_combout\ : std_logic;
SIGNAL \inst1|reg_gen:9:regs|y[5]~feeder_combout\ : std_logic;
SIGNAL \inst1|DOUT[13]~90_combout\ : std_logic;
SIGNAL \inst1|reg_gen:29:regs|y[5]~feeder_combout\ : std_logic;
SIGNAL \inst1|DOUT[13]~91_combout\ : std_logic;
SIGNAL \inst1|DOUT[5]~220_combout\ : std_logic;
SIGNAL \inst1|DOUT[5]~221_combout\ : std_logic;
SIGNAL \inst1|DOUT[5]~219_combout\ : std_logic;
SIGNAL \inst1|DOUT[5]~222_combout\ : std_logic;
SIGNAL \inst1|DOUT[5]~223_combout\ : std_logic;
SIGNAL \inst1|DOUT[5]$latch~combout\ : std_logic;
SIGNAL \inst2|inst2|OUT16B[5]~25_combout\ : std_logic;
SIGNAL \inst2|inst1|alu1|mux|Mux2~0_combout\ : std_logic;
SIGNAL \inst2|inst|mux_1|mux_1|mux_generate:1:mux_i|Mux3~2_combout\ : std_logic;
SIGNAL \inst2|inst|mux_1|mux_1|mux_generate:1:mux_i|Mux3~6_combout\ : std_logic;
SIGNAL \inst2|inst|mux_1|mux_1|mux_generate:1:mux_i|Mux3~3_combout\ : std_logic;
SIGNAL \inst2|inst|mux_1|mux_1|mux_generate:1:mux_i|Mux3~4_combout\ : std_logic;
SIGNAL \inst2|inst|mux_1|mux_1|mux_generate:1:mux_i|Mux3~5_combout\ : std_logic;
SIGNAL \inst4|inst1|INS_OUT[3]~9_combout\ : std_logic;
SIGNAL \inst2|inst2|OUT16B[3]~20_combout\ : std_logic;
SIGNAL \inst2|inst1|alu0|adder|C[3]~2_combout\ : std_logic;
SIGNAL \inst2|inst1|alu0|adder|C4~0_combout\ : std_logic;
SIGNAL \inst2|inst2|OUT16B[4]~19_combout\ : std_logic;
SIGNAL \inst2|inst1|alu1|adder|C[1]~0_combout\ : std_logic;
SIGNAL \inst2|inst1|alu1|mux|Mux2~1_combout\ : std_logic;
SIGNAL \inst3|OUT16B[5]~32_combout\ : std_logic;
SIGNAL \inst2|inst|mux_1|mux_1|mux_generate:1:mux_i|Mux2~2_combout\ : std_logic;
SIGNAL \inst2|inst|mux_1|mux_1|mux_generate:1:mux_i|Mux2~6_combout\ : std_logic;
SIGNAL \inst2|inst|mux_1|mux_1|mux_generate:1:mux_i|Mux2~3_combout\ : std_logic;
SIGNAL \inst2|inst|mux_1|mux_1|mux_generate:1:mux_i|Mux2~4_combout\ : std_logic;
SIGNAL \inst2|inst|mux_1|mux_1|mux_generate:1:mux_i|Mux2~5_combout\ : std_logic;
SIGNAL \inst2|inst1|alu1|adder|C[2]~1_combout\ : std_logic;
SIGNAL \inst2|inst|reg_gen:2:regs|reg_1|y[6]~feeder_combout\ : std_logic;
SIGNAL \inst2|inst|mux_2|mux_1|mux_generate:1:mux_i|Mux1~0_combout\ : std_logic;
SIGNAL \inst2|inst|mux_2|mux_1|mux_generate:1:mux_i|Mux1~1_combout\ : std_logic;
SIGNAL \inst2|inst|mux_2|mux_1|mux_generate:1:mux_i|Mux1~2_combout\ : std_logic;
SIGNAL \inst2|inst|mux_2|mux_1|mux_generate:1:mux_i|Mux1~3_combout\ : std_logic;
SIGNAL \inst2|inst|mux_2|mux_1|mux_generate:1:mux_i|Mux1~4_combout\ : std_logic;
SIGNAL \inst2|inst2|OUT16B[6]~24_combout\ : std_logic;
SIGNAL \inst2|inst1|alu1|mux|Mux1~0_combout\ : std_logic;
SIGNAL \inst2|inst1|alu1|mux|Mux1~1_combout\ : std_logic;
SIGNAL \inst2|inst|reg_gen:3:regs|reg_2|y[6]~feeder_combout\ : std_logic;
SIGNAL \inst2|inst|mux_1|mux_1|mux_generate:3:mux_i|Mux1~2_combout\ : std_logic;
SIGNAL \inst2|inst|mux_1|mux_1|mux_generate:3:mux_i|Mux1~6_combout\ : std_logic;
SIGNAL \inst2|inst|mux_1|mux_1|mux_generate:3:mux_i|Mux1~3_combout\ : std_logic;
SIGNAL \inst2|inst|reg_gen:4:regs|reg_2|y[6]~feeder_combout\ : std_logic;
SIGNAL \inst2|inst|mux_1|mux_1|mux_generate:3:mux_i|Mux1~4_combout\ : std_logic;
SIGNAL \inst2|inst|mux_1|mux_1|mux_generate:3:mux_i|Mux1~5_combout\ : std_logic;
SIGNAL \inst2|inst2|OUT16B[14]~29_combout\ : std_logic;
SIGNAL \inst2|inst1|alu3|mux|Mux1~1_combout\ : std_logic;
SIGNAL \inst4|inst1|INS_OUT[5]~7_combout\ : std_logic;
SIGNAL \inst2|inst1|alu3|adder|S[2]~0_combout\ : std_logic;
SIGNAL \inst2|inst1|alu3|adder|C[2]~1_combout\ : std_logic;
SIGNAL \inst2|inst1|alu3|mux|Mux1~0_combout\ : std_logic;
SIGNAL \inst2|inst1|alu3|mux|Mux1~2_combout\ : std_logic;
SIGNAL \inst1|reg_gen:29:regs|y[6]~feeder_combout\ : std_logic;
SIGNAL \inst1|reg_gen:25:regs|y[6]~feeder_combout\ : std_logic;
SIGNAL \inst1|reg_gen:9:regs|y[6]~feeder_combout\ : std_logic;
SIGNAL \inst1|DOUT[14]~70_combout\ : std_logic;
SIGNAL \inst1|DOUT[14]~71_combout\ : std_logic;
SIGNAL \inst1|reg_gen:10:regs|y[6]~feeder_combout\ : std_logic;
SIGNAL \inst1|DOUT[14]~66_combout\ : std_logic;
SIGNAL \inst1|DOUT[14]~67_combout\ : std_logic;
SIGNAL \inst1|reg_gen:11:regs|y[6]~feeder_combout\ : std_logic;
SIGNAL \inst1|DOUT[14]~68_combout\ : std_logic;
SIGNAL \inst1|DOUT[14]~69_combout\ : std_logic;
SIGNAL \inst1|DOUT[14]~72_combout\ : std_logic;
SIGNAL \inst1|reg_gen:28:regs|y[6]~feeder_combout\ : std_logic;
SIGNAL \inst1|reg_gen:12:regs|y[6]~feeder_combout\ : std_logic;
SIGNAL \inst1|DOUT[14]~64_combout\ : std_logic;
SIGNAL \inst1|DOUT[14]~65_combout\ : std_logic;
SIGNAL \inst1|reg_gen:18:regs|y[6]~feeder_combout\ : std_logic;
SIGNAL \inst1|reg_gen:20:regs|y[6]~feeder_combout\ : std_logic;
SIGNAL \inst1|DOUT[14]~60_combout\ : std_logic;
SIGNAL \inst1|DOUT[14]~61_combout\ : std_logic;
SIGNAL \inst1|reg_gen:6:regs|y[6]~feeder_combout\ : std_logic;
SIGNAL \inst1|reg_gen:22:regs|y[6]~feeder_combout\ : std_logic;
SIGNAL \inst1|DOUT[14]~62_combout\ : std_logic;
SIGNAL \inst1|DOUT[14]~63_combout\ : std_logic;
SIGNAL \inst1|DOUT[14]~73_combout\ : std_logic;
SIGNAL \inst1|reg_gen:31:regs|y[6]~feeder_combout\ : std_logic;
SIGNAL \inst1|DOUT[14]~55_combout\ : std_logic;
SIGNAL \inst1|DOUT[14]~59_combout\ : std_logic;
SIGNAL \inst1|DOUT[14]~74_combout\ : std_logic;
SIGNAL \inst1|DOUT[14]$latch~combout\ : std_logic;
SIGNAL \inst3|OUT16B[14]~23_combout\ : std_logic;
SIGNAL \inst2|inst|reg_gen:2:regs|reg_2|y[6]~feeder_combout\ : std_logic;
SIGNAL \inst2|inst|mux_2|mux_1|mux_generate:3:mux_i|Mux1~0_combout\ : std_logic;
SIGNAL \inst2|inst|mux_2|mux_1|mux_generate:3:mux_i|Mux1~1_combout\ : std_logic;
SIGNAL \inst2|inst|mux_2|mux_1|mux_generate:3:mux_i|Mux1~2_combout\ : std_logic;
SIGNAL \inst2|inst|mux_2|mux_1|mux_generate:3:mux_i|Mux1~3_combout\ : std_logic;
SIGNAL \inst2|inst|mux_2|mux_1|mux_generate:3:mux_i|Mux1~4_combout\ : std_logic;
SIGNAL \inst1|reg_gen:17:regs|y[6]~feeder_combout\ : std_logic;
SIGNAL \inst1|reg_gen:21:regs|y[6]~feeder_combout\ : std_logic;
SIGNAL \inst1|reg_gen:19:regs|y[6]~feeder_combout\ : std_logic;
SIGNAL \inst1|reg_gen:7:regs|y[6]~feeder_combout\ : std_logic;
SIGNAL \inst1|reg_gen:23:regs|y[6]~feeder_combout\ : std_logic;
SIGNAL \inst1|DOUT[14]~56_combout\ : std_logic;
SIGNAL \inst1|DOUT[14]~57_combout\ : std_logic;
SIGNAL \inst1|DOUT[14]~58_combout\ : std_logic;
SIGNAL \inst1|DOUT[6]~212_combout\ : std_logic;
SIGNAL \inst1|DOUT[6]~213_combout\ : std_logic;
SIGNAL \inst1|DOUT[6]~211_combout\ : std_logic;
SIGNAL \inst1|DOUT[6]~214_combout\ : std_logic;
SIGNAL \inst1|DOUT[6]~208_combout\ : std_logic;
SIGNAL \inst1|DOUT[6]~209_combout\ : std_logic;
SIGNAL \inst1|DOUT[6]~210_combout\ : std_logic;
SIGNAL \inst1|DOUT[6]~215_combout\ : std_logic;
SIGNAL \inst1|DOUT[6]$latch~combout\ : std_logic;
SIGNAL \inst3|OUT16B[6]~31_combout\ : std_logic;
SIGNAL \inst2|inst|mux_1|mux_1|mux_generate:1:mux_i|Mux1~2_combout\ : std_logic;
SIGNAL \inst2|inst|mux_1|mux_1|mux_generate:1:mux_i|Mux1~6_combout\ : std_logic;
SIGNAL \inst2|inst|mux_1|mux_1|mux_generate:1:mux_i|Mux1~3_combout\ : std_logic;
SIGNAL \inst2|inst|mux_1|mux_1|mux_generate:1:mux_i|Mux1~4_combout\ : std_logic;
SIGNAL \inst2|inst|mux_1|mux_1|mux_generate:1:mux_i|Mux1~5_combout\ : std_logic;
SIGNAL \inst2|inst1|alu1|adder|C[3]~2_combout\ : std_logic;
SIGNAL \inst2|inst1|alu1|mux|Mux0~0_combout\ : std_logic;
SIGNAL \inst2|inst1|alu1|mux|Mux0~1_combout\ : std_logic;
SIGNAL \inst1|reg_gen:18:regs|y[7]~feeder_combout\ : std_logic;
SIGNAL \inst1|reg_gen:6:regs|y[7]~feeder_combout\ : std_logic;
SIGNAL \inst1|reg_gen:22:regs|y[7]~feeder_combout\ : std_logic;
SIGNAL \inst1|DOUT[15]~32_combout\ : std_logic;
SIGNAL \inst1|DOUT[7]~195_combout\ : std_logic;
SIGNAL \inst1|reg_gen:20:regs|y[7]~feeder_combout\ : std_logic;
SIGNAL \inst1|DOUT[7]~196_combout\ : std_logic;
SIGNAL \inst1|DOUT[7]~199_combout\ : std_logic;
SIGNAL \inst1|reg_gen:12:regs|y[7]~feeder_combout\ : std_logic;
SIGNAL \inst1|DOUT[15]~35_combout\ : std_logic;
SIGNAL \inst2|inst2|OUT16B[15]~28_combout\ : std_logic;
SIGNAL \inst2|inst|mux_1|mux_1|mux_generate:3:mux_i|Mux0~6_combout\ : std_logic;
SIGNAL \inst2|inst|mux_1|mux_1|mux_generate:3:mux_i|Mux0~3_combout\ : std_logic;
SIGNAL \inst2|inst|mux_1|mux_1|mux_generate:3:mux_i|Mux0~4_combout\ : std_logic;
SIGNAL \inst2|inst|reg_gen:2:regs|reg_2|y[7]~feeder_combout\ : std_logic;
SIGNAL \inst2|inst|mux_1|mux_1|mux_generate:3:mux_i|Mux0~2_combout\ : std_logic;
SIGNAL \inst2|inst|mux_1|mux_1|mux_generate:3:mux_i|Mux0~5_combout\ : std_logic;
SIGNAL \inst2|inst1|alu3|mux|Mux0~0_combout\ : std_logic;
SIGNAL \inst2|inst1|alu3|adder|S[3]~1_combout\ : std_logic;
SIGNAL \inst2|inst1|alu3|adder|C[3]~2_combout\ : std_logic;
SIGNAL \inst2|inst1|alu3|mux|Mux0~2_combout\ : std_logic;
SIGNAL \inst1|DOUT[15]~4_combout\ : std_logic;
SIGNAL \inst3|OUT16B[15]~22_combout\ : std_logic;
SIGNAL \inst2|inst|reg_gen:3:regs|reg_2|y[7]~feeder_combout\ : std_logic;
SIGNAL \inst2|inst|mux_2|mux_1|mux_generate:3:mux_i|Mux0~0_combout\ : std_logic;
SIGNAL \inst2|inst|mux_2|mux_1|mux_generate:3:mux_i|Mux0~1_combout\ : std_logic;
SIGNAL \inst2|inst|mux_2|mux_1|mux_generate:3:mux_i|Mux0~2_combout\ : std_logic;
SIGNAL \inst2|inst|mux_2|mux_1|mux_generate:3:mux_i|Mux0~3_combout\ : std_logic;
SIGNAL \inst2|inst|mux_2|mux_1|mux_generate:3:mux_i|Mux0~4_combout\ : std_logic;
SIGNAL \inst1|reg_gen:9:regs|y[7]~feeder_combout\ : std_logic;
SIGNAL \inst1|reg_gen:25:regs|y[7]~feeder_combout\ : std_logic;
SIGNAL \inst1|DOUT[15]~43_combout\ : std_logic;
SIGNAL \inst1|reg_gen:13:regs|y[7]~feeder_combout\ : std_logic;
SIGNAL \inst1|DOUT[15]~44_combout\ : std_logic;
SIGNAL \inst1|reg_gen:8:regs|y[7]~feeder_combout\ : std_logic;
SIGNAL \inst1|DOUT[15]~30_combout\ : std_logic;
SIGNAL \inst1|DOUT[7]~202_combout\ : std_logic;
SIGNAL \inst1|reg_gen:10:regs|y[7]~feeder_combout\ : std_logic;
SIGNAL \inst1|DOUT[15]~38_combout\ : std_logic;
SIGNAL \inst1|DOUT[15]~39_combout\ : std_logic;
SIGNAL \inst1|DOUT[7]~203_combout\ : std_logic;
SIGNAL \inst1|reg_gen:17:regs|y[7]~feeder_combout\ : std_logic;
SIGNAL \inst1|reg_gen:23:regs|y[7]~feeder_combout\ : std_logic;
SIGNAL \inst1|reg_gen:7:regs|y[7]~feeder_combout\ : std_logic;
SIGNAL \inst1|DOUT[15]~25_combout\ : std_logic;
SIGNAL \inst1|DOUT[15]~26_combout\ : std_logic;
SIGNAL \inst1|DOUT[15]~27_combout\ : std_logic;
SIGNAL \inst1|reg_gen:27:regs|y[7]~feeder_combout\ : std_logic;
SIGNAL \inst1|reg_gen:11:regs|y[7]~feeder_combout\ : std_logic;
SIGNAL \inst1|DOUT[15]~41_combout\ : std_logic;
SIGNAL \inst1|DOUT[7]~200_combout\ : std_logic;
SIGNAL \inst1|DOUT[7]~204_combout\ : std_logic;
SIGNAL \inst1|DOUT[7]~206_combout\ : std_logic;
SIGNAL \inst1|DOUT[7]$latch~combout\ : std_logic;
SIGNAL \inst3|OUT16B[7]~30_combout\ : std_logic;
SIGNAL \inst2|inst|reg_gen:5:regs|reg_1|y[7]~feeder_combout\ : std_logic;
SIGNAL \inst2|inst|mux_2|mux_1|mux_generate:1:mux_i|Mux0~1_combout\ : std_logic;
SIGNAL \inst2|inst|mux_2|mux_1|mux_generate:1:mux_i|Mux0~2_combout\ : std_logic;
SIGNAL \inst2|inst|mux_2|mux_1|mux_generate:1:mux_i|Mux0~3_combout\ : std_logic;
SIGNAL \inst2|inst|mux_2|mux_1|mux_generate:1:mux_i|Mux0~0_combout\ : std_logic;
SIGNAL \inst2|inst|mux_2|mux_1|mux_generate:1:mux_i|Mux0~4_combout\ : std_logic;
SIGNAL \inst2|inst2|OUT16B[7]~23_combout\ : std_logic;
SIGNAL \inst2|inst1|alu1|adder|C4~0_combout\ : std_logic;
SIGNAL \inst2|inst|mux_2|mux_1|mux_generate:2:mux_i|Mux3~1_combout\ : std_logic;
SIGNAL \inst2|inst|mux_2|mux_1|mux_generate:2:mux_i|Mux3~2_combout\ : std_logic;
SIGNAL \inst2|inst|mux_2|mux_1|mux_generate:2:mux_i|Mux3~3_combout\ : std_logic;
SIGNAL \inst2|inst|mux_2|mux_1|mux_generate:2:mux_i|Mux3~0_combout\ : std_logic;
SIGNAL \inst2|inst|mux_2|mux_1|mux_generate:2:mux_i|Mux3~4_combout\ : std_logic;
SIGNAL \inst2|inst2|OUT16B[8]~22_combout\ : std_logic;
SIGNAL \inst2|inst1|alu2|mux|Mux3~0_combout\ : std_logic;
SIGNAL \inst2|inst1|alu2|mux|Mux3~1_combout\ : std_logic;
SIGNAL \inst1|reg_gen:17:regs|y[0]~feeder_combout\ : std_logic;
SIGNAL \inst1|reg_gen:19:regs|y[0]~feeder_combout\ : std_logic;
SIGNAL \inst1|reg_gen:7:regs|y[0]~feeder_combout\ : std_logic;
SIGNAL \inst1|reg_gen:23:regs|y[0]~feeder_combout\ : std_logic;
SIGNAL \inst1|DOUT[8]~176_combout\ : std_logic;
SIGNAL \inst1|DOUT[8]~177_combout\ : std_logic;
SIGNAL \inst1|DOUT[8]~178_combout\ : std_logic;
SIGNAL \inst1|DOUT[8]~179_combout\ : std_logic;
SIGNAL \inst1|reg_gen:31:regs|y[0]~feeder_combout\ : std_logic;
SIGNAL \inst1|DOUT[8]~175_combout\ : std_logic;
SIGNAL \inst2|inst|mux_2|mux_1|mux_generate:0:mux_i|Mux3~1_combout\ : std_logic;
SIGNAL \inst2|inst|mux_2|mux_1|mux_generate:0:mux_i|Mux3~2_combout\ : std_logic;
SIGNAL \inst2|inst|mux_2|mux_1|mux_generate:0:mux_i|Mux3~3_combout\ : std_logic;
SIGNAL \inst2|inst|mux_2|mux_1|mux_generate:0:mux_i|Mux3~4_combout\ : std_logic;
SIGNAL \inst1|reg_gen:12:regs|y[0]~feeder_combout\ : std_logic;
SIGNAL \inst1|reg_gen:28:regs|y[0]~feeder_combout\ : std_logic;
SIGNAL \inst1|DOUT[8]~184_combout\ : std_logic;
SIGNAL \inst1|DOUT[8]~185_combout\ : std_logic;
SIGNAL \inst1|DOUT[8]~186_combout\ : std_logic;
SIGNAL \inst1|reg_gen:14:regs|y[0]~feeder_combout\ : std_logic;
SIGNAL \inst1|DOUT[8]~187_combout\ : std_logic;
SIGNAL \inst1|reg_gen:11:regs|y[0]~feeder_combout\ : std_logic;
SIGNAL \inst1|DOUT[8]~188_combout\ : std_logic;
SIGNAL \inst1|DOUT[8]~189_combout\ : std_logic;
SIGNAL \inst1|reg_gen:25:regs|y[0]~feeder_combout\ : std_logic;
SIGNAL \inst1|reg_gen:29:regs|y[0]~feeder_combout\ : std_logic;
SIGNAL \inst1|DOUT[8]~190_combout\ : std_logic;
SIGNAL \inst1|reg_gen:13:regs|y[0]~feeder_combout\ : std_logic;
SIGNAL \inst1|reg_gen:9:regs|y[0]~feeder_combout\ : std_logic;
SIGNAL \inst1|DOUT[8]~191_combout\ : std_logic;
SIGNAL \inst1|DOUT[8]~192_combout\ : std_logic;
SIGNAL \inst1|reg_gen:20:regs|y[0]~feeder_combout\ : std_logic;
SIGNAL \inst1|reg_gen:8:regs|y[0]~feeder_combout\ : std_logic;
SIGNAL \inst1|DOUT[8]~180_combout\ : std_logic;
SIGNAL \inst1|DOUT[8]~181_combout\ : std_logic;
SIGNAL \inst1|reg_gen:18:regs|y[0]~feeder_combout\ : std_logic;
SIGNAL \inst1|reg_gen:6:regs|y[0]~feeder_combout\ : std_logic;
SIGNAL \inst1|reg_gen:22:regs|y[0]~feeder_combout\ : std_logic;
SIGNAL \inst1|DOUT[8]~182_combout\ : std_logic;
SIGNAL \inst1|DOUT[8]~183_combout\ : std_logic;
SIGNAL \inst1|DOUT[8]~193_combout\ : std_logic;
SIGNAL \inst1|DOUT[8]~194_combout\ : std_logic;
SIGNAL \inst1|DOUT[8]$latch~0_combout\ : std_logic;
SIGNAL \inst1|DOUT[8]$latch~combout\ : std_logic;
SIGNAL \inst3|OUT16B[8]~26_combout\ : std_logic;
SIGNAL \inst2|inst|mux_1|mux_1|mux_generate:2:mux_i|Mux3~6_combout\ : std_logic;
SIGNAL \inst2|inst|mux_1|mux_1|mux_generate:2:mux_i|Mux3~3_combout\ : std_logic;
SIGNAL \inst2|inst|mux_1|mux_1|mux_generate:2:mux_i|Mux3~4_combout\ : std_logic;
SIGNAL \inst2|inst|mux_1|mux_1|mux_generate:2:mux_i|Mux3~2_combout\ : std_logic;
SIGNAL \inst2|inst|mux_1|mux_1|mux_generate:2:mux_i|Mux3~5_combout\ : std_logic;
SIGNAL \inst2|inst1|alu2|adder|C[1]~0_combout\ : std_logic;
SIGNAL \inst2|inst2|OUT16B[9]~21_combout\ : std_logic;
SIGNAL \inst2|inst1|alu2|mux|Mux2~0_combout\ : std_logic;
SIGNAL \inst2|inst1|alu2|mux|Mux2~1_combout\ : std_logic;
SIGNAL \inst3|OUT16B[9]~29_combout\ : std_logic;
SIGNAL \inst2|inst|mux_1|mux_1|mux_generate:2:mux_i|Mux2~2_combout\ : std_logic;
SIGNAL \inst2|inst|mux_1|mux_1|mux_generate:2:mux_i|Mux2~6_combout\ : std_logic;
SIGNAL \inst2|inst|mux_1|mux_1|mux_generate:2:mux_i|Mux2~3_combout\ : std_logic;
SIGNAL \inst2|inst|mux_1|mux_1|mux_generate:2:mux_i|Mux2~4_combout\ : std_logic;
SIGNAL \inst2|inst|mux_1|mux_1|mux_generate:2:mux_i|Mux2~5_combout\ : std_logic;
SIGNAL \inst2|inst1|alu2|adder|C[2]~1_combout\ : std_logic;
SIGNAL \inst2|inst1|alu2|mux|Mux1~0_combout\ : std_logic;
SIGNAL \inst2|inst1|alu2|mux|Mux1~1_combout\ : std_logic;
SIGNAL \inst1|reg_gen:17:regs|y[2]~feeder_combout\ : std_logic;
SIGNAL \inst1|reg_gen:21:regs|y[2]~feeder_combout\ : std_logic;
SIGNAL \inst1|reg_gen:19:regs|y[2]~feeder_combout\ : std_logic;
SIGNAL \inst1|reg_gen:23:regs|y[2]~feeder_combout\ : std_logic;
SIGNAL \inst1|reg_gen:7:regs|y[2]~feeder_combout\ : std_logic;
SIGNAL \inst1|DOUT[10]~136_combout\ : std_logic;
SIGNAL \inst1|DOUT[10]~137_combout\ : std_logic;
SIGNAL \inst1|DOUT[10]~138_combout\ : std_logic;
SIGNAL \inst1|DOUT[10]~139_combout\ : std_logic;
SIGNAL \inst1|reg_gen:18:regs|y[2]~feeder_combout\ : std_logic;
SIGNAL \inst1|reg_gen:20:regs|y[2]~feeder_combout\ : std_logic;
SIGNAL \inst1|reg_gen:8:regs|y[2]~feeder_combout\ : std_logic;
SIGNAL \inst1|DOUT[10]~140_combout\ : std_logic;
SIGNAL \inst1|DOUT[10]~141_combout\ : std_logic;
SIGNAL \inst1|reg_gen:22:regs|y[2]~feeder_combout\ : std_logic;
SIGNAL \inst1|reg_gen:6:regs|y[2]~feeder_combout\ : std_logic;
SIGNAL \inst1|DOUT[10]~142_combout\ : std_logic;
SIGNAL \inst1|DOUT[10]~143_combout\ : std_logic;
SIGNAL \inst1|reg_gen:13:regs|y[2]~feeder_combout\ : std_logic;
SIGNAL \inst1|reg_gen:9:regs|y[2]~feeder_combout\ : std_logic;
SIGNAL \inst1|reg_gen:29:regs|y[2]~feeder_combout\ : std_logic;
SIGNAL \inst1|reg_gen:25:regs|y[2]~feeder_combout\ : std_logic;
SIGNAL \inst1|DOUT[10]~150_combout\ : std_logic;
SIGNAL \inst1|DOUT[10]~151_combout\ : std_logic;
SIGNAL \inst1|reg_gen:11:regs|y[2]~feeder_combout\ : std_logic;
SIGNAL \inst1|DOUT[10]~148_combout\ : std_logic;
SIGNAL \inst1|DOUT[10]~149_combout\ : std_logic;
SIGNAL \inst1|reg_gen:10:regs|y[2]~feeder_combout\ : std_logic;
SIGNAL \inst1|DOUT[10]~146_combout\ : std_logic;
SIGNAL \inst1|DOUT[10]~147_combout\ : std_logic;
SIGNAL \inst1|DOUT[10]~152_combout\ : std_logic;
SIGNAL \inst1|reg_gen:12:regs|y[2]~feeder_combout\ : std_logic;
SIGNAL \inst1|reg_gen:28:regs|y[2]~feeder_combout\ : std_logic;
SIGNAL \inst1|DOUT[10]~144_combout\ : std_logic;
SIGNAL \inst1|DOUT[10]~145_combout\ : std_logic;
SIGNAL \inst1|DOUT[10]~153_combout\ : std_logic;
SIGNAL \inst1|DOUT[10]~135_combout\ : std_logic;
SIGNAL \inst1|DOUT[10]~154_combout\ : std_logic;
SIGNAL \inst1|DOUT[10]$latch~0_combout\ : std_logic;
SIGNAL \inst1|DOUT[10]$latch~combout\ : std_logic;
SIGNAL \inst3|OUT16B[10]~28_combout\ : std_logic;
SIGNAL \inst2|inst|mux_2|mux_1|mux_generate:2:mux_i|Mux1~0_combout\ : std_logic;
SIGNAL \inst2|inst|mux_2|mux_1|mux_generate:2:mux_i|Mux1~1_combout\ : std_logic;
SIGNAL \inst2|inst|mux_2|mux_1|mux_generate:2:mux_i|Mux1~2_combout\ : std_logic;
SIGNAL \inst2|inst|mux_2|mux_1|mux_generate:2:mux_i|Mux1~3_combout\ : std_logic;
SIGNAL \inst2|inst|mux_2|mux_1|mux_generate:2:mux_i|Mux1~4_combout\ : std_logic;
SIGNAL \inst2|inst2|OUT16B[10]~33_combout\ : std_logic;
SIGNAL \inst2|inst1|alu2|adder|C[3]~2_combout\ : std_logic;
SIGNAL \inst2|inst1|alu2|mux|Mux0~0_combout\ : std_logic;
SIGNAL \inst2|inst1|alu2|mux|Mux0~1_combout\ : std_logic;
SIGNAL \inst1|reg_gen:13:regs|y[3]~feeder_combout\ : std_logic;
SIGNAL \inst1|reg_gen:29:regs|y[3]~feeder_combout\ : std_logic;
SIGNAL \inst1|reg_gen:25:regs|y[3]~feeder_combout\ : std_logic;
SIGNAL \inst1|DOUT[11]~130_combout\ : std_logic;
SIGNAL \inst1|DOUT[11]~131_combout\ : std_logic;
SIGNAL \inst1|reg_gen:11:regs|y[3]~feeder_combout\ : std_logic;
SIGNAL \inst1|reg_gen:27:regs|y[3]~feeder_combout\ : std_logic;
SIGNAL \inst1|DOUT[11]~128_combout\ : std_logic;
SIGNAL \inst1|DOUT[11]~126_combout\ : std_logic;
SIGNAL \inst1|reg_gen:10:regs|y[3]~feeder_combout\ : std_logic;
SIGNAL \inst1|DOUT[11]~127_combout\ : std_logic;
SIGNAL \inst1|DOUT[11]~129_combout\ : std_logic;
SIGNAL \inst1|DOUT[11]~132_combout\ : std_logic;
SIGNAL \inst1|reg_gen:8:regs|y[3]~feeder_combout\ : std_logic;
SIGNAL \inst1|reg_gen:24:regs|y[3]~feeder_combout\ : std_logic;
SIGNAL \inst1|DOUT[11]~120_combout\ : std_logic;
SIGNAL \inst1|DOUT[11]~121_combout\ : std_logic;
SIGNAL \inst1|DOUT[11]~123_combout\ : std_logic;
SIGNAL \inst1|reg_gen:12:regs|y[3]~feeder_combout\ : std_logic;
SIGNAL \inst1|reg_gen:28:regs|y[3]~feeder_combout\ : std_logic;
SIGNAL \inst1|DOUT[11]~124_combout\ : std_logic;
SIGNAL \inst1|DOUT[11]~125_combout\ : std_logic;
SIGNAL \inst1|DOUT[11]~133_combout\ : std_logic;
SIGNAL \inst1|reg_gen:31:regs|y[3]~feeder_combout\ : std_logic;
SIGNAL \inst1|DOUT[11]~115_combout\ : std_logic;
SIGNAL \inst1|reg_gen:19:regs|y[3]~feeder_combout\ : std_logic;
SIGNAL \inst1|reg_gen:23:regs|y[3]~feeder_combout\ : std_logic;
SIGNAL \inst1|reg_gen:7:regs|y[3]~feeder_combout\ : std_logic;
SIGNAL \inst1|DOUT[11]~116_combout\ : std_logic;
SIGNAL \inst1|DOUT[11]~117_combout\ : std_logic;
SIGNAL \inst1|reg_gen:17:regs|y[3]~feeder_combout\ : std_logic;
SIGNAL \inst1|reg_gen:21:regs|y[3]~feeder_combout\ : std_logic;
SIGNAL \inst1|DOUT[11]~118_combout\ : std_logic;
SIGNAL \inst1|DOUT[11]~119_combout\ : std_logic;
SIGNAL \inst1|DOUT[11]~134_combout\ : std_logic;
SIGNAL \inst1|DOUT[11]$latch~combout\ : std_logic;
SIGNAL \inst3|OUT16B[11]~27_combout\ : std_logic;
SIGNAL \inst2|inst|mux_2|mux_1|mux_generate:2:mux_i|Mux0~1_combout\ : std_logic;
SIGNAL \inst2|inst|mux_2|mux_1|mux_generate:2:mux_i|Mux0~2_combout\ : std_logic;
SIGNAL \inst2|inst|mux_2|mux_1|mux_generate:2:mux_i|Mux0~3_combout\ : std_logic;
SIGNAL \inst2|inst|mux_2|mux_1|mux_generate:2:mux_i|Mux0~0_combout\ : std_logic;
SIGNAL \inst2|inst|mux_2|mux_1|mux_generate:2:mux_i|Mux0~4_combout\ : std_logic;
SIGNAL \inst1|reg_gen:15:regs|y[3]~feeder_combout\ : std_logic;
SIGNAL \inst1|DOUT[3]~236_combout\ : std_logic;
SIGNAL \inst1|DOUT[3]~237_combout\ : std_logic;
SIGNAL \inst1|DOUT[3]~235_combout\ : std_logic;
SIGNAL \inst1|DOUT[3]~238_combout\ : std_logic;
SIGNAL \inst1|DOUT[3]~239_combout\ : std_logic;
SIGNAL \inst1|DOUT[3]$latch~combout\ : std_logic;
SIGNAL \inst3|OUT16B[3]~34_combout\ : std_logic;
SIGNAL \inst2|inst|mux_1|mux_1|mux_generate:0:mux_i|Mux0~2_combout\ : std_logic;
SIGNAL \inst2|inst|mux_1|mux_1|mux_generate:0:mux_i|Mux0~6_combout\ : std_logic;
SIGNAL \inst2|inst|mux_1|mux_1|mux_generate:0:mux_i|Mux0~3_combout\ : std_logic;
SIGNAL \inst2|inst|mux_1|mux_1|mux_generate:0:mux_i|Mux0~4_combout\ : std_logic;
SIGNAL \inst2|inst|mux_1|mux_1|mux_generate:0:mux_i|Mux0~5_combout\ : std_logic;
SIGNAL \inst2|inst1|alu0|mux|Mux0~2_combout\ : std_logic;
SIGNAL \inst2|inst1|alu0|mux|Mux0~0_combout\ : std_logic;
SIGNAL \inst2|inst1|alu0|mux|Mux0~1_combout\ : std_logic;
SIGNAL \inst2|inst1|alu0|mux|Mux0~3_combout\ : std_logic;
SIGNAL \inst1|DOUT[2]~240_combout\ : std_logic;
SIGNAL \inst1|DOUT[2]~241_combout\ : std_logic;
SIGNAL \inst1|DOUT[2]~242_combout\ : std_logic;
SIGNAL \inst1|DOUT[2]~244_combout\ : std_logic;
SIGNAL \inst1|DOUT[2]~245_combout\ : std_logic;
SIGNAL \inst1|DOUT[2]~243_combout\ : std_logic;
SIGNAL \inst1|DOUT[2]~246_combout\ : std_logic;
SIGNAL \inst1|DOUT[2]~247_combout\ : std_logic;
SIGNAL \inst1|DOUT[2]$latch~0_combout\ : std_logic;
SIGNAL \inst1|comb~3_combout\ : std_logic;
SIGNAL \inst1|dcd|dcd_0|D[2]~3_combout\ : std_logic;
SIGNAL \inst1|DOUT[2]$latch~combout\ : std_logic;
SIGNAL \inst3|OUT16B[2]~35_combout\ : std_logic;
SIGNAL \inst2|inst|mux_2|mux_1|mux_generate:0:mux_i|Mux1~0_combout\ : std_logic;
SIGNAL \inst2|inst|mux_2|mux_1|mux_generate:0:mux_i|Mux1~1_combout\ : std_logic;
SIGNAL \inst2|inst|mux_2|mux_1|mux_generate:0:mux_i|Mux1~2_combout\ : std_logic;
SIGNAL \inst2|inst|mux_2|mux_1|mux_generate:0:mux_i|Mux1~3_combout\ : std_logic;
SIGNAL \inst2|inst|mux_2|mux_1|mux_generate:0:mux_i|Mux1~4_combout\ : std_logic;
SIGNAL \inst2|inst2|OUT16B[2]~17_combout\ : std_logic;
SIGNAL \inst2|inst1|alu0|mux|Mux1~2_combout\ : std_logic;
SIGNAL \inst2|inst1|alu0|mux|Mux1~3_combout\ : std_logic;
SIGNAL \inst1|DOUT[15]~49_combout\ : std_logic;
SIGNAL \inst1|DOUT[15]~50_combout\ : std_logic;
SIGNAL \inst1|DOUT[15]~51_combout\ : std_logic;
SIGNAL \inst1|DOUT[7]_2052~combout\ : std_logic;
SIGNAL \inst1|DOUT[0]~261_combout\ : std_logic;
SIGNAL \inst1|DOUT[0]~262_combout\ : std_logic;
SIGNAL \inst1|DOUT[0]~260_combout\ : std_logic;
SIGNAL \inst1|DOUT[0]~263_combout\ : std_logic;
SIGNAL \inst1|DOUT[0]~257_combout\ : std_logic;
SIGNAL \inst1|DOUT[0]~258_combout\ : std_logic;
SIGNAL \inst1|DOUT[0]~259_combout\ : std_logic;
SIGNAL \inst1|DOUT[0]~264_combout\ : std_logic;
SIGNAL \inst1|DOUT[0]$latch~0_combout\ : std_logic;
SIGNAL \inst1|DOUT[1]~256_combout\ : std_logic;
SIGNAL \inst1|comb~5_combout\ : std_logic;
SIGNAL \inst1|comb~4_combout\ : std_logic;
SIGNAL \inst1|DOUT[0]$latch~combout\ : std_logic;
SIGNAL \inst3|OUT16B[0]~37_combout\ : std_logic;
SIGNAL \inst2|inst|reg_gen:2:regs|reg_1|y[0]~feeder_combout\ : std_logic;
SIGNAL \inst2|inst|mux_2|mux_1|mux_generate:0:mux_i|Mux3~0_combout\ : std_logic;
SIGNAL \inst2|inst2|OUT16B[0]~16_combout\ : std_logic;
SIGNAL \inst2|inst2|OUT16B[0]~18_combout\ : std_logic;
SIGNAL \inst1|DOUT[13]~21_combout\ : std_logic;
SIGNAL \inst1|DOUT[7]~205_combout\ : std_logic;
SIGNAL \inst1|DOUT[1]~252_combout\ : std_logic;
SIGNAL \inst1|DOUT[1]~253_combout\ : std_logic;
SIGNAL \inst1|DOUT[1]~251_combout\ : std_logic;
SIGNAL \inst1|DOUT[1]~254_combout\ : std_logic;
SIGNAL \inst1|DOUT[1]~248_combout\ : std_logic;
SIGNAL \inst1|DOUT[1]~249_combout\ : std_logic;
SIGNAL \inst1|DOUT[1]~250_combout\ : std_logic;
SIGNAL \inst1|DOUT[1]~255_combout\ : std_logic;
SIGNAL \inst1|DOUT[1]$latch~0_combout\ : std_logic;
SIGNAL \inst1|DOUT[1]$latch~combout\ : std_logic;
SIGNAL \inst3|OUT16B[1]~36_combout\ : std_logic;
SIGNAL \inst2|inst|reg_gen:3:regs|reg_1|y[1]~feeder_combout\ : std_logic;
SIGNAL \inst2|inst|mux_1|mux_1|mux_generate:0:mux_i|Mux2~2_combout\ : std_logic;
SIGNAL \inst2|inst|mux_1|mux_1|mux_generate:0:mux_i|Mux2~6_combout\ : std_logic;
SIGNAL \inst2|inst|mux_1|mux_1|mux_generate:0:mux_i|Mux2~3_combout\ : std_logic;
SIGNAL \inst2|inst|mux_1|mux_1|mux_generate:0:mux_i|Mux2~4_combout\ : std_logic;
SIGNAL \inst2|inst|mux_1|mux_1|mux_generate:0:mux_i|Mux2~5_combout\ : std_logic;
SIGNAL \inst2|inst2|OUT16B[1]~26_combout\ : std_logic;
SIGNAL \inst2|inst1|alu0|mux|Mux2~0_combout\ : std_logic;
SIGNAL \inst2|inst1|alu0|mux|Mux2~1_combout\ : std_logic;
SIGNAL \inst1|dcd|dcd_3|dcd|Mux7~0_combout\ : std_logic;
SIGNAL \inst|Mux3~3_combout\ : std_logic;
SIGNAL \inst2|inst1|alu3|mux|Mux0~1_combout\ : std_logic;
SIGNAL \inst|Mux3~2_combout\ : std_logic;
SIGNAL \inst|Mux3~4_combout\ : std_logic;
SIGNAL \inst|Mux9~0_combout\ : std_logic;
SIGNAL \inst|Mux3~5_combout\ : std_logic;
SIGNAL \inst|Mux3~6_combout\ : std_logic;
SIGNAL \inst4|JUMPMUX|OUT16B[1]~14_combout\ : std_logic;
SIGNAL \inst4|inst2|alu0|alu0|adder|C~0_combout\ : std_logic;
SIGNAL \inst4|inst3|add_1|C[3]~0_combout\ : std_logic;
SIGNAL \inst4|inst7|OUT16B[3]~12_combout\ : std_logic;
SIGNAL \inst4|inst1|data_out[1]~11_combout\ : std_logic;
SIGNAL \inst4|inst1|INS_OUT[1]~11_combout\ : std_logic;
SIGNAL \inst4|inst7|OUT16B[2]~13_combout\ : std_logic;
SIGNAL \inst4|inst1|data_out[4]~6_combout\ : std_logic;
SIGNAL \inst4|inst1|INS_OUT[4]~8_combout\ : std_logic;
SIGNAL \inst4|inst2|alu0|alu0|adder|COUT~0_combout\ : std_logic;
SIGNAL \inst4|inst3|add_1|C4~0_combout\ : std_logic;
SIGNAL \inst4|inst3|add_2|C[1]~0_combout\ : std_logic;
SIGNAL \inst4|inst2|alu0|alu1|adder|C~0_combout\ : std_logic;
SIGNAL \inst4|inst7|OUT16B[5]~10_combout\ : std_logic;
SIGNAL \inst2|inst|mux_1|mux_1|mux_generate:3:mux_i|Mux3~11_combout\ : std_logic;
SIGNAL \inst4|inst3|add_2|C[2]~1_combout\ : std_logic;
SIGNAL \inst4|inst2|alu0|alu1|adder|C~2_combout\ : std_logic;
SIGNAL \inst4|inst7|OUT16B[6]~9_combout\ : std_logic;
SIGNAL \inst4|inst3|add_2|C[3]~2_combout\ : std_logic;
SIGNAL \inst4|inst7|OUT16B[7]~8_combout\ : std_logic;
SIGNAL \inst4|inst1|data_out[6]~20_combout\ : std_logic;
SIGNAL \inst4|inst1|INS_OUT[6]~14_combout\ : std_logic;
SIGNAL \inst4|inst1|INS_OUT[8]~16_combout\ : std_logic;
SIGNAL \inst4|inst2|alu0|alu1|adder|C~1_combout\ : std_logic;
SIGNAL \inst4|inst3|add_2|C4~0_combout\ : std_logic;
SIGNAL \inst4|inst7|OUT16B[8]~7_combout\ : std_logic;
SIGNAL \inst4|inst3|add_3|C[1]~0_combout\ : std_logic;
SIGNAL \inst4|inst2|alu0|alu2|adder|C~1_combout\ : std_logic;
SIGNAL \inst4|inst7|OUT16B[9]~6_combout\ : std_logic;
SIGNAL \inst4|inst2|alu0|alu2|adder|C~0_combout\ : std_logic;
SIGNAL \inst4|inst3|add_3|C[2]~1_combout\ : std_logic;
SIGNAL \inst4|inst1|INS_OUT[9]~13_combout\ : std_logic;
SIGNAL \inst4|inst7|OUT16B[10]~5_combout\ : std_logic;
SIGNAL \inst4|inst3|add_3|C[3]~2_combout\ : std_logic;
SIGNAL \inst4|inst7|OUT16B[11]~4_combout\ : std_logic;
SIGNAL \inst4|inst3|add_4|S[0]~2_combout\ : std_logic;
SIGNAL \inst4|inst3|add_4|S[0]~3_combout\ : std_logic;
SIGNAL \inst4|JUMPMUX|OUT16B[12]~6_combout\ : std_logic;
SIGNAL \inst4|inst2|alu0|alu3|adder|C~0_combout\ : std_logic;
SIGNAL \inst4|inst3|add_4|C[1]~0_combout\ : std_logic;
SIGNAL \inst4|inst2|alu0|alu3|adder|C~1_combout\ : std_logic;
SIGNAL \inst4|inst3|add_4|C[2]~1_combout\ : std_logic;
SIGNAL \inst4|inst3|add_4|C[3]~2_combout\ : std_logic;
SIGNAL \inst4|inst1|exception~1_combout\ : std_logic;
SIGNAL \inst4|inst1|exception~0_combout\ : std_logic;
SIGNAL \inst4|inst1|exception~2_combout\ : std_logic;
SIGNAL \inst4|inst1|data_out[13]~0_combout\ : std_logic;
SIGNAL \inst4|inst1|INS_OUT[13]~4_combout\ : std_logic;
SIGNAL \inst|Mux2~0_combout\ : std_logic;
SIGNAL \inst4|inst7|OUT16B[4]~11_combout\ : std_logic;
SIGNAL \inst4|inst1|data_out[2]~10_combout\ : std_logic;
SIGNAL \inst4|inst1|INS_OUT[2]~10_combout\ : std_logic;
SIGNAL \inst2|inst3|DOUT[2]~3_combout\ : std_logic;
SIGNAL \inst2|inst1|alu1|mux|Mux3~0_combout\ : std_logic;
SIGNAL \inst2|inst1|alu1|mux|Mux3~1_combout\ : std_logic;
SIGNAL \inst|Mux3~7_combout\ : std_logic;
SIGNAL \inst1|DOUT[15]~53_combout\ : std_logic;
SIGNAL \inst1|DOUT[15]~54_combout\ : std_logic;
SIGNAL \inst1|DOUT[15]~42_combout\ : std_logic;
SIGNAL \inst1|DOUT[15]~45_combout\ : std_logic;
SIGNAL \inst1|DOUT[15]~31_combout\ : std_logic;
SIGNAL \inst1|DOUT[15]~33_combout\ : std_logic;
SIGNAL \inst1|DOUT[15]~36_combout\ : std_logic;
SIGNAL \inst1|DOUT[15]~46_combout\ : std_logic;
SIGNAL \inst1|reg_gen:31:regs|y[7]~feeder_combout\ : std_logic;
SIGNAL \inst1|DOUT[15]~24_combout\ : std_logic;
SIGNAL \inst1|DOUT[15]~28_combout\ : std_logic;
SIGNAL \inst1|DOUT[15]~48_combout\ : std_logic;
SIGNAL \inst1|DOUT[15]$latch~combout\ : std_logic;
SIGNAL \inst4|inst3|add_3|S[0]~4_combout\ : std_logic;
SIGNAL \inst4|inst3|add_2|S[3]~2_combout\ : std_logic;
SIGNAL \inst6|Mux0~0_combout\ : std_logic;
SIGNAL \inst6|Mux1~0_combout\ : std_logic;
SIGNAL \inst6|Mux2~0_combout\ : std_logic;
SIGNAL \inst6|Mux3~0_combout\ : std_logic;
SIGNAL \inst6|Mux4~0_combout\ : std_logic;
SIGNAL \inst6|Mux5~0_combout\ : std_logic;
SIGNAL \inst6|Mux6~0_combout\ : std_logic;
SIGNAL \inst5|Mux0~0_combout\ : std_logic;
SIGNAL \inst5|Mux1~0_combout\ : std_logic;
SIGNAL \inst5|Mux2~0_combout\ : std_logic;
SIGNAL \inst5|Mux3~0_combout\ : std_logic;
SIGNAL \inst5|Mux4~0_combout\ : std_logic;
SIGNAL \inst5|Mux5~0_combout\ : std_logic;
SIGNAL \inst5|Mux6~0_combout\ : std_logic;
SIGNAL \inst8|Mux0~0_combout\ : std_logic;
SIGNAL \inst8|Mux1~0_combout\ : std_logic;
SIGNAL \inst8|Mux2~0_combout\ : std_logic;
SIGNAL \inst8|Mux3~0_combout\ : std_logic;
SIGNAL \inst8|Mux4~0_combout\ : std_logic;
SIGNAL \inst8|Mux5~0_combout\ : std_logic;
SIGNAL \inst8|Mux6~0_combout\ : std_logic;
SIGNAL \inst7|Mux0~0_combout\ : std_logic;
SIGNAL \inst7|Mux1~0_combout\ : std_logic;
SIGNAL \inst7|Mux2~0_combout\ : std_logic;
SIGNAL \inst7|Mux3~0_combout\ : std_logic;
SIGNAL \inst7|Mux4~0_combout\ : std_logic;
SIGNAL \inst7|Mux5~0_combout\ : std_logic;
SIGNAL \inst7|Mux6~0_combout\ : std_logic;
SIGNAL \inst10|Mux0~2_combout\ : std_logic;
SIGNAL \inst10|Mux0~3_combout\ : std_logic;
SIGNAL \inst10|Mux1~2_combout\ : std_logic;
SIGNAL \inst10|Mux1~3_combout\ : std_logic;
SIGNAL \inst10|Mux2~2_combout\ : std_logic;
SIGNAL \inst10|Mux2~3_combout\ : std_logic;
SIGNAL \inst10|Mux3~2_combout\ : std_logic;
SIGNAL \inst10|Mux3~3_combout\ : std_logic;
SIGNAL \inst10|Mux4~2_combout\ : std_logic;
SIGNAL \inst10|Mux4~3_combout\ : std_logic;
SIGNAL \inst10|Mux5~2_combout\ : std_logic;
SIGNAL \inst10|Mux5~3_combout\ : std_logic;
SIGNAL \inst10|Mux6~2_combout\ : std_logic;
SIGNAL \inst10|Mux6~3_combout\ : std_logic;
SIGNAL \inst9|Mux0~2_combout\ : std_logic;
SIGNAL \inst9|Mux0~3_combout\ : std_logic;
SIGNAL \inst9|Mux1~2_combout\ : std_logic;
SIGNAL \inst9|Mux1~3_combout\ : std_logic;
SIGNAL \inst9|Mux2~2_combout\ : std_logic;
SIGNAL \inst9|Mux2~3_combout\ : std_logic;
SIGNAL \inst9|Mux3~2_combout\ : std_logic;
SIGNAL \inst9|Mux3~3_combout\ : std_logic;
SIGNAL \inst9|Mux4~2_combout\ : std_logic;
SIGNAL \inst9|Mux4~3_combout\ : std_logic;
SIGNAL \inst9|Mux5~2_combout\ : std_logic;
SIGNAL \inst9|Mux5~3_combout\ : std_logic;
SIGNAL \inst9|Mux6~2_combout\ : std_logic;
SIGNAL \inst9|Mux6~3_combout\ : std_logic;
SIGNAL \inst12|Mux0~2_combout\ : std_logic;
SIGNAL \inst12|Mux0~3_combout\ : std_logic;
SIGNAL \inst12|Mux1~2_combout\ : std_logic;
SIGNAL \inst12|Mux1~3_combout\ : std_logic;
SIGNAL \inst12|Mux2~2_combout\ : std_logic;
SIGNAL \inst12|Mux2~3_combout\ : std_logic;
SIGNAL \inst12|Mux3~2_combout\ : std_logic;
SIGNAL \inst12|Mux3~3_combout\ : std_logic;
SIGNAL \inst12|Mux4~2_combout\ : std_logic;
SIGNAL \inst12|Mux4~3_combout\ : std_logic;
SIGNAL \inst12|Mux5~2_combout\ : std_logic;
SIGNAL \inst12|Mux5~3_combout\ : std_logic;
SIGNAL \inst12|Mux6~2_combout\ : std_logic;
SIGNAL \inst12|Mux6~3_combout\ : std_logic;
SIGNAL \inst11|Mux0~2_combout\ : std_logic;
SIGNAL \inst11|Mux0~3_combout\ : std_logic;
SIGNAL \inst11|Mux1~2_combout\ : std_logic;
SIGNAL \inst11|Mux1~3_combout\ : std_logic;
SIGNAL \inst11|Mux2~2_combout\ : std_logic;
SIGNAL \inst11|Mux2~3_combout\ : std_logic;
SIGNAL \inst11|Mux3~2_combout\ : std_logic;
SIGNAL \inst11|Mux3~3_combout\ : std_logic;
SIGNAL \inst11|Mux4~2_combout\ : std_logic;
SIGNAL \inst11|Mux4~3_combout\ : std_logic;
SIGNAL \inst11|Mux5~2_combout\ : std_logic;
SIGNAL \inst11|Mux5~3_combout\ : std_logic;
SIGNAL \inst11|Mux6~2_combout\ : std_logic;
SIGNAL \inst11|Mux6~3_combout\ : std_logic;
SIGNAL \inst4|inst7|OUT16B[15]~2_combout\ : std_logic;
SIGNAL \inst4|inst7|OUT16B[14]~3_combout\ : std_logic;
SIGNAL \inst4|inst7|OUT16B[13]~16_combout\ : std_logic;
SIGNAL \inst4|JUMPMUX|OUT16B[11]~7_combout\ : std_logic;
SIGNAL \inst4|JUMPMUX|OUT16B[10]~8_combout\ : std_logic;
SIGNAL \inst4|JUMPMUX|OUT16B[9]~9_combout\ : std_logic;
SIGNAL \inst4|JUMPMUX|OUT16B[8]~15_combout\ : std_logic;
SIGNAL \inst4|JUMPMUX|OUT16B[7]~10_combout\ : std_logic;
SIGNAL \inst4|JUMPMUX|OUT16B[6]~16_combout\ : std_logic;
SIGNAL \inst4|JUMPMUX|OUT16B[5]~11_combout\ : std_logic;
SIGNAL \inst4|JUMPMUX|OUT16B[4]~12_combout\ : std_logic;
SIGNAL \inst4|JUMPMUX|OUT16B[3]~13_combout\ : std_logic;
SIGNAL \inst4|JUMPMUX|OUT16B[2]~17_combout\ : std_logic;
SIGNAL \inst4|inst7|OUT16B[12]~14_combout\ : std_logic;
SIGNAL \inst4|inst7|OUT16B[1]~15_combout\ : std_logic;
SIGNAL \inst1|reg_gen:20:regs|y\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \inst4|inst|reg|reg_1|y\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \inst2|inst|reg_gen:3:regs|reg_1|y\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \inst1|reg_gen:19:regs|y\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \inst4|inst|reg|reg_2|y\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \inst2|inst|reg_gen:6:regs|reg_1|y\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \inst2|inst|reg_gen:2:regs|reg_1|y\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \inst2|inst|reg_gen:1:regs|reg_1|y\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \inst2|inst|reg_gen:5:regs|reg_1|y\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \inst2|inst|reg_gen:4:regs|reg_1|y\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \inst2|inst|reg_gen:3:regs|reg_2|y\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \inst2|inst1|alu0|inverter|Rt\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \inst2|inst1|alu0|adder|G\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \inst1|reg_gen:27:regs|y\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \inst2|inst1|alu0|adder|S\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \inst2|inst|reg_gen:2:regs|reg_2|y\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \inst2|inst|reg_gen:5:regs|reg_2|y\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \inst4|inst|to_pc\ : std_logic_vector(15 DOWNTO 0);
SIGNAL \inst2|inst|reg_gen:4:regs|reg_2|y\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \inst4|inst2|alu0|alu1|adder|S\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \inst2|inst|reg_gen:6:regs|reg_2|y\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \inst2|inst|reg_gen:1:regs|reg_2|y\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \inst1|reg_gen:29:regs|y\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \inst2|inst1|alu2|adder|S\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \inst2|inst1|alu1|adder|S\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \inst4|inst2|alu0|alu3|adder|S\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \inst2|inst1|alu3|adder|S\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \inst1|reg_gen:14:regs|y\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \inst4|inst2|alu0|alu2|adder|S\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \inst4|inst3|add_4|S\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \inst4|inst3|add_3|S\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \inst4|inst3|add_2|S\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \inst4|inst3|add_1|S\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \inst1|reg_gen:24:regs|y\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \inst4|inst3|add_1|P\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \inst4|inst2|alu0|alu0|adder|S\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \inst1|reg_gen:31:regs|y\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \inst1|reg_gen:17:regs|y\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \inst1|reg_gen:7:regs|y\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \inst1|reg_gen:23:regs|y\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \inst1|reg_gen:21:regs|y\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \inst1|reg_gen:16:regs|y\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \inst1|reg_gen:18:regs|y\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \inst1|reg_gen:8:regs|y\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \inst1|reg_gen:6:regs|y\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \inst1|reg_gen:22:regs|y\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \inst1|reg_gen:12:regs|y\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \inst1|reg_gen:28:regs|y\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \inst1|reg_gen:15:regs|y\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \inst1|reg_gen:30:regs|y\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \inst1|reg_gen:10:regs|y\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \inst1|dec_to_en\ : std_logic_vector(32 DOWNTO 0);
SIGNAL \inst1|reg_gen:26:regs|y\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \inst1|reg_gen:11:regs|y\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \inst1|reg_gen:9:regs|y\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \inst1|reg_gen:25:regs|y\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \inst1|reg_gen:13:regs|y\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \inst11|ALT_INV_Mux6~3_combout\ : std_logic;
SIGNAL \inst12|ALT_INV_Mux6~3_combout\ : std_logic;
SIGNAL \inst9|ALT_INV_Mux6~3_combout\ : std_logic;
SIGNAL \inst10|ALT_INV_Mux6~3_combout\ : std_logic;
SIGNAL \inst4|inst7|ALT_INV_OUT16B[1]~15_combout\ : std_logic;
SIGNAL \inst7|ALT_INV_Mux6~0_combout\ : std_logic;
SIGNAL \inst8|ALT_INV_Mux6~0_combout\ : std_logic;
SIGNAL \inst5|ALT_INV_Mux6~0_combout\ : std_logic;
SIGNAL \inst6|ALT_INV_Mux6~0_combout\ : std_logic;
SIGNAL \inst4|inst3|add_1|ALT_INV_P\ : std_logic_vector(1 DOWNTO 1);
SIGNAL \inst2|inst1|alu1|mux|ALT_INV_Mux3~1_combout\ : std_logic;
SIGNAL \inst2|inst1|alu0|mux|ALT_INV_Mux2~1_combout\ : std_logic;
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
ww_SW17 <= SW17;
ALUCon <= ww_ALUCon;
ALUSrc <= ww_ALUSrc;
EXTEN_OUT <= ww_EXTEN_OUT;
Branch <= ww_Branch;
PCEnable <= ww_PCEnable;
Jump <= ww_Jump;
ww_SW0 <= SW0;
ALUOp <= ww_ALUOp;
W_REG <= ww_W_REG;
MemtoReg <= ww_MemtoReg;
ALUOUT <= ww_ALUOUT;
MemWrite <= ww_MemWrite;
MemRead <= ww_MemRead;
INS_OUT <= ww_INS_OUT;
BRADDER_OUT <= ww_BRADDER_OUT;
DMEMOUT <= ww_DMEMOUT;
HEX0 <= ww_HEX0;
HEX1 <= ww_HEX1;
HEX2 <= ww_HEX2;
HEX3 <= ww_HEX3;
HEX4 <= ww_HEX4;
HEX5 <= ww_HEX5;
HEX6 <= ww_HEX6;
HEX7 <= ww_HEX7;
JOUT <= ww_JOUT;
JUMPMUX_OUT <= ww_JUMPMUX_OUT;
PCP2 <= ww_PCP2;
REG1OUT <= ww_REG1OUT;
REG2_OUT <= ww_REG2_OUT;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

\inst1|DOUT[15]~52clkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \inst1|DOUT[15]~52_combout\);

\inst1|DOUT[15]~51clkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \inst1|DOUT[15]~51_combout\);
\inst11|ALT_INV_Mux6~3_combout\ <= NOT \inst11|Mux6~3_combout\;
\inst12|ALT_INV_Mux6~3_combout\ <= NOT \inst12|Mux6~3_combout\;
\inst9|ALT_INV_Mux6~3_combout\ <= NOT \inst9|Mux6~3_combout\;
\inst10|ALT_INV_Mux6~3_combout\ <= NOT \inst10|Mux6~3_combout\;
\inst4|inst7|ALT_INV_OUT16B[1]~15_combout\ <= NOT \inst4|inst7|OUT16B[1]~15_combout\;
\inst7|ALT_INV_Mux6~0_combout\ <= NOT \inst7|Mux6~0_combout\;
\inst8|ALT_INV_Mux6~0_combout\ <= NOT \inst8|Mux6~0_combout\;
\inst5|ALT_INV_Mux6~0_combout\ <= NOT \inst5|Mux6~0_combout\;
\inst6|ALT_INV_Mux6~0_combout\ <= NOT \inst6|Mux6~0_combout\;
\inst4|inst3|add_1|ALT_INV_P\(1) <= NOT \inst4|inst3|add_1|P\(1);
\inst2|inst1|alu1|mux|ALT_INV_Mux3~1_combout\ <= NOT \inst2|inst1|alu1|mux|Mux3~1_combout\;
\inst2|inst1|alu0|mux|ALT_INV_Mux2~1_combout\ <= NOT \inst2|inst1|alu0|mux|Mux2~1_combout\;
\inst|ALT_INV_Mux1~0_combout\ <= NOT \inst|Mux1~0_combout\;
\inst4|inst|reg|reg_1|ALT_INV_y\(1) <= NOT \inst4|inst|reg|reg_1|y\(1);
auto_generated_inst : hard_block
PORT MAP (
	devoe => ww_devoe,
	devclrn => ww_devclrn,
	devpor => ww_devpor);

-- Location: IOOBUF_X72_Y73_N9
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

-- Location: IOOBUF_X81_Y73_N2
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

-- Location: IOOBUF_X72_Y73_N23
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

-- Location: IOOBUF_X72_Y73_N16
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

-- Location: IOOBUF_X83_Y73_N16
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

-- Location: IOOBUF_X81_Y73_N23
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

-- Location: IOOBUF_X81_Y73_N16
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

-- Location: IOOBUF_X83_Y73_N9
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

-- Location: IOOBUF_X0_Y12_N23
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

-- Location: IOOBUF_X0_Y8_N23
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

-- Location: IOOBUF_X115_Y4_N16
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

-- Location: IOOBUF_X0_Y12_N16
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

-- Location: IOOBUF_X115_Y5_N16
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

-- Location: IOOBUF_X0_Y4_N2
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

-- Location: IOOBUF_X0_Y4_N9
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

-- Location: IOOBUF_X0_Y4_N23
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

-- Location: IOOBUF_X0_Y22_N16
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

-- Location: IOOBUF_X0_Y22_N23
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

-- Location: IOOBUF_X89_Y73_N23
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

-- Location: IOOBUF_X115_Y24_N2
\ALUSrc~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst|Mux7~0_combout\,
	devoe => ww_devoe,
	o => \ALUSrc~output_o\);

-- Location: IOOBUF_X58_Y73_N2
\EXTEN_OUT[15]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst4|inst1|INS_OUT[5]~7_combout\,
	devoe => ww_devoe,
	o => \EXTEN_OUT[15]~output_o\);

-- Location: IOOBUF_X33_Y73_N2
\EXTEN_OUT[14]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst4|inst1|INS_OUT[5]~7_combout\,
	devoe => ww_devoe,
	o => \EXTEN_OUT[14]~output_o\);

-- Location: IOOBUF_X60_Y73_N2
\EXTEN_OUT[13]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst4|inst1|INS_OUT[5]~7_combout\,
	devoe => ww_devoe,
	o => \EXTEN_OUT[13]~output_o\);

-- Location: IOOBUF_X60_Y73_N9
\EXTEN_OUT[12]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst4|inst1|INS_OUT[5]~7_combout\,
	devoe => ww_devoe,
	o => \EXTEN_OUT[12]~output_o\);

-- Location: IOOBUF_X38_Y73_N9
\EXTEN_OUT[11]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst4|inst1|INS_OUT[5]~7_combout\,
	devoe => ww_devoe,
	o => \EXTEN_OUT[11]~output_o\);

-- Location: IOOBUF_X58_Y73_N9
\EXTEN_OUT[10]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst4|inst1|INS_OUT[5]~7_combout\,
	devoe => ww_devoe,
	o => \EXTEN_OUT[10]~output_o\);

-- Location: IOOBUF_X31_Y73_N9
\EXTEN_OUT[9]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst4|inst1|INS_OUT[5]~7_combout\,
	devoe => ww_devoe,
	o => \EXTEN_OUT[9]~output_o\);

-- Location: IOOBUF_X45_Y73_N2
\EXTEN_OUT[8]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst4|inst1|INS_OUT[5]~7_combout\,
	devoe => ww_devoe,
	o => \EXTEN_OUT[8]~output_o\);

-- Location: IOOBUF_X25_Y73_N23
\EXTEN_OUT[7]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst4|inst1|INS_OUT[5]~7_combout\,
	devoe => ww_devoe,
	o => \EXTEN_OUT[7]~output_o\);

-- Location: IOOBUF_X49_Y73_N23
\EXTEN_OUT[6]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst4|inst1|INS_OUT[5]~7_combout\,
	devoe => ww_devoe,
	o => \EXTEN_OUT[6]~output_o\);

-- Location: IOOBUF_X49_Y73_N16
\EXTEN_OUT[5]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst4|inst1|INS_OUT[5]~7_combout\,
	devoe => ww_devoe,
	o => \EXTEN_OUT[5]~output_o\);

-- Location: IOOBUF_X113_Y73_N2
\EXTEN_OUT[4]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst4|inst1|INS_OUT[4]~8_combout\,
	devoe => ww_devoe,
	o => \EXTEN_OUT[4]~output_o\);

-- Location: IOOBUF_X107_Y73_N9
\EXTEN_OUT[3]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst4|inst1|INS_OUT[3]~9_combout\,
	devoe => ww_devoe,
	o => \EXTEN_OUT[3]~output_o\);

-- Location: IOOBUF_X115_Y64_N2
\EXTEN_OUT[2]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst4|inst1|INS_OUT[2]~10_combout\,
	devoe => ww_devoe,
	o => \EXTEN_OUT[2]~output_o\);

-- Location: IOOBUF_X115_Y68_N16
\EXTEN_OUT[1]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst4|inst1|INS_OUT[1]~11_combout\,
	devoe => ww_devoe,
	o => \EXTEN_OUT[1]~output_o\);

-- Location: IOOBUF_X96_Y73_N16
\EXTEN_OUT[0]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst4|inst1|INS_OUT[0]~12_combout\,
	devoe => ww_devoe,
	o => \EXTEN_OUT[0]~output_o\);

-- Location: IOOBUF_X115_Y27_N2
\Branch~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst|Mux3~6_combout\,
	devoe => ww_devoe,
	o => \Branch~output_o\);

-- Location: IOOBUF_X0_Y30_N9
\PCEnable~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => VCC,
	devoe => ww_devoe,
	o => \PCEnable~output_o\);

-- Location: IOOBUF_X115_Y34_N16
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

-- Location: IOOBUF_X67_Y73_N16
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

-- Location: IOOBUF_X89_Y73_N9
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

-- Location: IOOBUF_X5_Y73_N2
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

-- Location: IOOBUF_X115_Y31_N9
\W_REG[15]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst3|OUT16B[15]~22_combout\,
	devoe => ww_devoe,
	o => \W_REG[15]~output_o\);

-- Location: IOOBUF_X0_Y18_N23
\W_REG[14]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst3|OUT16B[14]~23_combout\,
	devoe => ww_devoe,
	o => \W_REG[14]~output_o\);

-- Location: IOOBUF_X115_Y34_N23
\W_REG[13]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst3|OUT16B[13]~24_combout\,
	devoe => ww_devoe,
	o => \W_REG[13]~output_o\);

-- Location: IOOBUF_X115_Y35_N16
\W_REG[12]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst3|OUT16B[12]~25_combout\,
	devoe => ww_devoe,
	o => \W_REG[12]~output_o\);

-- Location: IOOBUF_X115_Y33_N9
\W_REG[11]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst3|OUT16B[11]~27_combout\,
	devoe => ww_devoe,
	o => \W_REG[11]~output_o\);

-- Location: IOOBUF_X87_Y73_N9
\W_REG[10]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst3|OUT16B[10]~28_combout\,
	devoe => ww_devoe,
	o => \W_REG[10]~output_o\);

-- Location: IOOBUF_X87_Y73_N23
\W_REG[9]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst3|OUT16B[9]~29_combout\,
	devoe => ww_devoe,
	o => \W_REG[9]~output_o\);

-- Location: IOOBUF_X115_Y31_N2
\W_REG[8]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst3|OUT16B[8]~26_combout\,
	devoe => ww_devoe,
	o => \W_REG[8]~output_o\);

-- Location: IOOBUF_X115_Y40_N9
\W_REG[7]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst3|OUT16B[7]~30_combout\,
	devoe => ww_devoe,
	o => \W_REG[7]~output_o\);

-- Location: IOOBUF_X0_Y23_N23
\W_REG[6]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst3|OUT16B[6]~31_combout\,
	devoe => ww_devoe,
	o => \W_REG[6]~output_o\);

-- Location: IOOBUF_X115_Y28_N2
\W_REG[5]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst3|OUT16B[5]~32_combout\,
	devoe => ww_devoe,
	o => \W_REG[5]~output_o\);

-- Location: IOOBUF_X91_Y73_N16
\W_REG[4]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst3|OUT16B[4]~33_combout\,
	devoe => ww_devoe,
	o => \W_REG[4]~output_o\);

-- Location: IOOBUF_X0_Y20_N16
\W_REG[3]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst3|OUT16B[3]~34_combout\,
	devoe => ww_devoe,
	o => \W_REG[3]~output_o\);

-- Location: IOOBUF_X115_Y29_N9
\W_REG[2]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst3|OUT16B[2]~35_combout\,
	devoe => ww_devoe,
	o => \W_REG[2]~output_o\);

-- Location: IOOBUF_X115_Y7_N16
\W_REG[1]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst3|OUT16B[1]~36_combout\,
	devoe => ww_devoe,
	o => \W_REG[1]~output_o\);

-- Location: IOOBUF_X115_Y26_N16
\W_REG[0]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst3|OUT16B[0]~37_combout\,
	devoe => ww_devoe,
	o => \W_REG[0]~output_o\);

-- Location: IOOBUF_X85_Y73_N2
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

-- Location: IOOBUF_X85_Y73_N9
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

-- Location: IOOBUF_X79_Y73_N9
\ALUOUT[14]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst2|inst1|alu3|mux|Mux1~2_combout\,
	devoe => ww_devoe,
	o => \ALUOUT[14]~output_o\);

-- Location: IOOBUF_X115_Y61_N23
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

-- Location: IOOBUF_X0_Y21_N16
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

-- Location: IOOBUF_X115_Y56_N23
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

-- Location: IOOBUF_X115_Y48_N9
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

-- Location: IOOBUF_X85_Y73_N16
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

-- Location: IOOBUF_X115_Y55_N23
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

-- Location: IOOBUF_X0_Y19_N9
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

-- Location: IOOBUF_X115_Y55_N16
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

-- Location: IOOBUF_X115_Y50_N9
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

-- Location: IOOBUF_X115_Y15_N9
\ALUOUT[4]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst2|inst1|alu1|mux|ALT_INV_Mux3~1_combout\,
	devoe => ww_devoe,
	o => \ALUOUT[4]~output_o\);

-- Location: IOOBUF_X115_Y14_N2
\ALUOUT[3]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst2|inst1|alu0|mux|Mux0~3_combout\,
	devoe => ww_devoe,
	o => \ALUOUT[3]~output_o\);

-- Location: IOOBUF_X115_Y18_N9
\ALUOUT[2]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst2|inst1|alu0|mux|Mux1~3_combout\,
	devoe => ww_devoe,
	o => \ALUOUT[2]~output_o\);

-- Location: IOOBUF_X115_Y11_N2
\ALUOUT[1]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst2|inst1|alu0|mux|ALT_INV_Mux2~1_combout\,
	devoe => ww_devoe,
	o => \ALUOUT[1]~output_o\);

-- Location: IOOBUF_X115_Y4_N23
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

-- Location: IOOBUF_X115_Y22_N23
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

-- Location: IOOBUF_X87_Y73_N16
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

-- Location: IOOBUF_X115_Y65_N16
\INS_OUT[15]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst4|inst1|INS_OUT[15]~15_combout\,
	devoe => ww_devoe,
	o => \INS_OUT[15]~output_o\);

-- Location: IOOBUF_X115_Y52_N2
\INS_OUT[14]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst4|inst1|INS_OUT[14]~5_combout\,
	devoe => ww_devoe,
	o => \INS_OUT[14]~output_o\);

-- Location: IOOBUF_X115_Y33_N2
\INS_OUT[13]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst4|inst1|INS_OUT[13]~4_combout\,
	devoe => ww_devoe,
	o => \INS_OUT[13]~output_o\);

-- Location: IOOBUF_X115_Y35_N23
\INS_OUT[12]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst4|inst1|INS_OUT[12]~6_combout\,
	devoe => ww_devoe,
	o => \INS_OUT[12]~output_o\);

-- Location: IOOBUF_X115_Y65_N23
\INS_OUT[11]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst4|inst1|INS_OUT[15]~15_combout\,
	devoe => ww_devoe,
	o => \INS_OUT[11]~output_o\);

-- Location: IOOBUF_X115_Y32_N9
\INS_OUT[10]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst2|inst|mux_1|mux_1|mux_generate:3:mux_i|Mux3~11_combout\,
	devoe => ww_devoe,
	o => \INS_OUT[10]~output_o\);

-- Location: IOOBUF_X115_Y52_N9
\INS_OUT[9]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst4|inst1|INS_OUT[9]~13_combout\,
	devoe => ww_devoe,
	o => \INS_OUT[9]~output_o\);

-- Location: IOOBUF_X115_Y47_N16
\INS_OUT[8]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst4|inst1|INS_OUT[8]~16_combout\,
	devoe => ww_devoe,
	o => \INS_OUT[8]~output_o\);

-- Location: IOOBUF_X115_Y69_N23
\INS_OUT[7]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst4|inst1|INS_OUT[1]~11_combout\,
	devoe => ww_devoe,
	o => \INS_OUT[7]~output_o\);

-- Location: IOOBUF_X115_Y41_N9
\INS_OUT[6]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst4|inst1|INS_OUT[6]~14_combout\,
	devoe => ww_devoe,
	o => \INS_OUT[6]~output_o\);

-- Location: IOOBUF_X25_Y73_N16
\INS_OUT[5]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst4|inst1|INS_OUT[5]~7_combout\,
	devoe => ww_devoe,
	o => \INS_OUT[5]~output_o\);

-- Location: IOOBUF_X113_Y73_N9
\INS_OUT[4]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst4|inst1|INS_OUT[4]~8_combout\,
	devoe => ww_devoe,
	o => \INS_OUT[4]~output_o\);

-- Location: IOOBUF_X107_Y73_N2
\INS_OUT[3]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst4|inst1|INS_OUT[3]~9_combout\,
	devoe => ww_devoe,
	o => \INS_OUT[3]~output_o\);

-- Location: IOOBUF_X115_Y64_N9
\INS_OUT[2]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst4|inst1|INS_OUT[2]~10_combout\,
	devoe => ww_devoe,
	o => \INS_OUT[2]~output_o\);

-- Location: IOOBUF_X115_Y69_N16
\INS_OUT[1]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst4|inst1|INS_OUT[1]~11_combout\,
	devoe => ww_devoe,
	o => \INS_OUT[1]~output_o\);

-- Location: IOOBUF_X96_Y73_N23
\INS_OUT[0]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst4|inst1|INS_OUT[0]~12_combout\,
	devoe => ww_devoe,
	o => \INS_OUT[0]~output_o\);

-- Location: IOOBUF_X115_Y46_N9
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

-- Location: IOOBUF_X115_Y63_N2
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

-- Location: IOOBUF_X100_Y73_N23
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

-- Location: IOOBUF_X115_Y59_N16
\BRADDER_OUT[12]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst4|inst3|add_4|S[0]~3_combout\,
	devoe => ww_devoe,
	o => \BRADDER_OUT[12]~output_o\);

-- Location: IOOBUF_X115_Y57_N23
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

-- Location: IOOBUF_X74_Y73_N16
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

-- Location: IOOBUF_X0_Y23_N16
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

-- Location: IOOBUF_X87_Y73_N2
\BRADDER_OUT[8]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst4|inst3|add_3|S[0]~4_combout\,
	devoe => ww_devoe,
	o => \BRADDER_OUT[8]~output_o\);

-- Location: IOOBUF_X0_Y29_N23
\BRADDER_OUT[7]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst4|inst3|add_2|S[3]~2_combout\,
	devoe => ww_devoe,
	o => \BRADDER_OUT[7]~output_o\);

-- Location: IOOBUF_X0_Y27_N23
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

-- Location: IOOBUF_X115_Y62_N9
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

-- Location: IOOBUF_X115_Y66_N23
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

-- Location: IOOBUF_X102_Y73_N2
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

-- Location: IOOBUF_X115_Y49_N9
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

-- Location: IOOBUF_X115_Y62_N16
\BRADDER_OUT[1]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst4|inst3|add_1|ALT_INV_P\(1),
	devoe => ww_devoe,
	o => \BRADDER_OUT[1]~output_o\);

-- Location: IOOBUF_X0_Y47_N2
\BRADDER_OUT[0]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \BRADDER_OUT[0]~output_o\);

-- Location: IOOBUF_X69_Y73_N23
\HEX0[0]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst6|Mux0~0_combout\,
	devoe => ww_devoe,
	o => \HEX0[0]~output_o\);

-- Location: IOOBUF_X107_Y73_N23
\HEX0[1]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst6|Mux1~0_combout\,
	devoe => ww_devoe,
	o => \HEX0[1]~output_o\);

-- Location: IOOBUF_X67_Y73_N23
\HEX0[2]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst6|Mux2~0_combout\,
	devoe => ww_devoe,
	o => \HEX0[2]~output_o\);

-- Location: IOOBUF_X115_Y50_N2
\HEX0[3]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst6|Mux3~0_combout\,
	devoe => ww_devoe,
	o => \HEX0[3]~output_o\);

-- Location: IOOBUF_X115_Y54_N16
\HEX0[4]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst6|Mux4~0_combout\,
	devoe => ww_devoe,
	o => \HEX0[4]~output_o\);

-- Location: IOOBUF_X115_Y67_N16
\HEX0[5]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst6|Mux5~0_combout\,
	devoe => ww_devoe,
	o => \HEX0[5]~output_o\);

-- Location: IOOBUF_X115_Y69_N2
\HEX0[6]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst6|ALT_INV_Mux6~0_combout\,
	devoe => ww_devoe,
	o => \HEX0[6]~output_o\);

-- Location: IOOBUF_X115_Y41_N2
\HEX1[0]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst5|Mux0~0_combout\,
	devoe => ww_devoe,
	o => \HEX1[0]~output_o\);

-- Location: IOOBUF_X115_Y30_N9
\HEX1[1]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst5|Mux1~0_combout\,
	devoe => ww_devoe,
	o => \HEX1[1]~output_o\);

-- Location: IOOBUF_X115_Y25_N23
\HEX1[2]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst5|Mux2~0_combout\,
	devoe => ww_devoe,
	o => \HEX1[2]~output_o\);

-- Location: IOOBUF_X115_Y30_N2
\HEX1[3]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst5|Mux3~0_combout\,
	devoe => ww_devoe,
	o => \HEX1[3]~output_o\);

-- Location: IOOBUF_X115_Y20_N9
\HEX1[4]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst5|Mux4~0_combout\,
	devoe => ww_devoe,
	o => \HEX1[4]~output_o\);

-- Location: IOOBUF_X115_Y22_N2
\HEX1[5]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst5|Mux5~0_combout\,
	devoe => ww_devoe,
	o => \HEX1[5]~output_o\);

-- Location: IOOBUF_X115_Y28_N9
\HEX1[6]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst5|ALT_INV_Mux6~0_combout\,
	devoe => ww_devoe,
	o => \HEX1[6]~output_o\);

-- Location: IOOBUF_X115_Y17_N9
\HEX2[0]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst8|Mux0~0_combout\,
	devoe => ww_devoe,
	o => \HEX2[0]~output_o\);

-- Location: IOOBUF_X115_Y16_N2
\HEX2[1]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst8|Mux1~0_combout\,
	devoe => ww_devoe,
	o => \HEX2[1]~output_o\);

-- Location: IOOBUF_X115_Y19_N9
\HEX2[2]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst8|Mux2~0_combout\,
	devoe => ww_devoe,
	o => \HEX2[2]~output_o\);

-- Location: IOOBUF_X115_Y19_N2
\HEX2[3]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst8|Mux3~0_combout\,
	devoe => ww_devoe,
	o => \HEX2[3]~output_o\);

-- Location: IOOBUF_X115_Y18_N2
\HEX2[4]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst8|Mux4~0_combout\,
	devoe => ww_devoe,
	o => \HEX2[4]~output_o\);

-- Location: IOOBUF_X115_Y20_N2
\HEX2[5]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst8|Mux5~0_combout\,
	devoe => ww_devoe,
	o => \HEX2[5]~output_o\);

-- Location: IOOBUF_X115_Y21_N16
\HEX2[6]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst8|ALT_INV_Mux6~0_combout\,
	devoe => ww_devoe,
	o => \HEX2[6]~output_o\);

-- Location: IOOBUF_X115_Y25_N16
\HEX3[0]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst7|Mux0~0_combout\,
	devoe => ww_devoe,
	o => \HEX3[0]~output_o\);

-- Location: IOOBUF_X115_Y29_N2
\HEX3[1]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst7|Mux1~0_combout\,
	devoe => ww_devoe,
	o => \HEX3[1]~output_o\);

-- Location: IOOBUF_X100_Y0_N2
\HEX3[2]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst7|Mux2~0_combout\,
	devoe => ww_devoe,
	o => \HEX3[2]~output_o\);

-- Location: IOOBUF_X111_Y0_N2
\HEX3[3]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst7|Mux3~0_combout\,
	devoe => ww_devoe,
	o => \HEX3[3]~output_o\);

-- Location: IOOBUF_X105_Y0_N23
\HEX3[4]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst7|Mux4~0_combout\,
	devoe => ww_devoe,
	o => \HEX3[4]~output_o\);

-- Location: IOOBUF_X105_Y0_N9
\HEX3[5]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst7|Mux5~0_combout\,
	devoe => ww_devoe,
	o => \HEX3[5]~output_o\);

-- Location: IOOBUF_X105_Y0_N2
\HEX3[6]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst7|ALT_INV_Mux6~0_combout\,
	devoe => ww_devoe,
	o => \HEX3[6]~output_o\);

-- Location: IOOBUF_X98_Y0_N23
\HEX4[0]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst10|Mux0~3_combout\,
	devoe => ww_devoe,
	o => \HEX4[0]~output_o\);

-- Location: IOOBUF_X107_Y0_N9
\HEX4[1]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst10|Mux1~3_combout\,
	devoe => ww_devoe,
	o => \HEX4[1]~output_o\);

-- Location: IOOBUF_X74_Y0_N9
\HEX4[2]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst10|Mux2~3_combout\,
	devoe => ww_devoe,
	o => \HEX4[2]~output_o\);

-- Location: IOOBUF_X74_Y0_N2
\HEX4[3]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst10|Mux3~3_combout\,
	devoe => ww_devoe,
	o => \HEX4[3]~output_o\);

-- Location: IOOBUF_X83_Y0_N23
\HEX4[4]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst10|Mux4~3_combout\,
	devoe => ww_devoe,
	o => \HEX4[4]~output_o\);

-- Location: IOOBUF_X83_Y0_N16
\HEX4[5]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst10|Mux5~3_combout\,
	devoe => ww_devoe,
	o => \HEX4[5]~output_o\);

-- Location: IOOBUF_X79_Y0_N23
\HEX4[6]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst10|ALT_INV_Mux6~3_combout\,
	devoe => ww_devoe,
	o => \HEX4[6]~output_o\);

-- Location: IOOBUF_X85_Y0_N9
\HEX5[0]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst9|Mux0~3_combout\,
	devoe => ww_devoe,
	o => \HEX5[0]~output_o\);

-- Location: IOOBUF_X87_Y0_N16
\HEX5[1]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst9|Mux1~3_combout\,
	devoe => ww_devoe,
	o => \HEX5[1]~output_o\);

-- Location: IOOBUF_X98_Y0_N16
\HEX5[2]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst9|Mux2~3_combout\,
	devoe => ww_devoe,
	o => \HEX5[2]~output_o\);

-- Location: IOOBUF_X72_Y0_N2
\HEX5[3]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst9|Mux3~3_combout\,
	devoe => ww_devoe,
	o => \HEX5[3]~output_o\);

-- Location: IOOBUF_X72_Y0_N9
\HEX5[4]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst9|Mux4~3_combout\,
	devoe => ww_devoe,
	o => \HEX5[4]~output_o\);

-- Location: IOOBUF_X79_Y0_N16
\HEX5[5]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst9|Mux5~3_combout\,
	devoe => ww_devoe,
	o => \HEX5[5]~output_o\);

-- Location: IOOBUF_X69_Y0_N2
\HEX5[6]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst9|ALT_INV_Mux6~3_combout\,
	devoe => ww_devoe,
	o => \HEX5[6]~output_o\);

-- Location: IOOBUF_X89_Y0_N23
\HEX6[0]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst12|Mux0~3_combout\,
	devoe => ww_devoe,
	o => \HEX6[0]~output_o\);

-- Location: IOOBUF_X65_Y0_N2
\HEX6[1]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst12|Mux1~3_combout\,
	devoe => ww_devoe,
	o => \HEX6[1]~output_o\);

-- Location: IOOBUF_X65_Y0_N9
\HEX6[2]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst12|Mux2~3_combout\,
	devoe => ww_devoe,
	o => \HEX6[2]~output_o\);

-- Location: IOOBUF_X89_Y0_N16
\HEX6[3]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst12|Mux3~3_combout\,
	devoe => ww_devoe,
	o => \HEX6[3]~output_o\);

-- Location: IOOBUF_X67_Y0_N16
\HEX6[4]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst12|Mux4~3_combout\,
	devoe => ww_devoe,
	o => \HEX6[4]~output_o\);

-- Location: IOOBUF_X67_Y0_N23
\HEX6[5]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst12|Mux5~3_combout\,
	devoe => ww_devoe,
	o => \HEX6[5]~output_o\);

-- Location: IOOBUF_X74_Y0_N23
\HEX6[6]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst12|ALT_INV_Mux6~3_combout\,
	devoe => ww_devoe,
	o => \HEX6[6]~output_o\);

-- Location: IOOBUF_X74_Y0_N16
\HEX7[0]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst11|Mux0~3_combout\,
	devoe => ww_devoe,
	o => \HEX7[0]~output_o\);

-- Location: IOOBUF_X67_Y0_N9
\HEX7[1]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst11|Mux1~3_combout\,
	devoe => ww_devoe,
	o => \HEX7[1]~output_o\);

-- Location: IOOBUF_X62_Y0_N23
\HEX7[2]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst11|Mux2~3_combout\,
	devoe => ww_devoe,
	o => \HEX7[2]~output_o\);

-- Location: IOOBUF_X62_Y0_N16
\HEX7[3]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst11|Mux3~3_combout\,
	devoe => ww_devoe,
	o => \HEX7[3]~output_o\);

-- Location: IOOBUF_X67_Y0_N2
\HEX7[4]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst11|Mux4~3_combout\,
	devoe => ww_devoe,
	o => \HEX7[4]~output_o\);

-- Location: IOOBUF_X69_Y0_N9
\HEX7[5]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst11|Mux5~3_combout\,
	devoe => ww_devoe,
	o => \HEX7[5]~output_o\);

-- Location: IOOBUF_X54_Y0_N23
\HEX7[6]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst11|ALT_INV_Mux6~3_combout\,
	devoe => ww_devoe,
	o => \HEX7[6]~output_o\);

-- Location: IOOBUF_X111_Y73_N9
\JOUT[15]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst4|inst7|OUT16B[15]~2_combout\,
	devoe => ww_devoe,
	o => \JOUT[15]~output_o\);

-- Location: IOOBUF_X105_Y73_N2
\JOUT[14]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst4|inst7|OUT16B[14]~3_combout\,
	devoe => ww_devoe,
	o => \JOUT[14]~output_o\);

-- Location: IOOBUF_X81_Y73_N9
\JOUT[13]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst4|inst7|OUT16B[13]~16_combout\,
	devoe => ww_devoe,
	o => \JOUT[13]~output_o\);

-- Location: IOOBUF_X115_Y53_N16
\JOUT[12]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst4|JUMPMUX|OUT16B[12]~6_combout\,
	devoe => ww_devoe,
	o => \JOUT[12]~output_o\);

-- Location: IOOBUF_X115_Y61_N16
\JOUT[11]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst4|JUMPMUX|OUT16B[11]~7_combout\,
	devoe => ww_devoe,
	o => \JOUT[11]~output_o\);

-- Location: IOOBUF_X115_Y62_N23
\JOUT[10]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst4|JUMPMUX|OUT16B[10]~8_combout\,
	devoe => ww_devoe,
	o => \JOUT[10]~output_o\);

-- Location: IOOBUF_X115_Y66_N16
\JOUT[9]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst4|JUMPMUX|OUT16B[9]~9_combout\,
	devoe => ww_devoe,
	o => \JOUT[9]~output_o\);

-- Location: IOOBUF_X98_Y73_N23
\JOUT[8]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst4|JUMPMUX|OUT16B[8]~15_combout\,
	devoe => ww_devoe,
	o => \JOUT[8]~output_o\);

-- Location: IOOBUF_X115_Y60_N16
\JOUT[7]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst4|JUMPMUX|OUT16B[7]~10_combout\,
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
	i => \inst4|JUMPMUX|OUT16B[6]~16_combout\,
	devoe => ww_devoe,
	o => \JOUT[6]~output_o\);

-- Location: IOOBUF_X0_Y29_N16
\JOUT[5]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst4|JUMPMUX|OUT16B[5]~11_combout\,
	devoe => ww_devoe,
	o => \JOUT[5]~output_o\);

-- Location: IOOBUF_X89_Y73_N16
\JOUT[4]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst4|JUMPMUX|OUT16B[4]~12_combout\,
	devoe => ww_devoe,
	o => \JOUT[4]~output_o\);

-- Location: IOOBUF_X98_Y73_N16
\JOUT[3]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst4|JUMPMUX|OUT16B[3]~13_combout\,
	devoe => ww_devoe,
	o => \JOUT[3]~output_o\);

-- Location: IOOBUF_X0_Y27_N16
\JOUT[2]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst4|JUMPMUX|OUT16B[2]~17_combout\,
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
	i => \inst4|JUMPMUX|OUT16B[1]~14_combout\,
	devoe => ww_devoe,
	o => \JOUT[1]~output_o\);

-- Location: IOOBUF_X5_Y73_N9
\JOUT[0]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \JOUT[0]~output_o\);

-- Location: IOOBUF_X111_Y73_N2
\JUMPMUX_OUT[15]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst4|inst7|OUT16B[15]~2_combout\,
	devoe => ww_devoe,
	o => \JUMPMUX_OUT[15]~output_o\);

-- Location: IOOBUF_X105_Y73_N9
\JUMPMUX_OUT[14]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst4|inst7|OUT16B[14]~3_combout\,
	devoe => ww_devoe,
	o => \JUMPMUX_OUT[14]~output_o\);

-- Location: IOOBUF_X79_Y73_N2
\JUMPMUX_OUT[13]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst4|inst7|OUT16B[13]~16_combout\,
	devoe => ww_devoe,
	o => \JUMPMUX_OUT[13]~output_o\);

-- Location: IOOBUF_X72_Y73_N2
\JUMPMUX_OUT[12]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst4|inst7|OUT16B[12]~14_combout\,
	devoe => ww_devoe,
	o => \JUMPMUX_OUT[12]~output_o\);

-- Location: IOOBUF_X115_Y47_N23
\JUMPMUX_OUT[11]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst4|inst7|OUT16B[11]~4_combout\,
	devoe => ww_devoe,
	o => \JUMPMUX_OUT[11]~output_o\);

-- Location: IOOBUF_X115_Y23_N9
\JUMPMUX_OUT[10]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst4|inst7|OUT16B[10]~5_combout\,
	devoe => ww_devoe,
	o => \JUMPMUX_OUT[10]~output_o\);

-- Location: IOOBUF_X109_Y73_N9
\JUMPMUX_OUT[9]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst4|inst7|OUT16B[9]~6_combout\,
	devoe => ww_devoe,
	o => \JUMPMUX_OUT[9]~output_o\);

-- Location: IOOBUF_X83_Y73_N23
\JUMPMUX_OUT[8]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst4|inst7|OUT16B[8]~7_combout\,
	devoe => ww_devoe,
	o => \JUMPMUX_OUT[8]~output_o\);

-- Location: IOOBUF_X115_Y51_N2
\JUMPMUX_OUT[7]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst4|inst7|OUT16B[7]~8_combout\,
	devoe => ww_devoe,
	o => \JUMPMUX_OUT[7]~output_o\);

-- Location: IOOBUF_X115_Y42_N16
\JUMPMUX_OUT[6]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst4|inst7|OUT16B[6]~9_combout\,
	devoe => ww_devoe,
	o => \JUMPMUX_OUT[6]~output_o\);

-- Location: IOOBUF_X115_Y59_N23
\JUMPMUX_OUT[5]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst4|inst7|OUT16B[5]~10_combout\,
	devoe => ww_devoe,
	o => \JUMPMUX_OUT[5]~output_o\);

-- Location: IOOBUF_X0_Y26_N16
\JUMPMUX_OUT[4]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst4|inst7|OUT16B[4]~11_combout\,
	devoe => ww_devoe,
	o => \JUMPMUX_OUT[4]~output_o\);

-- Location: IOOBUF_X94_Y73_N9
\JUMPMUX_OUT[3]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst4|inst7|OUT16B[3]~12_combout\,
	devoe => ww_devoe,
	o => \JUMPMUX_OUT[3]~output_o\);

-- Location: IOOBUF_X115_Y45_N23
\JUMPMUX_OUT[2]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst4|inst7|OUT16B[2]~13_combout\,
	devoe => ww_devoe,
	o => \JUMPMUX_OUT[2]~output_o\);

-- Location: IOOBUF_X115_Y58_N23
\JUMPMUX_OUT[1]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst4|inst7|ALT_INV_OUT16B[1]~15_combout\,
	devoe => ww_devoe,
	o => \JUMPMUX_OUT[1]~output_o\);

-- Location: IOOBUF_X5_Y73_N23
\JUMPMUX_OUT[0]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \JUMPMUX_OUT[0]~output_o\);

-- Location: IOOBUF_X107_Y73_N16
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

-- Location: IOOBUF_X69_Y73_N2
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

-- Location: IOOBUF_X0_Y24_N9
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

-- Location: IOOBUF_X115_Y63_N9
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

-- Location: IOOBUF_X100_Y73_N16
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

-- Location: IOOBUF_X94_Y73_N2
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

-- Location: IOOBUF_X0_Y25_N23
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

-- Location: IOOBUF_X0_Y25_N16
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

-- Location: IOOBUF_X0_Y24_N16
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

-- Location: IOOBUF_X115_Y57_N16
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

-- Location: IOOBUF_X109_Y73_N2
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

-- Location: IOOBUF_X115_Y68_N23
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

-- Location: IOOBUF_X115_Y58_N16
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

-- Location: IOOBUF_X115_Y56_N16
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

-- Location: IOOBUF_X115_Y26_N23
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

-- Location: IOOBUF_X0_Y16_N23
\PCP2[0]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \PCP2[0]~output_o\);

-- Location: IOOBUF_X83_Y73_N2
\REG1OUT[15]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst2|inst|mux_1|mux_1|mux_generate:3:mux_i|Mux0~5_combout\,
	devoe => ww_devoe,
	o => \REG1OUT[15]~output_o\);

-- Location: IOOBUF_X85_Y73_N23
\REG1OUT[14]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst2|inst|mux_1|mux_1|mux_generate:3:mux_i|Mux1~5_combout\,
	devoe => ww_devoe,
	o => \REG1OUT[14]~output_o\);

-- Location: IOOBUF_X115_Y49_N2
\REG1OUT[13]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst2|inst|mux_1|mux_1|mux_generate:3:mux_i|Mux2~5_combout\,
	devoe => ww_devoe,
	o => \REG1OUT[13]~output_o\);

-- Location: IOOBUF_X115_Y44_N2
\REG1OUT[12]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst2|inst|mux_1|mux_1|mux_generate:3:mux_i|Mux3~10_combout\,
	devoe => ww_devoe,
	o => \REG1OUT[12]~output_o\);

-- Location: IOOBUF_X115_Y27_N9
\REG1OUT[11]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst2|inst|mux_1|mux_1|mux_generate:2:mux_i|Mux0~5_combout\,
	devoe => ww_devoe,
	o => \REG1OUT[11]~output_o\);

-- Location: IOOBUF_X115_Y36_N9
\REG1OUT[10]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst2|inst|mux_1|mux_1|mux_generate:2:mux_i|Mux1~5_combout\,
	devoe => ww_devoe,
	o => \REG1OUT[10]~output_o\);

-- Location: IOOBUF_X115_Y36_N16
\REG1OUT[9]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst2|inst|mux_1|mux_1|mux_generate:2:mux_i|Mux2~5_combout\,
	devoe => ww_devoe,
	o => \REG1OUT[9]~output_o\);

-- Location: IOOBUF_X115_Y32_N2
\REG1OUT[8]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst2|inst|mux_1|mux_1|mux_generate:2:mux_i|Mux3~5_combout\,
	devoe => ww_devoe,
	o => \REG1OUT[8]~output_o\);

-- Location: IOOBUF_X115_Y40_N2
\REG1OUT[7]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst2|inst|mux_1|mux_1|mux_generate:1:mux_i|Mux0~5_combout\,
	devoe => ww_devoe,
	o => \REG1OUT[7]~output_o\);

-- Location: IOOBUF_X0_Y21_N23
\REG1OUT[6]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst2|inst|mux_1|mux_1|mux_generate:1:mux_i|Mux1~5_combout\,
	devoe => ww_devoe,
	o => \REG1OUT[6]~output_o\);

-- Location: IOOBUF_X115_Y48_N2
\REG1OUT[5]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst2|inst|mux_1|mux_1|mux_generate:1:mux_i|Mux2~5_combout\,
	devoe => ww_devoe,
	o => \REG1OUT[5]~output_o\);

-- Location: IOOBUF_X115_Y36_N2
\REG1OUT[4]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst2|inst|mux_1|mux_1|mux_generate:1:mux_i|Mux3~5_combout\,
	devoe => ww_devoe,
	o => \REG1OUT[4]~output_o\);

-- Location: IOOBUF_X115_Y46_N2
\REG1OUT[3]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst2|inst|mux_1|mux_1|mux_generate:0:mux_i|Mux0~5_combout\,
	devoe => ww_devoe,
	o => \REG1OUT[3]~output_o\);

-- Location: IOOBUF_X115_Y44_N9
\REG1OUT[2]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst2|inst|mux_1|mux_1|mux_generate:0:mux_i|Mux1~5_combout\,
	devoe => ww_devoe,
	o => \REG1OUT[2]~output_o\);

-- Location: IOOBUF_X115_Y45_N16
\REG1OUT[1]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst2|inst|mux_1|mux_1|mux_generate:0:mux_i|Mux2~5_combout\,
	devoe => ww_devoe,
	o => \REG1OUT[1]~output_o\);

-- Location: IOOBUF_X74_Y73_N23
\REG1OUT[0]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst2|inst|mux_1|mux_1|mux_generate:0:mux_i|Mux3~5_combout\,
	devoe => ww_devoe,
	o => \REG1OUT[0]~output_o\);

-- Location: IOOBUF_X115_Y22_N16
\REG2_OUT[15]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst2|inst|mux_2|mux_1|mux_generate:3:mux_i|Mux0~4_combout\,
	devoe => ww_devoe,
	o => \REG2_OUT[15]~output_o\);

-- Location: IOOBUF_X115_Y24_N9
\REG2_OUT[14]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst2|inst|mux_2|mux_1|mux_generate:3:mux_i|Mux1~4_combout\,
	devoe => ww_devoe,
	o => \REG2_OUT[14]~output_o\);

-- Location: IOOBUF_X115_Y13_N2
\REG2_OUT[13]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst2|inst|mux_2|mux_1|mux_generate:3:mux_i|Mux2~4_combout\,
	devoe => ww_devoe,
	o => \REG2_OUT[13]~output_o\);

-- Location: IOOBUF_X115_Y16_N9
\REG2_OUT[12]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst2|inst|mux_2|mux_1|mux_generate:3:mux_i|Mux3~4_combout\,
	devoe => ww_devoe,
	o => \REG2_OUT[12]~output_o\);

-- Location: IOOBUF_X115_Y10_N9
\REG2_OUT[11]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst2|inst|mux_2|mux_1|mux_generate:2:mux_i|Mux0~4_combout\,
	devoe => ww_devoe,
	o => \REG2_OUT[11]~output_o\);

-- Location: IOOBUF_X115_Y15_N2
\REG2_OUT[10]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst2|inst|mux_2|mux_1|mux_generate:2:mux_i|Mux1~4_combout\,
	devoe => ww_devoe,
	o => \REG2_OUT[10]~output_o\);

-- Location: IOOBUF_X115_Y23_N2
\REG2_OUT[9]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst2|inst|mux_2|mux_1|mux_generate:2:mux_i|Mux2~4_combout\,
	devoe => ww_devoe,
	o => \REG2_OUT[9]~output_o\);

-- Location: IOOBUF_X115_Y13_N9
\REG2_OUT[8]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst2|inst|mux_2|mux_1|mux_generate:2:mux_i|Mux3~4_combout\,
	devoe => ww_devoe,
	o => \REG2_OUT[8]~output_o\);

-- Location: IOOBUF_X115_Y8_N23
\REG2_OUT[7]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst2|inst|mux_2|mux_1|mux_generate:1:mux_i|Mux0~4_combout\,
	devoe => ww_devoe,
	o => \REG2_OUT[7]~output_o\);

-- Location: IOOBUF_X115_Y12_N2
\REG2_OUT[6]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst2|inst|mux_2|mux_1|mux_generate:1:mux_i|Mux1~4_combout\,
	devoe => ww_devoe,
	o => \REG2_OUT[6]~output_o\);

-- Location: IOOBUF_X115_Y11_N9
\REG2_OUT[5]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst2|inst|mux_2|mux_1|mux_generate:1:mux_i|Mux2~4_combout\,
	devoe => ww_devoe,
	o => \REG2_OUT[5]~output_o\);

-- Location: IOOBUF_X115_Y10_N2
\REG2_OUT[4]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst2|inst|mux_2|mux_1|mux_generate:1:mux_i|Mux3~4_combout\,
	devoe => ww_devoe,
	o => \REG2_OUT[4]~output_o\);

-- Location: IOOBUF_X115_Y6_N16
\REG2_OUT[3]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst2|inst|mux_2|mux_1|mux_generate:0:mux_i|Mux0~4_combout\,
	devoe => ww_devoe,
	o => \REG2_OUT[3]~output_o\);

-- Location: IOOBUF_X115_Y9_N23
\REG2_OUT[2]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst2|inst|mux_2|mux_1|mux_generate:0:mux_i|Mux1~4_combout\,
	devoe => ww_devoe,
	o => \REG2_OUT[2]~output_o\);

-- Location: IOOBUF_X115_Y8_N16
\REG2_OUT[1]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst2|inst|mux_2|mux_1|mux_generate:0:mux_i|Mux2~8_combout\,
	devoe => ww_devoe,
	o => \REG2_OUT[1]~output_o\);

-- Location: IOOBUF_X115_Y12_N9
\REG2_OUT[0]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst2|inst|mux_2|mux_1|mux_generate:0:mux_i|Mux3~4_combout\,
	devoe => ww_devoe,
	o => \REG2_OUT[0]~output_o\);

-- Location: IOIBUF_X115_Y14_N8
\SW17~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SW17,
	o => \SW17~input_o\);

-- Location: IOIBUF_X115_Y17_N1
\SW0~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SW0,
	o => \SW0~input_o\);

-- Location: LCCOMB_X107_Y22_N22
\inst4|inst1|dec|en_0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|inst1|dec|en_0~combout\ = (\inst4|inst|reg|reg_1|y\(5)) # (\inst4|inst|reg|reg_1|y\(4))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst4|inst|reg|reg_1|y\(5),
	datad => \inst4|inst|reg|reg_1|y\(4),
	combout => \inst4|inst1|dec|en_0~combout\);

-- Location: LCCOMB_X107_Y24_N28
\inst4|inst1|data_out[3]~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|inst1|data_out[3]~7_combout\ = (!\inst4|inst|reg|reg_1|y\(3) & (!\inst4|inst|reg|reg_1|y\(2) & (\inst4|inst|reg|reg_1|y\(4) & \inst4|inst|reg|reg_1|y\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|inst|reg|reg_1|y\(3),
	datab => \inst4|inst|reg|reg_1|y\(2),
	datac => \inst4|inst|reg|reg_1|y\(4),
	datad => \inst4|inst|reg|reg_1|y\(1),
	combout => \inst4|inst1|data_out[3]~7_combout\);

-- Location: LCCOMB_X107_Y24_N24
\inst4|inst1|data_out[3]~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|inst1|data_out[3]~8_combout\ = (!\inst4|inst|reg|reg_1|y\(5) & \inst4|inst1|data_out[3]~7_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst4|inst|reg|reg_1|y\(5),
	datad => \inst4|inst1|data_out[3]~7_combout\,
	combout => \inst4|inst1|data_out[3]~8_combout\);

-- Location: LCCOMB_X107_Y24_N20
\inst4|inst1|data_out[0]~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|inst1|data_out[0]~12_combout\ = (\inst4|inst|reg|reg_1|y\(1) & (((\inst4|inst1|data_out[3]~8_combout\)))) # (!\inst4|inst|reg|reg_1|y\(1) & ((\inst4|inst1|dec|en_0~combout\ & ((\inst4|inst1|data_out[3]~8_combout\))) # 
-- (!\inst4|inst1|dec|en_0~combout\ & (\inst4|inst|reg|reg_1|y\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111000000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|inst|reg|reg_1|y\(1),
	datab => \inst4|inst|reg|reg_1|y\(2),
	datac => \inst4|inst1|dec|en_0~combout\,
	datad => \inst4|inst1|data_out[3]~8_combout\,
	combout => \inst4|inst1|data_out[0]~12_combout\);

-- Location: LCCOMB_X107_Y24_N18
\inst4|inst1|INS_OUT[0]~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|inst1|INS_OUT[0]~12_combout\ = (!\inst4|inst1|exception~2_combout\ & (\inst4|inst1|data_out[0]~12_combout\ & (\inst4|inst|reg|reg_1|y\(1) $ (\inst4|inst|reg|reg_1|y\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001001000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|inst|reg|reg_1|y\(1),
	datab => \inst4|inst1|exception~2_combout\,
	datac => \inst4|inst|reg|reg_1|y\(3),
	datad => \inst4|inst1|data_out[0]~12_combout\,
	combout => \inst4|inst1|INS_OUT[0]~12_combout\);

-- Location: LCCOMB_X107_Y22_N12
\inst4|inst1|data_out[11]~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|inst1|data_out[11]~3_combout\ = (\inst4|inst|reg|reg_1|y\(1) & (!\inst4|inst|reg|reg_1|y\(4) & (!\inst4|inst|reg|reg_1|y\(2)))) # (!\inst4|inst|reg|reg_1|y\(1) & (!\inst4|inst|reg|reg_1|y\(3) & ((!\inst4|inst|reg|reg_1|y\(2)) # 
-- (!\inst4|inst|reg|reg_1|y\(4)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000100000111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|inst|reg|reg_1|y\(4),
	datab => \inst4|inst|reg|reg_1|y\(2),
	datac => \inst4|inst|reg|reg_1|y\(3),
	datad => \inst4|inst|reg|reg_1|y\(1),
	combout => \inst4|inst1|data_out[11]~3_combout\);

-- Location: LCCOMB_X107_Y23_N28
\inst4|inst1|INS_OUT[15]~15\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|inst1|INS_OUT[15]~15_combout\ = (\inst4|inst1|data_out[11]~3_combout\ & (!\inst4|inst|reg|reg_1|y\(5) & !\inst4|inst1|exception~2_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst4|inst1|data_out[11]~3_combout\,
	datac => \inst4|inst|reg|reg_1|y\(5),
	datad => \inst4|inst1|exception~2_combout\,
	combout => \inst4|inst1|INS_OUT[15]~15_combout\);

-- Location: LCCOMB_X106_Y22_N2
\inst4|inst1|data_out[12]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|inst1|data_out[12]~2_combout\ = (\inst4|inst|reg|reg_1|y\(4) & (!\inst4|inst|reg|reg_1|y\(2) & (\inst4|inst|reg|reg_1|y\(1) & !\inst4|inst|reg|reg_1|y\(3)))) # (!\inst4|inst|reg|reg_1|y\(4) & ((\inst4|inst|reg|reg_1|y\(1) & 
-- (\inst4|inst|reg|reg_1|y\(2))) # (!\inst4|inst|reg|reg_1|y\(1) & ((\inst4|inst|reg|reg_1|y\(3))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100010101100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|inst|reg|reg_1|y\(4),
	datab => \inst4|inst|reg|reg_1|y\(2),
	datac => \inst4|inst|reg|reg_1|y\(1),
	datad => \inst4|inst|reg|reg_1|y\(3),
	combout => \inst4|inst1|data_out[12]~2_combout\);

-- Location: LCCOMB_X106_Y22_N30
\inst4|inst1|INS_OUT[12]~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|inst1|INS_OUT[12]~6_combout\ = (!\inst4|inst1|exception~2_combout\ & ((\inst4|inst|reg|reg_1|y\(5)) # (!\inst4|inst1|data_out[12]~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst4|inst1|data_out[12]~2_combout\,
	datac => \inst4|inst|reg|reg_1|y\(5),
	datad => \inst4|inst1|exception~2_combout\,
	combout => \inst4|inst1|INS_OUT[12]~6_combout\);

-- Location: LCCOMB_X108_Y22_N14
\inst4|inst1|data_out[14]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|inst1|data_out[14]~1_combout\ = (!\inst4|inst|reg|reg_1|y\(4) & (\inst4|inst|reg|reg_1|y\(3) & (\inst4|inst|reg|reg_1|y\(2) $ (\inst4|inst|reg|reg_1|y\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|inst|reg|reg_1|y\(2),
	datab => \inst4|inst|reg|reg_1|y\(4),
	datac => \inst4|inst|reg|reg_1|y\(3),
	datad => \inst4|inst|reg|reg_1|y\(1),
	combout => \inst4|inst1|data_out[14]~1_combout\);

-- Location: LCCOMB_X108_Y22_N22
\inst4|inst1|INS_OUT[14]~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|inst1|INS_OUT[14]~5_combout\ = (!\inst4|inst1|exception~2_combout\ & (\inst4|inst1|data_out[14]~1_combout\ & !\inst4|inst|reg|reg_1|y\(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst4|inst1|exception~2_combout\,
	datac => \inst4|inst1|data_out[14]~1_combout\,
	datad => \inst4|inst|reg|reg_1|y\(5),
	combout => \inst4|inst1|INS_OUT[14]~5_combout\);

-- Location: LCCOMB_X111_Y22_N18
\inst|Mux5~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Mux5~0_combout\ = (\inst4|inst1|INS_OUT[15]~15_combout\ & (\inst4|inst1|INS_OUT[12]~6_combout\ & (\inst4|inst1|INS_OUT[13]~4_combout\ & !\inst4|inst1|INS_OUT[14]~5_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|inst1|INS_OUT[15]~15_combout\,
	datab => \inst4|inst1|INS_OUT[12]~6_combout\,
	datac => \inst4|inst1|INS_OUT[13]~4_combout\,
	datad => \inst4|inst1|INS_OUT[14]~5_combout\,
	combout => \inst|Mux5~0_combout\);

-- Location: LCCOMB_X108_Y22_N26
\inst2|inst2|OUT16B[0]~27\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|inst2|OUT16B[0]~27_combout\ = (\inst4|inst1|INS_OUT[15]~15_combout\ & (\inst4|inst1|INS_OUT[12]~6_combout\ & (\inst4|inst1|INS_OUT[13]~4_combout\ & \inst4|inst1|INS_OUT[0]~12_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|inst1|INS_OUT[15]~15_combout\,
	datab => \inst4|inst1|INS_OUT[12]~6_combout\,
	datac => \inst4|inst1|INS_OUT[13]~4_combout\,
	datad => \inst4|inst1|INS_OUT[0]~12_combout\,
	combout => \inst2|inst2|OUT16B[0]~27_combout\);

-- Location: LCCOMB_X106_Y21_N0
\inst|Mux7~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Mux7~0_combout\ = (\inst4|inst1|INS_OUT[15]~15_combout\ & (\inst4|inst1|INS_OUT[12]~6_combout\ & \inst4|inst1|INS_OUT[13]~4_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|inst1|INS_OUT[15]~15_combout\,
	datac => \inst4|inst1|INS_OUT[12]~6_combout\,
	datad => \inst4|inst1|INS_OUT[13]~4_combout\,
	combout => \inst|Mux7~0_combout\);

-- Location: LCCOMB_X107_Y22_N28
\inst4|inst1|data_out[9]~13\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|inst1|data_out[9]~13_combout\ = ((\inst4|inst|reg|reg_1|y\(4) & ((\inst4|inst|reg|reg_1|y\(3)) # (\inst4|inst|reg|reg_1|y\(2)))) # (!\inst4|inst|reg|reg_1|y\(4) & ((!\inst4|inst|reg|reg_1|y\(2)) # (!\inst4|inst|reg|reg_1|y\(3))))) # 
-- (!\inst4|inst|reg|reg_1|y\(1))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101111111110111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|inst|reg|reg_1|y\(1),
	datab => \inst4|inst|reg|reg_1|y\(4),
	datac => \inst4|inst|reg|reg_1|y\(3),
	datad => \inst4|inst|reg|reg_1|y\(2),
	combout => \inst4|inst1|data_out[9]~13_combout\);

-- Location: LCCOMB_X107_Y22_N6
\inst4|inst1|data_out[9]~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|inst1|data_out[9]~14_combout\ = (\inst4|inst|reg|reg_1|y\(5)) # (\inst4|inst1|data_out[9]~13_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst4|inst|reg|reg_1|y\(5),
	datad => \inst4|inst1|data_out[9]~13_combout\,
	combout => \inst4|inst1|data_out[9]~14_combout\);

-- Location: LCCOMB_X111_Y20_N24
\inst1|DOUT[7]~266\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|DOUT[7]~266_combout\ = ((\inst|Mux3~7_combout\ & ((\inst2|inst1|alu0|mux|Mux2~1_combout\) # (!\inst2|inst1|alu0|mux|Mux1~3_combout\)))) # (!\inst|Mux5~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001101110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|inst1|alu0|mux|Mux1~3_combout\,
	datab => \inst|Mux5~0_combout\,
	datac => \inst|Mux3~7_combout\,
	datad => \inst2|inst1|alu0|mux|Mux2~1_combout\,
	combout => \inst1|DOUT[7]~266_combout\);

-- Location: CLKCTRL_G8
\inst1|DOUT[15]~51clkctrl\ : cycloneive_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \inst1|DOUT[15]~51clkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \inst1|DOUT[15]~51clkctrl_outclk\);

-- Location: LCCOMB_X107_Y22_N20
\inst4|inst1|data_out[8]~18\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|inst1|data_out[8]~18_combout\ = (\inst4|inst|reg|reg_1|y\(4) & (!\inst4|inst|reg|reg_1|y\(3) & !\inst4|inst|reg|reg_1|y\(2))) # (!\inst4|inst|reg|reg_1|y\(4) & ((\inst4|inst|reg|reg_1|y\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111101010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|inst|reg|reg_1|y\(3),
	datac => \inst4|inst|reg|reg_1|y\(4),
	datad => \inst4|inst|reg|reg_1|y\(2),
	combout => \inst4|inst1|data_out[8]~18_combout\);

-- Location: LCCOMB_X107_Y22_N4
\inst4|inst1|data_out[8]~19\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|inst1|data_out[8]~19_combout\ = (!\inst4|inst|reg|reg_1|y\(1) & (!\inst4|inst|reg|reg_1|y\(5) & \inst4|inst1|data_out[8]~18_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|inst|reg|reg_1|y\(1),
	datab => \inst4|inst|reg|reg_1|y\(5),
	datad => \inst4|inst1|data_out[8]~18_combout\,
	combout => \inst4|inst1|data_out[8]~19_combout\);

-- Location: LCCOMB_X107_Y21_N0
\inst2|inst|mux_2|mux_1|mux_generate:0:mux_i|Mux2~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|inst|mux_2|mux_1|mux_generate:0:mux_i|Mux2~7_combout\ = (!\inst4|inst1|exception~2_combout\ & (!\inst4|inst1|data_out[8]~19_combout\ & \inst4|inst1|data_out[1]~11_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|inst1|exception~2_combout\,
	datac => \inst4|inst1|data_out[8]~19_combout\,
	datad => \inst4|inst1|data_out[1]~11_combout\,
	combout => \inst2|inst|mux_2|mux_1|mux_generate:0:mux_i|Mux2~7_combout\);

-- Location: LCCOMB_X107_Y22_N2
\inst4|inst1|data_out[6]~16\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|inst1|data_out[6]~16_combout\ = (!\inst4|inst|reg|reg_1|y\(2) & ((!\inst4|inst|reg|reg_1|y\(3)) # (!\inst4|inst|reg|reg_1|y\(4))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001011111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|inst|reg|reg_1|y\(4),
	datac => \inst4|inst|reg|reg_1|y\(3),
	datad => \inst4|inst|reg|reg_1|y\(2),
	combout => \inst4|inst1|data_out[6]~16_combout\);

-- Location: LCCOMB_X107_Y22_N24
\inst4|inst1|data_out[6]~17\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|inst1|data_out[6]~17_combout\ = (!\inst4|inst|reg|reg_1|y\(5) & (\inst4|inst1|data_out[6]~16_combout\ & ((\inst4|inst|reg|reg_1|y\(3)) # (!\inst4|inst|reg|reg_1|y\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|inst|reg|reg_1|y\(3),
	datab => \inst4|inst|reg|reg_1|y\(1),
	datac => \inst4|inst|reg|reg_1|y\(5),
	datad => \inst4|inst1|data_out[6]~16_combout\,
	combout => \inst4|inst1|data_out[6]~17_combout\);

-- Location: LCCOMB_X111_Y22_N4
\inst|Mux0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Mux0~0_combout\ = (!\inst4|inst1|INS_OUT[12]~6_combout\ & (!\inst4|inst1|INS_OUT[14]~5_combout\ & (!\inst4|inst1|INS_OUT[13]~4_combout\ & !\inst4|inst1|INS_OUT[15]~15_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|inst1|INS_OUT[12]~6_combout\,
	datab => \inst4|inst1|INS_OUT[14]~5_combout\,
	datac => \inst4|inst1|INS_OUT[13]~4_combout\,
	datad => \inst4|inst1|INS_OUT[15]~15_combout\,
	combout => \inst|Mux0~0_combout\);

-- Location: LCCOMB_X106_Y21_N18
\inst4|inst1|data_out[3]~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|inst1|data_out[3]~9_combout\ = (\inst4|inst1|dec|en_0~combout\ & (((\inst4|inst1|data_out[3]~8_combout\ & \inst4|inst|reg|reg_1|y\(1))))) # (!\inst4|inst1|dec|en_0~combout\ & (\inst4|inst|reg|reg_1|y\(2) $ (((!\inst4|inst|reg|reg_1|y\(1))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000010100101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|inst|reg|reg_1|y\(2),
	datab => \inst4|inst1|data_out[3]~8_combout\,
	datac => \inst4|inst|reg|reg_1|y\(1),
	datad => \inst4|inst1|dec|en_0~combout\,
	combout => \inst4|inst1|data_out[3]~9_combout\);

-- Location: LCCOMB_X106_Y21_N16
\inst4|inst1|data_out[3]~22\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|inst1|data_out[3]~22_combout\ = (\inst4|inst1|data_out[3]~9_combout\ & (\inst4|inst|reg|reg_1|y\(1) $ (\inst4|inst|reg|reg_1|y\(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|inst|reg|reg_1|y\(1),
	datab => \inst4|inst|reg|reg_1|y\(3),
	datad => \inst4|inst1|data_out[3]~9_combout\,
	combout => \inst4|inst1|data_out[3]~22_combout\);

-- Location: LCCOMB_X105_Y22_N22
\inst2|inst5|DOUT[0]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|inst5|DOUT[0]~2_combout\ = (!\inst4|inst1|exception~2_combout\ & ((\inst|Mux0~0_combout\ & ((\inst4|inst1|data_out[3]~22_combout\))) # (!\inst|Mux0~0_combout\ & (\inst4|inst1|data_out[6]~17_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001000000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|inst1|data_out[6]~17_combout\,
	datab => \inst4|inst1|exception~2_combout\,
	datac => \inst|Mux0~0_combout\,
	datad => \inst4|inst1|data_out[3]~22_combout\,
	combout => \inst2|inst5|DOUT[0]~2_combout\);

-- Location: LCCOMB_X106_Y21_N12
\inst4|inst1|data_out[5]~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|inst1|data_out[5]~5_combout\ = (!\inst4|inst|reg|reg_1|y\(5) & (((!\inst4|inst|reg|reg_1|y\(2) & !\inst4|inst|reg|reg_1|y\(3))) # (!\inst4|inst|reg|reg_1|y\(4))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001100000111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|inst|reg|reg_1|y\(2),
	datab => \inst4|inst|reg|reg_1|y\(4),
	datac => \inst4|inst|reg|reg_1|y\(5),
	datad => \inst4|inst|reg|reg_1|y\(3),
	combout => \inst4|inst1|data_out[5]~5_combout\);

-- Location: LCCOMB_X105_Y22_N18
\inst4|inst1|data_out[4]~21\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|inst1|data_out[4]~21_combout\ = (\inst4|inst1|data_out[4]~6_combout\) # (!\inst4|inst1|data_out[5]~5_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst4|inst1|data_out[5]~5_combout\,
	datad => \inst4|inst1|data_out[4]~6_combout\,
	combout => \inst4|inst1|data_out[4]~21_combout\);

-- Location: LCCOMB_X105_Y22_N28
\inst2|inst5|DOUT[1]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|inst5|DOUT[1]~0_combout\ = (!\inst4|inst1|exception~2_combout\ & ((\inst|Mux0~0_combout\ & ((\inst4|inst1|data_out[4]~21_combout\))) # (!\inst|Mux0~0_combout\ & (\inst4|inst1|data_out[1]~11_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Mux0~0_combout\,
	datab => \inst4|inst1|exception~2_combout\,
	datac => \inst4|inst1|data_out[1]~11_combout\,
	datad => \inst4|inst1|data_out[4]~21_combout\,
	combout => \inst2|inst5|DOUT[1]~0_combout\);

-- Location: LCCOMB_X105_Y22_N20
\inst2|inst5|DOUT[2]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|inst5|DOUT[2]~1_combout\ = (!\inst4|inst1|exception~2_combout\ & ((\inst|Mux0~0_combout\ & (!\inst4|inst1|data_out[5]~5_combout\)) # (!\inst|Mux0~0_combout\ & ((\inst4|inst1|data_out[8]~19_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001001100000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Mux0~0_combout\,
	datab => \inst4|inst1|exception~2_combout\,
	datac => \inst4|inst1|data_out[5]~5_combout\,
	datad => \inst4|inst1|data_out[8]~19_combout\,
	combout => \inst2|inst5|DOUT[2]~1_combout\);

-- Location: LCCOMB_X111_Y22_N12
\inst|Mux1~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Mux1~0_combout\ = (\inst4|inst1|INS_OUT[14]~5_combout\) # ((\inst4|inst1|INS_OUT[12]~6_combout\ & ((!\inst4|inst1|INS_OUT[15]~15_combout\) # (!\inst4|inst1|INS_OUT[13]~4_combout\))) # (!\inst4|inst1|INS_OUT[12]~6_combout\ & 
-- ((\inst4|inst1|INS_OUT[13]~4_combout\) # (\inst4|inst1|INS_OUT[15]~15_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|inst1|INS_OUT[12]~6_combout\,
	datab => \inst4|inst1|INS_OUT[14]~5_combout\,
	datac => \inst4|inst1|INS_OUT[13]~4_combout\,
	datad => \inst4|inst1|INS_OUT[15]~15_combout\,
	combout => \inst|Mux1~0_combout\);

-- Location: LCCOMB_X105_Y22_N24
\inst2|inst|add_reg1_dcd|Mux3~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|inst|add_reg1_dcd|Mux3~0_combout\ = (!\inst2|inst5|DOUT[0]~2_combout\ & (\inst2|inst5|DOUT[1]~0_combout\ & (!\inst2|inst5|DOUT[2]~1_combout\ & !\inst|Mux1~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|inst5|DOUT[0]~2_combout\,
	datab => \inst2|inst5|DOUT[1]~0_combout\,
	datac => \inst2|inst5|DOUT[2]~1_combout\,
	datad => \inst|Mux1~0_combout\,
	combout => \inst2|inst|add_reg1_dcd|Mux3~0_combout\);

-- Location: FF_X107_Y21_N5
\inst2|inst|reg_gen:2:regs|reg_1|y[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \SW17~input_o\,
	asdata => \inst3|OUT16B[3]~34_combout\,
	sload => VCC,
	ena => \inst2|inst|add_reg1_dcd|Mux3~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst2|inst|reg_gen:2:regs|reg_1|y\(3));

-- Location: LCCOMB_X107_Y21_N4
\inst2|inst|mux_2|mux_1|mux_generate:0:mux_i|Mux0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|inst|mux_2|mux_1|mux_generate:0:mux_i|Mux0~0_combout\ = (\inst4|inst1|exception~2_combout\ & (((\inst2|inst|reg_gen:2:regs|reg_1|y\(3))))) # (!\inst4|inst1|exception~2_combout\ & ((\inst4|inst1|data_out[6]~17_combout\ & 
-- ((\inst2|inst|reg_gen:3:regs|reg_1|y\(3)))) # (!\inst4|inst1|data_out[6]~17_combout\ & (\inst2|inst|reg_gen:2:regs|reg_1|y\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010010110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|inst1|exception~2_combout\,
	datab => \inst4|inst1|data_out[6]~17_combout\,
	datac => \inst2|inst|reg_gen:2:regs|reg_1|y\(3),
	datad => \inst2|inst|reg_gen:3:regs|reg_1|y\(3),
	combout => \inst2|inst|mux_2|mux_1|mux_generate:0:mux_i|Mux0~0_combout\);

-- Location: LCCOMB_X105_Y22_N2
\inst2|inst|add_reg1_dcd|Mux3~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|inst|add_reg1_dcd|Mux3~3_combout\ = (!\inst2|inst5|DOUT[1]~0_combout\ & (!\inst2|inst5|DOUT[0]~2_combout\ & (\inst2|inst5|DOUT[2]~1_combout\ & !\inst|Mux1~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|inst5|DOUT[1]~0_combout\,
	datab => \inst2|inst5|DOUT[0]~2_combout\,
	datac => \inst2|inst5|DOUT[2]~1_combout\,
	datad => \inst|Mux1~0_combout\,
	combout => \inst2|inst|add_reg1_dcd|Mux3~3_combout\);

-- Location: FF_X108_Y21_N13
\inst2|inst|reg_gen:4:regs|reg_1|y[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \SW17~input_o\,
	asdata => \inst3|OUT16B[3]~34_combout\,
	sload => VCC,
	ena => \inst2|inst|add_reg1_dcd|Mux3~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst2|inst|reg_gen:4:regs|reg_1|y\(3));

-- Location: LCCOMB_X108_Y20_N14
\inst2|inst|mux_2|mux_1|mux_generate:0:mux_i|Mux2~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|inst|mux_2|mux_1|mux_generate:0:mux_i|Mux2~1_combout\ = ((\inst4|inst1|exception~2_combout\) # (\inst4|inst1|data_out[1]~11_combout\)) # (!\inst4|inst1|data_out[8]~19_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110111111101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|inst1|data_out[8]~19_combout\,
	datab => \inst4|inst1|exception~2_combout\,
	datac => \inst4|inst1|data_out[1]~11_combout\,
	combout => \inst2|inst|mux_2|mux_1|mux_generate:0:mux_i|Mux2~1_combout\);

-- Location: LCCOMB_X105_Y22_N8
\inst2|inst|add_reg1_dcd|Mux3~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|inst|add_reg1_dcd|Mux3~2_combout\ = (\inst2|inst5|DOUT[2]~1_combout\ & (\inst2|inst5|DOUT[0]~2_combout\ & (!\inst2|inst5|DOUT[1]~0_combout\ & !\inst|Mux1~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|inst5|DOUT[2]~1_combout\,
	datab => \inst2|inst5|DOUT[0]~2_combout\,
	datac => \inst2|inst5|DOUT[1]~0_combout\,
	datad => \inst|Mux1~0_combout\,
	combout => \inst2|inst|add_reg1_dcd|Mux3~2_combout\);

-- Location: FF_X107_Y20_N1
\inst2|inst|reg_gen:5:regs|reg_1|y[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \SW17~input_o\,
	asdata => \inst3|OUT16B[3]~34_combout\,
	sload => VCC,
	ena => \inst2|inst|add_reg1_dcd|Mux3~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst2|inst|reg_gen:5:regs|reg_1|y\(3));

-- Location: LCCOMB_X107_Y20_N24
\inst2|inst|mux_2|mux_1|mux_generate:0:mux_i|Mux2~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|inst|mux_2|mux_1|mux_generate:0:mux_i|Mux2~4_combout\ = (\inst4|inst1|data_out[8]~19_combout\ & (!\inst4|inst1|exception~2_combout\ & ((\inst4|inst1|data_out[1]~11_combout\) # (\inst4|inst1|data_out[6]~17_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|inst1|data_out[8]~19_combout\,
	datab => \inst4|inst1|data_out[1]~11_combout\,
	datac => \inst4|inst1|data_out[6]~17_combout\,
	datad => \inst4|inst1|exception~2_combout\,
	combout => \inst2|inst|mux_2|mux_1|mux_generate:0:mux_i|Mux2~4_combout\);

-- Location: LCCOMB_X105_Y22_N26
\inst2|inst|add_reg1_dcd|Mux3~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|inst|add_reg1_dcd|Mux3~4_combout\ = (\inst2|inst5|DOUT[1]~0_combout\ & (\inst2|inst5|DOUT[2]~1_combout\ & (!\inst2|inst5|DOUT[0]~2_combout\ & !\inst|Mux1~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|inst5|DOUT[1]~0_combout\,
	datab => \inst2|inst5|DOUT[2]~1_combout\,
	datac => \inst2|inst5|DOUT[0]~2_combout\,
	datad => \inst|Mux1~0_combout\,
	combout => \inst2|inst|add_reg1_dcd|Mux3~4_combout\);

-- Location: FF_X107_Y20_N3
\inst2|inst|reg_gen:6:regs|reg_1|y[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \SW17~input_o\,
	asdata => \inst3|OUT16B[3]~34_combout\,
	sload => VCC,
	ena => \inst2|inst|add_reg1_dcd|Mux3~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst2|inst|reg_gen:6:regs|reg_1|y\(3));

-- Location: LCCOMB_X105_Y22_N16
\inst2|inst|add_reg1_dcd|Mux3~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|inst|add_reg1_dcd|Mux3~5_combout\ = (!\inst|Mux1~0_combout\ & (!\inst2|inst5|DOUT[2]~1_combout\ & (!\inst2|inst5|DOUT[1]~0_combout\ & \inst2|inst5|DOUT[0]~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Mux1~0_combout\,
	datab => \inst2|inst5|DOUT[2]~1_combout\,
	datac => \inst2|inst5|DOUT[1]~0_combout\,
	datad => \inst2|inst5|DOUT[0]~2_combout\,
	combout => \inst2|inst|add_reg1_dcd|Mux3~5_combout\);

-- Location: FF_X109_Y20_N9
\inst2|inst|reg_gen:1:regs|reg_1|y[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \SW17~input_o\,
	d => \inst3|OUT16B[3]~34_combout\,
	ena => \inst2|inst|add_reg1_dcd|Mux3~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst2|inst|reg_gen:1:regs|reg_1|y\(3));

-- Location: LCCOMB_X107_Y20_N30
\inst2|inst|mux_2|mux_1|mux_generate:0:mux_i|Mux0~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|inst|mux_2|mux_1|mux_generate:0:mux_i|Mux0~1_combout\ = (\inst2|inst|reg_gen:1:regs|reg_1|y\(3) & (\inst4|inst1|data_out[6]~17_combout\ & !\inst4|inst1|exception~2_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst2|inst|reg_gen:1:regs|reg_1|y\(3),
	datac => \inst4|inst1|data_out[6]~17_combout\,
	datad => \inst4|inst1|exception~2_combout\,
	combout => \inst2|inst|mux_2|mux_1|mux_generate:0:mux_i|Mux0~1_combout\);

-- Location: LCCOMB_X107_Y20_N12
\inst2|inst|mux_2|mux_1|mux_generate:0:mux_i|Mux2~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|inst|mux_2|mux_1|mux_generate:0:mux_i|Mux2~3_combout\ = ((\inst4|inst1|exception~2_combout\) # ((!\inst4|inst1|data_out[6]~17_combout\ & \inst4|inst1|data_out[1]~11_combout\))) # (!\inst4|inst1|data_out[8]~19_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111101001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|inst1|data_out[6]~17_combout\,
	datab => \inst4|inst1|data_out[1]~11_combout\,
	datac => \inst4|inst1|data_out[8]~19_combout\,
	datad => \inst4|inst1|exception~2_combout\,
	combout => \inst2|inst|mux_2|mux_1|mux_generate:0:mux_i|Mux2~3_combout\);

-- Location: LCCOMB_X107_Y20_N16
\inst2|inst|mux_2|mux_1|mux_generate:0:mux_i|Mux0~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|inst|mux_2|mux_1|mux_generate:0:mux_i|Mux0~2_combout\ = (\inst2|inst|mux_2|mux_1|mux_generate:0:mux_i|Mux2~4_combout\ & (\inst2|inst|reg_gen:6:regs|reg_1|y\(3) & ((\inst2|inst|mux_2|mux_1|mux_generate:0:mux_i|Mux2~3_combout\)))) # 
-- (!\inst2|inst|mux_2|mux_1|mux_generate:0:mux_i|Mux2~4_combout\ & (((\inst2|inst|mux_2|mux_1|mux_generate:0:mux_i|Mux0~1_combout\) # (!\inst2|inst|mux_2|mux_1|mux_generate:0:mux_i|Mux2~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100001010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|inst|mux_2|mux_1|mux_generate:0:mux_i|Mux2~4_combout\,
	datab => \inst2|inst|reg_gen:6:regs|reg_1|y\(3),
	datac => \inst2|inst|mux_2|mux_1|mux_generate:0:mux_i|Mux0~1_combout\,
	datad => \inst2|inst|mux_2|mux_1|mux_generate:0:mux_i|Mux2~3_combout\,
	combout => \inst2|inst|mux_2|mux_1|mux_generate:0:mux_i|Mux0~2_combout\);

-- Location: LCCOMB_X107_Y20_N0
\inst2|inst|mux_2|mux_1|mux_generate:0:mux_i|Mux0~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|inst|mux_2|mux_1|mux_generate:0:mux_i|Mux0~3_combout\ = (\inst2|inst|mux_2|mux_1|mux_generate:0:mux_i|Mux2~1_combout\ & (((\inst2|inst|mux_2|mux_1|mux_generate:0:mux_i|Mux0~2_combout\)))) # 
-- (!\inst2|inst|mux_2|mux_1|mux_generate:0:mux_i|Mux2~1_combout\ & ((\inst2|inst|mux_2|mux_1|mux_generate:0:mux_i|Mux0~2_combout\ & (\inst2|inst|reg_gen:4:regs|reg_1|y\(3))) # (!\inst2|inst|mux_2|mux_1|mux_generate:0:mux_i|Mux0~2_combout\ & 
-- ((\inst2|inst|reg_gen:5:regs|reg_1|y\(3))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|inst|reg_gen:4:regs|reg_1|y\(3),
	datab => \inst2|inst|mux_2|mux_1|mux_generate:0:mux_i|Mux2~1_combout\,
	datac => \inst2|inst|reg_gen:5:regs|reg_1|y\(3),
	datad => \inst2|inst|mux_2|mux_1|mux_generate:0:mux_i|Mux0~2_combout\,
	combout => \inst2|inst|mux_2|mux_1|mux_generate:0:mux_i|Mux0~3_combout\);

-- Location: LCCOMB_X107_Y21_N26
\inst2|inst|mux_2|mux_1|mux_generate:0:mux_i|Mux0~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|inst|mux_2|mux_1|mux_generate:0:mux_i|Mux0~4_combout\ = (\inst2|inst|mux_2|mux_1|mux_generate:0:mux_i|Mux2~7_combout\ & (\inst2|inst|mux_2|mux_1|mux_generate:0:mux_i|Mux0~0_combout\)) # (!\inst2|inst|mux_2|mux_1|mux_generate:0:mux_i|Mux2~7_combout\ 
-- & ((\inst2|inst|mux_2|mux_1|mux_generate:0:mux_i|Mux0~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst2|inst|mux_2|mux_1|mux_generate:0:mux_i|Mux2~7_combout\,
	datac => \inst2|inst|mux_2|mux_1|mux_generate:0:mux_i|Mux0~0_combout\,
	datad => \inst2|inst|mux_2|mux_1|mux_generate:0:mux_i|Mux0~3_combout\,
	combout => \inst2|inst|mux_2|mux_1|mux_generate:0:mux_i|Mux0~4_combout\);

-- Location: LCCOMB_X112_Y21_N28
\inst1|reg_gen:30:regs|y[3]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|reg_gen:30:regs|y[3]~feeder_combout\ = \inst2|inst|mux_2|mux_1|mux_generate:0:mux_i|Mux0~4_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst2|inst|mux_2|mux_1|mux_generate:0:mux_i|Mux0~4_combout\,
	combout => \inst1|reg_gen:30:regs|y[3]~feeder_combout\);

-- Location: FF_X112_Y21_N29
\inst1|reg_gen:30:regs|y[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \SW17~input_o\,
	d => \inst1|reg_gen:30:regs|y[3]~feeder_combout\,
	ena => \inst1|dec_to_en\(30),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|reg_gen:30:regs|y\(3));

-- Location: LCCOMB_X113_Y14_N30
\inst1|reg_gen:22:regs|y[3]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|reg_gen:22:regs|y[3]~feeder_combout\ = \inst2|inst|mux_2|mux_1|mux_generate:0:mux_i|Mux0~4_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|inst|mux_2|mux_1|mux_generate:0:mux_i|Mux0~4_combout\,
	combout => \inst1|reg_gen:22:regs|y[3]~feeder_combout\);

-- Location: LCCOMB_X111_Y22_N28
\inst|Mux6~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Mux6~0_combout\ = (\inst4|inst1|INS_OUT[12]~6_combout\ & (\inst4|inst1|INS_OUT[15]~15_combout\ & (\inst4|inst1|INS_OUT[13]~4_combout\ & \inst4|inst1|INS_OUT[14]~5_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|inst1|INS_OUT[12]~6_combout\,
	datab => \inst4|inst1|INS_OUT[15]~15_combout\,
	datac => \inst4|inst1|INS_OUT[13]~4_combout\,
	datad => \inst4|inst1|INS_OUT[14]~5_combout\,
	combout => \inst|Mux6~0_combout\);

-- Location: LCCOMB_X108_Y22_N18
\inst|Mux8~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Mux8~0_combout\ = (\inst4|inst1|INS_OUT[13]~4_combout\ & (\inst4|inst1|INS_OUT[15]~15_combout\ & ((\inst4|inst1|INS_OUT[12]~6_combout\)))) # (!\inst4|inst1|INS_OUT[13]~4_combout\ & (!\inst4|inst1|INS_OUT[15]~15_combout\ & 
-- (\inst4|inst1|INS_OUT[14]~5_combout\ & !\inst4|inst1|INS_OUT[12]~6_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|inst1|INS_OUT[13]~4_combout\,
	datab => \inst4|inst1|INS_OUT[15]~15_combout\,
	datac => \inst4|inst1|INS_OUT[14]~5_combout\,
	datad => \inst4|inst1|INS_OUT[12]~6_combout\,
	combout => \inst|Mux8~0_combout\);

-- Location: LCCOMB_X111_Y21_N0
\inst2|inst3|DOUT[1]~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|inst3|DOUT[1]~4_combout\ = (\inst|Mux8~0_combout\) # ((!\inst4|inst1|exception~2_combout\ & \inst4|inst1|data_out[1]~11_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111101010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|inst1|exception~2_combout\,
	datac => \inst4|inst1|data_out[1]~11_combout\,
	datad => \inst|Mux8~0_combout\,
	combout => \inst2|inst3|DOUT[1]~4_combout\);

-- Location: LCCOMB_X111_Y21_N16
\inst2|inst3|DOUT[0]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|inst3|DOUT[0]~2_combout\ = (\inst4|inst1|INS_OUT[0]~12_combout\ & !\inst|Mux8~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst4|inst1|INS_OUT[0]~12_combout\,
	datad => \inst|Mux8~0_combout\,
	combout => \inst2|inst3|DOUT[0]~2_combout\);

-- Location: LCCOMB_X105_Y22_N12
\inst2|inst|add_reg1_dcd|Mux3~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|inst|add_reg1_dcd|Mux3~1_combout\ = (\inst2|inst5|DOUT[0]~2_combout\ & (\inst2|inst5|DOUT[1]~0_combout\ & (!\inst2|inst5|DOUT[2]~1_combout\ & !\inst|Mux1~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|inst5|DOUT[0]~2_combout\,
	datab => \inst2|inst5|DOUT[1]~0_combout\,
	datac => \inst2|inst5|DOUT[2]~1_combout\,
	datad => \inst|Mux1~0_combout\,
	combout => \inst2|inst|add_reg1_dcd|Mux3~1_combout\);

-- Location: FF_X107_Y18_N29
\inst2|inst|reg_gen:3:regs|reg_1|y[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \SW17~input_o\,
	asdata => \inst3|OUT16B[0]~37_combout\,
	sload => VCC,
	ena => \inst2|inst|add_reg1_dcd|Mux3~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst2|inst|reg_gen:3:regs|reg_1|y\(0));

-- Location: LCCOMB_X106_Y22_N16
\inst2|inst|mux_1|mux_1|mux_generate:0:mux_i|Mux3~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|inst|mux_1|mux_1|mux_generate:0:mux_i|Mux3~2_combout\ = (\inst4|inst1|exception~2_combout\ & (\inst2|inst|reg_gen:2:regs|reg_1|y\(0))) # (!\inst4|inst1|exception~2_combout\ & ((\inst4|inst1|data_out[9]~14_combout\ & 
-- ((\inst2|inst|reg_gen:3:regs|reg_1|y\(0)))) # (!\inst4|inst1|data_out[9]~14_combout\ & (\inst2|inst|reg_gen:2:regs|reg_1|y\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|inst|reg_gen:2:regs|reg_1|y\(0),
	datab => \inst4|inst1|exception~2_combout\,
	datac => \inst2|inst|reg_gen:3:regs|reg_1|y\(0),
	datad => \inst4|inst1|data_out[9]~14_combout\,
	combout => \inst2|inst|mux_1|mux_1|mux_generate:0:mux_i|Mux3~2_combout\);

-- Location: LCCOMB_X107_Y22_N16
\inst4|inst1|data_out[10]~15\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|inst1|data_out[10]~15_combout\ = (\inst4|inst|reg|reg_1|y\(2) & (!\inst4|inst|reg|reg_1|y\(4) & ((!\inst4|inst|reg|reg_1|y\(1))))) # (!\inst4|inst|reg|reg_1|y\(2) & ((\inst4|inst|reg|reg_1|y\(1) & (!\inst4|inst|reg|reg_1|y\(4))) # 
-- (!\inst4|inst|reg|reg_1|y\(1) & ((!\inst4|inst|reg|reg_1|y\(3))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000101000111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|inst|reg|reg_1|y\(4),
	datab => \inst4|inst|reg|reg_1|y\(2),
	datac => \inst4|inst|reg|reg_1|y\(3),
	datad => \inst4|inst|reg|reg_1|y\(1),
	combout => \inst4|inst1|data_out[10]~15_combout\);

-- Location: LCCOMB_X108_Y21_N24
\inst2|inst|mux_1|mux_1|mux_generate:3:mux_i|Mux3~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|inst|mux_1|mux_1|mux_generate:3:mux_i|Mux3~12_combout\ = (\inst4|inst1|data_out[10]~15_combout\ & (!\inst4|inst|reg|reg_1|y\(5) & (!\inst4|inst1|data_out[11]~3_combout\ & !\inst4|inst1|exception~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|inst1|data_out[10]~15_combout\,
	datab => \inst4|inst|reg|reg_1|y\(5),
	datac => \inst4|inst1|data_out[11]~3_combout\,
	datad => \inst4|inst1|exception~2_combout\,
	combout => \inst2|inst|mux_1|mux_1|mux_generate:3:mux_i|Mux3~12_combout\);

-- Location: FF_X108_Y20_N5
\inst2|inst|reg_gen:4:regs|reg_1|y[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \SW17~input_o\,
	asdata => \inst3|OUT16B[0]~37_combout\,
	sload => VCC,
	ena => \inst2|inst|add_reg1_dcd|Mux3~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst2|inst|reg_gen:4:regs|reg_1|y\(0));

-- Location: LCCOMB_X108_Y22_N28
\inst2|inst|mux_1|mux_1|mux_generate:3:mux_i|Mux3~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|inst|mux_1|mux_1|mux_generate:3:mux_i|Mux3~4_combout\ = (\inst4|inst|reg|reg_1|y\(5)) # ((\inst4|inst1|data_out[10]~15_combout\) # ((\inst4|inst1|exception~2_combout\) # (!\inst4|inst1|data_out[11]~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111101111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|inst|reg|reg_1|y\(5),
	datab => \inst4|inst1|data_out[10]~15_combout\,
	datac => \inst4|inst1|data_out[11]~3_combout\,
	datad => \inst4|inst1|exception~2_combout\,
	combout => \inst2|inst|mux_1|mux_1|mux_generate:3:mux_i|Mux3~4_combout\);

-- Location: FF_X108_Y22_N13
\inst2|inst|reg_gen:5:regs|reg_1|y[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \SW17~input_o\,
	asdata => \inst3|OUT16B[0]~37_combout\,
	sload => VCC,
	ena => \inst2|inst|add_reg1_dcd|Mux3~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst2|inst|reg_gen:5:regs|reg_1|y\(0));

-- Location: FF_X107_Y18_N7
\inst2|inst|reg_gen:1:regs|reg_1|y[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \SW17~input_o\,
	asdata => \inst3|OUT16B[0]~37_combout\,
	sload => VCC,
	ena => \inst2|inst|add_reg1_dcd|Mux3~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst2|inst|reg_gen:1:regs|reg_1|y\(0));

-- Location: LCCOMB_X108_Y22_N0
\inst2|inst|mux_1|mux_1|mux_generate:0:mux_i|Mux3~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|inst|mux_1|mux_1|mux_generate:0:mux_i|Mux3~6_combout\ = (!\inst4|inst1|exception~2_combout\ & (\inst2|inst|reg_gen:1:regs|reg_1|y\(0) & ((\inst4|inst|reg|reg_1|y\(5)) # (\inst4|inst1|data_out[9]~13_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|inst|reg|reg_1|y\(5),
	datab => \inst4|inst1|exception~2_combout\,
	datac => \inst4|inst1|data_out[9]~13_combout\,
	datad => \inst2|inst|reg_gen:1:regs|reg_1|y\(0),
	combout => \inst2|inst|mux_1|mux_1|mux_generate:0:mux_i|Mux3~6_combout\);

-- Location: LCCOMB_X109_Y22_N2
\inst4|inst1|data_out[11]~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|inst1|data_out[11]~4_combout\ = (\inst4|inst1|data_out[11]~3_combout\ & !\inst4|inst|reg|reg_1|y\(5))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst4|inst1|data_out[11]~3_combout\,
	datad => \inst4|inst|reg|reg_1|y\(5),
	combout => \inst4|inst1|data_out[11]~4_combout\);

-- Location: LCCOMB_X108_Y22_N24
\inst2|inst|mux_1|mux_1|mux_generate:3:mux_i|Mux3~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|inst|mux_1|mux_1|mux_generate:3:mux_i|Mux3~6_combout\ = (!\inst4|inst1|exception~2_combout\ & ((\inst2|inst|mux_1|mux_1|mux_generate:3:mux_i|Mux3~4_combout\ & (\inst4|inst1|data_out[11]~4_combout\)) # 
-- (!\inst2|inst|mux_1|mux_1|mux_generate:3:mux_i|Mux3~4_combout\ & ((\inst4|inst1|data_out[9]~14_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010001000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|inst1|data_out[11]~4_combout\,
	datab => \inst4|inst1|exception~2_combout\,
	datac => \inst4|inst1|data_out[9]~14_combout\,
	datad => \inst2|inst|mux_1|mux_1|mux_generate:3:mux_i|Mux3~4_combout\,
	combout => \inst2|inst|mux_1|mux_1|mux_generate:3:mux_i|Mux3~6_combout\);

-- Location: FF_X107_Y20_N19
\inst2|inst|reg_gen:6:regs|reg_1|y[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \SW17~input_o\,
	asdata => \inst3|OUT16B[0]~37_combout\,
	sload => VCC,
	ena => \inst2|inst|add_reg1_dcd|Mux3~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst2|inst|reg_gen:6:regs|reg_1|y\(0));

-- Location: LCCOMB_X108_Y22_N6
\inst2|inst|mux_1|mux_1|mux_generate:3:mux_i|Mux3~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|inst|mux_1|mux_1|mux_generate:3:mux_i|Mux3~5_combout\ = (\inst2|inst|mux_1|mux_1|mux_generate:3:mux_i|Mux3~4_combout\ & (((\inst4|inst1|exception~2_combout\) # (!\inst4|inst1|data_out[9]~14_combout\)) # (!\inst4|inst1|data_out[11]~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|inst1|data_out[11]~4_combout\,
	datab => \inst4|inst1|exception~2_combout\,
	datac => \inst4|inst1|data_out[9]~14_combout\,
	datad => \inst2|inst|mux_1|mux_1|mux_generate:3:mux_i|Mux3~4_combout\,
	combout => \inst2|inst|mux_1|mux_1|mux_generate:3:mux_i|Mux3~5_combout\);

-- Location: LCCOMB_X108_Y22_N10
\inst2|inst|mux_1|mux_1|mux_generate:0:mux_i|Mux3~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|inst|mux_1|mux_1|mux_generate:0:mux_i|Mux3~3_combout\ = (\inst2|inst|mux_1|mux_1|mux_generate:3:mux_i|Mux3~6_combout\ & (((\inst2|inst|reg_gen:6:regs|reg_1|y\(0) & \inst2|inst|mux_1|mux_1|mux_generate:3:mux_i|Mux3~5_combout\)))) # 
-- (!\inst2|inst|mux_1|mux_1|mux_generate:3:mux_i|Mux3~6_combout\ & ((\inst2|inst|mux_1|mux_1|mux_generate:0:mux_i|Mux3~6_combout\) # ((!\inst2|inst|mux_1|mux_1|mux_generate:3:mux_i|Mux3~5_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110001000110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|inst|mux_1|mux_1|mux_generate:0:mux_i|Mux3~6_combout\,
	datab => \inst2|inst|mux_1|mux_1|mux_generate:3:mux_i|Mux3~6_combout\,
	datac => \inst2|inst|reg_gen:6:regs|reg_1|y\(0),
	datad => \inst2|inst|mux_1|mux_1|mux_generate:3:mux_i|Mux3~5_combout\,
	combout => \inst2|inst|mux_1|mux_1|mux_generate:0:mux_i|Mux3~3_combout\);

-- Location: LCCOMB_X108_Y22_N12
\inst2|inst|mux_1|mux_1|mux_generate:0:mux_i|Mux3~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|inst|mux_1|mux_1|mux_generate:0:mux_i|Mux3~4_combout\ = (\inst2|inst|mux_1|mux_1|mux_generate:3:mux_i|Mux3~4_combout\ & (((\inst2|inst|mux_1|mux_1|mux_generate:0:mux_i|Mux3~3_combout\)))) # 
-- (!\inst2|inst|mux_1|mux_1|mux_generate:3:mux_i|Mux3~4_combout\ & ((\inst2|inst|mux_1|mux_1|mux_generate:0:mux_i|Mux3~3_combout\ & (\inst2|inst|reg_gen:4:regs|reg_1|y\(0))) # (!\inst2|inst|mux_1|mux_1|mux_generate:0:mux_i|Mux3~3_combout\ & 
-- ((\inst2|inst|reg_gen:5:regs|reg_1|y\(0))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|inst|reg_gen:4:regs|reg_1|y\(0),
	datab => \inst2|inst|mux_1|mux_1|mux_generate:3:mux_i|Mux3~4_combout\,
	datac => \inst2|inst|reg_gen:5:regs|reg_1|y\(0),
	datad => \inst2|inst|mux_1|mux_1|mux_generate:0:mux_i|Mux3~3_combout\,
	combout => \inst2|inst|mux_1|mux_1|mux_generate:0:mux_i|Mux3~4_combout\);

-- Location: LCCOMB_X108_Y22_N8
\inst2|inst|mux_1|mux_1|mux_generate:0:mux_i|Mux3~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|inst|mux_1|mux_1|mux_generate:0:mux_i|Mux3~5_combout\ = (\inst2|inst|mux_1|mux_1|mux_generate:3:mux_i|Mux3~12_combout\ & (\inst2|inst|mux_1|mux_1|mux_generate:0:mux_i|Mux3~2_combout\)) # 
-- (!\inst2|inst|mux_1|mux_1|mux_generate:3:mux_i|Mux3~12_combout\ & ((\inst2|inst|mux_1|mux_1|mux_generate:0:mux_i|Mux3~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|inst|mux_1|mux_1|mux_generate:0:mux_i|Mux3~2_combout\,
	datac => \inst2|inst|mux_1|mux_1|mux_generate:3:mux_i|Mux3~12_combout\,
	datad => \inst2|inst|mux_1|mux_1|mux_generate:0:mux_i|Mux3~4_combout\,
	combout => \inst2|inst|mux_1|mux_1|mux_generate:0:mux_i|Mux3~5_combout\);

-- Location: LCCOMB_X111_Y21_N12
\inst2|inst1|alu0|mux|Mux3~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|inst1|alu0|mux|Mux3~0_combout\ = (\inst2|inst2|OUT16B[0]~18_combout\ & (\inst2|inst3|DOUT[1]~4_combout\ $ (((\inst2|inst3|DOUT[0]~2_combout\) # (\inst2|inst|mux_1|mux_1|mux_generate:0:mux_i|Mux3~5_combout\))))) # 
-- (!\inst2|inst2|OUT16B[0]~18_combout\ & (\inst2|inst|mux_1|mux_1|mux_generate:0:mux_i|Mux3~5_combout\ & (\inst2|inst3|DOUT[1]~4_combout\ $ (\inst2|inst3|DOUT[0]~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011011000101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|inst2|OUT16B[0]~18_combout\,
	datab => \inst2|inst3|DOUT[1]~4_combout\,
	datac => \inst2|inst3|DOUT[0]~2_combout\,
	datad => \inst2|inst|mux_1|mux_1|mux_generate:0:mux_i|Mux3~5_combout\,
	combout => \inst2|inst1|alu0|mux|Mux3~0_combout\);

-- Location: LCCOMB_X112_Y21_N16
\inst1|dec_to_en~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|dec_to_en~9_combout\ = (\inst2|inst1|alu0|mux|Mux2~1_combout\ $ (\inst2|inst1|alu0|mux|Mux3~0_combout\)) # (!\inst2|inst1|alu0|mux|Mux1~3_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111110101111101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|inst1|alu0|mux|Mux1~3_combout\,
	datab => \inst2|inst1|alu0|mux|Mux2~1_combout\,
	datac => \inst2|inst1|alu0|mux|Mux3~0_combout\,
	combout => \inst1|dec_to_en~9_combout\);

-- Location: LCCOMB_X113_Y14_N14
\inst1|dec_to_en[22]\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|dec_to_en\(22) = (!\inst2|inst1|alu1|mux|Mux3~1_combout\ & (!\inst2|inst1|alu0|mux|Mux0~3_combout\ & (\inst|Mux6~0_combout\ & !\inst1|dec_to_en~9_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|inst1|alu1|mux|Mux3~1_combout\,
	datab => \inst2|inst1|alu0|mux|Mux0~3_combout\,
	datac => \inst|Mux6~0_combout\,
	datad => \inst1|dec_to_en~9_combout\,
	combout => \inst1|dec_to_en\(22));

-- Location: FF_X113_Y14_N31
\inst1|reg_gen:22:regs|y[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \SW17~input_o\,
	d => \inst1|reg_gen:22:regs|y[3]~feeder_combout\,
	ena => \inst1|dec_to_en\(22),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|reg_gen:22:regs|y\(3));

-- Location: LCCOMB_X114_Y18_N14
\inst1|reg_gen:6:regs|y[3]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|reg_gen:6:regs|y[3]~feeder_combout\ = \inst2|inst|mux_2|mux_1|mux_generate:0:mux_i|Mux0~4_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst2|inst|mux_2|mux_1|mux_generate:0:mux_i|Mux0~4_combout\,
	combout => \inst1|reg_gen:6:regs|y[3]~feeder_combout\);

-- Location: LCCOMB_X114_Y18_N30
\inst1|dec_to_en[6]\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|dec_to_en\(6) = (!\inst1|dec_to_en~9_combout\ & (!\inst2|inst1|alu0|mux|Mux0~3_combout\ & (\inst2|inst1|alu1|mux|Mux3~1_combout\ & \inst|Mux6~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|dec_to_en~9_combout\,
	datab => \inst2|inst1|alu0|mux|Mux0~3_combout\,
	datac => \inst2|inst1|alu1|mux|Mux3~1_combout\,
	datad => \inst|Mux6~0_combout\,
	combout => \inst1|dec_to_en\(6));

-- Location: FF_X114_Y18_N15
\inst1|reg_gen:6:regs|y[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \SW17~input_o\,
	d => \inst1|reg_gen:6:regs|y[3]~feeder_combout\,
	ena => \inst1|dec_to_en\(6),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|reg_gen:6:regs|y\(3));

-- Location: LCCOMB_X110_Y18_N4
\inst1|DOUT[11]~122\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|DOUT[11]~122_combout\ = (\inst2|inst1|alu1|mux|Mux3~1_combout\ & ((\inst1|reg_gen:6:regs|y\(3)))) # (!\inst2|inst1|alu1|mux|Mux3~1_combout\ & (\inst1|reg_gen:22:regs|y\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|reg_gen:22:regs|y\(3),
	datab => \inst1|reg_gen:6:regs|y\(3),
	datad => \inst2|inst1|alu1|mux|Mux3~1_combout\,
	combout => \inst1|DOUT[11]~122_combout\);

-- Location: LCCOMB_X111_Y20_N0
\inst1|dcd|dcd_3|dcd|Mux7~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|dcd|dcd_3|dcd|Mux7~5_combout\ = (\inst2|inst1|alu0|mux|Mux2~1_combout\ & (\inst2|inst1|alu0|mux|Mux3~0_combout\ & !\inst2|inst1|alu0|mux|Mux1~3_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst2|inst1|alu0|mux|Mux2~1_combout\,
	datac => \inst2|inst1|alu0|mux|Mux3~0_combout\,
	datad => \inst2|inst1|alu0|mux|Mux1~3_combout\,
	combout => \inst1|dcd|dcd_3|dcd|Mux7~5_combout\);

-- Location: LCCOMB_X112_Y21_N30
\inst1|dcd|dcd_3|dcd|Mux7~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|dcd|dcd_3|dcd|Mux7~7_combout\ = (!\inst2|inst1|alu0|mux|Mux1~3_combout\ & (!\inst2|inst1|alu0|mux|Mux3~0_combout\ & !\inst2|inst1|alu0|mux|Mux2~1_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst2|inst1|alu0|mux|Mux1~3_combout\,
	datac => \inst2|inst1|alu0|mux|Mux3~0_combout\,
	datad => \inst2|inst1|alu0|mux|Mux2~1_combout\,
	combout => \inst1|dcd|dcd_3|dcd|Mux7~7_combout\);

-- Location: LCCOMB_X114_Y15_N24
\inst1|dec_to_en[21]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|dec_to_en[21]~1_combout\ = (!\inst2|inst1|alu1|mux|Mux3~1_combout\ & (\inst|Mux6~0_combout\ & !\inst2|inst1|alu0|mux|Mux0~3_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|inst1|alu1|mux|Mux3~1_combout\,
	datab => \inst|Mux6~0_combout\,
	datad => \inst2|inst1|alu0|mux|Mux0~3_combout\,
	combout => \inst1|dec_to_en[21]~1_combout\);

-- Location: LCCOMB_X114_Y17_N16
\inst1|dec_to_en[18]\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|dec_to_en\(18) = (\inst1|dec_to_en[21]~1_combout\ & ((\inst1|dcd|dcd_3|dcd|Mux7~5_combout\) # (\inst1|dcd|dcd_3|dcd|Mux7~7_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|dcd|dcd_3|dcd|Mux7~5_combout\,
	datab => \inst1|dcd|dcd_3|dcd|Mux7~7_combout\,
	datad => \inst1|dec_to_en[21]~1_combout\,
	combout => \inst1|dec_to_en\(18));

-- Location: FF_X110_Y18_N31
\inst1|reg_gen:18:regs|y[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \SW17~input_o\,
	asdata => \inst2|inst|mux_2|mux_1|mux_generate:0:mux_i|Mux0~4_combout\,
	sload => VCC,
	ena => \inst1|dec_to_en\(18),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|reg_gen:18:regs|y\(3));

-- Location: LCCOMB_X110_Y18_N30
\inst1|DOUT[3]~232\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|DOUT[3]~232_combout\ = (\inst2|inst1|alu0|mux|Mux2~1_combout\ & (((\inst2|inst1|alu0|mux|Mux1~3_combout\)))) # (!\inst2|inst1|alu0|mux|Mux2~1_combout\ & ((\inst2|inst1|alu0|mux|Mux1~3_combout\ & (\inst1|DOUT[11]~122_combout\)) # 
-- (!\inst2|inst1|alu0|mux|Mux1~3_combout\ & ((\inst1|reg_gen:18:regs|y\(3))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|DOUT[11]~122_combout\,
	datab => \inst2|inst1|alu0|mux|Mux2~1_combout\,
	datac => \inst1|reg_gen:18:regs|y\(3),
	datad => \inst2|inst1|alu0|mux|Mux1~3_combout\,
	combout => \inst1|DOUT[3]~232_combout\);

-- Location: LCCOMB_X110_Y18_N8
\inst1|reg_gen:16:regs|y[3]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|reg_gen:16:regs|y[3]~feeder_combout\ = \inst2|inst|mux_2|mux_1|mux_generate:0:mux_i|Mux0~4_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst2|inst|mux_2|mux_1|mux_generate:0:mux_i|Mux0~4_combout\,
	combout => \inst1|reg_gen:16:regs|y[3]~feeder_combout\);

-- Location: LCCOMB_X111_Y21_N8
\inst1|dcd|dcd_3|dcd|Mux7~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|dcd|dcd_3|dcd|Mux7~2_combout\ = (!\inst2|inst1|alu0|mux|Mux2~1_combout\ & (\inst2|inst1|alu0|mux|Mux1~3_combout\ & \inst2|inst1|alu0|mux|Mux3~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst2|inst1|alu0|mux|Mux2~1_combout\,
	datac => \inst2|inst1|alu0|mux|Mux1~3_combout\,
	datad => \inst2|inst1|alu0|mux|Mux3~0_combout\,
	combout => \inst1|dcd|dcd_3|dcd|Mux7~2_combout\);

-- Location: LCCOMB_X110_Y18_N16
\inst1|dec_to_en[16]~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|dec_to_en[16]~3_combout\ = (\inst2|inst1|alu1|mux|Mux3~1_combout\ & (\inst1|dcd|dcd_3|dcd|Mux7~2_combout\ & (\inst2|inst1|alu0|mux|Mux0~3_combout\))) # (!\inst2|inst1|alu1|mux|Mux3~1_combout\ & (((!\inst2|inst1|alu0|mux|Mux0~3_combout\ & 
-- \inst1|dcd|dcd_3|dcd|Mux7~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000001110000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|dcd|dcd_3|dcd|Mux7~2_combout\,
	datab => \inst2|inst1|alu1|mux|Mux3~1_combout\,
	datac => \inst2|inst1|alu0|mux|Mux0~3_combout\,
	datad => \inst1|dcd|dcd_3|dcd|Mux7~0_combout\,
	combout => \inst1|dec_to_en[16]~3_combout\);

-- Location: LCCOMB_X111_Y18_N24
\inst1|dec_to_en[16]~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|dec_to_en[16]~4_combout\ = (\inst|Mux6~0_combout\ & \inst1|dec_to_en[16]~3_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst|Mux6~0_combout\,
	datad => \inst1|dec_to_en[16]~3_combout\,
	combout => \inst1|dec_to_en[16]~4_combout\);

-- Location: FF_X110_Y18_N9
\inst1|reg_gen:16:regs|y[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \SW17~input_o\,
	d => \inst1|reg_gen:16:regs|y[3]~feeder_combout\,
	ena => \inst1|dec_to_en[16]~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|reg_gen:16:regs|y\(3));

-- Location: LCCOMB_X114_Y15_N30
\inst1|reg_gen:20:regs|y[3]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|reg_gen:20:regs|y[3]~feeder_combout\ = \inst2|inst|mux_2|mux_1|mux_generate:0:mux_i|Mux0~4_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|inst|mux_2|mux_1|mux_generate:0:mux_i|Mux0~4_combout\,
	combout => \inst1|reg_gen:20:regs|y[3]~feeder_combout\);

-- Location: LCCOMB_X107_Y18_N0
\inst1|dcd|dcd_3|dcd|Mux7~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|dcd|dcd_3|dcd|Mux7~4_combout\ = (\inst2|inst1|alu0|mux|Mux3~0_combout\ & (!\inst2|inst1|alu0|mux|Mux1~3_combout\ & !\inst2|inst1|alu0|mux|Mux2~1_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|inst1|alu0|mux|Mux3~0_combout\,
	datab => \inst2|inst1|alu0|mux|Mux1~3_combout\,
	datad => \inst2|inst1|alu0|mux|Mux2~1_combout\,
	combout => \inst1|dcd|dcd_3|dcd|Mux7~4_combout\);

-- Location: LCCOMB_X111_Y20_N6
\inst1|dcd|dcd_3|dcd|Mux7~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|dcd|dcd_3|dcd|Mux7~6_combout\ = (\inst2|inst1|alu0|mux|Mux1~3_combout\ & (!\inst2|inst1|alu0|mux|Mux3~0_combout\ & \inst2|inst1|alu0|mux|Mux2~1_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010001000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|inst1|alu0|mux|Mux1~3_combout\,
	datab => \inst2|inst1|alu0|mux|Mux3~0_combout\,
	datad => \inst2|inst1|alu0|mux|Mux2~1_combout\,
	combout => \inst1|dcd|dcd_3|dcd|Mux7~6_combout\);

-- Location: LCCOMB_X114_Y15_N22
\inst1|dec_to_en[20]\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|dec_to_en\(20) = (\inst1|dec_to_en[21]~1_combout\ & ((\inst1|dcd|dcd_3|dcd|Mux7~4_combout\) # (\inst1|dcd|dcd_3|dcd|Mux7~6_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|dcd|dcd_3|dcd|Mux7~4_combout\,
	datab => \inst1|dcd|dcd_3|dcd|Mux7~6_combout\,
	datad => \inst1|dec_to_en[21]~1_combout\,
	combout => \inst1|dec_to_en\(20));

-- Location: FF_X114_Y15_N31
\inst1|reg_gen:20:regs|y[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \SW17~input_o\,
	d => \inst1|reg_gen:20:regs|y[3]~feeder_combout\,
	ena => \inst1|dec_to_en\(20),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|reg_gen:20:regs|y\(3));

-- Location: LCCOMB_X110_Y18_N28
\inst1|DOUT[3]~233\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|DOUT[3]~233_combout\ = (\inst1|DOUT[3]~232_combout\ & (((\inst1|reg_gen:20:regs|y\(3))) # (!\inst2|inst1|alu0|mux|Mux2~1_combout\))) # (!\inst1|DOUT[3]~232_combout\ & (\inst2|inst1|alu0|mux|Mux2~1_combout\ & (\inst1|reg_gen:16:regs|y\(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101001100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|DOUT[3]~232_combout\,
	datab => \inst2|inst1|alu0|mux|Mux2~1_combout\,
	datac => \inst1|reg_gen:16:regs|y\(3),
	datad => \inst1|reg_gen:20:regs|y\(3),
	combout => \inst1|DOUT[3]~233_combout\);

-- Location: LCCOMB_X108_Y22_N30
\inst2|inst1|alu0|adder|C~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|inst1|alu0|adder|C~0_combout\ = (\inst2|inst3|DOUT[2]~3_combout\ & (\inst2|inst|mux_1|mux_1|mux_generate:0:mux_i|Mux3~5_combout\ $ (((!\inst2|inst2|OUT16B[0]~27_combout\ & !\inst2|inst2|OUT16B[0]~16_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000010000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|inst2|OUT16B[0]~27_combout\,
	datab => \inst2|inst3|DOUT[2]~3_combout\,
	datac => \inst2|inst|mux_1|mux_1|mux_generate:0:mux_i|Mux3~5_combout\,
	datad => \inst2|inst2|OUT16B[0]~16_combout\,
	combout => \inst2|inst1|alu0|adder|C~0_combout\);

-- Location: LCCOMB_X108_Y18_N24
\inst2|inst|reg_gen:2:regs|reg_1|y[1]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|inst|reg_gen:2:regs|reg_1|y[1]~feeder_combout\ = \inst3|OUT16B[1]~36_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst3|OUT16B[1]~36_combout\,
	combout => \inst2|inst|reg_gen:2:regs|reg_1|y[1]~feeder_combout\);

-- Location: FF_X108_Y18_N25
\inst2|inst|reg_gen:2:regs|reg_1|y[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \SW17~input_o\,
	d => \inst2|inst|reg_gen:2:regs|reg_1|y[1]~feeder_combout\,
	ena => \inst2|inst|add_reg1_dcd|Mux3~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst2|inst|reg_gen:2:regs|reg_1|y\(1));

-- Location: LCCOMB_X108_Y18_N10
\inst2|inst|mux_2|mux_1|mux_generate:0:mux_i|Mux2~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|inst|mux_2|mux_1|mux_generate:0:mux_i|Mux2~0_combout\ = (\inst4|inst1|data_out[6]~17_combout\ & ((\inst4|inst1|exception~2_combout\ & ((\inst2|inst|reg_gen:2:regs|reg_1|y\(1)))) # (!\inst4|inst1|exception~2_combout\ & 
-- (\inst2|inst|reg_gen:3:regs|reg_1|y\(1))))) # (!\inst4|inst1|data_out[6]~17_combout\ & (((\inst2|inst|reg_gen:2:regs|reg_1|y\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|inst|reg_gen:3:regs|reg_1|y\(1),
	datab => \inst2|inst|reg_gen:2:regs|reg_1|y\(1),
	datac => \inst4|inst1|data_out[6]~17_combout\,
	datad => \inst4|inst1|exception~2_combout\,
	combout => \inst2|inst|mux_2|mux_1|mux_generate:0:mux_i|Mux2~0_combout\);

-- Location: FF_X107_Y20_N9
\inst2|inst|reg_gen:5:regs|reg_1|y[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \SW17~input_o\,
	asdata => \inst3|OUT16B[1]~36_combout\,
	sload => VCC,
	ena => \inst2|inst|add_reg1_dcd|Mux3~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst2|inst|reg_gen:5:regs|reg_1|y\(1));

-- Location: FF_X108_Y20_N7
\inst2|inst|reg_gen:4:regs|reg_1|y[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \SW17~input_o\,
	asdata => \inst3|OUT16B[1]~36_combout\,
	sload => VCC,
	ena => \inst2|inst|add_reg1_dcd|Mux3~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst2|inst|reg_gen:4:regs|reg_1|y\(1));

-- Location: FF_X107_Y18_N13
\inst2|inst|reg_gen:1:regs|reg_1|y[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \SW17~input_o\,
	asdata => \inst3|OUT16B[1]~36_combout\,
	sload => VCC,
	ena => \inst2|inst|add_reg1_dcd|Mux3~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst2|inst|reg_gen:1:regs|reg_1|y\(1));

-- Location: LCCOMB_X107_Y20_N22
\inst2|inst|mux_2|mux_1|mux_generate:0:mux_i|Mux2~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|inst|mux_2|mux_1|mux_generate:0:mux_i|Mux2~2_combout\ = (\inst2|inst|reg_gen:1:regs|reg_1|y\(1) & (\inst4|inst1|data_out[6]~17_combout\ & !\inst4|inst1|exception~2_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst2|inst|reg_gen:1:regs|reg_1|y\(1),
	datac => \inst4|inst1|data_out[6]~17_combout\,
	datad => \inst4|inst1|exception~2_combout\,
	combout => \inst2|inst|mux_2|mux_1|mux_generate:0:mux_i|Mux2~2_combout\);

-- Location: FF_X107_Y20_N15
\inst2|inst|reg_gen:6:regs|reg_1|y[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \SW17~input_o\,
	asdata => \inst3|OUT16B[1]~36_combout\,
	sload => VCC,
	ena => \inst2|inst|add_reg1_dcd|Mux3~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst2|inst|reg_gen:6:regs|reg_1|y\(1));

-- Location: LCCOMB_X107_Y20_N14
\inst2|inst|mux_2|mux_1|mux_generate:0:mux_i|Mux2~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|inst|mux_2|mux_1|mux_generate:0:mux_i|Mux2~5_combout\ = (\inst2|inst|mux_2|mux_1|mux_generate:0:mux_i|Mux2~4_combout\ & (((\inst2|inst|reg_gen:6:regs|reg_1|y\(1) & \inst2|inst|mux_2|mux_1|mux_generate:0:mux_i|Mux2~3_combout\)))) # 
-- (!\inst2|inst|mux_2|mux_1|mux_generate:0:mux_i|Mux2~4_combout\ & ((\inst2|inst|mux_2|mux_1|mux_generate:0:mux_i|Mux2~2_combout\) # ((!\inst2|inst|mux_2|mux_1|mux_generate:0:mux_i|Mux2~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110001000110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|inst|mux_2|mux_1|mux_generate:0:mux_i|Mux2~2_combout\,
	datab => \inst2|inst|mux_2|mux_1|mux_generate:0:mux_i|Mux2~4_combout\,
	datac => \inst2|inst|reg_gen:6:regs|reg_1|y\(1),
	datad => \inst2|inst|mux_2|mux_1|mux_generate:0:mux_i|Mux2~3_combout\,
	combout => \inst2|inst|mux_2|mux_1|mux_generate:0:mux_i|Mux2~5_combout\);

-- Location: LCCOMB_X108_Y20_N6
\inst2|inst|mux_2|mux_1|mux_generate:0:mux_i|Mux2~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|inst|mux_2|mux_1|mux_generate:0:mux_i|Mux2~6_combout\ = (\inst2|inst|mux_2|mux_1|mux_generate:0:mux_i|Mux2~1_combout\ & (((\inst2|inst|mux_2|mux_1|mux_generate:0:mux_i|Mux2~5_combout\)))) # 
-- (!\inst2|inst|mux_2|mux_1|mux_generate:0:mux_i|Mux2~1_combout\ & ((\inst2|inst|mux_2|mux_1|mux_generate:0:mux_i|Mux2~5_combout\ & ((\inst2|inst|reg_gen:4:regs|reg_1|y\(1)))) # (!\inst2|inst|mux_2|mux_1|mux_generate:0:mux_i|Mux2~5_combout\ & 
-- (\inst2|inst|reg_gen:5:regs|reg_1|y\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|inst|reg_gen:5:regs|reg_1|y\(1),
	datab => \inst2|inst|mux_2|mux_1|mux_generate:0:mux_i|Mux2~1_combout\,
	datac => \inst2|inst|reg_gen:4:regs|reg_1|y\(1),
	datad => \inst2|inst|mux_2|mux_1|mux_generate:0:mux_i|Mux2~5_combout\,
	combout => \inst2|inst|mux_2|mux_1|mux_generate:0:mux_i|Mux2~6_combout\);

-- Location: LCCOMB_X107_Y21_N12
\inst2|inst|mux_2|mux_1|mux_generate:0:mux_i|Mux2~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|inst|mux_2|mux_1|mux_generate:0:mux_i|Mux2~8_combout\ = (\inst2|inst|mux_2|mux_1|mux_generate:0:mux_i|Mux2~7_combout\ & (\inst2|inst|mux_2|mux_1|mux_generate:0:mux_i|Mux2~0_combout\)) # (!\inst2|inst|mux_2|mux_1|mux_generate:0:mux_i|Mux2~7_combout\ 
-- & ((\inst2|inst|mux_2|mux_1|mux_generate:0:mux_i|Mux2~6_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst2|inst|mux_2|mux_1|mux_generate:0:mux_i|Mux2~7_combout\,
	datac => \inst2|inst|mux_2|mux_1|mux_generate:0:mux_i|Mux2~0_combout\,
	datad => \inst2|inst|mux_2|mux_1|mux_generate:0:mux_i|Mux2~6_combout\,
	combout => \inst2|inst|mux_2|mux_1|mux_generate:0:mux_i|Mux2~8_combout\);

-- Location: LCCOMB_X107_Y21_N28
\inst2|inst1|alu0|inverter|Rt[1]\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|inst1|alu0|inverter|Rt\(1) = \inst2|inst3|DOUT[2]~3_combout\ $ (((\inst|Mux7~0_combout\ & (\inst4|inst1|INS_OUT[1]~11_combout\)) # (!\inst|Mux7~0_combout\ & ((\inst2|inst|mux_2|mux_1|mux_generate:0:mux_i|Mux2~8_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110010101101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|inst3|DOUT[2]~3_combout\,
	datab => \inst4|inst1|INS_OUT[1]~11_combout\,
	datac => \inst|Mux7~0_combout\,
	datad => \inst2|inst|mux_2|mux_1|mux_generate:0:mux_i|Mux2~8_combout\,
	combout => \inst2|inst1|alu0|inverter|Rt\(1));

-- Location: LCCOMB_X108_Y22_N2
\inst2|inst1|alu0|adder|G[0]\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|inst1|alu0|adder|G\(0) = (\inst2|inst|mux_1|mux_1|mux_generate:0:mux_i|Mux3~5_combout\ & (\inst2|inst3|DOUT[2]~3_combout\ $ (((\inst2|inst2|OUT16B[0]~27_combout\) # (\inst2|inst2|OUT16B[0]~16_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000001100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|inst2|OUT16B[0]~27_combout\,
	datab => \inst2|inst3|DOUT[2]~3_combout\,
	datac => \inst2|inst|mux_1|mux_1|mux_generate:0:mux_i|Mux3~5_combout\,
	datad => \inst2|inst2|OUT16B[0]~16_combout\,
	combout => \inst2|inst1|alu0|adder|G\(0));

-- Location: LCCOMB_X109_Y21_N12
\inst2|inst1|alu0|adder|C[2]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|inst1|alu0|adder|C[2]~1_combout\ = (\inst2|inst|mux_1|mux_1|mux_generate:0:mux_i|Mux2~5_combout\ & ((\inst2|inst1|alu0|adder|C~0_combout\) # ((\inst2|inst1|alu0|inverter|Rt\(1)) # (\inst2|inst1|alu0|adder|G\(0))))) # 
-- (!\inst2|inst|mux_1|mux_1|mux_generate:0:mux_i|Mux2~5_combout\ & (\inst2|inst1|alu0|inverter|Rt\(1) & ((\inst2|inst1|alu0|adder|C~0_combout\) # (\inst2|inst1|alu0|adder|G\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110011101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|inst1|alu0|adder|C~0_combout\,
	datab => \inst2|inst|mux_1|mux_1|mux_generate:0:mux_i|Mux2~5_combout\,
	datac => \inst2|inst1|alu0|inverter|Rt\(1),
	datad => \inst2|inst1|alu0|adder|G\(0),
	combout => \inst2|inst1|alu0|adder|C[2]~1_combout\);

-- Location: LCCOMB_X105_Y22_N6
\inst2|inst|reg_gen:3:regs|reg_1|y[2]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|inst|reg_gen:3:regs|reg_1|y[2]~feeder_combout\ = \inst3|OUT16B[2]~35_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst3|OUT16B[2]~35_combout\,
	combout => \inst2|inst|reg_gen:3:regs|reg_1|y[2]~feeder_combout\);

-- Location: FF_X105_Y22_N7
\inst2|inst|reg_gen:3:regs|reg_1|y[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \SW17~input_o\,
	d => \inst2|inst|reg_gen:3:regs|reg_1|y[2]~feeder_combout\,
	ena => \inst2|inst|add_reg1_dcd|Mux3~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst2|inst|reg_gen:3:regs|reg_1|y\(2));

-- Location: LCCOMB_X106_Y22_N18
\inst2|inst|mux_1|mux_1|mux_generate:0:mux_i|Mux1~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|inst|mux_1|mux_1|mux_generate:0:mux_i|Mux1~2_combout\ = (\inst4|inst1|data_out[9]~14_combout\ & ((\inst4|inst1|exception~2_combout\ & ((\inst2|inst|reg_gen:2:regs|reg_1|y\(2)))) # (!\inst4|inst1|exception~2_combout\ & 
-- (\inst2|inst|reg_gen:3:regs|reg_1|y\(2))))) # (!\inst4|inst1|data_out[9]~14_combout\ & (((\inst2|inst|reg_gen:2:regs|reg_1|y\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|inst1|data_out[9]~14_combout\,
	datab => \inst2|inst|reg_gen:3:regs|reg_1|y\(2),
	datac => \inst2|inst|reg_gen:2:regs|reg_1|y\(2),
	datad => \inst4|inst1|exception~2_combout\,
	combout => \inst2|inst|mux_1|mux_1|mux_generate:0:mux_i|Mux1~2_combout\);

-- Location: FF_X108_Y20_N23
\inst2|inst|reg_gen:4:regs|reg_1|y[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \SW17~input_o\,
	asdata => \inst3|OUT16B[2]~35_combout\,
	sload => VCC,
	ena => \inst2|inst|add_reg1_dcd|Mux3~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst2|inst|reg_gen:4:regs|reg_1|y\(2));

-- Location: FF_X108_Y20_N1
\inst2|inst|reg_gen:5:regs|reg_1|y[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \SW17~input_o\,
	asdata => \inst3|OUT16B[2]~35_combout\,
	sload => VCC,
	ena => \inst2|inst|add_reg1_dcd|Mux3~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst2|inst|reg_gen:5:regs|reg_1|y\(2));

-- Location: FF_X107_Y20_N11
\inst2|inst|reg_gen:6:regs|reg_1|y[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \SW17~input_o\,
	asdata => \inst3|OUT16B[2]~35_combout\,
	sload => VCC,
	ena => \inst2|inst|add_reg1_dcd|Mux3~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst2|inst|reg_gen:6:regs|reg_1|y\(2));

-- Location: FF_X106_Y19_N7
\inst2|inst|reg_gen:1:regs|reg_1|y[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \SW17~input_o\,
	asdata => \inst3|OUT16B[2]~35_combout\,
	sload => VCC,
	ena => \inst2|inst|add_reg1_dcd|Mux3~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst2|inst|reg_gen:1:regs|reg_1|y\(2));

-- Location: LCCOMB_X107_Y19_N12
\inst2|inst|mux_1|mux_1|mux_generate:0:mux_i|Mux1~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|inst|mux_1|mux_1|mux_generate:0:mux_i|Mux1~6_combout\ = (\inst2|inst|reg_gen:1:regs|reg_1|y\(2) & (!\inst4|inst1|exception~2_combout\ & ((\inst4|inst|reg|reg_1|y\(5)) # (\inst4|inst1|data_out[9]~13_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110000001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|inst|reg|reg_1|y\(5),
	datab => \inst2|inst|reg_gen:1:regs|reg_1|y\(2),
	datac => \inst4|inst1|exception~2_combout\,
	datad => \inst4|inst1|data_out[9]~13_combout\,
	combout => \inst2|inst|mux_1|mux_1|mux_generate:0:mux_i|Mux1~6_combout\);

-- Location: LCCOMB_X108_Y20_N24
\inst2|inst|mux_1|mux_1|mux_generate:0:mux_i|Mux1~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|inst|mux_1|mux_1|mux_generate:0:mux_i|Mux1~3_combout\ = (\inst2|inst|mux_1|mux_1|mux_generate:3:mux_i|Mux3~6_combout\ & (\inst2|inst|reg_gen:6:regs|reg_1|y\(2) & ((\inst2|inst|mux_1|mux_1|mux_generate:3:mux_i|Mux3~5_combout\)))) # 
-- (!\inst2|inst|mux_1|mux_1|mux_generate:3:mux_i|Mux3~6_combout\ & (((\inst2|inst|mux_1|mux_1|mux_generate:0:mux_i|Mux1~6_combout\) # (!\inst2|inst|mux_1|mux_1|mux_generate:3:mux_i|Mux3~5_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010110000001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|inst|reg_gen:6:regs|reg_1|y\(2),
	datab => \inst2|inst|mux_1|mux_1|mux_generate:0:mux_i|Mux1~6_combout\,
	datac => \inst2|inst|mux_1|mux_1|mux_generate:3:mux_i|Mux3~6_combout\,
	datad => \inst2|inst|mux_1|mux_1|mux_generate:3:mux_i|Mux3~5_combout\,
	combout => \inst2|inst|mux_1|mux_1|mux_generate:0:mux_i|Mux1~3_combout\);

-- Location: LCCOMB_X108_Y20_N0
\inst2|inst|mux_1|mux_1|mux_generate:0:mux_i|Mux1~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|inst|mux_1|mux_1|mux_generate:0:mux_i|Mux1~4_combout\ = (\inst2|inst|mux_1|mux_1|mux_generate:3:mux_i|Mux3~4_combout\ & (((\inst2|inst|mux_1|mux_1|mux_generate:0:mux_i|Mux1~3_combout\)))) # 
-- (!\inst2|inst|mux_1|mux_1|mux_generate:3:mux_i|Mux3~4_combout\ & ((\inst2|inst|mux_1|mux_1|mux_generate:0:mux_i|Mux1~3_combout\ & (\inst2|inst|reg_gen:4:regs|reg_1|y\(2))) # (!\inst2|inst|mux_1|mux_1|mux_generate:0:mux_i|Mux1~3_combout\ & 
-- ((\inst2|inst|reg_gen:5:regs|reg_1|y\(2))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|inst|reg_gen:4:regs|reg_1|y\(2),
	datab => \inst2|inst|mux_1|mux_1|mux_generate:3:mux_i|Mux3~4_combout\,
	datac => \inst2|inst|reg_gen:5:regs|reg_1|y\(2),
	datad => \inst2|inst|mux_1|mux_1|mux_generate:0:mux_i|Mux1~3_combout\,
	combout => \inst2|inst|mux_1|mux_1|mux_generate:0:mux_i|Mux1~4_combout\);

-- Location: LCCOMB_X108_Y21_N4
\inst2|inst|mux_1|mux_1|mux_generate:0:mux_i|Mux1~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|inst|mux_1|mux_1|mux_generate:0:mux_i|Mux1~5_combout\ = (\inst2|inst|mux_1|mux_1|mux_generate:3:mux_i|Mux3~12_combout\ & (\inst2|inst|mux_1|mux_1|mux_generate:0:mux_i|Mux1~2_combout\)) # 
-- (!\inst2|inst|mux_1|mux_1|mux_generate:3:mux_i|Mux3~12_combout\ & ((\inst2|inst|mux_1|mux_1|mux_generate:0:mux_i|Mux1~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst2|inst|mux_1|mux_1|mux_generate:3:mux_i|Mux3~12_combout\,
	datac => \inst2|inst|mux_1|mux_1|mux_generate:0:mux_i|Mux1~2_combout\,
	datad => \inst2|inst|mux_1|mux_1|mux_generate:0:mux_i|Mux1~4_combout\,
	combout => \inst2|inst|mux_1|mux_1|mux_generate:0:mux_i|Mux1~5_combout\);

-- Location: LCCOMB_X111_Y21_N28
\inst2|inst1|alu0|adder|S[2]\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|inst1|alu0|adder|S\(2) = \inst2|inst2|OUT16B[2]~17_combout\ $ (\inst2|inst1|alu0|adder|C[2]~1_combout\ $ (\inst2|inst|mux_1|mux_1|mux_generate:0:mux_i|Mux1~5_combout\ $ (\inst2|inst3|DOUT[2]~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|inst2|OUT16B[2]~17_combout\,
	datab => \inst2|inst1|alu0|adder|C[2]~1_combout\,
	datac => \inst2|inst|mux_1|mux_1|mux_generate:0:mux_i|Mux1~5_combout\,
	datad => \inst2|inst3|DOUT[2]~3_combout\,
	combout => \inst2|inst1|alu0|adder|S\(2));

-- Location: LCCOMB_X109_Y23_N30
\inst2|inst1|alu0|mux|Mux1~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|inst1|alu0|mux|Mux1~4_combout\ = (\inst|Mux8~0_combout\) # ((!\inst4|inst1|INS_OUT[0]~12_combout\ & (\inst4|inst1|data_out[1]~11_combout\ & !\inst4|inst1|exception~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|inst1|INS_OUT[0]~12_combout\,
	datab => \inst4|inst1|data_out[1]~11_combout\,
	datac => \inst4|inst1|exception~2_combout\,
	datad => \inst|Mux8~0_combout\,
	combout => \inst2|inst1|alu0|mux|Mux1~4_combout\);

-- Location: LCCOMB_X111_Y21_N18
\inst1|dcd|dcd_3|dcd|Mux7~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|dcd|dcd_3|dcd|Mux7~1_combout\ = (!\inst2|inst1|alu0|mux|Mux2~1_combout\ & ((\inst2|inst1|alu0|mux|Mux1~2_combout\) # ((\inst2|inst1|alu0|adder|S\(2) & \inst2|inst1|alu0|mux|Mux1~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|inst1|alu0|adder|S\(2),
	datab => \inst2|inst1|alu0|mux|Mux2~1_combout\,
	datac => \inst2|inst1|alu0|mux|Mux1~2_combout\,
	datad => \inst2|inst1|alu0|mux|Mux1~4_combout\,
	combout => \inst1|dcd|dcd_3|dcd|Mux7~1_combout\);

-- Location: LCCOMB_X109_Y20_N4
\inst1|DOUT[7]~197\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|DOUT[7]~197_combout\ = (\inst1|DOUT[13]~21_combout\ & (!\inst2|inst1|alu0|mux|Mux0~3_combout\ & ((\inst1|dcd|dcd_3|dcd|Mux7~1_combout\) # (!\inst2|inst1|alu1|mux|Mux3~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|DOUT[13]~21_combout\,
	datab => \inst1|dcd|dcd_3|dcd|Mux7~1_combout\,
	datac => \inst2|inst1|alu1|mux|Mux3~1_combout\,
	datad => \inst2|inst1|alu0|mux|Mux0~3_combout\,
	combout => \inst1|DOUT[7]~197_combout\);

-- Location: LCCOMB_X110_Y20_N26
\inst1|DOUT[5]~198\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|DOUT[5]~198_combout\ = (\inst2|inst1|alu1|mux|Mux3~1_combout\ & (((!\inst1|dcd|dcd_3|dcd|Mux7~1_combout\ & !\inst2|inst1|alu0|mux|Mux0~3_combout\)))) # (!\inst2|inst1|alu1|mux|Mux3~1_combout\ & (!\inst1|DOUT[13]~21_combout\ & 
-- (\inst1|dcd|dcd_3|dcd|Mux7~1_combout\ & \inst2|inst1|alu0|mux|Mux0~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|DOUT[13]~21_combout\,
	datab => \inst2|inst1|alu1|mux|Mux3~1_combout\,
	datac => \inst1|dcd|dcd_3|dcd|Mux7~1_combout\,
	datad => \inst2|inst1|alu0|mux|Mux0~3_combout\,
	combout => \inst1|DOUT[5]~198_combout\);

-- Location: LCCOMB_X109_Y20_N6
\inst1|DOUT[3]~234\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|DOUT[3]~234_combout\ = (\inst1|reg_gen:30:regs|y\(3) & ((\inst1|DOUT[5]~198_combout\) # ((\inst1|DOUT[3]~233_combout\ & \inst1|DOUT[7]~197_combout\)))) # (!\inst1|reg_gen:30:regs|y\(3) & (\inst1|DOUT[3]~233_combout\ & 
-- (\inst1|DOUT[7]~197_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|reg_gen:30:regs|y\(3),
	datab => \inst1|DOUT[3]~233_combout\,
	datac => \inst1|DOUT[7]~197_combout\,
	datad => \inst1|DOUT[5]~198_combout\,
	combout => \inst1|DOUT[3]~234_combout\);

-- Location: LCCOMB_X110_Y21_N6
\inst1|DOUT[13]~29\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|DOUT[13]~29_combout\ = (\inst2|inst1|alu0|mux|Mux0~3_combout\ & ((\inst1|DOUT[13]~21_combout\) # ((\inst2|inst1|alu0|mux|Mux1~3_combout\) # (\inst2|inst1|alu0|mux|Mux2~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|DOUT[13]~21_combout\,
	datab => \inst2|inst1|alu0|mux|Mux1~3_combout\,
	datac => \inst2|inst1|alu0|mux|Mux2~1_combout\,
	datad => \inst2|inst1|alu0|mux|Mux0~3_combout\,
	combout => \inst1|DOUT[13]~29_combout\);

-- Location: LCCOMB_X108_Y19_N2
\inst2|inst2|OUT16B[11]~32\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|inst2|OUT16B[11]~32_combout\ = (\inst|Mux7~0_combout\ & (!\inst4|inst1|exception~2_combout\ & ((!\inst4|inst1|data_out[5]~5_combout\)))) # (!\inst|Mux7~0_combout\ & (((\inst2|inst|mux_2|mux_1|mux_generate:2:mux_i|Mux0~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000001110010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Mux7~0_combout\,
	datab => \inst4|inst1|exception~2_combout\,
	datac => \inst2|inst|mux_2|mux_1|mux_generate:2:mux_i|Mux0~4_combout\,
	datad => \inst4|inst1|data_out[5]~5_combout\,
	combout => \inst2|inst2|OUT16B[11]~32_combout\);

-- Location: LCCOMB_X109_Y19_N0
\inst2|inst|reg_gen:3:regs|reg_2|y[3]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|inst|reg_gen:3:regs|reg_2|y[3]~feeder_combout\ = \inst3|OUT16B[11]~27_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst3|OUT16B[11]~27_combout\,
	combout => \inst2|inst|reg_gen:3:regs|reg_2|y[3]~feeder_combout\);

-- Location: FF_X109_Y19_N1
\inst2|inst|reg_gen:3:regs|reg_2|y[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \SW17~input_o\,
	d => \inst2|inst|reg_gen:3:regs|reg_2|y[3]~feeder_combout\,
	ena => \inst2|inst|add_reg1_dcd|Mux3~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst2|inst|reg_gen:3:regs|reg_2|y\(3));

-- Location: FF_X109_Y20_N17
\inst2|inst|reg_gen:2:regs|reg_2|y[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \SW17~input_o\,
	asdata => \inst3|OUT16B[11]~27_combout\,
	sload => VCC,
	ena => \inst2|inst|add_reg1_dcd|Mux3~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst2|inst|reg_gen:2:regs|reg_2|y\(3));

-- Location: LCCOMB_X109_Y19_N30
\inst2|inst|mux_1|mux_1|mux_generate:2:mux_i|Mux0~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|inst|mux_1|mux_1|mux_generate:2:mux_i|Mux0~2_combout\ = (\inst4|inst1|data_out[9]~14_combout\ & ((\inst4|inst1|exception~2_combout\ & ((\inst2|inst|reg_gen:2:regs|reg_2|y\(3)))) # (!\inst4|inst1|exception~2_combout\ & 
-- (\inst2|inst|reg_gen:3:regs|reg_2|y\(3))))) # (!\inst4|inst1|data_out[9]~14_combout\ & (((\inst2|inst|reg_gen:2:regs|reg_2|y\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110100001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|inst1|data_out[9]~14_combout\,
	datab => \inst2|inst|reg_gen:3:regs|reg_2|y\(3),
	datac => \inst4|inst1|exception~2_combout\,
	datad => \inst2|inst|reg_gen:2:regs|reg_2|y\(3),
	combout => \inst2|inst|mux_1|mux_1|mux_generate:2:mux_i|Mux0~2_combout\);

-- Location: FF_X108_Y19_N1
\inst2|inst|reg_gen:5:regs|reg_2|y[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \SW17~input_o\,
	asdata => \inst3|OUT16B[11]~27_combout\,
	sload => VCC,
	ena => \inst2|inst|add_reg1_dcd|Mux3~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst2|inst|reg_gen:5:regs|reg_2|y\(3));

-- Location: FF_X109_Y20_N25
\inst2|inst|reg_gen:1:regs|reg_2|y[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \SW17~input_o\,
	d => \inst3|OUT16B[11]~27_combout\,
	ena => \inst2|inst|add_reg1_dcd|Mux3~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst2|inst|reg_gen:1:regs|reg_2|y\(3));

-- Location: LCCOMB_X109_Y22_N12
\inst2|inst|mux_1|mux_1|mux_generate:2:mux_i|Mux0~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|inst|mux_1|mux_1|mux_generate:2:mux_i|Mux0~6_combout\ = (\inst2|inst|reg_gen:1:regs|reg_2|y\(3) & (!\inst4|inst1|exception~2_combout\ & ((\inst4|inst1|data_out[9]~13_combout\) # (\inst4|inst|reg|reg_1|y\(5)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101000001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|inst|reg_gen:1:regs|reg_2|y\(3),
	datab => \inst4|inst1|data_out[9]~13_combout\,
	datac => \inst4|inst1|exception~2_combout\,
	datad => \inst4|inst|reg|reg_1|y\(5),
	combout => \inst2|inst|mux_1|mux_1|mux_generate:2:mux_i|Mux0~6_combout\);

-- Location: FF_X109_Y22_N21
\inst2|inst|reg_gen:6:regs|reg_2|y[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \SW17~input_o\,
	asdata => \inst3|OUT16B[11]~27_combout\,
	sload => VCC,
	ena => \inst2|inst|add_reg1_dcd|Mux3~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst2|inst|reg_gen:6:regs|reg_2|y\(3));

-- Location: LCCOMB_X109_Y22_N20
\inst2|inst|mux_1|mux_1|mux_generate:2:mux_i|Mux0~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|inst|mux_1|mux_1|mux_generate:2:mux_i|Mux0~3_combout\ = (\inst2|inst|mux_1|mux_1|mux_generate:3:mux_i|Mux3~5_combout\ & ((\inst2|inst|mux_1|mux_1|mux_generate:3:mux_i|Mux3~6_combout\ & ((\inst2|inst|reg_gen:6:regs|reg_2|y\(3)))) # 
-- (!\inst2|inst|mux_1|mux_1|mux_generate:3:mux_i|Mux3~6_combout\ & (\inst2|inst|mux_1|mux_1|mux_generate:2:mux_i|Mux0~6_combout\)))) # (!\inst2|inst|mux_1|mux_1|mux_generate:3:mux_i|Mux3~5_combout\ & 
-- (((!\inst2|inst|mux_1|mux_1|mux_generate:3:mux_i|Mux3~6_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000010111011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|inst|mux_1|mux_1|mux_generate:2:mux_i|Mux0~6_combout\,
	datab => \inst2|inst|mux_1|mux_1|mux_generate:3:mux_i|Mux3~5_combout\,
	datac => \inst2|inst|reg_gen:6:regs|reg_2|y\(3),
	datad => \inst2|inst|mux_1|mux_1|mux_generate:3:mux_i|Mux3~6_combout\,
	combout => \inst2|inst|mux_1|mux_1|mux_generate:2:mux_i|Mux0~3_combout\);

-- Location: LCCOMB_X108_Y19_N8
\inst2|inst|mux_1|mux_1|mux_generate:2:mux_i|Mux0~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|inst|mux_1|mux_1|mux_generate:2:mux_i|Mux0~4_combout\ = (\inst2|inst|mux_1|mux_1|mux_generate:3:mux_i|Mux3~4_combout\ & (((\inst2|inst|mux_1|mux_1|mux_generate:2:mux_i|Mux0~3_combout\)))) # 
-- (!\inst2|inst|mux_1|mux_1|mux_generate:3:mux_i|Mux3~4_combout\ & ((\inst2|inst|mux_1|mux_1|mux_generate:2:mux_i|Mux0~3_combout\ & ((\inst2|inst|reg_gen:4:regs|reg_2|y\(3)))) # (!\inst2|inst|mux_1|mux_1|mux_generate:2:mux_i|Mux0~3_combout\ & 
-- (\inst2|inst|reg_gen:5:regs|reg_2|y\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|inst|mux_1|mux_1|mux_generate:3:mux_i|Mux3~4_combout\,
	datab => \inst2|inst|reg_gen:5:regs|reg_2|y\(3),
	datac => \inst2|inst|reg_gen:4:regs|reg_2|y\(3),
	datad => \inst2|inst|mux_1|mux_1|mux_generate:2:mux_i|Mux0~3_combout\,
	combout => \inst2|inst|mux_1|mux_1|mux_generate:2:mux_i|Mux0~4_combout\);

-- Location: LCCOMB_X108_Y19_N26
\inst2|inst|mux_1|mux_1|mux_generate:2:mux_i|Mux0~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|inst|mux_1|mux_1|mux_generate:2:mux_i|Mux0~5_combout\ = (\inst2|inst|mux_1|mux_1|mux_generate:3:mux_i|Mux3~12_combout\ & (\inst2|inst|mux_1|mux_1|mux_generate:2:mux_i|Mux0~2_combout\)) # 
-- (!\inst2|inst|mux_1|mux_1|mux_generate:3:mux_i|Mux3~12_combout\ & ((\inst2|inst|mux_1|mux_1|mux_generate:2:mux_i|Mux0~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|inst|mux_1|mux_1|mux_generate:2:mux_i|Mux0~2_combout\,
	datab => \inst2|inst|mux_1|mux_1|mux_generate:3:mux_i|Mux3~12_combout\,
	datad => \inst2|inst|mux_1|mux_1|mux_generate:2:mux_i|Mux0~4_combout\,
	combout => \inst2|inst|mux_1|mux_1|mux_generate:2:mux_i|Mux0~5_combout\);

-- Location: LCCOMB_X110_Y21_N22
\inst1|dcd|dcd_3|dcd|Mux7~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|dcd|dcd_3|dcd|Mux7~3_combout\ = (\inst2|inst1|alu0|mux|Mux3~0_combout\ & (\inst2|inst1|alu0|mux|Mux2~1_combout\ & \inst2|inst1|alu0|mux|Mux1~3_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst2|inst1|alu0|mux|Mux3~0_combout\,
	datac => \inst2|inst1|alu0|mux|Mux2~1_combout\,
	datad => \inst2|inst1|alu0|mux|Mux1~3_combout\,
	combout => \inst1|dcd|dcd_3|dcd|Mux7~3_combout\);

-- Location: LCCOMB_X110_Y21_N2
\inst1|DOUT[15]~52\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|DOUT[15]~52_combout\ = (\inst1|DOUT[15]~51_combout\) # ((\inst1|dcd|dcd_3|dcd|Mux7~3_combout\ & \inst|Mux3~7_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|dcd|dcd_3|dcd|Mux7~3_combout\,
	datac => \inst1|DOUT[15]~51_combout\,
	datad => \inst|Mux3~7_combout\,
	combout => \inst1|DOUT[15]~52_combout\);

-- Location: LCCOMB_X110_Y21_N0
\inst1|DOUT[15]_2612\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|DOUT[15]_2612~combout\ = (\inst|Mux5~0_combout\ & ((\inst1|DOUT[15]_2612~combout\) # ((\inst1|DOUT[15]~53_combout\) # (\inst1|DOUT[15]~52_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|DOUT[15]_2612~combout\,
	datab => \inst1|DOUT[15]~53_combout\,
	datac => \inst|Mux5~0_combout\,
	datad => \inst1|DOUT[15]~52_combout\,
	combout => \inst1|DOUT[15]_2612~combout\);

-- Location: LCCOMB_X109_Y19_N12
\inst2|inst|reg_gen:4:regs|reg_2|y[2]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|inst|reg_gen:4:regs|reg_2|y[2]~feeder_combout\ = \inst3|OUT16B[10]~28_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst3|OUT16B[10]~28_combout\,
	combout => \inst2|inst|reg_gen:4:regs|reg_2|y[2]~feeder_combout\);

-- Location: FF_X109_Y19_N13
\inst2|inst|reg_gen:4:regs|reg_2|y[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \SW17~input_o\,
	d => \inst2|inst|reg_gen:4:regs|reg_2|y[2]~feeder_combout\,
	ena => \inst2|inst|add_reg1_dcd|Mux3~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst2|inst|reg_gen:4:regs|reg_2|y\(2));

-- Location: FF_X110_Y22_N29
\inst2|inst|reg_gen:5:regs|reg_2|y[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \SW17~input_o\,
	asdata => \inst3|OUT16B[10]~28_combout\,
	sload => VCC,
	ena => \inst2|inst|add_reg1_dcd|Mux3~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst2|inst|reg_gen:5:regs|reg_2|y\(2));

-- Location: FF_X110_Y19_N31
\inst2|inst|reg_gen:1:regs|reg_2|y[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \SW17~input_o\,
	asdata => \inst3|OUT16B[10]~28_combout\,
	sload => VCC,
	ena => \inst2|inst|add_reg1_dcd|Mux3~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst2|inst|reg_gen:1:regs|reg_2|y\(2));

-- Location: LCCOMB_X107_Y19_N24
\inst2|inst|mux_1|mux_1|mux_generate:2:mux_i|Mux1~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|inst|mux_1|mux_1|mux_generate:2:mux_i|Mux1~6_combout\ = (\inst2|inst|reg_gen:1:regs|reg_2|y\(2) & (!\inst4|inst1|exception~2_combout\ & ((\inst4|inst|reg|reg_1|y\(5)) # (\inst4|inst1|data_out[9]~13_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101000001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|inst|reg_gen:1:regs|reg_2|y\(2),
	datab => \inst4|inst|reg|reg_1|y\(5),
	datac => \inst4|inst1|exception~2_combout\,
	datad => \inst4|inst1|data_out[9]~13_combout\,
	combout => \inst2|inst|mux_1|mux_1|mux_generate:2:mux_i|Mux1~6_combout\);

-- Location: FF_X107_Y19_N27
\inst2|inst|reg_gen:6:regs|reg_2|y[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \SW17~input_o\,
	asdata => \inst3|OUT16B[10]~28_combout\,
	sload => VCC,
	ena => \inst2|inst|add_reg1_dcd|Mux3~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst2|inst|reg_gen:6:regs|reg_2|y\(2));

-- Location: LCCOMB_X107_Y19_N26
\inst2|inst|mux_1|mux_1|mux_generate:2:mux_i|Mux1~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|inst|mux_1|mux_1|mux_generate:2:mux_i|Mux1~3_combout\ = (\inst2|inst|mux_1|mux_1|mux_generate:3:mux_i|Mux3~6_combout\ & (((\inst2|inst|reg_gen:6:regs|reg_2|y\(2) & \inst2|inst|mux_1|mux_1|mux_generate:3:mux_i|Mux3~5_combout\)))) # 
-- (!\inst2|inst|mux_1|mux_1|mux_generate:3:mux_i|Mux3~6_combout\ & ((\inst2|inst|mux_1|mux_1|mux_generate:2:mux_i|Mux1~6_combout\) # ((!\inst2|inst|mux_1|mux_1|mux_generate:3:mux_i|Mux3~5_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010001010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|inst|mux_1|mux_1|mux_generate:3:mux_i|Mux3~6_combout\,
	datab => \inst2|inst|mux_1|mux_1|mux_generate:2:mux_i|Mux1~6_combout\,
	datac => \inst2|inst|reg_gen:6:regs|reg_2|y\(2),
	datad => \inst2|inst|mux_1|mux_1|mux_generate:3:mux_i|Mux3~5_combout\,
	combout => \inst2|inst|mux_1|mux_1|mux_generate:2:mux_i|Mux1~3_combout\);

-- Location: LCCOMB_X109_Y19_N4
\inst2|inst|mux_1|mux_1|mux_generate:2:mux_i|Mux1~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|inst|mux_1|mux_1|mux_generate:2:mux_i|Mux1~4_combout\ = (\inst2|inst|mux_1|mux_1|mux_generate:2:mux_i|Mux1~3_combout\ & ((\inst2|inst|reg_gen:4:regs|reg_2|y\(2)) # ((\inst2|inst|mux_1|mux_1|mux_generate:3:mux_i|Mux3~4_combout\)))) # 
-- (!\inst2|inst|mux_1|mux_1|mux_generate:2:mux_i|Mux1~3_combout\ & (((\inst2|inst|reg_gen:5:regs|reg_2|y\(2) & !\inst2|inst|mux_1|mux_1|mux_generate:3:mux_i|Mux3~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|inst|reg_gen:4:regs|reg_2|y\(2),
	datab => \inst2|inst|reg_gen:5:regs|reg_2|y\(2),
	datac => \inst2|inst|mux_1|mux_1|mux_generate:2:mux_i|Mux1~3_combout\,
	datad => \inst2|inst|mux_1|mux_1|mux_generate:3:mux_i|Mux3~4_combout\,
	combout => \inst2|inst|mux_1|mux_1|mux_generate:2:mux_i|Mux1~4_combout\);

-- Location: LCCOMB_X109_Y19_N16
\inst2|inst|reg_gen:3:regs|reg_2|y[2]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|inst|reg_gen:3:regs|reg_2|y[2]~feeder_combout\ = \inst3|OUT16B[10]~28_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst3|OUT16B[10]~28_combout\,
	combout => \inst2|inst|reg_gen:3:regs|reg_2|y[2]~feeder_combout\);

-- Location: FF_X109_Y19_N17
\inst2|inst|reg_gen:3:regs|reg_2|y[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \SW17~input_o\,
	d => \inst2|inst|reg_gen:3:regs|reg_2|y[2]~feeder_combout\,
	ena => \inst2|inst|add_reg1_dcd|Mux3~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst2|inst|reg_gen:3:regs|reg_2|y\(2));

-- Location: LCCOMB_X109_Y19_N18
\inst2|inst|mux_1|mux_1|mux_generate:2:mux_i|Mux1~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|inst|mux_1|mux_1|mux_generate:2:mux_i|Mux1~2_combout\ = (\inst4|inst1|data_out[9]~14_combout\ & ((\inst4|inst1|exception~2_combout\ & (\inst2|inst|reg_gen:2:regs|reg_2|y\(2))) # (!\inst4|inst1|exception~2_combout\ & 
-- ((\inst2|inst|reg_gen:3:regs|reg_2|y\(2)))))) # (!\inst4|inst1|data_out[9]~14_combout\ & (((\inst2|inst|reg_gen:2:regs|reg_2|y\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001011010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|inst1|data_out[9]~14_combout\,
	datab => \inst4|inst1|exception~2_combout\,
	datac => \inst2|inst|reg_gen:2:regs|reg_2|y\(2),
	datad => \inst2|inst|reg_gen:3:regs|reg_2|y\(2),
	combout => \inst2|inst|mux_1|mux_1|mux_generate:2:mux_i|Mux1~2_combout\);

-- Location: LCCOMB_X109_Y19_N24
\inst2|inst|mux_1|mux_1|mux_generate:2:mux_i|Mux1~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|inst|mux_1|mux_1|mux_generate:2:mux_i|Mux1~5_combout\ = (\inst2|inst|mux_1|mux_1|mux_generate:3:mux_i|Mux3~12_combout\ & ((\inst2|inst|mux_1|mux_1|mux_generate:2:mux_i|Mux1~2_combout\))) # 
-- (!\inst2|inst|mux_1|mux_1|mux_generate:3:mux_i|Mux3~12_combout\ & (\inst2|inst|mux_1|mux_1|mux_generate:2:mux_i|Mux1~4_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|inst|mux_1|mux_1|mux_generate:3:mux_i|Mux3~12_combout\,
	datac => \inst2|inst|mux_1|mux_1|mux_generate:2:mux_i|Mux1~4_combout\,
	datad => \inst2|inst|mux_1|mux_1|mux_generate:2:mux_i|Mux1~2_combout\,
	combout => \inst2|inst|mux_1|mux_1|mux_generate:2:mux_i|Mux1~5_combout\);

-- Location: LCCOMB_X112_Y21_N22
\inst1|DOUT[13]~265\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|DOUT[13]~265_combout\ = ((\inst1|DOUT[13]~21_combout\ & \inst2|inst1|alu0|mux|Mux2~1_combout\)) # (!\inst2|inst1|alu0|mux|Mux1~3_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst1|DOUT[13]~21_combout\,
	datac => \inst2|inst1|alu0|mux|Mux1~3_combout\,
	datad => \inst2|inst1|alu0|mux|Mux2~1_combout\,
	combout => \inst1|DOUT[13]~265_combout\);

-- Location: LCCOMB_X110_Y21_N30
\inst1|DOUT[13]~23\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|DOUT[13]~23_combout\ = (\inst2|inst1|alu1|mux|Mux3~1_combout\ & (\inst1|DOUT[13]~265_combout\ & ((!\inst2|inst1|alu0|mux|Mux0~3_combout\)))) # (!\inst2|inst1|alu1|mux|Mux3~1_combout\ & (((\inst1|dcd|dcd_3|dcd|Mux7~1_combout\ & 
-- \inst2|inst1|alu0|mux|Mux0~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|inst1|alu1|mux|Mux3~1_combout\,
	datab => \inst1|DOUT[13]~265_combout\,
	datac => \inst1|dcd|dcd_3|dcd|Mux7~1_combout\,
	datad => \inst2|inst1|alu0|mux|Mux0~3_combout\,
	combout => \inst1|DOUT[13]~23_combout\);

-- Location: LCCOMB_X110_Y21_N18
\inst1|DOUT[15]~47\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|DOUT[15]~47_combout\ = (!\inst1|DOUT[13]~23_combout\ & ((\inst2|inst1|alu0|mux|Mux0~3_combout\) # (!\inst1|DOUT[13]~21_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|DOUT[13]~21_combout\,
	datac => \inst1|DOUT[13]~23_combout\,
	datad => \inst2|inst1|alu0|mux|Mux0~3_combout\,
	combout => \inst1|DOUT[15]~47_combout\);

-- Location: LCCOMB_X109_Y19_N6
\inst2|inst|reg_gen:3:regs|reg_2|y[1]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|inst|reg_gen:3:regs|reg_2|y[1]~feeder_combout\ = \inst3|OUT16B[9]~29_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst3|OUT16B[9]~29_combout\,
	combout => \inst2|inst|reg_gen:3:regs|reg_2|y[1]~feeder_combout\);

-- Location: FF_X109_Y19_N7
\inst2|inst|reg_gen:3:regs|reg_2|y[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \SW17~input_o\,
	d => \inst2|inst|reg_gen:3:regs|reg_2|y[1]~feeder_combout\,
	ena => \inst2|inst|add_reg1_dcd|Mux3~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst2|inst|reg_gen:3:regs|reg_2|y\(1));

-- Location: LCCOMB_X110_Y19_N14
\inst2|inst|mux_2|mux_1|mux_generate:2:mux_i|Mux2~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|inst|mux_2|mux_1|mux_generate:2:mux_i|Mux2~0_combout\ = (\inst4|inst1|exception~2_combout\ & (((\inst2|inst|reg_gen:2:regs|reg_2|y\(1))))) # (!\inst4|inst1|exception~2_combout\ & ((\inst4|inst1|data_out[6]~17_combout\ & 
-- (\inst2|inst|reg_gen:3:regs|reg_2|y\(1))) # (!\inst4|inst1|data_out[6]~17_combout\ & ((\inst2|inst|reg_gen:2:regs|reg_2|y\(1))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110001011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|inst|reg_gen:3:regs|reg_2|y\(1),
	datab => \inst4|inst1|exception~2_combout\,
	datac => \inst2|inst|reg_gen:2:regs|reg_2|y\(1),
	datad => \inst4|inst1|data_out[6]~17_combout\,
	combout => \inst2|inst|mux_2|mux_1|mux_generate:2:mux_i|Mux2~0_combout\);

-- Location: FF_X110_Y19_N1
\inst2|inst|reg_gen:1:regs|reg_2|y[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \SW17~input_o\,
	d => \inst3|OUT16B[9]~29_combout\,
	ena => \inst2|inst|add_reg1_dcd|Mux3~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst2|inst|reg_gen:1:regs|reg_2|y\(1));

-- Location: LCCOMB_X110_Y22_N14
\inst2|inst|mux_2|mux_1|mux_generate:2:mux_i|Mux2~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|inst|mux_2|mux_1|mux_generate:2:mux_i|Mux2~1_combout\ = (\inst4|inst1|data_out[6]~17_combout\ & (!\inst4|inst1|exception~2_combout\ & \inst2|inst|reg_gen:1:regs|reg_2|y\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst4|inst1|data_out[6]~17_combout\,
	datac => \inst4|inst1|exception~2_combout\,
	datad => \inst2|inst|reg_gen:1:regs|reg_2|y\(1),
	combout => \inst2|inst|mux_2|mux_1|mux_generate:2:mux_i|Mux2~1_combout\);

-- Location: FF_X109_Y22_N23
\inst2|inst|reg_gen:6:regs|reg_2|y[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \SW17~input_o\,
	asdata => \inst3|OUT16B[9]~29_combout\,
	sload => VCC,
	ena => \inst2|inst|add_reg1_dcd|Mux3~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst2|inst|reg_gen:6:regs|reg_2|y\(1));

-- Location: LCCOMB_X110_Y22_N22
\inst2|inst|mux_2|mux_1|mux_generate:2:mux_i|Mux2~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|inst|mux_2|mux_1|mux_generate:2:mux_i|Mux2~2_combout\ = (\inst2|inst|mux_2|mux_1|mux_generate:0:mux_i|Mux2~3_combout\ & ((\inst2|inst|mux_2|mux_1|mux_generate:0:mux_i|Mux2~4_combout\ & ((\inst2|inst|reg_gen:6:regs|reg_2|y\(1)))) # 
-- (!\inst2|inst|mux_2|mux_1|mux_generate:0:mux_i|Mux2~4_combout\ & (\inst2|inst|mux_2|mux_1|mux_generate:2:mux_i|Mux2~1_combout\)))) # (!\inst2|inst|mux_2|mux_1|mux_generate:0:mux_i|Mux2~3_combout\ & 
-- (!\inst2|inst|mux_2|mux_1|mux_generate:0:mux_i|Mux2~4_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100100110001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|inst|mux_2|mux_1|mux_generate:0:mux_i|Mux2~3_combout\,
	datab => \inst2|inst|mux_2|mux_1|mux_generate:0:mux_i|Mux2~4_combout\,
	datac => \inst2|inst|mux_2|mux_1|mux_generate:2:mux_i|Mux2~1_combout\,
	datad => \inst2|inst|reg_gen:6:regs|reg_2|y\(1),
	combout => \inst2|inst|mux_2|mux_1|mux_generate:2:mux_i|Mux2~2_combout\);

-- Location: FF_X110_Y22_N25
\inst2|inst|reg_gen:5:regs|reg_2|y[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \SW17~input_o\,
	asdata => \inst3|OUT16B[9]~29_combout\,
	sload => VCC,
	ena => \inst2|inst|add_reg1_dcd|Mux3~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst2|inst|reg_gen:5:regs|reg_2|y\(1));

-- Location: FF_X109_Y22_N25
\inst2|inst|reg_gen:4:regs|reg_2|y[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \SW17~input_o\,
	asdata => \inst3|OUT16B[9]~29_combout\,
	sload => VCC,
	ena => \inst2|inst|add_reg1_dcd|Mux3~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst2|inst|reg_gen:4:regs|reg_2|y\(1));

-- Location: LCCOMB_X110_Y22_N24
\inst2|inst|mux_2|mux_1|mux_generate:2:mux_i|Mux2~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|inst|mux_2|mux_1|mux_generate:2:mux_i|Mux2~3_combout\ = (\inst2|inst|mux_2|mux_1|mux_generate:2:mux_i|Mux2~2_combout\ & ((\inst2|inst|mux_2|mux_1|mux_generate:0:mux_i|Mux2~1_combout\) # ((\inst2|inst|reg_gen:4:regs|reg_2|y\(1))))) # 
-- (!\inst2|inst|mux_2|mux_1|mux_generate:2:mux_i|Mux2~2_combout\ & (!\inst2|inst|mux_2|mux_1|mux_generate:0:mux_i|Mux2~1_combout\ & (\inst2|inst|reg_gen:5:regs|reg_2|y\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|inst|mux_2|mux_1|mux_generate:2:mux_i|Mux2~2_combout\,
	datab => \inst2|inst|mux_2|mux_1|mux_generate:0:mux_i|Mux2~1_combout\,
	datac => \inst2|inst|reg_gen:5:regs|reg_2|y\(1),
	datad => \inst2|inst|reg_gen:4:regs|reg_2|y\(1),
	combout => \inst2|inst|mux_2|mux_1|mux_generate:2:mux_i|Mux2~3_combout\);

-- Location: LCCOMB_X110_Y22_N8
\inst2|inst|mux_2|mux_1|mux_generate:2:mux_i|Mux2~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|inst|mux_2|mux_1|mux_generate:2:mux_i|Mux2~4_combout\ = (\inst2|inst|mux_2|mux_1|mux_generate:0:mux_i|Mux2~7_combout\ & (\inst2|inst|mux_2|mux_1|mux_generate:2:mux_i|Mux2~0_combout\)) # (!\inst2|inst|mux_2|mux_1|mux_generate:0:mux_i|Mux2~7_combout\ 
-- & ((\inst2|inst|mux_2|mux_1|mux_generate:2:mux_i|Mux2~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|inst|mux_2|mux_1|mux_generate:0:mux_i|Mux2~7_combout\,
	datac => \inst2|inst|mux_2|mux_1|mux_generate:2:mux_i|Mux2~0_combout\,
	datad => \inst2|inst|mux_2|mux_1|mux_generate:2:mux_i|Mux2~3_combout\,
	combout => \inst2|inst|mux_2|mux_1|mux_generate:2:mux_i|Mux2~4_combout\);

-- Location: LCCOMB_X109_Y17_N18
\inst1|reg_gen:31:regs|y[1]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|reg_gen:31:regs|y[1]~feeder_combout\ = \inst2|inst|mux_2|mux_1|mux_generate:2:mux_i|Mux2~4_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst2|inst|mux_2|mux_1|mux_generate:2:mux_i|Mux2~4_combout\,
	combout => \inst1|reg_gen:31:regs|y[1]~feeder_combout\);

-- Location: LCCOMB_X109_Y17_N6
\inst1|dec_to_en[31]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|dec_to_en[31]~0_combout\ = (!\inst2|inst1|alu1|mux|Mux3~1_combout\ & (\inst2|inst1|alu0|mux|Mux0~3_combout\ & (\inst|Mux6~0_combout\ & \inst1|dcd|dcd_3|dcd|Mux7~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|inst1|alu1|mux|Mux3~1_combout\,
	datab => \inst2|inst1|alu0|mux|Mux0~3_combout\,
	datac => \inst|Mux6~0_combout\,
	datad => \inst1|dcd|dcd_3|dcd|Mux7~1_combout\,
	combout => \inst1|dec_to_en[31]~0_combout\);

-- Location: FF_X109_Y17_N19
\inst1|reg_gen:31:regs|y[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \SW17~input_o\,
	d => \inst1|reg_gen:31:regs|y[1]~feeder_combout\,
	ena => \inst1|dec_to_en[31]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|reg_gen:31:regs|y\(1));

-- Location: LCCOMB_X109_Y19_N22
\inst1|DOUT[9]~155\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|DOUT[9]~155_combout\ = (\inst1|reg_gen:31:regs|y\(1) & \inst1|DOUT[13]~23_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst1|reg_gen:31:regs|y\(1),
	datad => \inst1|DOUT[13]~23_combout\,
	combout => \inst1|DOUT[9]~155_combout\);

-- Location: FF_X111_Y18_N23
\inst1|reg_gen:16:regs|y[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \SW17~input_o\,
	asdata => \inst2|inst|mux_2|mux_1|mux_generate:0:mux_i|Mux2~8_combout\,
	sload => VCC,
	ena => \inst1|dec_to_en[16]~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|reg_gen:16:regs|y\(1));

-- Location: LCCOMB_X111_Y17_N2
\inst1|DOUT[13]~40\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|DOUT[13]~40_combout\ = (\inst2|inst1|alu0|mux|Mux2~1_combout\) # (!\inst1|DOUT[13]~21_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst2|inst1|alu0|mux|Mux2~1_combout\,
	datad => \inst1|DOUT[13]~21_combout\,
	combout => \inst1|DOUT[13]~40_combout\);

-- Location: LCCOMB_X111_Y17_N8
\inst1|DOUT[13]~37\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|DOUT[13]~37_combout\ = (\inst1|DOUT[13]~21_combout\ & ((\inst2|inst1|alu0|mux|Mux1~3_combout\) # (\inst2|inst1|alu0|mux|Mux2~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst2|inst1|alu0|mux|Mux1~3_combout\,
	datac => \inst1|DOUT[13]~21_combout\,
	datad => \inst2|inst1|alu0|mux|Mux2~1_combout\,
	combout => \inst1|DOUT[13]~37_combout\);

-- Location: LCCOMB_X111_Y15_N30
\inst1|reg_gen:10:regs|y[1]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|reg_gen:10:regs|y[1]~feeder_combout\ = \inst2|inst|mux_2|mux_1|mux_generate:0:mux_i|Mux2~8_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst2|inst|mux_2|mux_1|mux_generate:0:mux_i|Mux2~8_combout\,
	combout => \inst1|reg_gen:10:regs|y[1]~feeder_combout\);

-- Location: LCCOMB_X112_Y15_N2
\inst1|dec_to_en[13]~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|dec_to_en[13]~10_combout\ = (\inst2|inst1|alu1|mux|Mux3~1_combout\ & (\inst|Mux6~0_combout\ & \inst2|inst1|alu0|mux|Mux0~3_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|inst1|alu1|mux|Mux3~1_combout\,
	datab => \inst|Mux6~0_combout\,
	datad => \inst2|inst1|alu0|mux|Mux0~3_combout\,
	combout => \inst1|dec_to_en[13]~10_combout\);

-- Location: LCCOMB_X111_Y15_N0
\inst1|dec_to_en[10]\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|dec_to_en\(10) = (\inst1|dec_to_en[13]~10_combout\ & ((\inst1|dcd|dcd_3|dcd|Mux7~5_combout\) # (\inst1|dcd|dcd_3|dcd|Mux7~7_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst1|dcd|dcd_3|dcd|Mux7~5_combout\,
	datac => \inst1|dcd|dcd_3|dcd|Mux7~7_combout\,
	datad => \inst1|dec_to_en[13]~10_combout\,
	combout => \inst1|dec_to_en\(10));

-- Location: FF_X111_Y15_N31
\inst1|reg_gen:10:regs|y[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \SW17~input_o\,
	d => \inst1|reg_gen:10:regs|y[1]~feeder_combout\,
	ena => \inst1|dec_to_en\(10),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|reg_gen:10:regs|y\(1));

-- Location: LCCOMB_X112_Y21_N14
\inst1|reg_gen:30:regs|y[1]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|reg_gen:30:regs|y[1]~feeder_combout\ = \inst2|inst|mux_2|mux_1|mux_generate:0:mux_i|Mux2~8_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst2|inst|mux_2|mux_1|mux_generate:0:mux_i|Mux2~8_combout\,
	combout => \inst1|reg_gen:30:regs|y[1]~feeder_combout\);

-- Location: FF_X112_Y21_N15
\inst1|reg_gen:30:regs|y[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \SW17~input_o\,
	d => \inst1|reg_gen:30:regs|y[1]~feeder_combout\,
	ena => \inst1|dec_to_en\(30),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|reg_gen:30:regs|y\(1));

-- Location: LCCOMB_X113_Y17_N4
\inst1|dec_to_en[25]~11\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|dec_to_en[25]~11_combout\ = (!\inst2|inst1|alu1|mux|Mux3~1_combout\ & (\inst|Mux6~0_combout\ & \inst2|inst1|alu0|mux|Mux0~3_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100010000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|inst1|alu1|mux|Mux3~1_combout\,
	datab => \inst|Mux6~0_combout\,
	datad => \inst2|inst1|alu0|mux|Mux0~3_combout\,
	combout => \inst1|dec_to_en[25]~11_combout\);

-- Location: LCCOMB_X112_Y21_N24
\inst1|dec_to_en[26]\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|dec_to_en\(26) = (\inst1|dec_to_en[25]~11_combout\ & ((\inst1|dcd|dcd_3|dcd|Mux7~5_combout\) # (\inst1|dcd|dcd_3|dcd|Mux7~7_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|dec_to_en[25]~11_combout\,
	datab => \inst1|dcd|dcd_3|dcd|Mux7~5_combout\,
	datad => \inst1|dcd|dcd_3|dcd|Mux7~7_combout\,
	combout => \inst1|dec_to_en\(26));

-- Location: FF_X112_Y21_N13
\inst1|reg_gen:26:regs|y[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \SW17~input_o\,
	asdata => \inst2|inst|mux_2|mux_1|mux_generate:0:mux_i|Mux2~8_combout\,
	sload => VCC,
	ena => \inst1|dec_to_en\(26),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|reg_gen:26:regs|y\(1));

-- Location: LCCOMB_X112_Y21_N12
\inst1|DOUT[9]~166\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|DOUT[9]~166_combout\ = (\inst2|inst1|alu0|mux|Mux1~3_combout\ & ((\inst1|reg_gen:30:regs|y\(1)) # ((\inst2|inst1|alu1|mux|Mux3~1_combout\)))) # (!\inst2|inst1|alu0|mux|Mux1~3_combout\ & (((\inst1|reg_gen:26:regs|y\(1) & 
-- !\inst2|inst1|alu1|mux|Mux3~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|reg_gen:30:regs|y\(1),
	datab => \inst2|inst1|alu0|mux|Mux1~3_combout\,
	datac => \inst1|reg_gen:26:regs|y\(1),
	datad => \inst2|inst1|alu1|mux|Mux3~1_combout\,
	combout => \inst1|DOUT[9]~166_combout\);

-- Location: LCCOMB_X112_Y21_N8
\inst1|dec_to_en[14]\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|dec_to_en\(14) = (\inst|Mux6~0_combout\ & (\inst2|inst1|alu0|mux|Mux0~3_combout\ & (\inst2|inst1|alu1|mux|Mux3~1_combout\ & !\inst1|dec_to_en~9_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Mux6~0_combout\,
	datab => \inst2|inst1|alu0|mux|Mux0~3_combout\,
	datac => \inst2|inst1|alu1|mux|Mux3~1_combout\,
	datad => \inst1|dec_to_en~9_combout\,
	combout => \inst1|dec_to_en\(14));

-- Location: FF_X107_Y21_N13
\inst1|reg_gen:14:regs|y[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \SW17~input_o\,
	d => \inst2|inst|mux_2|mux_1|mux_generate:0:mux_i|Mux2~8_combout\,
	ena => \inst1|dec_to_en\(14),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|reg_gen:14:regs|y\(1));

-- Location: LCCOMB_X110_Y17_N4
\inst1|DOUT[9]~167\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|DOUT[9]~167_combout\ = (\inst2|inst1|alu1|mux|Mux3~1_combout\ & ((\inst1|DOUT[9]~166_combout\ & ((\inst1|reg_gen:14:regs|y\(1)))) # (!\inst1|DOUT[9]~166_combout\ & (\inst1|reg_gen:10:regs|y\(1))))) # (!\inst2|inst1|alu1|mux|Mux3~1_combout\ & 
-- (((\inst1|DOUT[9]~166_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100000111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|reg_gen:10:regs|y\(1),
	datab => \inst2|inst1|alu1|mux|Mux3~1_combout\,
	datac => \inst1|DOUT[9]~166_combout\,
	datad => \inst1|reg_gen:14:regs|y\(1),
	combout => \inst1|DOUT[9]~167_combout\);

-- Location: LCCOMB_X112_Y17_N4
\inst1|dec_to_en[11]\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|dec_to_en\(11) = (\inst1|dec_to_en[13]~10_combout\ & ((\inst1|dcd|dcd_3|dcd|Mux7~7_combout\) # (\inst1|dcd|dcd_3|dcd|Mux7~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|dcd|dcd_3|dcd|Mux7~7_combout\,
	datab => \inst1|dcd|dcd_3|dcd|Mux7~4_combout\,
	datad => \inst1|dec_to_en[13]~10_combout\,
	combout => \inst1|dec_to_en\(11));

-- Location: FF_X112_Y17_N5
\inst1|reg_gen:11:regs|y[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \SW17~input_o\,
	asdata => \inst2|inst|mux_2|mux_1|mux_generate:2:mux_i|Mux2~4_combout\,
	sload => VCC,
	ena => \inst1|dec_to_en\(11),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|reg_gen:11:regs|y\(1));

-- Location: LCCOMB_X112_Y17_N12
\inst1|dec_to_en[27]\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|dec_to_en\(27) = (\inst1|dec_to_en[25]~11_combout\ & ((\inst1|dcd|dcd_3|dcd|Mux7~7_combout\) # (\inst1|dcd|dcd_3|dcd|Mux7~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|dcd|dcd_3|dcd|Mux7~7_combout\,
	datab => \inst1|dcd|dcd_3|dcd|Mux7~4_combout\,
	datad => \inst1|dec_to_en[25]~11_combout\,
	combout => \inst1|dec_to_en\(27));

-- Location: FF_X112_Y17_N15
\inst1|reg_gen:27:regs|y[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \SW17~input_o\,
	asdata => \inst2|inst|mux_2|mux_1|mux_generate:2:mux_i|Mux2~4_combout\,
	sload => VCC,
	ena => \inst1|dec_to_en\(27),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|reg_gen:27:regs|y\(1));

-- Location: LCCOMB_X112_Y17_N14
\inst1|DOUT[9]~168\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|DOUT[9]~168_combout\ = (\inst2|inst1|alu1|mux|Mux3~1_combout\ & (\inst1|reg_gen:11:regs|y\(1))) # (!\inst2|inst1|alu1|mux|Mux3~1_combout\ & ((\inst1|reg_gen:27:regs|y\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|reg_gen:11:regs|y\(1),
	datac => \inst1|reg_gen:27:regs|y\(1),
	datad => \inst2|inst1|alu1|mux|Mux3~1_combout\,
	combout => \inst1|DOUT[9]~168_combout\);

-- Location: LCCOMB_X110_Y17_N10
\inst1|DOUT[9]~169\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|DOUT[9]~169_combout\ = (\inst1|DOUT[13]~40_combout\ & ((\inst1|DOUT[13]~37_combout\) # ((\inst1|DOUT[9]~167_combout\)))) # (!\inst1|DOUT[13]~40_combout\ & (!\inst1|DOUT[13]~37_combout\ & ((\inst1|DOUT[9]~168_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100110101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|DOUT[13]~40_combout\,
	datab => \inst1|DOUT[13]~37_combout\,
	datac => \inst1|DOUT[9]~167_combout\,
	datad => \inst1|DOUT[9]~168_combout\,
	combout => \inst1|DOUT[9]~169_combout\);

-- Location: LCCOMB_X112_Y19_N18
\inst1|dec_to_en~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|dec_to_en~2_combout\ = (\inst2|inst1|alu0|mux|Mux1~3_combout\ & !\inst2|inst1|alu0|mux|Mux2~1_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst2|inst1|alu0|mux|Mux1~3_combout\,
	datac => \inst2|inst1|alu0|mux|Mux2~1_combout\,
	combout => \inst1|dec_to_en~2_combout\);

-- Location: LCCOMB_X112_Y19_N4
\inst1|dec_to_en[15]\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|dec_to_en\(15) = (\inst2|inst1|alu1|mux|Mux3~1_combout\ & (\inst|Mux6~0_combout\ & (\inst2|inst1|alu0|mux|Mux0~3_combout\ & \inst1|dec_to_en~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|inst1|alu1|mux|Mux3~1_combout\,
	datab => \inst|Mux6~0_combout\,
	datac => \inst2|inst1|alu0|mux|Mux0~3_combout\,
	datad => \inst1|dec_to_en~2_combout\,
	combout => \inst1|dec_to_en\(15));

-- Location: FF_X111_Y17_N29
\inst1|reg_gen:15:regs|y[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \SW17~input_o\,
	asdata => \inst2|inst|mux_2|mux_1|mux_generate:2:mux_i|Mux2~4_combout\,
	sload => VCC,
	ena => \inst1|dec_to_en\(15),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|reg_gen:15:regs|y\(1));

-- Location: LCCOMB_X112_Y15_N6
\inst1|reg_gen:13:regs|y[1]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|reg_gen:13:regs|y[1]~feeder_combout\ = \inst2|inst|mux_2|mux_1|mux_generate:2:mux_i|Mux2~4_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst2|inst|mux_2|mux_1|mux_generate:2:mux_i|Mux2~4_combout\,
	combout => \inst1|reg_gen:13:regs|y[1]~feeder_combout\);

-- Location: LCCOMB_X112_Y15_N18
\inst1|dec_to_en[13]\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|dec_to_en\(13) = (\inst1|dec_to_en[13]~10_combout\ & ((\inst1|dcd|dcd_3|dcd|Mux7~6_combout\) # (\inst1|dcd|dcd_3|dcd|Mux7~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|dcd|dcd_3|dcd|Mux7~6_combout\,
	datab => \inst1|dcd|dcd_3|dcd|Mux7~3_combout\,
	datad => \inst1|dec_to_en[13]~10_combout\,
	combout => \inst1|dec_to_en\(13));

-- Location: FF_X112_Y15_N7
\inst1|reg_gen:13:regs|y[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \SW17~input_o\,
	d => \inst1|reg_gen:13:regs|y[1]~feeder_combout\,
	ena => \inst1|dec_to_en\(13),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|reg_gen:13:regs|y\(1));

-- Location: LCCOMB_X114_Y19_N16
\inst1|reg_gen:9:regs|y[1]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|reg_gen:9:regs|y[1]~feeder_combout\ = \inst2|inst|mux_2|mux_1|mux_generate:2:mux_i|Mux2~4_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst2|inst|mux_2|mux_1|mux_generate:2:mux_i|Mux2~4_combout\,
	combout => \inst1|reg_gen:9:regs|y[1]~feeder_combout\);

-- Location: LCCOMB_X114_Y19_N20
\inst1|dec_to_en[9]\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|dec_to_en\(9) = (\inst1|dec_to_en[13]~10_combout\ & ((\inst1|dcd|dcd_3|dcd|Mux7~0_combout\) # (\inst1|dcd|dcd_3|dcd|Mux7~5_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|dcd|dcd_3|dcd|Mux7~0_combout\,
	datab => \inst1|dcd|dcd_3|dcd|Mux7~5_combout\,
	datad => \inst1|dec_to_en[13]~10_combout\,
	combout => \inst1|dec_to_en\(9));

-- Location: FF_X114_Y19_N17
\inst1|reg_gen:9:regs|y[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \SW17~input_o\,
	d => \inst1|reg_gen:9:regs|y[1]~feeder_combout\,
	ena => \inst1|dec_to_en\(9),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|reg_gen:9:regs|y\(1));

-- Location: LCCOMB_X113_Y17_N20
\inst1|dec_to_en[29]\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|dec_to_en\(29) = (\inst1|dec_to_en[25]~11_combout\ & ((\inst1|dcd|dcd_3|dcd|Mux7~6_combout\) # (\inst1|dcd|dcd_3|dcd|Mux7~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|dcd|dcd_3|dcd|Mux7~6_combout\,
	datab => \inst1|dcd|dcd_3|dcd|Mux7~3_combout\,
	datad => \inst1|dec_to_en[25]~11_combout\,
	combout => \inst1|dec_to_en\(29));

-- Location: FF_X113_Y17_N5
\inst1|reg_gen:29:regs|y[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \SW17~input_o\,
	asdata => \inst2|inst|mux_2|mux_1|mux_generate:2:mux_i|Mux2~4_combout\,
	sload => VCC,
	ena => \inst1|dec_to_en\(29),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|reg_gen:29:regs|y\(1));

-- Location: LCCOMB_X114_Y16_N16
\inst1|reg_gen:25:regs|y[1]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|reg_gen:25:regs|y[1]~feeder_combout\ = \inst2|inst|mux_2|mux_1|mux_generate:2:mux_i|Mux2~4_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst2|inst|mux_2|mux_1|mux_generate:2:mux_i|Mux2~4_combout\,
	combout => \inst1|reg_gen:25:regs|y[1]~feeder_combout\);

-- Location: LCCOMB_X114_Y16_N14
\inst1|dec_to_en[25]\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|dec_to_en\(25) = (\inst1|dec_to_en[25]~11_combout\ & ((\inst1|dcd|dcd_3|dcd|Mux7~0_combout\) # (\inst1|dcd|dcd_3|dcd|Mux7~5_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|dcd|dcd_3|dcd|Mux7~0_combout\,
	datab => \inst1|dcd|dcd_3|dcd|Mux7~5_combout\,
	datad => \inst1|dec_to_en[25]~11_combout\,
	combout => \inst1|dec_to_en\(25));

-- Location: FF_X114_Y16_N17
\inst1|reg_gen:25:regs|y[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \SW17~input_o\,
	d => \inst1|reg_gen:25:regs|y[1]~feeder_combout\,
	ena => \inst1|dec_to_en\(25),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|reg_gen:25:regs|y\(1));

-- Location: LCCOMB_X112_Y19_N10
\inst1|DOUT[9]~170\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|DOUT[9]~170_combout\ = (\inst2|inst1|alu0|mux|Mux1~3_combout\ & ((\inst1|reg_gen:29:regs|y\(1)) # ((\inst2|inst1|alu1|mux|Mux3~1_combout\)))) # (!\inst2|inst1|alu0|mux|Mux1~3_combout\ & (((\inst1|reg_gen:25:regs|y\(1) & 
-- !\inst2|inst1|alu1|mux|Mux3~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|reg_gen:29:regs|y\(1),
	datab => \inst2|inst1|alu0|mux|Mux1~3_combout\,
	datac => \inst1|reg_gen:25:regs|y\(1),
	datad => \inst2|inst1|alu1|mux|Mux3~1_combout\,
	combout => \inst1|DOUT[9]~170_combout\);

-- Location: LCCOMB_X112_Y19_N8
\inst1|DOUT[9]~171\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|DOUT[9]~171_combout\ = (\inst2|inst1|alu1|mux|Mux3~1_combout\ & ((\inst1|DOUT[9]~170_combout\ & (\inst1|reg_gen:13:regs|y\(1))) # (!\inst1|DOUT[9]~170_combout\ & ((\inst1|reg_gen:9:regs|y\(1)))))) # (!\inst2|inst1|alu1|mux|Mux3~1_combout\ & 
-- (((\inst1|DOUT[9]~170_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|reg_gen:13:regs|y\(1),
	datab => \inst1|reg_gen:9:regs|y\(1),
	datac => \inst2|inst1|alu1|mux|Mux3~1_combout\,
	datad => \inst1|DOUT[9]~170_combout\,
	combout => \inst1|DOUT[9]~171_combout\);

-- Location: LCCOMB_X110_Y17_N28
\inst1|DOUT[9]~172\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|DOUT[9]~172_combout\ = (\inst1|DOUT[9]~169_combout\ & (((\inst1|DOUT[9]~171_combout\) # (!\inst1|DOUT[13]~37_combout\)))) # (!\inst1|DOUT[9]~169_combout\ & (\inst1|reg_gen:15:regs|y\(1) & (\inst1|DOUT[13]~37_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101001001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|DOUT[9]~169_combout\,
	datab => \inst1|reg_gen:15:regs|y\(1),
	datac => \inst1|DOUT[13]~37_combout\,
	datad => \inst1|DOUT[9]~171_combout\,
	combout => \inst1|DOUT[9]~172_combout\);

-- Location: LCCOMB_X112_Y15_N24
\inst1|reg_gen:12:regs|y[1]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|reg_gen:12:regs|y[1]~feeder_combout\ = \inst2|inst|mux_2|mux_1|mux_generate:0:mux_i|Mux2~8_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst2|inst|mux_2|mux_1|mux_generate:0:mux_i|Mux2~8_combout\,
	combout => \inst1|reg_gen:12:regs|y[1]~feeder_combout\);

-- Location: LCCOMB_X112_Y15_N20
\inst1|dec_to_en[12]\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|dec_to_en\(12) = (\inst1|dec_to_en[13]~10_combout\ & ((\inst1|dcd|dcd_3|dcd|Mux7~6_combout\) # (\inst1|dcd|dcd_3|dcd|Mux7~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|dcd|dcd_3|dcd|Mux7~6_combout\,
	datab => \inst1|dcd|dcd_3|dcd|Mux7~4_combout\,
	datad => \inst1|dec_to_en[13]~10_combout\,
	combout => \inst1|dec_to_en\(12));

-- Location: FF_X112_Y15_N25
\inst1|reg_gen:12:regs|y[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \SW17~input_o\,
	d => \inst1|reg_gen:12:regs|y[1]~feeder_combout\,
	ena => \inst1|dec_to_en\(12),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|reg_gen:12:regs|y\(1));

-- Location: LCCOMB_X114_Y17_N0
\inst1|reg_gen:28:regs|y[1]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|reg_gen:28:regs|y[1]~feeder_combout\ = \inst2|inst|mux_2|mux_1|mux_generate:0:mux_i|Mux2~8_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst2|inst|mux_2|mux_1|mux_generate:0:mux_i|Mux2~8_combout\,
	combout => \inst1|reg_gen:28:regs|y[1]~feeder_combout\);

-- Location: LCCOMB_X114_Y17_N30
\inst1|dec_to_en[28]\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|dec_to_en\(28) = (\inst1|dec_to_en[25]~11_combout\ & ((\inst1|dcd|dcd_3|dcd|Mux7~6_combout\) # (\inst1|dcd|dcd_3|dcd|Mux7~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|dcd|dcd_3|dcd|Mux7~6_combout\,
	datab => \inst1|dec_to_en[25]~11_combout\,
	datad => \inst1|dcd|dcd_3|dcd|Mux7~4_combout\,
	combout => \inst1|dec_to_en\(28));

-- Location: FF_X114_Y17_N1
\inst1|reg_gen:28:regs|y[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \SW17~input_o\,
	d => \inst1|reg_gen:28:regs|y[1]~feeder_combout\,
	ena => \inst1|dec_to_en\(28),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|reg_gen:28:regs|y\(1));

-- Location: LCCOMB_X113_Y17_N22
\inst1|DOUT[9]~164\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|DOUT[9]~164_combout\ = (\inst2|inst1|alu1|mux|Mux3~1_combout\ & (\inst1|reg_gen:12:regs|y\(1))) # (!\inst2|inst1|alu1|mux|Mux3~1_combout\ & ((\inst1|reg_gen:28:regs|y\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst1|reg_gen:12:regs|y\(1),
	datac => \inst1|reg_gen:28:regs|y\(1),
	datad => \inst2|inst1|alu1|mux|Mux3~1_combout\,
	combout => \inst1|DOUT[9]~164_combout\);

-- Location: LCCOMB_X114_Y17_N18
\inst1|reg_gen:18:regs|y[1]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|reg_gen:18:regs|y[1]~feeder_combout\ = \inst2|inst|mux_2|mux_1|mux_generate:0:mux_i|Mux2~8_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst2|inst|mux_2|mux_1|mux_generate:0:mux_i|Mux2~8_combout\,
	combout => \inst1|reg_gen:18:regs|y[1]~feeder_combout\);

-- Location: FF_X114_Y17_N19
\inst1|reg_gen:18:regs|y[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \SW17~input_o\,
	d => \inst1|reg_gen:18:regs|y[1]~feeder_combout\,
	ena => \inst1|dec_to_en\(18),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|reg_gen:18:regs|y\(1));

-- Location: LCCOMB_X112_Y18_N2
\inst1|reg_gen:8:regs|y[1]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|reg_gen:8:regs|y[1]~feeder_combout\ = \inst2|inst|mux_2|mux_1|mux_generate:0:mux_i|Mux2~8_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst2|inst|mux_2|mux_1|mux_generate:0:mux_i|Mux2~8_combout\,
	combout => \inst1|reg_gen:8:regs|y[1]~feeder_combout\);

-- Location: LCCOMB_X112_Y18_N22
\inst1|dec_to_en[8]~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|dec_to_en[8]~5_combout\ = (\inst2|inst1|alu1|mux|Mux3~1_combout\ & ((\inst2|inst1|alu0|mux|Mux0~3_combout\ & ((\inst1|dcd|dcd_3|dcd|Mux7~0_combout\))) # (!\inst2|inst1|alu0|mux|Mux0~3_combout\ & (\inst1|dcd|dcd_3|dcd|Mux7~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100100001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|inst1|alu0|mux|Mux0~3_combout\,
	datab => \inst2|inst1|alu1|mux|Mux3~1_combout\,
	datac => \inst1|dcd|dcd_3|dcd|Mux7~2_combout\,
	datad => \inst1|dcd|dcd_3|dcd|Mux7~0_combout\,
	combout => \inst1|dec_to_en[8]~5_combout\);

-- Location: LCCOMB_X112_Y18_N16
\inst1|dec_to_en[8]~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|dec_to_en[8]~6_combout\ = (\inst|Mux6~0_combout\ & \inst1|dec_to_en[8]~5_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst|Mux6~0_combout\,
	datad => \inst1|dec_to_en[8]~5_combout\,
	combout => \inst1|dec_to_en[8]~6_combout\);

-- Location: FF_X112_Y18_N3
\inst1|reg_gen:8:regs|y[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \SW17~input_o\,
	d => \inst1|reg_gen:8:regs|y[1]~feeder_combout\,
	ena => \inst1|dec_to_en[8]~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|reg_gen:8:regs|y\(1));

-- Location: LCCOMB_X113_Y18_N2
\inst1|dec_to_en[24]~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|dec_to_en[24]~7_combout\ = (!\inst2|inst1|alu1|mux|Mux3~1_combout\ & ((\inst2|inst1|alu0|mux|Mux0~3_combout\ & ((\inst1|dcd|dcd_3|dcd|Mux7~0_combout\))) # (!\inst2|inst1|alu0|mux|Mux0~3_combout\ & (\inst1|dcd|dcd_3|dcd|Mux7~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001000000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|dcd|dcd_3|dcd|Mux7~2_combout\,
	datab => \inst2|inst1|alu1|mux|Mux3~1_combout\,
	datac => \inst2|inst1|alu0|mux|Mux0~3_combout\,
	datad => \inst1|dcd|dcd_3|dcd|Mux7~0_combout\,
	combout => \inst1|dec_to_en[24]~7_combout\);

-- Location: LCCOMB_X112_Y18_N8
\inst1|dec_to_en[24]~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|dec_to_en[24]~8_combout\ = (\inst|Mux6~0_combout\ & \inst1|dec_to_en[24]~7_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst|Mux6~0_combout\,
	datad => \inst1|dec_to_en[24]~7_combout\,
	combout => \inst1|dec_to_en[24]~8_combout\);

-- Location: FF_X112_Y18_N25
\inst1|reg_gen:24:regs|y[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \SW17~input_o\,
	asdata => \inst2|inst|mux_2|mux_1|mux_generate:0:mux_i|Mux2~8_combout\,
	sload => VCC,
	ena => \inst1|dec_to_en[24]~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|reg_gen:24:regs|y\(1));

-- Location: LCCOMB_X112_Y18_N24
\inst1|DOUT[9]~160\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|DOUT[9]~160_combout\ = (\inst2|inst1|alu1|mux|Mux3~1_combout\ & (\inst1|reg_gen:8:regs|y\(1))) # (!\inst2|inst1|alu1|mux|Mux3~1_combout\ & ((\inst1|reg_gen:24:regs|y\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst1|reg_gen:8:regs|y\(1),
	datac => \inst1|reg_gen:24:regs|y\(1),
	datad => \inst2|inst1|alu1|mux|Mux3~1_combout\,
	combout => \inst1|DOUT[9]~160_combout\);

-- Location: FF_X111_Y18_N9
\inst1|reg_gen:20:regs|y[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \SW17~input_o\,
	asdata => \inst2|inst|mux_2|mux_1|mux_generate:0:mux_i|Mux2~8_combout\,
	sload => VCC,
	ena => \inst1|dec_to_en\(20),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|reg_gen:20:regs|y\(1));

-- Location: LCCOMB_X111_Y18_N8
\inst1|DOUT[9]~161\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|DOUT[9]~161_combout\ = (\inst2|inst1|alu0|mux|Mux2~1_combout\ & (((\inst2|inst1|alu0|mux|Mux1~3_combout\)))) # (!\inst2|inst1|alu0|mux|Mux2~1_combout\ & ((\inst2|inst1|alu0|mux|Mux1~3_combout\ & (\inst1|DOUT[9]~160_combout\)) # 
-- (!\inst2|inst1|alu0|mux|Mux1~3_combout\ & ((\inst1|reg_gen:20:regs|y\(1))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|inst1|alu0|mux|Mux2~1_combout\,
	datab => \inst1|DOUT[9]~160_combout\,
	datac => \inst1|reg_gen:20:regs|y\(1),
	datad => \inst2|inst1|alu0|mux|Mux1~3_combout\,
	combout => \inst1|DOUT[9]~161_combout\);

-- Location: LCCOMB_X113_Y14_N6
\inst1|reg_gen:22:regs|y[1]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|reg_gen:22:regs|y[1]~feeder_combout\ = \inst2|inst|mux_2|mux_1|mux_generate:0:mux_i|Mux2~8_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst2|inst|mux_2|mux_1|mux_generate:0:mux_i|Mux2~8_combout\,
	combout => \inst1|reg_gen:22:regs|y[1]~feeder_combout\);

-- Location: FF_X113_Y14_N7
\inst1|reg_gen:22:regs|y[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \SW17~input_o\,
	d => \inst1|reg_gen:22:regs|y[1]~feeder_combout\,
	ena => \inst1|dec_to_en\(22),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|reg_gen:22:regs|y\(1));

-- Location: LCCOMB_X114_Y18_N12
\inst1|reg_gen:6:regs|y[1]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|reg_gen:6:regs|y[1]~feeder_combout\ = \inst2|inst|mux_2|mux_1|mux_generate:0:mux_i|Mux2~8_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst2|inst|mux_2|mux_1|mux_generate:0:mux_i|Mux2~8_combout\,
	combout => \inst1|reg_gen:6:regs|y[1]~feeder_combout\);

-- Location: FF_X114_Y18_N13
\inst1|reg_gen:6:regs|y[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \SW17~input_o\,
	d => \inst1|reg_gen:6:regs|y[1]~feeder_combout\,
	ena => \inst1|dec_to_en\(6),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|reg_gen:6:regs|y\(1));

-- Location: LCCOMB_X111_Y18_N18
\inst1|DOUT[9]~162\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|DOUT[9]~162_combout\ = (\inst2|inst1|alu1|mux|Mux3~1_combout\ & ((\inst1|reg_gen:6:regs|y\(1)))) # (!\inst2|inst1|alu1|mux|Mux3~1_combout\ & (\inst1|reg_gen:22:regs|y\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|reg_gen:22:regs|y\(1),
	datab => \inst2|inst1|alu1|mux|Mux3~1_combout\,
	datad => \inst1|reg_gen:6:regs|y\(1),
	combout => \inst1|DOUT[9]~162_combout\);

-- Location: LCCOMB_X110_Y18_N0
\inst1|DOUT[9]~163\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|DOUT[9]~163_combout\ = (\inst2|inst1|alu0|mux|Mux2~1_combout\ & ((\inst1|DOUT[9]~161_combout\ & ((\inst1|DOUT[9]~162_combout\))) # (!\inst1|DOUT[9]~161_combout\ & (\inst1|reg_gen:18:regs|y\(1))))) # (!\inst2|inst1|alu0|mux|Mux2~1_combout\ & 
-- (((\inst1|DOUT[9]~161_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100000111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|reg_gen:18:regs|y\(1),
	datab => \inst2|inst1|alu0|mux|Mux2~1_combout\,
	datac => \inst1|DOUT[9]~161_combout\,
	datad => \inst1|DOUT[9]~162_combout\,
	combout => \inst1|DOUT[9]~163_combout\);

-- Location: LCCOMB_X110_Y21_N28
\inst1|DOUT[13]~34\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|DOUT[13]~34_combout\ = (\inst1|DOUT[13]~21_combout\) # ((\inst2|inst1|alu0|mux|Mux2~1_combout\) # (!\inst2|inst1|alu0|mux|Mux0~3_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|DOUT[13]~21_combout\,
	datac => \inst2|inst1|alu0|mux|Mux2~1_combout\,
	datad => \inst2|inst1|alu0|mux|Mux0~3_combout\,
	combout => \inst1|DOUT[13]~34_combout\);

-- Location: LCCOMB_X110_Y19_N28
\inst1|DOUT[9]~165\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|DOUT[9]~165_combout\ = (\inst1|DOUT[13]~34_combout\ & (((\inst1|DOUT[9]~163_combout\) # (\inst1|DOUT[13]~29_combout\)))) # (!\inst1|DOUT[13]~34_combout\ & (\inst1|DOUT[9]~164_combout\ & ((!\inst1|DOUT[13]~29_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|DOUT[9]~164_combout\,
	datab => \inst1|DOUT[9]~163_combout\,
	datac => \inst1|DOUT[13]~34_combout\,
	datad => \inst1|DOUT[13]~29_combout\,
	combout => \inst1|DOUT[9]~165_combout\);

-- Location: LCCOMB_X110_Y19_N26
\inst1|DOUT[9]~173\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|DOUT[9]~173_combout\ = (\inst1|DOUT[9]~165_combout\ & (((\inst1|DOUT[9]~172_combout\) # (!\inst1|DOUT[13]~29_combout\)))) # (!\inst1|DOUT[9]~165_combout\ & (\inst1|reg_gen:16:regs|y\(1) & ((\inst1|DOUT[13]~29_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|reg_gen:16:regs|y\(1),
	datab => \inst1|DOUT[9]~172_combout\,
	datac => \inst1|DOUT[9]~165_combout\,
	datad => \inst1|DOUT[13]~29_combout\,
	combout => \inst1|DOUT[9]~173_combout\);

-- Location: LCCOMB_X114_Y15_N20
\inst1|reg_gen:21:regs|y[1]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|reg_gen:21:regs|y[1]~feeder_combout\ = \inst2|inst|mux_2|mux_1|mux_generate:2:mux_i|Mux2~4_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|inst|mux_2|mux_1|mux_generate:2:mux_i|Mux2~4_combout\,
	combout => \inst1|reg_gen:21:regs|y[1]~feeder_combout\);

-- Location: LCCOMB_X114_Y15_N18
\inst1|dec_to_en[21]\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|dec_to_en\(21) = (\inst1|dec_to_en[21]~1_combout\ & ((\inst1|dcd|dcd_3|dcd|Mux7~3_combout\) # (\inst1|dcd|dcd_3|dcd|Mux7~6_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|dcd|dcd_3|dcd|Mux7~3_combout\,
	datab => \inst1|dcd|dcd_3|dcd|Mux7~6_combout\,
	datad => \inst1|dec_to_en[21]~1_combout\,
	combout => \inst1|dec_to_en\(21));

-- Location: FF_X114_Y15_N21
\inst1|reg_gen:21:regs|y[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \SW17~input_o\,
	d => \inst1|reg_gen:21:regs|y[1]~feeder_combout\,
	ena => \inst1|dec_to_en\(21),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|reg_gen:21:regs|y\(1));

-- Location: LCCOMB_X114_Y14_N8
\inst1|reg_gen:17:regs|y[1]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|reg_gen:17:regs|y[1]~feeder_combout\ = \inst2|inst|mux_2|mux_1|mux_generate:2:mux_i|Mux2~4_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|inst|mux_2|mux_1|mux_generate:2:mux_i|Mux2~4_combout\,
	combout => \inst1|reg_gen:17:regs|y[1]~feeder_combout\);

-- Location: LCCOMB_X114_Y14_N20
\inst1|dec_to_en[17]\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|dec_to_en\(17) = (\inst1|dec_to_en[21]~1_combout\ & ((\inst1|dcd|dcd_3|dcd|Mux7~0_combout\) # (\inst1|dcd|dcd_3|dcd|Mux7~5_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|dcd|dcd_3|dcd|Mux7~0_combout\,
	datab => \inst1|dcd|dcd_3|dcd|Mux7~5_combout\,
	datad => \inst1|dec_to_en[21]~1_combout\,
	combout => \inst1|dec_to_en\(17));

-- Location: FF_X114_Y14_N9
\inst1|reg_gen:17:regs|y[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \SW17~input_o\,
	d => \inst1|reg_gen:17:regs|y[1]~feeder_combout\,
	ena => \inst1|dec_to_en\(17),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|reg_gen:17:regs|y\(1));

-- Location: LCCOMB_X114_Y14_N14
\inst1|reg_gen:19:regs|y[1]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|reg_gen:19:regs|y[1]~feeder_combout\ = \inst2|inst|mux_2|mux_1|mux_generate:2:mux_i|Mux2~4_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|inst|mux_2|mux_1|mux_generate:2:mux_i|Mux2~4_combout\,
	combout => \inst1|reg_gen:19:regs|y[1]~feeder_combout\);

-- Location: LCCOMB_X114_Y14_N6
\inst1|dec_to_en[19]\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|dec_to_en\(19) = (\inst1|dec_to_en[21]~1_combout\ & ((\inst1|dcd|dcd_3|dcd|Mux7~7_combout\) # (\inst1|dcd|dcd_3|dcd|Mux7~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|dcd|dcd_3|dcd|Mux7~7_combout\,
	datab => \inst1|dcd|dcd_3|dcd|Mux7~4_combout\,
	datad => \inst1|dec_to_en[21]~1_combout\,
	combout => \inst1|dec_to_en\(19));

-- Location: FF_X114_Y14_N15
\inst1|reg_gen:19:regs|y[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \SW17~input_o\,
	d => \inst1|reg_gen:19:regs|y[1]~feeder_combout\,
	ena => \inst1|dec_to_en\(19),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|reg_gen:19:regs|y\(1));

-- Location: LCCOMB_X112_Y14_N16
\inst1|reg_gen:23:regs|y[1]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|reg_gen:23:regs|y[1]~feeder_combout\ = \inst2|inst|mux_2|mux_1|mux_generate:2:mux_i|Mux2~4_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|inst|mux_2|mux_1|mux_generate:2:mux_i|Mux2~4_combout\,
	combout => \inst1|reg_gen:23:regs|y[1]~feeder_combout\);

-- Location: LCCOMB_X112_Y14_N4
\inst1|dec_to_en[23]\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|dec_to_en\(23) = (!\inst2|inst1|alu1|mux|Mux3~1_combout\ & (\inst1|dec_to_en~2_combout\ & (\inst|Mux6~0_combout\ & !\inst2|inst1|alu0|mux|Mux0~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|inst1|alu1|mux|Mux3~1_combout\,
	datab => \inst1|dec_to_en~2_combout\,
	datac => \inst|Mux6~0_combout\,
	datad => \inst2|inst1|alu0|mux|Mux0~3_combout\,
	combout => \inst1|dec_to_en\(23));

-- Location: FF_X112_Y14_N17
\inst1|reg_gen:23:regs|y[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \SW17~input_o\,
	d => \inst1|reg_gen:23:regs|y[1]~feeder_combout\,
	ena => \inst1|dec_to_en\(23),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|reg_gen:23:regs|y\(1));

-- Location: LCCOMB_X111_Y14_N8
\inst1|reg_gen:7:regs|y[1]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|reg_gen:7:regs|y[1]~feeder_combout\ = \inst2|inst|mux_2|mux_1|mux_generate:2:mux_i|Mux2~4_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst2|inst|mux_2|mux_1|mux_generate:2:mux_i|Mux2~4_combout\,
	combout => \inst1|reg_gen:7:regs|y[1]~feeder_combout\);

-- Location: LCCOMB_X111_Y14_N28
\inst1|dec_to_en[7]\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|dec_to_en\(7) = (\inst2|inst1|alu1|mux|Mux3~1_combout\ & (\inst|Mux6~0_combout\ & (!\inst2|inst1|alu0|mux|Mux0~3_combout\ & \inst1|dec_to_en~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|inst1|alu1|mux|Mux3~1_combout\,
	datab => \inst|Mux6~0_combout\,
	datac => \inst2|inst1|alu0|mux|Mux0~3_combout\,
	datad => \inst1|dec_to_en~2_combout\,
	combout => \inst1|dec_to_en\(7));

-- Location: FF_X111_Y14_N9
\inst1|reg_gen:7:regs|y[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \SW17~input_o\,
	d => \inst1|reg_gen:7:regs|y[1]~feeder_combout\,
	ena => \inst1|dec_to_en\(7),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|reg_gen:7:regs|y\(1));

-- Location: LCCOMB_X111_Y14_N14
\inst1|DOUT[9]~156\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|DOUT[9]~156_combout\ = (\inst2|inst1|alu1|mux|Mux3~1_combout\ & ((\inst1|reg_gen:7:regs|y\(1)))) # (!\inst2|inst1|alu1|mux|Mux3~1_combout\ & (\inst1|reg_gen:23:regs|y\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst1|reg_gen:23:regs|y\(1),
	datac => \inst1|reg_gen:7:regs|y\(1),
	datad => \inst2|inst1|alu1|mux|Mux3~1_combout\,
	combout => \inst1|DOUT[9]~156_combout\);

-- Location: LCCOMB_X110_Y16_N12
\inst1|DOUT[9]~157\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|DOUT[9]~157_combout\ = (\inst2|inst1|alu0|mux|Mux1~3_combout\ & (((\inst1|DOUT[9]~156_combout\) # (\inst2|inst1|alu0|mux|Mux2~1_combout\)))) # (!\inst2|inst1|alu0|mux|Mux1~3_combout\ & (\inst1|reg_gen:19:regs|y\(1) & 
-- ((!\inst2|inst1|alu0|mux|Mux2~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|reg_gen:19:regs|y\(1),
	datab => \inst2|inst1|alu0|mux|Mux1~3_combout\,
	datac => \inst1|DOUT[9]~156_combout\,
	datad => \inst2|inst1|alu0|mux|Mux2~1_combout\,
	combout => \inst1|DOUT[9]~157_combout\);

-- Location: LCCOMB_X110_Y16_N10
\inst1|DOUT[9]~158\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|DOUT[9]~158_combout\ = (\inst2|inst1|alu0|mux|Mux2~1_combout\ & ((\inst1|DOUT[9]~157_combout\ & (\inst1|reg_gen:21:regs|y\(1))) # (!\inst1|DOUT[9]~157_combout\ & ((\inst1|reg_gen:17:regs|y\(1)))))) # (!\inst2|inst1|alu0|mux|Mux2~1_combout\ & 
-- (((\inst1|DOUT[9]~157_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|inst1|alu0|mux|Mux2~1_combout\,
	datab => \inst1|reg_gen:21:regs|y\(1),
	datac => \inst1|reg_gen:17:regs|y\(1),
	datad => \inst1|DOUT[9]~157_combout\,
	combout => \inst1|DOUT[9]~158_combout\);

-- Location: LCCOMB_X110_Y19_N20
\inst1|DOUT[9]~159\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|DOUT[9]~159_combout\ = (\inst1|DOUT[13]~21_combout\ & (!\inst2|inst1|alu0|mux|Mux0~3_combout\ & (\inst1|DOUT[9]~158_combout\ & !\inst1|DOUT[13]~23_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|DOUT[13]~21_combout\,
	datab => \inst2|inst1|alu0|mux|Mux0~3_combout\,
	datac => \inst1|DOUT[9]~158_combout\,
	datad => \inst1|DOUT[13]~23_combout\,
	combout => \inst1|DOUT[9]~159_combout\);

-- Location: LCCOMB_X110_Y19_N24
\inst1|DOUT[9]~174\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|DOUT[9]~174_combout\ = (\inst1|DOUT[9]~155_combout\) # ((\inst1|DOUT[9]~159_combout\) # ((\inst1|DOUT[15]~47_combout\ & \inst1|DOUT[9]~173_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|DOUT[15]~47_combout\,
	datab => \inst1|DOUT[9]~155_combout\,
	datac => \inst1|DOUT[9]~173_combout\,
	datad => \inst1|DOUT[9]~159_combout\,
	combout => \inst1|DOUT[9]~174_combout\);

-- Location: CLKCTRL_G9
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

-- Location: LCCOMB_X110_Y19_N30
\inst1|DOUT[9]$latch~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|DOUT[9]$latch~0_combout\ = (GLOBAL(\inst1|DOUT[15]~52clkctrl_outclk\) & (\inst1|DOUT[9]~174_combout\)) # (!GLOBAL(\inst1|DOUT[15]~52clkctrl_outclk\) & ((\inst1|DOUT[9]$latch~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|DOUT[9]~174_combout\,
	datab => \inst1|DOUT[9]$latch~combout\,
	datad => \inst1|DOUT[15]~52clkctrl_outclk\,
	combout => \inst1|DOUT[9]$latch~0_combout\);

-- Location: LCCOMB_X110_Y21_N24
\inst1|comb~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|comb~1_combout\ = (\inst|Mux5~0_combout\ & (\inst1|DOUT[15]~53_combout\ & ((!\inst|Mux3~7_combout\) # (!\inst1|dcd|dcd_3|dcd|Mux7~5_combout\)))) # (!\inst|Mux5~0_combout\ & (((!\inst|Mux3~7_combout\)) # (!\inst1|dcd|dcd_3|dcd|Mux7~5_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011111100010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Mux5~0_combout\,
	datab => \inst1|dcd|dcd_3|dcd|Mux7~5_combout\,
	datac => \inst|Mux3~7_combout\,
	datad => \inst1|DOUT[15]~53_combout\,
	combout => \inst1|comb~1_combout\);

-- Location: LCCOMB_X111_Y19_N4
\inst1|dcd|dcd_0|D[1]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|dcd|dcd_0|D[1]~1_combout\ = (\inst1|dcd|dcd_3|dcd|Mux7~5_combout\ & (!\inst2|inst1|alu0|mux|Mux0~3_combout\ & \inst2|inst1|alu1|mux|Mux3~1_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst1|dcd|dcd_3|dcd|Mux7~5_combout\,
	datac => \inst2|inst1|alu0|mux|Mux0~3_combout\,
	datad => \inst2|inst1|alu1|mux|Mux3~1_combout\,
	combout => \inst1|dcd|dcd_0|D[1]~1_combout\);

-- Location: LCCOMB_X110_Y19_N16
\inst1|DOUT[9]$latch\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|DOUT[9]$latch~combout\ = (!\inst1|comb~1_combout\ & ((\inst1|DOUT[9]$latch~0_combout\) # (\inst1|dcd|dcd_0|D[1]~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|DOUT[9]$latch~0_combout\,
	datac => \inst1|comb~1_combout\,
	datad => \inst1|dcd|dcd_0|D[1]~1_combout\,
	combout => \inst1|DOUT[9]$latch~combout\);

-- Location: FF_X110_Y20_N17
\inst2|inst|reg_gen:1:regs|reg_1|y[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \SW17~input_o\,
	d => \inst3|OUT16B[7]~30_combout\,
	ena => \inst2|inst|add_reg1_dcd|Mux3~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst2|inst|reg_gen:1:regs|reg_1|y\(7));

-- Location: LCCOMB_X109_Y22_N6
\inst2|inst|mux_1|mux_1|mux_generate:1:mux_i|Mux0~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|inst|mux_1|mux_1|mux_generate:1:mux_i|Mux0~6_combout\ = (!\inst4|inst1|exception~2_combout\ & (\inst2|inst|reg_gen:1:regs|reg_1|y\(7) & ((\inst4|inst1|data_out[9]~13_combout\) # (\inst4|inst|reg|reg_1|y\(5)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|inst1|data_out[9]~13_combout\,
	datab => \inst4|inst1|exception~2_combout\,
	datac => \inst2|inst|reg_gen:1:regs|reg_1|y\(7),
	datad => \inst4|inst|reg|reg_1|y\(5),
	combout => \inst2|inst|mux_1|mux_1|mux_generate:1:mux_i|Mux0~6_combout\);

-- Location: FF_X109_Y22_N17
\inst2|inst|reg_gen:6:regs|reg_1|y[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \SW17~input_o\,
	asdata => \inst3|OUT16B[7]~30_combout\,
	sload => VCC,
	ena => \inst2|inst|add_reg1_dcd|Mux3~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst2|inst|reg_gen:6:regs|reg_1|y\(7));

-- Location: LCCOMB_X109_Y22_N16
\inst2|inst|mux_1|mux_1|mux_generate:1:mux_i|Mux0~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|inst|mux_1|mux_1|mux_generate:1:mux_i|Mux0~3_combout\ = (\inst2|inst|mux_1|mux_1|mux_generate:3:mux_i|Mux3~5_combout\ & ((\inst2|inst|mux_1|mux_1|mux_generate:3:mux_i|Mux3~6_combout\ & ((\inst2|inst|reg_gen:6:regs|reg_1|y\(7)))) # 
-- (!\inst2|inst|mux_1|mux_1|mux_generate:3:mux_i|Mux3~6_combout\ & (\inst2|inst|mux_1|mux_1|mux_generate:1:mux_i|Mux0~6_combout\)))) # (!\inst2|inst|mux_1|mux_1|mux_generate:3:mux_i|Mux3~5_combout\ & 
-- (((!\inst2|inst|mux_1|mux_1|mux_generate:3:mux_i|Mux3~6_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000010111011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|inst|mux_1|mux_1|mux_generate:1:mux_i|Mux0~6_combout\,
	datab => \inst2|inst|mux_1|mux_1|mux_generate:3:mux_i|Mux3~5_combout\,
	datac => \inst2|inst|reg_gen:6:regs|reg_1|y\(7),
	datad => \inst2|inst|mux_1|mux_1|mux_generate:3:mux_i|Mux3~6_combout\,
	combout => \inst2|inst|mux_1|mux_1|mux_generate:1:mux_i|Mux0~3_combout\);

-- Location: FF_X109_Y22_N5
\inst2|inst|reg_gen:4:regs|reg_1|y[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \SW17~input_o\,
	asdata => \inst3|OUT16B[7]~30_combout\,
	sload => VCC,
	ena => \inst2|inst|add_reg1_dcd|Mux3~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst2|inst|reg_gen:4:regs|reg_1|y\(7));

-- Location: LCCOMB_X109_Y22_N4
\inst2|inst|mux_1|mux_1|mux_generate:1:mux_i|Mux0~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|inst|mux_1|mux_1|mux_generate:1:mux_i|Mux0~4_combout\ = (\inst2|inst|mux_1|mux_1|mux_generate:1:mux_i|Mux0~3_combout\ & (((\inst2|inst|reg_gen:4:regs|reg_1|y\(7)) # (\inst2|inst|mux_1|mux_1|mux_generate:3:mux_i|Mux3~4_combout\)))) # 
-- (!\inst2|inst|mux_1|mux_1|mux_generate:1:mux_i|Mux0~3_combout\ & (\inst2|inst|reg_gen:5:regs|reg_1|y\(7) & ((!\inst2|inst|mux_1|mux_1|mux_generate:3:mux_i|Mux3~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|inst|reg_gen:5:regs|reg_1|y\(7),
	datab => \inst2|inst|mux_1|mux_1|mux_generate:1:mux_i|Mux0~3_combout\,
	datac => \inst2|inst|reg_gen:4:regs|reg_1|y\(7),
	datad => \inst2|inst|mux_1|mux_1|mux_generate:3:mux_i|Mux3~4_combout\,
	combout => \inst2|inst|mux_1|mux_1|mux_generate:1:mux_i|Mux0~4_combout\);

-- Location: FF_X106_Y22_N11
\inst2|inst|reg_gen:2:regs|reg_1|y[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \SW17~input_o\,
	asdata => \inst3|OUT16B[7]~30_combout\,
	sload => VCC,
	ena => \inst2|inst|add_reg1_dcd|Mux3~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst2|inst|reg_gen:2:regs|reg_1|y\(7));

-- Location: FF_X110_Y22_N17
\inst2|inst|reg_gen:3:regs|reg_1|y[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \SW17~input_o\,
	asdata => \inst3|OUT16B[7]~30_combout\,
	sload => VCC,
	ena => \inst2|inst|add_reg1_dcd|Mux3~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst2|inst|reg_gen:3:regs|reg_1|y\(7));

-- Location: LCCOMB_X110_Y22_N16
\inst2|inst|mux_1|mux_1|mux_generate:1:mux_i|Mux0~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|inst|mux_1|mux_1|mux_generate:1:mux_i|Mux0~2_combout\ = (\inst4|inst1|data_out[9]~14_combout\ & ((\inst4|inst1|exception~2_combout\ & (\inst2|inst|reg_gen:2:regs|reg_1|y\(7))) # (!\inst4|inst1|exception~2_combout\ & 
-- ((\inst2|inst|reg_gen:3:regs|reg_1|y\(7)))))) # (!\inst4|inst1|data_out[9]~14_combout\ & (\inst2|inst|reg_gen:2:regs|reg_1|y\(7)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|inst1|data_out[9]~14_combout\,
	datab => \inst2|inst|reg_gen:2:regs|reg_1|y\(7),
	datac => \inst2|inst|reg_gen:3:regs|reg_1|y\(7),
	datad => \inst4|inst1|exception~2_combout\,
	combout => \inst2|inst|mux_1|mux_1|mux_generate:1:mux_i|Mux0~2_combout\);

-- Location: LCCOMB_X109_Y22_N28
\inst2|inst|mux_1|mux_1|mux_generate:1:mux_i|Mux0~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|inst|mux_1|mux_1|mux_generate:1:mux_i|Mux0~5_combout\ = (\inst2|inst|mux_1|mux_1|mux_generate:3:mux_i|Mux3~12_combout\ & ((\inst2|inst|mux_1|mux_1|mux_generate:1:mux_i|Mux0~2_combout\))) # 
-- (!\inst2|inst|mux_1|mux_1|mux_generate:3:mux_i|Mux3~12_combout\ & (\inst2|inst|mux_1|mux_1|mux_generate:1:mux_i|Mux0~4_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|inst|mux_1|mux_1|mux_generate:3:mux_i|Mux3~12_combout\,
	datac => \inst2|inst|mux_1|mux_1|mux_generate:1:mux_i|Mux0~4_combout\,
	datad => \inst2|inst|mux_1|mux_1|mux_generate:1:mux_i|Mux0~2_combout\,
	combout => \inst2|inst|mux_1|mux_1|mux_generate:1:mux_i|Mux0~5_combout\);

-- Location: FF_X107_Y21_N25
\inst2|inst|reg_gen:2:regs|reg_1|y[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \SW17~input_o\,
	asdata => \inst3|OUT16B[5]~32_combout\,
	sload => VCC,
	ena => \inst2|inst|add_reg1_dcd|Mux3~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst2|inst|reg_gen:2:regs|reg_1|y\(5));

-- Location: LCCOMB_X107_Y21_N24
\inst2|inst|mux_2|mux_1|mux_generate:1:mux_i|Mux2~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|inst|mux_2|mux_1|mux_generate:1:mux_i|Mux2~0_combout\ = (\inst4|inst1|exception~2_combout\ & (((\inst2|inst|reg_gen:2:regs|reg_1|y\(5))))) # (!\inst4|inst1|exception~2_combout\ & ((\inst4|inst1|data_out[6]~17_combout\ & 
-- ((\inst2|inst|reg_gen:3:regs|reg_1|y\(5)))) # (!\inst4|inst1|data_out[6]~17_combout\ & (\inst2|inst|reg_gen:2:regs|reg_1|y\(5)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010010110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|inst1|exception~2_combout\,
	datab => \inst4|inst1|data_out[6]~17_combout\,
	datac => \inst2|inst|reg_gen:2:regs|reg_1|y\(5),
	datad => \inst2|inst|reg_gen:3:regs|reg_1|y\(5),
	combout => \inst2|inst|mux_2|mux_1|mux_generate:1:mux_i|Mux2~0_combout\);

-- Location: FF_X108_Y21_N31
\inst2|inst|reg_gen:4:regs|reg_1|y[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \SW17~input_o\,
	asdata => \inst3|OUT16B[5]~32_combout\,
	sload => VCC,
	ena => \inst2|inst|add_reg1_dcd|Mux3~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst2|inst|reg_gen:4:regs|reg_1|y\(5));

-- Location: FF_X108_Y20_N19
\inst2|inst|reg_gen:5:regs|reg_1|y[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \SW17~input_o\,
	asdata => \inst3|OUT16B[5]~32_combout\,
	sload => VCC,
	ena => \inst2|inst|add_reg1_dcd|Mux3~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst2|inst|reg_gen:5:regs|reg_1|y\(5));

-- Location: FF_X109_Y22_N15
\inst2|inst|reg_gen:6:regs|reg_1|y[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \SW17~input_o\,
	asdata => \inst3|OUT16B[5]~32_combout\,
	sload => VCC,
	ena => \inst2|inst|add_reg1_dcd|Mux3~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst2|inst|reg_gen:6:regs|reg_1|y\(5));

-- Location: FF_X110_Y20_N9
\inst2|inst|reg_gen:1:regs|reg_1|y[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \SW17~input_o\,
	d => \inst3|OUT16B[5]~32_combout\,
	ena => \inst2|inst|add_reg1_dcd|Mux3~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst2|inst|reg_gen:1:regs|reg_1|y\(5));

-- Location: LCCOMB_X108_Y20_N8
\inst2|inst|mux_2|mux_1|mux_generate:1:mux_i|Mux2~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|inst|mux_2|mux_1|mux_generate:1:mux_i|Mux2~1_combout\ = (\inst2|inst|reg_gen:1:regs|reg_1|y\(5) & (!\inst4|inst1|exception~2_combout\ & \inst4|inst1|data_out[6]~17_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst2|inst|reg_gen:1:regs|reg_1|y\(5),
	datac => \inst4|inst1|exception~2_combout\,
	datad => \inst4|inst1|data_out[6]~17_combout\,
	combout => \inst2|inst|mux_2|mux_1|mux_generate:1:mux_i|Mux2~1_combout\);

-- Location: LCCOMB_X108_Y20_N28
\inst2|inst|mux_2|mux_1|mux_generate:1:mux_i|Mux2~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|inst|mux_2|mux_1|mux_generate:1:mux_i|Mux2~2_combout\ = (\inst2|inst|mux_2|mux_1|mux_generate:0:mux_i|Mux2~3_combout\ & ((\inst2|inst|mux_2|mux_1|mux_generate:0:mux_i|Mux2~4_combout\ & (\inst2|inst|reg_gen:6:regs|reg_1|y\(5))) # 
-- (!\inst2|inst|mux_2|mux_1|mux_generate:0:mux_i|Mux2~4_combout\ & ((\inst2|inst|mux_2|mux_1|mux_generate:1:mux_i|Mux2~1_combout\))))) # (!\inst2|inst|mux_2|mux_1|mux_generate:0:mux_i|Mux2~3_combout\ & 
-- (((!\inst2|inst|mux_2|mux_1|mux_generate:0:mux_i|Mux2~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100011110101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|inst|mux_2|mux_1|mux_generate:0:mux_i|Mux2~3_combout\,
	datab => \inst2|inst|reg_gen:6:regs|reg_1|y\(5),
	datac => \inst2|inst|mux_2|mux_1|mux_generate:1:mux_i|Mux2~1_combout\,
	datad => \inst2|inst|mux_2|mux_1|mux_generate:0:mux_i|Mux2~4_combout\,
	combout => \inst2|inst|mux_2|mux_1|mux_generate:1:mux_i|Mux2~2_combout\);

-- Location: LCCOMB_X108_Y20_N18
\inst2|inst|mux_2|mux_1|mux_generate:1:mux_i|Mux2~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|inst|mux_2|mux_1|mux_generate:1:mux_i|Mux2~3_combout\ = (\inst2|inst|mux_2|mux_1|mux_generate:0:mux_i|Mux2~1_combout\ & (((\inst2|inst|mux_2|mux_1|mux_generate:1:mux_i|Mux2~2_combout\)))) # 
-- (!\inst2|inst|mux_2|mux_1|mux_generate:0:mux_i|Mux2~1_combout\ & ((\inst2|inst|mux_2|mux_1|mux_generate:1:mux_i|Mux2~2_combout\ & (\inst2|inst|reg_gen:4:regs|reg_1|y\(5))) # (!\inst2|inst|mux_2|mux_1|mux_generate:1:mux_i|Mux2~2_combout\ & 
-- ((\inst2|inst|reg_gen:5:regs|reg_1|y\(5))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|inst|reg_gen:4:regs|reg_1|y\(5),
	datab => \inst2|inst|mux_2|mux_1|mux_generate:0:mux_i|Mux2~1_combout\,
	datac => \inst2|inst|reg_gen:5:regs|reg_1|y\(5),
	datad => \inst2|inst|mux_2|mux_1|mux_generate:1:mux_i|Mux2~2_combout\,
	combout => \inst2|inst|mux_2|mux_1|mux_generate:1:mux_i|Mux2~3_combout\);

-- Location: LCCOMB_X107_Y21_N22
\inst2|inst|mux_2|mux_1|mux_generate:1:mux_i|Mux2~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|inst|mux_2|mux_1|mux_generate:1:mux_i|Mux2~4_combout\ = (\inst2|inst|mux_2|mux_1|mux_generate:0:mux_i|Mux2~7_combout\ & (\inst2|inst|mux_2|mux_1|mux_generate:1:mux_i|Mux2~0_combout\)) # (!\inst2|inst|mux_2|mux_1|mux_generate:0:mux_i|Mux2~7_combout\ 
-- & ((\inst2|inst|mux_2|mux_1|mux_generate:1:mux_i|Mux2~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst2|inst|mux_2|mux_1|mux_generate:1:mux_i|Mux2~0_combout\,
	datac => \inst2|inst|mux_2|mux_1|mux_generate:1:mux_i|Mux2~3_combout\,
	datad => \inst2|inst|mux_2|mux_1|mux_generate:0:mux_i|Mux2~7_combout\,
	combout => \inst2|inst|mux_2|mux_1|mux_generate:1:mux_i|Mux2~4_combout\);

-- Location: LCCOMB_X111_Y20_N10
\inst1|reg_gen:30:regs|y[5]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|reg_gen:30:regs|y[5]~feeder_combout\ = \inst2|inst|mux_2|mux_1|mux_generate:1:mux_i|Mux2~4_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst2|inst|mux_2|mux_1|mux_generate:1:mux_i|Mux2~4_combout\,
	combout => \inst1|reg_gen:30:regs|y[5]~feeder_combout\);

-- Location: FF_X111_Y20_N11
\inst1|reg_gen:30:regs|y[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \SW17~input_o\,
	d => \inst1|reg_gen:30:regs|y[5]~feeder_combout\,
	ena => \inst1|dec_to_en\(30),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|reg_gen:30:regs|y\(5));

-- Location: FF_X111_Y18_N13
\inst1|reg_gen:16:regs|y[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \SW17~input_o\,
	asdata => \inst2|inst|mux_2|mux_1|mux_generate:1:mux_i|Mux2~4_combout\,
	sload => VCC,
	ena => \inst1|dec_to_en[16]~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|reg_gen:16:regs|y\(5));

-- Location: LCCOMB_X114_Y15_N4
\inst1|reg_gen:20:regs|y[5]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|reg_gen:20:regs|y[5]~feeder_combout\ = \inst2|inst|mux_2|mux_1|mux_generate:1:mux_i|Mux2~4_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst2|inst|mux_2|mux_1|mux_generate:1:mux_i|Mux2~4_combout\,
	combout => \inst1|reg_gen:20:regs|y[5]~feeder_combout\);

-- Location: FF_X114_Y15_N5
\inst1|reg_gen:20:regs|y[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \SW17~input_o\,
	d => \inst1|reg_gen:20:regs|y[5]~feeder_combout\,
	ena => \inst1|dec_to_en\(20),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|reg_gen:20:regs|y\(5));

-- Location: FF_X114_Y17_N17
\inst1|reg_gen:18:regs|y[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \SW17~input_o\,
	asdata => \inst2|inst|mux_2|mux_1|mux_generate:1:mux_i|Mux2~4_combout\,
	sload => VCC,
	ena => \inst1|dec_to_en\(18),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|reg_gen:18:regs|y\(5));

-- Location: LCCOMB_X114_Y18_N16
\inst1|reg_gen:6:regs|y[5]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|reg_gen:6:regs|y[5]~feeder_combout\ = \inst2|inst|mux_2|mux_1|mux_generate:1:mux_i|Mux2~4_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst2|inst|mux_2|mux_1|mux_generate:1:mux_i|Mux2~4_combout\,
	combout => \inst1|reg_gen:6:regs|y[5]~feeder_combout\);

-- Location: FF_X114_Y18_N17
\inst1|reg_gen:6:regs|y[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \SW17~input_o\,
	d => \inst1|reg_gen:6:regs|y[5]~feeder_combout\,
	ena => \inst1|dec_to_en\(6),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|reg_gen:6:regs|y\(5));

-- Location: LCCOMB_X113_Y14_N26
\inst1|reg_gen:22:regs|y[5]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|reg_gen:22:regs|y[5]~feeder_combout\ = \inst2|inst|mux_2|mux_1|mux_generate:1:mux_i|Mux2~4_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst2|inst|mux_2|mux_1|mux_generate:1:mux_i|Mux2~4_combout\,
	combout => \inst1|reg_gen:22:regs|y[5]~feeder_combout\);

-- Location: FF_X113_Y14_N27
\inst1|reg_gen:22:regs|y[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \SW17~input_o\,
	d => \inst1|reg_gen:22:regs|y[5]~feeder_combout\,
	ena => \inst1|dec_to_en\(22),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|reg_gen:22:regs|y\(5));

-- Location: LCCOMB_X113_Y18_N16
\inst1|DOUT[13]~82\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|DOUT[13]~82_combout\ = (\inst2|inst1|alu1|mux|Mux3~1_combout\ & (\inst1|reg_gen:6:regs|y\(5))) # (!\inst2|inst1|alu1|mux|Mux3~1_combout\ & ((\inst1|reg_gen:22:regs|y\(5))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|reg_gen:6:regs|y\(5),
	datab => \inst1|reg_gen:22:regs|y\(5),
	datad => \inst2|inst1|alu1|mux|Mux3~1_combout\,
	combout => \inst1|DOUT[13]~82_combout\);

-- Location: LCCOMB_X113_Y18_N24
\inst1|DOUT[5]~216\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|DOUT[5]~216_combout\ = (\inst2|inst1|alu0|mux|Mux1~3_combout\ & (((\inst1|DOUT[13]~82_combout\) # (\inst2|inst1|alu0|mux|Mux2~1_combout\)))) # (!\inst2|inst1|alu0|mux|Mux1~3_combout\ & (\inst1|reg_gen:18:regs|y\(5) & 
-- ((!\inst2|inst1|alu0|mux|Mux2~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|reg_gen:18:regs|y\(5),
	datab => \inst2|inst1|alu0|mux|Mux1~3_combout\,
	datac => \inst1|DOUT[13]~82_combout\,
	datad => \inst2|inst1|alu0|mux|Mux2~1_combout\,
	combout => \inst1|DOUT[5]~216_combout\);

-- Location: LCCOMB_X113_Y18_N14
\inst1|DOUT[5]~217\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|DOUT[5]~217_combout\ = (\inst1|DOUT[5]~216_combout\ & (((\inst1|reg_gen:20:regs|y\(5)) # (!\inst2|inst1|alu0|mux|Mux2~1_combout\)))) # (!\inst1|DOUT[5]~216_combout\ & (\inst1|reg_gen:16:regs|y\(5) & ((\inst2|inst1|alu0|mux|Mux2~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|reg_gen:16:regs|y\(5),
	datab => \inst1|reg_gen:20:regs|y\(5),
	datac => \inst1|DOUT[5]~216_combout\,
	datad => \inst2|inst1|alu0|mux|Mux2~1_combout\,
	combout => \inst1|DOUT[5]~217_combout\);

-- Location: LCCOMB_X110_Y20_N6
\inst1|DOUT[5]~218\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|DOUT[5]~218_combout\ = (\inst1|DOUT[5]~198_combout\ & ((\inst1|reg_gen:30:regs|y\(5)) # ((\inst1|DOUT[7]~197_combout\ & \inst1|DOUT[5]~217_combout\)))) # (!\inst1|DOUT[5]~198_combout\ & (((\inst1|DOUT[7]~197_combout\ & 
-- \inst1|DOUT[5]~217_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|DOUT[5]~198_combout\,
	datab => \inst1|reg_gen:30:regs|y\(5),
	datac => \inst1|DOUT[7]~197_combout\,
	datad => \inst1|DOUT[5]~217_combout\,
	combout => \inst1|DOUT[5]~218_combout\);

-- Location: LCCOMB_X105_Y19_N6
\inst2|inst|reg_gen:3:regs|reg_2|y[4]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|inst|reg_gen:3:regs|reg_2|y[4]~feeder_combout\ = \inst3|OUT16B[12]~25_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst3|OUT16B[12]~25_combout\,
	combout => \inst2|inst|reg_gen:3:regs|reg_2|y[4]~feeder_combout\);

-- Location: FF_X105_Y19_N7
\inst2|inst|reg_gen:3:regs|reg_2|y[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \SW17~input_o\,
	d => \inst2|inst|reg_gen:3:regs|reg_2|y[4]~feeder_combout\,
	ena => \inst2|inst|add_reg1_dcd|Mux3~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst2|inst|reg_gen:3:regs|reg_2|y\(4));

-- Location: LCCOMB_X105_Y19_N28
\inst2|inst|mux_1|mux_1|mux_generate:3:mux_i|Mux3~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|inst|mux_1|mux_1|mux_generate:3:mux_i|Mux3~7_combout\ = (\inst4|inst1|data_out[9]~14_combout\ & ((\inst4|inst1|exception~2_combout\ & (\inst2|inst|reg_gen:2:regs|reg_2|y\(4))) # (!\inst4|inst1|exception~2_combout\ & 
-- ((\inst2|inst|reg_gen:3:regs|reg_2|y\(4)))))) # (!\inst4|inst1|data_out[9]~14_combout\ & (((\inst2|inst|reg_gen:2:regs|reg_2|y\(4)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001011010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|inst1|data_out[9]~14_combout\,
	datab => \inst4|inst1|exception~2_combout\,
	datac => \inst2|inst|reg_gen:2:regs|reg_2|y\(4),
	datad => \inst2|inst|reg_gen:3:regs|reg_2|y\(4),
	combout => \inst2|inst|mux_1|mux_1|mux_generate:3:mux_i|Mux3~7_combout\);

-- Location: FF_X107_Y19_N3
\inst2|inst|reg_gen:5:regs|reg_2|y[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \SW17~input_o\,
	asdata => \inst3|OUT16B[12]~25_combout\,
	sload => VCC,
	ena => \inst2|inst|add_reg1_dcd|Mux3~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst2|inst|reg_gen:5:regs|reg_2|y\(4));

-- Location: FF_X108_Y19_N13
\inst2|inst|reg_gen:4:regs|reg_2|y[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \SW17~input_o\,
	asdata => \inst3|OUT16B[12]~25_combout\,
	sload => VCC,
	ena => \inst2|inst|add_reg1_dcd|Mux3~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst2|inst|reg_gen:4:regs|reg_2|y\(4));

-- Location: FF_X106_Y19_N3
\inst2|inst|reg_gen:1:regs|reg_2|y[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \SW17~input_o\,
	asdata => \inst3|OUT16B[12]~25_combout\,
	sload => VCC,
	ena => \inst2|inst|add_reg1_dcd|Mux3~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst2|inst|reg_gen:1:regs|reg_2|y\(4));

-- Location: LCCOMB_X107_Y19_N0
\inst2|inst|mux_1|mux_1|mux_generate:3:mux_i|Mux3~13\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|inst|mux_1|mux_1|mux_generate:3:mux_i|Mux3~13_combout\ = (!\inst4|inst1|exception~2_combout\ & (\inst2|inst|reg_gen:1:regs|reg_2|y\(4) & ((\inst4|inst|reg|reg_1|y\(5)) # (\inst4|inst1|data_out[9]~13_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100010001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|inst1|exception~2_combout\,
	datab => \inst2|inst|reg_gen:1:regs|reg_2|y\(4),
	datac => \inst4|inst|reg|reg_1|y\(5),
	datad => \inst4|inst1|data_out[9]~13_combout\,
	combout => \inst2|inst|mux_1|mux_1|mux_generate:3:mux_i|Mux3~13_combout\);

-- Location: FF_X107_Y19_N21
\inst2|inst|reg_gen:6:regs|reg_2|y[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \SW17~input_o\,
	asdata => \inst3|OUT16B[12]~25_combout\,
	sload => VCC,
	ena => \inst2|inst|add_reg1_dcd|Mux3~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst2|inst|reg_gen:6:regs|reg_2|y\(4));

-- Location: LCCOMB_X107_Y19_N20
\inst2|inst|mux_1|mux_1|mux_generate:3:mux_i|Mux3~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|inst|mux_1|mux_1|mux_generate:3:mux_i|Mux3~8_combout\ = (\inst2|inst|mux_1|mux_1|mux_generate:3:mux_i|Mux3~6_combout\ & (((\inst2|inst|reg_gen:6:regs|reg_2|y\(4) & \inst2|inst|mux_1|mux_1|mux_generate:3:mux_i|Mux3~5_combout\)))) # 
-- (!\inst2|inst|mux_1|mux_1|mux_generate:3:mux_i|Mux3~6_combout\ & ((\inst2|inst|mux_1|mux_1|mux_generate:3:mux_i|Mux3~13_combout\) # ((!\inst2|inst|mux_1|mux_1|mux_generate:3:mux_i|Mux3~5_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010001010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|inst|mux_1|mux_1|mux_generate:3:mux_i|Mux3~6_combout\,
	datab => \inst2|inst|mux_1|mux_1|mux_generate:3:mux_i|Mux3~13_combout\,
	datac => \inst2|inst|reg_gen:6:regs|reg_2|y\(4),
	datad => \inst2|inst|mux_1|mux_1|mux_generate:3:mux_i|Mux3~5_combout\,
	combout => \inst2|inst|mux_1|mux_1|mux_generate:3:mux_i|Mux3~8_combout\);

-- Location: LCCOMB_X108_Y19_N12
\inst2|inst|mux_1|mux_1|mux_generate:3:mux_i|Mux3~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|inst|mux_1|mux_1|mux_generate:3:mux_i|Mux3~9_combout\ = (\inst2|inst|mux_1|mux_1|mux_generate:3:mux_i|Mux3~4_combout\ & (((\inst2|inst|mux_1|mux_1|mux_generate:3:mux_i|Mux3~8_combout\)))) # 
-- (!\inst2|inst|mux_1|mux_1|mux_generate:3:mux_i|Mux3~4_combout\ & ((\inst2|inst|mux_1|mux_1|mux_generate:3:mux_i|Mux3~8_combout\ & ((\inst2|inst|reg_gen:4:regs|reg_2|y\(4)))) # (!\inst2|inst|mux_1|mux_1|mux_generate:3:mux_i|Mux3~8_combout\ & 
-- (\inst2|inst|reg_gen:5:regs|reg_2|y\(4)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|inst|reg_gen:5:regs|reg_2|y\(4),
	datab => \inst2|inst|mux_1|mux_1|mux_generate:3:mux_i|Mux3~4_combout\,
	datac => \inst2|inst|reg_gen:4:regs|reg_2|y\(4),
	datad => \inst2|inst|mux_1|mux_1|mux_generate:3:mux_i|Mux3~8_combout\,
	combout => \inst2|inst|mux_1|mux_1|mux_generate:3:mux_i|Mux3~9_combout\);

-- Location: LCCOMB_X109_Y19_N2
\inst2|inst|mux_1|mux_1|mux_generate:3:mux_i|Mux3~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|inst|mux_1|mux_1|mux_generate:3:mux_i|Mux3~10_combout\ = (\inst2|inst|mux_1|mux_1|mux_generate:3:mux_i|Mux3~12_combout\ & (\inst2|inst|mux_1|mux_1|mux_generate:3:mux_i|Mux3~7_combout\)) # 
-- (!\inst2|inst|mux_1|mux_1|mux_generate:3:mux_i|Mux3~12_combout\ & ((\inst2|inst|mux_1|mux_1|mux_generate:3:mux_i|Mux3~9_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|inst|mux_1|mux_1|mux_generate:3:mux_i|Mux3~7_combout\,
	datac => \inst2|inst|mux_1|mux_1|mux_generate:3:mux_i|Mux3~12_combout\,
	datad => \inst2|inst|mux_1|mux_1|mux_generate:3:mux_i|Mux3~9_combout\,
	combout => \inst2|inst|mux_1|mux_1|mux_generate:3:mux_i|Mux3~10_combout\);

-- Location: LCCOMB_X108_Y23_N12
\inst2|inst1|alu3|mux|Mux3~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|inst1|alu3|mux|Mux3~0_combout\ = (!\inst2|inst3|DOUT[1]~4_combout\ & ((\inst2|inst|mux_1|mux_1|mux_generate:3:mux_i|Mux3~10_combout\ & ((\inst2|inst2|OUT16B[12]~31_combout\) # (\inst2|inst3|DOUT[0]~2_combout\))) # 
-- (!\inst2|inst|mux_1|mux_1|mux_generate:3:mux_i|Mux3~10_combout\ & (\inst2|inst2|OUT16B[12]~31_combout\ & \inst2|inst3|DOUT[0]~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|inst|mux_1|mux_1|mux_generate:3:mux_i|Mux3~10_combout\,
	datab => \inst2|inst2|OUT16B[12]~31_combout\,
	datac => \inst2|inst3|DOUT[0]~2_combout\,
	datad => \inst2|inst3|DOUT[1]~4_combout\,
	combout => \inst2|inst1|alu3|mux|Mux3~0_combout\);

-- Location: LCCOMB_X109_Y21_N28
\inst2|inst1|alu2|adder|C4~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|inst1|alu2|adder|C4~0_combout\ = (\inst2|inst|mux_1|mux_1|mux_generate:2:mux_i|Mux0~5_combout\ & ((\inst2|inst1|alu2|adder|C[3]~2_combout\) # (\inst2|inst2|OUT16B[11]~32_combout\ $ (\inst2|inst3|DOUT[2]~3_combout\)))) # 
-- (!\inst2|inst|mux_1|mux_1|mux_generate:2:mux_i|Mux0~5_combout\ & (\inst2|inst1|alu2|adder|C[3]~2_combout\ & (\inst2|inst2|OUT16B[11]~32_combout\ $ (\inst2|inst3|DOUT[2]~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111011001100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|inst2|OUT16B[11]~32_combout\,
	datab => \inst2|inst3|DOUT[2]~3_combout\,
	datac => \inst2|inst|mux_1|mux_1|mux_generate:2:mux_i|Mux0~5_combout\,
	datad => \inst2|inst1|alu2|adder|C[3]~2_combout\,
	combout => \inst2|inst1|alu2|adder|C4~0_combout\);

-- Location: LCCOMB_X108_Y23_N6
\inst2|inst1|alu3|adder|S[0]\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|inst1|alu3|adder|S\(0) = \inst2|inst|mux_1|mux_1|mux_generate:3:mux_i|Mux3~10_combout\ $ (\inst2|inst2|OUT16B[12]~31_combout\ $ (\inst2|inst3|DOUT[2]~3_combout\ $ (\inst2|inst1|alu2|adder|C4~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|inst|mux_1|mux_1|mux_generate:3:mux_i|Mux3~10_combout\,
	datab => \inst2|inst2|OUT16B[12]~31_combout\,
	datac => \inst2|inst3|DOUT[2]~3_combout\,
	datad => \inst2|inst1|alu2|adder|C4~0_combout\,
	combout => \inst2|inst1|alu3|adder|S\(0));

-- Location: LCCOMB_X108_Y23_N28
\inst2|inst1|alu3|mux|Mux3~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|inst1|alu3|mux|Mux3~1_combout\ = (\inst2|inst1|alu3|mux|Mux3~0_combout\) # ((\inst2|inst1|alu0|mux|Mux1~4_combout\ & \inst2|inst1|alu3|adder|S\(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|inst1|alu3|mux|Mux3~0_combout\,
	datac => \inst2|inst1|alu0|mux|Mux1~4_combout\,
	datad => \inst2|inst1|alu3|adder|S\(0),
	combout => \inst2|inst1|alu3|mux|Mux3~1_combout\);

-- Location: LCCOMB_X114_Y14_N26
\inst1|reg_gen:19:regs|y[4]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|reg_gen:19:regs|y[4]~feeder_combout\ = \inst2|inst|mux_2|mux_1|mux_generate:3:mux_i|Mux3~4_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst2|inst|mux_2|mux_1|mux_generate:3:mux_i|Mux3~4_combout\,
	combout => \inst1|reg_gen:19:regs|y[4]~feeder_combout\);

-- Location: FF_X114_Y14_N27
\inst1|reg_gen:19:regs|y[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \SW17~input_o\,
	d => \inst1|reg_gen:19:regs|y[4]~feeder_combout\,
	ena => \inst1|dec_to_en\(19),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|reg_gen:19:regs|y\(4));

-- Location: FF_X111_Y14_N19
\inst1|reg_gen:7:regs|y[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \SW17~input_o\,
	asdata => \inst2|inst|mux_2|mux_1|mux_generate:3:mux_i|Mux3~4_combout\,
	sload => VCC,
	ena => \inst1|dec_to_en\(7),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|reg_gen:7:regs|y\(4));

-- Location: LCCOMB_X112_Y14_N2
\inst1|reg_gen:23:regs|y[4]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|reg_gen:23:regs|y[4]~feeder_combout\ = \inst2|inst|mux_2|mux_1|mux_generate:3:mux_i|Mux3~4_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst2|inst|mux_2|mux_1|mux_generate:3:mux_i|Mux3~4_combout\,
	combout => \inst1|reg_gen:23:regs|y[4]~feeder_combout\);

-- Location: FF_X112_Y14_N3
\inst1|reg_gen:23:regs|y[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \SW17~input_o\,
	d => \inst1|reg_gen:23:regs|y[4]~feeder_combout\,
	ena => \inst1|dec_to_en\(23),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|reg_gen:23:regs|y\(4));

-- Location: LCCOMB_X111_Y14_N18
\inst1|DOUT[12]~96\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|DOUT[12]~96_combout\ = (\inst2|inst1|alu1|mux|Mux3~1_combout\ & (\inst1|reg_gen:7:regs|y\(4))) # (!\inst2|inst1|alu1|mux|Mux3~1_combout\ & ((\inst1|reg_gen:23:regs|y\(4))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|inst1|alu1|mux|Mux3~1_combout\,
	datac => \inst1|reg_gen:7:regs|y\(4),
	datad => \inst1|reg_gen:23:regs|y\(4),
	combout => \inst1|DOUT[12]~96_combout\);

-- Location: LCCOMB_X111_Y14_N0
\inst1|DOUT[12]~97\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|DOUT[12]~97_combout\ = (\inst2|inst1|alu0|mux|Mux2~1_combout\ & (((\inst2|inst1|alu0|mux|Mux1~3_combout\)))) # (!\inst2|inst1|alu0|mux|Mux2~1_combout\ & ((\inst2|inst1|alu0|mux|Mux1~3_combout\ & ((\inst1|DOUT[12]~96_combout\))) # 
-- (!\inst2|inst1|alu0|mux|Mux1~3_combout\ & (\inst1|reg_gen:19:regs|y\(4)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010010100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|inst1|alu0|mux|Mux2~1_combout\,
	datab => \inst1|reg_gen:19:regs|y\(4),
	datac => \inst2|inst1|alu0|mux|Mux1~3_combout\,
	datad => \inst1|DOUT[12]~96_combout\,
	combout => \inst1|DOUT[12]~97_combout\);

-- Location: LCCOMB_X114_Y15_N6
\inst1|reg_gen:21:regs|y[4]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|reg_gen:21:regs|y[4]~feeder_combout\ = \inst2|inst|mux_2|mux_1|mux_generate:3:mux_i|Mux3~4_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst2|inst|mux_2|mux_1|mux_generate:3:mux_i|Mux3~4_combout\,
	combout => \inst1|reg_gen:21:regs|y[4]~feeder_combout\);

-- Location: FF_X114_Y15_N7
\inst1|reg_gen:21:regs|y[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \SW17~input_o\,
	d => \inst1|reg_gen:21:regs|y[4]~feeder_combout\,
	ena => \inst1|dec_to_en\(21),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|reg_gen:21:regs|y\(4));

-- Location: FF_X114_Y14_N21
\inst1|reg_gen:17:regs|y[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \SW17~input_o\,
	asdata => \inst2|inst|mux_2|mux_1|mux_generate:3:mux_i|Mux3~4_combout\,
	sload => VCC,
	ena => \inst1|dec_to_en\(17),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|reg_gen:17:regs|y\(4));

-- Location: LCCOMB_X110_Y16_N28
\inst1|DOUT[12]~98\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|DOUT[12]~98_combout\ = (\inst1|DOUT[12]~97_combout\ & ((\inst1|reg_gen:21:regs|y\(4)) # ((!\inst2|inst1|alu0|mux|Mux2~1_combout\)))) # (!\inst1|DOUT[12]~97_combout\ & (((\inst1|reg_gen:17:regs|y\(4) & \inst2|inst1|alu0|mux|Mux2~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|DOUT[12]~97_combout\,
	datab => \inst1|reg_gen:21:regs|y\(4),
	datac => \inst1|reg_gen:17:regs|y\(4),
	datad => \inst2|inst1|alu0|mux|Mux2~1_combout\,
	combout => \inst1|DOUT[12]~98_combout\);

-- Location: LCCOMB_X106_Y19_N10
\inst1|DOUT[12]~99\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|DOUT[12]~99_combout\ = (!\inst2|inst1|alu0|mux|Mux0~3_combout\ & (\inst1|DOUT[13]~21_combout\ & (\inst1|DOUT[12]~98_combout\ & !\inst1|DOUT[13]~23_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|inst1|alu0|mux|Mux0~3_combout\,
	datab => \inst1|DOUT[13]~21_combout\,
	datac => \inst1|DOUT[12]~98_combout\,
	datad => \inst1|DOUT[13]~23_combout\,
	combout => \inst1|DOUT[12]~99_combout\);

-- Location: LCCOMB_X114_Y17_N24
\inst1|reg_gen:18:regs|y[4]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|reg_gen:18:regs|y[4]~feeder_combout\ = \inst2|inst|mux_2|mux_1|mux_generate:1:mux_i|Mux3~4_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst2|inst|mux_2|mux_1|mux_generate:1:mux_i|Mux3~4_combout\,
	combout => \inst1|reg_gen:18:regs|y[4]~feeder_combout\);

-- Location: FF_X114_Y17_N25
\inst1|reg_gen:18:regs|y[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \SW17~input_o\,
	d => \inst1|reg_gen:18:regs|y[4]~feeder_combout\,
	ena => \inst1|dec_to_en\(18),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|reg_gen:18:regs|y\(4));

-- Location: LCCOMB_X113_Y18_N28
\inst1|DOUT[4]~224\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|DOUT[4]~224_combout\ = (\inst2|inst1|alu0|mux|Mux1~3_combout\ & (((\inst1|DOUT[12]~102_combout\) # (\inst2|inst1|alu0|mux|Mux2~1_combout\)))) # (!\inst2|inst1|alu0|mux|Mux1~3_combout\ & (\inst1|reg_gen:18:regs|y\(4) & 
-- ((!\inst2|inst1|alu0|mux|Mux2~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|reg_gen:18:regs|y\(4),
	datab => \inst2|inst1|alu0|mux|Mux1~3_combout\,
	datac => \inst1|DOUT[12]~102_combout\,
	datad => \inst2|inst1|alu0|mux|Mux2~1_combout\,
	combout => \inst1|DOUT[4]~224_combout\);

-- Location: FF_X111_Y18_N19
\inst1|reg_gen:16:regs|y[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \SW17~input_o\,
	asdata => \inst2|inst|mux_2|mux_1|mux_generate:1:mux_i|Mux3~4_combout\,
	sload => VCC,
	ena => \inst1|dec_to_en[16]~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|reg_gen:16:regs|y\(4));

-- Location: FF_X114_Y18_N7
\inst1|reg_gen:20:regs|y[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \SW17~input_o\,
	asdata => \inst2|inst|mux_2|mux_1|mux_generate:1:mux_i|Mux3~4_combout\,
	sload => VCC,
	ena => \inst1|dec_to_en\(20),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|reg_gen:20:regs|y\(4));

-- Location: LCCOMB_X111_Y20_N22
\inst1|DOUT[4]~225\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|DOUT[4]~225_combout\ = (\inst1|DOUT[4]~224_combout\ & (((\inst1|reg_gen:20:regs|y\(4)) # (!\inst2|inst1|alu0|mux|Mux2~1_combout\)))) # (!\inst1|DOUT[4]~224_combout\ & (\inst1|reg_gen:16:regs|y\(4) & ((\inst2|inst1|alu0|mux|Mux2~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|DOUT[4]~224_combout\,
	datab => \inst1|reg_gen:16:regs|y\(4),
	datac => \inst1|reg_gen:20:regs|y\(4),
	datad => \inst2|inst1|alu0|mux|Mux2~1_combout\,
	combout => \inst1|DOUT[4]~225_combout\);

-- Location: FF_X111_Y20_N27
\inst1|reg_gen:30:regs|y[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \SW17~input_o\,
	asdata => \inst2|inst|mux_2|mux_1|mux_generate:1:mux_i|Mux3~4_combout\,
	sload => VCC,
	ena => \inst1|dec_to_en\(30),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|reg_gen:30:regs|y\(4));

-- Location: LCCOMB_X111_Y20_N26
\inst1|DOUT[4]~226\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|DOUT[4]~226_combout\ = (\inst1|DOUT[4]~225_combout\ & ((\inst1|DOUT[7]~197_combout\) # ((\inst1|reg_gen:30:regs|y\(4) & \inst1|DOUT[5]~198_combout\)))) # (!\inst1|DOUT[4]~225_combout\ & (((\inst1|reg_gen:30:regs|y\(4) & 
-- \inst1|DOUT[5]~198_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|DOUT[4]~225_combout\,
	datab => \inst1|DOUT[7]~197_combout\,
	datac => \inst1|reg_gen:30:regs|y\(4),
	datad => \inst1|DOUT[5]~198_combout\,
	combout => \inst1|DOUT[4]~226_combout\);

-- Location: LCCOMB_X112_Y18_N18
\inst1|reg_gen:8:regs|y[4]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|reg_gen:8:regs|y[4]~feeder_combout\ = \inst2|inst|mux_2|mux_1|mux_generate:1:mux_i|Mux3~4_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst2|inst|mux_2|mux_1|mux_generate:1:mux_i|Mux3~4_combout\,
	combout => \inst1|reg_gen:8:regs|y[4]~feeder_combout\);

-- Location: FF_X112_Y18_N19
\inst1|reg_gen:8:regs|y[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \SW17~input_o\,
	d => \inst1|reg_gen:8:regs|y[4]~feeder_combout\,
	ena => \inst1|dec_to_en[8]~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|reg_gen:8:regs|y\(4));

-- Location: FF_X112_Y18_N1
\inst1|reg_gen:24:regs|y[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \SW17~input_o\,
	asdata => \inst2|inst|mux_2|mux_1|mux_generate:1:mux_i|Mux3~4_combout\,
	sload => VCC,
	ena => \inst1|dec_to_en[24]~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|reg_gen:24:regs|y\(4));

-- Location: LCCOMB_X112_Y18_N0
\inst1|DOUT[12]~100\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|DOUT[12]~100_combout\ = (\inst2|inst1|alu1|mux|Mux3~1_combout\ & (\inst1|reg_gen:8:regs|y\(4))) # (!\inst2|inst1|alu1|mux|Mux3~1_combout\ & ((\inst1|reg_gen:24:regs|y\(4))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst1|reg_gen:8:regs|y\(4),
	datac => \inst1|reg_gen:24:regs|y\(4),
	datad => \inst2|inst1|alu1|mux|Mux3~1_combout\,
	combout => \inst1|DOUT[12]~100_combout\);

-- Location: LCCOMB_X114_Y17_N26
\inst1|reg_gen:28:regs|y[4]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|reg_gen:28:regs|y[4]~feeder_combout\ = \inst2|inst|mux_2|mux_1|mux_generate:1:mux_i|Mux3~4_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst2|inst|mux_2|mux_1|mux_generate:1:mux_i|Mux3~4_combout\,
	combout => \inst1|reg_gen:28:regs|y[4]~feeder_combout\);

-- Location: FF_X114_Y17_N27
\inst1|reg_gen:28:regs|y[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \SW17~input_o\,
	d => \inst1|reg_gen:28:regs|y[4]~feeder_combout\,
	ena => \inst1|dec_to_en\(28),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|reg_gen:28:regs|y\(4));

-- Location: FF_X112_Y15_N21
\inst1|reg_gen:12:regs|y[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \SW17~input_o\,
	asdata => \inst2|inst|mux_2|mux_1|mux_generate:1:mux_i|Mux3~4_combout\,
	sload => VCC,
	ena => \inst1|dec_to_en\(12),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|reg_gen:12:regs|y\(4));

-- Location: LCCOMB_X112_Y19_N24
\inst1|DOUT[12]~104\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|DOUT[12]~104_combout\ = (\inst2|inst1|alu1|mux|Mux3~1_combout\ & ((\inst1|reg_gen:12:regs|y\(4)))) # (!\inst2|inst1|alu1|mux|Mux3~1_combout\ & (\inst1|reg_gen:28:regs|y\(4)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|reg_gen:28:regs|y\(4),
	datab => \inst1|reg_gen:12:regs|y\(4),
	datad => \inst2|inst1|alu1|mux|Mux3~1_combout\,
	combout => \inst1|DOUT[12]~104_combout\);

-- Location: LCCOMB_X111_Y17_N12
\inst1|DOUT[5]~22\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|DOUT[5]~22_combout\ = (\inst1|DOUT[13]~21_combout\ & \inst2|inst1|alu0|mux|Mux2~1_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst1|DOUT[13]~21_combout\,
	datad => \inst2|inst1|alu0|mux|Mux2~1_combout\,
	combout => \inst1|DOUT[5]~22_combout\);

-- Location: LCCOMB_X111_Y17_N10
\inst1|DOUT[5]~201\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|DOUT[5]~201_combout\ = (\inst1|DOUT[13]~21_combout\ & ((\inst2|inst1|alu0|mux|Mux1~3_combout\) # (!\inst2|inst1|alu0|mux|Mux2~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst2|inst1|alu0|mux|Mux2~1_combout\,
	datac => \inst1|DOUT[13]~21_combout\,
	datad => \inst2|inst1|alu0|mux|Mux1~3_combout\,
	combout => \inst1|DOUT[5]~201_combout\);

-- Location: LCCOMB_X114_Y19_N24
\inst1|reg_gen:9:regs|y[4]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|reg_gen:9:regs|y[4]~feeder_combout\ = \inst2|inst|mux_2|mux_1|mux_generate:3:mux_i|Mux3~4_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst2|inst|mux_2|mux_1|mux_generate:3:mux_i|Mux3~4_combout\,
	combout => \inst1|reg_gen:9:regs|y[4]~feeder_combout\);

-- Location: FF_X114_Y19_N25
\inst1|reg_gen:9:regs|y[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \SW17~input_o\,
	d => \inst1|reg_gen:9:regs|y[4]~feeder_combout\,
	ena => \inst1|dec_to_en\(9),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|reg_gen:9:regs|y\(4));

-- Location: LCCOMB_X112_Y15_N22
\inst1|reg_gen:13:regs|y[4]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|reg_gen:13:regs|y[4]~feeder_combout\ = \inst2|inst|mux_2|mux_1|mux_generate:3:mux_i|Mux3~4_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst2|inst|mux_2|mux_1|mux_generate:3:mux_i|Mux3~4_combout\,
	combout => \inst1|reg_gen:13:regs|y[4]~feeder_combout\);

-- Location: FF_X112_Y15_N23
\inst1|reg_gen:13:regs|y[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \SW17~input_o\,
	d => \inst1|reg_gen:13:regs|y[4]~feeder_combout\,
	ena => \inst1|dec_to_en\(13),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|reg_gen:13:regs|y\(4));

-- Location: FF_X114_Y16_N15
\inst1|reg_gen:25:regs|y[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \SW17~input_o\,
	asdata => \inst2|inst|mux_2|mux_1|mux_generate:3:mux_i|Mux3~4_combout\,
	sload => VCC,
	ena => \inst1|dec_to_en\(25),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|reg_gen:25:regs|y\(4));

-- Location: LCCOMB_X113_Y17_N14
\inst1|reg_gen:29:regs|y[4]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|reg_gen:29:regs|y[4]~feeder_combout\ = \inst2|inst|mux_2|mux_1|mux_generate:3:mux_i|Mux3~4_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst2|inst|mux_2|mux_1|mux_generate:3:mux_i|Mux3~4_combout\,
	combout => \inst1|reg_gen:29:regs|y[4]~feeder_combout\);

-- Location: FF_X113_Y17_N15
\inst1|reg_gen:29:regs|y[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \SW17~input_o\,
	d => \inst1|reg_gen:29:regs|y[4]~feeder_combout\,
	ena => \inst1|dec_to_en\(29),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|reg_gen:29:regs|y\(4));

-- Location: LCCOMB_X111_Y19_N0
\inst1|DOUT[12]~110\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|DOUT[12]~110_combout\ = (\inst2|inst1|alu0|mux|Mux1~3_combout\ & (((\inst1|reg_gen:29:regs|y\(4)) # (\inst2|inst1|alu1|mux|Mux3~1_combout\)))) # (!\inst2|inst1|alu0|mux|Mux1~3_combout\ & (\inst1|reg_gen:25:regs|y\(4) & 
-- ((!\inst2|inst1|alu1|mux|Mux3~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|reg_gen:25:regs|y\(4),
	datab => \inst1|reg_gen:29:regs|y\(4),
	datac => \inst2|inst1|alu0|mux|Mux1~3_combout\,
	datad => \inst2|inst1|alu1|mux|Mux3~1_combout\,
	combout => \inst1|DOUT[12]~110_combout\);

-- Location: LCCOMB_X111_Y19_N22
\inst1|DOUT[12]~111\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|DOUT[12]~111_combout\ = (\inst2|inst1|alu1|mux|Mux3~1_combout\ & ((\inst1|DOUT[12]~110_combout\ & ((\inst1|reg_gen:13:regs|y\(4)))) # (!\inst1|DOUT[12]~110_combout\ & (\inst1|reg_gen:9:regs|y\(4))))) # (!\inst2|inst1|alu1|mux|Mux3~1_combout\ & 
-- (((\inst1|DOUT[12]~110_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|reg_gen:9:regs|y\(4),
	datab => \inst1|reg_gen:13:regs|y\(4),
	datac => \inst2|inst1|alu1|mux|Mux3~1_combout\,
	datad => \inst1|DOUT[12]~110_combout\,
	combout => \inst1|DOUT[12]~111_combout\);

-- Location: FF_X111_Y20_N29
\inst1|reg_gen:26:regs|y[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \SW17~input_o\,
	asdata => \inst2|inst|mux_2|mux_1|mux_generate:1:mux_i|Mux3~4_combout\,
	sload => VCC,
	ena => \inst1|dec_to_en\(26),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|reg_gen:26:regs|y\(4));

-- Location: LCCOMB_X111_Y20_N28
\inst1|DOUT[12]~106\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|DOUT[12]~106_combout\ = (\inst2|inst1|alu0|mux|Mux1~3_combout\ & ((\inst1|reg_gen:30:regs|y\(4)) # ((\inst2|inst1|alu1|mux|Mux3~1_combout\)))) # (!\inst2|inst1|alu0|mux|Mux1~3_combout\ & (((\inst1|reg_gen:26:regs|y\(4) & 
-- !\inst2|inst1|alu1|mux|Mux3~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|reg_gen:30:regs|y\(4),
	datab => \inst2|inst1|alu0|mux|Mux1~3_combout\,
	datac => \inst1|reg_gen:26:regs|y\(4),
	datad => \inst2|inst1|alu1|mux|Mux3~1_combout\,
	combout => \inst1|DOUT[12]~106_combout\);

-- Location: FF_X107_Y21_N9
\inst1|reg_gen:14:regs|y[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \SW17~input_o\,
	d => \inst2|inst|mux_2|mux_1|mux_generate:1:mux_i|Mux3~4_combout\,
	ena => \inst1|dec_to_en\(14),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|reg_gen:14:regs|y\(4));

-- Location: FF_X111_Y19_N25
\inst1|reg_gen:10:regs|y[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \SW17~input_o\,
	asdata => \inst2|inst|mux_2|mux_1|mux_generate:1:mux_i|Mux3~4_combout\,
	sload => VCC,
	ena => \inst1|dec_to_en\(10),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|reg_gen:10:regs|y\(4));

-- Location: LCCOMB_X111_Y19_N24
\inst1|DOUT[12]~107\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|DOUT[12]~107_combout\ = (\inst1|DOUT[12]~106_combout\ & ((\inst1|reg_gen:14:regs|y\(4)) # ((!\inst2|inst1|alu1|mux|Mux3~1_combout\)))) # (!\inst1|DOUT[12]~106_combout\ & (((\inst1|reg_gen:10:regs|y\(4) & \inst2|inst1|alu1|mux|Mux3~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|DOUT[12]~106_combout\,
	datab => \inst1|reg_gen:14:regs|y\(4),
	datac => \inst1|reg_gen:10:regs|y\(4),
	datad => \inst2|inst1|alu1|mux|Mux3~1_combout\,
	combout => \inst1|DOUT[12]~107_combout\);

-- Location: LCCOMB_X111_Y19_N28
\inst1|DOUT[4]~228\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|DOUT[4]~228_combout\ = (\inst1|DOUT[5]~201_combout\ & ((\inst1|DOUT[5]~22_combout\) # ((\inst1|DOUT[12]~107_combout\)))) # (!\inst1|DOUT[5]~201_combout\ & (!\inst1|DOUT[5]~22_combout\ & (\inst1|DOUT[12]~111_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|DOUT[5]~201_combout\,
	datab => \inst1|DOUT[5]~22_combout\,
	datac => \inst1|DOUT[12]~111_combout\,
	datad => \inst1|DOUT[12]~107_combout\,
	combout => \inst1|DOUT[4]~228_combout\);

-- Location: LCCOMB_X111_Y19_N26
\inst1|DOUT[4]~229\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|DOUT[4]~229_combout\ = (\inst1|DOUT[5]~22_combout\ & ((\inst1|DOUT[4]~228_combout\ & ((\inst1|DOUT[12]~104_combout\))) # (!\inst1|DOUT[4]~228_combout\ & (\inst1|DOUT[12]~100_combout\)))) # (!\inst1|DOUT[5]~22_combout\ & 
-- (((\inst1|DOUT[4]~228_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|DOUT[12]~100_combout\,
	datab => \inst1|DOUT[12]~104_combout\,
	datac => \inst1|DOUT[5]~22_combout\,
	datad => \inst1|DOUT[4]~228_combout\,
	combout => \inst1|DOUT[4]~229_combout\);

-- Location: FF_X112_Y17_N29
\inst1|reg_gen:11:regs|y[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \SW17~input_o\,
	asdata => \inst2|inst|mux_2|mux_1|mux_generate:3:mux_i|Mux3~4_combout\,
	sload => VCC,
	ena => \inst1|dec_to_en\(11),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|reg_gen:11:regs|y\(4));

-- Location: FF_X112_Y17_N3
\inst1|reg_gen:27:regs|y[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \SW17~input_o\,
	asdata => \inst2|inst|mux_2|mux_1|mux_generate:3:mux_i|Mux3~4_combout\,
	sload => VCC,
	ena => \inst1|dec_to_en\(27),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|reg_gen:27:regs|y\(4));

-- Location: LCCOMB_X112_Y17_N2
\inst1|DOUT[12]~108\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|DOUT[12]~108_combout\ = (\inst2|inst1|alu1|mux|Mux3~1_combout\ & (\inst1|reg_gen:11:regs|y\(4))) # (!\inst2|inst1|alu1|mux|Mux3~1_combout\ & ((\inst1|reg_gen:27:regs|y\(4))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst1|reg_gen:11:regs|y\(4),
	datac => \inst1|reg_gen:27:regs|y\(4),
	datad => \inst2|inst1|alu1|mux|Mux3~1_combout\,
	combout => \inst1|DOUT[12]~108_combout\);

-- Location: LCCOMB_X114_Y19_N26
\inst1|reg_gen:15:regs|y[4]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|reg_gen:15:regs|y[4]~feeder_combout\ = \inst2|inst|mux_2|mux_1|mux_generate:3:mux_i|Mux3~4_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst2|inst|mux_2|mux_1|mux_generate:3:mux_i|Mux3~4_combout\,
	combout => \inst1|reg_gen:15:regs|y[4]~feeder_combout\);

-- Location: FF_X114_Y19_N27
\inst1|reg_gen:15:regs|y[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \SW17~input_o\,
	d => \inst1|reg_gen:15:regs|y[4]~feeder_combout\,
	ena => \inst1|dec_to_en\(15),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|reg_gen:15:regs|y\(4));

-- Location: LCCOMB_X106_Y20_N20
\inst1|DOUT[4]~227\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|DOUT[4]~227_combout\ = (\inst1|DOUT[13]~29_combout\ & (((\inst1|reg_gen:15:regs|y\(4)) # (\inst1|DOUT[13]~34_combout\)))) # (!\inst1|DOUT[13]~29_combout\ & (\inst1|DOUT[12]~108_combout\ & ((!\inst1|DOUT[13]~34_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|DOUT[12]~108_combout\,
	datab => \inst1|DOUT[13]~29_combout\,
	datac => \inst1|reg_gen:15:regs|y\(4),
	datad => \inst1|DOUT[13]~34_combout\,
	combout => \inst1|DOUT[4]~227_combout\);

-- Location: LCCOMB_X106_Y20_N16
\inst1|DOUT[4]~230\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|DOUT[4]~230_combout\ = (\inst1|DOUT[13]~34_combout\ & ((\inst1|DOUT[4]~227_combout\ & (\inst1|DOUT[4]~229_combout\)) # (!\inst1|DOUT[4]~227_combout\ & ((\inst1|DOUT[12]~98_combout\))))) # (!\inst1|DOUT[13]~34_combout\ & 
-- (((\inst1|DOUT[4]~227_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|DOUT[13]~34_combout\,
	datab => \inst1|DOUT[4]~229_combout\,
	datac => \inst1|DOUT[12]~98_combout\,
	datad => \inst1|DOUT[4]~227_combout\,
	combout => \inst1|DOUT[4]~230_combout\);

-- Location: LCCOMB_X106_Y20_N8
\inst1|DOUT[4]~231\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|DOUT[4]~231_combout\ = (\inst1|DOUT[4]~226_combout\) # ((\inst1|DOUT[7]~205_combout\ & \inst1|DOUT[4]~230_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst1|DOUT[7]~205_combout\,
	datac => \inst1|DOUT[4]~226_combout\,
	datad => \inst1|DOUT[4]~230_combout\,
	combout => \inst1|DOUT[4]~231_combout\);

-- Location: LCCOMB_X106_Y20_N26
\inst1|DOUT[4]$latch~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|DOUT[4]$latch~0_combout\ = (GLOBAL(\inst1|DOUT[15]~51clkctrl_outclk\) & (\inst1|DOUT[4]~231_combout\)) # (!GLOBAL(\inst1|DOUT[15]~51clkctrl_outclk\) & ((\inst1|DOUT[4]$latch~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|DOUT[15]~51clkctrl_outclk\,
	datab => \inst1|DOUT[4]~231_combout\,
	datad => \inst1|DOUT[4]$latch~combout\,
	combout => \inst1|DOUT[4]$latch~0_combout\);

-- Location: LCCOMB_X106_Y20_N0
\inst1|DOUT[7]~207\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|DOUT[7]~207_combout\ = (\inst|Mux3~7_combout\ & ((\inst2|inst1|alu0|mux|Mux2~1_combout\) # (!\inst2|inst1|alu0|mux|Mux1~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|inst1|alu0|mux|Mux2~1_combout\,
	datac => \inst|Mux3~7_combout\,
	datad => \inst2|inst1|alu0|mux|Mux1~3_combout\,
	combout => \inst1|DOUT[7]~207_combout\);

-- Location: LCCOMB_X106_Y20_N22
\inst1|comb~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|comb~2_combout\ = (\inst|Mux3~7_combout\ & (!\inst1|dcd|dcd_3|dcd|Mux7~6_combout\ & ((\inst1|DOUT[7]~207_combout\) # (!\inst|Mux5~0_combout\)))) # (!\inst|Mux3~7_combout\ & ((\inst1|DOUT[7]~207_combout\) # ((!\inst|Mux5~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100110001011111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Mux3~7_combout\,
	datab => \inst1|DOUT[7]~207_combout\,
	datac => \inst1|dcd|dcd_3|dcd|Mux7~6_combout\,
	datad => \inst|Mux5~0_combout\,
	combout => \inst1|comb~2_combout\);

-- Location: LCCOMB_X106_Y20_N2
\inst1|dcd|dcd_0|D[4]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|dcd|dcd_0|D[4]~2_combout\ = (\inst2|inst1|alu1|mux|Mux3~1_combout\ & (\inst1|dcd|dcd_3|dcd|Mux7~6_combout\ & !\inst2|inst1|alu0|mux|Mux0~3_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|inst1|alu1|mux|Mux3~1_combout\,
	datab => \inst1|dcd|dcd_3|dcd|Mux7~6_combout\,
	datad => \inst2|inst1|alu0|mux|Mux0~3_combout\,
	combout => \inst1|dcd|dcd_0|D[4]~2_combout\);

-- Location: LCCOMB_X106_Y20_N28
\inst1|DOUT[4]$latch\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|DOUT[4]$latch~combout\ = (!\inst1|comb~2_combout\ & ((\inst1|DOUT[4]$latch~0_combout\) # (\inst1|dcd|dcd_0|D[4]~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|DOUT[4]$latch~0_combout\,
	datac => \inst1|comb~2_combout\,
	datad => \inst1|dcd|dcd_0|D[4]~2_combout\,
	combout => \inst1|DOUT[4]$latch~combout\);

-- Location: LCCOMB_X106_Y20_N24
\inst3|OUT16B[4]~33\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|OUT16B[4]~33_combout\ = (\inst|Mux5~0_combout\ & (((\inst1|DOUT[4]$latch~combout\)) # (!\inst1|DOUT[7]_2052~combout\))) # (!\inst|Mux5~0_combout\ & (((!\inst2|inst1|alu1|mux|Mux3~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111101000111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|DOUT[7]_2052~combout\,
	datab => \inst|Mux5~0_combout\,
	datac => \inst2|inst1|alu1|mux|Mux3~1_combout\,
	datad => \inst1|DOUT[4]$latch~combout\,
	combout => \inst3|OUT16B[4]~33_combout\);

-- Location: FF_X107_Y22_N5
\inst2|inst|reg_gen:3:regs|reg_1|y[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \SW17~input_o\,
	asdata => \inst3|OUT16B[4]~33_combout\,
	sload => VCC,
	ena => \inst2|inst|add_reg1_dcd|Mux3~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst2|inst|reg_gen:3:regs|reg_1|y\(4));

-- Location: FF_X106_Y22_N9
\inst2|inst|reg_gen:2:regs|reg_1|y[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \SW17~input_o\,
	asdata => \inst3|OUT16B[4]~33_combout\,
	sload => VCC,
	ena => \inst2|inst|add_reg1_dcd|Mux3~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst2|inst|reg_gen:2:regs|reg_1|y\(4));

-- Location: LCCOMB_X106_Y22_N28
\inst2|inst|mux_2|mux_1|mux_generate:1:mux_i|Mux3~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|inst|mux_2|mux_1|mux_generate:1:mux_i|Mux3~0_combout\ = (\inst4|inst1|exception~2_combout\ & (((\inst2|inst|reg_gen:2:regs|reg_1|y\(4))))) # (!\inst4|inst1|exception~2_combout\ & ((\inst4|inst1|data_out[6]~17_combout\ & 
-- (\inst2|inst|reg_gen:3:regs|reg_1|y\(4))) # (!\inst4|inst1|data_out[6]~17_combout\ & ((\inst2|inst|reg_gen:2:regs|reg_1|y\(4))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110001011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|inst|reg_gen:3:regs|reg_1|y\(4),
	datab => \inst4|inst1|exception~2_combout\,
	datac => \inst2|inst|reg_gen:2:regs|reg_1|y\(4),
	datad => \inst4|inst1|data_out[6]~17_combout\,
	combout => \inst2|inst|mux_2|mux_1|mux_generate:1:mux_i|Mux3~0_combout\);

-- Location: FF_X108_Y20_N3
\inst2|inst|reg_gen:5:regs|reg_1|y[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \SW17~input_o\,
	asdata => \inst3|OUT16B[4]~33_combout\,
	sload => VCC,
	ena => \inst2|inst|add_reg1_dcd|Mux3~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst2|inst|reg_gen:5:regs|reg_1|y\(4));

-- Location: FF_X108_Y20_N13
\inst2|inst|reg_gen:4:regs|reg_1|y[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \SW17~input_o\,
	asdata => \inst3|OUT16B[4]~33_combout\,
	sload => VCC,
	ena => \inst2|inst|add_reg1_dcd|Mux3~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst2|inst|reg_gen:4:regs|reg_1|y\(4));

-- Location: FF_X106_Y20_N3
\inst2|inst|reg_gen:6:regs|reg_1|y[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \SW17~input_o\,
	asdata => \inst3|OUT16B[4]~33_combout\,
	sload => VCC,
	ena => \inst2|inst|add_reg1_dcd|Mux3~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst2|inst|reg_gen:6:regs|reg_1|y\(4));

-- Location: FF_X106_Y20_N27
\inst2|inst|reg_gen:1:regs|reg_1|y[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \SW17~input_o\,
	asdata => \inst3|OUT16B[4]~33_combout\,
	sload => VCC,
	ena => \inst2|inst|add_reg1_dcd|Mux3~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst2|inst|reg_gen:1:regs|reg_1|y\(4));

-- Location: LCCOMB_X106_Y20_N14
\inst2|inst|mux_2|mux_1|mux_generate:1:mux_i|Mux3~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|inst|mux_2|mux_1|mux_generate:1:mux_i|Mux3~1_combout\ = (\inst2|inst|reg_gen:1:regs|reg_1|y\(4) & (\inst4|inst1|data_out[6]~17_combout\ & !\inst4|inst1|exception~2_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|inst|reg_gen:1:regs|reg_1|y\(4),
	datac => \inst4|inst1|data_out[6]~17_combout\,
	datad => \inst4|inst1|exception~2_combout\,
	combout => \inst2|inst|mux_2|mux_1|mux_generate:1:mux_i|Mux3~1_combout\);

-- Location: LCCOMB_X106_Y20_N10
\inst2|inst|mux_2|mux_1|mux_generate:1:mux_i|Mux3~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|inst|mux_2|mux_1|mux_generate:1:mux_i|Mux3~2_combout\ = (\inst2|inst|mux_2|mux_1|mux_generate:0:mux_i|Mux2~3_combout\ & ((\inst2|inst|mux_2|mux_1|mux_generate:0:mux_i|Mux2~4_combout\ & (\inst2|inst|reg_gen:6:regs|reg_1|y\(4))) # 
-- (!\inst2|inst|mux_2|mux_1|mux_generate:0:mux_i|Mux2~4_combout\ & ((\inst2|inst|mux_2|mux_1|mux_generate:1:mux_i|Mux3~1_combout\))))) # (!\inst2|inst|mux_2|mux_1|mux_generate:0:mux_i|Mux2~3_combout\ & 
-- (((!\inst2|inst|mux_2|mux_1|mux_generate:0:mux_i|Mux2~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000011001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|inst|reg_gen:6:regs|reg_1|y\(4),
	datab => \inst2|inst|mux_2|mux_1|mux_generate:1:mux_i|Mux3~1_combout\,
	datac => \inst2|inst|mux_2|mux_1|mux_generate:0:mux_i|Mux2~3_combout\,
	datad => \inst2|inst|mux_2|mux_1|mux_generate:0:mux_i|Mux2~4_combout\,
	combout => \inst2|inst|mux_2|mux_1|mux_generate:1:mux_i|Mux3~2_combout\);

-- Location: LCCOMB_X108_Y20_N12
\inst2|inst|mux_2|mux_1|mux_generate:1:mux_i|Mux3~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|inst|mux_2|mux_1|mux_generate:1:mux_i|Mux3~3_combout\ = (\inst2|inst|mux_2|mux_1|mux_generate:0:mux_i|Mux2~1_combout\ & (((\inst2|inst|mux_2|mux_1|mux_generate:1:mux_i|Mux3~2_combout\)))) # 
-- (!\inst2|inst|mux_2|mux_1|mux_generate:0:mux_i|Mux2~1_combout\ & ((\inst2|inst|mux_2|mux_1|mux_generate:1:mux_i|Mux3~2_combout\ & ((\inst2|inst|reg_gen:4:regs|reg_1|y\(4)))) # (!\inst2|inst|mux_2|mux_1|mux_generate:1:mux_i|Mux3~2_combout\ & 
-- (\inst2|inst|reg_gen:5:regs|reg_1|y\(4)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|inst|mux_2|mux_1|mux_generate:0:mux_i|Mux2~1_combout\,
	datab => \inst2|inst|reg_gen:5:regs|reg_1|y\(4),
	datac => \inst2|inst|reg_gen:4:regs|reg_1|y\(4),
	datad => \inst2|inst|mux_2|mux_1|mux_generate:1:mux_i|Mux3~2_combout\,
	combout => \inst2|inst|mux_2|mux_1|mux_generate:1:mux_i|Mux3~3_combout\);

-- Location: LCCOMB_X107_Y21_N8
\inst2|inst|mux_2|mux_1|mux_generate:1:mux_i|Mux3~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|inst|mux_2|mux_1|mux_generate:1:mux_i|Mux3~4_combout\ = (\inst2|inst|mux_2|mux_1|mux_generate:0:mux_i|Mux2~7_combout\ & (\inst2|inst|mux_2|mux_1|mux_generate:1:mux_i|Mux3~0_combout\)) # (!\inst2|inst|mux_2|mux_1|mux_generate:0:mux_i|Mux2~7_combout\ 
-- & ((\inst2|inst|mux_2|mux_1|mux_generate:1:mux_i|Mux3~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|inst|mux_2|mux_1|mux_generate:1:mux_i|Mux3~0_combout\,
	datab => \inst2|inst|mux_2|mux_1|mux_generate:0:mux_i|Mux2~7_combout\,
	datad => \inst2|inst|mux_2|mux_1|mux_generate:1:mux_i|Mux3~3_combout\,
	combout => \inst2|inst|mux_2|mux_1|mux_generate:1:mux_i|Mux3~4_combout\);

-- Location: LCCOMB_X113_Y14_N4
\inst1|reg_gen:22:regs|y[4]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|reg_gen:22:regs|y[4]~feeder_combout\ = \inst2|inst|mux_2|mux_1|mux_generate:1:mux_i|Mux3~4_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst2|inst|mux_2|mux_1|mux_generate:1:mux_i|Mux3~4_combout\,
	combout => \inst1|reg_gen:22:regs|y[4]~feeder_combout\);

-- Location: FF_X113_Y14_N5
\inst1|reg_gen:22:regs|y[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \SW17~input_o\,
	d => \inst1|reg_gen:22:regs|y[4]~feeder_combout\,
	ena => \inst1|dec_to_en\(22),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|reg_gen:22:regs|y\(4));

-- Location: LCCOMB_X114_Y18_N28
\inst1|reg_gen:6:regs|y[4]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|reg_gen:6:regs|y[4]~feeder_combout\ = \inst2|inst|mux_2|mux_1|mux_generate:1:mux_i|Mux3~4_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst2|inst|mux_2|mux_1|mux_generate:1:mux_i|Mux3~4_combout\,
	combout => \inst1|reg_gen:6:regs|y[4]~feeder_combout\);

-- Location: FF_X114_Y18_N29
\inst1|reg_gen:6:regs|y[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \SW17~input_o\,
	d => \inst1|reg_gen:6:regs|y[4]~feeder_combout\,
	ena => \inst1|dec_to_en\(6),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|reg_gen:6:regs|y\(4));

-- Location: LCCOMB_X113_Y18_N4
\inst1|DOUT[12]~102\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|DOUT[12]~102_combout\ = (\inst2|inst1|alu1|mux|Mux3~1_combout\ & ((\inst1|reg_gen:6:regs|y\(4)))) # (!\inst2|inst1|alu1|mux|Mux3~1_combout\ & (\inst1|reg_gen:22:regs|y\(4)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|reg_gen:22:regs|y\(4),
	datac => \inst1|reg_gen:6:regs|y\(4),
	datad => \inst2|inst1|alu1|mux|Mux3~1_combout\,
	combout => \inst1|DOUT[12]~102_combout\);

-- Location: LCCOMB_X114_Y18_N6
\inst1|DOUT[12]~101\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|DOUT[12]~101_combout\ = (\inst2|inst1|alu0|mux|Mux2~1_combout\ & (\inst2|inst1|alu0|mux|Mux1~3_combout\)) # (!\inst2|inst1|alu0|mux|Mux2~1_combout\ & ((\inst2|inst1|alu0|mux|Mux1~3_combout\ & ((\inst1|DOUT[12]~100_combout\))) # 
-- (!\inst2|inst1|alu0|mux|Mux1~3_combout\ & (\inst1|reg_gen:20:regs|y\(4)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|inst1|alu0|mux|Mux2~1_combout\,
	datab => \inst2|inst1|alu0|mux|Mux1~3_combout\,
	datac => \inst1|reg_gen:20:regs|y\(4),
	datad => \inst1|DOUT[12]~100_combout\,
	combout => \inst1|DOUT[12]~101_combout\);

-- Location: LCCOMB_X113_Y18_N26
\inst1|DOUT[12]~103\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|DOUT[12]~103_combout\ = (\inst2|inst1|alu0|mux|Mux2~1_combout\ & ((\inst1|DOUT[12]~101_combout\ & (\inst1|DOUT[12]~102_combout\)) # (!\inst1|DOUT[12]~101_combout\ & ((\inst1|reg_gen:18:regs|y\(4)))))) # (!\inst2|inst1|alu0|mux|Mux2~1_combout\ & 
-- (((\inst1|DOUT[12]~101_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|inst1|alu0|mux|Mux2~1_combout\,
	datab => \inst1|DOUT[12]~102_combout\,
	datac => \inst1|reg_gen:18:regs|y\(4),
	datad => \inst1|DOUT[12]~101_combout\,
	combout => \inst1|DOUT[12]~103_combout\);

-- Location: LCCOMB_X111_Y19_N18
\inst1|DOUT[12]~109\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|DOUT[12]~109_combout\ = (\inst1|DOUT[13]~37_combout\ & ((\inst1|DOUT[13]~40_combout\) # ((\inst1|reg_gen:15:regs|y\(4))))) # (!\inst1|DOUT[13]~37_combout\ & (!\inst1|DOUT[13]~40_combout\ & (\inst1|DOUT[12]~108_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|DOUT[13]~37_combout\,
	datab => \inst1|DOUT[13]~40_combout\,
	datac => \inst1|DOUT[12]~108_combout\,
	datad => \inst1|reg_gen:15:regs|y\(4),
	combout => \inst1|DOUT[12]~109_combout\);

-- Location: LCCOMB_X111_Y19_N12
\inst1|DOUT[12]~112\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|DOUT[12]~112_combout\ = (\inst1|DOUT[13]~40_combout\ & ((\inst1|DOUT[12]~109_combout\ & (\inst1|DOUT[12]~111_combout\)) # (!\inst1|DOUT[12]~109_combout\ & ((\inst1|DOUT[12]~107_combout\))))) # (!\inst1|DOUT[13]~40_combout\ & 
-- (((\inst1|DOUT[12]~109_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|DOUT[12]~111_combout\,
	datab => \inst1|DOUT[12]~107_combout\,
	datac => \inst1|DOUT[13]~40_combout\,
	datad => \inst1|DOUT[12]~109_combout\,
	combout => \inst1|DOUT[12]~112_combout\);

-- Location: LCCOMB_X106_Y19_N24
\inst1|DOUT[12]~105\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|DOUT[12]~105_combout\ = (\inst1|DOUT[13]~29_combout\ & ((\inst1|reg_gen:16:regs|y\(4)) # ((\inst1|DOUT[13]~34_combout\)))) # (!\inst1|DOUT[13]~29_combout\ & (((\inst1|DOUT[12]~104_combout\ & !\inst1|DOUT[13]~34_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|reg_gen:16:regs|y\(4),
	datab => \inst1|DOUT[12]~104_combout\,
	datac => \inst1|DOUT[13]~29_combout\,
	datad => \inst1|DOUT[13]~34_combout\,
	combout => \inst1|DOUT[12]~105_combout\);

-- Location: LCCOMB_X106_Y19_N22
\inst1|DOUT[12]~113\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|DOUT[12]~113_combout\ = (\inst1|DOUT[13]~34_combout\ & ((\inst1|DOUT[12]~105_combout\ & ((\inst1|DOUT[12]~112_combout\))) # (!\inst1|DOUT[12]~105_combout\ & (\inst1|DOUT[12]~103_combout\)))) # (!\inst1|DOUT[13]~34_combout\ & 
-- (((\inst1|DOUT[12]~105_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|DOUT[12]~103_combout\,
	datab => \inst1|DOUT[13]~34_combout\,
	datac => \inst1|DOUT[12]~112_combout\,
	datad => \inst1|DOUT[12]~105_combout\,
	combout => \inst1|DOUT[12]~113_combout\);

-- Location: LCCOMB_X109_Y17_N0
\inst1|reg_gen:31:regs|y[4]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|reg_gen:31:regs|y[4]~feeder_combout\ = \inst2|inst|mux_2|mux_1|mux_generate:3:mux_i|Mux3~4_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst2|inst|mux_2|mux_1|mux_generate:3:mux_i|Mux3~4_combout\,
	combout => \inst1|reg_gen:31:regs|y[4]~feeder_combout\);

-- Location: FF_X109_Y17_N1
\inst1|reg_gen:31:regs|y[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \SW17~input_o\,
	d => \inst1|reg_gen:31:regs|y[4]~feeder_combout\,
	ena => \inst1|dec_to_en[31]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|reg_gen:31:regs|y\(4));

-- Location: LCCOMB_X106_Y19_N0
\inst1|DOUT[12]~95\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|DOUT[12]~95_combout\ = (\inst1|reg_gen:31:regs|y\(4) & \inst1|DOUT[13]~23_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst1|reg_gen:31:regs|y\(4),
	datad => \inst1|DOUT[13]~23_combout\,
	combout => \inst1|DOUT[12]~95_combout\);

-- Location: LCCOMB_X106_Y19_N30
\inst1|DOUT[12]~114\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|DOUT[12]~114_combout\ = (\inst1|DOUT[12]~99_combout\) # ((\inst1|DOUT[12]~95_combout\) # ((\inst1|DOUT[15]~47_combout\ & \inst1|DOUT[12]~113_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|DOUT[12]~99_combout\,
	datab => \inst1|DOUT[15]~47_combout\,
	datac => \inst1|DOUT[12]~113_combout\,
	datad => \inst1|DOUT[12]~95_combout\,
	combout => \inst1|DOUT[12]~114_combout\);

-- Location: LCCOMB_X106_Y19_N20
\inst1|DOUT[12]$latch~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|DOUT[12]$latch~0_combout\ = (GLOBAL(\inst1|DOUT[15]~52clkctrl_outclk\) & (\inst1|DOUT[12]~114_combout\)) # (!GLOBAL(\inst1|DOUT[15]~52clkctrl_outclk\) & ((\inst1|DOUT[12]$latch~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|DOUT[12]~114_combout\,
	datab => \inst1|DOUT[12]$latch~combout\,
	datad => \inst1|DOUT[15]~52clkctrl_outclk\,
	combout => \inst1|DOUT[12]$latch~0_combout\);

-- Location: LCCOMB_X106_Y19_N2
\inst1|dcd|dcd_0|D[3]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|dcd|dcd_0|D[3]~0_combout\ = (\inst2|inst1|alu1|mux|Mux3~1_combout\ & (\inst1|dcd|dcd_3|dcd|Mux7~4_combout\ & !\inst2|inst1|alu0|mux|Mux0~3_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|inst1|alu1|mux|Mux3~1_combout\,
	datab => \inst1|dcd|dcd_3|dcd|Mux7~4_combout\,
	datad => \inst2|inst1|alu0|mux|Mux0~3_combout\,
	combout => \inst1|dcd|dcd_0|D[3]~0_combout\);

-- Location: LCCOMB_X106_Y19_N18
\inst1|comb~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|comb~0_combout\ = (\inst1|DOUT[15]~53_combout\ & (((!\inst1|dcd|dcd_3|dcd|Mux7~4_combout\) # (!\inst|Mux3~7_combout\)))) # (!\inst1|DOUT[15]~53_combout\ & (!\inst|Mux5~0_combout\ & ((!\inst1|dcd|dcd_3|dcd|Mux7~4_combout\) # 
-- (!\inst|Mux3~7_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101110111011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|DOUT[15]~53_combout\,
	datab => \inst|Mux5~0_combout\,
	datac => \inst|Mux3~7_combout\,
	datad => \inst1|dcd|dcd_3|dcd|Mux7~4_combout\,
	combout => \inst1|comb~0_combout\);

-- Location: LCCOMB_X106_Y19_N28
\inst1|DOUT[12]$latch\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|DOUT[12]$latch~combout\ = (!\inst1|comb~0_combout\ & ((\inst1|DOUT[12]$latch~0_combout\) # (\inst1|dcd|dcd_0|D[3]~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst1|DOUT[12]$latch~0_combout\,
	datac => \inst1|dcd|dcd_0|D[3]~0_combout\,
	datad => \inst1|comb~0_combout\,
	combout => \inst1|DOUT[12]$latch~combout\);

-- Location: LCCOMB_X106_Y19_N12
\inst3|OUT16B[12]~25\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|OUT16B[12]~25_combout\ = (\inst|Mux5~0_combout\ & (((\inst1|DOUT[12]$latch~combout\) # (!\inst1|DOUT[15]_2612~combout\)))) # (!\inst|Mux5~0_combout\ & (\inst2|inst1|alu3|mux|Mux3~1_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101000111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|inst1|alu3|mux|Mux3~1_combout\,
	datab => \inst1|DOUT[15]_2612~combout\,
	datac => \inst|Mux5~0_combout\,
	datad => \inst1|DOUT[12]$latch~combout\,
	combout => \inst3|OUT16B[12]~25_combout\);

-- Location: FF_X106_Y19_N21
\inst2|inst|reg_gen:2:regs|reg_2|y[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \SW17~input_o\,
	asdata => \inst3|OUT16B[12]~25_combout\,
	sload => VCC,
	ena => \inst2|inst|add_reg1_dcd|Mux3~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst2|inst|reg_gen:2:regs|reg_2|y\(4));

-- Location: LCCOMB_X106_Y19_N16
\inst2|inst|mux_2|mux_1|mux_generate:3:mux_i|Mux3~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|inst|mux_2|mux_1|mux_generate:3:mux_i|Mux3~0_combout\ = (\inst4|inst1|data_out[6]~17_combout\ & ((\inst4|inst1|exception~2_combout\ & (\inst2|inst|reg_gen:2:regs|reg_2|y\(4))) # (!\inst4|inst1|exception~2_combout\ & 
-- ((\inst2|inst|reg_gen:3:regs|reg_2|y\(4)))))) # (!\inst4|inst1|data_out[6]~17_combout\ & (\inst2|inst|reg_gen:2:regs|reg_2|y\(4)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|inst1|data_out[6]~17_combout\,
	datab => \inst2|inst|reg_gen:2:regs|reg_2|y\(4),
	datac => \inst2|inst|reg_gen:3:regs|reg_2|y\(4),
	datad => \inst4|inst1|exception~2_combout\,
	combout => \inst2|inst|mux_2|mux_1|mux_generate:3:mux_i|Mux3~0_combout\);

-- Location: LCCOMB_X106_Y19_N14
\inst2|inst|mux_2|mux_1|mux_generate:3:mux_i|Mux3~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|inst|mux_2|mux_1|mux_generate:3:mux_i|Mux3~1_combout\ = (\inst4|inst1|data_out[6]~17_combout\ & (!\inst4|inst1|exception~2_combout\ & \inst2|inst|reg_gen:1:regs|reg_2|y\(4)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst4|inst1|data_out[6]~17_combout\,
	datac => \inst4|inst1|exception~2_combout\,
	datad => \inst2|inst|reg_gen:1:regs|reg_2|y\(4),
	combout => \inst2|inst|mux_2|mux_1|mux_generate:3:mux_i|Mux3~1_combout\);

-- Location: LCCOMB_X107_Y19_N28
\inst2|inst|mux_2|mux_1|mux_generate:3:mux_i|Mux3~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|inst|mux_2|mux_1|mux_generate:3:mux_i|Mux3~2_combout\ = (\inst2|inst|mux_2|mux_1|mux_generate:0:mux_i|Mux2~3_combout\ & ((\inst2|inst|mux_2|mux_1|mux_generate:0:mux_i|Mux2~4_combout\ & ((\inst2|inst|reg_gen:6:regs|reg_2|y\(4)))) # 
-- (!\inst2|inst|mux_2|mux_1|mux_generate:0:mux_i|Mux2~4_combout\ & (\inst2|inst|mux_2|mux_1|mux_generate:3:mux_i|Mux3~1_combout\)))) # (!\inst2|inst|mux_2|mux_1|mux_generate:0:mux_i|Mux2~3_combout\ & 
-- (((!\inst2|inst|mux_2|mux_1|mux_generate:0:mux_i|Mux2~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000010101111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|inst|mux_2|mux_1|mux_generate:3:mux_i|Mux3~1_combout\,
	datab => \inst2|inst|reg_gen:6:regs|reg_2|y\(4),
	datac => \inst2|inst|mux_2|mux_1|mux_generate:0:mux_i|Mux2~3_combout\,
	datad => \inst2|inst|mux_2|mux_1|mux_generate:0:mux_i|Mux2~4_combout\,
	combout => \inst2|inst|mux_2|mux_1|mux_generate:3:mux_i|Mux3~2_combout\);

-- Location: LCCOMB_X107_Y19_N2
\inst2|inst|mux_2|mux_1|mux_generate:3:mux_i|Mux3~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|inst|mux_2|mux_1|mux_generate:3:mux_i|Mux3~3_combout\ = (\inst2|inst|mux_2|mux_1|mux_generate:0:mux_i|Mux2~1_combout\ & (((\inst2|inst|mux_2|mux_1|mux_generate:3:mux_i|Mux3~2_combout\)))) # 
-- (!\inst2|inst|mux_2|mux_1|mux_generate:0:mux_i|Mux2~1_combout\ & ((\inst2|inst|mux_2|mux_1|mux_generate:3:mux_i|Mux3~2_combout\ & (\inst2|inst|reg_gen:4:regs|reg_2|y\(4))) # (!\inst2|inst|mux_2|mux_1|mux_generate:3:mux_i|Mux3~2_combout\ & 
-- ((\inst2|inst|reg_gen:5:regs|reg_2|y\(4))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|inst|mux_2|mux_1|mux_generate:0:mux_i|Mux2~1_combout\,
	datab => \inst2|inst|reg_gen:4:regs|reg_2|y\(4),
	datac => \inst2|inst|reg_gen:5:regs|reg_2|y\(4),
	datad => \inst2|inst|mux_2|mux_1|mux_generate:3:mux_i|Mux3~2_combout\,
	combout => \inst2|inst|mux_2|mux_1|mux_generate:3:mux_i|Mux3~3_combout\);

-- Location: LCCOMB_X107_Y19_N6
\inst2|inst|mux_2|mux_1|mux_generate:3:mux_i|Mux3~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|inst|mux_2|mux_1|mux_generate:3:mux_i|Mux3~4_combout\ = (\inst2|inst|mux_2|mux_1|mux_generate:0:mux_i|Mux2~7_combout\ & (\inst2|inst|mux_2|mux_1|mux_generate:3:mux_i|Mux3~0_combout\)) # (!\inst2|inst|mux_2|mux_1|mux_generate:0:mux_i|Mux2~7_combout\ 
-- & ((\inst2|inst|mux_2|mux_1|mux_generate:3:mux_i|Mux3~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|inst|mux_2|mux_1|mux_generate:3:mux_i|Mux3~0_combout\,
	datac => \inst2|inst|mux_2|mux_1|mux_generate:0:mux_i|Mux2~7_combout\,
	datad => \inst2|inst|mux_2|mux_1|mux_generate:3:mux_i|Mux3~3_combout\,
	combout => \inst2|inst|mux_2|mux_1|mux_generate:3:mux_i|Mux3~4_combout\);

-- Location: LCCOMB_X108_Y19_N18
\inst2|inst2|OUT16B[12]~31\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|inst2|OUT16B[12]~31_combout\ = (\inst|Mux7~0_combout\ & (!\inst4|inst1|exception~2_combout\ & ((!\inst4|inst1|data_out[5]~5_combout\)))) # (!\inst|Mux7~0_combout\ & (((\inst2|inst|mux_2|mux_1|mux_generate:3:mux_i|Mux3~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000001110010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Mux7~0_combout\,
	datab => \inst4|inst1|exception~2_combout\,
	datac => \inst2|inst|mux_2|mux_1|mux_generate:3:mux_i|Mux3~4_combout\,
	datad => \inst4|inst1|data_out[5]~5_combout\,
	combout => \inst2|inst2|OUT16B[12]~31_combout\);

-- Location: LCCOMB_X109_Y21_N0
\inst2|inst1|alu3|adder|C[1]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|inst1|alu3|adder|C[1]~0_combout\ = (\inst2|inst|mux_1|mux_1|mux_generate:3:mux_i|Mux3~10_combout\ & ((\inst2|inst1|alu2|adder|C4~0_combout\) # (\inst2|inst2|OUT16B[12]~31_combout\ $ (\inst2|inst3|DOUT[2]~3_combout\)))) # 
-- (!\inst2|inst|mux_1|mux_1|mux_generate:3:mux_i|Mux3~10_combout\ & (\inst2|inst1|alu2|adder|C4~0_combout\ & (\inst2|inst2|OUT16B[12]~31_combout\ $ (\inst2|inst3|DOUT[2]~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101111001001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|inst2|OUT16B[12]~31_combout\,
	datab => \inst2|inst|mux_1|mux_1|mux_generate:3:mux_i|Mux3~10_combout\,
	datac => \inst2|inst3|DOUT[2]~3_combout\,
	datad => \inst2|inst1|alu2|adder|C4~0_combout\,
	combout => \inst2|inst1|alu3|adder|C[1]~0_combout\);

-- Location: LCCOMB_X109_Y19_N10
\inst2|inst2|OUT16B[13]~30\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|inst2|OUT16B[13]~30_combout\ = (\inst|Mux7~0_combout\ & (!\inst4|inst1|data_out[5]~5_combout\ & (!\inst4|inst1|exception~2_combout\))) # (!\inst|Mux7~0_combout\ & (((\inst2|inst|mux_2|mux_1|mux_generate:3:mux_i|Mux2~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|inst1|data_out[5]~5_combout\,
	datab => \inst4|inst1|exception~2_combout\,
	datac => \inst2|inst|mux_2|mux_1|mux_generate:3:mux_i|Mux2~4_combout\,
	datad => \inst|Mux7~0_combout\,
	combout => \inst2|inst2|OUT16B[13]~30_combout\);

-- Location: FF_X109_Y18_N9
\inst2|inst|reg_gen:6:regs|reg_2|y[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \SW17~input_o\,
	asdata => \inst3|OUT16B[13]~24_combout\,
	sload => VCC,
	ena => \inst2|inst|add_reg1_dcd|Mux3~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst2|inst|reg_gen:6:regs|reg_2|y\(5));

-- Location: LCCOMB_X108_Y19_N14
\inst2|inst|mux_1|mux_1|mux_generate:3:mux_i|Mux2~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|inst|mux_1|mux_1|mux_generate:3:mux_i|Mux2~6_combout\ = (\inst2|inst|reg_gen:1:regs|reg_2|y\(5) & (!\inst4|inst1|exception~2_combout\ & ((\inst4|inst|reg|reg_1|y\(5)) # (\inst4|inst1|data_out[9]~13_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101000001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|inst|reg_gen:1:regs|reg_2|y\(5),
	datab => \inst4|inst|reg|reg_1|y\(5),
	datac => \inst4|inst1|exception~2_combout\,
	datad => \inst4|inst1|data_out[9]~13_combout\,
	combout => \inst2|inst|mux_1|mux_1|mux_generate:3:mux_i|Mux2~6_combout\);

-- Location: LCCOMB_X108_Y19_N4
\inst2|inst|mux_1|mux_1|mux_generate:3:mux_i|Mux2~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|inst|mux_1|mux_1|mux_generate:3:mux_i|Mux2~3_combout\ = (\inst2|inst|mux_1|mux_1|mux_generate:3:mux_i|Mux3~5_combout\ & ((\inst2|inst|mux_1|mux_1|mux_generate:3:mux_i|Mux3~6_combout\ & (\inst2|inst|reg_gen:6:regs|reg_2|y\(5))) # 
-- (!\inst2|inst|mux_1|mux_1|mux_generate:3:mux_i|Mux3~6_combout\ & ((\inst2|inst|mux_1|mux_1|mux_generate:3:mux_i|Mux2~6_combout\))))) # (!\inst2|inst|mux_1|mux_1|mux_generate:3:mux_i|Mux3~5_combout\ & 
-- (((!\inst2|inst|mux_1|mux_1|mux_generate:3:mux_i|Mux3~6_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100011110101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|inst|mux_1|mux_1|mux_generate:3:mux_i|Mux3~5_combout\,
	datab => \inst2|inst|reg_gen:6:regs|reg_2|y\(5),
	datac => \inst2|inst|mux_1|mux_1|mux_generate:3:mux_i|Mux2~6_combout\,
	datad => \inst2|inst|mux_1|mux_1|mux_generate:3:mux_i|Mux3~6_combout\,
	combout => \inst2|inst|mux_1|mux_1|mux_generate:3:mux_i|Mux2~3_combout\);

-- Location: FF_X108_Y19_N29
\inst2|inst|reg_gen:4:regs|reg_2|y[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \SW17~input_o\,
	asdata => \inst3|OUT16B[13]~24_combout\,
	sload => VCC,
	ena => \inst2|inst|add_reg1_dcd|Mux3~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst2|inst|reg_gen:4:regs|reg_2|y\(5));

-- Location: FF_X108_Y19_N21
\inst2|inst|reg_gen:5:regs|reg_2|y[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \SW17~input_o\,
	asdata => \inst3|OUT16B[13]~24_combout\,
	sload => VCC,
	ena => \inst2|inst|add_reg1_dcd|Mux3~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst2|inst|reg_gen:5:regs|reg_2|y\(5));

-- Location: LCCOMB_X108_Y19_N28
\inst2|inst|mux_1|mux_1|mux_generate:3:mux_i|Mux2~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|inst|mux_1|mux_1|mux_generate:3:mux_i|Mux2~4_combout\ = (\inst2|inst|mux_1|mux_1|mux_generate:3:mux_i|Mux3~4_combout\ & (\inst2|inst|mux_1|mux_1|mux_generate:3:mux_i|Mux2~3_combout\)) # (!\inst2|inst|mux_1|mux_1|mux_generate:3:mux_i|Mux3~4_combout\ 
-- & ((\inst2|inst|mux_1|mux_1|mux_generate:3:mux_i|Mux2~3_combout\ & (\inst2|inst|reg_gen:4:regs|reg_2|y\(5))) # (!\inst2|inst|mux_1|mux_1|mux_generate:3:mux_i|Mux2~3_combout\ & ((\inst2|inst|reg_gen:5:regs|reg_2|y\(5))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100111001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|inst|mux_1|mux_1|mux_generate:3:mux_i|Mux3~4_combout\,
	datab => \inst2|inst|mux_1|mux_1|mux_generate:3:mux_i|Mux2~3_combout\,
	datac => \inst2|inst|reg_gen:4:regs|reg_2|y\(5),
	datad => \inst2|inst|reg_gen:5:regs|reg_2|y\(5),
	combout => \inst2|inst|mux_1|mux_1|mux_generate:3:mux_i|Mux2~4_combout\);

-- Location: LCCOMB_X108_Y18_N18
\inst2|inst|reg_gen:2:regs|reg_2|y[5]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|inst|reg_gen:2:regs|reg_2|y[5]~feeder_combout\ = \inst3|OUT16B[13]~24_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst3|OUT16B[13]~24_combout\,
	combout => \inst2|inst|reg_gen:2:regs|reg_2|y[5]~feeder_combout\);

-- Location: FF_X108_Y18_N19
\inst2|inst|reg_gen:2:regs|reg_2|y[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \SW17~input_o\,
	d => \inst2|inst|reg_gen:2:regs|reg_2|y[5]~feeder_combout\,
	ena => \inst2|inst|add_reg1_dcd|Mux3~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst2|inst|reg_gen:2:regs|reg_2|y\(5));

-- Location: LCCOMB_X108_Y18_N26
\inst2|inst|reg_gen:3:regs|reg_2|y[5]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|inst|reg_gen:3:regs|reg_2|y[5]~feeder_combout\ = \inst3|OUT16B[13]~24_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst3|OUT16B[13]~24_combout\,
	combout => \inst2|inst|reg_gen:3:regs|reg_2|y[5]~feeder_combout\);

-- Location: FF_X108_Y18_N27
\inst2|inst|reg_gen:3:regs|reg_2|y[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \SW17~input_o\,
	d => \inst2|inst|reg_gen:3:regs|reg_2|y[5]~feeder_combout\,
	ena => \inst2|inst|add_reg1_dcd|Mux3~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst2|inst|reg_gen:3:regs|reg_2|y\(5));

-- Location: LCCOMB_X108_Y18_N22
\inst2|inst|mux_1|mux_1|mux_generate:3:mux_i|Mux2~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|inst|mux_1|mux_1|mux_generate:3:mux_i|Mux2~2_combout\ = (\inst4|inst1|data_out[9]~14_combout\ & ((\inst4|inst1|exception~2_combout\ & (\inst2|inst|reg_gen:2:regs|reg_2|y\(5))) # (!\inst4|inst1|exception~2_combout\ & 
-- ((\inst2|inst|reg_gen:3:regs|reg_2|y\(5)))))) # (!\inst4|inst1|data_out[9]~14_combout\ & (\inst2|inst|reg_gen:2:regs|reg_2|y\(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|inst1|data_out[9]~14_combout\,
	datab => \inst2|inst|reg_gen:2:regs|reg_2|y\(5),
	datac => \inst2|inst|reg_gen:3:regs|reg_2|y\(5),
	datad => \inst4|inst1|exception~2_combout\,
	combout => \inst2|inst|mux_1|mux_1|mux_generate:3:mux_i|Mux2~2_combout\);

-- Location: LCCOMB_X108_Y19_N22
\inst2|inst|mux_1|mux_1|mux_generate:3:mux_i|Mux2~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|inst|mux_1|mux_1|mux_generate:3:mux_i|Mux2~5_combout\ = (\inst2|inst|mux_1|mux_1|mux_generate:3:mux_i|Mux3~12_combout\ & ((\inst2|inst|mux_1|mux_1|mux_generate:3:mux_i|Mux2~2_combout\))) # 
-- (!\inst2|inst|mux_1|mux_1|mux_generate:3:mux_i|Mux3~12_combout\ & (\inst2|inst|mux_1|mux_1|mux_generate:3:mux_i|Mux2~4_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst2|inst|mux_1|mux_1|mux_generate:3:mux_i|Mux2~4_combout\,
	datac => \inst2|inst|mux_1|mux_1|mux_generate:3:mux_i|Mux3~12_combout\,
	datad => \inst2|inst|mux_1|mux_1|mux_generate:3:mux_i|Mux2~2_combout\,
	combout => \inst2|inst|mux_1|mux_1|mux_generate:3:mux_i|Mux2~5_combout\);

-- Location: LCCOMB_X108_Y23_N24
\inst2|inst1|alu3|adder|S[1]\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|inst1|alu3|adder|S\(1) = \inst2|inst1|alu3|adder|C[1]~0_combout\ $ (\inst2|inst2|OUT16B[13]~30_combout\ $ (\inst2|inst3|DOUT[2]~3_combout\ $ (\inst2|inst|mux_1|mux_1|mux_generate:3:mux_i|Mux2~5_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|inst1|alu3|adder|C[1]~0_combout\,
	datab => \inst2|inst2|OUT16B[13]~30_combout\,
	datac => \inst2|inst3|DOUT[2]~3_combout\,
	datad => \inst2|inst|mux_1|mux_1|mux_generate:3:mux_i|Mux2~5_combout\,
	combout => \inst2|inst1|alu3|adder|S\(1));

-- Location: LCCOMB_X108_Y23_N10
\inst2|inst1|alu3|mux|Mux2~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|inst1|alu3|mux|Mux2~0_combout\ = (!\inst2|inst3|DOUT[1]~4_combout\ & ((\inst2|inst|mux_1|mux_1|mux_generate:3:mux_i|Mux2~5_combout\ & ((\inst2|inst2|OUT16B[13]~30_combout\) # (\inst2|inst3|DOUT[0]~2_combout\))) # 
-- (!\inst2|inst|mux_1|mux_1|mux_generate:3:mux_i|Mux2~5_combout\ & (\inst2|inst2|OUT16B[13]~30_combout\ & \inst2|inst3|DOUT[0]~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|inst|mux_1|mux_1|mux_generate:3:mux_i|Mux2~5_combout\,
	datab => \inst2|inst2|OUT16B[13]~30_combout\,
	datac => \inst2|inst3|DOUT[0]~2_combout\,
	datad => \inst2|inst3|DOUT[1]~4_combout\,
	combout => \inst2|inst1|alu3|mux|Mux2~0_combout\);

-- Location: LCCOMB_X108_Y23_N20
\inst2|inst1|alu3|mux|Mux2~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|inst1|alu3|mux|Mux2~1_combout\ = (\inst2|inst1|alu3|mux|Mux2~0_combout\) # ((\inst2|inst1|alu0|mux|Mux1~4_combout\ & \inst2|inst1|alu3|adder|S\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100011111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|inst1|alu0|mux|Mux1~4_combout\,
	datab => \inst2|inst1|alu3|adder|S\(1),
	datac => \inst2|inst1|alu3|mux|Mux2~0_combout\,
	combout => \inst2|inst1|alu3|mux|Mux2~1_combout\);

-- Location: FF_X113_Y19_N29
\inst1|reg_gen:15:regs|y[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \SW17~input_o\,
	asdata => \inst2|inst|mux_2|mux_1|mux_generate:3:mux_i|Mux2~4_combout\,
	sload => VCC,
	ena => \inst1|dec_to_en\(15),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|reg_gen:15:regs|y\(5));

-- Location: FF_X112_Y17_N9
\inst1|reg_gen:27:regs|y[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \SW17~input_o\,
	asdata => \inst2|inst|mux_2|mux_1|mux_generate:3:mux_i|Mux2~4_combout\,
	sload => VCC,
	ena => \inst1|dec_to_en\(27),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|reg_gen:27:regs|y\(5));

-- Location: LCCOMB_X112_Y17_N22
\inst1|reg_gen:11:regs|y[5]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|reg_gen:11:regs|y[5]~feeder_combout\ = \inst2|inst|mux_2|mux_1|mux_generate:3:mux_i|Mux2~4_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst2|inst|mux_2|mux_1|mux_generate:3:mux_i|Mux2~4_combout\,
	combout => \inst1|reg_gen:11:regs|y[5]~feeder_combout\);

-- Location: FF_X112_Y17_N23
\inst1|reg_gen:11:regs|y[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \SW17~input_o\,
	d => \inst1|reg_gen:11:regs|y[5]~feeder_combout\,
	ena => \inst1|dec_to_en\(11),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|reg_gen:11:regs|y\(5));

-- Location: LCCOMB_X112_Y17_N8
\inst1|DOUT[13]~88\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|DOUT[13]~88_combout\ = (\inst2|inst1|alu1|mux|Mux3~1_combout\ & ((\inst1|reg_gen:11:regs|y\(5)))) # (!\inst2|inst1|alu1|mux|Mux3~1_combout\ & (\inst1|reg_gen:27:regs|y\(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst2|inst1|alu1|mux|Mux3~1_combout\,
	datac => \inst1|reg_gen:27:regs|y\(5),
	datad => \inst1|reg_gen:11:regs|y\(5),
	combout => \inst1|DOUT[13]~88_combout\);

-- Location: FF_X107_Y21_N23
\inst1|reg_gen:14:regs|y[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \SW17~input_o\,
	d => \inst2|inst|mux_2|mux_1|mux_generate:1:mux_i|Mux2~4_combout\,
	ena => \inst1|dec_to_en\(14),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|reg_gen:14:regs|y\(5));

-- Location: LCCOMB_X111_Y20_N20
\inst1|reg_gen:26:regs|y[5]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|reg_gen:26:regs|y[5]~feeder_combout\ = \inst2|inst|mux_2|mux_1|mux_generate:1:mux_i|Mux2~4_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst2|inst|mux_2|mux_1|mux_generate:1:mux_i|Mux2~4_combout\,
	combout => \inst1|reg_gen:26:regs|y[5]~feeder_combout\);

-- Location: FF_X111_Y20_N21
\inst1|reg_gen:26:regs|y[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \SW17~input_o\,
	d => \inst1|reg_gen:26:regs|y[5]~feeder_combout\,
	ena => \inst1|dec_to_en\(26),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|reg_gen:26:regs|y\(5));

-- Location: LCCOMB_X112_Y20_N22
\inst1|DOUT[13]~86\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|DOUT[13]~86_combout\ = (\inst2|inst1|alu0|mux|Mux1~3_combout\ & ((\inst1|reg_gen:30:regs|y\(5)) # ((\inst2|inst1|alu1|mux|Mux3~1_combout\)))) # (!\inst2|inst1|alu0|mux|Mux1~3_combout\ & (((!\inst2|inst1|alu1|mux|Mux3~1_combout\ & 
-- \inst1|reg_gen:26:regs|y\(5)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100101111001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|reg_gen:30:regs|y\(5),
	datab => \inst2|inst1|alu0|mux|Mux1~3_combout\,
	datac => \inst2|inst1|alu1|mux|Mux3~1_combout\,
	datad => \inst1|reg_gen:26:regs|y\(5),
	combout => \inst1|DOUT[13]~86_combout\);

-- Location: FF_X112_Y20_N25
\inst1|reg_gen:10:regs|y[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \SW17~input_o\,
	asdata => \inst2|inst|mux_2|mux_1|mux_generate:1:mux_i|Mux2~4_combout\,
	sload => VCC,
	ena => \inst1|dec_to_en\(10),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|reg_gen:10:regs|y\(5));

-- Location: LCCOMB_X112_Y20_N24
\inst1|DOUT[13]~87\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|DOUT[13]~87_combout\ = (\inst1|DOUT[13]~86_combout\ & ((\inst1|reg_gen:14:regs|y\(5)) # ((!\inst2|inst1|alu1|mux|Mux3~1_combout\)))) # (!\inst1|DOUT[13]~86_combout\ & (((\inst1|reg_gen:10:regs|y\(5) & \inst2|inst1|alu1|mux|Mux3~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|reg_gen:14:regs|y\(5),
	datab => \inst1|DOUT[13]~86_combout\,
	datac => \inst1|reg_gen:10:regs|y\(5),
	datad => \inst2|inst1|alu1|mux|Mux3~1_combout\,
	combout => \inst1|DOUT[13]~87_combout\);

-- Location: LCCOMB_X113_Y19_N18
\inst1|DOUT[13]~89\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|DOUT[13]~89_combout\ = (\inst1|DOUT[13]~40_combout\ & (((\inst1|DOUT[13]~37_combout\) # (\inst1|DOUT[13]~87_combout\)))) # (!\inst1|DOUT[13]~40_combout\ & (\inst1|DOUT[13]~88_combout\ & (!\inst1|DOUT[13]~37_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111010100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|DOUT[13]~40_combout\,
	datab => \inst1|DOUT[13]~88_combout\,
	datac => \inst1|DOUT[13]~37_combout\,
	datad => \inst1|DOUT[13]~87_combout\,
	combout => \inst1|DOUT[13]~89_combout\);

-- Location: LCCOMB_X113_Y19_N28
\inst1|DOUT[13]~92\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|DOUT[13]~92_combout\ = (\inst1|DOUT[13]~37_combout\ & ((\inst1|DOUT[13]~89_combout\ & (\inst1|DOUT[13]~91_combout\)) # (!\inst1|DOUT[13]~89_combout\ & ((\inst1|reg_gen:15:regs|y\(5)))))) # (!\inst1|DOUT[13]~37_combout\ & 
-- (((\inst1|DOUT[13]~89_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|DOUT[13]~91_combout\,
	datab => \inst1|DOUT[13]~37_combout\,
	datac => \inst1|reg_gen:15:regs|y\(5),
	datad => \inst1|DOUT[13]~89_combout\,
	combout => \inst1|DOUT[13]~92_combout\);

-- Location: LCCOMB_X114_Y17_N14
\inst1|reg_gen:28:regs|y[5]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|reg_gen:28:regs|y[5]~feeder_combout\ = \inst2|inst|mux_2|mux_1|mux_generate:1:mux_i|Mux2~4_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst2|inst|mux_2|mux_1|mux_generate:1:mux_i|Mux2~4_combout\,
	combout => \inst1|reg_gen:28:regs|y[5]~feeder_combout\);

-- Location: FF_X114_Y17_N15
\inst1|reg_gen:28:regs|y[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \SW17~input_o\,
	d => \inst1|reg_gen:28:regs|y[5]~feeder_combout\,
	ena => \inst1|dec_to_en\(28),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|reg_gen:28:regs|y\(5));

-- Location: LCCOMB_X112_Y15_N16
\inst1|reg_gen:12:regs|y[5]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|reg_gen:12:regs|y[5]~feeder_combout\ = \inst2|inst|mux_2|mux_1|mux_generate:1:mux_i|Mux2~4_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst2|inst|mux_2|mux_1|mux_generate:1:mux_i|Mux2~4_combout\,
	combout => \inst1|reg_gen:12:regs|y[5]~feeder_combout\);

-- Location: FF_X112_Y15_N17
\inst1|reg_gen:12:regs|y[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \SW17~input_o\,
	d => \inst1|reg_gen:12:regs|y[5]~feeder_combout\,
	ena => \inst1|dec_to_en\(12),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|reg_gen:12:regs|y\(5));

-- Location: LCCOMB_X112_Y20_N30
\inst1|DOUT[13]~84\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|DOUT[13]~84_combout\ = (\inst2|inst1|alu1|mux|Mux3~1_combout\ & ((\inst1|reg_gen:12:regs|y\(5)))) # (!\inst2|inst1|alu1|mux|Mux3~1_combout\ & (\inst1|reg_gen:28:regs|y\(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst1|reg_gen:28:regs|y\(5),
	datac => \inst1|reg_gen:12:regs|y\(5),
	datad => \inst2|inst1|alu1|mux|Mux3~1_combout\,
	combout => \inst1|DOUT[13]~84_combout\);

-- Location: FF_X112_Y18_N9
\inst1|reg_gen:24:regs|y[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \SW17~input_o\,
	asdata => \inst2|inst|mux_2|mux_1|mux_generate:1:mux_i|Mux2~4_combout\,
	sload => VCC,
	ena => \inst1|dec_to_en[24]~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|reg_gen:24:regs|y\(5));

-- Location: LCCOMB_X113_Y18_N30
\inst1|reg_gen:8:regs|y[5]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|reg_gen:8:regs|y[5]~feeder_combout\ = \inst2|inst|mux_2|mux_1|mux_generate:1:mux_i|Mux2~4_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst2|inst|mux_2|mux_1|mux_generate:1:mux_i|Mux2~4_combout\,
	combout => \inst1|reg_gen:8:regs|y[5]~feeder_combout\);

-- Location: FF_X113_Y18_N31
\inst1|reg_gen:8:regs|y[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \SW17~input_o\,
	d => \inst1|reg_gen:8:regs|y[5]~feeder_combout\,
	ena => \inst1|dec_to_en[8]~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|reg_gen:8:regs|y\(5));

-- Location: LCCOMB_X113_Y18_N12
\inst1|DOUT[13]~80\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|DOUT[13]~80_combout\ = (\inst2|inst1|alu1|mux|Mux3~1_combout\ & ((\inst1|reg_gen:8:regs|y\(5)))) # (!\inst2|inst1|alu1|mux|Mux3~1_combout\ & (\inst1|reg_gen:24:regs|y\(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst1|reg_gen:24:regs|y\(5),
	datac => \inst1|reg_gen:8:regs|y\(5),
	datad => \inst2|inst1|alu1|mux|Mux3~1_combout\,
	combout => \inst1|DOUT[13]~80_combout\);

-- Location: LCCOMB_X113_Y18_N18
\inst1|DOUT[13]~81\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|DOUT[13]~81_combout\ = (\inst2|inst1|alu0|mux|Mux2~1_combout\ & (((\inst2|inst1|alu0|mux|Mux1~3_combout\)))) # (!\inst2|inst1|alu0|mux|Mux2~1_combout\ & ((\inst2|inst1|alu0|mux|Mux1~3_combout\ & ((\inst1|DOUT[13]~80_combout\))) # 
-- (!\inst2|inst1|alu0|mux|Mux1~3_combout\ & (\inst1|reg_gen:20:regs|y\(5)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010010100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|inst1|alu0|mux|Mux2~1_combout\,
	datab => \inst1|reg_gen:20:regs|y\(5),
	datac => \inst2|inst1|alu0|mux|Mux1~3_combout\,
	datad => \inst1|DOUT[13]~80_combout\,
	combout => \inst1|DOUT[13]~81_combout\);

-- Location: LCCOMB_X113_Y18_N6
\inst1|DOUT[13]~83\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|DOUT[13]~83_combout\ = (\inst1|DOUT[13]~81_combout\ & (((\inst1|DOUT[13]~82_combout\) # (!\inst2|inst1|alu0|mux|Mux2~1_combout\)))) # (!\inst1|DOUT[13]~81_combout\ & (\inst1|reg_gen:18:regs|y\(5) & ((\inst2|inst1|alu0|mux|Mux2~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|reg_gen:18:regs|y\(5),
	datab => \inst1|DOUT[13]~82_combout\,
	datac => \inst1|DOUT[13]~81_combout\,
	datad => \inst2|inst1|alu0|mux|Mux2~1_combout\,
	combout => \inst1|DOUT[13]~83_combout\);

-- Location: LCCOMB_X109_Y18_N28
\inst1|DOUT[13]~85\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|DOUT[13]~85_combout\ = (\inst1|DOUT[13]~29_combout\ & (((\inst1|DOUT[13]~34_combout\)))) # (!\inst1|DOUT[13]~29_combout\ & ((\inst1|DOUT[13]~34_combout\ & ((\inst1|DOUT[13]~83_combout\))) # (!\inst1|DOUT[13]~34_combout\ & 
-- (\inst1|DOUT[13]~84_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|DOUT[13]~84_combout\,
	datab => \inst1|DOUT[13]~83_combout\,
	datac => \inst1|DOUT[13]~29_combout\,
	datad => \inst1|DOUT[13]~34_combout\,
	combout => \inst1|DOUT[13]~85_combout\);

-- Location: LCCOMB_X109_Y18_N10
\inst1|DOUT[13]~93\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|DOUT[13]~93_combout\ = (\inst1|DOUT[13]~29_combout\ & ((\inst1|DOUT[13]~85_combout\ & ((\inst1|DOUT[13]~92_combout\))) # (!\inst1|DOUT[13]~85_combout\ & (\inst1|reg_gen:16:regs|y\(5))))) # (!\inst1|DOUT[13]~29_combout\ & 
-- (((\inst1|DOUT[13]~85_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|reg_gen:16:regs|y\(5),
	datab => \inst1|DOUT[13]~29_combout\,
	datac => \inst1|DOUT[13]~92_combout\,
	datad => \inst1|DOUT[13]~85_combout\,
	combout => \inst1|DOUT[13]~93_combout\);

-- Location: LCCOMB_X109_Y17_N30
\inst1|reg_gen:31:regs|y[5]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|reg_gen:31:regs|y[5]~feeder_combout\ = \inst2|inst|mux_2|mux_1|mux_generate:3:mux_i|Mux2~4_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst2|inst|mux_2|mux_1|mux_generate:3:mux_i|Mux2~4_combout\,
	combout => \inst1|reg_gen:31:regs|y[5]~feeder_combout\);

-- Location: FF_X109_Y17_N31
\inst1|reg_gen:31:regs|y[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \SW17~input_o\,
	d => \inst1|reg_gen:31:regs|y[5]~feeder_combout\,
	ena => \inst1|dec_to_en[31]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|reg_gen:31:regs|y\(5));

-- Location: LCCOMB_X109_Y18_N12
\inst1|DOUT[13]~75\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|DOUT[13]~75_combout\ = (\inst1|reg_gen:31:regs|y\(5) & \inst1|DOUT[13]~23_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst1|reg_gen:31:regs|y\(5),
	datad => \inst1|DOUT[13]~23_combout\,
	combout => \inst1|DOUT[13]~75_combout\);

-- Location: LCCOMB_X114_Y14_N16
\inst1|reg_gen:17:regs|y[5]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|reg_gen:17:regs|y[5]~feeder_combout\ = \inst2|inst|mux_2|mux_1|mux_generate:3:mux_i|Mux2~4_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst2|inst|mux_2|mux_1|mux_generate:3:mux_i|Mux2~4_combout\,
	combout => \inst1|reg_gen:17:regs|y[5]~feeder_combout\);

-- Location: FF_X114_Y14_N17
\inst1|reg_gen:17:regs|y[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \SW17~input_o\,
	d => \inst1|reg_gen:17:regs|y[5]~feeder_combout\,
	ena => \inst1|dec_to_en\(17),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|reg_gen:17:regs|y\(5));

-- Location: FF_X114_Y15_N23
\inst1|reg_gen:21:regs|y[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \SW17~input_o\,
	asdata => \inst2|inst|mux_2|mux_1|mux_generate:3:mux_i|Mux2~4_combout\,
	sload => VCC,
	ena => \inst1|dec_to_en\(21),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|reg_gen:21:regs|y\(5));

-- Location: LCCOMB_X114_Y14_N10
\inst1|reg_gen:19:regs|y[5]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|reg_gen:19:regs|y[5]~feeder_combout\ = \inst2|inst|mux_2|mux_1|mux_generate:3:mux_i|Mux2~4_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst2|inst|mux_2|mux_1|mux_generate:3:mux_i|Mux2~4_combout\,
	combout => \inst1|reg_gen:19:regs|y[5]~feeder_combout\);

-- Location: FF_X114_Y14_N11
\inst1|reg_gen:19:regs|y[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \SW17~input_o\,
	d => \inst1|reg_gen:19:regs|y[5]~feeder_combout\,
	ena => \inst1|dec_to_en\(19),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|reg_gen:19:regs|y\(5));

-- Location: LCCOMB_X112_Y14_N28
\inst1|reg_gen:23:regs|y[5]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|reg_gen:23:regs|y[5]~feeder_combout\ = \inst2|inst|mux_2|mux_1|mux_generate:3:mux_i|Mux2~4_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst2|inst|mux_2|mux_1|mux_generate:3:mux_i|Mux2~4_combout\,
	combout => \inst1|reg_gen:23:regs|y[5]~feeder_combout\);

-- Location: FF_X112_Y14_N29
\inst1|reg_gen:23:regs|y[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \SW17~input_o\,
	d => \inst1|reg_gen:23:regs|y[5]~feeder_combout\,
	ena => \inst1|dec_to_en\(23),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|reg_gen:23:regs|y\(5));

-- Location: LCCOMB_X111_Y14_N20
\inst1|reg_gen:7:regs|y[5]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|reg_gen:7:regs|y[5]~feeder_combout\ = \inst2|inst|mux_2|mux_1|mux_generate:3:mux_i|Mux2~4_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst2|inst|mux_2|mux_1|mux_generate:3:mux_i|Mux2~4_combout\,
	combout => \inst1|reg_gen:7:regs|y[5]~feeder_combout\);

-- Location: FF_X111_Y14_N21
\inst1|reg_gen:7:regs|y[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \SW17~input_o\,
	d => \inst1|reg_gen:7:regs|y[5]~feeder_combout\,
	ena => \inst1|dec_to_en\(7),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|reg_gen:7:regs|y\(5));

-- Location: LCCOMB_X110_Y16_N18
\inst1|DOUT[13]~76\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|DOUT[13]~76_combout\ = (\inst2|inst1|alu1|mux|Mux3~1_combout\ & ((\inst1|reg_gen:7:regs|y\(5)))) # (!\inst2|inst1|alu1|mux|Mux3~1_combout\ & (\inst1|reg_gen:23:regs|y\(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst1|reg_gen:23:regs|y\(5),
	datac => \inst1|reg_gen:7:regs|y\(5),
	datad => \inst2|inst1|alu1|mux|Mux3~1_combout\,
	combout => \inst1|DOUT[13]~76_combout\);

-- Location: LCCOMB_X110_Y16_N0
\inst1|DOUT[13]~77\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|DOUT[13]~77_combout\ = (\inst2|inst1|alu0|mux|Mux2~1_combout\ & (((\inst2|inst1|alu0|mux|Mux1~3_combout\)))) # (!\inst2|inst1|alu0|mux|Mux2~1_combout\ & ((\inst2|inst1|alu0|mux|Mux1~3_combout\ & ((\inst1|DOUT[13]~76_combout\))) # 
-- (!\inst2|inst1|alu0|mux|Mux1~3_combout\ & (\inst1|reg_gen:19:regs|y\(5)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|inst1|alu0|mux|Mux2~1_combout\,
	datab => \inst1|reg_gen:19:regs|y\(5),
	datac => \inst1|DOUT[13]~76_combout\,
	datad => \inst2|inst1|alu0|mux|Mux1~3_combout\,
	combout => \inst1|DOUT[13]~77_combout\);

-- Location: LCCOMB_X110_Y16_N2
\inst1|DOUT[13]~78\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|DOUT[13]~78_combout\ = (\inst1|DOUT[13]~77_combout\ & (((\inst1|reg_gen:21:regs|y\(5)) # (!\inst2|inst1|alu0|mux|Mux2~1_combout\)))) # (!\inst1|DOUT[13]~77_combout\ & (\inst1|reg_gen:17:regs|y\(5) & ((\inst2|inst1|alu0|mux|Mux2~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|reg_gen:17:regs|y\(5),
	datab => \inst1|reg_gen:21:regs|y\(5),
	datac => \inst1|DOUT[13]~77_combout\,
	datad => \inst2|inst1|alu0|mux|Mux2~1_combout\,
	combout => \inst1|DOUT[13]~78_combout\);

-- Location: LCCOMB_X109_Y18_N18
\inst1|DOUT[13]~79\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|DOUT[13]~79_combout\ = (\inst1|DOUT[13]~78_combout\ & (\inst1|DOUT[13]~21_combout\ & (!\inst2|inst1|alu0|mux|Mux0~3_combout\ & !\inst1|DOUT[13]~23_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|DOUT[13]~78_combout\,
	datab => \inst1|DOUT[13]~21_combout\,
	datac => \inst2|inst1|alu0|mux|Mux0~3_combout\,
	datad => \inst1|DOUT[13]~23_combout\,
	combout => \inst1|DOUT[13]~79_combout\);

-- Location: LCCOMB_X109_Y18_N2
\inst1|DOUT[13]~94\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|DOUT[13]~94_combout\ = (\inst1|DOUT[13]~75_combout\) # ((\inst1|DOUT[13]~79_combout\) # ((\inst1|DOUT[13]~93_combout\ & \inst1|DOUT[15]~47_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|DOUT[13]~93_combout\,
	datab => \inst1|DOUT[15]~47_combout\,
	datac => \inst1|DOUT[13]~75_combout\,
	datad => \inst1|DOUT[13]~79_combout\,
	combout => \inst1|DOUT[13]~94_combout\);

-- Location: LCCOMB_X109_Y18_N6
\inst1|DOUT[13]$latch\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|DOUT[13]$latch~combout\ = (!\inst1|DOUT[15]~54_combout\ & ((GLOBAL(\inst1|DOUT[15]~52clkctrl_outclk\) & ((\inst1|DOUT[13]~94_combout\))) # (!GLOBAL(\inst1|DOUT[15]~52clkctrl_outclk\) & (\inst1|DOUT[13]$latch~combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001000000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|DOUT[13]$latch~combout\,
	datab => \inst1|DOUT[15]~54_combout\,
	datac => \inst1|DOUT[15]~52clkctrl_outclk\,
	datad => \inst1|DOUT[13]~94_combout\,
	combout => \inst1|DOUT[13]$latch~combout\);

-- Location: LCCOMB_X109_Y18_N0
\inst3|OUT16B[13]~24\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|OUT16B[13]~24_combout\ = (\inst|Mux5~0_combout\ & (((\inst1|DOUT[13]$latch~combout\) # (!\inst1|DOUT[15]_2612~combout\)))) # (!\inst|Mux5~0_combout\ & (\inst2|inst1|alu3|mux|Mux2~1_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111000101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|inst1|alu3|mux|Mux2~1_combout\,
	datab => \inst|Mux5~0_combout\,
	datac => \inst1|DOUT[15]_2612~combout\,
	datad => \inst1|DOUT[13]$latch~combout\,
	combout => \inst3|OUT16B[13]~24_combout\);

-- Location: FF_X109_Y18_N1
\inst2|inst|reg_gen:1:regs|reg_2|y[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \SW17~input_o\,
	d => \inst3|OUT16B[13]~24_combout\,
	ena => \inst2|inst|add_reg1_dcd|Mux3~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst2|inst|reg_gen:1:regs|reg_2|y\(5));

-- Location: LCCOMB_X108_Y19_N10
\inst2|inst|mux_2|mux_1|mux_generate:3:mux_i|Mux2~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|inst|mux_2|mux_1|mux_generate:3:mux_i|Mux2~1_combout\ = (\inst2|inst|reg_gen:1:regs|reg_2|y\(5) & (\inst4|inst1|data_out[6]~17_combout\ & !\inst4|inst1|exception~2_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|inst|reg_gen:1:regs|reg_2|y\(5),
	datac => \inst4|inst1|data_out[6]~17_combout\,
	datad => \inst4|inst1|exception~2_combout\,
	combout => \inst2|inst|mux_2|mux_1|mux_generate:3:mux_i|Mux2~1_combout\);

-- Location: LCCOMB_X108_Y19_N24
\inst2|inst|mux_2|mux_1|mux_generate:3:mux_i|Mux2~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|inst|mux_2|mux_1|mux_generate:3:mux_i|Mux2~2_combout\ = (\inst2|inst|mux_2|mux_1|mux_generate:0:mux_i|Mux2~3_combout\ & ((\inst2|inst|mux_2|mux_1|mux_generate:0:mux_i|Mux2~4_combout\ & ((\inst2|inst|reg_gen:6:regs|reg_2|y\(5)))) # 
-- (!\inst2|inst|mux_2|mux_1|mux_generate:0:mux_i|Mux2~4_combout\ & (\inst2|inst|mux_2|mux_1|mux_generate:3:mux_i|Mux2~1_combout\)))) # (!\inst2|inst|mux_2|mux_1|mux_generate:0:mux_i|Mux2~3_combout\ & 
-- (((!\inst2|inst|mux_2|mux_1|mux_generate:0:mux_i|Mux2~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000010111011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|inst|mux_2|mux_1|mux_generate:3:mux_i|Mux2~1_combout\,
	datab => \inst2|inst|mux_2|mux_1|mux_generate:0:mux_i|Mux2~3_combout\,
	datac => \inst2|inst|reg_gen:6:regs|reg_2|y\(5),
	datad => \inst2|inst|mux_2|mux_1|mux_generate:0:mux_i|Mux2~4_combout\,
	combout => \inst2|inst|mux_2|mux_1|mux_generate:3:mux_i|Mux2~2_combout\);

-- Location: LCCOMB_X108_Y19_N20
\inst2|inst|mux_2|mux_1|mux_generate:3:mux_i|Mux2~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|inst|mux_2|mux_1|mux_generate:3:mux_i|Mux2~3_combout\ = (\inst2|inst|mux_2|mux_1|mux_generate:0:mux_i|Mux2~1_combout\ & (\inst2|inst|mux_2|mux_1|mux_generate:3:mux_i|Mux2~2_combout\)) # (!\inst2|inst|mux_2|mux_1|mux_generate:0:mux_i|Mux2~1_combout\ 
-- & ((\inst2|inst|mux_2|mux_1|mux_generate:3:mux_i|Mux2~2_combout\ & ((\inst2|inst|reg_gen:4:regs|reg_2|y\(5)))) # (!\inst2|inst|mux_2|mux_1|mux_generate:3:mux_i|Mux2~2_combout\ & (\inst2|inst|reg_gen:5:regs|reg_2|y\(5)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|inst|mux_2|mux_1|mux_generate:0:mux_i|Mux2~1_combout\,
	datab => \inst2|inst|mux_2|mux_1|mux_generate:3:mux_i|Mux2~2_combout\,
	datac => \inst2|inst|reg_gen:5:regs|reg_2|y\(5),
	datad => \inst2|inst|reg_gen:4:regs|reg_2|y\(5),
	combout => \inst2|inst|mux_2|mux_1|mux_generate:3:mux_i|Mux2~3_combout\);

-- Location: LCCOMB_X108_Y18_N0
\inst2|inst|mux_2|mux_1|mux_generate:3:mux_i|Mux2~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|inst|mux_2|mux_1|mux_generate:3:mux_i|Mux2~0_combout\ = (\inst4|inst1|data_out[6]~17_combout\ & ((\inst4|inst1|exception~2_combout\ & (\inst2|inst|reg_gen:2:regs|reg_2|y\(5))) # (!\inst4|inst1|exception~2_combout\ & 
-- ((\inst2|inst|reg_gen:3:regs|reg_2|y\(5)))))) # (!\inst4|inst1|data_out[6]~17_combout\ & (\inst2|inst|reg_gen:2:regs|reg_2|y\(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|inst1|data_out[6]~17_combout\,
	datab => \inst2|inst|reg_gen:2:regs|reg_2|y\(5),
	datac => \inst2|inst|reg_gen:3:regs|reg_2|y\(5),
	datad => \inst4|inst1|exception~2_combout\,
	combout => \inst2|inst|mux_2|mux_1|mux_generate:3:mux_i|Mux2~0_combout\);

-- Location: LCCOMB_X108_Y19_N16
\inst2|inst|mux_2|mux_1|mux_generate:3:mux_i|Mux2~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|inst|mux_2|mux_1|mux_generate:3:mux_i|Mux2~4_combout\ = (\inst2|inst|mux_2|mux_1|mux_generate:0:mux_i|Mux2~7_combout\ & ((\inst2|inst|mux_2|mux_1|mux_generate:3:mux_i|Mux2~0_combout\))) # 
-- (!\inst2|inst|mux_2|mux_1|mux_generate:0:mux_i|Mux2~7_combout\ & (\inst2|inst|mux_2|mux_1|mux_generate:3:mux_i|Mux2~3_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|inst|mux_2|mux_1|mux_generate:0:mux_i|Mux2~7_combout\,
	datac => \inst2|inst|mux_2|mux_1|mux_generate:3:mux_i|Mux2~3_combout\,
	datad => \inst2|inst|mux_2|mux_1|mux_generate:3:mux_i|Mux2~0_combout\,
	combout => \inst2|inst|mux_2|mux_1|mux_generate:3:mux_i|Mux2~4_combout\);

-- Location: LCCOMB_X114_Y16_N20
\inst1|reg_gen:25:regs|y[5]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|reg_gen:25:regs|y[5]~feeder_combout\ = \inst2|inst|mux_2|mux_1|mux_generate:3:mux_i|Mux2~4_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst2|inst|mux_2|mux_1|mux_generate:3:mux_i|Mux2~4_combout\,
	combout => \inst1|reg_gen:25:regs|y[5]~feeder_combout\);

-- Location: FF_X114_Y16_N21
\inst1|reg_gen:25:regs|y[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \SW17~input_o\,
	d => \inst1|reg_gen:25:regs|y[5]~feeder_combout\,
	ena => \inst1|dec_to_en\(25),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|reg_gen:25:regs|y\(5));

-- Location: LCCOMB_X114_Y19_N12
\inst1|reg_gen:9:regs|y[5]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|reg_gen:9:regs|y[5]~feeder_combout\ = \inst2|inst|mux_2|mux_1|mux_generate:3:mux_i|Mux2~4_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst2|inst|mux_2|mux_1|mux_generate:3:mux_i|Mux2~4_combout\,
	combout => \inst1|reg_gen:9:regs|y[5]~feeder_combout\);

-- Location: FF_X114_Y19_N13
\inst1|reg_gen:9:regs|y[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \SW17~input_o\,
	d => \inst1|reg_gen:9:regs|y[5]~feeder_combout\,
	ena => \inst1|dec_to_en\(9),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|reg_gen:9:regs|y\(5));

-- Location: LCCOMB_X112_Y19_N16
\inst1|DOUT[13]~90\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|DOUT[13]~90_combout\ = (\inst2|inst1|alu1|mux|Mux3~1_combout\ & (((\inst1|reg_gen:9:regs|y\(5)) # (\inst2|inst1|alu0|mux|Mux1~3_combout\)))) # (!\inst2|inst1|alu1|mux|Mux3~1_combout\ & (\inst1|reg_gen:25:regs|y\(5) & 
-- ((!\inst2|inst1|alu0|mux|Mux1~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|reg_gen:25:regs|y\(5),
	datab => \inst1|reg_gen:9:regs|y\(5),
	datac => \inst2|inst1|alu1|mux|Mux3~1_combout\,
	datad => \inst2|inst1|alu0|mux|Mux1~3_combout\,
	combout => \inst1|DOUT[13]~90_combout\);

-- Location: FF_X112_Y15_N19
\inst1|reg_gen:13:regs|y[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \SW17~input_o\,
	asdata => \inst2|inst|mux_2|mux_1|mux_generate:3:mux_i|Mux2~4_combout\,
	sload => VCC,
	ena => \inst1|dec_to_en\(13),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|reg_gen:13:regs|y\(5));

-- Location: LCCOMB_X113_Y17_N8
\inst1|reg_gen:29:regs|y[5]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|reg_gen:29:regs|y[5]~feeder_combout\ = \inst2|inst|mux_2|mux_1|mux_generate:3:mux_i|Mux2~4_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst2|inst|mux_2|mux_1|mux_generate:3:mux_i|Mux2~4_combout\,
	combout => \inst1|reg_gen:29:regs|y[5]~feeder_combout\);

-- Location: FF_X113_Y17_N9
\inst1|reg_gen:29:regs|y[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \SW17~input_o\,
	d => \inst1|reg_gen:29:regs|y[5]~feeder_combout\,
	ena => \inst1|dec_to_en\(29),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|reg_gen:29:regs|y\(5));

-- Location: LCCOMB_X112_Y19_N26
\inst1|DOUT[13]~91\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|DOUT[13]~91_combout\ = (\inst1|DOUT[13]~90_combout\ & ((\inst1|reg_gen:13:regs|y\(5)) # ((!\inst2|inst1|alu0|mux|Mux1~3_combout\)))) # (!\inst1|DOUT[13]~90_combout\ & (((\inst1|reg_gen:29:regs|y\(5) & \inst2|inst1|alu0|mux|Mux1~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|DOUT[13]~90_combout\,
	datab => \inst1|reg_gen:13:regs|y\(5),
	datac => \inst1|reg_gen:29:regs|y\(5),
	datad => \inst2|inst1|alu0|mux|Mux1~3_combout\,
	combout => \inst1|DOUT[13]~91_combout\);

-- Location: LCCOMB_X112_Y20_N4
\inst1|DOUT[5]~220\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|DOUT[5]~220_combout\ = (\inst1|DOUT[5]~22_combout\ & (((\inst1|DOUT[5]~201_combout\) # (\inst1|DOUT[13]~80_combout\)))) # (!\inst1|DOUT[5]~22_combout\ & (\inst1|DOUT[13]~91_combout\ & (!\inst1|DOUT[5]~201_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111011000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|DOUT[13]~91_combout\,
	datab => \inst1|DOUT[5]~22_combout\,
	datac => \inst1|DOUT[5]~201_combout\,
	datad => \inst1|DOUT[13]~80_combout\,
	combout => \inst1|DOUT[5]~220_combout\);

-- Location: LCCOMB_X112_Y20_N18
\inst1|DOUT[5]~221\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|DOUT[5]~221_combout\ = (\inst1|DOUT[5]~220_combout\ & (((\inst1|DOUT[13]~84_combout\) # (!\inst1|DOUT[5]~201_combout\)))) # (!\inst1|DOUT[5]~220_combout\ & (\inst1|DOUT[13]~87_combout\ & ((\inst1|DOUT[5]~201_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|DOUT[5]~220_combout\,
	datab => \inst1|DOUT[13]~87_combout\,
	datac => \inst1|DOUT[13]~84_combout\,
	datad => \inst1|DOUT[5]~201_combout\,
	combout => \inst1|DOUT[5]~221_combout\);

-- Location: LCCOMB_X111_Y20_N18
\inst1|DOUT[5]~219\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|DOUT[5]~219_combout\ = (\inst1|DOUT[13]~34_combout\ & (((\inst1|DOUT[13]~78_combout\) # (\inst1|DOUT[13]~29_combout\)))) # (!\inst1|DOUT[13]~34_combout\ & (\inst1|DOUT[13]~88_combout\ & ((!\inst1|DOUT[13]~29_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|DOUT[13]~88_combout\,
	datab => \inst1|DOUT[13]~78_combout\,
	datac => \inst1|DOUT[13]~34_combout\,
	datad => \inst1|DOUT[13]~29_combout\,
	combout => \inst1|DOUT[5]~219_combout\);

-- Location: LCCOMB_X111_Y20_N4
\inst1|DOUT[5]~222\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|DOUT[5]~222_combout\ = (\inst1|DOUT[13]~29_combout\ & ((\inst1|DOUT[5]~219_combout\ & (\inst1|DOUT[5]~221_combout\)) # (!\inst1|DOUT[5]~219_combout\ & ((\inst1|reg_gen:15:regs|y\(5)))))) # (!\inst1|DOUT[13]~29_combout\ & 
-- (((\inst1|DOUT[5]~219_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|DOUT[13]~29_combout\,
	datab => \inst1|DOUT[5]~221_combout\,
	datac => \inst1|reg_gen:15:regs|y\(5),
	datad => \inst1|DOUT[5]~219_combout\,
	combout => \inst1|DOUT[5]~222_combout\);

-- Location: LCCOMB_X110_Y20_N10
\inst1|DOUT[5]~223\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|DOUT[5]~223_combout\ = (\inst1|DOUT[5]~218_combout\) # ((\inst1|DOUT[7]~205_combout\ & \inst1|DOUT[5]~222_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst1|DOUT[7]~205_combout\,
	datac => \inst1|DOUT[5]~218_combout\,
	datad => \inst1|DOUT[5]~222_combout\,
	combout => \inst1|DOUT[5]~223_combout\);

-- Location: LCCOMB_X110_Y20_N14
\inst1|DOUT[5]$latch\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|DOUT[5]$latch~combout\ = (!\inst1|DOUT[7]~266_combout\ & ((GLOBAL(\inst1|DOUT[15]~51clkctrl_outclk\) & ((\inst1|DOUT[5]~223_combout\))) # (!GLOBAL(\inst1|DOUT[15]~51clkctrl_outclk\) & (\inst1|DOUT[5]$latch~combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010000000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|DOUT[7]~266_combout\,
	datab => \inst1|DOUT[5]$latch~combout\,
	datac => \inst1|DOUT[15]~51clkctrl_outclk\,
	datad => \inst1|DOUT[5]~223_combout\,
	combout => \inst1|DOUT[5]$latch~combout\);

-- Location: LCCOMB_X106_Y21_N22
\inst2|inst2|OUT16B[5]~25\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|inst2|OUT16B[5]~25_combout\ = (\inst|Mux7~0_combout\ & (!\inst4|inst1|data_out[5]~5_combout\ & (!\inst4|inst1|exception~2_combout\))) # (!\inst|Mux7~0_combout\ & (((\inst2|inst|mux_2|mux_1|mux_generate:1:mux_i|Mux2~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011011100000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|inst1|data_out[5]~5_combout\,
	datab => \inst|Mux7~0_combout\,
	datac => \inst4|inst1|exception~2_combout\,
	datad => \inst2|inst|mux_2|mux_1|mux_generate:1:mux_i|Mux2~4_combout\,
	combout => \inst2|inst2|OUT16B[5]~25_combout\);

-- Location: LCCOMB_X109_Y23_N24
\inst2|inst1|alu1|mux|Mux2~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|inst1|alu1|mux|Mux2~0_combout\ = (!\inst2|inst3|DOUT[1]~4_combout\ & ((\inst2|inst|mux_1|mux_1|mux_generate:1:mux_i|Mux2~5_combout\ & ((\inst2|inst3|DOUT[0]~2_combout\) # (\inst2|inst2|OUT16B[5]~25_combout\))) # 
-- (!\inst2|inst|mux_1|mux_1|mux_generate:1:mux_i|Mux2~5_combout\ & (\inst2|inst3|DOUT[0]~2_combout\ & \inst2|inst2|OUT16B[5]~25_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|inst3|DOUT[1]~4_combout\,
	datab => \inst2|inst|mux_1|mux_1|mux_generate:1:mux_i|Mux2~5_combout\,
	datac => \inst2|inst3|DOUT[0]~2_combout\,
	datad => \inst2|inst2|OUT16B[5]~25_combout\,
	combout => \inst2|inst1|alu1|mux|Mux2~0_combout\);

-- Location: LCCOMB_X106_Y22_N8
\inst2|inst|mux_1|mux_1|mux_generate:1:mux_i|Mux3~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|inst|mux_1|mux_1|mux_generate:1:mux_i|Mux3~2_combout\ = (\inst4|inst1|exception~2_combout\ & (((\inst2|inst|reg_gen:2:regs|reg_1|y\(4))))) # (!\inst4|inst1|exception~2_combout\ & ((\inst4|inst1|data_out[9]~14_combout\ & 
-- (\inst2|inst|reg_gen:3:regs|reg_1|y\(4))) # (!\inst4|inst1|data_out[9]~14_combout\ & ((\inst2|inst|reg_gen:2:regs|reg_1|y\(4))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110001011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|inst|reg_gen:3:regs|reg_1|y\(4),
	datab => \inst4|inst1|exception~2_combout\,
	datac => \inst2|inst|reg_gen:2:regs|reg_1|y\(4),
	datad => \inst4|inst1|data_out[9]~14_combout\,
	combout => \inst2|inst|mux_1|mux_1|mux_generate:1:mux_i|Mux3~2_combout\);

-- Location: LCCOMB_X108_Y20_N30
\inst2|inst|mux_1|mux_1|mux_generate:1:mux_i|Mux3~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|inst|mux_1|mux_1|mux_generate:1:mux_i|Mux3~6_combout\ = (\inst2|inst|reg_gen:1:regs|reg_1|y\(4) & (!\inst4|inst1|exception~2_combout\ & ((\inst4|inst1|data_out[9]~13_combout\) # (\inst4|inst|reg|reg_1|y\(5)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101000001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|inst|reg_gen:1:regs|reg_1|y\(4),
	datab => \inst4|inst1|data_out[9]~13_combout\,
	datac => \inst4|inst1|exception~2_combout\,
	datad => \inst4|inst|reg|reg_1|y\(5),
	combout => \inst2|inst|mux_1|mux_1|mux_generate:1:mux_i|Mux3~6_combout\);

-- Location: LCCOMB_X108_Y20_N20
\inst2|inst|mux_1|mux_1|mux_generate:1:mux_i|Mux3~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|inst|mux_1|mux_1|mux_generate:1:mux_i|Mux3~3_combout\ = (\inst2|inst|mux_1|mux_1|mux_generate:3:mux_i|Mux3~6_combout\ & (((\inst2|inst|reg_gen:6:regs|reg_1|y\(4) & \inst2|inst|mux_1|mux_1|mux_generate:3:mux_i|Mux3~5_combout\)))) # 
-- (!\inst2|inst|mux_1|mux_1|mux_generate:3:mux_i|Mux3~6_combout\ & ((\inst2|inst|mux_1|mux_1|mux_generate:1:mux_i|Mux3~6_combout\) # ((!\inst2|inst|mux_1|mux_1|mux_generate:3:mux_i|Mux3~5_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100101000001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|inst|mux_1|mux_1|mux_generate:1:mux_i|Mux3~6_combout\,
	datab => \inst2|inst|reg_gen:6:regs|reg_1|y\(4),
	datac => \inst2|inst|mux_1|mux_1|mux_generate:3:mux_i|Mux3~6_combout\,
	datad => \inst2|inst|mux_1|mux_1|mux_generate:3:mux_i|Mux3~5_combout\,
	combout => \inst2|inst|mux_1|mux_1|mux_generate:1:mux_i|Mux3~3_combout\);

-- Location: LCCOMB_X108_Y20_N2
\inst2|inst|mux_1|mux_1|mux_generate:1:mux_i|Mux3~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|inst|mux_1|mux_1|mux_generate:1:mux_i|Mux3~4_combout\ = (\inst2|inst|mux_1|mux_1|mux_generate:3:mux_i|Mux3~4_combout\ & (((\inst2|inst|mux_1|mux_1|mux_generate:1:mux_i|Mux3~3_combout\)))) # 
-- (!\inst2|inst|mux_1|mux_1|mux_generate:3:mux_i|Mux3~4_combout\ & ((\inst2|inst|mux_1|mux_1|mux_generate:1:mux_i|Mux3~3_combout\ & (\inst2|inst|reg_gen:4:regs|reg_1|y\(4))) # (!\inst2|inst|mux_1|mux_1|mux_generate:1:mux_i|Mux3~3_combout\ & 
-- ((\inst2|inst|reg_gen:5:regs|reg_1|y\(4))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|inst|reg_gen:4:regs|reg_1|y\(4),
	datab => \inst2|inst|mux_1|mux_1|mux_generate:3:mux_i|Mux3~4_combout\,
	datac => \inst2|inst|reg_gen:5:regs|reg_1|y\(4),
	datad => \inst2|inst|mux_1|mux_1|mux_generate:1:mux_i|Mux3~3_combout\,
	combout => \inst2|inst|mux_1|mux_1|mux_generate:1:mux_i|Mux3~4_combout\);

-- Location: LCCOMB_X108_Y21_N10
\inst2|inst|mux_1|mux_1|mux_generate:1:mux_i|Mux3~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|inst|mux_1|mux_1|mux_generate:1:mux_i|Mux3~5_combout\ = (\inst2|inst|mux_1|mux_1|mux_generate:3:mux_i|Mux3~12_combout\ & (\inst2|inst|mux_1|mux_1|mux_generate:1:mux_i|Mux3~2_combout\)) # 
-- (!\inst2|inst|mux_1|mux_1|mux_generate:3:mux_i|Mux3~12_combout\ & ((\inst2|inst|mux_1|mux_1|mux_generate:1:mux_i|Mux3~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst2|inst|mux_1|mux_1|mux_generate:3:mux_i|Mux3~12_combout\,
	datac => \inst2|inst|mux_1|mux_1|mux_generate:1:mux_i|Mux3~2_combout\,
	datad => \inst2|inst|mux_1|mux_1|mux_generate:1:mux_i|Mux3~4_combout\,
	combout => \inst2|inst|mux_1|mux_1|mux_generate:1:mux_i|Mux3~5_combout\);

-- Location: LCCOMB_X106_Y21_N10
\inst4|inst1|INS_OUT[3]~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|inst1|INS_OUT[3]~9_combout\ = (!\inst4|inst1|exception~2_combout\ & (\inst4|inst1|data_out[3]~9_combout\ & (\inst4|inst|reg|reg_1|y\(1) $ (\inst4|inst|reg|reg_1|y\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001001000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|inst|reg|reg_1|y\(1),
	datab => \inst4|inst1|exception~2_combout\,
	datac => \inst4|inst|reg|reg_1|y\(3),
	datad => \inst4|inst1|data_out[3]~9_combout\,
	combout => \inst4|inst1|INS_OUT[3]~9_combout\);

-- Location: LCCOMB_X107_Y21_N10
\inst2|inst2|OUT16B[3]~20\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|inst2|OUT16B[3]~20_combout\ = (\inst|Mux7~0_combout\ & ((\inst4|inst1|INS_OUT[3]~9_combout\))) # (!\inst|Mux7~0_combout\ & (\inst2|inst|mux_2|mux_1|mux_generate:0:mux_i|Mux0~4_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Mux7~0_combout\,
	datac => \inst2|inst|mux_2|mux_1|mux_generate:0:mux_i|Mux0~4_combout\,
	datad => \inst4|inst1|INS_OUT[3]~9_combout\,
	combout => \inst2|inst2|OUT16B[3]~20_combout\);

-- Location: LCCOMB_X109_Y21_N16
\inst2|inst1|alu0|adder|C[3]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|inst1|alu0|adder|C[3]~2_combout\ = (\inst2|inst|mux_1|mux_1|mux_generate:0:mux_i|Mux1~5_combout\ & ((\inst2|inst1|alu0|adder|C[2]~1_combout\) # (\inst2|inst3|DOUT[2]~3_combout\ $ (\inst2|inst2|OUT16B[2]~17_combout\)))) # 
-- (!\inst2|inst|mux_1|mux_1|mux_generate:0:mux_i|Mux1~5_combout\ & (\inst2|inst1|alu0|adder|C[2]~1_combout\ & (\inst2|inst3|DOUT[2]~3_combout\ $ (\inst2|inst2|OUT16B[2]~17_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101111001001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|inst3|DOUT[2]~3_combout\,
	datab => \inst2|inst|mux_1|mux_1|mux_generate:0:mux_i|Mux1~5_combout\,
	datac => \inst2|inst2|OUT16B[2]~17_combout\,
	datad => \inst2|inst1|alu0|adder|C[2]~1_combout\,
	combout => \inst2|inst1|alu0|adder|C[3]~2_combout\);

-- Location: LCCOMB_X109_Y21_N26
\inst2|inst1|alu0|adder|C4~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|inst1|alu0|adder|C4~0_combout\ = (\inst2|inst|mux_1|mux_1|mux_generate:0:mux_i|Mux0~5_combout\ & ((\inst2|inst1|alu0|adder|C[3]~2_combout\) # (\inst2|inst3|DOUT[2]~3_combout\ $ (\inst2|inst2|OUT16B[3]~20_combout\)))) # 
-- (!\inst2|inst|mux_1|mux_1|mux_generate:0:mux_i|Mux0~5_combout\ & (\inst2|inst1|alu0|adder|C[3]~2_combout\ & (\inst2|inst3|DOUT[2]~3_combout\ $ (\inst2|inst2|OUT16B[3]~20_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111011001100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|inst3|DOUT[2]~3_combout\,
	datab => \inst2|inst2|OUT16B[3]~20_combout\,
	datac => \inst2|inst|mux_1|mux_1|mux_generate:0:mux_i|Mux0~5_combout\,
	datad => \inst2|inst1|alu0|adder|C[3]~2_combout\,
	combout => \inst2|inst1|alu0|adder|C4~0_combout\);

-- Location: LCCOMB_X107_Y21_N30
\inst2|inst2|OUT16B[4]~19\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|inst2|OUT16B[4]~19_combout\ = (\inst|Mux7~0_combout\ & (\inst4|inst1|INS_OUT[4]~8_combout\)) # (!\inst|Mux7~0_combout\ & ((\inst2|inst|mux_2|mux_1|mux_generate:1:mux_i|Mux3~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100011011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Mux7~0_combout\,
	datab => \inst4|inst1|INS_OUT[4]~8_combout\,
	datac => \inst2|inst|mux_2|mux_1|mux_generate:1:mux_i|Mux3~4_combout\,
	combout => \inst2|inst2|OUT16B[4]~19_combout\);

-- Location: LCCOMB_X109_Y21_N2
\inst2|inst1|alu1|adder|C[1]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|inst1|alu1|adder|C[1]~0_combout\ = (\inst2|inst|mux_1|mux_1|mux_generate:1:mux_i|Mux3~5_combout\ & ((\inst2|inst1|alu0|adder|C4~0_combout\) # (\inst2|inst3|DOUT[2]~3_combout\ $ (\inst2|inst2|OUT16B[4]~19_combout\)))) # 
-- (!\inst2|inst|mux_1|mux_1|mux_generate:1:mux_i|Mux3~5_combout\ & (\inst2|inst1|alu0|adder|C4~0_combout\ & (\inst2|inst3|DOUT[2]~3_combout\ $ (\inst2|inst2|OUT16B[4]~19_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011001011101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|inst|mux_1|mux_1|mux_generate:1:mux_i|Mux3~5_combout\,
	datab => \inst2|inst3|DOUT[2]~3_combout\,
	datac => \inst2|inst1|alu0|adder|C4~0_combout\,
	datad => \inst2|inst2|OUT16B[4]~19_combout\,
	combout => \inst2|inst1|alu1|adder|C[1]~0_combout\);

-- Location: LCCOMB_X109_Y23_N20
\inst2|inst1|alu1|adder|S[1]\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|inst1|alu1|adder|S\(1) = \inst2|inst3|DOUT[2]~3_combout\ $ (\inst2|inst|mux_1|mux_1|mux_generate:1:mux_i|Mux2~5_combout\ $ (\inst2|inst1|alu1|adder|C[1]~0_combout\ $ (\inst2|inst2|OUT16B[5]~25_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|inst3|DOUT[2]~3_combout\,
	datab => \inst2|inst|mux_1|mux_1|mux_generate:1:mux_i|Mux2~5_combout\,
	datac => \inst2|inst1|alu1|adder|C[1]~0_combout\,
	datad => \inst2|inst2|OUT16B[5]~25_combout\,
	combout => \inst2|inst1|alu1|adder|S\(1));

-- Location: LCCOMB_X109_Y23_N18
\inst2|inst1|alu1|mux|Mux2~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|inst1|alu1|mux|Mux2~1_combout\ = (\inst2|inst1|alu1|mux|Mux2~0_combout\) # ((\inst2|inst1|alu1|adder|S\(1) & \inst2|inst1|alu0|mux|Mux1~4_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|inst1|alu1|mux|Mux2~0_combout\,
	datab => \inst2|inst1|alu1|adder|S\(1),
	datad => \inst2|inst1|alu0|mux|Mux1~4_combout\,
	combout => \inst2|inst1|alu1|mux|Mux2~1_combout\);

-- Location: LCCOMB_X110_Y20_N8
\inst3|OUT16B[5]~32\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|OUT16B[5]~32_combout\ = (\inst|Mux5~0_combout\ & (((\inst1|DOUT[5]$latch~combout\)) # (!\inst1|DOUT[7]_2052~combout\))) # (!\inst|Mux5~0_combout\ & (((\inst2|inst1|alu1|mux|Mux2~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111011110100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Mux5~0_combout\,
	datab => \inst1|DOUT[7]_2052~combout\,
	datac => \inst1|DOUT[5]$latch~combout\,
	datad => \inst2|inst1|alu1|mux|Mux2~1_combout\,
	combout => \inst3|OUT16B[5]~32_combout\);

-- Location: FF_X108_Y21_N19
\inst2|inst|reg_gen:3:regs|reg_1|y[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \SW17~input_o\,
	asdata => \inst3|OUT16B[5]~32_combout\,
	sload => VCC,
	ena => \inst2|inst|add_reg1_dcd|Mux3~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst2|inst|reg_gen:3:regs|reg_1|y\(5));

-- Location: LCCOMB_X108_Y21_N18
\inst2|inst|mux_1|mux_1|mux_generate:1:mux_i|Mux2~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|inst|mux_1|mux_1|mux_generate:1:mux_i|Mux2~2_combout\ = (\inst4|inst1|exception~2_combout\ & (((\inst2|inst|reg_gen:2:regs|reg_1|y\(5))))) # (!\inst4|inst1|exception~2_combout\ & ((\inst4|inst1|data_out[9]~14_combout\ & 
-- (\inst2|inst|reg_gen:3:regs|reg_1|y\(5))) # (!\inst4|inst1|data_out[9]~14_combout\ & ((\inst2|inst|reg_gen:2:regs|reg_1|y\(5))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101101000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|inst1|exception~2_combout\,
	datab => \inst4|inst1|data_out[9]~14_combout\,
	datac => \inst2|inst|reg_gen:3:regs|reg_1|y\(5),
	datad => \inst2|inst|reg_gen:2:regs|reg_1|y\(5),
	combout => \inst2|inst|mux_1|mux_1|mux_generate:1:mux_i|Mux2~2_combout\);

-- Location: LCCOMB_X109_Y22_N0
\inst2|inst|mux_1|mux_1|mux_generate:1:mux_i|Mux2~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|inst|mux_1|mux_1|mux_generate:1:mux_i|Mux2~6_combout\ = (\inst2|inst|reg_gen:1:regs|reg_1|y\(5) & (!\inst4|inst1|exception~2_combout\ & ((\inst4|inst1|data_out[9]~13_combout\) # (\inst4|inst|reg|reg_1|y\(5)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010001000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|inst|reg_gen:1:regs|reg_1|y\(5),
	datab => \inst4|inst1|exception~2_combout\,
	datac => \inst4|inst1|data_out[9]~13_combout\,
	datad => \inst4|inst|reg|reg_1|y\(5),
	combout => \inst2|inst|mux_1|mux_1|mux_generate:1:mux_i|Mux2~6_combout\);

-- Location: LCCOMB_X109_Y22_N14
\inst2|inst|mux_1|mux_1|mux_generate:1:mux_i|Mux2~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|inst|mux_1|mux_1|mux_generate:1:mux_i|Mux2~3_combout\ = (\inst2|inst|mux_1|mux_1|mux_generate:3:mux_i|Mux3~5_combout\ & ((\inst2|inst|mux_1|mux_1|mux_generate:3:mux_i|Mux3~6_combout\ & ((\inst2|inst|reg_gen:6:regs|reg_1|y\(5)))) # 
-- (!\inst2|inst|mux_1|mux_1|mux_generate:3:mux_i|Mux3~6_combout\ & (\inst2|inst|mux_1|mux_1|mux_generate:1:mux_i|Mux2~6_combout\)))) # (!\inst2|inst|mux_1|mux_1|mux_generate:3:mux_i|Mux3~5_combout\ & 
-- (((!\inst2|inst|mux_1|mux_1|mux_generate:3:mux_i|Mux3~6_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000010111011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|inst|mux_1|mux_1|mux_generate:1:mux_i|Mux2~6_combout\,
	datab => \inst2|inst|mux_1|mux_1|mux_generate:3:mux_i|Mux3~5_combout\,
	datac => \inst2|inst|reg_gen:6:regs|reg_1|y\(5),
	datad => \inst2|inst|mux_1|mux_1|mux_generate:3:mux_i|Mux3~6_combout\,
	combout => \inst2|inst|mux_1|mux_1|mux_generate:1:mux_i|Mux2~3_combout\);

-- Location: LCCOMB_X108_Y21_N30
\inst2|inst|mux_1|mux_1|mux_generate:1:mux_i|Mux2~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|inst|mux_1|mux_1|mux_generate:1:mux_i|Mux2~4_combout\ = (\inst2|inst|mux_1|mux_1|mux_generate:3:mux_i|Mux3~4_combout\ & (((\inst2|inst|mux_1|mux_1|mux_generate:1:mux_i|Mux2~3_combout\)))) # 
-- (!\inst2|inst|mux_1|mux_1|mux_generate:3:mux_i|Mux3~4_combout\ & ((\inst2|inst|mux_1|mux_1|mux_generate:1:mux_i|Mux2~3_combout\ & ((\inst2|inst|reg_gen:4:regs|reg_1|y\(5)))) # (!\inst2|inst|mux_1|mux_1|mux_generate:1:mux_i|Mux2~3_combout\ & 
-- (\inst2|inst|reg_gen:5:regs|reg_1|y\(5)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|inst|mux_1|mux_1|mux_generate:3:mux_i|Mux3~4_combout\,
	datab => \inst2|inst|reg_gen:5:regs|reg_1|y\(5),
	datac => \inst2|inst|reg_gen:4:regs|reg_1|y\(5),
	datad => \inst2|inst|mux_1|mux_1|mux_generate:1:mux_i|Mux2~3_combout\,
	combout => \inst2|inst|mux_1|mux_1|mux_generate:1:mux_i|Mux2~4_combout\);

-- Location: LCCOMB_X108_Y21_N14
\inst2|inst|mux_1|mux_1|mux_generate:1:mux_i|Mux2~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|inst|mux_1|mux_1|mux_generate:1:mux_i|Mux2~5_combout\ = (\inst2|inst|mux_1|mux_1|mux_generate:3:mux_i|Mux3~12_combout\ & (\inst2|inst|mux_1|mux_1|mux_generate:1:mux_i|Mux2~2_combout\)) # 
-- (!\inst2|inst|mux_1|mux_1|mux_generate:3:mux_i|Mux3~12_combout\ & ((\inst2|inst|mux_1|mux_1|mux_generate:1:mux_i|Mux2~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst2|inst|mux_1|mux_1|mux_generate:1:mux_i|Mux2~2_combout\,
	datac => \inst2|inst|mux_1|mux_1|mux_generate:1:mux_i|Mux2~4_combout\,
	datad => \inst2|inst|mux_1|mux_1|mux_generate:3:mux_i|Mux3~12_combout\,
	combout => \inst2|inst|mux_1|mux_1|mux_generate:1:mux_i|Mux2~5_combout\);

-- Location: LCCOMB_X109_Y21_N20
\inst2|inst1|alu1|adder|C[2]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|inst1|alu1|adder|C[2]~1_combout\ = (\inst2|inst|mux_1|mux_1|mux_generate:1:mux_i|Mux2~5_combout\ & ((\inst2|inst1|alu1|adder|C[1]~0_combout\) # (\inst2|inst2|OUT16B[5]~25_combout\ $ (\inst2|inst3|DOUT[2]~3_combout\)))) # 
-- (!\inst2|inst|mux_1|mux_1|mux_generate:1:mux_i|Mux2~5_combout\ & (\inst2|inst1|alu1|adder|C[1]~0_combout\ & (\inst2|inst2|OUT16B[5]~25_combout\ $ (\inst2|inst3|DOUT[2]~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011111000101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|inst|mux_1|mux_1|mux_generate:1:mux_i|Mux2~5_combout\,
	datab => \inst2|inst2|OUT16B[5]~25_combout\,
	datac => \inst2|inst3|DOUT[2]~3_combout\,
	datad => \inst2|inst1|alu1|adder|C[1]~0_combout\,
	combout => \inst2|inst1|alu1|adder|C[2]~1_combout\);

-- Location: LCCOMB_X106_Y22_N26
\inst2|inst|reg_gen:2:regs|reg_1|y[6]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|inst|reg_gen:2:regs|reg_1|y[6]~feeder_combout\ = \inst3|OUT16B[6]~31_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst3|OUT16B[6]~31_combout\,
	combout => \inst2|inst|reg_gen:2:regs|reg_1|y[6]~feeder_combout\);

-- Location: FF_X106_Y22_N27
\inst2|inst|reg_gen:2:regs|reg_1|y[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \SW17~input_o\,
	d => \inst2|inst|reg_gen:2:regs|reg_1|y[6]~feeder_combout\,
	ena => \inst2|inst|add_reg1_dcd|Mux3~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst2|inst|reg_gen:2:regs|reg_1|y\(6));

-- Location: LCCOMB_X106_Y22_N14
\inst2|inst|mux_2|mux_1|mux_generate:1:mux_i|Mux1~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|inst|mux_2|mux_1|mux_generate:1:mux_i|Mux1~0_combout\ = (\inst4|inst1|exception~2_combout\ & (((\inst2|inst|reg_gen:2:regs|reg_1|y\(6))))) # (!\inst4|inst1|exception~2_combout\ & ((\inst4|inst1|data_out[6]~17_combout\ & 
-- (\inst2|inst|reg_gen:3:regs|reg_1|y\(6))) # (!\inst4|inst1|data_out[6]~17_combout\ & ((\inst2|inst|reg_gen:2:regs|reg_1|y\(6))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|inst1|exception~2_combout\,
	datab => \inst2|inst|reg_gen:3:regs|reg_1|y\(6),
	datac => \inst2|inst|reg_gen:2:regs|reg_1|y\(6),
	datad => \inst4|inst1|data_out[6]~17_combout\,
	combout => \inst2|inst|mux_2|mux_1|mux_generate:1:mux_i|Mux1~0_combout\);

-- Location: FF_X107_Y19_N31
\inst2|inst|reg_gen:6:regs|reg_1|y[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \SW17~input_o\,
	asdata => \inst3|OUT16B[6]~31_combout\,
	sload => VCC,
	ena => \inst2|inst|add_reg1_dcd|Mux3~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst2|inst|reg_gen:6:regs|reg_1|y\(6));

-- Location: FF_X109_Y23_N19
\inst2|inst|reg_gen:1:regs|reg_1|y[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \SW17~input_o\,
	asdata => \inst3|OUT16B[6]~31_combout\,
	sload => VCC,
	ena => \inst2|inst|add_reg1_dcd|Mux3~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst2|inst|reg_gen:1:regs|reg_1|y\(6));

-- Location: LCCOMB_X107_Y19_N18
\inst2|inst|mux_2|mux_1|mux_generate:1:mux_i|Mux1~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|inst|mux_2|mux_1|mux_generate:1:mux_i|Mux1~1_combout\ = (\inst4|inst1|data_out[6]~17_combout\ & (!\inst4|inst1|exception~2_combout\ & \inst2|inst|reg_gen:1:regs|reg_1|y\(6)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|inst1|data_out[6]~17_combout\,
	datac => \inst4|inst1|exception~2_combout\,
	datad => \inst2|inst|reg_gen:1:regs|reg_1|y\(6),
	combout => \inst2|inst|mux_2|mux_1|mux_generate:1:mux_i|Mux1~1_combout\);

-- Location: LCCOMB_X107_Y19_N16
\inst2|inst|mux_2|mux_1|mux_generate:1:mux_i|Mux1~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|inst|mux_2|mux_1|mux_generate:1:mux_i|Mux1~2_combout\ = (\inst2|inst|mux_2|mux_1|mux_generate:0:mux_i|Mux2~3_combout\ & ((\inst2|inst|mux_2|mux_1|mux_generate:0:mux_i|Mux2~4_combout\ & (\inst2|inst|reg_gen:6:regs|reg_1|y\(6))) # 
-- (!\inst2|inst|mux_2|mux_1|mux_generate:0:mux_i|Mux2~4_combout\ & ((\inst2|inst|mux_2|mux_1|mux_generate:1:mux_i|Mux1~1_combout\))))) # (!\inst2|inst|mux_2|mux_1|mux_generate:0:mux_i|Mux2~3_combout\ & 
-- (((!\inst2|inst|mux_2|mux_1|mux_generate:0:mux_i|Mux2~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000011001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|inst|reg_gen:6:regs|reg_1|y\(6),
	datab => \inst2|inst|mux_2|mux_1|mux_generate:1:mux_i|Mux1~1_combout\,
	datac => \inst2|inst|mux_2|mux_1|mux_generate:0:mux_i|Mux2~3_combout\,
	datad => \inst2|inst|mux_2|mux_1|mux_generate:0:mux_i|Mux2~4_combout\,
	combout => \inst2|inst|mux_2|mux_1|mux_generate:1:mux_i|Mux1~2_combout\);

-- Location: FF_X107_Y19_N9
\inst2|inst|reg_gen:5:regs|reg_1|y[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \SW17~input_o\,
	asdata => \inst3|OUT16B[6]~31_combout\,
	sload => VCC,
	ena => \inst2|inst|add_reg1_dcd|Mux3~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst2|inst|reg_gen:5:regs|reg_1|y\(6));

-- Location: FF_X108_Y21_N9
\inst2|inst|reg_gen:4:regs|reg_1|y[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \SW17~input_o\,
	asdata => \inst3|OUT16B[6]~31_combout\,
	sload => VCC,
	ena => \inst2|inst|add_reg1_dcd|Mux3~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst2|inst|reg_gen:4:regs|reg_1|y\(6));

-- Location: LCCOMB_X107_Y19_N8
\inst2|inst|mux_2|mux_1|mux_generate:1:mux_i|Mux1~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|inst|mux_2|mux_1|mux_generate:1:mux_i|Mux1~3_combout\ = (\inst2|inst|mux_2|mux_1|mux_generate:0:mux_i|Mux2~1_combout\ & (\inst2|inst|mux_2|mux_1|mux_generate:1:mux_i|Mux1~2_combout\)) # (!\inst2|inst|mux_2|mux_1|mux_generate:0:mux_i|Mux2~1_combout\ 
-- & ((\inst2|inst|mux_2|mux_1|mux_generate:1:mux_i|Mux1~2_combout\ & ((\inst2|inst|reg_gen:4:regs|reg_1|y\(6)))) # (!\inst2|inst|mux_2|mux_1|mux_generate:1:mux_i|Mux1~2_combout\ & (\inst2|inst|reg_gen:5:regs|reg_1|y\(6)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|inst|mux_2|mux_1|mux_generate:0:mux_i|Mux2~1_combout\,
	datab => \inst2|inst|mux_2|mux_1|mux_generate:1:mux_i|Mux1~2_combout\,
	datac => \inst2|inst|reg_gen:5:regs|reg_1|y\(6),
	datad => \inst2|inst|reg_gen:4:regs|reg_1|y\(6),
	combout => \inst2|inst|mux_2|mux_1|mux_generate:1:mux_i|Mux1~3_combout\);

-- Location: LCCOMB_X107_Y21_N2
\inst2|inst|mux_2|mux_1|mux_generate:1:mux_i|Mux1~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|inst|mux_2|mux_1|mux_generate:1:mux_i|Mux1~4_combout\ = (\inst2|inst|mux_2|mux_1|mux_generate:0:mux_i|Mux2~7_combout\ & (\inst2|inst|mux_2|mux_1|mux_generate:1:mux_i|Mux1~0_combout\)) # (!\inst2|inst|mux_2|mux_1|mux_generate:0:mux_i|Mux2~7_combout\ 
-- & ((\inst2|inst|mux_2|mux_1|mux_generate:1:mux_i|Mux1~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|inst|mux_2|mux_1|mux_generate:1:mux_i|Mux1~0_combout\,
	datac => \inst2|inst|mux_2|mux_1|mux_generate:1:mux_i|Mux1~3_combout\,
	datad => \inst2|inst|mux_2|mux_1|mux_generate:0:mux_i|Mux2~7_combout\,
	combout => \inst2|inst|mux_2|mux_1|mux_generate:1:mux_i|Mux1~4_combout\);

-- Location: LCCOMB_X107_Y21_N6
\inst2|inst2|OUT16B[6]~24\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|inst2|OUT16B[6]~24_combout\ = (\inst|Mux7~0_combout\ & (((!\inst4|inst1|exception~2_combout\ & !\inst4|inst1|data_out[5]~5_combout\)))) # (!\inst|Mux7~0_combout\ & (\inst2|inst|mux_2|mux_1|mux_generate:1:mux_i|Mux1~4_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100010001001110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Mux7~0_combout\,
	datab => \inst2|inst|mux_2|mux_1|mux_generate:1:mux_i|Mux1~4_combout\,
	datac => \inst4|inst1|exception~2_combout\,
	datad => \inst4|inst1|data_out[5]~5_combout\,
	combout => \inst2|inst2|OUT16B[6]~24_combout\);

-- Location: LCCOMB_X109_Y23_N22
\inst2|inst1|alu1|adder|S[2]\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|inst1|alu1|adder|S\(2) = \inst2|inst3|DOUT[2]~3_combout\ $ (\inst2|inst|mux_1|mux_1|mux_generate:1:mux_i|Mux1~5_combout\ $ (\inst2|inst1|alu1|adder|C[2]~1_combout\ $ (\inst2|inst2|OUT16B[6]~24_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|inst3|DOUT[2]~3_combout\,
	datab => \inst2|inst|mux_1|mux_1|mux_generate:1:mux_i|Mux1~5_combout\,
	datac => \inst2|inst1|alu1|adder|C[2]~1_combout\,
	datad => \inst2|inst2|OUT16B[6]~24_combout\,
	combout => \inst2|inst1|alu1|adder|S\(2));

-- Location: LCCOMB_X109_Y23_N16
\inst2|inst1|alu1|mux|Mux1~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|inst1|alu1|mux|Mux1~0_combout\ = (!\inst2|inst3|DOUT[1]~4_combout\ & ((\inst2|inst|mux_1|mux_1|mux_generate:1:mux_i|Mux1~5_combout\ & ((\inst2|inst3|DOUT[0]~2_combout\) # (\inst2|inst2|OUT16B[6]~24_combout\))) # 
-- (!\inst2|inst|mux_1|mux_1|mux_generate:1:mux_i|Mux1~5_combout\ & (\inst2|inst3|DOUT[0]~2_combout\ & \inst2|inst2|OUT16B[6]~24_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|inst3|DOUT[1]~4_combout\,
	datab => \inst2|inst|mux_1|mux_1|mux_generate:1:mux_i|Mux1~5_combout\,
	datac => \inst2|inst3|DOUT[0]~2_combout\,
	datad => \inst2|inst2|OUT16B[6]~24_combout\,
	combout => \inst2|inst1|alu1|mux|Mux1~0_combout\);

-- Location: LCCOMB_X109_Y23_N2
\inst2|inst1|alu1|mux|Mux1~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|inst1|alu1|mux|Mux1~1_combout\ = (\inst2|inst1|alu1|mux|Mux1~0_combout\) # ((\inst2|inst1|alu0|mux|Mux1~4_combout\ & \inst2|inst1|alu1|adder|S\(2)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100011111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|inst1|alu0|mux|Mux1~4_combout\,
	datab => \inst2|inst1|alu1|adder|S\(2),
	datac => \inst2|inst1|alu1|mux|Mux1~0_combout\,
	combout => \inst2|inst1|alu1|mux|Mux1~1_combout\);

-- Location: LCCOMB_X106_Y18_N4
\inst2|inst|reg_gen:3:regs|reg_2|y[6]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|inst|reg_gen:3:regs|reg_2|y[6]~feeder_combout\ = \inst3|OUT16B[14]~23_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst3|OUT16B[14]~23_combout\,
	combout => \inst2|inst|reg_gen:3:regs|reg_2|y[6]~feeder_combout\);

-- Location: FF_X106_Y18_N5
\inst2|inst|reg_gen:3:regs|reg_2|y[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \SW17~input_o\,
	d => \inst2|inst|reg_gen:3:regs|reg_2|y[6]~feeder_combout\,
	ena => \inst2|inst|add_reg1_dcd|Mux3~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst2|inst|reg_gen:3:regs|reg_2|y\(6));

-- Location: LCCOMB_X106_Y18_N0
\inst2|inst|mux_1|mux_1|mux_generate:3:mux_i|Mux1~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|inst|mux_1|mux_1|mux_generate:3:mux_i|Mux1~2_combout\ = (\inst4|inst1|exception~2_combout\ & (\inst2|inst|reg_gen:2:regs|reg_2|y\(6))) # (!\inst4|inst1|exception~2_combout\ & ((\inst4|inst1|data_out[9]~14_combout\ & 
-- ((\inst2|inst|reg_gen:3:regs|reg_2|y\(6)))) # (!\inst4|inst1|data_out[9]~14_combout\ & (\inst2|inst|reg_gen:2:regs|reg_2|y\(6)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010110010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|inst|reg_gen:2:regs|reg_2|y\(6),
	datab => \inst2|inst|reg_gen:3:regs|reg_2|y\(6),
	datac => \inst4|inst1|exception~2_combout\,
	datad => \inst4|inst1|data_out[9]~14_combout\,
	combout => \inst2|inst|mux_1|mux_1|mux_generate:3:mux_i|Mux1~2_combout\);

-- Location: FF_X110_Y22_N3
\inst2|inst|reg_gen:5:regs|reg_2|y[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \SW17~input_o\,
	asdata => \inst3|OUT16B[14]~23_combout\,
	sload => VCC,
	ena => \inst2|inst|add_reg1_dcd|Mux3~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst2|inst|reg_gen:5:regs|reg_2|y\(6));

-- Location: FF_X107_Y18_N1
\inst2|inst|reg_gen:1:regs|reg_2|y[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \SW17~input_o\,
	asdata => \inst3|OUT16B[14]~23_combout\,
	sload => VCC,
	ena => \inst2|inst|add_reg1_dcd|Mux3~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst2|inst|reg_gen:1:regs|reg_2|y\(6));

-- Location: LCCOMB_X107_Y19_N22
\inst2|inst|mux_1|mux_1|mux_generate:3:mux_i|Mux1~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|inst|mux_1|mux_1|mux_generate:3:mux_i|Mux1~6_combout\ = (!\inst4|inst1|exception~2_combout\ & (\inst2|inst|reg_gen:1:regs|reg_2|y\(6) & ((\inst4|inst|reg|reg_1|y\(5)) # (\inst4|inst1|data_out[9]~13_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100010001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|inst1|exception~2_combout\,
	datab => \inst2|inst|reg_gen:1:regs|reg_2|y\(6),
	datac => \inst4|inst|reg|reg_1|y\(5),
	datad => \inst4|inst1|data_out[9]~13_combout\,
	combout => \inst2|inst|mux_1|mux_1|mux_generate:3:mux_i|Mux1~6_combout\);

-- Location: FF_X107_Y19_N11
\inst2|inst|reg_gen:6:regs|reg_2|y[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \SW17~input_o\,
	asdata => \inst3|OUT16B[14]~23_combout\,
	sload => VCC,
	ena => \inst2|inst|add_reg1_dcd|Mux3~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst2|inst|reg_gen:6:regs|reg_2|y\(6));

-- Location: LCCOMB_X107_Y19_N10
\inst2|inst|mux_1|mux_1|mux_generate:3:mux_i|Mux1~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|inst|mux_1|mux_1|mux_generate:3:mux_i|Mux1~3_combout\ = (\inst2|inst|mux_1|mux_1|mux_generate:3:mux_i|Mux3~6_combout\ & (((\inst2|inst|reg_gen:6:regs|reg_2|y\(6) & \inst2|inst|mux_1|mux_1|mux_generate:3:mux_i|Mux3~5_combout\)))) # 
-- (!\inst2|inst|mux_1|mux_1|mux_generate:3:mux_i|Mux3~6_combout\ & ((\inst2|inst|mux_1|mux_1|mux_generate:3:mux_i|Mux1~6_combout\) # ((!\inst2|inst|mux_1|mux_1|mux_generate:3:mux_i|Mux3~5_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110001000110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|inst|mux_1|mux_1|mux_generate:3:mux_i|Mux1~6_combout\,
	datab => \inst2|inst|mux_1|mux_1|mux_generate:3:mux_i|Mux3~6_combout\,
	datac => \inst2|inst|reg_gen:6:regs|reg_2|y\(6),
	datad => \inst2|inst|mux_1|mux_1|mux_generate:3:mux_i|Mux3~5_combout\,
	combout => \inst2|inst|mux_1|mux_1|mux_generate:3:mux_i|Mux1~3_combout\);

-- Location: LCCOMB_X109_Y19_N26
\inst2|inst|reg_gen:4:regs|reg_2|y[6]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|inst|reg_gen:4:regs|reg_2|y[6]~feeder_combout\ = \inst3|OUT16B[14]~23_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst3|OUT16B[14]~23_combout\,
	combout => \inst2|inst|reg_gen:4:regs|reg_2|y[6]~feeder_combout\);

-- Location: FF_X109_Y19_N27
\inst2|inst|reg_gen:4:regs|reg_2|y[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \SW17~input_o\,
	d => \inst2|inst|reg_gen:4:regs|reg_2|y[6]~feeder_combout\,
	ena => \inst2|inst|add_reg1_dcd|Mux3~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst2|inst|reg_gen:4:regs|reg_2|y\(6));

-- Location: LCCOMB_X109_Y19_N28
\inst2|inst|mux_1|mux_1|mux_generate:3:mux_i|Mux1~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|inst|mux_1|mux_1|mux_generate:3:mux_i|Mux1~4_combout\ = (\inst2|inst|mux_1|mux_1|mux_generate:3:mux_i|Mux1~3_combout\ & (((\inst2|inst|reg_gen:4:regs|reg_2|y\(6)) # (\inst2|inst|mux_1|mux_1|mux_generate:3:mux_i|Mux3~4_combout\)))) # 
-- (!\inst2|inst|mux_1|mux_1|mux_generate:3:mux_i|Mux1~3_combout\ & (\inst2|inst|reg_gen:5:regs|reg_2|y\(6) & ((!\inst2|inst|mux_1|mux_1|mux_generate:3:mux_i|Mux3~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|inst|reg_gen:5:regs|reg_2|y\(6),
	datab => \inst2|inst|mux_1|mux_1|mux_generate:3:mux_i|Mux1~3_combout\,
	datac => \inst2|inst|reg_gen:4:regs|reg_2|y\(6),
	datad => \inst2|inst|mux_1|mux_1|mux_generate:3:mux_i|Mux3~4_combout\,
	combout => \inst2|inst|mux_1|mux_1|mux_generate:3:mux_i|Mux1~4_combout\);

-- Location: LCCOMB_X109_Y19_N14
\inst2|inst|mux_1|mux_1|mux_generate:3:mux_i|Mux1~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|inst|mux_1|mux_1|mux_generate:3:mux_i|Mux1~5_combout\ = (\inst2|inst|mux_1|mux_1|mux_generate:3:mux_i|Mux3~12_combout\ & (\inst2|inst|mux_1|mux_1|mux_generate:3:mux_i|Mux1~2_combout\)) # 
-- (!\inst2|inst|mux_1|mux_1|mux_generate:3:mux_i|Mux3~12_combout\ & ((\inst2|inst|mux_1|mux_1|mux_generate:3:mux_i|Mux1~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|inst|mux_1|mux_1|mux_generate:3:mux_i|Mux1~2_combout\,
	datac => \inst2|inst|mux_1|mux_1|mux_generate:3:mux_i|Mux3~12_combout\,
	datad => \inst2|inst|mux_1|mux_1|mux_generate:3:mux_i|Mux1~4_combout\,
	combout => \inst2|inst|mux_1|mux_1|mux_generate:3:mux_i|Mux1~5_combout\);

-- Location: LCCOMB_X110_Y22_N30
\inst2|inst2|OUT16B[14]~29\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|inst2|OUT16B[14]~29_combout\ = (\inst|Mux7~0_combout\ & (!\inst4|inst1|exception~2_combout\ & ((!\inst4|inst1|data_out[5]~5_combout\)))) # (!\inst|Mux7~0_combout\ & (((\inst2|inst|mux_2|mux_1|mux_generate:3:mux_i|Mux1~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000001110010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Mux7~0_combout\,
	datab => \inst4|inst1|exception~2_combout\,
	datac => \inst2|inst|mux_2|mux_1|mux_generate:3:mux_i|Mux1~4_combout\,
	datad => \inst4|inst1|data_out[5]~5_combout\,
	combout => \inst2|inst2|OUT16B[14]~29_combout\);

-- Location: LCCOMB_X108_Y23_N30
\inst2|inst1|alu3|mux|Mux1~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|inst1|alu3|mux|Mux1~1_combout\ = (!\inst2|inst3|DOUT[1]~4_combout\ & ((\inst2|inst|mux_1|mux_1|mux_generate:3:mux_i|Mux1~5_combout\ & ((\inst2|inst3|DOUT[0]~2_combout\) # (\inst2|inst2|OUT16B[14]~29_combout\))) # 
-- (!\inst2|inst|mux_1|mux_1|mux_generate:3:mux_i|Mux1~5_combout\ & (\inst2|inst3|DOUT[0]~2_combout\ & \inst2|inst2|OUT16B[14]~29_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|inst|mux_1|mux_1|mux_generate:3:mux_i|Mux1~5_combout\,
	datab => \inst2|inst3|DOUT[0]~2_combout\,
	datac => \inst2|inst2|OUT16B[14]~29_combout\,
	datad => \inst2|inst3|DOUT[1]~4_combout\,
	combout => \inst2|inst1|alu3|mux|Mux1~1_combout\);

-- Location: LCCOMB_X106_Y27_N8
\inst4|inst1|INS_OUT[5]~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|inst1|INS_OUT[5]~7_combout\ = (!\inst4|inst1|exception~2_combout\ & !\inst4|inst1|data_out[5]~5_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst4|inst1|exception~2_combout\,
	datad => \inst4|inst1|data_out[5]~5_combout\,
	combout => \inst4|inst1|INS_OUT[5]~7_combout\);

-- Location: LCCOMB_X109_Y23_N8
\inst2|inst1|alu3|adder|S[2]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|inst1|alu3|adder|S[2]~0_combout\ = \inst2|inst3|DOUT[2]~3_combout\ $ (((\inst|Mux7~0_combout\ & (\inst4|inst1|INS_OUT[5]~7_combout\)) # (!\inst|Mux7~0_combout\ & ((\inst2|inst|mux_2|mux_1|mux_generate:3:mux_i|Mux1~4_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011001011010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|inst3|DOUT[2]~3_combout\,
	datab => \inst4|inst1|INS_OUT[5]~7_combout\,
	datac => \inst2|inst|mux_2|mux_1|mux_generate:3:mux_i|Mux1~4_combout\,
	datad => \inst|Mux7~0_combout\,
	combout => \inst2|inst1|alu3|adder|S[2]~0_combout\);

-- Location: LCCOMB_X109_Y21_N4
\inst2|inst1|alu3|adder|C[2]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|inst1|alu3|adder|C[2]~1_combout\ = (\inst2|inst|mux_1|mux_1|mux_generate:3:mux_i|Mux2~5_combout\ & ((\inst2|inst1|alu3|adder|C[1]~0_combout\) # (\inst2|inst2|OUT16B[13]~30_combout\ $ (\inst2|inst3|DOUT[2]~3_combout\)))) # 
-- (!\inst2|inst|mux_1|mux_1|mux_generate:3:mux_i|Mux2~5_combout\ & (\inst2|inst1|alu3|adder|C[1]~0_combout\ & (\inst2|inst2|OUT16B[13]~30_combout\ $ (\inst2|inst3|DOUT[2]~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111011001100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|inst2|OUT16B[13]~30_combout\,
	datab => \inst2|inst3|DOUT[2]~3_combout\,
	datac => \inst2|inst|mux_1|mux_1|mux_generate:3:mux_i|Mux2~5_combout\,
	datad => \inst2|inst1|alu3|adder|C[1]~0_combout\,
	combout => \inst2|inst1|alu3|adder|C[2]~1_combout\);

-- Location: LCCOMB_X108_Y23_N0
\inst2|inst1|alu3|mux|Mux1~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|inst1|alu3|mux|Mux1~0_combout\ = (\inst2|inst1|alu0|mux|Mux1~4_combout\ & (\inst2|inst|mux_1|mux_1|mux_generate:3:mux_i|Mux1~5_combout\ $ (\inst2|inst1|alu3|adder|S[2]~0_combout\ $ (\inst2|inst1|alu3|adder|C[2]~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000001000101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|inst1|alu0|mux|Mux1~4_combout\,
	datab => \inst2|inst|mux_1|mux_1|mux_generate:3:mux_i|Mux1~5_combout\,
	datac => \inst2|inst1|alu3|adder|S[2]~0_combout\,
	datad => \inst2|inst1|alu3|adder|C[2]~1_combout\,
	combout => \inst2|inst1|alu3|mux|Mux1~0_combout\);

-- Location: LCCOMB_X108_Y23_N16
\inst2|inst1|alu3|mux|Mux1~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|inst1|alu3|mux|Mux1~2_combout\ = (\inst2|inst1|alu3|mux|Mux1~1_combout\) # (\inst2|inst1|alu3|mux|Mux1~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst2|inst1|alu3|mux|Mux1~1_combout\,
	datad => \inst2|inst1|alu3|mux|Mux1~0_combout\,
	combout => \inst2|inst1|alu3|mux|Mux1~2_combout\);

-- Location: FF_X112_Y15_N3
\inst1|reg_gen:13:regs|y[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \SW17~input_o\,
	asdata => \inst2|inst|mux_2|mux_1|mux_generate:3:mux_i|Mux1~4_combout\,
	sload => VCC,
	ena => \inst1|dec_to_en\(13),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|reg_gen:13:regs|y\(6));

-- Location: LCCOMB_X113_Y17_N30
\inst1|reg_gen:29:regs|y[6]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|reg_gen:29:regs|y[6]~feeder_combout\ = \inst2|inst|mux_2|mux_1|mux_generate:3:mux_i|Mux1~4_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst2|inst|mux_2|mux_1|mux_generate:3:mux_i|Mux1~4_combout\,
	combout => \inst1|reg_gen:29:regs|y[6]~feeder_combout\);

-- Location: FF_X113_Y17_N31
\inst1|reg_gen:29:regs|y[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \SW17~input_o\,
	d => \inst1|reg_gen:29:regs|y[6]~feeder_combout\,
	ena => \inst1|dec_to_en\(29),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|reg_gen:29:regs|y\(6));

-- Location: LCCOMB_X114_Y16_N26
\inst1|reg_gen:25:regs|y[6]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|reg_gen:25:regs|y[6]~feeder_combout\ = \inst2|inst|mux_2|mux_1|mux_generate:3:mux_i|Mux1~4_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst2|inst|mux_2|mux_1|mux_generate:3:mux_i|Mux1~4_combout\,
	combout => \inst1|reg_gen:25:regs|y[6]~feeder_combout\);

-- Location: FF_X114_Y16_N27
\inst1|reg_gen:25:regs|y[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \SW17~input_o\,
	d => \inst1|reg_gen:25:regs|y[6]~feeder_combout\,
	ena => \inst1|dec_to_en\(25),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|reg_gen:25:regs|y\(6));

-- Location: LCCOMB_X114_Y19_N14
\inst1|reg_gen:9:regs|y[6]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|reg_gen:9:regs|y[6]~feeder_combout\ = \inst2|inst|mux_2|mux_1|mux_generate:3:mux_i|Mux1~4_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst2|inst|mux_2|mux_1|mux_generate:3:mux_i|Mux1~4_combout\,
	combout => \inst1|reg_gen:9:regs|y[6]~feeder_combout\);

-- Location: FF_X114_Y19_N15
\inst1|reg_gen:9:regs|y[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \SW17~input_o\,
	d => \inst1|reg_gen:9:regs|y[6]~feeder_combout\,
	ena => \inst1|dec_to_en\(9),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|reg_gen:9:regs|y\(6));

-- Location: LCCOMB_X112_Y19_N28
\inst1|DOUT[14]~70\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|DOUT[14]~70_combout\ = (\inst2|inst1|alu1|mux|Mux3~1_combout\ & (((\inst1|reg_gen:9:regs|y\(6)) # (\inst2|inst1|alu0|mux|Mux1~3_combout\)))) # (!\inst2|inst1|alu1|mux|Mux3~1_combout\ & (\inst1|reg_gen:25:regs|y\(6) & 
-- ((!\inst2|inst1|alu0|mux|Mux1~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|reg_gen:25:regs|y\(6),
	datab => \inst1|reg_gen:9:regs|y\(6),
	datac => \inst2|inst1|alu1|mux|Mux3~1_combout\,
	datad => \inst2|inst1|alu0|mux|Mux1~3_combout\,
	combout => \inst1|DOUT[14]~70_combout\);

-- Location: LCCOMB_X112_Y19_N30
\inst1|DOUT[14]~71\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|DOUT[14]~71_combout\ = (\inst1|DOUT[14]~70_combout\ & ((\inst1|reg_gen:13:regs|y\(6)) # ((!\inst2|inst1|alu0|mux|Mux1~3_combout\)))) # (!\inst1|DOUT[14]~70_combout\ & (((\inst1|reg_gen:29:regs|y\(6) & \inst2|inst1|alu0|mux|Mux1~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|reg_gen:13:regs|y\(6),
	datab => \inst1|reg_gen:29:regs|y\(6),
	datac => \inst1|DOUT[14]~70_combout\,
	datad => \inst2|inst1|alu0|mux|Mux1~3_combout\,
	combout => \inst1|DOUT[14]~71_combout\);

-- Location: FF_X107_Y21_N3
\inst1|reg_gen:14:regs|y[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \SW17~input_o\,
	d => \inst2|inst|mux_2|mux_1|mux_generate:1:mux_i|Mux1~4_combout\,
	ena => \inst1|dec_to_en\(14),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|reg_gen:14:regs|y\(6));

-- Location: LCCOMB_X112_Y20_N20
\inst1|reg_gen:10:regs|y[6]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|reg_gen:10:regs|y[6]~feeder_combout\ = \inst2|inst|mux_2|mux_1|mux_generate:1:mux_i|Mux1~4_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst2|inst|mux_2|mux_1|mux_generate:1:mux_i|Mux1~4_combout\,
	combout => \inst1|reg_gen:10:regs|y[6]~feeder_combout\);

-- Location: FF_X112_Y20_N21
\inst1|reg_gen:10:regs|y[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \SW17~input_o\,
	d => \inst1|reg_gen:10:regs|y[6]~feeder_combout\,
	ena => \inst1|dec_to_en\(10),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|reg_gen:10:regs|y\(6));

-- Location: FF_X111_Y20_N17
\inst1|reg_gen:26:regs|y[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \SW17~input_o\,
	asdata => \inst2|inst|mux_2|mux_1|mux_generate:1:mux_i|Mux1~4_combout\,
	sload => VCC,
	ena => \inst1|dec_to_en\(26),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|reg_gen:26:regs|y\(6));

-- Location: LCCOMB_X111_Y20_N16
\inst1|DOUT[14]~66\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|DOUT[14]~66_combout\ = (\inst2|inst1|alu0|mux|Mux1~3_combout\ & (((\inst2|inst1|alu1|mux|Mux3~1_combout\)))) # (!\inst2|inst1|alu0|mux|Mux1~3_combout\ & ((\inst2|inst1|alu1|mux|Mux3~1_combout\ & (\inst1|reg_gen:10:regs|y\(6))) # 
-- (!\inst2|inst1|alu1|mux|Mux3~1_combout\ & ((\inst1|reg_gen:26:regs|y\(6))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|inst1|alu0|mux|Mux1~3_combout\,
	datab => \inst1|reg_gen:10:regs|y\(6),
	datac => \inst1|reg_gen:26:regs|y\(6),
	datad => \inst2|inst1|alu1|mux|Mux3~1_combout\,
	combout => \inst1|DOUT[14]~66_combout\);

-- Location: FF_X111_Y20_N31
\inst1|reg_gen:30:regs|y[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \SW17~input_o\,
	asdata => \inst2|inst|mux_2|mux_1|mux_generate:1:mux_i|Mux1~4_combout\,
	sload => VCC,
	ena => \inst1|dec_to_en\(30),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|reg_gen:30:regs|y\(6));

-- Location: LCCOMB_X111_Y20_N30
\inst1|DOUT[14]~67\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|DOUT[14]~67_combout\ = (\inst1|DOUT[14]~66_combout\ & ((\inst1|reg_gen:14:regs|y\(6)) # ((!\inst2|inst1|alu0|mux|Mux1~3_combout\)))) # (!\inst1|DOUT[14]~66_combout\ & (((\inst1|reg_gen:30:regs|y\(6) & \inst2|inst1|alu0|mux|Mux1~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|reg_gen:14:regs|y\(6),
	datab => \inst1|DOUT[14]~66_combout\,
	datac => \inst1|reg_gen:30:regs|y\(6),
	datad => \inst2|inst1|alu0|mux|Mux1~3_combout\,
	combout => \inst1|DOUT[14]~67_combout\);

-- Location: FF_X111_Y17_N23
\inst1|reg_gen:15:regs|y[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \SW17~input_o\,
	asdata => \inst2|inst|mux_2|mux_1|mux_generate:3:mux_i|Mux1~4_combout\,
	sload => VCC,
	ena => \inst1|dec_to_en\(15),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|reg_gen:15:regs|y\(6));

-- Location: FF_X112_Y17_N13
\inst1|reg_gen:27:regs|y[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \SW17~input_o\,
	asdata => \inst2|inst|mux_2|mux_1|mux_generate:3:mux_i|Mux1~4_combout\,
	sload => VCC,
	ena => \inst1|dec_to_en\(27),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|reg_gen:27:regs|y\(6));

-- Location: LCCOMB_X112_Y17_N30
\inst1|reg_gen:11:regs|y[6]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|reg_gen:11:regs|y[6]~feeder_combout\ = \inst2|inst|mux_2|mux_1|mux_generate:3:mux_i|Mux1~4_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst2|inst|mux_2|mux_1|mux_generate:3:mux_i|Mux1~4_combout\,
	combout => \inst1|reg_gen:11:regs|y[6]~feeder_combout\);

-- Location: FF_X112_Y17_N31
\inst1|reg_gen:11:regs|y[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \SW17~input_o\,
	d => \inst1|reg_gen:11:regs|y[6]~feeder_combout\,
	ena => \inst1|dec_to_en\(11),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|reg_gen:11:regs|y\(6));

-- Location: LCCOMB_X111_Y17_N0
\inst1|DOUT[14]~68\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|DOUT[14]~68_combout\ = (\inst2|inst1|alu1|mux|Mux3~1_combout\ & ((\inst1|reg_gen:11:regs|y\(6)))) # (!\inst2|inst1|alu1|mux|Mux3~1_combout\ & (\inst1|reg_gen:27:regs|y\(6)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst1|reg_gen:27:regs|y\(6),
	datac => \inst1|reg_gen:11:regs|y\(6),
	datad => \inst2|inst1|alu1|mux|Mux3~1_combout\,
	combout => \inst1|DOUT[14]~68_combout\);

-- Location: LCCOMB_X111_Y17_N22
\inst1|DOUT[14]~69\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|DOUT[14]~69_combout\ = (\inst1|DOUT[13]~37_combout\ & ((\inst1|DOUT[13]~40_combout\) # ((\inst1|reg_gen:15:regs|y\(6))))) # (!\inst1|DOUT[13]~37_combout\ & (!\inst1|DOUT[13]~40_combout\ & ((\inst1|DOUT[14]~68_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100110101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|DOUT[13]~37_combout\,
	datab => \inst1|DOUT[13]~40_combout\,
	datac => \inst1|reg_gen:15:regs|y\(6),
	datad => \inst1|DOUT[14]~68_combout\,
	combout => \inst1|DOUT[14]~69_combout\);

-- Location: LCCOMB_X111_Y17_N26
\inst1|DOUT[14]~72\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|DOUT[14]~72_combout\ = (\inst1|DOUT[14]~69_combout\ & ((\inst1|DOUT[14]~71_combout\) # ((!\inst1|DOUT[13]~40_combout\)))) # (!\inst1|DOUT[14]~69_combout\ & (((\inst1|DOUT[14]~67_combout\ & \inst1|DOUT[13]~40_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|DOUT[14]~71_combout\,
	datab => \inst1|DOUT[14]~67_combout\,
	datac => \inst1|DOUT[14]~69_combout\,
	datad => \inst1|DOUT[13]~40_combout\,
	combout => \inst1|DOUT[14]~72_combout\);

-- Location: LCCOMB_X114_Y17_N10
\inst1|reg_gen:28:regs|y[6]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|reg_gen:28:regs|y[6]~feeder_combout\ = \inst2|inst|mux_2|mux_1|mux_generate:1:mux_i|Mux1~4_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst2|inst|mux_2|mux_1|mux_generate:1:mux_i|Mux1~4_combout\,
	combout => \inst1|reg_gen:28:regs|y[6]~feeder_combout\);

-- Location: FF_X114_Y17_N11
\inst1|reg_gen:28:regs|y[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \SW17~input_o\,
	d => \inst1|reg_gen:28:regs|y[6]~feeder_combout\,
	ena => \inst1|dec_to_en\(28),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|reg_gen:28:regs|y\(6));

-- Location: LCCOMB_X112_Y15_N0
\inst1|reg_gen:12:regs|y[6]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|reg_gen:12:regs|y[6]~feeder_combout\ = \inst2|inst|mux_2|mux_1|mux_generate:1:mux_i|Mux1~4_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst2|inst|mux_2|mux_1|mux_generate:1:mux_i|Mux1~4_combout\,
	combout => \inst1|reg_gen:12:regs|y[6]~feeder_combout\);

-- Location: FF_X112_Y15_N1
\inst1|reg_gen:12:regs|y[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \SW17~input_o\,
	d => \inst1|reg_gen:12:regs|y[6]~feeder_combout\,
	ena => \inst1|dec_to_en\(12),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|reg_gen:12:regs|y\(6));

-- Location: LCCOMB_X111_Y17_N16
\inst1|DOUT[14]~64\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|DOUT[14]~64_combout\ = (\inst2|inst1|alu1|mux|Mux3~1_combout\ & ((\inst1|reg_gen:12:regs|y\(6)))) # (!\inst2|inst1|alu1|mux|Mux3~1_combout\ & (\inst1|reg_gen:28:regs|y\(6)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|reg_gen:28:regs|y\(6),
	datac => \inst2|inst1|alu1|mux|Mux3~1_combout\,
	datad => \inst1|reg_gen:12:regs|y\(6),
	combout => \inst1|DOUT[14]~64_combout\);

-- Location: FF_X111_Y18_N31
\inst1|reg_gen:16:regs|y[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \SW17~input_o\,
	asdata => \inst2|inst|mux_2|mux_1|mux_generate:1:mux_i|Mux1~4_combout\,
	sload => VCC,
	ena => \inst1|dec_to_en[16]~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|reg_gen:16:regs|y\(6));

-- Location: LCCOMB_X111_Y18_N30
\inst1|DOUT[14]~65\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|DOUT[14]~65_combout\ = (\inst1|DOUT[13]~34_combout\ & (((\inst1|DOUT[13]~29_combout\)))) # (!\inst1|DOUT[13]~34_combout\ & ((\inst1|DOUT[13]~29_combout\ & ((\inst1|reg_gen:16:regs|y\(6)))) # (!\inst1|DOUT[13]~29_combout\ & 
-- (\inst1|DOUT[14]~64_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|DOUT[14]~64_combout\,
	datab => \inst1|DOUT[13]~34_combout\,
	datac => \inst1|reg_gen:16:regs|y\(6),
	datad => \inst1|DOUT[13]~29_combout\,
	combout => \inst1|DOUT[14]~65_combout\);

-- Location: LCCOMB_X114_Y17_N8
\inst1|reg_gen:18:regs|y[6]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|reg_gen:18:regs|y[6]~feeder_combout\ = \inst2|inst|mux_2|mux_1|mux_generate:1:mux_i|Mux1~4_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst2|inst|mux_2|mux_1|mux_generate:1:mux_i|Mux1~4_combout\,
	combout => \inst1|reg_gen:18:regs|y[6]~feeder_combout\);

-- Location: FF_X114_Y17_N9
\inst1|reg_gen:18:regs|y[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \SW17~input_o\,
	d => \inst1|reg_gen:18:regs|y[6]~feeder_combout\,
	ena => \inst1|dec_to_en\(18),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|reg_gen:18:regs|y\(6));

-- Location: LCCOMB_X113_Y14_N22
\inst1|reg_gen:20:regs|y[6]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|reg_gen:20:regs|y[6]~feeder_combout\ = \inst2|inst|mux_2|mux_1|mux_generate:1:mux_i|Mux1~4_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|inst|mux_2|mux_1|mux_generate:1:mux_i|Mux1~4_combout\,
	combout => \inst1|reg_gen:20:regs|y[6]~feeder_combout\);

-- Location: FF_X113_Y14_N23
\inst1|reg_gen:20:regs|y[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \SW17~input_o\,
	d => \inst1|reg_gen:20:regs|y[6]~feeder_combout\,
	ena => \inst1|dec_to_en\(20),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|reg_gen:20:regs|y\(6));

-- Location: FF_X112_Y18_N17
\inst1|reg_gen:8:regs|y[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \SW17~input_o\,
	asdata => \inst2|inst|mux_2|mux_1|mux_generate:1:mux_i|Mux1~4_combout\,
	sload => VCC,
	ena => \inst1|dec_to_en[8]~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|reg_gen:8:regs|y\(6));

-- Location: FF_X112_Y18_N31
\inst1|reg_gen:24:regs|y[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \SW17~input_o\,
	asdata => \inst2|inst|mux_2|mux_1|mux_generate:1:mux_i|Mux1~4_combout\,
	sload => VCC,
	ena => \inst1|dec_to_en[24]~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|reg_gen:24:regs|y\(6));

-- Location: LCCOMB_X112_Y18_N30
\inst1|DOUT[14]~60\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|DOUT[14]~60_combout\ = (\inst2|inst1|alu1|mux|Mux3~1_combout\ & (\inst1|reg_gen:8:regs|y\(6))) # (!\inst2|inst1|alu1|mux|Mux3~1_combout\ & ((\inst1|reg_gen:24:regs|y\(6))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100010111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|reg_gen:8:regs|y\(6),
	datab => \inst2|inst1|alu1|mux|Mux3~1_combout\,
	datac => \inst1|reg_gen:24:regs|y\(6),
	combout => \inst1|DOUT[14]~60_combout\);

-- Location: LCCOMB_X111_Y18_N26
\inst1|DOUT[14]~61\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|DOUT[14]~61_combout\ = (\inst2|inst1|alu0|mux|Mux2~1_combout\ & (((\inst2|inst1|alu0|mux|Mux1~3_combout\)))) # (!\inst2|inst1|alu0|mux|Mux2~1_combout\ & ((\inst2|inst1|alu0|mux|Mux1~3_combout\ & ((\inst1|DOUT[14]~60_combout\))) # 
-- (!\inst2|inst1|alu0|mux|Mux1~3_combout\ & (\inst1|reg_gen:20:regs|y\(6)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|inst1|alu0|mux|Mux2~1_combout\,
	datab => \inst1|reg_gen:20:regs|y\(6),
	datac => \inst1|DOUT[14]~60_combout\,
	datad => \inst2|inst1|alu0|mux|Mux1~3_combout\,
	combout => \inst1|DOUT[14]~61_combout\);

-- Location: LCCOMB_X114_Y18_N26
\inst1|reg_gen:6:regs|y[6]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|reg_gen:6:regs|y[6]~feeder_combout\ = \inst2|inst|mux_2|mux_1|mux_generate:1:mux_i|Mux1~4_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst2|inst|mux_2|mux_1|mux_generate:1:mux_i|Mux1~4_combout\,
	combout => \inst1|reg_gen:6:regs|y[6]~feeder_combout\);

-- Location: FF_X114_Y18_N27
\inst1|reg_gen:6:regs|y[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \SW17~input_o\,
	d => \inst1|reg_gen:6:regs|y[6]~feeder_combout\,
	ena => \inst1|dec_to_en\(6),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|reg_gen:6:regs|y\(6));

-- Location: LCCOMB_X113_Y14_N20
\inst1|reg_gen:22:regs|y[6]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|reg_gen:22:regs|y[6]~feeder_combout\ = \inst2|inst|mux_2|mux_1|mux_generate:1:mux_i|Mux1~4_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|inst|mux_2|mux_1|mux_generate:1:mux_i|Mux1~4_combout\,
	combout => \inst1|reg_gen:22:regs|y[6]~feeder_combout\);

-- Location: FF_X113_Y14_N21
\inst1|reg_gen:22:regs|y[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \SW17~input_o\,
	d => \inst1|reg_gen:22:regs|y[6]~feeder_combout\,
	ena => \inst1|dec_to_en\(22),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|reg_gen:22:regs|y\(6));

-- Location: LCCOMB_X111_Y18_N28
\inst1|DOUT[14]~62\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|DOUT[14]~62_combout\ = (\inst2|inst1|alu1|mux|Mux3~1_combout\ & (\inst1|reg_gen:6:regs|y\(6))) # (!\inst2|inst1|alu1|mux|Mux3~1_combout\ & ((\inst1|reg_gen:22:regs|y\(6))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|reg_gen:6:regs|y\(6),
	datab => \inst2|inst1|alu1|mux|Mux3~1_combout\,
	datad => \inst1|reg_gen:22:regs|y\(6),
	combout => \inst1|DOUT[14]~62_combout\);

-- Location: LCCOMB_X107_Y18_N20
\inst1|DOUT[14]~63\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|DOUT[14]~63_combout\ = (\inst1|DOUT[14]~61_combout\ & (((\inst1|DOUT[14]~62_combout\) # (!\inst2|inst1|alu0|mux|Mux2~1_combout\)))) # (!\inst1|DOUT[14]~61_combout\ & (\inst1|reg_gen:18:regs|y\(6) & ((\inst2|inst1|alu0|mux|Mux2~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110001011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|reg_gen:18:regs|y\(6),
	datab => \inst1|DOUT[14]~61_combout\,
	datac => \inst1|DOUT[14]~62_combout\,
	datad => \inst2|inst1|alu0|mux|Mux2~1_combout\,
	combout => \inst1|DOUT[14]~63_combout\);

-- Location: LCCOMB_X107_Y18_N24
\inst1|DOUT[14]~73\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|DOUT[14]~73_combout\ = (\inst1|DOUT[13]~34_combout\ & ((\inst1|DOUT[14]~65_combout\ & (\inst1|DOUT[14]~72_combout\)) # (!\inst1|DOUT[14]~65_combout\ & ((\inst1|DOUT[14]~63_combout\))))) # (!\inst1|DOUT[13]~34_combout\ & 
-- (((\inst1|DOUT[14]~65_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011110010110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|DOUT[14]~72_combout\,
	datab => \inst1|DOUT[13]~34_combout\,
	datac => \inst1|DOUT[14]~65_combout\,
	datad => \inst1|DOUT[14]~63_combout\,
	combout => \inst1|DOUT[14]~73_combout\);

-- Location: LCCOMB_X110_Y14_N8
\inst1|reg_gen:31:regs|y[6]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|reg_gen:31:regs|y[6]~feeder_combout\ = \inst2|inst|mux_2|mux_1|mux_generate:3:mux_i|Mux1~4_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst2|inst|mux_2|mux_1|mux_generate:3:mux_i|Mux1~4_combout\,
	combout => \inst1|reg_gen:31:regs|y[6]~feeder_combout\);

-- Location: FF_X110_Y14_N9
\inst1|reg_gen:31:regs|y[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \SW17~input_o\,
	d => \inst1|reg_gen:31:regs|y[6]~feeder_combout\,
	ena => \inst1|dec_to_en[31]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|reg_gen:31:regs|y\(6));

-- Location: LCCOMB_X107_Y18_N8
\inst1|DOUT[14]~55\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|DOUT[14]~55_combout\ = (\inst1|DOUT[13]~23_combout\ & \inst1|reg_gen:31:regs|y\(6))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst1|DOUT[13]~23_combout\,
	datac => \inst1|reg_gen:31:regs|y\(6),
	combout => \inst1|DOUT[14]~55_combout\);

-- Location: LCCOMB_X107_Y18_N10
\inst1|DOUT[14]~59\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|DOUT[14]~59_combout\ = (!\inst2|inst1|alu0|mux|Mux0~3_combout\ & (!\inst1|DOUT[13]~23_combout\ & (\inst1|DOUT[13]~21_combout\ & \inst1|DOUT[14]~58_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|inst1|alu0|mux|Mux0~3_combout\,
	datab => \inst1|DOUT[13]~23_combout\,
	datac => \inst1|DOUT[13]~21_combout\,
	datad => \inst1|DOUT[14]~58_combout\,
	combout => \inst1|DOUT[14]~59_combout\);

-- Location: LCCOMB_X107_Y18_N16
\inst1|DOUT[14]~74\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|DOUT[14]~74_combout\ = (\inst1|DOUT[14]~55_combout\) # ((\inst1|DOUT[14]~59_combout\) # ((\inst1|DOUT[15]~47_combout\ & \inst1|DOUT[14]~73_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|DOUT[15]~47_combout\,
	datab => \inst1|DOUT[14]~73_combout\,
	datac => \inst1|DOUT[14]~55_combout\,
	datad => \inst1|DOUT[14]~59_combout\,
	combout => \inst1|DOUT[14]~74_combout\);

-- Location: LCCOMB_X107_Y18_N14
\inst1|DOUT[14]$latch\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|DOUT[14]$latch~combout\ = (!\inst1|DOUT[15]~54_combout\ & ((GLOBAL(\inst1|DOUT[15]~52clkctrl_outclk\) & ((\inst1|DOUT[14]~74_combout\))) # (!GLOBAL(\inst1|DOUT[15]~52clkctrl_outclk\) & (\inst1|DOUT[14]$latch~combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010000000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|DOUT[15]~54_combout\,
	datab => \inst1|DOUT[14]$latch~combout\,
	datac => \inst1|DOUT[15]~52clkctrl_outclk\,
	datad => \inst1|DOUT[14]~74_combout\,
	combout => \inst1|DOUT[14]$latch~combout\);

-- Location: LCCOMB_X107_Y18_N4
\inst3|OUT16B[14]~23\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|OUT16B[14]~23_combout\ = (\inst|Mux5~0_combout\ & (((\inst1|DOUT[14]$latch~combout\) # (!\inst1|DOUT[15]_2612~combout\)))) # (!\inst|Mux5~0_combout\ & (\inst2|inst1|alu3|mux|Mux1~2_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100101011111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|inst1|alu3|mux|Mux1~2_combout\,
	datab => \inst1|DOUT[14]$latch~combout\,
	datac => \inst|Mux5~0_combout\,
	datad => \inst1|DOUT[15]_2612~combout\,
	combout => \inst3|OUT16B[14]~23_combout\);

-- Location: LCCOMB_X106_Y18_N30
\inst2|inst|reg_gen:2:regs|reg_2|y[6]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|inst|reg_gen:2:regs|reg_2|y[6]~feeder_combout\ = \inst3|OUT16B[14]~23_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst3|OUT16B[14]~23_combout\,
	combout => \inst2|inst|reg_gen:2:regs|reg_2|y[6]~feeder_combout\);

-- Location: FF_X106_Y18_N31
\inst2|inst|reg_gen:2:regs|reg_2|y[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \SW17~input_o\,
	d => \inst2|inst|reg_gen:2:regs|reg_2|y[6]~feeder_combout\,
	ena => \inst2|inst|add_reg1_dcd|Mux3~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst2|inst|reg_gen:2:regs|reg_2|y\(6));

-- Location: LCCOMB_X106_Y18_N20
\inst2|inst|mux_2|mux_1|mux_generate:3:mux_i|Mux1~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|inst|mux_2|mux_1|mux_generate:3:mux_i|Mux1~0_combout\ = (\inst4|inst1|exception~2_combout\ & (\inst2|inst|reg_gen:2:regs|reg_2|y\(6))) # (!\inst4|inst1|exception~2_combout\ & ((\inst4|inst1|data_out[6]~17_combout\ & 
-- ((\inst2|inst|reg_gen:3:regs|reg_2|y\(6)))) # (!\inst4|inst1|data_out[6]~17_combout\ & (\inst2|inst|reg_gen:2:regs|reg_2|y\(6)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010110010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|inst|reg_gen:2:regs|reg_2|y\(6),
	datab => \inst2|inst|reg_gen:3:regs|reg_2|y\(6),
	datac => \inst4|inst1|exception~2_combout\,
	datad => \inst4|inst1|data_out[6]~17_combout\,
	combout => \inst2|inst|mux_2|mux_1|mux_generate:3:mux_i|Mux1~0_combout\);

-- Location: LCCOMB_X107_Y19_N14
\inst2|inst|mux_2|mux_1|mux_generate:3:mux_i|Mux1~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|inst|mux_2|mux_1|mux_generate:3:mux_i|Mux1~1_combout\ = (\inst4|inst1|data_out[6]~17_combout\ & (!\inst4|inst1|exception~2_combout\ & \inst2|inst|reg_gen:1:regs|reg_2|y\(6)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|inst1|data_out[6]~17_combout\,
	datac => \inst4|inst1|exception~2_combout\,
	datad => \inst2|inst|reg_gen:1:regs|reg_2|y\(6),
	combout => \inst2|inst|mux_2|mux_1|mux_generate:3:mux_i|Mux1~1_combout\);

-- Location: LCCOMB_X107_Y19_N4
\inst2|inst|mux_2|mux_1|mux_generate:3:mux_i|Mux1~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|inst|mux_2|mux_1|mux_generate:3:mux_i|Mux1~2_combout\ = (\inst2|inst|mux_2|mux_1|mux_generate:0:mux_i|Mux2~3_combout\ & ((\inst2|inst|mux_2|mux_1|mux_generate:0:mux_i|Mux2~4_combout\ & (\inst2|inst|reg_gen:6:regs|reg_2|y\(6))) # 
-- (!\inst2|inst|mux_2|mux_1|mux_generate:0:mux_i|Mux2~4_combout\ & ((\inst2|inst|mux_2|mux_1|mux_generate:3:mux_i|Mux1~1_combout\))))) # (!\inst2|inst|mux_2|mux_1|mux_generate:0:mux_i|Mux2~3_combout\ & 
-- (((!\inst2|inst|mux_2|mux_1|mux_generate:0:mux_i|Mux2~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000011001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|inst|reg_gen:6:regs|reg_2|y\(6),
	datab => \inst2|inst|mux_2|mux_1|mux_generate:3:mux_i|Mux1~1_combout\,
	datac => \inst2|inst|mux_2|mux_1|mux_generate:0:mux_i|Mux2~3_combout\,
	datad => \inst2|inst|mux_2|mux_1|mux_generate:0:mux_i|Mux2~4_combout\,
	combout => \inst2|inst|mux_2|mux_1|mux_generate:3:mux_i|Mux1~2_combout\);

-- Location: LCCOMB_X110_Y22_N2
\inst2|inst|mux_2|mux_1|mux_generate:3:mux_i|Mux1~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|inst|mux_2|mux_1|mux_generate:3:mux_i|Mux1~3_combout\ = (\inst2|inst|mux_2|mux_1|mux_generate:3:mux_i|Mux1~2_combout\ & ((\inst2|inst|reg_gen:4:regs|reg_2|y\(6)) # ((\inst2|inst|mux_2|mux_1|mux_generate:0:mux_i|Mux2~1_combout\)))) # 
-- (!\inst2|inst|mux_2|mux_1|mux_generate:3:mux_i|Mux1~2_combout\ & (((\inst2|inst|reg_gen:5:regs|reg_2|y\(6) & !\inst2|inst|mux_2|mux_1|mux_generate:0:mux_i|Mux2~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|inst|reg_gen:4:regs|reg_2|y\(6),
	datab => \inst2|inst|mux_2|mux_1|mux_generate:3:mux_i|Mux1~2_combout\,
	datac => \inst2|inst|reg_gen:5:regs|reg_2|y\(6),
	datad => \inst2|inst|mux_2|mux_1|mux_generate:0:mux_i|Mux2~1_combout\,
	combout => \inst2|inst|mux_2|mux_1|mux_generate:3:mux_i|Mux1~3_combout\);

-- Location: LCCOMB_X110_Y22_N4
\inst2|inst|mux_2|mux_1|mux_generate:3:mux_i|Mux1~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|inst|mux_2|mux_1|mux_generate:3:mux_i|Mux1~4_combout\ = (\inst2|inst|mux_2|mux_1|mux_generate:0:mux_i|Mux2~7_combout\ & (\inst2|inst|mux_2|mux_1|mux_generate:3:mux_i|Mux1~0_combout\)) # (!\inst2|inst|mux_2|mux_1|mux_generate:0:mux_i|Mux2~7_combout\ 
-- & ((\inst2|inst|mux_2|mux_1|mux_generate:3:mux_i|Mux1~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|inst|mux_2|mux_1|mux_generate:0:mux_i|Mux2~7_combout\,
	datac => \inst2|inst|mux_2|mux_1|mux_generate:3:mux_i|Mux1~0_combout\,
	datad => \inst2|inst|mux_2|mux_1|mux_generate:3:mux_i|Mux1~3_combout\,
	combout => \inst2|inst|mux_2|mux_1|mux_generate:3:mux_i|Mux1~4_combout\);

-- Location: LCCOMB_X114_Y14_N24
\inst1|reg_gen:17:regs|y[6]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|reg_gen:17:regs|y[6]~feeder_combout\ = \inst2|inst|mux_2|mux_1|mux_generate:3:mux_i|Mux1~4_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst2|inst|mux_2|mux_1|mux_generate:3:mux_i|Mux1~4_combout\,
	combout => \inst1|reg_gen:17:regs|y[6]~feeder_combout\);

-- Location: FF_X114_Y14_N25
\inst1|reg_gen:17:regs|y[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \SW17~input_o\,
	d => \inst1|reg_gen:17:regs|y[6]~feeder_combout\,
	ena => \inst1|dec_to_en\(17),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|reg_gen:17:regs|y\(6));

-- Location: LCCOMB_X114_Y15_N0
\inst1|reg_gen:21:regs|y[6]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|reg_gen:21:regs|y[6]~feeder_combout\ = \inst2|inst|mux_2|mux_1|mux_generate:3:mux_i|Mux1~4_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst2|inst|mux_2|mux_1|mux_generate:3:mux_i|Mux1~4_combout\,
	combout => \inst1|reg_gen:21:regs|y[6]~feeder_combout\);

-- Location: FF_X114_Y15_N1
\inst1|reg_gen:21:regs|y[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \SW17~input_o\,
	d => \inst1|reg_gen:21:regs|y[6]~feeder_combout\,
	ena => \inst1|dec_to_en\(21),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|reg_gen:21:regs|y\(6));

-- Location: LCCOMB_X114_Y14_N18
\inst1|reg_gen:19:regs|y[6]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|reg_gen:19:regs|y[6]~feeder_combout\ = \inst2|inst|mux_2|mux_1|mux_generate:3:mux_i|Mux1~4_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst2|inst|mux_2|mux_1|mux_generate:3:mux_i|Mux1~4_combout\,
	combout => \inst1|reg_gen:19:regs|y[6]~feeder_combout\);

-- Location: FF_X114_Y14_N19
\inst1|reg_gen:19:regs|y[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \SW17~input_o\,
	d => \inst1|reg_gen:19:regs|y[6]~feeder_combout\,
	ena => \inst1|dec_to_en\(19),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|reg_gen:19:regs|y\(6));

-- Location: LCCOMB_X111_Y14_N30
\inst1|reg_gen:7:regs|y[6]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|reg_gen:7:regs|y[6]~feeder_combout\ = \inst2|inst|mux_2|mux_1|mux_generate:3:mux_i|Mux1~4_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst2|inst|mux_2|mux_1|mux_generate:3:mux_i|Mux1~4_combout\,
	combout => \inst1|reg_gen:7:regs|y[6]~feeder_combout\);

-- Location: FF_X111_Y14_N31
\inst1|reg_gen:7:regs|y[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \SW17~input_o\,
	d => \inst1|reg_gen:7:regs|y[6]~feeder_combout\,
	ena => \inst1|dec_to_en\(7),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|reg_gen:7:regs|y\(6));

-- Location: LCCOMB_X112_Y14_N18
\inst1|reg_gen:23:regs|y[6]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|reg_gen:23:regs|y[6]~feeder_combout\ = \inst2|inst|mux_2|mux_1|mux_generate:3:mux_i|Mux1~4_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst2|inst|mux_2|mux_1|mux_generate:3:mux_i|Mux1~4_combout\,
	combout => \inst1|reg_gen:23:regs|y[6]~feeder_combout\);

-- Location: FF_X112_Y14_N19
\inst1|reg_gen:23:regs|y[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \SW17~input_o\,
	d => \inst1|reg_gen:23:regs|y[6]~feeder_combout\,
	ena => \inst1|dec_to_en\(23),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|reg_gen:23:regs|y\(6));

-- Location: LCCOMB_X111_Y16_N24
\inst1|DOUT[14]~56\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|DOUT[14]~56_combout\ = (\inst2|inst1|alu1|mux|Mux3~1_combout\ & (\inst1|reg_gen:7:regs|y\(6))) # (!\inst2|inst1|alu1|mux|Mux3~1_combout\ & ((\inst1|reg_gen:23:regs|y\(6))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010110010101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|reg_gen:7:regs|y\(6),
	datab => \inst1|reg_gen:23:regs|y\(6),
	datac => \inst2|inst1|alu1|mux|Mux3~1_combout\,
	combout => \inst1|DOUT[14]~56_combout\);

-- Location: LCCOMB_X111_Y16_N30
\inst1|DOUT[14]~57\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|DOUT[14]~57_combout\ = (\inst2|inst1|alu0|mux|Mux2~1_combout\ & (((\inst2|inst1|alu0|mux|Mux1~3_combout\)))) # (!\inst2|inst1|alu0|mux|Mux2~1_combout\ & ((\inst2|inst1|alu0|mux|Mux1~3_combout\ & ((\inst1|DOUT[14]~56_combout\))) # 
-- (!\inst2|inst1|alu0|mux|Mux1~3_combout\ & (\inst1|reg_gen:19:regs|y\(6)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001011000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|reg_gen:19:regs|y\(6),
	datab => \inst2|inst1|alu0|mux|Mux2~1_combout\,
	datac => \inst2|inst1|alu0|mux|Mux1~3_combout\,
	datad => \inst1|DOUT[14]~56_combout\,
	combout => \inst1|DOUT[14]~57_combout\);

-- Location: LCCOMB_X111_Y16_N28
\inst1|DOUT[14]~58\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|DOUT[14]~58_combout\ = (\inst1|DOUT[14]~57_combout\ & (((\inst1|reg_gen:21:regs|y\(6)) # (!\inst2|inst1|alu0|mux|Mux2~1_combout\)))) # (!\inst1|DOUT[14]~57_combout\ & (\inst1|reg_gen:17:regs|y\(6) & ((\inst2|inst1|alu0|mux|Mux2~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|reg_gen:17:regs|y\(6),
	datab => \inst1|reg_gen:21:regs|y\(6),
	datac => \inst1|DOUT[14]~57_combout\,
	datad => \inst2|inst1|alu0|mux|Mux2~1_combout\,
	combout => \inst1|DOUT[14]~58_combout\);

-- Location: LCCOMB_X111_Y17_N20
\inst1|DOUT[6]~212\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|DOUT[6]~212_combout\ = (\inst1|DOUT[5]~22_combout\ & (((\inst1|DOUT[5]~201_combout\)))) # (!\inst1|DOUT[5]~22_combout\ & ((\inst1|DOUT[5]~201_combout\ & ((\inst1|DOUT[14]~67_combout\))) # (!\inst1|DOUT[5]~201_combout\ & 
-- (\inst1|DOUT[14]~71_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|DOUT[14]~71_combout\,
	datab => \inst1|DOUT[14]~67_combout\,
	datac => \inst1|DOUT[5]~22_combout\,
	datad => \inst1|DOUT[5]~201_combout\,
	combout => \inst1|DOUT[6]~212_combout\);

-- Location: LCCOMB_X111_Y17_N14
\inst1|DOUT[6]~213\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|DOUT[6]~213_combout\ = (\inst1|DOUT[5]~22_combout\ & ((\inst1|DOUT[6]~212_combout\ & ((\inst1|DOUT[14]~64_combout\))) # (!\inst1|DOUT[6]~212_combout\ & (\inst1|DOUT[14]~60_combout\)))) # (!\inst1|DOUT[5]~22_combout\ & 
-- (((\inst1|DOUT[6]~212_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|DOUT[14]~60_combout\,
	datab => \inst1|DOUT[14]~64_combout\,
	datac => \inst1|DOUT[5]~22_combout\,
	datad => \inst1|DOUT[6]~212_combout\,
	combout => \inst1|DOUT[6]~213_combout\);

-- Location: LCCOMB_X110_Y20_N30
\inst1|DOUT[6]~211\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|DOUT[6]~211_combout\ = (\inst1|DOUT[13]~29_combout\ & (((\inst1|reg_gen:15:regs|y\(6)) # (\inst1|DOUT[13]~34_combout\)))) # (!\inst1|DOUT[13]~29_combout\ & (\inst1|DOUT[14]~68_combout\ & ((!\inst1|DOUT[13]~34_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|DOUT[13]~29_combout\,
	datab => \inst1|DOUT[14]~68_combout\,
	datac => \inst1|reg_gen:15:regs|y\(6),
	datad => \inst1|DOUT[13]~34_combout\,
	combout => \inst1|DOUT[6]~211_combout\);

-- Location: LCCOMB_X110_Y20_N18
\inst1|DOUT[6]~214\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|DOUT[6]~214_combout\ = (\inst1|DOUT[13]~34_combout\ & ((\inst1|DOUT[6]~211_combout\ & ((\inst1|DOUT[6]~213_combout\))) # (!\inst1|DOUT[6]~211_combout\ & (\inst1|DOUT[14]~58_combout\)))) # (!\inst1|DOUT[13]~34_combout\ & 
-- (((\inst1|DOUT[6]~211_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|DOUT[13]~34_combout\,
	datab => \inst1|DOUT[14]~58_combout\,
	datac => \inst1|DOUT[6]~213_combout\,
	datad => \inst1|DOUT[6]~211_combout\,
	combout => \inst1|DOUT[6]~214_combout\);

-- Location: LCCOMB_X111_Y18_N2
\inst1|DOUT[6]~208\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|DOUT[6]~208_combout\ = (\inst2|inst1|alu0|mux|Mux1~3_combout\ & (((\inst1|DOUT[14]~62_combout\) # (\inst2|inst1|alu0|mux|Mux2~1_combout\)))) # (!\inst2|inst1|alu0|mux|Mux1~3_combout\ & (\inst1|reg_gen:18:regs|y\(6) & 
-- ((!\inst2|inst1|alu0|mux|Mux2~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|reg_gen:18:regs|y\(6),
	datab => \inst2|inst1|alu0|mux|Mux1~3_combout\,
	datac => \inst1|DOUT[14]~62_combout\,
	datad => \inst2|inst1|alu0|mux|Mux2~1_combout\,
	combout => \inst1|DOUT[6]~208_combout\);

-- Location: LCCOMB_X111_Y18_N4
\inst1|DOUT[6]~209\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|DOUT[6]~209_combout\ = (\inst2|inst1|alu0|mux|Mux2~1_combout\ & ((\inst1|DOUT[6]~208_combout\ & (\inst1|reg_gen:20:regs|y\(6))) # (!\inst1|DOUT[6]~208_combout\ & ((\inst1|reg_gen:16:regs|y\(6)))))) # (!\inst2|inst1|alu0|mux|Mux2~1_combout\ & 
-- (((\inst1|DOUT[6]~208_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|inst1|alu0|mux|Mux2~1_combout\,
	datab => \inst1|reg_gen:20:regs|y\(6),
	datac => \inst1|reg_gen:16:regs|y\(6),
	datad => \inst1|DOUT[6]~208_combout\,
	combout => \inst1|DOUT[6]~209_combout\);

-- Location: LCCOMB_X110_Y20_N0
\inst1|DOUT[6]~210\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|DOUT[6]~210_combout\ = (\inst1|DOUT[6]~209_combout\ & ((\inst1|DOUT[7]~197_combout\) # ((\inst1|DOUT[5]~198_combout\ & \inst1|reg_gen:30:regs|y\(6))))) # (!\inst1|DOUT[6]~209_combout\ & (((\inst1|DOUT[5]~198_combout\ & 
-- \inst1|reg_gen:30:regs|y\(6)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|DOUT[6]~209_combout\,
	datab => \inst1|DOUT[7]~197_combout\,
	datac => \inst1|DOUT[5]~198_combout\,
	datad => \inst1|reg_gen:30:regs|y\(6),
	combout => \inst1|DOUT[6]~210_combout\);

-- Location: LCCOMB_X110_Y20_N20
\inst1|DOUT[6]~215\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|DOUT[6]~215_combout\ = (\inst1|DOUT[6]~210_combout\) # ((\inst1|DOUT[7]~205_combout\ & \inst1|DOUT[6]~214_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst1|DOUT[7]~205_combout\,
	datac => \inst1|DOUT[6]~214_combout\,
	datad => \inst1|DOUT[6]~210_combout\,
	combout => \inst1|DOUT[6]~215_combout\);

-- Location: LCCOMB_X110_Y20_N4
\inst1|DOUT[6]$latch\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|DOUT[6]$latch~combout\ = (!\inst1|DOUT[7]~266_combout\ & ((GLOBAL(\inst1|DOUT[15]~51clkctrl_outclk\) & ((\inst1|DOUT[6]~215_combout\))) # (!GLOBAL(\inst1|DOUT[15]~51clkctrl_outclk\) & (\inst1|DOUT[6]$latch~combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010000000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|DOUT[7]~266_combout\,
	datab => \inst1|DOUT[6]$latch~combout\,
	datac => \inst1|DOUT[15]~51clkctrl_outclk\,
	datad => \inst1|DOUT[6]~215_combout\,
	combout => \inst1|DOUT[6]$latch~combout\);

-- Location: LCCOMB_X109_Y23_N4
\inst3|OUT16B[6]~31\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|OUT16B[6]~31_combout\ = (\inst|Mux5~0_combout\ & (((\inst1|DOUT[6]$latch~combout\) # (!\inst1|DOUT[7]_2052~combout\)))) # (!\inst|Mux5~0_combout\ & (\inst2|inst1|alu1|mux|Mux1~1_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111001001110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Mux5~0_combout\,
	datab => \inst2|inst1|alu1|mux|Mux1~1_combout\,
	datac => \inst1|DOUT[7]_2052~combout\,
	datad => \inst1|DOUT[6]$latch~combout\,
	combout => \inst3|OUT16B[6]~31_combout\);

-- Location: FF_X108_Y21_N1
\inst2|inst|reg_gen:3:regs|reg_1|y[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \SW17~input_o\,
	asdata => \inst3|OUT16B[6]~31_combout\,
	sload => VCC,
	ena => \inst2|inst|add_reg1_dcd|Mux3~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst2|inst|reg_gen:3:regs|reg_1|y\(6));

-- Location: LCCOMB_X108_Y21_N0
\inst2|inst|mux_1|mux_1|mux_generate:1:mux_i|Mux1~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|inst|mux_1|mux_1|mux_generate:1:mux_i|Mux1~2_combout\ = (\inst4|inst1|exception~2_combout\ & (((\inst2|inst|reg_gen:2:regs|reg_1|y\(6))))) # (!\inst4|inst1|exception~2_combout\ & ((\inst4|inst1|data_out[9]~14_combout\ & 
-- (\inst2|inst|reg_gen:3:regs|reg_1|y\(6))) # (!\inst4|inst1|data_out[9]~14_combout\ & ((\inst2|inst|reg_gen:2:regs|reg_1|y\(6))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101101000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|inst1|exception~2_combout\,
	datab => \inst4|inst1|data_out[9]~14_combout\,
	datac => \inst2|inst|reg_gen:3:regs|reg_1|y\(6),
	datad => \inst2|inst|reg_gen:2:regs|reg_1|y\(6),
	combout => \inst2|inst|mux_1|mux_1|mux_generate:1:mux_i|Mux1~2_combout\);

-- Location: LCCOMB_X108_Y19_N6
\inst2|inst|mux_1|mux_1|mux_generate:1:mux_i|Mux1~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|inst|mux_1|mux_1|mux_generate:1:mux_i|Mux1~6_combout\ = (\inst2|inst|reg_gen:1:regs|reg_1|y\(6) & (!\inst4|inst1|exception~2_combout\ & ((\inst4|inst|reg|reg_1|y\(5)) # (\inst4|inst1|data_out[9]~13_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010001000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|inst|reg_gen:1:regs|reg_1|y\(6),
	datab => \inst4|inst1|exception~2_combout\,
	datac => \inst4|inst|reg|reg_1|y\(5),
	datad => \inst4|inst1|data_out[9]~13_combout\,
	combout => \inst2|inst|mux_1|mux_1|mux_generate:1:mux_i|Mux1~6_combout\);

-- Location: LCCOMB_X107_Y19_N30
\inst2|inst|mux_1|mux_1|mux_generate:1:mux_i|Mux1~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|inst|mux_1|mux_1|mux_generate:1:mux_i|Mux1~3_combout\ = (\inst2|inst|mux_1|mux_1|mux_generate:3:mux_i|Mux3~6_combout\ & (((\inst2|inst|reg_gen:6:regs|reg_1|y\(6) & \inst2|inst|mux_1|mux_1|mux_generate:3:mux_i|Mux3~5_combout\)))) # 
-- (!\inst2|inst|mux_1|mux_1|mux_generate:3:mux_i|Mux3~6_combout\ & ((\inst2|inst|mux_1|mux_1|mux_generate:1:mux_i|Mux1~6_combout\) # ((!\inst2|inst|mux_1|mux_1|mux_generate:3:mux_i|Mux3~5_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110001000110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|inst|mux_1|mux_1|mux_generate:1:mux_i|Mux1~6_combout\,
	datab => \inst2|inst|mux_1|mux_1|mux_generate:3:mux_i|Mux3~6_combout\,
	datac => \inst2|inst|reg_gen:6:regs|reg_1|y\(6),
	datad => \inst2|inst|mux_1|mux_1|mux_generate:3:mux_i|Mux3~5_combout\,
	combout => \inst2|inst|mux_1|mux_1|mux_generate:1:mux_i|Mux1~3_combout\);

-- Location: LCCOMB_X108_Y21_N8
\inst2|inst|mux_1|mux_1|mux_generate:1:mux_i|Mux1~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|inst|mux_1|mux_1|mux_generate:1:mux_i|Mux1~4_combout\ = (\inst2|inst|mux_1|mux_1|mux_generate:3:mux_i|Mux3~4_combout\ & (\inst2|inst|mux_1|mux_1|mux_generate:1:mux_i|Mux1~3_combout\)) # (!\inst2|inst|mux_1|mux_1|mux_generate:3:mux_i|Mux3~4_combout\ 
-- & ((\inst2|inst|mux_1|mux_1|mux_generate:1:mux_i|Mux1~3_combout\ & (\inst2|inst|reg_gen:4:regs|reg_1|y\(6))) # (!\inst2|inst|mux_1|mux_1|mux_generate:1:mux_i|Mux1~3_combout\ & ((\inst2|inst|reg_gen:5:regs|reg_1|y\(6))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100111001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|inst|mux_1|mux_1|mux_generate:3:mux_i|Mux3~4_combout\,
	datab => \inst2|inst|mux_1|mux_1|mux_generate:1:mux_i|Mux1~3_combout\,
	datac => \inst2|inst|reg_gen:4:regs|reg_1|y\(6),
	datad => \inst2|inst|reg_gen:5:regs|reg_1|y\(6),
	combout => \inst2|inst|mux_1|mux_1|mux_generate:1:mux_i|Mux1~4_combout\);

-- Location: LCCOMB_X108_Y21_N16
\inst2|inst|mux_1|mux_1|mux_generate:1:mux_i|Mux1~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|inst|mux_1|mux_1|mux_generate:1:mux_i|Mux1~5_combout\ = (\inst2|inst|mux_1|mux_1|mux_generate:3:mux_i|Mux3~12_combout\ & (\inst2|inst|mux_1|mux_1|mux_generate:1:mux_i|Mux1~2_combout\)) # 
-- (!\inst2|inst|mux_1|mux_1|mux_generate:3:mux_i|Mux3~12_combout\ & ((\inst2|inst|mux_1|mux_1|mux_generate:1:mux_i|Mux1~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst2|inst|mux_1|mux_1|mux_generate:1:mux_i|Mux1~2_combout\,
	datac => \inst2|inst|mux_1|mux_1|mux_generate:1:mux_i|Mux1~4_combout\,
	datad => \inst2|inst|mux_1|mux_1|mux_generate:3:mux_i|Mux3~12_combout\,
	combout => \inst2|inst|mux_1|mux_1|mux_generate:1:mux_i|Mux1~5_combout\);

-- Location: LCCOMB_X109_Y21_N8
\inst2|inst1|alu1|adder|C[3]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|inst1|alu1|adder|C[3]~2_combout\ = (\inst2|inst|mux_1|mux_1|mux_generate:1:mux_i|Mux1~5_combout\ & ((\inst2|inst1|alu1|adder|C[2]~1_combout\) # (\inst2|inst2|OUT16B[6]~24_combout\ $ (\inst2|inst3|DOUT[2]~3_combout\)))) # 
-- (!\inst2|inst|mux_1|mux_1|mux_generate:1:mux_i|Mux1~5_combout\ & (\inst2|inst1|alu1|adder|C[2]~1_combout\ & (\inst2|inst2|OUT16B[6]~24_combout\ $ (\inst2|inst3|DOUT[2]~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011111000101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|inst|mux_1|mux_1|mux_generate:1:mux_i|Mux1~5_combout\,
	datab => \inst2|inst2|OUT16B[6]~24_combout\,
	datac => \inst2|inst3|DOUT[2]~3_combout\,
	datad => \inst2|inst1|alu1|adder|C[2]~1_combout\,
	combout => \inst2|inst1|alu1|adder|C[3]~2_combout\);

-- Location: LCCOMB_X109_Y23_N14
\inst2|inst1|alu1|adder|S[3]\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|inst1|alu1|adder|S\(3) = \inst2|inst3|DOUT[2]~3_combout\ $ (\inst2|inst|mux_1|mux_1|mux_generate:1:mux_i|Mux0~5_combout\ $ (\inst2|inst1|alu1|adder|C[3]~2_combout\ $ (\inst2|inst2|OUT16B[7]~23_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|inst3|DOUT[2]~3_combout\,
	datab => \inst2|inst|mux_1|mux_1|mux_generate:1:mux_i|Mux0~5_combout\,
	datac => \inst2|inst1|alu1|adder|C[3]~2_combout\,
	datad => \inst2|inst2|OUT16B[7]~23_combout\,
	combout => \inst2|inst1|alu1|adder|S\(3));

-- Location: LCCOMB_X109_Y23_N0
\inst2|inst1|alu1|mux|Mux0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|inst1|alu1|mux|Mux0~0_combout\ = (!\inst2|inst3|DOUT[1]~4_combout\ & ((\inst2|inst|mux_1|mux_1|mux_generate:1:mux_i|Mux0~5_combout\ & ((\inst2|inst3|DOUT[0]~2_combout\) # (\inst2|inst2|OUT16B[7]~23_combout\))) # 
-- (!\inst2|inst|mux_1|mux_1|mux_generate:1:mux_i|Mux0~5_combout\ & (\inst2|inst3|DOUT[0]~2_combout\ & \inst2|inst2|OUT16B[7]~23_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111000001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|inst|mux_1|mux_1|mux_generate:1:mux_i|Mux0~5_combout\,
	datab => \inst2|inst3|DOUT[0]~2_combout\,
	datac => \inst2|inst3|DOUT[1]~4_combout\,
	datad => \inst2|inst2|OUT16B[7]~23_combout\,
	combout => \inst2|inst1|alu1|mux|Mux0~0_combout\);

-- Location: LCCOMB_X109_Y23_N12
\inst2|inst1|alu1|mux|Mux0~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|inst1|alu1|mux|Mux0~1_combout\ = (\inst2|inst1|alu1|mux|Mux0~0_combout\) # ((\inst2|inst1|alu1|adder|S\(3) & \inst2|inst1|alu0|mux|Mux1~4_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110011101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|inst1|alu1|adder|S\(3),
	datab => \inst2|inst1|alu1|mux|Mux0~0_combout\,
	datac => \inst2|inst1|alu0|mux|Mux1~4_combout\,
	combout => \inst2|inst1|alu1|mux|Mux0~1_combout\);

-- Location: LCCOMB_X114_Y17_N28
\inst1|reg_gen:18:regs|y[7]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|reg_gen:18:regs|y[7]~feeder_combout\ = \inst2|inst|mux_2|mux_1|mux_generate:1:mux_i|Mux0~4_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst2|inst|mux_2|mux_1|mux_generate:1:mux_i|Mux0~4_combout\,
	combout => \inst1|reg_gen:18:regs|y[7]~feeder_combout\);

-- Location: FF_X114_Y17_N29
\inst1|reg_gen:18:regs|y[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \SW17~input_o\,
	d => \inst1|reg_gen:18:regs|y[7]~feeder_combout\,
	ena => \inst1|dec_to_en\(18),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|reg_gen:18:regs|y\(7));

-- Location: LCCOMB_X114_Y18_N24
\inst1|reg_gen:6:regs|y[7]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|reg_gen:6:regs|y[7]~feeder_combout\ = \inst2|inst|mux_2|mux_1|mux_generate:1:mux_i|Mux0~4_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst2|inst|mux_2|mux_1|mux_generate:1:mux_i|Mux0~4_combout\,
	combout => \inst1|reg_gen:6:regs|y[7]~feeder_combout\);

-- Location: FF_X114_Y18_N25
\inst1|reg_gen:6:regs|y[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \SW17~input_o\,
	d => \inst1|reg_gen:6:regs|y[7]~feeder_combout\,
	ena => \inst1|dec_to_en\(6),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|reg_gen:6:regs|y\(7));

-- Location: LCCOMB_X113_Y14_N12
\inst1|reg_gen:22:regs|y[7]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|reg_gen:22:regs|y[7]~feeder_combout\ = \inst2|inst|mux_2|mux_1|mux_generate:1:mux_i|Mux0~4_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|inst|mux_2|mux_1|mux_generate:1:mux_i|Mux0~4_combout\,
	combout => \inst1|reg_gen:22:regs|y[7]~feeder_combout\);

-- Location: FF_X113_Y14_N13
\inst1|reg_gen:22:regs|y[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \SW17~input_o\,
	d => \inst1|reg_gen:22:regs|y[7]~feeder_combout\,
	ena => \inst1|dec_to_en\(22),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|reg_gen:22:regs|y\(7));

-- Location: LCCOMB_X113_Y18_N10
\inst1|DOUT[15]~32\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|DOUT[15]~32_combout\ = (\inst2|inst1|alu1|mux|Mux3~1_combout\ & (\inst1|reg_gen:6:regs|y\(7))) # (!\inst2|inst1|alu1|mux|Mux3~1_combout\ & ((\inst1|reg_gen:22:regs|y\(7))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|reg_gen:6:regs|y\(7),
	datac => \inst1|reg_gen:22:regs|y\(7),
	datad => \inst2|inst1|alu1|mux|Mux3~1_combout\,
	combout => \inst1|DOUT[15]~32_combout\);

-- Location: LCCOMB_X113_Y18_N8
\inst1|DOUT[7]~195\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|DOUT[7]~195_combout\ = (\inst2|inst1|alu0|mux|Mux1~3_combout\ & (((\inst1|DOUT[15]~32_combout\) # (\inst2|inst1|alu0|mux|Mux2~1_combout\)))) # (!\inst2|inst1|alu0|mux|Mux1~3_combout\ & (\inst1|reg_gen:18:regs|y\(7) & 
-- ((!\inst2|inst1|alu0|mux|Mux2~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|reg_gen:18:regs|y\(7),
	datab => \inst2|inst1|alu0|mux|Mux1~3_combout\,
	datac => \inst1|DOUT[15]~32_combout\,
	datad => \inst2|inst1|alu0|mux|Mux2~1_combout\,
	combout => \inst1|DOUT[7]~195_combout\);

-- Location: FF_X111_Y18_N25
\inst1|reg_gen:16:regs|y[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \SW17~input_o\,
	asdata => \inst2|inst|mux_2|mux_1|mux_generate:1:mux_i|Mux0~4_combout\,
	sload => VCC,
	ena => \inst1|dec_to_en[16]~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|reg_gen:16:regs|y\(7));

-- Location: LCCOMB_X114_Y15_N14
\inst1|reg_gen:20:regs|y[7]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|reg_gen:20:regs|y[7]~feeder_combout\ = \inst2|inst|mux_2|mux_1|mux_generate:1:mux_i|Mux0~4_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst2|inst|mux_2|mux_1|mux_generate:1:mux_i|Mux0~4_combout\,
	combout => \inst1|reg_gen:20:regs|y[7]~feeder_combout\);

-- Location: FF_X114_Y15_N15
\inst1|reg_gen:20:regs|y[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \SW17~input_o\,
	d => \inst1|reg_gen:20:regs|y[7]~feeder_combout\,
	ena => \inst1|dec_to_en\(20),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|reg_gen:20:regs|y\(7));

-- Location: LCCOMB_X113_Y18_N22
\inst1|DOUT[7]~196\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|DOUT[7]~196_combout\ = (\inst1|DOUT[7]~195_combout\ & (((\inst1|reg_gen:20:regs|y\(7)) # (!\inst2|inst1|alu0|mux|Mux2~1_combout\)))) # (!\inst1|DOUT[7]~195_combout\ & (\inst1|reg_gen:16:regs|y\(7) & ((\inst2|inst1|alu0|mux|Mux2~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|DOUT[7]~195_combout\,
	datab => \inst1|reg_gen:16:regs|y\(7),
	datac => \inst1|reg_gen:20:regs|y\(7),
	datad => \inst2|inst1|alu0|mux|Mux2~1_combout\,
	combout => \inst1|DOUT[7]~196_combout\);

-- Location: FF_X112_Y21_N21
\inst1|reg_gen:30:regs|y[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \SW17~input_o\,
	asdata => \inst2|inst|mux_2|mux_1|mux_generate:1:mux_i|Mux0~4_combout\,
	sload => VCC,
	ena => \inst1|dec_to_en\(30),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|reg_gen:30:regs|y\(7));

-- Location: LCCOMB_X110_Y20_N2
\inst1|DOUT[7]~199\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|DOUT[7]~199_combout\ = (\inst1|DOUT[5]~198_combout\ & ((\inst1|reg_gen:30:regs|y\(7)) # ((\inst1|DOUT[7]~196_combout\ & \inst1|DOUT[7]~197_combout\)))) # (!\inst1|DOUT[5]~198_combout\ & (\inst1|DOUT[7]~196_combout\ & (\inst1|DOUT[7]~197_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|DOUT[5]~198_combout\,
	datab => \inst1|DOUT[7]~196_combout\,
	datac => \inst1|DOUT[7]~197_combout\,
	datad => \inst1|reg_gen:30:regs|y\(7),
	combout => \inst1|DOUT[7]~199_combout\);

-- Location: FF_X114_Y17_N31
\inst1|reg_gen:28:regs|y[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \SW17~input_o\,
	asdata => \inst2|inst|mux_2|mux_1|mux_generate:1:mux_i|Mux0~4_combout\,
	sload => VCC,
	ena => \inst1|dec_to_en\(28),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|reg_gen:28:regs|y\(7));

-- Location: LCCOMB_X112_Y15_N28
\inst1|reg_gen:12:regs|y[7]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|reg_gen:12:regs|y[7]~feeder_combout\ = \inst2|inst|mux_2|mux_1|mux_generate:1:mux_i|Mux0~4_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst2|inst|mux_2|mux_1|mux_generate:1:mux_i|Mux0~4_combout\,
	combout => \inst1|reg_gen:12:regs|y[7]~feeder_combout\);

-- Location: FF_X112_Y15_N29
\inst1|reg_gen:12:regs|y[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \SW17~input_o\,
	d => \inst1|reg_gen:12:regs|y[7]~feeder_combout\,
	ena => \inst1|dec_to_en\(12),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|reg_gen:12:regs|y\(7));

-- Location: LCCOMB_X112_Y17_N28
\inst1|DOUT[15]~35\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|DOUT[15]~35_combout\ = (\inst2|inst1|alu1|mux|Mux3~1_combout\ & ((\inst1|reg_gen:12:regs|y\(7)))) # (!\inst2|inst1|alu1|mux|Mux3~1_combout\ & (\inst1|reg_gen:28:regs|y\(7)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|reg_gen:28:regs|y\(7),
	datab => \inst1|reg_gen:12:regs|y\(7),
	datad => \inst2|inst1|alu1|mux|Mux3~1_combout\,
	combout => \inst1|DOUT[15]~35_combout\);

-- Location: LCCOMB_X110_Y22_N0
\inst2|inst2|OUT16B[15]~28\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|inst2|OUT16B[15]~28_combout\ = (\inst|Mux7~0_combout\ & (!\inst4|inst1|exception~2_combout\ & ((!\inst4|inst1|data_out[5]~5_combout\)))) # (!\inst|Mux7~0_combout\ & (((\inst2|inst|mux_2|mux_1|mux_generate:3:mux_i|Mux0~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000001110010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Mux7~0_combout\,
	datab => \inst4|inst1|exception~2_combout\,
	datac => \inst2|inst|mux_2|mux_1|mux_generate:3:mux_i|Mux0~4_combout\,
	datad => \inst4|inst1|data_out[5]~5_combout\,
	combout => \inst2|inst2|OUT16B[15]~28_combout\);

-- Location: FF_X109_Y18_N15
\inst2|inst|reg_gen:1:regs|reg_2|y[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \SW17~input_o\,
	d => \inst3|OUT16B[15]~22_combout\,
	ena => \inst2|inst|add_reg1_dcd|Mux3~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst2|inst|reg_gen:1:regs|reg_2|y\(7));

-- Location: LCCOMB_X108_Y20_N10
\inst2|inst|mux_1|mux_1|mux_generate:3:mux_i|Mux0~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|inst|mux_1|mux_1|mux_generate:3:mux_i|Mux0~6_combout\ = (\inst2|inst|reg_gen:1:regs|reg_2|y\(7) & (!\inst4|inst1|exception~2_combout\ & ((\inst4|inst1|data_out[9]~13_combout\) # (\inst4|inst|reg|reg_1|y\(5)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101000001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|inst|reg_gen:1:regs|reg_2|y\(7),
	datab => \inst4|inst1|data_out[9]~13_combout\,
	datac => \inst4|inst1|exception~2_combout\,
	datad => \inst4|inst|reg|reg_1|y\(5),
	combout => \inst2|inst|mux_1|mux_1|mux_generate:3:mux_i|Mux0~6_combout\);

-- Location: FF_X106_Y20_N19
\inst2|inst|reg_gen:6:regs|reg_2|y[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \SW17~input_o\,
	asdata => \inst3|OUT16B[15]~22_combout\,
	sload => VCC,
	ena => \inst2|inst|add_reg1_dcd|Mux3~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst2|inst|reg_gen:6:regs|reg_2|y\(7));

-- Location: LCCOMB_X108_Y20_N26
\inst2|inst|mux_1|mux_1|mux_generate:3:mux_i|Mux0~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|inst|mux_1|mux_1|mux_generate:3:mux_i|Mux0~3_combout\ = (\inst2|inst|mux_1|mux_1|mux_generate:3:mux_i|Mux3~6_combout\ & (((\inst2|inst|reg_gen:6:regs|reg_2|y\(7) & \inst2|inst|mux_1|mux_1|mux_generate:3:mux_i|Mux3~5_combout\)))) # 
-- (!\inst2|inst|mux_1|mux_1|mux_generate:3:mux_i|Mux3~6_combout\ & ((\inst2|inst|mux_1|mux_1|mux_generate:3:mux_i|Mux0~6_combout\) # ((!\inst2|inst|mux_1|mux_1|mux_generate:3:mux_i|Mux3~5_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100101000001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|inst|mux_1|mux_1|mux_generate:3:mux_i|Mux0~6_combout\,
	datab => \inst2|inst|reg_gen:6:regs|reg_2|y\(7),
	datac => \inst2|inst|mux_1|mux_1|mux_generate:3:mux_i|Mux3~6_combout\,
	datad => \inst2|inst|mux_1|mux_1|mux_generate:3:mux_i|Mux3~5_combout\,
	combout => \inst2|inst|mux_1|mux_1|mux_generate:3:mux_i|Mux0~3_combout\);

-- Location: FF_X108_Y20_N17
\inst2|inst|reg_gen:5:regs|reg_2|y[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \SW17~input_o\,
	asdata => \inst3|OUT16B[15]~22_combout\,
	sload => VCC,
	ena => \inst2|inst|add_reg1_dcd|Mux3~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst2|inst|reg_gen:5:regs|reg_2|y\(7));

-- Location: FF_X109_Y22_N19
\inst2|inst|reg_gen:4:regs|reg_2|y[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \SW17~input_o\,
	asdata => \inst3|OUT16B[15]~22_combout\,
	sload => VCC,
	ena => \inst2|inst|add_reg1_dcd|Mux3~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst2|inst|reg_gen:4:regs|reg_2|y\(7));

-- Location: LCCOMB_X108_Y20_N16
\inst2|inst|mux_1|mux_1|mux_generate:3:mux_i|Mux0~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|inst|mux_1|mux_1|mux_generate:3:mux_i|Mux0~4_combout\ = (\inst2|inst|mux_1|mux_1|mux_generate:3:mux_i|Mux0~3_combout\ & ((\inst2|inst|mux_1|mux_1|mux_generate:3:mux_i|Mux3~4_combout\) # ((\inst2|inst|reg_gen:4:regs|reg_2|y\(7))))) # 
-- (!\inst2|inst|mux_1|mux_1|mux_generate:3:mux_i|Mux0~3_combout\ & (!\inst2|inst|mux_1|mux_1|mux_generate:3:mux_i|Mux3~4_combout\ & (\inst2|inst|reg_gen:5:regs|reg_2|y\(7))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|inst|mux_1|mux_1|mux_generate:3:mux_i|Mux0~3_combout\,
	datab => \inst2|inst|mux_1|mux_1|mux_generate:3:mux_i|Mux3~4_combout\,
	datac => \inst2|inst|reg_gen:5:regs|reg_2|y\(7),
	datad => \inst2|inst|reg_gen:4:regs|reg_2|y\(7),
	combout => \inst2|inst|mux_1|mux_1|mux_generate:3:mux_i|Mux0~4_combout\);

-- Location: LCCOMB_X108_Y18_N4
\inst2|inst|reg_gen:2:regs|reg_2|y[7]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|inst|reg_gen:2:regs|reg_2|y[7]~feeder_combout\ = \inst3|OUT16B[15]~22_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst3|OUT16B[15]~22_combout\,
	combout => \inst2|inst|reg_gen:2:regs|reg_2|y[7]~feeder_combout\);

-- Location: FF_X108_Y18_N5
\inst2|inst|reg_gen:2:regs|reg_2|y[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \SW17~input_o\,
	d => \inst2|inst|reg_gen:2:regs|reg_2|y[7]~feeder_combout\,
	ena => \inst2|inst|add_reg1_dcd|Mux3~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst2|inst|reg_gen:2:regs|reg_2|y\(7));

-- Location: LCCOMB_X108_Y18_N28
\inst2|inst|mux_1|mux_1|mux_generate:3:mux_i|Mux0~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|inst|mux_1|mux_1|mux_generate:3:mux_i|Mux0~2_combout\ = (\inst4|inst1|data_out[9]~14_combout\ & ((\inst4|inst1|exception~2_combout\ & ((\inst2|inst|reg_gen:2:regs|reg_2|y\(7)))) # (!\inst4|inst1|exception~2_combout\ & 
-- (\inst2|inst|reg_gen:3:regs|reg_2|y\(7))))) # (!\inst4|inst1|data_out[9]~14_combout\ & (((\inst2|inst|reg_gen:2:regs|reg_2|y\(7)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|inst1|data_out[9]~14_combout\,
	datab => \inst2|inst|reg_gen:3:regs|reg_2|y\(7),
	datac => \inst2|inst|reg_gen:2:regs|reg_2|y\(7),
	datad => \inst4|inst1|exception~2_combout\,
	combout => \inst2|inst|mux_1|mux_1|mux_generate:3:mux_i|Mux0~2_combout\);

-- Location: LCCOMB_X108_Y18_N16
\inst2|inst|mux_1|mux_1|mux_generate:3:mux_i|Mux0~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|inst|mux_1|mux_1|mux_generate:3:mux_i|Mux0~5_combout\ = (\inst2|inst|mux_1|mux_1|mux_generate:3:mux_i|Mux3~12_combout\ & ((\inst2|inst|mux_1|mux_1|mux_generate:3:mux_i|Mux0~2_combout\))) # 
-- (!\inst2|inst|mux_1|mux_1|mux_generate:3:mux_i|Mux3~12_combout\ & (\inst2|inst|mux_1|mux_1|mux_generate:3:mux_i|Mux0~4_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|inst|mux_1|mux_1|mux_generate:3:mux_i|Mux3~12_combout\,
	datac => \inst2|inst|mux_1|mux_1|mux_generate:3:mux_i|Mux0~4_combout\,
	datad => \inst2|inst|mux_1|mux_1|mux_generate:3:mux_i|Mux0~2_combout\,
	combout => \inst2|inst|mux_1|mux_1|mux_generate:3:mux_i|Mux0~5_combout\);

-- Location: LCCOMB_X108_Y23_N2
\inst2|inst1|alu3|mux|Mux0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|inst1|alu3|mux|Mux0~0_combout\ = (!\inst2|inst3|DOUT[1]~4_combout\ & ((\inst2|inst2|OUT16B[15]~28_combout\ & ((\inst2|inst3|DOUT[0]~2_combout\) # (\inst2|inst|mux_1|mux_1|mux_generate:3:mux_i|Mux0~5_combout\))) # 
-- (!\inst2|inst2|OUT16B[15]~28_combout\ & (\inst2|inst3|DOUT[0]~2_combout\ & \inst2|inst|mux_1|mux_1|mux_generate:3:mux_i|Mux0~5_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|inst3|DOUT[1]~4_combout\,
	datab => \inst2|inst2|OUT16B[15]~28_combout\,
	datac => \inst2|inst3|DOUT[0]~2_combout\,
	datad => \inst2|inst|mux_1|mux_1|mux_generate:3:mux_i|Mux0~5_combout\,
	combout => \inst2|inst1|alu3|mux|Mux0~0_combout\);

-- Location: LCCOMB_X111_Y22_N26
\inst2|inst1|alu3|adder|S[3]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|inst1|alu3|adder|S[3]~1_combout\ = \inst2|inst3|DOUT[2]~3_combout\ $ (((\inst|Mux7~0_combout\ & ((\inst4|inst1|INS_OUT[5]~7_combout\))) # (!\inst|Mux7~0_combout\ & (\inst2|inst|mux_2|mux_1|mux_generate:3:mux_i|Mux0~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001111010110100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Mux7~0_combout\,
	datab => \inst2|inst|mux_2|mux_1|mux_generate:3:mux_i|Mux0~4_combout\,
	datac => \inst2|inst3|DOUT[2]~3_combout\,
	datad => \inst4|inst1|INS_OUT[5]~7_combout\,
	combout => \inst2|inst1|alu3|adder|S[3]~1_combout\);

-- Location: LCCOMB_X109_Y21_N18
\inst2|inst1|alu3|adder|C[3]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|inst1|alu3|adder|C[3]~2_combout\ = (\inst2|inst|mux_1|mux_1|mux_generate:3:mux_i|Mux1~5_combout\ & ((\inst2|inst1|alu3|adder|C[2]~1_combout\) # (\inst2|inst3|DOUT[2]~3_combout\ $ (\inst2|inst2|OUT16B[14]~29_combout\)))) # 
-- (!\inst2|inst|mux_1|mux_1|mux_generate:3:mux_i|Mux1~5_combout\ & (\inst2|inst1|alu3|adder|C[2]~1_combout\ & (\inst2|inst3|DOUT[2]~3_combout\ $ (\inst2|inst2|OUT16B[14]~29_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011001011101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|inst|mux_1|mux_1|mux_generate:3:mux_i|Mux1~5_combout\,
	datab => \inst2|inst3|DOUT[2]~3_combout\,
	datac => \inst2|inst1|alu3|adder|C[2]~1_combout\,
	datad => \inst2|inst2|OUT16B[14]~29_combout\,
	combout => \inst2|inst1|alu3|adder|C[3]~2_combout\);

-- Location: LCCOMB_X108_Y18_N20
\inst2|inst1|alu3|mux|Mux0~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|inst1|alu3|mux|Mux0~2_combout\ = (\inst2|inst1|alu0|mux|Mux1~4_combout\ & (\inst2|inst1|alu3|adder|S[3]~1_combout\ $ (\inst2|inst1|alu3|adder|C[3]~2_combout\ $ (\inst2|inst|mux_1|mux_1|mux_generate:3:mux_i|Mux0~5_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000001000101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|inst1|alu0|mux|Mux1~4_combout\,
	datab => \inst2|inst1|alu3|adder|S[3]~1_combout\,
	datac => \inst2|inst1|alu3|adder|C[3]~2_combout\,
	datad => \inst2|inst|mux_1|mux_1|mux_generate:3:mux_i|Mux0~5_combout\,
	combout => \inst2|inst1|alu3|mux|Mux0~2_combout\);

-- Location: LCCOMB_X109_Y18_N8
\inst1|DOUT[15]~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|DOUT[15]~4_combout\ = (\inst1|DOUT[15]$latch~combout\) # (!\inst1|DOUT[15]_2612~combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111101010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|DOUT[15]_2612~combout\,
	datad => \inst1|DOUT[15]$latch~combout\,
	combout => \inst1|DOUT[15]~4_combout\);

-- Location: LCCOMB_X109_Y18_N14
\inst3|OUT16B[15]~22\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|OUT16B[15]~22_combout\ = (\inst|Mux5~0_combout\ & (((\inst1|DOUT[15]~4_combout\)))) # (!\inst|Mux5~0_combout\ & ((\inst2|inst1|alu3|mux|Mux0~0_combout\) # ((\inst2|inst1|alu3|mux|Mux0~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|inst1|alu3|mux|Mux0~0_combout\,
	datab => \inst2|inst1|alu3|mux|Mux0~2_combout\,
	datac => \inst1|DOUT[15]~4_combout\,
	datad => \inst|Mux5~0_combout\,
	combout => \inst3|OUT16B[15]~22_combout\);

-- Location: LCCOMB_X108_Y18_N14
\inst2|inst|reg_gen:3:regs|reg_2|y[7]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|inst|reg_gen:3:regs|reg_2|y[7]~feeder_combout\ = \inst3|OUT16B[15]~22_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst3|OUT16B[15]~22_combout\,
	combout => \inst2|inst|reg_gen:3:regs|reg_2|y[7]~feeder_combout\);

-- Location: FF_X108_Y18_N15
\inst2|inst|reg_gen:3:regs|reg_2|y[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \SW17~input_o\,
	d => \inst2|inst|reg_gen:3:regs|reg_2|y[7]~feeder_combout\,
	ena => \inst2|inst|add_reg1_dcd|Mux3~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst2|inst|reg_gen:3:regs|reg_2|y\(7));

-- Location: LCCOMB_X108_Y18_N8
\inst2|inst|mux_2|mux_1|mux_generate:3:mux_i|Mux0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|inst|mux_2|mux_1|mux_generate:3:mux_i|Mux0~0_combout\ = (\inst4|inst1|data_out[6]~17_combout\ & ((\inst4|inst1|exception~2_combout\ & ((\inst2|inst|reg_gen:2:regs|reg_2|y\(7)))) # (!\inst4|inst1|exception~2_combout\ & 
-- (\inst2|inst|reg_gen:3:regs|reg_2|y\(7))))) # (!\inst4|inst1|data_out[6]~17_combout\ & (((\inst2|inst|reg_gen:2:regs|reg_2|y\(7)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|inst1|data_out[6]~17_combout\,
	datab => \inst2|inst|reg_gen:3:regs|reg_2|y\(7),
	datac => \inst2|inst|reg_gen:2:regs|reg_2|y\(7),
	datad => \inst4|inst1|exception~2_combout\,
	combout => \inst2|inst|mux_2|mux_1|mux_generate:3:mux_i|Mux0~0_combout\);

-- Location: LCCOMB_X106_Y20_N6
\inst2|inst|mux_2|mux_1|mux_generate:3:mux_i|Mux0~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|inst|mux_2|mux_1|mux_generate:3:mux_i|Mux0~1_combout\ = (\inst2|inst|reg_gen:1:regs|reg_2|y\(7) & (\inst4|inst1|data_out[6]~17_combout\ & !\inst4|inst1|exception~2_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst2|inst|reg_gen:1:regs|reg_2|y\(7),
	datac => \inst4|inst1|data_out[6]~17_combout\,
	datad => \inst4|inst1|exception~2_combout\,
	combout => \inst2|inst|mux_2|mux_1|mux_generate:3:mux_i|Mux0~1_combout\);

-- Location: LCCOMB_X106_Y20_N30
\inst2|inst|mux_2|mux_1|mux_generate:3:mux_i|Mux0~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|inst|mux_2|mux_1|mux_generate:3:mux_i|Mux0~2_combout\ = (\inst2|inst|mux_2|mux_1|mux_generate:0:mux_i|Mux2~4_combout\ & (((\inst2|inst|mux_2|mux_1|mux_generate:0:mux_i|Mux2~3_combout\ & \inst2|inst|reg_gen:6:regs|reg_2|y\(7))))) # 
-- (!\inst2|inst|mux_2|mux_1|mux_generate:0:mux_i|Mux2~4_combout\ & ((\inst2|inst|mux_2|mux_1|mux_generate:3:mux_i|Mux0~1_combout\) # ((!\inst2|inst|mux_2|mux_1|mux_generate:0:mux_i|Mux2~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110001100100011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|inst|mux_2|mux_1|mux_generate:3:mux_i|Mux0~1_combout\,
	datab => \inst2|inst|mux_2|mux_1|mux_generate:0:mux_i|Mux2~4_combout\,
	datac => \inst2|inst|mux_2|mux_1|mux_generate:0:mux_i|Mux2~3_combout\,
	datad => \inst2|inst|reg_gen:6:regs|reg_2|y\(7),
	combout => \inst2|inst|mux_2|mux_1|mux_generate:3:mux_i|Mux0~2_combout\);

-- Location: LCCOMB_X109_Y22_N18
\inst2|inst|mux_2|mux_1|mux_generate:3:mux_i|Mux0~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|inst|mux_2|mux_1|mux_generate:3:mux_i|Mux0~3_combout\ = (\inst2|inst|mux_2|mux_1|mux_generate:0:mux_i|Mux2~1_combout\ & (\inst2|inst|mux_2|mux_1|mux_generate:3:mux_i|Mux0~2_combout\)) # (!\inst2|inst|mux_2|mux_1|mux_generate:0:mux_i|Mux2~1_combout\ 
-- & ((\inst2|inst|mux_2|mux_1|mux_generate:3:mux_i|Mux0~2_combout\ & (\inst2|inst|reg_gen:4:regs|reg_2|y\(7))) # (!\inst2|inst|mux_2|mux_1|mux_generate:3:mux_i|Mux0~2_combout\ & ((\inst2|inst|reg_gen:5:regs|reg_2|y\(7))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100111001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|inst|mux_2|mux_1|mux_generate:0:mux_i|Mux2~1_combout\,
	datab => \inst2|inst|mux_2|mux_1|mux_generate:3:mux_i|Mux0~2_combout\,
	datac => \inst2|inst|reg_gen:4:regs|reg_2|y\(7),
	datad => \inst2|inst|reg_gen:5:regs|reg_2|y\(7),
	combout => \inst2|inst|mux_2|mux_1|mux_generate:3:mux_i|Mux0~3_combout\);

-- Location: LCCOMB_X110_Y22_N26
\inst2|inst|mux_2|mux_1|mux_generate:3:mux_i|Mux0~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|inst|mux_2|mux_1|mux_generate:3:mux_i|Mux0~4_combout\ = (\inst2|inst|mux_2|mux_1|mux_generate:0:mux_i|Mux2~7_combout\ & (\inst2|inst|mux_2|mux_1|mux_generate:3:mux_i|Mux0~0_combout\)) # (!\inst2|inst|mux_2|mux_1|mux_generate:0:mux_i|Mux2~7_combout\ 
-- & ((\inst2|inst|mux_2|mux_1|mux_generate:3:mux_i|Mux0~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|inst|mux_2|mux_1|mux_generate:0:mux_i|Mux2~7_combout\,
	datac => \inst2|inst|mux_2|mux_1|mux_generate:3:mux_i|Mux0~0_combout\,
	datad => \inst2|inst|mux_2|mux_1|mux_generate:3:mux_i|Mux0~3_combout\,
	combout => \inst2|inst|mux_2|mux_1|mux_generate:3:mux_i|Mux0~4_combout\);

-- Location: FF_X113_Y17_N21
\inst1|reg_gen:29:regs|y[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \SW17~input_o\,
	asdata => \inst2|inst|mux_2|mux_1|mux_generate:3:mux_i|Mux0~4_combout\,
	sload => VCC,
	ena => \inst1|dec_to_en\(29),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|reg_gen:29:regs|y\(7));

-- Location: LCCOMB_X114_Y19_N28
\inst1|reg_gen:9:regs|y[7]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|reg_gen:9:regs|y[7]~feeder_combout\ = \inst2|inst|mux_2|mux_1|mux_generate:3:mux_i|Mux0~4_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst2|inst|mux_2|mux_1|mux_generate:3:mux_i|Mux0~4_combout\,
	combout => \inst1|reg_gen:9:regs|y[7]~feeder_combout\);

-- Location: FF_X114_Y19_N29
\inst1|reg_gen:9:regs|y[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \SW17~input_o\,
	d => \inst1|reg_gen:9:regs|y[7]~feeder_combout\,
	ena => \inst1|dec_to_en\(9),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|reg_gen:9:regs|y\(7));

-- Location: LCCOMB_X114_Y16_N12
\inst1|reg_gen:25:regs|y[7]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|reg_gen:25:regs|y[7]~feeder_combout\ = \inst2|inst|mux_2|mux_1|mux_generate:3:mux_i|Mux0~4_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst2|inst|mux_2|mux_1|mux_generate:3:mux_i|Mux0~4_combout\,
	combout => \inst1|reg_gen:25:regs|y[7]~feeder_combout\);

-- Location: FF_X114_Y16_N13
\inst1|reg_gen:25:regs|y[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \SW17~input_o\,
	d => \inst1|reg_gen:25:regs|y[7]~feeder_combout\,
	ena => \inst1|dec_to_en\(25),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|reg_gen:25:regs|y\(7));

-- Location: LCCOMB_X112_Y19_N20
\inst1|DOUT[15]~43\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|DOUT[15]~43_combout\ = (\inst2|inst1|alu1|mux|Mux3~1_combout\ & ((\inst1|reg_gen:9:regs|y\(7)) # ((\inst2|inst1|alu0|mux|Mux1~3_combout\)))) # (!\inst2|inst1|alu1|mux|Mux3~1_combout\ & (((\inst1|reg_gen:25:regs|y\(7) & 
-- !\inst2|inst1|alu0|mux|Mux1~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|reg_gen:9:regs|y\(7),
	datab => \inst1|reg_gen:25:regs|y\(7),
	datac => \inst2|inst1|alu1|mux|Mux3~1_combout\,
	datad => \inst2|inst1|alu0|mux|Mux1~3_combout\,
	combout => \inst1|DOUT[15]~43_combout\);

-- Location: LCCOMB_X112_Y15_N30
\inst1|reg_gen:13:regs|y[7]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|reg_gen:13:regs|y[7]~feeder_combout\ = \inst2|inst|mux_2|mux_1|mux_generate:3:mux_i|Mux0~4_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst2|inst|mux_2|mux_1|mux_generate:3:mux_i|Mux0~4_combout\,
	combout => \inst1|reg_gen:13:regs|y[7]~feeder_combout\);

-- Location: FF_X112_Y15_N31
\inst1|reg_gen:13:regs|y[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \SW17~input_o\,
	d => \inst1|reg_gen:13:regs|y[7]~feeder_combout\,
	ena => \inst1|dec_to_en\(13),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|reg_gen:13:regs|y\(7));

-- Location: LCCOMB_X112_Y19_N6
\inst1|DOUT[15]~44\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|DOUT[15]~44_combout\ = (\inst1|DOUT[15]~43_combout\ & (((\inst1|reg_gen:13:regs|y\(7)) # (!\inst2|inst1|alu0|mux|Mux1~3_combout\)))) # (!\inst1|DOUT[15]~43_combout\ & (\inst1|reg_gen:29:regs|y\(7) & ((\inst2|inst1|alu0|mux|Mux1~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110001011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|reg_gen:29:regs|y\(7),
	datab => \inst1|DOUT[15]~43_combout\,
	datac => \inst1|reg_gen:13:regs|y\(7),
	datad => \inst2|inst1|alu0|mux|Mux1~3_combout\,
	combout => \inst1|DOUT[15]~44_combout\);

-- Location: LCCOMB_X112_Y18_N4
\inst1|reg_gen:8:regs|y[7]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|reg_gen:8:regs|y[7]~feeder_combout\ = \inst2|inst|mux_2|mux_1|mux_generate:1:mux_i|Mux0~4_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst2|inst|mux_2|mux_1|mux_generate:1:mux_i|Mux0~4_combout\,
	combout => \inst1|reg_gen:8:regs|y[7]~feeder_combout\);

-- Location: FF_X112_Y18_N5
\inst1|reg_gen:8:regs|y[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \SW17~input_o\,
	d => \inst1|reg_gen:8:regs|y[7]~feeder_combout\,
	ena => \inst1|dec_to_en[8]~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|reg_gen:8:regs|y\(7));

-- Location: FF_X112_Y18_N27
\inst1|reg_gen:24:regs|y[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \SW17~input_o\,
	asdata => \inst2|inst|mux_2|mux_1|mux_generate:1:mux_i|Mux0~4_combout\,
	sload => VCC,
	ena => \inst1|dec_to_en[24]~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|reg_gen:24:regs|y\(7));

-- Location: LCCOMB_X112_Y18_N26
\inst1|DOUT[15]~30\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|DOUT[15]~30_combout\ = (\inst2|inst1|alu1|mux|Mux3~1_combout\ & (\inst1|reg_gen:8:regs|y\(7))) # (!\inst2|inst1|alu1|mux|Mux3~1_combout\ & ((\inst1|reg_gen:24:regs|y\(7))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100011011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|inst1|alu1|mux|Mux3~1_combout\,
	datab => \inst1|reg_gen:8:regs|y\(7),
	datac => \inst1|reg_gen:24:regs|y\(7),
	combout => \inst1|DOUT[15]~30_combout\);

-- Location: LCCOMB_X111_Y17_N4
\inst1|DOUT[7]~202\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|DOUT[7]~202_combout\ = (\inst1|DOUT[5]~22_combout\ & (((\inst1|DOUT[15]~30_combout\) # (\inst1|DOUT[5]~201_combout\)))) # (!\inst1|DOUT[5]~22_combout\ & (\inst1|DOUT[15]~44_combout\ & ((!\inst1|DOUT[5]~201_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|DOUT[15]~44_combout\,
	datab => \inst1|DOUT[5]~22_combout\,
	datac => \inst1|DOUT[15]~30_combout\,
	datad => \inst1|DOUT[5]~201_combout\,
	combout => \inst1|DOUT[7]~202_combout\);

-- Location: FF_X112_Y21_N27
\inst1|reg_gen:26:regs|y[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \SW17~input_o\,
	asdata => \inst2|inst|mux_2|mux_1|mux_generate:1:mux_i|Mux0~4_combout\,
	sload => VCC,
	ena => \inst1|dec_to_en\(26),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|reg_gen:26:regs|y\(7));

-- Location: LCCOMB_X111_Y15_N24
\inst1|reg_gen:10:regs|y[7]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|reg_gen:10:regs|y[7]~feeder_combout\ = \inst2|inst|mux_2|mux_1|mux_generate:1:mux_i|Mux0~4_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst2|inst|mux_2|mux_1|mux_generate:1:mux_i|Mux0~4_combout\,
	combout => \inst1|reg_gen:10:regs|y[7]~feeder_combout\);

-- Location: FF_X111_Y15_N25
\inst1|reg_gen:10:regs|y[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \SW17~input_o\,
	d => \inst1|reg_gen:10:regs|y[7]~feeder_combout\,
	ena => \inst1|dec_to_en\(10),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|reg_gen:10:regs|y\(7));

-- Location: LCCOMB_X112_Y21_N26
\inst1|DOUT[15]~38\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|DOUT[15]~38_combout\ = (\inst2|inst1|alu0|mux|Mux1~3_combout\ & (\inst2|inst1|alu1|mux|Mux3~1_combout\)) # (!\inst2|inst1|alu0|mux|Mux1~3_combout\ & ((\inst2|inst1|alu1|mux|Mux3~1_combout\ & ((\inst1|reg_gen:10:regs|y\(7)))) # 
-- (!\inst2|inst1|alu1|mux|Mux3~1_combout\ & (\inst1|reg_gen:26:regs|y\(7)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|inst1|alu0|mux|Mux1~3_combout\,
	datab => \inst2|inst1|alu1|mux|Mux3~1_combout\,
	datac => \inst1|reg_gen:26:regs|y\(7),
	datad => \inst1|reg_gen:10:regs|y\(7),
	combout => \inst1|DOUT[15]~38_combout\);

-- Location: FF_X107_Y21_N15
\inst1|reg_gen:14:regs|y[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \SW17~input_o\,
	d => \inst2|inst|mux_2|mux_1|mux_generate:1:mux_i|Mux0~4_combout\,
	ena => \inst1|dec_to_en\(14),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|reg_gen:14:regs|y\(7));

-- Location: LCCOMB_X112_Y21_N20
\inst1|DOUT[15]~39\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|DOUT[15]~39_combout\ = (\inst1|DOUT[15]~38_combout\ & ((\inst1|reg_gen:14:regs|y\(7)) # ((!\inst2|inst1|alu0|mux|Mux1~3_combout\)))) # (!\inst1|DOUT[15]~38_combout\ & (((\inst1|reg_gen:30:regs|y\(7) & \inst2|inst1|alu0|mux|Mux1~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|DOUT[15]~38_combout\,
	datab => \inst1|reg_gen:14:regs|y\(7),
	datac => \inst1|reg_gen:30:regs|y\(7),
	datad => \inst2|inst1|alu0|mux|Mux1~3_combout\,
	combout => \inst1|DOUT[15]~39_combout\);

-- Location: LCCOMB_X111_Y17_N18
\inst1|DOUT[7]~203\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|DOUT[7]~203_combout\ = (\inst1|DOUT[7]~202_combout\ & ((\inst1|DOUT[15]~35_combout\) # ((!\inst1|DOUT[5]~201_combout\)))) # (!\inst1|DOUT[7]~202_combout\ & (((\inst1|DOUT[5]~201_combout\ & \inst1|DOUT[15]~39_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011110010001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|DOUT[15]~35_combout\,
	datab => \inst1|DOUT[7]~202_combout\,
	datac => \inst1|DOUT[5]~201_combout\,
	datad => \inst1|DOUT[15]~39_combout\,
	combout => \inst1|DOUT[7]~203_combout\);

-- Location: FF_X111_Y17_N31
\inst1|reg_gen:15:regs|y[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \SW17~input_o\,
	asdata => \inst2|inst|mux_2|mux_1|mux_generate:3:mux_i|Mux0~4_combout\,
	sload => VCC,
	ena => \inst1|dec_to_en\(15),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|reg_gen:15:regs|y\(7));

-- Location: FF_X114_Y15_N25
\inst1|reg_gen:21:regs|y[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \SW17~input_o\,
	asdata => \inst2|inst|mux_2|mux_1|mux_generate:3:mux_i|Mux0~4_combout\,
	sload => VCC,
	ena => \inst1|dec_to_en\(21),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|reg_gen:21:regs|y\(7));

-- Location: LCCOMB_X114_Y14_N12
\inst1|reg_gen:17:regs|y[7]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|reg_gen:17:regs|y[7]~feeder_combout\ = \inst2|inst|mux_2|mux_1|mux_generate:3:mux_i|Mux0~4_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst2|inst|mux_2|mux_1|mux_generate:3:mux_i|Mux0~4_combout\,
	combout => \inst1|reg_gen:17:regs|y[7]~feeder_combout\);

-- Location: FF_X114_Y14_N13
\inst1|reg_gen:17:regs|y[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \SW17~input_o\,
	d => \inst1|reg_gen:17:regs|y[7]~feeder_combout\,
	ena => \inst1|dec_to_en\(17),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|reg_gen:17:regs|y\(7));

-- Location: FF_X114_Y14_N7
\inst1|reg_gen:19:regs|y[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \SW17~input_o\,
	asdata => \inst2|inst|mux_2|mux_1|mux_generate:3:mux_i|Mux0~4_combout\,
	sload => VCC,
	ena => \inst1|dec_to_en\(19),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|reg_gen:19:regs|y\(7));

-- Location: LCCOMB_X112_Y14_N20
\inst1|reg_gen:23:regs|y[7]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|reg_gen:23:regs|y[7]~feeder_combout\ = \inst2|inst|mux_2|mux_1|mux_generate:3:mux_i|Mux0~4_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst2|inst|mux_2|mux_1|mux_generate:3:mux_i|Mux0~4_combout\,
	combout => \inst1|reg_gen:23:regs|y[7]~feeder_combout\);

-- Location: FF_X112_Y14_N21
\inst1|reg_gen:23:regs|y[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \SW17~input_o\,
	d => \inst1|reg_gen:23:regs|y[7]~feeder_combout\,
	ena => \inst1|dec_to_en\(23),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|reg_gen:23:regs|y\(7));

-- Location: LCCOMB_X111_Y14_N4
\inst1|reg_gen:7:regs|y[7]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|reg_gen:7:regs|y[7]~feeder_combout\ = \inst2|inst|mux_2|mux_1|mux_generate:3:mux_i|Mux0~4_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst2|inst|mux_2|mux_1|mux_generate:3:mux_i|Mux0~4_combout\,
	combout => \inst1|reg_gen:7:regs|y[7]~feeder_combout\);

-- Location: FF_X111_Y14_N5
\inst1|reg_gen:7:regs|y[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \SW17~input_o\,
	d => \inst1|reg_gen:7:regs|y[7]~feeder_combout\,
	ena => \inst1|dec_to_en\(7),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|reg_gen:7:regs|y\(7));

-- Location: LCCOMB_X110_Y16_N20
\inst1|DOUT[15]~25\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|DOUT[15]~25_combout\ = (\inst2|inst1|alu1|mux|Mux3~1_combout\ & ((\inst1|reg_gen:7:regs|y\(7)))) # (!\inst2|inst1|alu1|mux|Mux3~1_combout\ & (\inst1|reg_gen:23:regs|y\(7)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|reg_gen:23:regs|y\(7),
	datac => \inst1|reg_gen:7:regs|y\(7),
	datad => \inst2|inst1|alu1|mux|Mux3~1_combout\,
	combout => \inst1|DOUT[15]~25_combout\);

-- Location: LCCOMB_X110_Y16_N26
\inst1|DOUT[15]~26\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|DOUT[15]~26_combout\ = (\inst2|inst1|alu0|mux|Mux1~3_combout\ & (((\inst1|DOUT[15]~25_combout\) # (\inst2|inst1|alu0|mux|Mux2~1_combout\)))) # (!\inst2|inst1|alu0|mux|Mux1~3_combout\ & (\inst1|reg_gen:19:regs|y\(7) & 
-- ((!\inst2|inst1|alu0|mux|Mux2~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|reg_gen:19:regs|y\(7),
	datab => \inst2|inst1|alu0|mux|Mux1~3_combout\,
	datac => \inst1|DOUT[15]~25_combout\,
	datad => \inst2|inst1|alu0|mux|Mux2~1_combout\,
	combout => \inst1|DOUT[15]~26_combout\);

-- Location: LCCOMB_X110_Y16_N16
\inst1|DOUT[15]~27\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|DOUT[15]~27_combout\ = (\inst1|DOUT[15]~26_combout\ & ((\inst1|reg_gen:21:regs|y\(7)) # ((!\inst2|inst1|alu0|mux|Mux2~1_combout\)))) # (!\inst1|DOUT[15]~26_combout\ & (((\inst1|reg_gen:17:regs|y\(7) & \inst2|inst1|alu0|mux|Mux2~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|reg_gen:21:regs|y\(7),
	datab => \inst1|reg_gen:17:regs|y\(7),
	datac => \inst1|DOUT[15]~26_combout\,
	datad => \inst2|inst1|alu0|mux|Mux2~1_combout\,
	combout => \inst1|DOUT[15]~27_combout\);

-- Location: LCCOMB_X112_Y17_N16
\inst1|reg_gen:27:regs|y[7]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|reg_gen:27:regs|y[7]~feeder_combout\ = \inst2|inst|mux_2|mux_1|mux_generate:3:mux_i|Mux0~4_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst2|inst|mux_2|mux_1|mux_generate:3:mux_i|Mux0~4_combout\,
	combout => \inst1|reg_gen:27:regs|y[7]~feeder_combout\);

-- Location: FF_X112_Y17_N17
\inst1|reg_gen:27:regs|y[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \SW17~input_o\,
	d => \inst1|reg_gen:27:regs|y[7]~feeder_combout\,
	ena => \inst1|dec_to_en\(27),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|reg_gen:27:regs|y\(7));

-- Location: LCCOMB_X112_Y17_N26
\inst1|reg_gen:11:regs|y[7]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|reg_gen:11:regs|y[7]~feeder_combout\ = \inst2|inst|mux_2|mux_1|mux_generate:3:mux_i|Mux0~4_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst2|inst|mux_2|mux_1|mux_generate:3:mux_i|Mux0~4_combout\,
	combout => \inst1|reg_gen:11:regs|y[7]~feeder_combout\);

-- Location: FF_X112_Y17_N27
\inst1|reg_gen:11:regs|y[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \SW17~input_o\,
	d => \inst1|reg_gen:11:regs|y[7]~feeder_combout\,
	ena => \inst1|dec_to_en\(11),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|reg_gen:11:regs|y\(7));

-- Location: LCCOMB_X111_Y17_N28
\inst1|DOUT[15]~41\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|DOUT[15]~41_combout\ = (\inst2|inst1|alu1|mux|Mux3~1_combout\ & ((\inst1|reg_gen:11:regs|y\(7)))) # (!\inst2|inst1|alu1|mux|Mux3~1_combout\ & (\inst1|reg_gen:27:regs|y\(7)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|reg_gen:27:regs|y\(7),
	datab => \inst2|inst1|alu1|mux|Mux3~1_combout\,
	datad => \inst1|reg_gen:11:regs|y\(7),
	combout => \inst1|DOUT[15]~41_combout\);

-- Location: LCCOMB_X110_Y20_N28
\inst1|DOUT[7]~200\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|DOUT[7]~200_combout\ = (\inst1|DOUT[13]~29_combout\ & (((\inst1|DOUT[13]~34_combout\)))) # (!\inst1|DOUT[13]~29_combout\ & ((\inst1|DOUT[13]~34_combout\ & (\inst1|DOUT[15]~27_combout\)) # (!\inst1|DOUT[13]~34_combout\ & 
-- ((\inst1|DOUT[15]~41_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|DOUT[13]~29_combout\,
	datab => \inst1|DOUT[15]~27_combout\,
	datac => \inst1|DOUT[15]~41_combout\,
	datad => \inst1|DOUT[13]~34_combout\,
	combout => \inst1|DOUT[7]~200_combout\);

-- Location: LCCOMB_X110_Y20_N22
\inst1|DOUT[7]~204\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|DOUT[7]~204_combout\ = (\inst1|DOUT[13]~29_combout\ & ((\inst1|DOUT[7]~200_combout\ & (\inst1|DOUT[7]~203_combout\)) # (!\inst1|DOUT[7]~200_combout\ & ((\inst1|reg_gen:15:regs|y\(7)))))) # (!\inst1|DOUT[13]~29_combout\ & 
-- (((\inst1|DOUT[7]~200_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|DOUT[13]~29_combout\,
	datab => \inst1|DOUT[7]~203_combout\,
	datac => \inst1|reg_gen:15:regs|y\(7),
	datad => \inst1|DOUT[7]~200_combout\,
	combout => \inst1|DOUT[7]~204_combout\);

-- Location: LCCOMB_X110_Y20_N24
\inst1|DOUT[7]~206\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|DOUT[7]~206_combout\ = (\inst1|DOUT[7]~199_combout\) # ((\inst1|DOUT[7]~204_combout\ & \inst1|DOUT[7]~205_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|DOUT[7]~199_combout\,
	datac => \inst1|DOUT[7]~204_combout\,
	datad => \inst1|DOUT[7]~205_combout\,
	combout => \inst1|DOUT[7]~206_combout\);

-- Location: LCCOMB_X110_Y20_N12
\inst1|DOUT[7]$latch\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|DOUT[7]$latch~combout\ = (!\inst1|DOUT[7]~266_combout\ & ((GLOBAL(\inst1|DOUT[15]~51clkctrl_outclk\) & ((\inst1|DOUT[7]~206_combout\))) # (!GLOBAL(\inst1|DOUT[15]~51clkctrl_outclk\) & (\inst1|DOUT[7]$latch~combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001000000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|DOUT[7]$latch~combout\,
	datab => \inst1|DOUT[7]~266_combout\,
	datac => \inst1|DOUT[15]~51clkctrl_outclk\,
	datad => \inst1|DOUT[7]~206_combout\,
	combout => \inst1|DOUT[7]$latch~combout\);

-- Location: LCCOMB_X110_Y20_N16
\inst3|OUT16B[7]~30\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|OUT16B[7]~30_combout\ = (\inst|Mux5~0_combout\ & (((\inst1|DOUT[7]$latch~combout\) # (!\inst1|DOUT[7]_2052~combout\)))) # (!\inst|Mux5~0_combout\ & (\inst2|inst1|alu1|mux|Mux0~1_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101000111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|inst1|alu1|mux|Mux0~1_combout\,
	datab => \inst1|DOUT[7]_2052~combout\,
	datac => \inst|Mux5~0_combout\,
	datad => \inst1|DOUT[7]$latch~combout\,
	combout => \inst3|OUT16B[7]~30_combout\);

-- Location: LCCOMB_X106_Y22_N20
\inst2|inst|reg_gen:5:regs|reg_1|y[7]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|inst|reg_gen:5:regs|reg_1|y[7]~feeder_combout\ = \inst3|OUT16B[7]~30_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst3|OUT16B[7]~30_combout\,
	combout => \inst2|inst|reg_gen:5:regs|reg_1|y[7]~feeder_combout\);

-- Location: FF_X106_Y22_N21
\inst2|inst|reg_gen:5:regs|reg_1|y[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \SW17~input_o\,
	d => \inst2|inst|reg_gen:5:regs|reg_1|y[7]~feeder_combout\,
	ena => \inst2|inst|add_reg1_dcd|Mux3~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst2|inst|reg_gen:5:regs|reg_1|y\(7));

-- Location: LCCOMB_X106_Y22_N12
\inst2|inst|mux_2|mux_1|mux_generate:1:mux_i|Mux0~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|inst|mux_2|mux_1|mux_generate:1:mux_i|Mux0~1_combout\ = (!\inst4|inst1|exception~2_combout\ & (\inst2|inst|reg_gen:1:regs|reg_1|y\(7) & \inst4|inst1|data_out[6]~17_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst4|inst1|exception~2_combout\,
	datac => \inst2|inst|reg_gen:1:regs|reg_1|y\(7),
	datad => \inst4|inst1|data_out[6]~17_combout\,
	combout => \inst2|inst|mux_2|mux_1|mux_generate:1:mux_i|Mux0~1_combout\);

-- Location: LCCOMB_X106_Y22_N6
\inst2|inst|mux_2|mux_1|mux_generate:1:mux_i|Mux0~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|inst|mux_2|mux_1|mux_generate:1:mux_i|Mux0~2_combout\ = (\inst2|inst|mux_2|mux_1|mux_generate:0:mux_i|Mux2~3_combout\ & ((\inst2|inst|mux_2|mux_1|mux_generate:0:mux_i|Mux2~4_combout\ & ((\inst2|inst|reg_gen:6:regs|reg_1|y\(7)))) # 
-- (!\inst2|inst|mux_2|mux_1|mux_generate:0:mux_i|Mux2~4_combout\ & (\inst2|inst|mux_2|mux_1|mux_generate:1:mux_i|Mux0~1_combout\)))) # (!\inst2|inst|mux_2|mux_1|mux_generate:0:mux_i|Mux2~3_combout\ & 
-- (((!\inst2|inst|mux_2|mux_1|mux_generate:0:mux_i|Mux2~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000010101111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|inst|mux_2|mux_1|mux_generate:1:mux_i|Mux0~1_combout\,
	datab => \inst2|inst|reg_gen:6:regs|reg_1|y\(7),
	datac => \inst2|inst|mux_2|mux_1|mux_generate:0:mux_i|Mux2~3_combout\,
	datad => \inst2|inst|mux_2|mux_1|mux_generate:0:mux_i|Mux2~4_combout\,
	combout => \inst2|inst|mux_2|mux_1|mux_generate:1:mux_i|Mux0~2_combout\);

-- Location: LCCOMB_X106_Y22_N4
\inst2|inst|mux_2|mux_1|mux_generate:1:mux_i|Mux0~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|inst|mux_2|mux_1|mux_generate:1:mux_i|Mux0~3_combout\ = (\inst2|inst|mux_2|mux_1|mux_generate:0:mux_i|Mux2~1_combout\ & (((\inst2|inst|mux_2|mux_1|mux_generate:1:mux_i|Mux0~2_combout\)))) # 
-- (!\inst2|inst|mux_2|mux_1|mux_generate:0:mux_i|Mux2~1_combout\ & ((\inst2|inst|mux_2|mux_1|mux_generate:1:mux_i|Mux0~2_combout\ & ((\inst2|inst|reg_gen:4:regs|reg_1|y\(7)))) # (!\inst2|inst|mux_2|mux_1|mux_generate:1:mux_i|Mux0~2_combout\ & 
-- (\inst2|inst|reg_gen:5:regs|reg_1|y\(7)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|inst|mux_2|mux_1|mux_generate:0:mux_i|Mux2~1_combout\,
	datab => \inst2|inst|reg_gen:5:regs|reg_1|y\(7),
	datac => \inst2|inst|reg_gen:4:regs|reg_1|y\(7),
	datad => \inst2|inst|mux_2|mux_1|mux_generate:1:mux_i|Mux0~2_combout\,
	combout => \inst2|inst|mux_2|mux_1|mux_generate:1:mux_i|Mux0~3_combout\);

-- Location: LCCOMB_X106_Y22_N10
\inst2|inst|mux_2|mux_1|mux_generate:1:mux_i|Mux0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|inst|mux_2|mux_1|mux_generate:1:mux_i|Mux0~0_combout\ = (\inst4|inst1|exception~2_combout\ & (((\inst2|inst|reg_gen:2:regs|reg_1|y\(7))))) # (!\inst4|inst1|exception~2_combout\ & ((\inst4|inst1|data_out[6]~17_combout\ & 
-- (\inst2|inst|reg_gen:3:regs|reg_1|y\(7))) # (!\inst4|inst1|data_out[6]~17_combout\ & ((\inst2|inst|reg_gen:2:regs|reg_1|y\(7))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110001011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|inst|reg_gen:3:regs|reg_1|y\(7),
	datab => \inst4|inst1|exception~2_combout\,
	datac => \inst2|inst|reg_gen:2:regs|reg_1|y\(7),
	datad => \inst4|inst1|data_out[6]~17_combout\,
	combout => \inst2|inst|mux_2|mux_1|mux_generate:1:mux_i|Mux0~0_combout\);

-- Location: LCCOMB_X107_Y21_N14
\inst2|inst|mux_2|mux_1|mux_generate:1:mux_i|Mux0~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|inst|mux_2|mux_1|mux_generate:1:mux_i|Mux0~4_combout\ = (\inst2|inst|mux_2|mux_1|mux_generate:0:mux_i|Mux2~7_combout\ & ((\inst2|inst|mux_2|mux_1|mux_generate:1:mux_i|Mux0~0_combout\))) # 
-- (!\inst2|inst|mux_2|mux_1|mux_generate:0:mux_i|Mux2~7_combout\ & (\inst2|inst|mux_2|mux_1|mux_generate:1:mux_i|Mux0~3_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst2|inst|mux_2|mux_1|mux_generate:1:mux_i|Mux0~3_combout\,
	datac => \inst2|inst|mux_2|mux_1|mux_generate:1:mux_i|Mux0~0_combout\,
	datad => \inst2|inst|mux_2|mux_1|mux_generate:0:mux_i|Mux2~7_combout\,
	combout => \inst2|inst|mux_2|mux_1|mux_generate:1:mux_i|Mux0~4_combout\);

-- Location: LCCOMB_X107_Y21_N18
\inst2|inst2|OUT16B[7]~23\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|inst2|OUT16B[7]~23_combout\ = (\inst|Mux7~0_combout\ & (((!\inst4|inst1|exception~2_combout\ & !\inst4|inst1|data_out[5]~5_combout\)))) # (!\inst|Mux7~0_combout\ & (\inst2|inst|mux_2|mux_1|mux_generate:1:mux_i|Mux0~4_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100010001001110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Mux7~0_combout\,
	datab => \inst2|inst|mux_2|mux_1|mux_generate:1:mux_i|Mux0~4_combout\,
	datac => \inst4|inst1|exception~2_combout\,
	datad => \inst4|inst1|data_out[5]~5_combout\,
	combout => \inst2|inst2|OUT16B[7]~23_combout\);

-- Location: LCCOMB_X109_Y21_N10
\inst2|inst1|alu1|adder|C4~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|inst1|alu1|adder|C4~0_combout\ = (\inst2|inst1|alu1|adder|C[3]~2_combout\ & ((\inst2|inst|mux_1|mux_1|mux_generate:1:mux_i|Mux0~5_combout\) # (\inst2|inst3|DOUT[2]~3_combout\ $ (\inst2|inst2|OUT16B[7]~23_combout\)))) # 
-- (!\inst2|inst1|alu1|adder|C[3]~2_combout\ & (\inst2|inst|mux_1|mux_1|mux_generate:1:mux_i|Mux0~5_combout\ & (\inst2|inst3|DOUT[2]~3_combout\ $ (\inst2|inst2|OUT16B[7]~23_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111011001100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|inst3|DOUT[2]~3_combout\,
	datab => \inst2|inst2|OUT16B[7]~23_combout\,
	datac => \inst2|inst1|alu1|adder|C[3]~2_combout\,
	datad => \inst2|inst|mux_1|mux_1|mux_generate:1:mux_i|Mux0~5_combout\,
	combout => \inst2|inst1|alu1|adder|C4~0_combout\);

-- Location: FF_X108_Y21_N21
\inst2|inst|reg_gen:4:regs|reg_2|y[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \SW17~input_o\,
	asdata => \inst3|OUT16B[8]~26_combout\,
	sload => VCC,
	ena => \inst2|inst|add_reg1_dcd|Mux3~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst2|inst|reg_gen:4:regs|reg_2|y\(0));

-- Location: FF_X110_Y21_N5
\inst2|inst|reg_gen:1:regs|reg_2|y[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \SW17~input_o\,
	d => \inst3|OUT16B[8]~26_combout\,
	ena => \inst2|inst|add_reg1_dcd|Mux3~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst2|inst|reg_gen:1:regs|reg_2|y\(0));

-- Location: LCCOMB_X106_Y21_N14
\inst2|inst|mux_2|mux_1|mux_generate:2:mux_i|Mux3~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|inst|mux_2|mux_1|mux_generate:2:mux_i|Mux3~1_combout\ = (!\inst4|inst1|exception~2_combout\ & (\inst2|inst|reg_gen:1:regs|reg_2|y\(0) & \inst4|inst1|data_out[6]~17_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst4|inst1|exception~2_combout\,
	datac => \inst2|inst|reg_gen:1:regs|reg_2|y\(0),
	datad => \inst4|inst1|data_out[6]~17_combout\,
	combout => \inst2|inst|mux_2|mux_1|mux_generate:2:mux_i|Mux3~1_combout\);

-- Location: FF_X109_Y22_N9
\inst2|inst|reg_gen:6:regs|reg_2|y[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \SW17~input_o\,
	asdata => \inst3|OUT16B[8]~26_combout\,
	sload => VCC,
	ena => \inst2|inst|add_reg1_dcd|Mux3~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst2|inst|reg_gen:6:regs|reg_2|y\(0));

-- Location: LCCOMB_X106_Y21_N28
\inst2|inst|mux_2|mux_1|mux_generate:2:mux_i|Mux3~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|inst|mux_2|mux_1|mux_generate:2:mux_i|Mux3~2_combout\ = (\inst2|inst|mux_2|mux_1|mux_generate:0:mux_i|Mux2~3_combout\ & ((\inst2|inst|mux_2|mux_1|mux_generate:0:mux_i|Mux2~4_combout\ & ((\inst2|inst|reg_gen:6:regs|reg_2|y\(0)))) # 
-- (!\inst2|inst|mux_2|mux_1|mux_generate:0:mux_i|Mux2~4_combout\ & (\inst2|inst|mux_2|mux_1|mux_generate:2:mux_i|Mux3~1_combout\)))) # (!\inst2|inst|mux_2|mux_1|mux_generate:0:mux_i|Mux2~3_combout\ & 
-- (\inst2|inst|mux_2|mux_1|mux_generate:0:mux_i|Mux2~4_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110001100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|inst|mux_2|mux_1|mux_generate:0:mux_i|Mux2~3_combout\,
	datab => \inst2|inst|mux_2|mux_1|mux_generate:0:mux_i|Mux2~4_combout\,
	datac => \inst2|inst|mux_2|mux_1|mux_generate:2:mux_i|Mux3~1_combout\,
	datad => \inst2|inst|reg_gen:6:regs|reg_2|y\(0),
	combout => \inst2|inst|mux_2|mux_1|mux_generate:2:mux_i|Mux3~2_combout\);

-- Location: LCCOMB_X106_Y21_N30
\inst2|inst|mux_2|mux_1|mux_generate:2:mux_i|Mux3~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|inst|mux_2|mux_1|mux_generate:2:mux_i|Mux3~3_combout\ = (\inst2|inst|mux_2|mux_1|mux_generate:2:mux_i|Mux3~2_combout\ & (((\inst2|inst|reg_gen:5:regs|reg_2|y\(0)) # (\inst2|inst|mux_2|mux_1|mux_generate:0:mux_i|Mux2~1_combout\)))) # 
-- (!\inst2|inst|mux_2|mux_1|mux_generate:2:mux_i|Mux3~2_combout\ & (\inst2|inst|reg_gen:4:regs|reg_2|y\(0) & ((!\inst2|inst|mux_2|mux_1|mux_generate:0:mux_i|Mux2~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|inst|reg_gen:4:regs|reg_2|y\(0),
	datab => \inst2|inst|mux_2|mux_1|mux_generate:2:mux_i|Mux3~2_combout\,
	datac => \inst2|inst|reg_gen:5:regs|reg_2|y\(0),
	datad => \inst2|inst|mux_2|mux_1|mux_generate:0:mux_i|Mux2~1_combout\,
	combout => \inst2|inst|mux_2|mux_1|mux_generate:2:mux_i|Mux3~3_combout\);

-- Location: FF_X108_Y21_N3
\inst2|inst|reg_gen:3:regs|reg_2|y[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \SW17~input_o\,
	asdata => \inst3|OUT16B[8]~26_combout\,
	sload => VCC,
	ena => \inst2|inst|add_reg1_dcd|Mux3~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst2|inst|reg_gen:3:regs|reg_2|y\(0));

-- Location: FF_X106_Y21_N17
\inst2|inst|reg_gen:2:regs|reg_2|y[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \SW17~input_o\,
	asdata => \inst3|OUT16B[8]~26_combout\,
	sload => VCC,
	ena => \inst2|inst|add_reg1_dcd|Mux3~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst2|inst|reg_gen:2:regs|reg_2|y\(0));

-- Location: LCCOMB_X106_Y21_N24
\inst2|inst|mux_2|mux_1|mux_generate:2:mux_i|Mux3~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|inst|mux_2|mux_1|mux_generate:2:mux_i|Mux3~0_combout\ = (\inst4|inst1|exception~2_combout\ & (((\inst2|inst|reg_gen:2:regs|reg_2|y\(0))))) # (!\inst4|inst1|exception~2_combout\ & ((\inst4|inst1|data_out[6]~17_combout\ & 
-- (\inst2|inst|reg_gen:3:regs|reg_2|y\(0))) # (!\inst4|inst1|data_out[6]~17_combout\ & ((\inst2|inst|reg_gen:2:regs|reg_2|y\(0))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100101011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|inst|reg_gen:3:regs|reg_2|y\(0),
	datab => \inst2|inst|reg_gen:2:regs|reg_2|y\(0),
	datac => \inst4|inst1|exception~2_combout\,
	datad => \inst4|inst1|data_out[6]~17_combout\,
	combout => \inst2|inst|mux_2|mux_1|mux_generate:2:mux_i|Mux3~0_combout\);

-- Location: LCCOMB_X106_Y21_N8
\inst2|inst|mux_2|mux_1|mux_generate:2:mux_i|Mux3~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|inst|mux_2|mux_1|mux_generate:2:mux_i|Mux3~4_combout\ = (\inst2|inst|mux_2|mux_1|mux_generate:0:mux_i|Mux2~7_combout\ & ((\inst2|inst|mux_2|mux_1|mux_generate:2:mux_i|Mux3~0_combout\))) # 
-- (!\inst2|inst|mux_2|mux_1|mux_generate:0:mux_i|Mux2~7_combout\ & (\inst2|inst|mux_2|mux_1|mux_generate:2:mux_i|Mux3~3_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|inst|mux_2|mux_1|mux_generate:2:mux_i|Mux3~3_combout\,
	datac => \inst2|inst|mux_2|mux_1|mux_generate:0:mux_i|Mux2~7_combout\,
	datad => \inst2|inst|mux_2|mux_1|mux_generate:2:mux_i|Mux3~0_combout\,
	combout => \inst2|inst|mux_2|mux_1|mux_generate:2:mux_i|Mux3~4_combout\);

-- Location: LCCOMB_X106_Y21_N2
\inst2|inst2|OUT16B[8]~22\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|inst2|OUT16B[8]~22_combout\ = (\inst|Mux7~0_combout\ & (!\inst4|inst1|data_out[5]~5_combout\ & (!\inst4|inst1|exception~2_combout\))) # (!\inst|Mux7~0_combout\ & (((\inst2|inst|mux_2|mux_1|mux_generate:2:mux_i|Mux3~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|inst1|data_out[5]~5_combout\,
	datab => \inst4|inst1|exception~2_combout\,
	datac => \inst2|inst|mux_2|mux_1|mux_generate:2:mux_i|Mux3~4_combout\,
	datad => \inst|Mux7~0_combout\,
	combout => \inst2|inst2|OUT16B[8]~22_combout\);

-- Location: LCCOMB_X110_Y23_N22
\inst2|inst1|alu2|adder|S[0]\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|inst1|alu2|adder|S\(0) = \inst2|inst3|DOUT[2]~3_combout\ $ (\inst2|inst|mux_1|mux_1|mux_generate:2:mux_i|Mux3~5_combout\ $ (\inst2|inst1|alu1|adder|C4~0_combout\ $ (\inst2|inst2|OUT16B[8]~22_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|inst3|DOUT[2]~3_combout\,
	datab => \inst2|inst|mux_1|mux_1|mux_generate:2:mux_i|Mux3~5_combout\,
	datac => \inst2|inst1|alu1|adder|C4~0_combout\,
	datad => \inst2|inst2|OUT16B[8]~22_combout\,
	combout => \inst2|inst1|alu2|adder|S\(0));

-- Location: LCCOMB_X110_Y23_N12
\inst2|inst1|alu2|mux|Mux3~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|inst1|alu2|mux|Mux3~0_combout\ = (!\inst2|inst3|DOUT[1]~4_combout\ & ((\inst2|inst2|OUT16B[8]~22_combout\ & ((\inst2|inst|mux_1|mux_1|mux_generate:2:mux_i|Mux3~5_combout\) # (\inst2|inst3|DOUT[0]~2_combout\))) # (!\inst2|inst2|OUT16B[8]~22_combout\ 
-- & (\inst2|inst|mux_1|mux_1|mux_generate:2:mux_i|Mux3~5_combout\ & \inst2|inst3|DOUT[0]~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111000001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|inst2|OUT16B[8]~22_combout\,
	datab => \inst2|inst|mux_1|mux_1|mux_generate:2:mux_i|Mux3~5_combout\,
	datac => \inst2|inst3|DOUT[1]~4_combout\,
	datad => \inst2|inst3|DOUT[0]~2_combout\,
	combout => \inst2|inst1|alu2|mux|Mux3~0_combout\);

-- Location: LCCOMB_X110_Y23_N8
\inst2|inst1|alu2|mux|Mux3~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|inst1|alu2|mux|Mux3~1_combout\ = (\inst2|inst1|alu2|mux|Mux3~0_combout\) # ((\inst2|inst1|alu2|adder|S\(0) & \inst2|inst1|alu0|mux|Mux1~4_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|inst1|alu2|adder|S\(0),
	datab => \inst2|inst1|alu2|mux|Mux3~0_combout\,
	datad => \inst2|inst1|alu0|mux|Mux1~4_combout\,
	combout => \inst2|inst1|alu2|mux|Mux3~1_combout\);

-- Location: FF_X114_Y15_N19
\inst1|reg_gen:21:regs|y[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \SW17~input_o\,
	asdata => \inst2|inst|mux_2|mux_1|mux_generate:2:mux_i|Mux3~4_combout\,
	sload => VCC,
	ena => \inst1|dec_to_en\(21),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|reg_gen:21:regs|y\(0));

-- Location: LCCOMB_X114_Y14_N28
\inst1|reg_gen:17:regs|y[0]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|reg_gen:17:regs|y[0]~feeder_combout\ = \inst2|inst|mux_2|mux_1|mux_generate:2:mux_i|Mux3~4_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|inst|mux_2|mux_1|mux_generate:2:mux_i|Mux3~4_combout\,
	combout => \inst1|reg_gen:17:regs|y[0]~feeder_combout\);

-- Location: FF_X114_Y14_N29
\inst1|reg_gen:17:regs|y[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \SW17~input_o\,
	d => \inst1|reg_gen:17:regs|y[0]~feeder_combout\,
	ena => \inst1|dec_to_en\(17),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|reg_gen:17:regs|y\(0));

-- Location: LCCOMB_X114_Y14_N2
\inst1|reg_gen:19:regs|y[0]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|reg_gen:19:regs|y[0]~feeder_combout\ = \inst2|inst|mux_2|mux_1|mux_generate:2:mux_i|Mux3~4_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|inst|mux_2|mux_1|mux_generate:2:mux_i|Mux3~4_combout\,
	combout => \inst1|reg_gen:19:regs|y[0]~feeder_combout\);

-- Location: FF_X114_Y14_N3
\inst1|reg_gen:19:regs|y[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \SW17~input_o\,
	d => \inst1|reg_gen:19:regs|y[0]~feeder_combout\,
	ena => \inst1|dec_to_en\(19),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|reg_gen:19:regs|y\(0));

-- Location: LCCOMB_X111_Y14_N12
\inst1|reg_gen:7:regs|y[0]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|reg_gen:7:regs|y[0]~feeder_combout\ = \inst2|inst|mux_2|mux_1|mux_generate:2:mux_i|Mux3~4_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst2|inst|mux_2|mux_1|mux_generate:2:mux_i|Mux3~4_combout\,
	combout => \inst1|reg_gen:7:regs|y[0]~feeder_combout\);

-- Location: FF_X111_Y14_N13
\inst1|reg_gen:7:regs|y[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \SW17~input_o\,
	d => \inst1|reg_gen:7:regs|y[0]~feeder_combout\,
	ena => \inst1|dec_to_en\(7),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|reg_gen:7:regs|y\(0));

-- Location: LCCOMB_X112_Y14_N22
\inst1|reg_gen:23:regs|y[0]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|reg_gen:23:regs|y[0]~feeder_combout\ = \inst2|inst|mux_2|mux_1|mux_generate:2:mux_i|Mux3~4_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst2|inst|mux_2|mux_1|mux_generate:2:mux_i|Mux3~4_combout\,
	combout => \inst1|reg_gen:23:regs|y[0]~feeder_combout\);

-- Location: FF_X112_Y14_N23
\inst1|reg_gen:23:regs|y[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \SW17~input_o\,
	d => \inst1|reg_gen:23:regs|y[0]~feeder_combout\,
	ena => \inst1|dec_to_en\(23),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|reg_gen:23:regs|y\(0));

-- Location: LCCOMB_X111_Y14_N10
\inst1|DOUT[8]~176\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|DOUT[8]~176_combout\ = (\inst2|inst1|alu1|mux|Mux3~1_combout\ & (\inst1|reg_gen:7:regs|y\(0))) # (!\inst2|inst1|alu1|mux|Mux3~1_combout\ & ((\inst1|reg_gen:23:regs|y\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010110010101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|reg_gen:7:regs|y\(0),
	datab => \inst1|reg_gen:23:regs|y\(0),
	datac => \inst2|inst1|alu1|mux|Mux3~1_combout\,
	combout => \inst1|DOUT[8]~176_combout\);

-- Location: LCCOMB_X111_Y14_N24
\inst1|DOUT[8]~177\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|DOUT[8]~177_combout\ = (\inst2|inst1|alu0|mux|Mux1~3_combout\ & (((\inst2|inst1|alu0|mux|Mux2~1_combout\) # (\inst1|DOUT[8]~176_combout\)))) # (!\inst2|inst1|alu0|mux|Mux1~3_combout\ & (\inst1|reg_gen:19:regs|y\(0) & 
-- (!\inst2|inst1|alu0|mux|Mux2~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111010100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|inst1|alu0|mux|Mux1~3_combout\,
	datab => \inst1|reg_gen:19:regs|y\(0),
	datac => \inst2|inst1|alu0|mux|Mux2~1_combout\,
	datad => \inst1|DOUT[8]~176_combout\,
	combout => \inst1|DOUT[8]~177_combout\);

-- Location: LCCOMB_X111_Y14_N6
\inst1|DOUT[8]~178\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|DOUT[8]~178_combout\ = (\inst2|inst1|alu0|mux|Mux2~1_combout\ & ((\inst1|DOUT[8]~177_combout\ & (\inst1|reg_gen:21:regs|y\(0))) # (!\inst1|DOUT[8]~177_combout\ & ((\inst1|reg_gen:17:regs|y\(0)))))) # (!\inst2|inst1|alu0|mux|Mux2~1_combout\ & 
-- (((\inst1|DOUT[8]~177_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|reg_gen:21:regs|y\(0),
	datab => \inst1|reg_gen:17:regs|y\(0),
	datac => \inst2|inst1|alu0|mux|Mux2~1_combout\,
	datad => \inst1|DOUT[8]~177_combout\,
	combout => \inst1|DOUT[8]~178_combout\);

-- Location: LCCOMB_X109_Y17_N14
\inst1|DOUT[8]~179\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|DOUT[8]~179_combout\ = (\inst1|DOUT[8]~178_combout\ & (\inst1|DOUT[13]~21_combout\ & (!\inst2|inst1|alu0|mux|Mux0~3_combout\ & !\inst1|DOUT[13]~23_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|DOUT[8]~178_combout\,
	datab => \inst1|DOUT[13]~21_combout\,
	datac => \inst2|inst1|alu0|mux|Mux0~3_combout\,
	datad => \inst1|DOUT[13]~23_combout\,
	combout => \inst1|DOUT[8]~179_combout\);

-- Location: LCCOMB_X110_Y14_N6
\inst1|reg_gen:31:regs|y[0]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|reg_gen:31:regs|y[0]~feeder_combout\ = \inst2|inst|mux_2|mux_1|mux_generate:2:mux_i|Mux3~4_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|inst|mux_2|mux_1|mux_generate:2:mux_i|Mux3~4_combout\,
	combout => \inst1|reg_gen:31:regs|y[0]~feeder_combout\);

-- Location: FF_X110_Y14_N7
\inst1|reg_gen:31:regs|y[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \SW17~input_o\,
	d => \inst1|reg_gen:31:regs|y[0]~feeder_combout\,
	ena => \inst1|dec_to_en[31]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|reg_gen:31:regs|y\(0));

-- Location: LCCOMB_X109_Y17_N4
\inst1|DOUT[8]~175\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|DOUT[8]~175_combout\ = (\inst1|reg_gen:31:regs|y\(0) & \inst1|DOUT[13]~23_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst1|reg_gen:31:regs|y\(0),
	datad => \inst1|DOUT[13]~23_combout\,
	combout => \inst1|DOUT[8]~175_combout\);

-- Location: LCCOMB_X107_Y20_N26
\inst2|inst|mux_2|mux_1|mux_generate:0:mux_i|Mux3~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|inst|mux_2|mux_1|mux_generate:0:mux_i|Mux3~1_combout\ = (\inst2|inst|reg_gen:1:regs|reg_1|y\(0) & (\inst4|inst1|data_out[6]~17_combout\ & !\inst4|inst1|exception~2_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst2|inst|reg_gen:1:regs|reg_1|y\(0),
	datac => \inst4|inst1|data_out[6]~17_combout\,
	datad => \inst4|inst1|exception~2_combout\,
	combout => \inst2|inst|mux_2|mux_1|mux_generate:0:mux_i|Mux3~1_combout\);

-- Location: LCCOMB_X107_Y20_N18
\inst2|inst|mux_2|mux_1|mux_generate:0:mux_i|Mux3~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|inst|mux_2|mux_1|mux_generate:0:mux_i|Mux3~2_combout\ = (\inst2|inst|mux_2|mux_1|mux_generate:0:mux_i|Mux2~4_combout\ & (((\inst2|inst|reg_gen:6:regs|reg_1|y\(0) & \inst2|inst|mux_2|mux_1|mux_generate:0:mux_i|Mux2~3_combout\)))) # 
-- (!\inst2|inst|mux_2|mux_1|mux_generate:0:mux_i|Mux2~4_combout\ & ((\inst2|inst|mux_2|mux_1|mux_generate:0:mux_i|Mux3~1_combout\) # ((!\inst2|inst|mux_2|mux_1|mux_generate:0:mux_i|Mux2~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110001000110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|inst|mux_2|mux_1|mux_generate:0:mux_i|Mux3~1_combout\,
	datab => \inst2|inst|mux_2|mux_1|mux_generate:0:mux_i|Mux2~4_combout\,
	datac => \inst2|inst|reg_gen:6:regs|reg_1|y\(0),
	datad => \inst2|inst|mux_2|mux_1|mux_generate:0:mux_i|Mux2~3_combout\,
	combout => \inst2|inst|mux_2|mux_1|mux_generate:0:mux_i|Mux3~2_combout\);

-- Location: LCCOMB_X108_Y20_N4
\inst2|inst|mux_2|mux_1|mux_generate:0:mux_i|Mux3~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|inst|mux_2|mux_1|mux_generate:0:mux_i|Mux3~3_combout\ = (\inst2|inst|mux_2|mux_1|mux_generate:0:mux_i|Mux2~1_combout\ & (((\inst2|inst|mux_2|mux_1|mux_generate:0:mux_i|Mux3~2_combout\)))) # 
-- (!\inst2|inst|mux_2|mux_1|mux_generate:0:mux_i|Mux2~1_combout\ & ((\inst2|inst|mux_2|mux_1|mux_generate:0:mux_i|Mux3~2_combout\ & ((\inst2|inst|reg_gen:4:regs|reg_1|y\(0)))) # (!\inst2|inst|mux_2|mux_1|mux_generate:0:mux_i|Mux3~2_combout\ & 
-- (\inst2|inst|reg_gen:5:regs|reg_1|y\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|inst|mux_2|mux_1|mux_generate:0:mux_i|Mux2~1_combout\,
	datab => \inst2|inst|reg_gen:5:regs|reg_1|y\(0),
	datac => \inst2|inst|reg_gen:4:regs|reg_1|y\(0),
	datad => \inst2|inst|mux_2|mux_1|mux_generate:0:mux_i|Mux3~2_combout\,
	combout => \inst2|inst|mux_2|mux_1|mux_generate:0:mux_i|Mux3~3_combout\);

-- Location: LCCOMB_X107_Y18_N12
\inst2|inst|mux_2|mux_1|mux_generate:0:mux_i|Mux3~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|inst|mux_2|mux_1|mux_generate:0:mux_i|Mux3~4_combout\ = (\inst2|inst|mux_2|mux_1|mux_generate:0:mux_i|Mux2~7_combout\ & ((\inst2|inst|mux_2|mux_1|mux_generate:0:mux_i|Mux3~0_combout\))) # 
-- (!\inst2|inst|mux_2|mux_1|mux_generate:0:mux_i|Mux2~7_combout\ & (\inst2|inst|mux_2|mux_1|mux_generate:0:mux_i|Mux3~3_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|inst|mux_2|mux_1|mux_generate:0:mux_i|Mux3~3_combout\,
	datab => \inst2|inst|mux_2|mux_1|mux_generate:0:mux_i|Mux3~0_combout\,
	datad => \inst2|inst|mux_2|mux_1|mux_generate:0:mux_i|Mux2~7_combout\,
	combout => \inst2|inst|mux_2|mux_1|mux_generate:0:mux_i|Mux3~4_combout\);

-- Location: LCCOMB_X112_Y15_N8
\inst1|reg_gen:12:regs|y[0]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|reg_gen:12:regs|y[0]~feeder_combout\ = \inst2|inst|mux_2|mux_1|mux_generate:0:mux_i|Mux3~4_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst2|inst|mux_2|mux_1|mux_generate:0:mux_i|Mux3~4_combout\,
	combout => \inst1|reg_gen:12:regs|y[0]~feeder_combout\);

-- Location: FF_X112_Y15_N9
\inst1|reg_gen:12:regs|y[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \SW17~input_o\,
	d => \inst1|reg_gen:12:regs|y[0]~feeder_combout\,
	ena => \inst1|dec_to_en\(12),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|reg_gen:12:regs|y\(0));

-- Location: LCCOMB_X114_Y17_N4
\inst1|reg_gen:28:regs|y[0]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|reg_gen:28:regs|y[0]~feeder_combout\ = \inst2|inst|mux_2|mux_1|mux_generate:0:mux_i|Mux3~4_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst2|inst|mux_2|mux_1|mux_generate:0:mux_i|Mux3~4_combout\,
	combout => \inst1|reg_gen:28:regs|y[0]~feeder_combout\);

-- Location: FF_X114_Y17_N5
\inst1|reg_gen:28:regs|y[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \SW17~input_o\,
	d => \inst1|reg_gen:28:regs|y[0]~feeder_combout\,
	ena => \inst1|dec_to_en\(28),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|reg_gen:28:regs|y\(0));

-- Location: LCCOMB_X110_Y18_N24
\inst1|DOUT[8]~184\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|DOUT[8]~184_combout\ = (\inst2|inst1|alu1|mux|Mux3~1_combout\ & (\inst1|reg_gen:12:regs|y\(0))) # (!\inst2|inst1|alu1|mux|Mux3~1_combout\ & ((\inst1|reg_gen:28:regs|y\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010110010101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|reg_gen:12:regs|y\(0),
	datab => \inst1|reg_gen:28:regs|y\(0),
	datac => \inst2|inst1|alu1|mux|Mux3~1_combout\,
	combout => \inst1|DOUT[8]~184_combout\);

-- Location: FF_X110_Y18_N7
\inst1|reg_gen:16:regs|y[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \SW17~input_o\,
	asdata => \inst2|inst|mux_2|mux_1|mux_generate:0:mux_i|Mux3~4_combout\,
	sload => VCC,
	ena => \inst1|dec_to_en[16]~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|reg_gen:16:regs|y\(0));

-- Location: LCCOMB_X110_Y18_N6
\inst1|DOUT[8]~185\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|DOUT[8]~185_combout\ = (\inst1|DOUT[13]~29_combout\ & (((\inst1|reg_gen:16:regs|y\(0)) # (\inst1|DOUT[13]~34_combout\)))) # (!\inst1|DOUT[13]~29_combout\ & (\inst1|DOUT[8]~184_combout\ & ((!\inst1|DOUT[13]~34_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|DOUT[13]~29_combout\,
	datab => \inst1|DOUT[8]~184_combout\,
	datac => \inst1|reg_gen:16:regs|y\(0),
	datad => \inst1|DOUT[13]~34_combout\,
	combout => \inst1|DOUT[8]~185_combout\);

-- Location: FF_X111_Y20_N15
\inst1|reg_gen:30:regs|y[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \SW17~input_o\,
	asdata => \inst2|inst|mux_2|mux_1|mux_generate:0:mux_i|Mux3~4_combout\,
	sload => VCC,
	ena => \inst1|dec_to_en\(30),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|reg_gen:30:regs|y\(0));

-- Location: FF_X111_Y20_N9
\inst1|reg_gen:26:regs|y[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \SW17~input_o\,
	asdata => \inst2|inst|mux_2|mux_1|mux_generate:0:mux_i|Mux3~4_combout\,
	sload => VCC,
	ena => \inst1|dec_to_en\(26),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|reg_gen:26:regs|y\(0));

-- Location: LCCOMB_X111_Y20_N8
\inst1|DOUT[8]~186\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|DOUT[8]~186_combout\ = (\inst2|inst1|alu1|mux|Mux3~1_combout\ & (((\inst2|inst1|alu0|mux|Mux1~3_combout\)))) # (!\inst2|inst1|alu1|mux|Mux3~1_combout\ & ((\inst2|inst1|alu0|mux|Mux1~3_combout\ & (\inst1|reg_gen:30:regs|y\(0))) # 
-- (!\inst2|inst1|alu0|mux|Mux1~3_combout\ & ((\inst1|reg_gen:26:regs|y\(0))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|inst1|alu1|mux|Mux3~1_combout\,
	datab => \inst1|reg_gen:30:regs|y\(0),
	datac => \inst1|reg_gen:26:regs|y\(0),
	datad => \inst2|inst1|alu0|mux|Mux1~3_combout\,
	combout => \inst1|DOUT[8]~186_combout\);

-- Location: LCCOMB_X112_Y20_N26
\inst1|reg_gen:14:regs|y[0]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|reg_gen:14:regs|y[0]~feeder_combout\ = \inst2|inst|mux_2|mux_1|mux_generate:0:mux_i|Mux3~4_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst2|inst|mux_2|mux_1|mux_generate:0:mux_i|Mux3~4_combout\,
	combout => \inst1|reg_gen:14:regs|y[0]~feeder_combout\);

-- Location: FF_X112_Y20_N27
\inst1|reg_gen:14:regs|y[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \SW17~input_o\,
	d => \inst1|reg_gen:14:regs|y[0]~feeder_combout\,
	ena => \inst1|dec_to_en\(14),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|reg_gen:14:regs|y\(0));

-- Location: FF_X111_Y19_N11
\inst1|reg_gen:10:regs|y[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \SW17~input_o\,
	asdata => \inst2|inst|mux_2|mux_1|mux_generate:0:mux_i|Mux3~4_combout\,
	sload => VCC,
	ena => \inst1|dec_to_en\(10),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|reg_gen:10:regs|y\(0));

-- Location: LCCOMB_X111_Y19_N10
\inst1|DOUT[8]~187\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|DOUT[8]~187_combout\ = (\inst1|DOUT[8]~186_combout\ & ((\inst1|reg_gen:14:regs|y\(0)) # ((!\inst2|inst1|alu1|mux|Mux3~1_combout\)))) # (!\inst1|DOUT[8]~186_combout\ & (((\inst1|reg_gen:10:regs|y\(0) & \inst2|inst1|alu1|mux|Mux3~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|DOUT[8]~186_combout\,
	datab => \inst1|reg_gen:14:regs|y\(0),
	datac => \inst1|reg_gen:10:regs|y\(0),
	datad => \inst2|inst1|alu1|mux|Mux3~1_combout\,
	combout => \inst1|DOUT[8]~187_combout\);

-- Location: FF_X111_Y19_N17
\inst1|reg_gen:15:regs|y[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \SW17~input_o\,
	asdata => \inst2|inst|mux_2|mux_1|mux_generate:2:mux_i|Mux3~4_combout\,
	sload => VCC,
	ena => \inst1|dec_to_en\(15),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|reg_gen:15:regs|y\(0));

-- Location: LCCOMB_X112_Y17_N20
\inst1|reg_gen:11:regs|y[0]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|reg_gen:11:regs|y[0]~feeder_combout\ = \inst2|inst|mux_2|mux_1|mux_generate:2:mux_i|Mux3~4_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst2|inst|mux_2|mux_1|mux_generate:2:mux_i|Mux3~4_combout\,
	combout => \inst1|reg_gen:11:regs|y[0]~feeder_combout\);

-- Location: FF_X112_Y17_N21
\inst1|reg_gen:11:regs|y[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \SW17~input_o\,
	d => \inst1|reg_gen:11:regs|y[0]~feeder_combout\,
	ena => \inst1|dec_to_en\(11),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|reg_gen:11:regs|y\(0));

-- Location: FF_X112_Y17_N11
\inst1|reg_gen:27:regs|y[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \SW17~input_o\,
	asdata => \inst2|inst|mux_2|mux_1|mux_generate:2:mux_i|Mux3~4_combout\,
	sload => VCC,
	ena => \inst1|dec_to_en\(27),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|reg_gen:27:regs|y\(0));

-- Location: LCCOMB_X112_Y17_N10
\inst1|DOUT[8]~188\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|DOUT[8]~188_combout\ = (\inst2|inst1|alu1|mux|Mux3~1_combout\ & (\inst1|reg_gen:11:regs|y\(0))) # (!\inst2|inst1|alu1|mux|Mux3~1_combout\ & ((\inst1|reg_gen:27:regs|y\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst1|reg_gen:11:regs|y\(0),
	datac => \inst1|reg_gen:27:regs|y\(0),
	datad => \inst2|inst1|alu1|mux|Mux3~1_combout\,
	combout => \inst1|DOUT[8]~188_combout\);

-- Location: LCCOMB_X111_Y19_N16
\inst1|DOUT[8]~189\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|DOUT[8]~189_combout\ = (\inst1|DOUT[13]~37_combout\ & ((\inst1|DOUT[13]~40_combout\) # ((\inst1|reg_gen:15:regs|y\(0))))) # (!\inst1|DOUT[13]~37_combout\ & (!\inst1|DOUT[13]~40_combout\ & ((\inst1|DOUT[8]~188_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100110101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|DOUT[13]~37_combout\,
	datab => \inst1|DOUT[13]~40_combout\,
	datac => \inst1|reg_gen:15:regs|y\(0),
	datad => \inst1|DOUT[8]~188_combout\,
	combout => \inst1|DOUT[8]~189_combout\);

-- Location: LCCOMB_X114_Y16_N22
\inst1|reg_gen:25:regs|y[0]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|reg_gen:25:regs|y[0]~feeder_combout\ = \inst2|inst|mux_2|mux_1|mux_generate:2:mux_i|Mux3~4_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst2|inst|mux_2|mux_1|mux_generate:2:mux_i|Mux3~4_combout\,
	combout => \inst1|reg_gen:25:regs|y[0]~feeder_combout\);

-- Location: FF_X114_Y16_N23
\inst1|reg_gen:25:regs|y[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \SW17~input_o\,
	d => \inst1|reg_gen:25:regs|y[0]~feeder_combout\,
	ena => \inst1|dec_to_en\(25),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|reg_gen:25:regs|y\(0));

-- Location: LCCOMB_X113_Y17_N10
\inst1|reg_gen:29:regs|y[0]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|reg_gen:29:regs|y[0]~feeder_combout\ = \inst2|inst|mux_2|mux_1|mux_generate:2:mux_i|Mux3~4_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst2|inst|mux_2|mux_1|mux_generate:2:mux_i|Mux3~4_combout\,
	combout => \inst1|reg_gen:29:regs|y[0]~feeder_combout\);

-- Location: FF_X113_Y17_N11
\inst1|reg_gen:29:regs|y[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \SW17~input_o\,
	d => \inst1|reg_gen:29:regs|y[0]~feeder_combout\,
	ena => \inst1|dec_to_en\(29),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|reg_gen:29:regs|y\(0));

-- Location: LCCOMB_X112_Y19_N22
\inst1|DOUT[8]~190\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|DOUT[8]~190_combout\ = (\inst2|inst1|alu1|mux|Mux3~1_combout\ & (((\inst2|inst1|alu0|mux|Mux1~3_combout\)))) # (!\inst2|inst1|alu1|mux|Mux3~1_combout\ & ((\inst2|inst1|alu0|mux|Mux1~3_combout\ & ((\inst1|reg_gen:29:regs|y\(0)))) # 
-- (!\inst2|inst1|alu0|mux|Mux1~3_combout\ & (\inst1|reg_gen:25:regs|y\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|inst1|alu1|mux|Mux3~1_combout\,
	datab => \inst1|reg_gen:25:regs|y\(0),
	datac => \inst1|reg_gen:29:regs|y\(0),
	datad => \inst2|inst1|alu0|mux|Mux1~3_combout\,
	combout => \inst1|DOUT[8]~190_combout\);

-- Location: LCCOMB_X112_Y15_N14
\inst1|reg_gen:13:regs|y[0]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|reg_gen:13:regs|y[0]~feeder_combout\ = \inst2|inst|mux_2|mux_1|mux_generate:2:mux_i|Mux3~4_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst2|inst|mux_2|mux_1|mux_generate:2:mux_i|Mux3~4_combout\,
	combout => \inst1|reg_gen:13:regs|y[0]~feeder_combout\);

-- Location: FF_X112_Y15_N15
\inst1|reg_gen:13:regs|y[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \SW17~input_o\,
	d => \inst1|reg_gen:13:regs|y[0]~feeder_combout\,
	ena => \inst1|dec_to_en\(13),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|reg_gen:13:regs|y\(0));

-- Location: LCCOMB_X114_Y19_N10
\inst1|reg_gen:9:regs|y[0]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|reg_gen:9:regs|y[0]~feeder_combout\ = \inst2|inst|mux_2|mux_1|mux_generate:2:mux_i|Mux3~4_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst2|inst|mux_2|mux_1|mux_generate:2:mux_i|Mux3~4_combout\,
	combout => \inst1|reg_gen:9:regs|y[0]~feeder_combout\);

-- Location: FF_X114_Y19_N11
\inst1|reg_gen:9:regs|y[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \SW17~input_o\,
	d => \inst1|reg_gen:9:regs|y[0]~feeder_combout\,
	ena => \inst1|dec_to_en\(9),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|reg_gen:9:regs|y\(0));

-- Location: LCCOMB_X112_Y19_N12
\inst1|DOUT[8]~191\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|DOUT[8]~191_combout\ = (\inst1|DOUT[8]~190_combout\ & ((\inst1|reg_gen:13:regs|y\(0)) # ((!\inst2|inst1|alu1|mux|Mux3~1_combout\)))) # (!\inst1|DOUT[8]~190_combout\ & (((\inst1|reg_gen:9:regs|y\(0) & \inst2|inst1|alu1|mux|Mux3~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|DOUT[8]~190_combout\,
	datab => \inst1|reg_gen:13:regs|y\(0),
	datac => \inst1|reg_gen:9:regs|y\(0),
	datad => \inst2|inst1|alu1|mux|Mux3~1_combout\,
	combout => \inst1|DOUT[8]~191_combout\);

-- Location: LCCOMB_X111_Y19_N30
\inst1|DOUT[8]~192\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|DOUT[8]~192_combout\ = (\inst1|DOUT[8]~189_combout\ & (((\inst1|DOUT[8]~191_combout\) # (!\inst1|DOUT[13]~40_combout\)))) # (!\inst1|DOUT[8]~189_combout\ & (\inst1|DOUT[8]~187_combout\ & (\inst1|DOUT[13]~40_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110000101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|DOUT[8]~187_combout\,
	datab => \inst1|DOUT[8]~189_combout\,
	datac => \inst1|DOUT[13]~40_combout\,
	datad => \inst1|DOUT[8]~191_combout\,
	combout => \inst1|DOUT[8]~192_combout\);

-- Location: LCCOMB_X114_Y15_N28
\inst1|reg_gen:20:regs|y[0]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|reg_gen:20:regs|y[0]~feeder_combout\ = \inst2|inst|mux_2|mux_1|mux_generate:0:mux_i|Mux3~4_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst2|inst|mux_2|mux_1|mux_generate:0:mux_i|Mux3~4_combout\,
	combout => \inst1|reg_gen:20:regs|y[0]~feeder_combout\);

-- Location: FF_X114_Y15_N29
\inst1|reg_gen:20:regs|y[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \SW17~input_o\,
	d => \inst1|reg_gen:20:regs|y[0]~feeder_combout\,
	ena => \inst1|dec_to_en\(20),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|reg_gen:20:regs|y\(0));

-- Location: LCCOMB_X112_Y18_N6
\inst1|reg_gen:8:regs|y[0]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|reg_gen:8:regs|y[0]~feeder_combout\ = \inst2|inst|mux_2|mux_1|mux_generate:0:mux_i|Mux3~4_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|inst|mux_2|mux_1|mux_generate:0:mux_i|Mux3~4_combout\,
	combout => \inst1|reg_gen:8:regs|y[0]~feeder_combout\);

-- Location: FF_X112_Y18_N7
\inst1|reg_gen:8:regs|y[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \SW17~input_o\,
	d => \inst1|reg_gen:8:regs|y[0]~feeder_combout\,
	ena => \inst1|dec_to_en[8]~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|reg_gen:8:regs|y\(0));

-- Location: FF_X112_Y18_N13
\inst1|reg_gen:24:regs|y[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \SW17~input_o\,
	asdata => \inst2|inst|mux_2|mux_1|mux_generate:0:mux_i|Mux3~4_combout\,
	sload => VCC,
	ena => \inst1|dec_to_en[24]~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|reg_gen:24:regs|y\(0));

-- Location: LCCOMB_X112_Y18_N12
\inst1|DOUT[8]~180\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|DOUT[8]~180_combout\ = (\inst2|inst1|alu1|mux|Mux3~1_combout\ & (\inst1|reg_gen:8:regs|y\(0))) # (!\inst2|inst1|alu1|mux|Mux3~1_combout\ & ((\inst1|reg_gen:24:regs|y\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|reg_gen:8:regs|y\(0),
	datac => \inst1|reg_gen:24:regs|y\(0),
	datad => \inst2|inst1|alu1|mux|Mux3~1_combout\,
	combout => \inst1|DOUT[8]~180_combout\);

-- Location: LCCOMB_X111_Y18_N14
\inst1|DOUT[8]~181\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|DOUT[8]~181_combout\ = (\inst2|inst1|alu0|mux|Mux1~3_combout\ & (((\inst1|DOUT[8]~180_combout\) # (\inst2|inst1|alu0|mux|Mux2~1_combout\)))) # (!\inst2|inst1|alu0|mux|Mux1~3_combout\ & (\inst1|reg_gen:20:regs|y\(0) & 
-- ((!\inst2|inst1|alu0|mux|Mux2~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|reg_gen:20:regs|y\(0),
	datab => \inst2|inst1|alu0|mux|Mux1~3_combout\,
	datac => \inst1|DOUT[8]~180_combout\,
	datad => \inst2|inst1|alu0|mux|Mux2~1_combout\,
	combout => \inst1|DOUT[8]~181_combout\);

-- Location: LCCOMB_X114_Y17_N22
\inst1|reg_gen:18:regs|y[0]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|reg_gen:18:regs|y[0]~feeder_combout\ = \inst2|inst|mux_2|mux_1|mux_generate:0:mux_i|Mux3~4_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst2|inst|mux_2|mux_1|mux_generate:0:mux_i|Mux3~4_combout\,
	combout => \inst1|reg_gen:18:regs|y[0]~feeder_combout\);

-- Location: FF_X114_Y17_N23
\inst1|reg_gen:18:regs|y[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \SW17~input_o\,
	d => \inst1|reg_gen:18:regs|y[0]~feeder_combout\,
	ena => \inst1|dec_to_en\(18),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|reg_gen:18:regs|y\(0));

-- Location: LCCOMB_X114_Y18_N2
\inst1|reg_gen:6:regs|y[0]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|reg_gen:6:regs|y[0]~feeder_combout\ = \inst2|inst|mux_2|mux_1|mux_generate:0:mux_i|Mux3~4_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst2|inst|mux_2|mux_1|mux_generate:0:mux_i|Mux3~4_combout\,
	combout => \inst1|reg_gen:6:regs|y[0]~feeder_combout\);

-- Location: FF_X114_Y18_N3
\inst1|reg_gen:6:regs|y[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \SW17~input_o\,
	d => \inst1|reg_gen:6:regs|y[0]~feeder_combout\,
	ena => \inst1|dec_to_en\(6),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|reg_gen:6:regs|y\(0));

-- Location: LCCOMB_X113_Y14_N24
\inst1|reg_gen:22:regs|y[0]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|reg_gen:22:regs|y[0]~feeder_combout\ = \inst2|inst|mux_2|mux_1|mux_generate:0:mux_i|Mux3~4_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|inst|mux_2|mux_1|mux_generate:0:mux_i|Mux3~4_combout\,
	combout => \inst1|reg_gen:22:regs|y[0]~feeder_combout\);

-- Location: FF_X113_Y14_N25
\inst1|reg_gen:22:regs|y[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \SW17~input_o\,
	d => \inst1|reg_gen:22:regs|y[0]~feeder_combout\,
	ena => \inst1|dec_to_en\(22),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|reg_gen:22:regs|y\(0));

-- Location: LCCOMB_X111_Y18_N12
\inst1|DOUT[8]~182\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|DOUT[8]~182_combout\ = (\inst2|inst1|alu1|mux|Mux3~1_combout\ & (\inst1|reg_gen:6:regs|y\(0))) # (!\inst2|inst1|alu1|mux|Mux3~1_combout\ & ((\inst1|reg_gen:22:regs|y\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|reg_gen:6:regs|y\(0),
	datab => \inst2|inst1|alu1|mux|Mux3~1_combout\,
	datad => \inst1|reg_gen:22:regs|y\(0),
	combout => \inst1|DOUT[8]~182_combout\);

-- Location: LCCOMB_X111_Y18_N20
\inst1|DOUT[8]~183\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|DOUT[8]~183_combout\ = (\inst2|inst1|alu0|mux|Mux2~1_combout\ & ((\inst1|DOUT[8]~181_combout\ & ((\inst1|DOUT[8]~182_combout\))) # (!\inst1|DOUT[8]~181_combout\ & (\inst1|reg_gen:18:regs|y\(0))))) # (!\inst2|inst1|alu0|mux|Mux2~1_combout\ & 
-- (\inst1|DOUT[8]~181_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110001100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|inst1|alu0|mux|Mux2~1_combout\,
	datab => \inst1|DOUT[8]~181_combout\,
	datac => \inst1|reg_gen:18:regs|y\(0),
	datad => \inst1|DOUT[8]~182_combout\,
	combout => \inst1|DOUT[8]~183_combout\);

-- Location: LCCOMB_X110_Y18_N26
\inst1|DOUT[8]~193\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|DOUT[8]~193_combout\ = (\inst1|DOUT[8]~185_combout\ & ((\inst1|DOUT[8]~192_combout\) # ((!\inst1|DOUT[13]~34_combout\)))) # (!\inst1|DOUT[8]~185_combout\ & (((\inst1|DOUT[8]~183_combout\ & \inst1|DOUT[13]~34_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|DOUT[8]~185_combout\,
	datab => \inst1|DOUT[8]~192_combout\,
	datac => \inst1|DOUT[8]~183_combout\,
	datad => \inst1|DOUT[13]~34_combout\,
	combout => \inst1|DOUT[8]~193_combout\);

-- Location: LCCOMB_X109_Y17_N8
\inst1|DOUT[8]~194\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|DOUT[8]~194_combout\ = (\inst1|DOUT[8]~179_combout\) # ((\inst1|DOUT[8]~175_combout\) # ((\inst1|DOUT[15]~47_combout\ & \inst1|DOUT[8]~193_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111011111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|DOUT[15]~47_combout\,
	datab => \inst1|DOUT[8]~179_combout\,
	datac => \inst1|DOUT[8]~175_combout\,
	datad => \inst1|DOUT[8]~193_combout\,
	combout => \inst1|DOUT[8]~194_combout\);

-- Location: LCCOMB_X109_Y17_N16
\inst1|DOUT[8]$latch~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|DOUT[8]$latch~0_combout\ = (GLOBAL(\inst1|DOUT[15]~52clkctrl_outclk\) & (\inst1|DOUT[8]~194_combout\)) # (!GLOBAL(\inst1|DOUT[15]~52clkctrl_outclk\) & ((\inst1|DOUT[8]$latch~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst1|DOUT[8]~194_combout\,
	datac => \inst1|DOUT[8]$latch~combout\,
	datad => \inst1|DOUT[15]~52clkctrl_outclk\,
	combout => \inst1|DOUT[8]$latch~0_combout\);

-- Location: LCCOMB_X110_Y21_N12
\inst1|DOUT[8]$latch\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|DOUT[8]$latch~combout\ = (!\inst1|comb~1_combout\ & ((\inst1|DOUT[8]$latch~0_combout\) # (\inst1|dcd|dcd_0|D[1]~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst1|comb~1_combout\,
	datac => \inst1|DOUT[8]$latch~0_combout\,
	datad => \inst1|dcd|dcd_0|D[1]~1_combout\,
	combout => \inst1|DOUT[8]$latch~combout\);

-- Location: LCCOMB_X110_Y21_N4
\inst3|OUT16B[8]~26\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|OUT16B[8]~26_combout\ = (\inst|Mux5~0_combout\ & (((\inst1|DOUT[8]$latch~combout\) # (!\inst1|DOUT[15]_2612~combout\)))) # (!\inst|Mux5~0_combout\ & (\inst2|inst1|alu2|mux|Mux3~1_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|inst1|alu2|mux|Mux3~1_combout\,
	datab => \inst1|DOUT[15]_2612~combout\,
	datac => \inst1|DOUT[8]$latch~combout\,
	datad => \inst|Mux5~0_combout\,
	combout => \inst3|OUT16B[8]~26_combout\);

-- Location: FF_X106_Y21_N31
\inst2|inst|reg_gen:5:regs|reg_2|y[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \SW17~input_o\,
	asdata => \inst3|OUT16B[8]~26_combout\,
	sload => VCC,
	ena => \inst2|inst|add_reg1_dcd|Mux3~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst2|inst|reg_gen:5:regs|reg_2|y\(0));

-- Location: LCCOMB_X109_Y22_N10
\inst2|inst|mux_1|mux_1|mux_generate:2:mux_i|Mux3~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|inst|mux_1|mux_1|mux_generate:2:mux_i|Mux3~6_combout\ = (\inst2|inst|reg_gen:1:regs|reg_2|y\(0) & (!\inst4|inst1|exception~2_combout\ & ((\inst4|inst1|data_out[9]~13_combout\) # (\inst4|inst|reg|reg_1|y\(5)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110000001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|inst1|data_out[9]~13_combout\,
	datab => \inst2|inst|reg_gen:1:regs|reg_2|y\(0),
	datac => \inst4|inst1|exception~2_combout\,
	datad => \inst4|inst|reg|reg_1|y\(5),
	combout => \inst2|inst|mux_1|mux_1|mux_generate:2:mux_i|Mux3~6_combout\);

-- Location: LCCOMB_X109_Y22_N8
\inst2|inst|mux_1|mux_1|mux_generate:2:mux_i|Mux3~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|inst|mux_1|mux_1|mux_generate:2:mux_i|Mux3~3_combout\ = (\inst2|inst|mux_1|mux_1|mux_generate:3:mux_i|Mux3~5_combout\ & ((\inst2|inst|mux_1|mux_1|mux_generate:3:mux_i|Mux3~6_combout\ & ((\inst2|inst|reg_gen:6:regs|reg_2|y\(0)))) # 
-- (!\inst2|inst|mux_1|mux_1|mux_generate:3:mux_i|Mux3~6_combout\ & (\inst2|inst|mux_1|mux_1|mux_generate:2:mux_i|Mux3~6_combout\)))) # (!\inst2|inst|mux_1|mux_1|mux_generate:3:mux_i|Mux3~5_combout\ & 
-- (((\inst2|inst|mux_1|mux_1|mux_generate:3:mux_i|Mux3~6_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|inst|mux_1|mux_1|mux_generate:2:mux_i|Mux3~6_combout\,
	datab => \inst2|inst|mux_1|mux_1|mux_generate:3:mux_i|Mux3~5_combout\,
	datac => \inst2|inst|reg_gen:6:regs|reg_2|y\(0),
	datad => \inst2|inst|mux_1|mux_1|mux_generate:3:mux_i|Mux3~6_combout\,
	combout => \inst2|inst|mux_1|mux_1|mux_generate:2:mux_i|Mux3~3_combout\);

-- Location: LCCOMB_X108_Y21_N20
\inst2|inst|mux_1|mux_1|mux_generate:2:mux_i|Mux3~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|inst|mux_1|mux_1|mux_generate:2:mux_i|Mux3~4_combout\ = (\inst2|inst|mux_1|mux_1|mux_generate:3:mux_i|Mux3~4_combout\ & (((\inst2|inst|mux_1|mux_1|mux_generate:2:mux_i|Mux3~3_combout\)))) # 
-- (!\inst2|inst|mux_1|mux_1|mux_generate:3:mux_i|Mux3~4_combout\ & ((\inst2|inst|mux_1|mux_1|mux_generate:2:mux_i|Mux3~3_combout\ & (\inst2|inst|reg_gen:5:regs|reg_2|y\(0))) # (!\inst2|inst|mux_1|mux_1|mux_generate:2:mux_i|Mux3~3_combout\ & 
-- ((\inst2|inst|reg_gen:4:regs|reg_2|y\(0))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|inst|reg_gen:5:regs|reg_2|y\(0),
	datab => \inst2|inst|mux_1|mux_1|mux_generate:3:mux_i|Mux3~4_combout\,
	datac => \inst2|inst|reg_gen:4:regs|reg_2|y\(0),
	datad => \inst2|inst|mux_1|mux_1|mux_generate:2:mux_i|Mux3~3_combout\,
	combout => \inst2|inst|mux_1|mux_1|mux_generate:2:mux_i|Mux3~4_combout\);

-- Location: LCCOMB_X108_Y21_N2
\inst2|inst|mux_1|mux_1|mux_generate:2:mux_i|Mux3~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|inst|mux_1|mux_1|mux_generate:2:mux_i|Mux3~2_combout\ = (\inst4|inst1|exception~2_combout\ & (((\inst2|inst|reg_gen:2:regs|reg_2|y\(0))))) # (!\inst4|inst1|exception~2_combout\ & ((\inst4|inst1|data_out[9]~14_combout\ & 
-- (\inst2|inst|reg_gen:3:regs|reg_2|y\(0))) # (!\inst4|inst1|data_out[9]~14_combout\ & ((\inst2|inst|reg_gen:2:regs|reg_2|y\(0))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101101000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|inst1|exception~2_combout\,
	datab => \inst4|inst1|data_out[9]~14_combout\,
	datac => \inst2|inst|reg_gen:3:regs|reg_2|y\(0),
	datad => \inst2|inst|reg_gen:2:regs|reg_2|y\(0),
	combout => \inst2|inst|mux_1|mux_1|mux_generate:2:mux_i|Mux3~2_combout\);

-- Location: LCCOMB_X108_Y21_N22
\inst2|inst|mux_1|mux_1|mux_generate:2:mux_i|Mux3~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|inst|mux_1|mux_1|mux_generate:2:mux_i|Mux3~5_combout\ = (\inst2|inst|mux_1|mux_1|mux_generate:3:mux_i|Mux3~12_combout\ & ((\inst2|inst|mux_1|mux_1|mux_generate:2:mux_i|Mux3~2_combout\))) # 
-- (!\inst2|inst|mux_1|mux_1|mux_generate:3:mux_i|Mux3~12_combout\ & (\inst2|inst|mux_1|mux_1|mux_generate:2:mux_i|Mux3~4_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst2|inst|mux_1|mux_1|mux_generate:2:mux_i|Mux3~4_combout\,
	datac => \inst2|inst|mux_1|mux_1|mux_generate:2:mux_i|Mux3~2_combout\,
	datad => \inst2|inst|mux_1|mux_1|mux_generate:3:mux_i|Mux3~12_combout\,
	combout => \inst2|inst|mux_1|mux_1|mux_generate:2:mux_i|Mux3~5_combout\);

-- Location: LCCOMB_X109_Y21_N22
\inst2|inst1|alu2|adder|C[1]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|inst1|alu2|adder|C[1]~0_combout\ = (\inst2|inst|mux_1|mux_1|mux_generate:2:mux_i|Mux3~5_combout\ & ((\inst2|inst1|alu1|adder|C4~0_combout\) # (\inst2|inst3|DOUT[2]~3_combout\ $ (\inst2|inst2|OUT16B[8]~22_combout\)))) # 
-- (!\inst2|inst|mux_1|mux_1|mux_generate:2:mux_i|Mux3~5_combout\ & (\inst2|inst1|alu1|adder|C4~0_combout\ & (\inst2|inst3|DOUT[2]~3_combout\ $ (\inst2|inst2|OUT16B[8]~22_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101111001001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|inst3|DOUT[2]~3_combout\,
	datab => \inst2|inst|mux_1|mux_1|mux_generate:2:mux_i|Mux3~5_combout\,
	datac => \inst2|inst2|OUT16B[8]~22_combout\,
	datad => \inst2|inst1|alu1|adder|C4~0_combout\,
	combout => \inst2|inst1|alu2|adder|C[1]~0_combout\);

-- Location: LCCOMB_X110_Y22_N20
\inst2|inst2|OUT16B[9]~21\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|inst2|OUT16B[9]~21_combout\ = (\inst|Mux7~0_combout\ & (!\inst4|inst1|exception~2_combout\ & ((!\inst4|inst1|data_out[5]~5_combout\)))) # (!\inst|Mux7~0_combout\ & (((\inst2|inst|mux_2|mux_1|mux_generate:2:mux_i|Mux2~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000001110010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Mux7~0_combout\,
	datab => \inst4|inst1|exception~2_combout\,
	datac => \inst2|inst|mux_2|mux_1|mux_generate:2:mux_i|Mux2~4_combout\,
	datad => \inst4|inst1|data_out[5]~5_combout\,
	combout => \inst2|inst2|OUT16B[9]~21_combout\);

-- Location: LCCOMB_X110_Y23_N24
\inst2|inst1|alu2|adder|S[1]\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|inst1|alu2|adder|S\(1) = \inst2|inst3|DOUT[2]~3_combout\ $ (\inst2|inst|mux_1|mux_1|mux_generate:2:mux_i|Mux2~5_combout\ $ (\inst2|inst1|alu2|adder|C[1]~0_combout\ $ (\inst2|inst2|OUT16B[9]~21_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|inst3|DOUT[2]~3_combout\,
	datab => \inst2|inst|mux_1|mux_1|mux_generate:2:mux_i|Mux2~5_combout\,
	datac => \inst2|inst1|alu2|adder|C[1]~0_combout\,
	datad => \inst2|inst2|OUT16B[9]~21_combout\,
	combout => \inst2|inst1|alu2|adder|S\(1));

-- Location: LCCOMB_X110_Y23_N2
\inst2|inst1|alu2|mux|Mux2~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|inst1|alu2|mux|Mux2~0_combout\ = (!\inst2|inst3|DOUT[1]~4_combout\ & ((\inst2|inst3|DOUT[0]~2_combout\ & ((\inst2|inst|mux_1|mux_1|mux_generate:2:mux_i|Mux2~5_combout\) # (\inst2|inst2|OUT16B[9]~21_combout\))) # (!\inst2|inst3|DOUT[0]~2_combout\ & 
-- (\inst2|inst|mux_1|mux_1|mux_generate:2:mux_i|Mux2~5_combout\ & \inst2|inst2|OUT16B[9]~21_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111000001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|inst3|DOUT[0]~2_combout\,
	datab => \inst2|inst|mux_1|mux_1|mux_generate:2:mux_i|Mux2~5_combout\,
	datac => \inst2|inst3|DOUT[1]~4_combout\,
	datad => \inst2|inst2|OUT16B[9]~21_combout\,
	combout => \inst2|inst1|alu2|mux|Mux2~0_combout\);

-- Location: LCCOMB_X110_Y23_N18
\inst2|inst1|alu2|mux|Mux2~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|inst1|alu2|mux|Mux2~1_combout\ = (\inst2|inst1|alu2|mux|Mux2~0_combout\) # ((\inst2|inst1|alu2|adder|S\(1) & \inst2|inst1|alu0|mux|Mux1~4_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|inst1|alu2|adder|S\(1),
	datac => \inst2|inst1|alu2|mux|Mux2~0_combout\,
	datad => \inst2|inst1|alu0|mux|Mux1~4_combout\,
	combout => \inst2|inst1|alu2|mux|Mux2~1_combout\);

-- Location: LCCOMB_X110_Y19_N0
\inst3|OUT16B[9]~29\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|OUT16B[9]~29_combout\ = (\inst|Mux5~0_combout\ & (((\inst1|DOUT[9]$latch~combout\)) # (!\inst1|DOUT[15]_2612~combout\))) # (!\inst|Mux5~0_combout\ & (((\inst2|inst1|alu2|mux|Mux2~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|DOUT[15]_2612~combout\,
	datab => \inst1|DOUT[9]$latch~combout\,
	datac => \inst2|inst1|alu2|mux|Mux2~1_combout\,
	datad => \inst|Mux5~0_combout\,
	combout => \inst3|OUT16B[9]~29_combout\);

-- Location: FF_X110_Y19_N15
\inst2|inst|reg_gen:2:regs|reg_2|y[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \SW17~input_o\,
	asdata => \inst3|OUT16B[9]~29_combout\,
	sload => VCC,
	ena => \inst2|inst|add_reg1_dcd|Mux3~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst2|inst|reg_gen:2:regs|reg_2|y\(1));

-- Location: LCCOMB_X109_Y19_N8
\inst2|inst|mux_1|mux_1|mux_generate:2:mux_i|Mux2~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|inst|mux_1|mux_1|mux_generate:2:mux_i|Mux2~2_combout\ = (\inst4|inst1|data_out[9]~14_combout\ & ((\inst4|inst1|exception~2_combout\ & (\inst2|inst|reg_gen:2:regs|reg_2|y\(1))) # (!\inst4|inst1|exception~2_combout\ & 
-- ((\inst2|inst|reg_gen:3:regs|reg_2|y\(1)))))) # (!\inst4|inst1|data_out[9]~14_combout\ & (((\inst2|inst|reg_gen:2:regs|reg_2|y\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001011010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|inst1|data_out[9]~14_combout\,
	datab => \inst4|inst1|exception~2_combout\,
	datac => \inst2|inst|reg_gen:2:regs|reg_2|y\(1),
	datad => \inst2|inst|reg_gen:3:regs|reg_2|y\(1),
	combout => \inst2|inst|mux_1|mux_1|mux_generate:2:mux_i|Mux2~2_combout\);

-- Location: LCCOMB_X109_Y22_N26
\inst2|inst|mux_1|mux_1|mux_generate:2:mux_i|Mux2~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|inst|mux_1|mux_1|mux_generate:2:mux_i|Mux2~6_combout\ = (!\inst4|inst1|exception~2_combout\ & (\inst2|inst|reg_gen:1:regs|reg_2|y\(1) & ((\inst4|inst1|data_out[9]~13_combout\) # (\inst4|inst|reg|reg_1|y\(5)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|inst1|data_out[9]~13_combout\,
	datab => \inst4|inst1|exception~2_combout\,
	datac => \inst4|inst|reg|reg_1|y\(5),
	datad => \inst2|inst|reg_gen:1:regs|reg_2|y\(1),
	combout => \inst2|inst|mux_1|mux_1|mux_generate:2:mux_i|Mux2~6_combout\);

-- Location: LCCOMB_X109_Y22_N22
\inst2|inst|mux_1|mux_1|mux_generate:2:mux_i|Mux2~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|inst|mux_1|mux_1|mux_generate:2:mux_i|Mux2~3_combout\ = (\inst2|inst|mux_1|mux_1|mux_generate:3:mux_i|Mux3~5_combout\ & ((\inst2|inst|mux_1|mux_1|mux_generate:3:mux_i|Mux3~6_combout\ & ((\inst2|inst|reg_gen:6:regs|reg_2|y\(1)))) # 
-- (!\inst2|inst|mux_1|mux_1|mux_generate:3:mux_i|Mux3~6_combout\ & (\inst2|inst|mux_1|mux_1|mux_generate:2:mux_i|Mux2~6_combout\)))) # (!\inst2|inst|mux_1|mux_1|mux_generate:3:mux_i|Mux3~5_combout\ & 
-- (((!\inst2|inst|mux_1|mux_1|mux_generate:3:mux_i|Mux3~6_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000010111011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|inst|mux_1|mux_1|mux_generate:2:mux_i|Mux2~6_combout\,
	datab => \inst2|inst|mux_1|mux_1|mux_generate:3:mux_i|Mux3~5_combout\,
	datac => \inst2|inst|reg_gen:6:regs|reg_2|y\(1),
	datad => \inst2|inst|mux_1|mux_1|mux_generate:3:mux_i|Mux3~6_combout\,
	combout => \inst2|inst|mux_1|mux_1|mux_generate:2:mux_i|Mux2~3_combout\);

-- Location: LCCOMB_X109_Y22_N24
\inst2|inst|mux_1|mux_1|mux_generate:2:mux_i|Mux2~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|inst|mux_1|mux_1|mux_generate:2:mux_i|Mux2~4_combout\ = (\inst2|inst|mux_1|mux_1|mux_generate:2:mux_i|Mux2~3_combout\ & (((\inst2|inst|reg_gen:4:regs|reg_2|y\(1)) # (\inst2|inst|mux_1|mux_1|mux_generate:3:mux_i|Mux3~4_combout\)))) # 
-- (!\inst2|inst|mux_1|mux_1|mux_generate:2:mux_i|Mux2~3_combout\ & (\inst2|inst|reg_gen:5:regs|reg_2|y\(1) & ((!\inst2|inst|mux_1|mux_1|mux_generate:3:mux_i|Mux3~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|inst|mux_1|mux_1|mux_generate:2:mux_i|Mux2~3_combout\,
	datab => \inst2|inst|reg_gen:5:regs|reg_2|y\(1),
	datac => \inst2|inst|reg_gen:4:regs|reg_2|y\(1),
	datad => \inst2|inst|mux_1|mux_1|mux_generate:3:mux_i|Mux3~4_combout\,
	combout => \inst2|inst|mux_1|mux_1|mux_generate:2:mux_i|Mux2~4_combout\);

-- Location: LCCOMB_X109_Y22_N30
\inst2|inst|mux_1|mux_1|mux_generate:2:mux_i|Mux2~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|inst|mux_1|mux_1|mux_generate:2:mux_i|Mux2~5_combout\ = (\inst2|inst|mux_1|mux_1|mux_generate:3:mux_i|Mux3~12_combout\ & (\inst2|inst|mux_1|mux_1|mux_generate:2:mux_i|Mux2~2_combout\)) # 
-- (!\inst2|inst|mux_1|mux_1|mux_generate:3:mux_i|Mux3~12_combout\ & ((\inst2|inst|mux_1|mux_1|mux_generate:2:mux_i|Mux2~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|inst|mux_1|mux_1|mux_generate:3:mux_i|Mux3~12_combout\,
	datac => \inst2|inst|mux_1|mux_1|mux_generate:2:mux_i|Mux2~2_combout\,
	datad => \inst2|inst|mux_1|mux_1|mux_generate:2:mux_i|Mux2~4_combout\,
	combout => \inst2|inst|mux_1|mux_1|mux_generate:2:mux_i|Mux2~5_combout\);

-- Location: LCCOMB_X109_Y21_N6
\inst2|inst1|alu2|adder|C[2]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|inst1|alu2|adder|C[2]~1_combout\ = (\inst2|inst|mux_1|mux_1|mux_generate:2:mux_i|Mux2~5_combout\ & ((\inst2|inst1|alu2|adder|C[1]~0_combout\) # (\inst2|inst3|DOUT[2]~3_combout\ $ (\inst2|inst2|OUT16B[9]~21_combout\)))) # 
-- (!\inst2|inst|mux_1|mux_1|mux_generate:2:mux_i|Mux2~5_combout\ & (\inst2|inst1|alu2|adder|C[1]~0_combout\ & (\inst2|inst3|DOUT[2]~3_combout\ $ (\inst2|inst2|OUT16B[9]~21_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011001011101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|inst|mux_1|mux_1|mux_generate:2:mux_i|Mux2~5_combout\,
	datab => \inst2|inst3|DOUT[2]~3_combout\,
	datac => \inst2|inst1|alu2|adder|C[1]~0_combout\,
	datad => \inst2|inst2|OUT16B[9]~21_combout\,
	combout => \inst2|inst1|alu2|adder|C[2]~1_combout\);

-- Location: LCCOMB_X110_Y23_N30
\inst2|inst1|alu2|adder|S[2]\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|inst1|alu2|adder|S\(2) = \inst2|inst3|DOUT[2]~3_combout\ $ (\inst2|inst|mux_1|mux_1|mux_generate:2:mux_i|Mux1~5_combout\ $ (\inst2|inst1|alu2|adder|C[2]~1_combout\ $ (\inst2|inst2|OUT16B[10]~33_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|inst3|DOUT[2]~3_combout\,
	datab => \inst2|inst|mux_1|mux_1|mux_generate:2:mux_i|Mux1~5_combout\,
	datac => \inst2|inst1|alu2|adder|C[2]~1_combout\,
	datad => \inst2|inst2|OUT16B[10]~33_combout\,
	combout => \inst2|inst1|alu2|adder|S\(2));

-- Location: LCCOMB_X110_Y23_N28
\inst2|inst1|alu2|mux|Mux1~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|inst1|alu2|mux|Mux1~0_combout\ = (!\inst2|inst3|DOUT[1]~4_combout\ & ((\inst2|inst2|OUT16B[10]~33_combout\ & ((\inst2|inst|mux_1|mux_1|mux_generate:2:mux_i|Mux1~5_combout\) # (\inst2|inst3|DOUT[0]~2_combout\))) # 
-- (!\inst2|inst2|OUT16B[10]~33_combout\ & (\inst2|inst|mux_1|mux_1|mux_generate:2:mux_i|Mux1~5_combout\ & \inst2|inst3|DOUT[0]~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111000001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|inst2|OUT16B[10]~33_combout\,
	datab => \inst2|inst|mux_1|mux_1|mux_generate:2:mux_i|Mux1~5_combout\,
	datac => \inst2|inst3|DOUT[1]~4_combout\,
	datad => \inst2|inst3|DOUT[0]~2_combout\,
	combout => \inst2|inst1|alu2|mux|Mux1~0_combout\);

-- Location: LCCOMB_X110_Y23_N4
\inst2|inst1|alu2|mux|Mux1~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|inst1|alu2|mux|Mux1~1_combout\ = (\inst2|inst1|alu2|mux|Mux1~0_combout\) # ((\inst2|inst1|alu0|mux|Mux1~4_combout\ & \inst2|inst1|alu2|adder|S\(2)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst2|inst1|alu0|mux|Mux1~4_combout\,
	datac => \inst2|inst1|alu2|adder|S\(2),
	datad => \inst2|inst1|alu2|mux|Mux1~0_combout\,
	combout => \inst2|inst1|alu2|mux|Mux1~1_combout\);

-- Location: LCCOMB_X114_Y14_N0
\inst1|reg_gen:17:regs|y[2]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|reg_gen:17:regs|y[2]~feeder_combout\ = \inst2|inst|mux_2|mux_1|mux_generate:2:mux_i|Mux1~4_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|inst|mux_2|mux_1|mux_generate:2:mux_i|Mux1~4_combout\,
	combout => \inst1|reg_gen:17:regs|y[2]~feeder_combout\);

-- Location: FF_X114_Y14_N1
\inst1|reg_gen:17:regs|y[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \SW17~input_o\,
	d => \inst1|reg_gen:17:regs|y[2]~feeder_combout\,
	ena => \inst1|dec_to_en\(17),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|reg_gen:17:regs|y\(2));

-- Location: LCCOMB_X114_Y15_N8
\inst1|reg_gen:21:regs|y[2]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|reg_gen:21:regs|y[2]~feeder_combout\ = \inst2|inst|mux_2|mux_1|mux_generate:2:mux_i|Mux1~4_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst2|inst|mux_2|mux_1|mux_generate:2:mux_i|Mux1~4_combout\,
	combout => \inst1|reg_gen:21:regs|y[2]~feeder_combout\);

-- Location: FF_X114_Y15_N9
\inst1|reg_gen:21:regs|y[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \SW17~input_o\,
	d => \inst1|reg_gen:21:regs|y[2]~feeder_combout\,
	ena => \inst1|dec_to_en\(21),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|reg_gen:21:regs|y\(2));

-- Location: LCCOMB_X114_Y14_N30
\inst1|reg_gen:19:regs|y[2]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|reg_gen:19:regs|y[2]~feeder_combout\ = \inst2|inst|mux_2|mux_1|mux_generate:2:mux_i|Mux1~4_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|inst|mux_2|mux_1|mux_generate:2:mux_i|Mux1~4_combout\,
	combout => \inst1|reg_gen:19:regs|y[2]~feeder_combout\);

-- Location: FF_X114_Y14_N31
\inst1|reg_gen:19:regs|y[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \SW17~input_o\,
	d => \inst1|reg_gen:19:regs|y[2]~feeder_combout\,
	ena => \inst1|dec_to_en\(19),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|reg_gen:19:regs|y\(2));

-- Location: LCCOMB_X112_Y14_N26
\inst1|reg_gen:23:regs|y[2]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|reg_gen:23:regs|y[2]~feeder_combout\ = \inst2|inst|mux_2|mux_1|mux_generate:2:mux_i|Mux1~4_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst2|inst|mux_2|mux_1|mux_generate:2:mux_i|Mux1~4_combout\,
	combout => \inst1|reg_gen:23:regs|y[2]~feeder_combout\);

-- Location: FF_X112_Y14_N27
\inst1|reg_gen:23:regs|y[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \SW17~input_o\,
	d => \inst1|reg_gen:23:regs|y[2]~feeder_combout\,
	ena => \inst1|dec_to_en\(23),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|reg_gen:23:regs|y\(2));

-- Location: LCCOMB_X111_Y14_N16
\inst1|reg_gen:7:regs|y[2]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|reg_gen:7:regs|y[2]~feeder_combout\ = \inst2|inst|mux_2|mux_1|mux_generate:2:mux_i|Mux1~4_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst2|inst|mux_2|mux_1|mux_generate:2:mux_i|Mux1~4_combout\,
	combout => \inst1|reg_gen:7:regs|y[2]~feeder_combout\);

-- Location: FF_X111_Y14_N17
\inst1|reg_gen:7:regs|y[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \SW17~input_o\,
	d => \inst1|reg_gen:7:regs|y[2]~feeder_combout\,
	ena => \inst1|dec_to_en\(7),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|reg_gen:7:regs|y\(2));

-- Location: LCCOMB_X111_Y14_N2
\inst1|DOUT[10]~136\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|DOUT[10]~136_combout\ = (\inst2|inst1|alu1|mux|Mux3~1_combout\ & ((\inst1|reg_gen:7:regs|y\(2)))) # (!\inst2|inst1|alu1|mux|Mux3~1_combout\ & (\inst1|reg_gen:23:regs|y\(2)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst1|reg_gen:23:regs|y\(2),
	datac => \inst2|inst1|alu1|mux|Mux3~1_combout\,
	datad => \inst1|reg_gen:7:regs|y\(2),
	combout => \inst1|DOUT[10]~136_combout\);

-- Location: LCCOMB_X110_Y16_N24
\inst1|DOUT[10]~137\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|DOUT[10]~137_combout\ = (\inst2|inst1|alu0|mux|Mux2~1_combout\ & (\inst2|inst1|alu0|mux|Mux1~3_combout\)) # (!\inst2|inst1|alu0|mux|Mux2~1_combout\ & ((\inst2|inst1|alu0|mux|Mux1~3_combout\ & ((\inst1|DOUT[10]~136_combout\))) # 
-- (!\inst2|inst1|alu0|mux|Mux1~3_combout\ & (\inst1|reg_gen:19:regs|y\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|inst1|alu0|mux|Mux2~1_combout\,
	datab => \inst2|inst1|alu0|mux|Mux1~3_combout\,
	datac => \inst1|reg_gen:19:regs|y\(2),
	datad => \inst1|DOUT[10]~136_combout\,
	combout => \inst1|DOUT[10]~137_combout\);

-- Location: LCCOMB_X110_Y16_N22
\inst1|DOUT[10]~138\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|DOUT[10]~138_combout\ = (\inst2|inst1|alu0|mux|Mux2~1_combout\ & ((\inst1|DOUT[10]~137_combout\ & ((\inst1|reg_gen:21:regs|y\(2)))) # (!\inst1|DOUT[10]~137_combout\ & (\inst1|reg_gen:17:regs|y\(2))))) # (!\inst2|inst1|alu0|mux|Mux2~1_combout\ & 
-- (((\inst1|DOUT[10]~137_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|inst1|alu0|mux|Mux2~1_combout\,
	datab => \inst1|reg_gen:17:regs|y\(2),
	datac => \inst1|reg_gen:21:regs|y\(2),
	datad => \inst1|DOUT[10]~137_combout\,
	combout => \inst1|DOUT[10]~138_combout\);

-- Location: LCCOMB_X110_Y19_N4
\inst1|DOUT[10]~139\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|DOUT[10]~139_combout\ = (\inst1|DOUT[13]~21_combout\ & (\inst1|DOUT[10]~138_combout\ & (!\inst2|inst1|alu0|mux|Mux0~3_combout\ & !\inst1|DOUT[13]~23_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|DOUT[13]~21_combout\,
	datab => \inst1|DOUT[10]~138_combout\,
	datac => \inst2|inst1|alu0|mux|Mux0~3_combout\,
	datad => \inst1|DOUT[13]~23_combout\,
	combout => \inst1|DOUT[10]~139_combout\);

-- Location: LCCOMB_X114_Y17_N2
\inst1|reg_gen:18:regs|y[2]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|reg_gen:18:regs|y[2]~feeder_combout\ = \inst2|inst|mux_2|mux_1|mux_generate:0:mux_i|Mux1~4_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst2|inst|mux_2|mux_1|mux_generate:0:mux_i|Mux1~4_combout\,
	combout => \inst1|reg_gen:18:regs|y[2]~feeder_combout\);

-- Location: FF_X114_Y17_N3
\inst1|reg_gen:18:regs|y[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \SW17~input_o\,
	d => \inst1|reg_gen:18:regs|y[2]~feeder_combout\,
	ena => \inst1|dec_to_en\(18),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|reg_gen:18:regs|y\(2));

-- Location: LCCOMB_X114_Y15_N26
\inst1|reg_gen:20:regs|y[2]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|reg_gen:20:regs|y[2]~feeder_combout\ = \inst2|inst|mux_2|mux_1|mux_generate:0:mux_i|Mux1~4_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst2|inst|mux_2|mux_1|mux_generate:0:mux_i|Mux1~4_combout\,
	combout => \inst1|reg_gen:20:regs|y[2]~feeder_combout\);

-- Location: FF_X114_Y15_N27
\inst1|reg_gen:20:regs|y[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \SW17~input_o\,
	d => \inst1|reg_gen:20:regs|y[2]~feeder_combout\,
	ena => \inst1|dec_to_en\(20),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|reg_gen:20:regs|y\(2));

-- Location: LCCOMB_X112_Y18_N10
\inst1|reg_gen:8:regs|y[2]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|reg_gen:8:regs|y[2]~feeder_combout\ = \inst2|inst|mux_2|mux_1|mux_generate:0:mux_i|Mux1~4_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst2|inst|mux_2|mux_1|mux_generate:0:mux_i|Mux1~4_combout\,
	combout => \inst1|reg_gen:8:regs|y[2]~feeder_combout\);

-- Location: FF_X112_Y18_N11
\inst1|reg_gen:8:regs|y[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \SW17~input_o\,
	d => \inst1|reg_gen:8:regs|y[2]~feeder_combout\,
	ena => \inst1|dec_to_en[8]~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|reg_gen:8:regs|y\(2));

-- Location: FF_X112_Y18_N21
\inst1|reg_gen:24:regs|y[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \SW17~input_o\,
	asdata => \inst2|inst|mux_2|mux_1|mux_generate:0:mux_i|Mux1~4_combout\,
	sload => VCC,
	ena => \inst1|dec_to_en[24]~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|reg_gen:24:regs|y\(2));

-- Location: LCCOMB_X112_Y18_N20
\inst1|DOUT[10]~140\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|DOUT[10]~140_combout\ = (\inst2|inst1|alu1|mux|Mux3~1_combout\ & (\inst1|reg_gen:8:regs|y\(2))) # (!\inst2|inst1|alu1|mux|Mux3~1_combout\ & ((\inst1|reg_gen:24:regs|y\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|reg_gen:8:regs|y\(2),
	datac => \inst1|reg_gen:24:regs|y\(2),
	datad => \inst2|inst1|alu1|mux|Mux3~1_combout\,
	combout => \inst1|DOUT[10]~140_combout\);

-- Location: LCCOMB_X114_Y18_N8
\inst1|DOUT[10]~141\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|DOUT[10]~141_combout\ = (\inst2|inst1|alu0|mux|Mux2~1_combout\ & (((\inst2|inst1|alu0|mux|Mux1~3_combout\)))) # (!\inst2|inst1|alu0|mux|Mux2~1_combout\ & ((\inst2|inst1|alu0|mux|Mux1~3_combout\ & ((\inst1|DOUT[10]~140_combout\))) # 
-- (!\inst2|inst1|alu0|mux|Mux1~3_combout\ & (\inst1|reg_gen:20:regs|y\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010010100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|inst1|alu0|mux|Mux2~1_combout\,
	datab => \inst1|reg_gen:20:regs|y\(2),
	datac => \inst2|inst1|alu0|mux|Mux1~3_combout\,
	datad => \inst1|DOUT[10]~140_combout\,
	combout => \inst1|DOUT[10]~141_combout\);

-- Location: LCCOMB_X113_Y14_N16
\inst1|reg_gen:22:regs|y[2]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|reg_gen:22:regs|y[2]~feeder_combout\ = \inst2|inst|mux_2|mux_1|mux_generate:0:mux_i|Mux1~4_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst2|inst|mux_2|mux_1|mux_generate:0:mux_i|Mux1~4_combout\,
	combout => \inst1|reg_gen:22:regs|y[2]~feeder_combout\);

-- Location: FF_X113_Y14_N17
\inst1|reg_gen:22:regs|y[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \SW17~input_o\,
	d => \inst1|reg_gen:22:regs|y[2]~feeder_combout\,
	ena => \inst1|dec_to_en\(22),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|reg_gen:22:regs|y\(2));

-- Location: LCCOMB_X114_Y18_N18
\inst1|reg_gen:6:regs|y[2]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|reg_gen:6:regs|y[2]~feeder_combout\ = \inst2|inst|mux_2|mux_1|mux_generate:0:mux_i|Mux1~4_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst2|inst|mux_2|mux_1|mux_generate:0:mux_i|Mux1~4_combout\,
	combout => \inst1|reg_gen:6:regs|y[2]~feeder_combout\);

-- Location: FF_X114_Y18_N19
\inst1|reg_gen:6:regs|y[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \SW17~input_o\,
	d => \inst1|reg_gen:6:regs|y[2]~feeder_combout\,
	ena => \inst1|dec_to_en\(6),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|reg_gen:6:regs|y\(2));

-- Location: LCCOMB_X114_Y18_N20
\inst1|DOUT[10]~142\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|DOUT[10]~142_combout\ = (\inst2|inst1|alu1|mux|Mux3~1_combout\ & ((\inst1|reg_gen:6:regs|y\(2)))) # (!\inst2|inst1|alu1|mux|Mux3~1_combout\ & (\inst1|reg_gen:22:regs|y\(2)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|reg_gen:22:regs|y\(2),
	datab => \inst1|reg_gen:6:regs|y\(2),
	datad => \inst2|inst1|alu1|mux|Mux3~1_combout\,
	combout => \inst1|DOUT[10]~142_combout\);

-- Location: LCCOMB_X114_Y18_N22
\inst1|DOUT[10]~143\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|DOUT[10]~143_combout\ = (\inst2|inst1|alu0|mux|Mux2~1_combout\ & ((\inst1|DOUT[10]~141_combout\ & ((\inst1|DOUT[10]~142_combout\))) # (!\inst1|DOUT[10]~141_combout\ & (\inst1|reg_gen:18:regs|y\(2))))) # (!\inst2|inst1|alu0|mux|Mux2~1_combout\ & 
-- (((\inst1|DOUT[10]~141_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100001011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|inst1|alu0|mux|Mux2~1_combout\,
	datab => \inst1|reg_gen:18:regs|y\(2),
	datac => \inst1|DOUT[10]~141_combout\,
	datad => \inst1|DOUT[10]~142_combout\,
	combout => \inst1|DOUT[10]~143_combout\);

-- Location: LCCOMB_X112_Y15_N10
\inst1|reg_gen:13:regs|y[2]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|reg_gen:13:regs|y[2]~feeder_combout\ = \inst2|inst|mux_2|mux_1|mux_generate:2:mux_i|Mux1~4_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst2|inst|mux_2|mux_1|mux_generate:2:mux_i|Mux1~4_combout\,
	combout => \inst1|reg_gen:13:regs|y[2]~feeder_combout\);

-- Location: FF_X112_Y15_N11
\inst1|reg_gen:13:regs|y[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \SW17~input_o\,
	d => \inst1|reg_gen:13:regs|y[2]~feeder_combout\,
	ena => \inst1|dec_to_en\(13),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|reg_gen:13:regs|y\(2));

-- Location: LCCOMB_X114_Y19_N18
\inst1|reg_gen:9:regs|y[2]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|reg_gen:9:regs|y[2]~feeder_combout\ = \inst2|inst|mux_2|mux_1|mux_generate:2:mux_i|Mux1~4_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst2|inst|mux_2|mux_1|mux_generate:2:mux_i|Mux1~4_combout\,
	combout => \inst1|reg_gen:9:regs|y[2]~feeder_combout\);

-- Location: FF_X114_Y19_N19
\inst1|reg_gen:9:regs|y[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \SW17~input_o\,
	d => \inst1|reg_gen:9:regs|y[2]~feeder_combout\,
	ena => \inst1|dec_to_en\(9),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|reg_gen:9:regs|y\(2));

-- Location: LCCOMB_X113_Y17_N16
\inst1|reg_gen:29:regs|y[2]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|reg_gen:29:regs|y[2]~feeder_combout\ = \inst2|inst|mux_2|mux_1|mux_generate:2:mux_i|Mux1~4_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst2|inst|mux_2|mux_1|mux_generate:2:mux_i|Mux1~4_combout\,
	combout => \inst1|reg_gen:29:regs|y[2]~feeder_combout\);

-- Location: FF_X113_Y17_N17
\inst1|reg_gen:29:regs|y[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \SW17~input_o\,
	d => \inst1|reg_gen:29:regs|y[2]~feeder_combout\,
	ena => \inst1|dec_to_en\(29),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|reg_gen:29:regs|y\(2));

-- Location: LCCOMB_X114_Y16_N6
\inst1|reg_gen:25:regs|y[2]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|reg_gen:25:regs|y[2]~feeder_combout\ = \inst2|inst|mux_2|mux_1|mux_generate:2:mux_i|Mux1~4_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst2|inst|mux_2|mux_1|mux_generate:2:mux_i|Mux1~4_combout\,
	combout => \inst1|reg_gen:25:regs|y[2]~feeder_combout\);

-- Location: FF_X114_Y16_N7
\inst1|reg_gen:25:regs|y[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \SW17~input_o\,
	d => \inst1|reg_gen:25:regs|y[2]~feeder_combout\,
	ena => \inst1|dec_to_en\(25),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|reg_gen:25:regs|y\(2));

-- Location: LCCOMB_X112_Y19_N2
\inst1|DOUT[10]~150\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|DOUT[10]~150_combout\ = (\inst2|inst1|alu1|mux|Mux3~1_combout\ & (((\inst2|inst1|alu0|mux|Mux1~3_combout\)))) # (!\inst2|inst1|alu1|mux|Mux3~1_combout\ & ((\inst2|inst1|alu0|mux|Mux1~3_combout\ & (\inst1|reg_gen:29:regs|y\(2))) # 
-- (!\inst2|inst1|alu0|mux|Mux1~3_combout\ & ((\inst1|reg_gen:25:regs|y\(2))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|inst1|alu1|mux|Mux3~1_combout\,
	datab => \inst1|reg_gen:29:regs|y\(2),
	datac => \inst1|reg_gen:25:regs|y\(2),
	datad => \inst2|inst1|alu0|mux|Mux1~3_combout\,
	combout => \inst1|DOUT[10]~150_combout\);

-- Location: LCCOMB_X112_Y19_N0
\inst1|DOUT[10]~151\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|DOUT[10]~151_combout\ = (\inst2|inst1|alu1|mux|Mux3~1_combout\ & ((\inst1|DOUT[10]~150_combout\ & (\inst1|reg_gen:13:regs|y\(2))) # (!\inst1|DOUT[10]~150_combout\ & ((\inst1|reg_gen:9:regs|y\(2)))))) # (!\inst2|inst1|alu1|mux|Mux3~1_combout\ & 
-- (((\inst1|DOUT[10]~150_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|inst1|alu1|mux|Mux3~1_combout\,
	datab => \inst1|reg_gen:13:regs|y\(2),
	datac => \inst1|reg_gen:9:regs|y\(2),
	datad => \inst1|DOUT[10]~150_combout\,
	combout => \inst1|DOUT[10]~151_combout\);

-- Location: FF_X111_Y17_N25
\inst1|reg_gen:15:regs|y[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \SW17~input_o\,
	asdata => \inst2|inst|mux_2|mux_1|mux_generate:2:mux_i|Mux1~4_combout\,
	sload => VCC,
	ena => \inst1|dec_to_en\(15),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|reg_gen:15:regs|y\(2));

-- Location: LCCOMB_X112_Y17_N0
\inst1|reg_gen:11:regs|y[2]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|reg_gen:11:regs|y[2]~feeder_combout\ = \inst2|inst|mux_2|mux_1|mux_generate:2:mux_i|Mux1~4_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst2|inst|mux_2|mux_1|mux_generate:2:mux_i|Mux1~4_combout\,
	combout => \inst1|reg_gen:11:regs|y[2]~feeder_combout\);

-- Location: FF_X112_Y17_N1
\inst1|reg_gen:11:regs|y[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \SW17~input_o\,
	d => \inst1|reg_gen:11:regs|y[2]~feeder_combout\,
	ena => \inst1|dec_to_en\(11),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|reg_gen:11:regs|y\(2));

-- Location: FF_X112_Y17_N7
\inst1|reg_gen:27:regs|y[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \SW17~input_o\,
	asdata => \inst2|inst|mux_2|mux_1|mux_generate:2:mux_i|Mux1~4_combout\,
	sload => VCC,
	ena => \inst1|dec_to_en\(27),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|reg_gen:27:regs|y\(2));

-- Location: LCCOMB_X112_Y17_N6
\inst1|DOUT[10]~148\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|DOUT[10]~148_combout\ = (\inst2|inst1|alu1|mux|Mux3~1_combout\ & (\inst1|reg_gen:11:regs|y\(2))) # (!\inst2|inst1|alu1|mux|Mux3~1_combout\ & ((\inst1|reg_gen:27:regs|y\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst1|reg_gen:11:regs|y\(2),
	datac => \inst1|reg_gen:27:regs|y\(2),
	datad => \inst2|inst1|alu1|mux|Mux3~1_combout\,
	combout => \inst1|DOUT[10]~148_combout\);

-- Location: LCCOMB_X111_Y17_N24
\inst1|DOUT[10]~149\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|DOUT[10]~149_combout\ = (\inst1|DOUT[13]~37_combout\ & ((\inst1|DOUT[13]~40_combout\) # ((\inst1|reg_gen:15:regs|y\(2))))) # (!\inst1|DOUT[13]~37_combout\ & (!\inst1|DOUT[13]~40_combout\ & ((\inst1|DOUT[10]~148_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100110101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|DOUT[13]~37_combout\,
	datab => \inst1|DOUT[13]~40_combout\,
	datac => \inst1|reg_gen:15:regs|y\(2),
	datad => \inst1|DOUT[10]~148_combout\,
	combout => \inst1|DOUT[10]~149_combout\);

-- Location: FF_X107_Y21_N21
\inst1|reg_gen:14:regs|y[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \SW17~input_o\,
	d => \inst2|inst|mux_2|mux_1|mux_generate:0:mux_i|Mux1~4_combout\,
	ena => \inst1|dec_to_en\(14),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|reg_gen:14:regs|y\(2));

-- Location: LCCOMB_X111_Y15_N8
\inst1|reg_gen:10:regs|y[2]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|reg_gen:10:regs|y[2]~feeder_combout\ = \inst2|inst|mux_2|mux_1|mux_generate:0:mux_i|Mux1~4_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst2|inst|mux_2|mux_1|mux_generate:0:mux_i|Mux1~4_combout\,
	combout => \inst1|reg_gen:10:regs|y[2]~feeder_combout\);

-- Location: FF_X111_Y15_N9
\inst1|reg_gen:10:regs|y[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \SW17~input_o\,
	d => \inst1|reg_gen:10:regs|y[2]~feeder_combout\,
	ena => \inst1|dec_to_en\(10),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|reg_gen:10:regs|y\(2));

-- Location: FF_X112_Y21_N25
\inst1|reg_gen:26:regs|y[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \SW17~input_o\,
	asdata => \inst2|inst|mux_2|mux_1|mux_generate:0:mux_i|Mux1~4_combout\,
	sload => VCC,
	ena => \inst1|dec_to_en\(26),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|reg_gen:26:regs|y\(2));

-- Location: LCCOMB_X111_Y19_N6
\inst1|DOUT[10]~146\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|DOUT[10]~146_combout\ = (\inst2|inst1|alu0|mux|Mux1~3_combout\ & (((\inst1|reg_gen:30:regs|y\(2)) # (\inst2|inst1|alu1|mux|Mux3~1_combout\)))) # (!\inst2|inst1|alu0|mux|Mux1~3_combout\ & (\inst1|reg_gen:26:regs|y\(2) & 
-- ((!\inst2|inst1|alu1|mux|Mux3~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|reg_gen:26:regs|y\(2),
	datab => \inst1|reg_gen:30:regs|y\(2),
	datac => \inst2|inst1|alu0|mux|Mux1~3_combout\,
	datad => \inst2|inst1|alu1|mux|Mux3~1_combout\,
	combout => \inst1|DOUT[10]~146_combout\);

-- Location: LCCOMB_X111_Y19_N20
\inst1|DOUT[10]~147\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|DOUT[10]~147_combout\ = (\inst2|inst1|alu1|mux|Mux3~1_combout\ & ((\inst1|DOUT[10]~146_combout\ & (\inst1|reg_gen:14:regs|y\(2))) # (!\inst1|DOUT[10]~146_combout\ & ((\inst1|reg_gen:10:regs|y\(2)))))) # (!\inst2|inst1|alu1|mux|Mux3~1_combout\ & 
-- (((\inst1|DOUT[10]~146_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|reg_gen:14:regs|y\(2),
	datab => \inst2|inst1|alu1|mux|Mux3~1_combout\,
	datac => \inst1|reg_gen:10:regs|y\(2),
	datad => \inst1|DOUT[10]~146_combout\,
	combout => \inst1|DOUT[10]~147_combout\);

-- Location: LCCOMB_X111_Y19_N14
\inst1|DOUT[10]~152\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|DOUT[10]~152_combout\ = (\inst1|DOUT[13]~40_combout\ & ((\inst1|DOUT[10]~149_combout\ & (\inst1|DOUT[10]~151_combout\)) # (!\inst1|DOUT[10]~149_combout\ & ((\inst1|DOUT[10]~147_combout\))))) # (!\inst1|DOUT[13]~40_combout\ & 
-- (((\inst1|DOUT[10]~149_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011110010110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|DOUT[10]~151_combout\,
	datab => \inst1|DOUT[13]~40_combout\,
	datac => \inst1|DOUT[10]~149_combout\,
	datad => \inst1|DOUT[10]~147_combout\,
	combout => \inst1|DOUT[10]~152_combout\);

-- Location: FF_X111_Y18_N1
\inst1|reg_gen:16:regs|y[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \SW17~input_o\,
	asdata => \inst2|inst|mux_2|mux_1|mux_generate:0:mux_i|Mux1~4_combout\,
	sload => VCC,
	ena => \inst1|dec_to_en[16]~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|reg_gen:16:regs|y\(2));

-- Location: LCCOMB_X112_Y15_N4
\inst1|reg_gen:12:regs|y[2]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|reg_gen:12:regs|y[2]~feeder_combout\ = \inst2|inst|mux_2|mux_1|mux_generate:0:mux_i|Mux1~4_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst2|inst|mux_2|mux_1|mux_generate:0:mux_i|Mux1~4_combout\,
	combout => \inst1|reg_gen:12:regs|y[2]~feeder_combout\);

-- Location: FF_X112_Y15_N5
\inst1|reg_gen:12:regs|y[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \SW17~input_o\,
	d => \inst1|reg_gen:12:regs|y[2]~feeder_combout\,
	ena => \inst1|dec_to_en\(12),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|reg_gen:12:regs|y\(2));

-- Location: LCCOMB_X114_Y17_N12
\inst1|reg_gen:28:regs|y[2]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|reg_gen:28:regs|y[2]~feeder_combout\ = \inst2|inst|mux_2|mux_1|mux_generate:0:mux_i|Mux1~4_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst2|inst|mux_2|mux_1|mux_generate:0:mux_i|Mux1~4_combout\,
	combout => \inst1|reg_gen:28:regs|y[2]~feeder_combout\);

-- Location: FF_X114_Y17_N13
\inst1|reg_gen:28:regs|y[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \SW17~input_o\,
	d => \inst1|reg_gen:28:regs|y[2]~feeder_combout\,
	ena => \inst1|dec_to_en\(28),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|reg_gen:28:regs|y\(2));

-- Location: LCCOMB_X113_Y17_N26
\inst1|DOUT[10]~144\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|DOUT[10]~144_combout\ = (\inst2|inst1|alu1|mux|Mux3~1_combout\ & (\inst1|reg_gen:12:regs|y\(2))) # (!\inst2|inst1|alu1|mux|Mux3~1_combout\ & ((\inst1|reg_gen:28:regs|y\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|reg_gen:12:regs|y\(2),
	datac => \inst1|reg_gen:28:regs|y\(2),
	datad => \inst2|inst1|alu1|mux|Mux3~1_combout\,
	combout => \inst1|DOUT[10]~144_combout\);

-- Location: LCCOMB_X110_Y19_N10
\inst1|DOUT[10]~145\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|DOUT[10]~145_combout\ = (\inst1|DOUT[13]~29_combout\ & ((\inst1|reg_gen:16:regs|y\(2)) # ((\inst1|DOUT[13]~34_combout\)))) # (!\inst1|DOUT[13]~29_combout\ & (((!\inst1|DOUT[13]~34_combout\ & \inst1|DOUT[10]~144_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100101111001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|reg_gen:16:regs|y\(2),
	datab => \inst1|DOUT[13]~29_combout\,
	datac => \inst1|DOUT[13]~34_combout\,
	datad => \inst1|DOUT[10]~144_combout\,
	combout => \inst1|DOUT[10]~145_combout\);

-- Location: LCCOMB_X110_Y19_N22
\inst1|DOUT[10]~153\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|DOUT[10]~153_combout\ = (\inst1|DOUT[13]~34_combout\ & ((\inst1|DOUT[10]~145_combout\ & ((\inst1|DOUT[10]~152_combout\))) # (!\inst1|DOUT[10]~145_combout\ & (\inst1|DOUT[10]~143_combout\)))) # (!\inst1|DOUT[13]~34_combout\ & 
-- (((\inst1|DOUT[10]~145_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|DOUT[13]~34_combout\,
	datab => \inst1|DOUT[10]~143_combout\,
	datac => \inst1|DOUT[10]~152_combout\,
	datad => \inst1|DOUT[10]~145_combout\,
	combout => \inst1|DOUT[10]~153_combout\);

-- Location: FF_X109_Y17_N13
\inst1|reg_gen:31:regs|y[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \SW17~input_o\,
	asdata => \inst2|inst|mux_2|mux_1|mux_generate:2:mux_i|Mux1~4_combout\,
	sload => VCC,
	ena => \inst1|dec_to_en[31]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|reg_gen:31:regs|y\(2));

-- Location: LCCOMB_X109_Y17_N12
\inst1|DOUT[10]~135\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|DOUT[10]~135_combout\ = (\inst1|reg_gen:31:regs|y\(2) & \inst1|DOUT[13]~23_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst1|reg_gen:31:regs|y\(2),
	datad => \inst1|DOUT[13]~23_combout\,
	combout => \inst1|DOUT[10]~135_combout\);

-- Location: LCCOMB_X110_Y19_N6
\inst1|DOUT[10]~154\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|DOUT[10]~154_combout\ = (\inst1|DOUT[10]~139_combout\) # ((\inst1|DOUT[10]~135_combout\) # ((\inst1|DOUT[15]~47_combout\ & \inst1|DOUT[10]~153_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|DOUT[15]~47_combout\,
	datab => \inst1|DOUT[10]~139_combout\,
	datac => \inst1|DOUT[10]~153_combout\,
	datad => \inst1|DOUT[10]~135_combout\,
	combout => \inst1|DOUT[10]~154_combout\);

-- Location: LCCOMB_X110_Y19_N12
\inst1|DOUT[10]$latch~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|DOUT[10]$latch~0_combout\ = (GLOBAL(\inst1|DOUT[15]~52clkctrl_outclk\) & (\inst1|DOUT[10]~154_combout\)) # (!GLOBAL(\inst1|DOUT[15]~52clkctrl_outclk\) & ((\inst1|DOUT[10]$latch~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|DOUT[10]~154_combout\,
	datab => \inst1|DOUT[10]$latch~combout\,
	datad => \inst1|DOUT[15]~52clkctrl_outclk\,
	combout => \inst1|DOUT[10]$latch~0_combout\);

-- Location: LCCOMB_X110_Y19_N8
\inst1|DOUT[10]$latch\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|DOUT[10]$latch~combout\ = (!\inst1|comb~1_combout\ & ((\inst1|DOUT[10]$latch~0_combout\) # (\inst1|dcd|dcd_0|D[1]~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst1|DOUT[10]$latch~0_combout\,
	datac => \inst1|comb~1_combout\,
	datad => \inst1|dcd|dcd_0|D[1]~1_combout\,
	combout => \inst1|DOUT[10]$latch~combout\);

-- Location: LCCOMB_X110_Y19_N2
\inst3|OUT16B[10]~28\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|OUT16B[10]~28_combout\ = (\inst|Mux5~0_combout\ & (((\inst1|DOUT[10]$latch~combout\)) # (!\inst1|DOUT[15]_2612~combout\))) # (!\inst|Mux5~0_combout\ & (((\inst2|inst1|alu2|mux|Mux1~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|DOUT[15]_2612~combout\,
	datab => \inst2|inst1|alu2|mux|Mux1~1_combout\,
	datac => \inst1|DOUT[10]$latch~combout\,
	datad => \inst|Mux5~0_combout\,
	combout => \inst3|OUT16B[10]~28_combout\);

-- Location: FF_X110_Y19_N13
\inst2|inst|reg_gen:2:regs|reg_2|y[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \SW17~input_o\,
	asdata => \inst3|OUT16B[10]~28_combout\,
	sload => VCC,
	ena => \inst2|inst|add_reg1_dcd|Mux3~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst2|inst|reg_gen:2:regs|reg_2|y\(2));

-- Location: LCCOMB_X110_Y19_N18
\inst2|inst|mux_2|mux_1|mux_generate:2:mux_i|Mux1~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|inst|mux_2|mux_1|mux_generate:2:mux_i|Mux1~0_combout\ = (\inst4|inst1|exception~2_combout\ & (\inst2|inst|reg_gen:2:regs|reg_2|y\(2))) # (!\inst4|inst1|exception~2_combout\ & ((\inst4|inst1|data_out[6]~17_combout\ & 
-- ((\inst2|inst|reg_gen:3:regs|reg_2|y\(2)))) # (!\inst4|inst1|data_out[6]~17_combout\ & (\inst2|inst|reg_gen:2:regs|reg_2|y\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|inst|reg_gen:2:regs|reg_2|y\(2),
	datab => \inst4|inst1|exception~2_combout\,
	datac => \inst2|inst|reg_gen:3:regs|reg_2|y\(2),
	datad => \inst4|inst1|data_out[6]~17_combout\,
	combout => \inst2|inst|mux_2|mux_1|mux_generate:2:mux_i|Mux1~0_combout\);

-- Location: LCCOMB_X110_Y22_N12
\inst2|inst|mux_2|mux_1|mux_generate:2:mux_i|Mux1~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|inst|mux_2|mux_1|mux_generate:2:mux_i|Mux1~1_combout\ = (\inst4|inst1|data_out[6]~17_combout\ & (!\inst4|inst1|exception~2_combout\ & \inst2|inst|reg_gen:1:regs|reg_2|y\(2)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst4|inst1|data_out[6]~17_combout\,
	datac => \inst4|inst1|exception~2_combout\,
	datad => \inst2|inst|reg_gen:1:regs|reg_2|y\(2),
	combout => \inst2|inst|mux_2|mux_1|mux_generate:2:mux_i|Mux1~1_combout\);

-- Location: LCCOMB_X110_Y22_N10
\inst2|inst|mux_2|mux_1|mux_generate:2:mux_i|Mux1~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|inst|mux_2|mux_1|mux_generate:2:mux_i|Mux1~2_combout\ = (\inst2|inst|mux_2|mux_1|mux_generate:0:mux_i|Mux2~3_combout\ & ((\inst2|inst|mux_2|mux_1|mux_generate:0:mux_i|Mux2~4_combout\ & (\inst2|inst|reg_gen:6:regs|reg_2|y\(2))) # 
-- (!\inst2|inst|mux_2|mux_1|mux_generate:0:mux_i|Mux2~4_combout\ & ((\inst2|inst|mux_2|mux_1|mux_generate:2:mux_i|Mux1~1_combout\))))) # (!\inst2|inst|mux_2|mux_1|mux_generate:0:mux_i|Mux2~3_combout\ & 
-- (!\inst2|inst|mux_2|mux_1|mux_generate:0:mux_i|Mux2~4_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011001110010001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|inst|mux_2|mux_1|mux_generate:0:mux_i|Mux2~3_combout\,
	datab => \inst2|inst|mux_2|mux_1|mux_generate:0:mux_i|Mux2~4_combout\,
	datac => \inst2|inst|reg_gen:6:regs|reg_2|y\(2),
	datad => \inst2|inst|mux_2|mux_1|mux_generate:2:mux_i|Mux1~1_combout\,
	combout => \inst2|inst|mux_2|mux_1|mux_generate:2:mux_i|Mux1~2_combout\);

-- Location: LCCOMB_X110_Y22_N28
\inst2|inst|mux_2|mux_1|mux_generate:2:mux_i|Mux1~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|inst|mux_2|mux_1|mux_generate:2:mux_i|Mux1~3_combout\ = (\inst2|inst|mux_2|mux_1|mux_generate:2:mux_i|Mux1~2_combout\ & ((\inst2|inst|reg_gen:4:regs|reg_2|y\(2)) # ((\inst2|inst|mux_2|mux_1|mux_generate:0:mux_i|Mux2~1_combout\)))) # 
-- (!\inst2|inst|mux_2|mux_1|mux_generate:2:mux_i|Mux1~2_combout\ & (((\inst2|inst|reg_gen:5:regs|reg_2|y\(2) & !\inst2|inst|mux_2|mux_1|mux_generate:0:mux_i|Mux2~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|inst|mux_2|mux_1|mux_generate:2:mux_i|Mux1~2_combout\,
	datab => \inst2|inst|reg_gen:4:regs|reg_2|y\(2),
	datac => \inst2|inst|reg_gen:5:regs|reg_2|y\(2),
	datad => \inst2|inst|mux_2|mux_1|mux_generate:0:mux_i|Mux2~1_combout\,
	combout => \inst2|inst|mux_2|mux_1|mux_generate:2:mux_i|Mux1~3_combout\);

-- Location: LCCOMB_X110_Y22_N18
\inst2|inst|mux_2|mux_1|mux_generate:2:mux_i|Mux1~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|inst|mux_2|mux_1|mux_generate:2:mux_i|Mux1~4_combout\ = (\inst2|inst|mux_2|mux_1|mux_generate:0:mux_i|Mux2~7_combout\ & (\inst2|inst|mux_2|mux_1|mux_generate:2:mux_i|Mux1~0_combout\)) # (!\inst2|inst|mux_2|mux_1|mux_generate:0:mux_i|Mux2~7_combout\ 
-- & ((\inst2|inst|mux_2|mux_1|mux_generate:2:mux_i|Mux1~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst2|inst|mux_2|mux_1|mux_generate:2:mux_i|Mux1~0_combout\,
	datac => \inst2|inst|mux_2|mux_1|mux_generate:0:mux_i|Mux2~7_combout\,
	datad => \inst2|inst|mux_2|mux_1|mux_generate:2:mux_i|Mux1~3_combout\,
	combout => \inst2|inst|mux_2|mux_1|mux_generate:2:mux_i|Mux1~4_combout\);

-- Location: LCCOMB_X110_Y22_N6
\inst2|inst2|OUT16B[10]~33\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|inst2|OUT16B[10]~33_combout\ = (\inst|Mux7~0_combout\ & (((!\inst4|inst1|exception~2_combout\ & !\inst4|inst1|data_out[5]~5_combout\)))) # (!\inst|Mux7~0_combout\ & (\inst2|inst|mux_2|mux_1|mux_generate:2:mux_i|Mux1~4_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100010001001110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Mux7~0_combout\,
	datab => \inst2|inst|mux_2|mux_1|mux_generate:2:mux_i|Mux1~4_combout\,
	datac => \inst4|inst1|exception~2_combout\,
	datad => \inst4|inst1|data_out[5]~5_combout\,
	combout => \inst2|inst2|OUT16B[10]~33_combout\);

-- Location: LCCOMB_X109_Y21_N24
\inst2|inst1|alu2|adder|C[3]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|inst1|alu2|adder|C[3]~2_combout\ = (\inst2|inst|mux_1|mux_1|mux_generate:2:mux_i|Mux1~5_combout\ & ((\inst2|inst1|alu2|adder|C[2]~1_combout\) # (\inst2|inst2|OUT16B[10]~33_combout\ $ (\inst2|inst3|DOUT[2]~3_combout\)))) # 
-- (!\inst2|inst|mux_1|mux_1|mux_generate:2:mux_i|Mux1~5_combout\ & (\inst2|inst1|alu2|adder|C[2]~1_combout\ & (\inst2|inst2|OUT16B[10]~33_combout\ $ (\inst2|inst3|DOUT[2]~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101111001001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|inst2|OUT16B[10]~33_combout\,
	datab => \inst2|inst|mux_1|mux_1|mux_generate:2:mux_i|Mux1~5_combout\,
	datac => \inst2|inst3|DOUT[2]~3_combout\,
	datad => \inst2|inst1|alu2|adder|C[2]~1_combout\,
	combout => \inst2|inst1|alu2|adder|C[3]~2_combout\);

-- Location: LCCOMB_X109_Y23_N6
\inst2|inst1|alu2|adder|S[3]\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|inst1|alu2|adder|S\(3) = \inst2|inst2|OUT16B[11]~32_combout\ $ (\inst2|inst|mux_1|mux_1|mux_generate:2:mux_i|Mux0~5_combout\ $ (\inst2|inst3|DOUT[2]~3_combout\ $ (\inst2|inst1|alu2|adder|C[3]~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|inst2|OUT16B[11]~32_combout\,
	datab => \inst2|inst|mux_1|mux_1|mux_generate:2:mux_i|Mux0~5_combout\,
	datac => \inst2|inst3|DOUT[2]~3_combout\,
	datad => \inst2|inst1|alu2|adder|C[3]~2_combout\,
	combout => \inst2|inst1|alu2|adder|S\(3));

-- Location: LCCOMB_X109_Y23_N10
\inst2|inst1|alu2|mux|Mux0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|inst1|alu2|mux|Mux0~0_combout\ = (!\inst2|inst3|DOUT[1]~4_combout\ & ((\inst2|inst|mux_1|mux_1|mux_generate:2:mux_i|Mux0~5_combout\ & ((\inst2|inst3|DOUT[0]~2_combout\) # (\inst2|inst2|OUT16B[11]~32_combout\))) # 
-- (!\inst2|inst|mux_1|mux_1|mux_generate:2:mux_i|Mux0~5_combout\ & (\inst2|inst3|DOUT[0]~2_combout\ & \inst2|inst2|OUT16B[11]~32_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|inst3|DOUT[1]~4_combout\,
	datab => \inst2|inst|mux_1|mux_1|mux_generate:2:mux_i|Mux0~5_combout\,
	datac => \inst2|inst3|DOUT[0]~2_combout\,
	datad => \inst2|inst2|OUT16B[11]~32_combout\,
	combout => \inst2|inst1|alu2|mux|Mux0~0_combout\);

-- Location: LCCOMB_X109_Y23_N26
\inst2|inst1|alu2|mux|Mux0~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|inst1|alu2|mux|Mux0~1_combout\ = (\inst2|inst1|alu2|mux|Mux0~0_combout\) # ((\inst2|inst1|alu2|adder|S\(3) & \inst2|inst1|alu0|mux|Mux1~4_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|inst1|alu2|adder|S\(3),
	datac => \inst2|inst1|alu0|mux|Mux1~4_combout\,
	datad => \inst2|inst1|alu2|mux|Mux0~0_combout\,
	combout => \inst2|inst1|alu2|mux|Mux0~1_combout\);

-- Location: FF_X114_Y19_N21
\inst1|reg_gen:9:regs|y[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \SW17~input_o\,
	asdata => \inst2|inst|mux_2|mux_1|mux_generate:2:mux_i|Mux0~4_combout\,
	sload => VCC,
	ena => \inst1|dec_to_en\(9),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|reg_gen:9:regs|y\(3));

-- Location: LCCOMB_X112_Y15_N26
\inst1|reg_gen:13:regs|y[3]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|reg_gen:13:regs|y[3]~feeder_combout\ = \inst2|inst|mux_2|mux_1|mux_generate:2:mux_i|Mux0~4_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst2|inst|mux_2|mux_1|mux_generate:2:mux_i|Mux0~4_combout\,
	combout => \inst1|reg_gen:13:regs|y[3]~feeder_combout\);

-- Location: FF_X112_Y15_N27
\inst1|reg_gen:13:regs|y[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \SW17~input_o\,
	d => \inst1|reg_gen:13:regs|y[3]~feeder_combout\,
	ena => \inst1|dec_to_en\(13),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|reg_gen:13:regs|y\(3));

-- Location: LCCOMB_X113_Y17_N28
\inst1|reg_gen:29:regs|y[3]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|reg_gen:29:regs|y[3]~feeder_combout\ = \inst2|inst|mux_2|mux_1|mux_generate:2:mux_i|Mux0~4_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst2|inst|mux_2|mux_1|mux_generate:2:mux_i|Mux0~4_combout\,
	combout => \inst1|reg_gen:29:regs|y[3]~feeder_combout\);

-- Location: FF_X113_Y17_N29
\inst1|reg_gen:29:regs|y[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \SW17~input_o\,
	d => \inst1|reg_gen:29:regs|y[3]~feeder_combout\,
	ena => \inst1|dec_to_en\(29),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|reg_gen:29:regs|y\(3));

-- Location: LCCOMB_X114_Y16_N4
\inst1|reg_gen:25:regs|y[3]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|reg_gen:25:regs|y[3]~feeder_combout\ = \inst2|inst|mux_2|mux_1|mux_generate:2:mux_i|Mux0~4_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst2|inst|mux_2|mux_1|mux_generate:2:mux_i|Mux0~4_combout\,
	combout => \inst1|reg_gen:25:regs|y[3]~feeder_combout\);

-- Location: FF_X114_Y16_N5
\inst1|reg_gen:25:regs|y[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \SW17~input_o\,
	d => \inst1|reg_gen:25:regs|y[3]~feeder_combout\,
	ena => \inst1|dec_to_en\(25),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|reg_gen:25:regs|y\(3));

-- Location: LCCOMB_X113_Y20_N10
\inst1|DOUT[11]~130\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|DOUT[11]~130_combout\ = (\inst2|inst1|alu0|mux|Mux1~3_combout\ & ((\inst2|inst1|alu1|mux|Mux3~1_combout\) # ((\inst1|reg_gen:29:regs|y\(3))))) # (!\inst2|inst1|alu0|mux|Mux1~3_combout\ & (!\inst2|inst1|alu1|mux|Mux3~1_combout\ & 
-- ((\inst1|reg_gen:25:regs|y\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100110101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|inst1|alu0|mux|Mux1~3_combout\,
	datab => \inst2|inst1|alu1|mux|Mux3~1_combout\,
	datac => \inst1|reg_gen:29:regs|y\(3),
	datad => \inst1|reg_gen:25:regs|y\(3),
	combout => \inst1|DOUT[11]~130_combout\);

-- Location: LCCOMB_X113_Y20_N20
\inst1|DOUT[11]~131\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|DOUT[11]~131_combout\ = (\inst2|inst1|alu1|mux|Mux3~1_combout\ & ((\inst1|DOUT[11]~130_combout\ & ((\inst1|reg_gen:13:regs|y\(3)))) # (!\inst1|DOUT[11]~130_combout\ & (\inst1|reg_gen:9:regs|y\(3))))) # (!\inst2|inst1|alu1|mux|Mux3~1_combout\ & 
-- (((\inst1|DOUT[11]~130_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|reg_gen:9:regs|y\(3),
	datab => \inst1|reg_gen:13:regs|y\(3),
	datac => \inst2|inst1|alu1|mux|Mux3~1_combout\,
	datad => \inst1|DOUT[11]~130_combout\,
	combout => \inst1|DOUT[11]~131_combout\);

-- Location: LCCOMB_X112_Y17_N24
\inst1|reg_gen:11:regs|y[3]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|reg_gen:11:regs|y[3]~feeder_combout\ = \inst2|inst|mux_2|mux_1|mux_generate:2:mux_i|Mux0~4_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst2|inst|mux_2|mux_1|mux_generate:2:mux_i|Mux0~4_combout\,
	combout => \inst1|reg_gen:11:regs|y[3]~feeder_combout\);

-- Location: FF_X112_Y17_N25
\inst1|reg_gen:11:regs|y[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \SW17~input_o\,
	d => \inst1|reg_gen:11:regs|y[3]~feeder_combout\,
	ena => \inst1|dec_to_en\(11),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|reg_gen:11:regs|y\(3));

-- Location: LCCOMB_X112_Y17_N18
\inst1|reg_gen:27:regs|y[3]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|reg_gen:27:regs|y[3]~feeder_combout\ = \inst2|inst|mux_2|mux_1|mux_generate:2:mux_i|Mux0~4_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst2|inst|mux_2|mux_1|mux_generate:2:mux_i|Mux0~4_combout\,
	combout => \inst1|reg_gen:27:regs|y[3]~feeder_combout\);

-- Location: FF_X112_Y17_N19
\inst1|reg_gen:27:regs|y[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \SW17~input_o\,
	d => \inst1|reg_gen:27:regs|y[3]~feeder_combout\,
	ena => \inst1|dec_to_en\(27),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|reg_gen:27:regs|y\(3));

-- Location: LCCOMB_X112_Y20_N0
\inst1|DOUT[11]~128\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|DOUT[11]~128_combout\ = (\inst2|inst1|alu1|mux|Mux3~1_combout\ & (\inst1|reg_gen:11:regs|y\(3))) # (!\inst2|inst1|alu1|mux|Mux3~1_combout\ & ((\inst1|reg_gen:27:regs|y\(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst2|inst1|alu1|mux|Mux3~1_combout\,
	datac => \inst1|reg_gen:11:regs|y\(3),
	datad => \inst1|reg_gen:27:regs|y\(3),
	combout => \inst1|DOUT[11]~128_combout\);

-- Location: FF_X107_Y21_N27
\inst1|reg_gen:14:regs|y[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \SW17~input_o\,
	d => \inst2|inst|mux_2|mux_1|mux_generate:0:mux_i|Mux0~4_combout\,
	ena => \inst1|dec_to_en\(14),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|reg_gen:14:regs|y\(3));

-- Location: FF_X112_Y21_N7
\inst1|reg_gen:26:regs|y[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \SW17~input_o\,
	asdata => \inst2|inst|mux_2|mux_1|mux_generate:0:mux_i|Mux0~4_combout\,
	sload => VCC,
	ena => \inst1|dec_to_en\(26),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|reg_gen:26:regs|y\(3));

-- Location: LCCOMB_X112_Y21_N6
\inst1|DOUT[11]~126\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|DOUT[11]~126_combout\ = (\inst2|inst1|alu1|mux|Mux3~1_combout\ & (((\inst2|inst1|alu0|mux|Mux1~3_combout\)))) # (!\inst2|inst1|alu1|mux|Mux3~1_combout\ & ((\inst2|inst1|alu0|mux|Mux1~3_combout\ & (\inst1|reg_gen:30:regs|y\(3))) # 
-- (!\inst2|inst1|alu0|mux|Mux1~3_combout\ & ((\inst1|reg_gen:26:regs|y\(3))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|inst1|alu1|mux|Mux3~1_combout\,
	datab => \inst1|reg_gen:30:regs|y\(3),
	datac => \inst1|reg_gen:26:regs|y\(3),
	datad => \inst2|inst1|alu0|mux|Mux1~3_combout\,
	combout => \inst1|DOUT[11]~126_combout\);

-- Location: LCCOMB_X111_Y15_N10
\inst1|reg_gen:10:regs|y[3]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|reg_gen:10:regs|y[3]~feeder_combout\ = \inst2|inst|mux_2|mux_1|mux_generate:0:mux_i|Mux0~4_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst2|inst|mux_2|mux_1|mux_generate:0:mux_i|Mux0~4_combout\,
	combout => \inst1|reg_gen:10:regs|y[3]~feeder_combout\);

-- Location: FF_X111_Y15_N11
\inst1|reg_gen:10:regs|y[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \SW17~input_o\,
	d => \inst1|reg_gen:10:regs|y[3]~feeder_combout\,
	ena => \inst1|dec_to_en\(10),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|reg_gen:10:regs|y\(3));

-- Location: LCCOMB_X113_Y20_N30
\inst1|DOUT[11]~127\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|DOUT[11]~127_combout\ = (\inst1|DOUT[11]~126_combout\ & ((\inst1|reg_gen:14:regs|y\(3)) # ((!\inst2|inst1|alu1|mux|Mux3~1_combout\)))) # (!\inst1|DOUT[11]~126_combout\ & (((\inst1|reg_gen:10:regs|y\(3) & \inst2|inst1|alu1|mux|Mux3~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|reg_gen:14:regs|y\(3),
	datab => \inst1|DOUT[11]~126_combout\,
	datac => \inst1|reg_gen:10:regs|y\(3),
	datad => \inst2|inst1|alu1|mux|Mux3~1_combout\,
	combout => \inst1|DOUT[11]~127_combout\);

-- Location: LCCOMB_X113_Y20_N28
\inst1|DOUT[11]~129\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|DOUT[11]~129_combout\ = (\inst1|DOUT[13]~40_combout\ & (((\inst1|DOUT[11]~127_combout\) # (\inst1|DOUT[13]~37_combout\)))) # (!\inst1|DOUT[13]~40_combout\ & (\inst1|DOUT[11]~128_combout\ & ((!\inst1|DOUT[13]~37_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|DOUT[13]~40_combout\,
	datab => \inst1|DOUT[11]~128_combout\,
	datac => \inst1|DOUT[11]~127_combout\,
	datad => \inst1|DOUT[13]~37_combout\,
	combout => \inst1|DOUT[11]~129_combout\);

-- Location: LCCOMB_X113_Y20_N6
\inst1|DOUT[11]~132\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|DOUT[11]~132_combout\ = (\inst1|DOUT[13]~37_combout\ & ((\inst1|DOUT[11]~129_combout\ & (\inst1|DOUT[11]~131_combout\)) # (!\inst1|DOUT[11]~129_combout\ & ((\inst1|reg_gen:15:regs|y\(3)))))) # (!\inst1|DOUT[13]~37_combout\ & 
-- (((\inst1|DOUT[11]~129_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|DOUT[11]~131_combout\,
	datab => \inst1|reg_gen:15:regs|y\(3),
	datac => \inst1|DOUT[13]~37_combout\,
	datad => \inst1|DOUT[11]~129_combout\,
	combout => \inst1|DOUT[11]~132_combout\);

-- Location: LCCOMB_X112_Y18_N14
\inst1|reg_gen:8:regs|y[3]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|reg_gen:8:regs|y[3]~feeder_combout\ = \inst2|inst|mux_2|mux_1|mux_generate:0:mux_i|Mux0~4_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst2|inst|mux_2|mux_1|mux_generate:0:mux_i|Mux0~4_combout\,
	combout => \inst1|reg_gen:8:regs|y[3]~feeder_combout\);

-- Location: FF_X112_Y18_N15
\inst1|reg_gen:8:regs|y[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \SW17~input_o\,
	d => \inst1|reg_gen:8:regs|y[3]~feeder_combout\,
	ena => \inst1|dec_to_en[8]~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|reg_gen:8:regs|y\(3));

-- Location: LCCOMB_X112_Y18_N28
\inst1|reg_gen:24:regs|y[3]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|reg_gen:24:regs|y[3]~feeder_combout\ = \inst2|inst|mux_2|mux_1|mux_generate:0:mux_i|Mux0~4_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst2|inst|mux_2|mux_1|mux_generate:0:mux_i|Mux0~4_combout\,
	combout => \inst1|reg_gen:24:regs|y[3]~feeder_combout\);

-- Location: FF_X112_Y18_N29
\inst1|reg_gen:24:regs|y[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \SW17~input_o\,
	d => \inst1|reg_gen:24:regs|y[3]~feeder_combout\,
	ena => \inst1|dec_to_en[24]~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|reg_gen:24:regs|y\(3));

-- Location: LCCOMB_X110_Y18_N20
\inst1|DOUT[11]~120\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|DOUT[11]~120_combout\ = (\inst2|inst1|alu1|mux|Mux3~1_combout\ & (\inst1|reg_gen:8:regs|y\(3))) # (!\inst2|inst1|alu1|mux|Mux3~1_combout\ & ((\inst1|reg_gen:24:regs|y\(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|reg_gen:8:regs|y\(3),
	datab => \inst1|reg_gen:24:regs|y\(3),
	datad => \inst2|inst1|alu1|mux|Mux3~1_combout\,
	combout => \inst1|DOUT[11]~120_combout\);

-- Location: LCCOMB_X110_Y18_N18
\inst1|DOUT[11]~121\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|DOUT[11]~121_combout\ = (\inst2|inst1|alu0|mux|Mux2~1_combout\ & (((\inst2|inst1|alu0|mux|Mux1~3_combout\)))) # (!\inst2|inst1|alu0|mux|Mux2~1_combout\ & ((\inst2|inst1|alu0|mux|Mux1~3_combout\ & (\inst1|DOUT[11]~120_combout\)) # 
-- (!\inst2|inst1|alu0|mux|Mux1~3_combout\ & ((\inst1|reg_gen:20:regs|y\(3))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|DOUT[11]~120_combout\,
	datab => \inst2|inst1|alu0|mux|Mux2~1_combout\,
	datac => \inst1|reg_gen:20:regs|y\(3),
	datad => \inst2|inst1|alu0|mux|Mux1~3_combout\,
	combout => \inst1|DOUT[11]~121_combout\);

-- Location: LCCOMB_X110_Y18_N10
\inst1|DOUT[11]~123\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|DOUT[11]~123_combout\ = (\inst2|inst1|alu0|mux|Mux2~1_combout\ & ((\inst1|DOUT[11]~121_combout\ & (\inst1|DOUT[11]~122_combout\)) # (!\inst1|DOUT[11]~121_combout\ & ((\inst1|reg_gen:18:regs|y\(3)))))) # (!\inst2|inst1|alu0|mux|Mux2~1_combout\ & 
-- (\inst1|DOUT[11]~121_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110011011000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|inst1|alu0|mux|Mux2~1_combout\,
	datab => \inst1|DOUT[11]~121_combout\,
	datac => \inst1|DOUT[11]~122_combout\,
	datad => \inst1|reg_gen:18:regs|y\(3),
	combout => \inst1|DOUT[11]~123_combout\);

-- Location: LCCOMB_X112_Y15_N12
\inst1|reg_gen:12:regs|y[3]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|reg_gen:12:regs|y[3]~feeder_combout\ = \inst2|inst|mux_2|mux_1|mux_generate:0:mux_i|Mux0~4_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst2|inst|mux_2|mux_1|mux_generate:0:mux_i|Mux0~4_combout\,
	combout => \inst1|reg_gen:12:regs|y[3]~feeder_combout\);

-- Location: FF_X112_Y15_N13
\inst1|reg_gen:12:regs|y[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \SW17~input_o\,
	d => \inst1|reg_gen:12:regs|y[3]~feeder_combout\,
	ena => \inst1|dec_to_en\(12),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|reg_gen:12:regs|y\(3));

-- Location: LCCOMB_X114_Y17_N20
\inst1|reg_gen:28:regs|y[3]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|reg_gen:28:regs|y[3]~feeder_combout\ = \inst2|inst|mux_2|mux_1|mux_generate:0:mux_i|Mux0~4_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst2|inst|mux_2|mux_1|mux_generate:0:mux_i|Mux0~4_combout\,
	combout => \inst1|reg_gen:28:regs|y[3]~feeder_combout\);

-- Location: FF_X114_Y17_N21
\inst1|reg_gen:28:regs|y[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \SW17~input_o\,
	d => \inst1|reg_gen:28:regs|y[3]~feeder_combout\,
	ena => \inst1|dec_to_en\(28),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|reg_gen:28:regs|y\(3));

-- Location: LCCOMB_X113_Y20_N24
\inst1|DOUT[11]~124\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|DOUT[11]~124_combout\ = (\inst2|inst1|alu1|mux|Mux3~1_combout\ & (\inst1|reg_gen:12:regs|y\(3))) # (!\inst2|inst1|alu1|mux|Mux3~1_combout\ & ((\inst1|reg_gen:28:regs|y\(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst1|reg_gen:12:regs|y\(3),
	datac => \inst2|inst1|alu1|mux|Mux3~1_combout\,
	datad => \inst1|reg_gen:28:regs|y\(3),
	combout => \inst1|DOUT[11]~124_combout\);

-- Location: LCCOMB_X109_Y20_N26
\inst1|DOUT[11]~125\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|DOUT[11]~125_combout\ = (\inst1|DOUT[13]~34_combout\ & ((\inst1|DOUT[11]~123_combout\) # ((\inst1|DOUT[13]~29_combout\)))) # (!\inst1|DOUT[13]~34_combout\ & (((\inst1|DOUT[11]~124_combout\ & !\inst1|DOUT[13]~29_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|DOUT[11]~123_combout\,
	datab => \inst1|DOUT[11]~124_combout\,
	datac => \inst1|DOUT[13]~34_combout\,
	datad => \inst1|DOUT[13]~29_combout\,
	combout => \inst1|DOUT[11]~125_combout\);

-- Location: LCCOMB_X109_Y20_N12
\inst1|DOUT[11]~133\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|DOUT[11]~133_combout\ = (\inst1|DOUT[11]~125_combout\ & ((\inst1|DOUT[11]~132_combout\) # ((!\inst1|DOUT[13]~29_combout\)))) # (!\inst1|DOUT[11]~125_combout\ & (((\inst1|reg_gen:16:regs|y\(3) & \inst1|DOUT[13]~29_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|DOUT[11]~132_combout\,
	datab => \inst1|reg_gen:16:regs|y\(3),
	datac => \inst1|DOUT[11]~125_combout\,
	datad => \inst1|DOUT[13]~29_combout\,
	combout => \inst1|DOUT[11]~133_combout\);

-- Location: LCCOMB_X109_Y17_N22
\inst1|reg_gen:31:regs|y[3]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|reg_gen:31:regs|y[3]~feeder_combout\ = \inst2|inst|mux_2|mux_1|mux_generate:2:mux_i|Mux0~4_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst2|inst|mux_2|mux_1|mux_generate:2:mux_i|Mux0~4_combout\,
	combout => \inst1|reg_gen:31:regs|y[3]~feeder_combout\);

-- Location: FF_X109_Y17_N23
\inst1|reg_gen:31:regs|y[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \SW17~input_o\,
	d => \inst1|reg_gen:31:regs|y[3]~feeder_combout\,
	ena => \inst1|dec_to_en[31]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|reg_gen:31:regs|y\(3));

-- Location: LCCOMB_X109_Y20_N22
\inst1|DOUT[11]~115\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|DOUT[11]~115_combout\ = (\inst1|reg_gen:31:regs|y\(3) & \inst1|DOUT[13]~23_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst1|reg_gen:31:regs|y\(3),
	datad => \inst1|DOUT[13]~23_combout\,
	combout => \inst1|DOUT[11]~115_combout\);

-- Location: LCCOMB_X114_Y14_N22
\inst1|reg_gen:19:regs|y[3]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|reg_gen:19:regs|y[3]~feeder_combout\ = \inst2|inst|mux_2|mux_1|mux_generate:2:mux_i|Mux0~4_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|inst|mux_2|mux_1|mux_generate:2:mux_i|Mux0~4_combout\,
	combout => \inst1|reg_gen:19:regs|y[3]~feeder_combout\);

-- Location: FF_X114_Y14_N23
\inst1|reg_gen:19:regs|y[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \SW17~input_o\,
	d => \inst1|reg_gen:19:regs|y[3]~feeder_combout\,
	ena => \inst1|dec_to_en\(19),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|reg_gen:19:regs|y\(3));

-- Location: LCCOMB_X112_Y14_N24
\inst1|reg_gen:23:regs|y[3]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|reg_gen:23:regs|y[3]~feeder_combout\ = \inst2|inst|mux_2|mux_1|mux_generate:2:mux_i|Mux0~4_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst2|inst|mux_2|mux_1|mux_generate:2:mux_i|Mux0~4_combout\,
	combout => \inst1|reg_gen:23:regs|y[3]~feeder_combout\);

-- Location: FF_X112_Y14_N25
\inst1|reg_gen:23:regs|y[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \SW17~input_o\,
	d => \inst1|reg_gen:23:regs|y[3]~feeder_combout\,
	ena => \inst1|dec_to_en\(23),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|reg_gen:23:regs|y\(3));

-- Location: LCCOMB_X111_Y14_N26
\inst1|reg_gen:7:regs|y[3]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|reg_gen:7:regs|y[3]~feeder_combout\ = \inst2|inst|mux_2|mux_1|mux_generate:2:mux_i|Mux0~4_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|inst|mux_2|mux_1|mux_generate:2:mux_i|Mux0~4_combout\,
	combout => \inst1|reg_gen:7:regs|y[3]~feeder_combout\);

-- Location: FF_X111_Y14_N27
\inst1|reg_gen:7:regs|y[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \SW17~input_o\,
	d => \inst1|reg_gen:7:regs|y[3]~feeder_combout\,
	ena => \inst1|dec_to_en\(7),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|reg_gen:7:regs|y\(3));

-- Location: LCCOMB_X110_Y16_N30
\inst1|DOUT[11]~116\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|DOUT[11]~116_combout\ = (\inst2|inst1|alu1|mux|Mux3~1_combout\ & ((\inst1|reg_gen:7:regs|y\(3)))) # (!\inst2|inst1|alu1|mux|Mux3~1_combout\ & (\inst1|reg_gen:23:regs|y\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst1|reg_gen:23:regs|y\(3),
	datac => \inst1|reg_gen:7:regs|y\(3),
	datad => \inst2|inst1|alu1|mux|Mux3~1_combout\,
	combout => \inst1|DOUT[11]~116_combout\);

-- Location: LCCOMB_X110_Y16_N8
\inst1|DOUT[11]~117\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|DOUT[11]~117_combout\ = (\inst2|inst1|alu0|mux|Mux1~3_combout\ & (((\inst1|DOUT[11]~116_combout\) # (\inst2|inst1|alu0|mux|Mux2~1_combout\)))) # (!\inst2|inst1|alu0|mux|Mux1~3_combout\ & (\inst1|reg_gen:19:regs|y\(3) & 
-- ((!\inst2|inst1|alu0|mux|Mux2~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|reg_gen:19:regs|y\(3),
	datab => \inst2|inst1|alu0|mux|Mux1~3_combout\,
	datac => \inst1|DOUT[11]~116_combout\,
	datad => \inst2|inst1|alu0|mux|Mux2~1_combout\,
	combout => \inst1|DOUT[11]~117_combout\);

-- Location: LCCOMB_X114_Y14_N4
\inst1|reg_gen:17:regs|y[3]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|reg_gen:17:regs|y[3]~feeder_combout\ = \inst2|inst|mux_2|mux_1|mux_generate:2:mux_i|Mux0~4_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|inst|mux_2|mux_1|mux_generate:2:mux_i|Mux0~4_combout\,
	combout => \inst1|reg_gen:17:regs|y[3]~feeder_combout\);

-- Location: FF_X114_Y14_N5
\inst1|reg_gen:17:regs|y[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \SW17~input_o\,
	d => \inst1|reg_gen:17:regs|y[3]~feeder_combout\,
	ena => \inst1|dec_to_en\(17),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|reg_gen:17:regs|y\(3));

-- Location: LCCOMB_X114_Y15_N12
\inst1|reg_gen:21:regs|y[3]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|reg_gen:21:regs|y[3]~feeder_combout\ = \inst2|inst|mux_2|mux_1|mux_generate:2:mux_i|Mux0~4_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst2|inst|mux_2|mux_1|mux_generate:2:mux_i|Mux0~4_combout\,
	combout => \inst1|reg_gen:21:regs|y[3]~feeder_combout\);

-- Location: FF_X114_Y15_N13
\inst1|reg_gen:21:regs|y[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \SW17~input_o\,
	d => \inst1|reg_gen:21:regs|y[3]~feeder_combout\,
	ena => \inst1|dec_to_en\(21),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|reg_gen:21:regs|y\(3));

-- Location: LCCOMB_X110_Y16_N14
\inst1|DOUT[11]~118\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|DOUT[11]~118_combout\ = (\inst2|inst1|alu0|mux|Mux2~1_combout\ & ((\inst1|DOUT[11]~117_combout\ & ((\inst1|reg_gen:21:regs|y\(3)))) # (!\inst1|DOUT[11]~117_combout\ & (\inst1|reg_gen:17:regs|y\(3))))) # (!\inst2|inst1|alu0|mux|Mux2~1_combout\ & 
-- (\inst1|DOUT[11]~117_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110001100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|inst1|alu0|mux|Mux2~1_combout\,
	datab => \inst1|DOUT[11]~117_combout\,
	datac => \inst1|reg_gen:17:regs|y\(3),
	datad => \inst1|reg_gen:21:regs|y\(3),
	combout => \inst1|DOUT[11]~118_combout\);

-- Location: LCCOMB_X109_Y20_N0
\inst1|DOUT[11]~119\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|DOUT[11]~119_combout\ = (\inst1|DOUT[13]~21_combout\ & (!\inst2|inst1|alu0|mux|Mux0~3_combout\ & (\inst1|DOUT[11]~118_combout\ & !\inst1|DOUT[13]~23_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|DOUT[13]~21_combout\,
	datab => \inst2|inst1|alu0|mux|Mux0~3_combout\,
	datac => \inst1|DOUT[11]~118_combout\,
	datad => \inst1|DOUT[13]~23_combout\,
	combout => \inst1|DOUT[11]~119_combout\);

-- Location: LCCOMB_X109_Y20_N28
\inst1|DOUT[11]~134\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|DOUT[11]~134_combout\ = (\inst1|DOUT[11]~115_combout\) # ((\inst1|DOUT[11]~119_combout\) # ((\inst1|DOUT[15]~47_combout\ & \inst1|DOUT[11]~133_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|DOUT[15]~47_combout\,
	datab => \inst1|DOUT[11]~133_combout\,
	datac => \inst1|DOUT[11]~115_combout\,
	datad => \inst1|DOUT[11]~119_combout\,
	combout => \inst1|DOUT[11]~134_combout\);

-- Location: LCCOMB_X109_Y20_N18
\inst1|DOUT[11]$latch\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|DOUT[11]$latch~combout\ = (!\inst1|DOUT[15]~54_combout\ & ((GLOBAL(\inst1|DOUT[15]~52clkctrl_outclk\) & ((\inst1|DOUT[11]~134_combout\))) # (!GLOBAL(\inst1|DOUT[15]~52clkctrl_outclk\) & (\inst1|DOUT[11]$latch~combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010000000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|DOUT[15]~54_combout\,
	datab => \inst1|DOUT[11]$latch~combout\,
	datac => \inst1|DOUT[15]~52clkctrl_outclk\,
	datad => \inst1|DOUT[11]~134_combout\,
	combout => \inst1|DOUT[11]$latch~combout\);

-- Location: LCCOMB_X109_Y20_N24
\inst3|OUT16B[11]~27\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|OUT16B[11]~27_combout\ = (\inst|Mux5~0_combout\ & (((\inst1|DOUT[11]$latch~combout\) # (!\inst1|DOUT[15]_2612~combout\)))) # (!\inst|Mux5~0_combout\ & (\inst2|inst1|alu2|mux|Mux0~1_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111001001110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Mux5~0_combout\,
	datab => \inst2|inst1|alu2|mux|Mux0~1_combout\,
	datac => \inst1|DOUT[15]_2612~combout\,
	datad => \inst1|DOUT[11]$latch~combout\,
	combout => \inst3|OUT16B[11]~27_combout\);

-- Location: FF_X108_Y19_N9
\inst2|inst|reg_gen:4:regs|reg_2|y[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \SW17~input_o\,
	asdata => \inst3|OUT16B[11]~27_combout\,
	sload => VCC,
	ena => \inst2|inst|add_reg1_dcd|Mux3~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst2|inst|reg_gen:4:regs|reg_2|y\(3));

-- Location: LCCOMB_X106_Y22_N24
\inst2|inst|mux_2|mux_1|mux_generate:2:mux_i|Mux0~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|inst|mux_2|mux_1|mux_generate:2:mux_i|Mux0~1_combout\ = (\inst4|inst1|data_out[6]~17_combout\ & (\inst2|inst|reg_gen:1:regs|reg_2|y\(3) & !\inst4|inst1|exception~2_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst4|inst1|data_out[6]~17_combout\,
	datac => \inst2|inst|reg_gen:1:regs|reg_2|y\(3),
	datad => \inst4|inst1|exception~2_combout\,
	combout => \inst2|inst|mux_2|mux_1|mux_generate:2:mux_i|Mux0~1_combout\);

-- Location: LCCOMB_X106_Y22_N0
\inst2|inst|mux_2|mux_1|mux_generate:2:mux_i|Mux0~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|inst|mux_2|mux_1|mux_generate:2:mux_i|Mux0~2_combout\ = (\inst2|inst|mux_2|mux_1|mux_generate:0:mux_i|Mux2~3_combout\ & ((\inst2|inst|mux_2|mux_1|mux_generate:0:mux_i|Mux2~4_combout\ & (\inst2|inst|reg_gen:6:regs|reg_2|y\(3))) # 
-- (!\inst2|inst|mux_2|mux_1|mux_generate:0:mux_i|Mux2~4_combout\ & ((\inst2|inst|mux_2|mux_1|mux_generate:2:mux_i|Mux0~1_combout\))))) # (!\inst2|inst|mux_2|mux_1|mux_generate:0:mux_i|Mux2~3_combout\ & 
-- (((!\inst2|inst|mux_2|mux_1|mux_generate:0:mux_i|Mux2~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000011001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|inst|reg_gen:6:regs|reg_2|y\(3),
	datab => \inst2|inst|mux_2|mux_1|mux_generate:2:mux_i|Mux0~1_combout\,
	datac => \inst2|inst|mux_2|mux_1|mux_generate:0:mux_i|Mux2~3_combout\,
	datad => \inst2|inst|mux_2|mux_1|mux_generate:0:mux_i|Mux2~4_combout\,
	combout => \inst2|inst|mux_2|mux_1|mux_generate:2:mux_i|Mux0~2_combout\);

-- Location: LCCOMB_X108_Y19_N0
\inst2|inst|mux_2|mux_1|mux_generate:2:mux_i|Mux0~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|inst|mux_2|mux_1|mux_generate:2:mux_i|Mux0~3_combout\ = (\inst2|inst|mux_2|mux_1|mux_generate:0:mux_i|Mux2~1_combout\ & (((\inst2|inst|mux_2|mux_1|mux_generate:2:mux_i|Mux0~2_combout\)))) # 
-- (!\inst2|inst|mux_2|mux_1|mux_generate:0:mux_i|Mux2~1_combout\ & ((\inst2|inst|mux_2|mux_1|mux_generate:2:mux_i|Mux0~2_combout\ & (\inst2|inst|reg_gen:4:regs|reg_2|y\(3))) # (!\inst2|inst|mux_2|mux_1|mux_generate:2:mux_i|Mux0~2_combout\ & 
-- ((\inst2|inst|reg_gen:5:regs|reg_2|y\(3))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|inst|mux_2|mux_1|mux_generate:0:mux_i|Mux2~1_combout\,
	datab => \inst2|inst|reg_gen:4:regs|reg_2|y\(3),
	datac => \inst2|inst|reg_gen:5:regs|reg_2|y\(3),
	datad => \inst2|inst|mux_2|mux_1|mux_generate:2:mux_i|Mux0~2_combout\,
	combout => \inst2|inst|mux_2|mux_1|mux_generate:2:mux_i|Mux0~3_combout\);

-- Location: LCCOMB_X109_Y20_N16
\inst2|inst|mux_2|mux_1|mux_generate:2:mux_i|Mux0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|inst|mux_2|mux_1|mux_generate:2:mux_i|Mux0~0_combout\ = (\inst4|inst1|exception~2_combout\ & (((\inst2|inst|reg_gen:2:regs|reg_2|y\(3))))) # (!\inst4|inst1|exception~2_combout\ & ((\inst4|inst1|data_out[6]~17_combout\ & 
-- (\inst2|inst|reg_gen:3:regs|reg_2|y\(3))) # (!\inst4|inst1|data_out[6]~17_combout\ & ((\inst2|inst|reg_gen:2:regs|reg_2|y\(3))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|inst1|exception~2_combout\,
	datab => \inst2|inst|reg_gen:3:regs|reg_2|y\(3),
	datac => \inst2|inst|reg_gen:2:regs|reg_2|y\(3),
	datad => \inst4|inst1|data_out[6]~17_combout\,
	combout => \inst2|inst|mux_2|mux_1|mux_generate:2:mux_i|Mux0~0_combout\);

-- Location: LCCOMB_X108_Y19_N30
\inst2|inst|mux_2|mux_1|mux_generate:2:mux_i|Mux0~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|inst|mux_2|mux_1|mux_generate:2:mux_i|Mux0~4_combout\ = (\inst2|inst|mux_2|mux_1|mux_generate:0:mux_i|Mux2~7_combout\ & ((\inst2|inst|mux_2|mux_1|mux_generate:2:mux_i|Mux0~0_combout\))) # 
-- (!\inst2|inst|mux_2|mux_1|mux_generate:0:mux_i|Mux2~7_combout\ & (\inst2|inst|mux_2|mux_1|mux_generate:2:mux_i|Mux0~3_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|inst|mux_2|mux_1|mux_generate:0:mux_i|Mux2~7_combout\,
	datac => \inst2|inst|mux_2|mux_1|mux_generate:2:mux_i|Mux0~3_combout\,
	datad => \inst2|inst|mux_2|mux_1|mux_generate:2:mux_i|Mux0~0_combout\,
	combout => \inst2|inst|mux_2|mux_1|mux_generate:2:mux_i|Mux0~4_combout\);

-- Location: LCCOMB_X114_Y19_N22
\inst1|reg_gen:15:regs|y[3]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|reg_gen:15:regs|y[3]~feeder_combout\ = \inst2|inst|mux_2|mux_1|mux_generate:2:mux_i|Mux0~4_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst2|inst|mux_2|mux_1|mux_generate:2:mux_i|Mux0~4_combout\,
	combout => \inst1|reg_gen:15:regs|y[3]~feeder_combout\);

-- Location: FF_X114_Y19_N23
\inst1|reg_gen:15:regs|y[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \SW17~input_o\,
	d => \inst1|reg_gen:15:regs|y[3]~feeder_combout\,
	ena => \inst1|dec_to_en\(15),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|reg_gen:15:regs|y\(3));

-- Location: LCCOMB_X113_Y20_N4
\inst1|DOUT[3]~236\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|DOUT[3]~236_combout\ = (\inst1|DOUT[5]~22_combout\ & ((\inst1|DOUT[11]~120_combout\) # ((\inst1|DOUT[5]~201_combout\)))) # (!\inst1|DOUT[5]~22_combout\ & (((\inst1|DOUT[11]~131_combout\ & !\inst1|DOUT[5]~201_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|DOUT[11]~120_combout\,
	datab => \inst1|DOUT[11]~131_combout\,
	datac => \inst1|DOUT[5]~22_combout\,
	datad => \inst1|DOUT[5]~201_combout\,
	combout => \inst1|DOUT[3]~236_combout\);

-- Location: LCCOMB_X113_Y20_N2
\inst1|DOUT[3]~237\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|DOUT[3]~237_combout\ = (\inst1|DOUT[3]~236_combout\ & (((\inst1|DOUT[11]~124_combout\) # (!\inst1|DOUT[5]~201_combout\)))) # (!\inst1|DOUT[3]~236_combout\ & (\inst1|DOUT[11]~127_combout\ & (\inst1|DOUT[5]~201_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110000101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|DOUT[11]~127_combout\,
	datab => \inst1|DOUT[3]~236_combout\,
	datac => \inst1|DOUT[5]~201_combout\,
	datad => \inst1|DOUT[11]~124_combout\,
	combout => \inst1|DOUT[3]~237_combout\);

-- Location: LCCOMB_X109_Y20_N10
\inst1|DOUT[3]~235\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|DOUT[3]~235_combout\ = (\inst1|DOUT[13]~34_combout\ & (((\inst1|DOUT[11]~118_combout\) # (\inst1|DOUT[13]~29_combout\)))) # (!\inst1|DOUT[13]~34_combout\ & (\inst1|DOUT[11]~128_combout\ & ((!\inst1|DOUT[13]~29_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|DOUT[11]~128_combout\,
	datab => \inst1|DOUT[11]~118_combout\,
	datac => \inst1|DOUT[13]~34_combout\,
	datad => \inst1|DOUT[13]~29_combout\,
	combout => \inst1|DOUT[3]~235_combout\);

-- Location: LCCOMB_X109_Y20_N14
\inst1|DOUT[3]~238\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|DOUT[3]~238_combout\ = (\inst1|DOUT[13]~29_combout\ & ((\inst1|DOUT[3]~235_combout\ & ((\inst1|DOUT[3]~237_combout\))) # (!\inst1|DOUT[3]~235_combout\ & (\inst1|reg_gen:15:regs|y\(3))))) # (!\inst1|DOUT[13]~29_combout\ & 
-- (((\inst1|DOUT[3]~235_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|DOUT[13]~29_combout\,
	datab => \inst1|reg_gen:15:regs|y\(3),
	datac => \inst1|DOUT[3]~237_combout\,
	datad => \inst1|DOUT[3]~235_combout\,
	combout => \inst1|DOUT[3]~238_combout\);

-- Location: LCCOMB_X109_Y20_N30
\inst1|DOUT[3]~239\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|DOUT[3]~239_combout\ = (\inst1|DOUT[3]~234_combout\) # ((\inst1|DOUT[3]~238_combout\ & \inst1|DOUT[7]~205_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst1|DOUT[3]~234_combout\,
	datac => \inst1|DOUT[3]~238_combout\,
	datad => \inst1|DOUT[7]~205_combout\,
	combout => \inst1|DOUT[3]~239_combout\);

-- Location: LCCOMB_X109_Y20_N2
\inst1|DOUT[3]$latch\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|DOUT[3]$latch~combout\ = (!\inst1|DOUT[7]~266_combout\ & ((GLOBAL(\inst1|DOUT[15]~51clkctrl_outclk\) & (\inst1|DOUT[3]~239_combout\)) # (!GLOBAL(\inst1|DOUT[15]~51clkctrl_outclk\) & ((\inst1|DOUT[3]$latch~combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000101000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|DOUT[7]~266_combout\,
	datab => \inst1|DOUT[15]~51clkctrl_outclk\,
	datac => \inst1|DOUT[3]~239_combout\,
	datad => \inst1|DOUT[3]$latch~combout\,
	combout => \inst1|DOUT[3]$latch~combout\);

-- Location: LCCOMB_X109_Y20_N8
\inst3|OUT16B[3]~34\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|OUT16B[3]~34_combout\ = (\inst|Mux5~0_combout\ & (((\inst1|DOUT[3]$latch~combout\) # (!\inst1|DOUT[7]_2052~combout\)))) # (!\inst|Mux5~0_combout\ & (\inst2|inst1|alu0|mux|Mux0~3_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111001001110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Mux5~0_combout\,
	datab => \inst2|inst1|alu0|mux|Mux0~3_combout\,
	datac => \inst1|DOUT[7]_2052~combout\,
	datad => \inst1|DOUT[3]$latch~combout\,
	combout => \inst3|OUT16B[3]~34_combout\);

-- Location: FF_X108_Y21_N29
\inst2|inst|reg_gen:3:regs|reg_1|y[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \SW17~input_o\,
	asdata => \inst3|OUT16B[3]~34_combout\,
	sload => VCC,
	ena => \inst2|inst|add_reg1_dcd|Mux3~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst2|inst|reg_gen:3:regs|reg_1|y\(3));

-- Location: LCCOMB_X108_Y21_N28
\inst2|inst|mux_1|mux_1|mux_generate:0:mux_i|Mux0~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|inst|mux_1|mux_1|mux_generate:0:mux_i|Mux0~2_combout\ = (\inst4|inst1|exception~2_combout\ & (((\inst2|inst|reg_gen:2:regs|reg_1|y\(3))))) # (!\inst4|inst1|exception~2_combout\ & ((\inst4|inst1|data_out[9]~14_combout\ & 
-- (\inst2|inst|reg_gen:3:regs|reg_1|y\(3))) # (!\inst4|inst1|data_out[9]~14_combout\ & ((\inst2|inst|reg_gen:2:regs|reg_1|y\(3))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101101000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|inst1|exception~2_combout\,
	datab => \inst4|inst1|data_out[9]~14_combout\,
	datac => \inst2|inst|reg_gen:3:regs|reg_1|y\(3),
	datad => \inst2|inst|reg_gen:2:regs|reg_1|y\(3),
	combout => \inst2|inst|mux_1|mux_1|mux_generate:0:mux_i|Mux0~2_combout\);

-- Location: LCCOMB_X107_Y20_N4
\inst2|inst|mux_1|mux_1|mux_generate:0:mux_i|Mux0~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|inst|mux_1|mux_1|mux_generate:0:mux_i|Mux0~6_combout\ = (!\inst4|inst1|exception~2_combout\ & (\inst2|inst|reg_gen:1:regs|reg_1|y\(3) & ((\inst4|inst1|data_out[9]~13_combout\) # (\inst4|inst|reg|reg_1|y\(5)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|inst1|exception~2_combout\,
	datab => \inst4|inst1|data_out[9]~13_combout\,
	datac => \inst2|inst|reg_gen:1:regs|reg_1|y\(3),
	datad => \inst4|inst|reg|reg_1|y\(5),
	combout => \inst2|inst|mux_1|mux_1|mux_generate:0:mux_i|Mux0~6_combout\);

-- Location: LCCOMB_X107_Y20_N2
\inst2|inst|mux_1|mux_1|mux_generate:0:mux_i|Mux0~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|inst|mux_1|mux_1|mux_generate:0:mux_i|Mux0~3_combout\ = (\inst2|inst|mux_1|mux_1|mux_generate:3:mux_i|Mux3~6_combout\ & (((\inst2|inst|reg_gen:6:regs|reg_1|y\(3) & \inst2|inst|mux_1|mux_1|mux_generate:3:mux_i|Mux3~5_combout\)))) # 
-- (!\inst2|inst|mux_1|mux_1|mux_generate:3:mux_i|Mux3~6_combout\ & ((\inst2|inst|mux_1|mux_1|mux_generate:0:mux_i|Mux0~6_combout\) # ((!\inst2|inst|mux_1|mux_1|mux_generate:3:mux_i|Mux3~5_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010001010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|inst|mux_1|mux_1|mux_generate:3:mux_i|Mux3~6_combout\,
	datab => \inst2|inst|mux_1|mux_1|mux_generate:0:mux_i|Mux0~6_combout\,
	datac => \inst2|inst|reg_gen:6:regs|reg_1|y\(3),
	datad => \inst2|inst|mux_1|mux_1|mux_generate:3:mux_i|Mux3~5_combout\,
	combout => \inst2|inst|mux_1|mux_1|mux_generate:0:mux_i|Mux0~3_combout\);

-- Location: LCCOMB_X108_Y21_N12
\inst2|inst|mux_1|mux_1|mux_generate:0:mux_i|Mux0~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|inst|mux_1|mux_1|mux_generate:0:mux_i|Mux0~4_combout\ = (\inst2|inst|mux_1|mux_1|mux_generate:3:mux_i|Mux3~4_combout\ & (((\inst2|inst|mux_1|mux_1|mux_generate:0:mux_i|Mux0~3_combout\)))) # 
-- (!\inst2|inst|mux_1|mux_1|mux_generate:3:mux_i|Mux3~4_combout\ & ((\inst2|inst|mux_1|mux_1|mux_generate:0:mux_i|Mux0~3_combout\ & ((\inst2|inst|reg_gen:4:regs|reg_1|y\(3)))) # (!\inst2|inst|mux_1|mux_1|mux_generate:0:mux_i|Mux0~3_combout\ & 
-- (\inst2|inst|reg_gen:5:regs|reg_1|y\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|inst|mux_1|mux_1|mux_generate:3:mux_i|Mux3~4_combout\,
	datab => \inst2|inst|reg_gen:5:regs|reg_1|y\(3),
	datac => \inst2|inst|reg_gen:4:regs|reg_1|y\(3),
	datad => \inst2|inst|mux_1|mux_1|mux_generate:0:mux_i|Mux0~3_combout\,
	combout => \inst2|inst|mux_1|mux_1|mux_generate:0:mux_i|Mux0~4_combout\);

-- Location: LCCOMB_X108_Y21_N26
\inst2|inst|mux_1|mux_1|mux_generate:0:mux_i|Mux0~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|inst|mux_1|mux_1|mux_generate:0:mux_i|Mux0~5_combout\ = (\inst2|inst|mux_1|mux_1|mux_generate:3:mux_i|Mux3~12_combout\ & (\inst2|inst|mux_1|mux_1|mux_generate:0:mux_i|Mux0~2_combout\)) # 
-- (!\inst2|inst|mux_1|mux_1|mux_generate:3:mux_i|Mux3~12_combout\ & ((\inst2|inst|mux_1|mux_1|mux_generate:0:mux_i|Mux0~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst2|inst|mux_1|mux_1|mux_generate:0:mux_i|Mux0~2_combout\,
	datac => \inst2|inst|mux_1|mux_1|mux_generate:3:mux_i|Mux3~12_combout\,
	datad => \inst2|inst|mux_1|mux_1|mux_generate:0:mux_i|Mux0~4_combout\,
	combout => \inst2|inst|mux_1|mux_1|mux_generate:0:mux_i|Mux0~5_combout\);

-- Location: LCCOMB_X111_Y21_N22
\inst2|inst1|alu0|mux|Mux0~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|inst1|alu0|mux|Mux0~2_combout\ = (\inst2|inst|mux_1|mux_1|mux_generate:0:mux_i|Mux0~5_combout\ & (\inst2|inst3|DOUT[1]~4_combout\ $ (((\inst2|inst3|DOUT[0]~2_combout\) # (\inst2|inst2|OUT16B[3]~20_combout\))))) # 
-- (!\inst2|inst|mux_1|mux_1|mux_generate:0:mux_i|Mux0~5_combout\ & (\inst2|inst2|OUT16B[3]~20_combout\ & (\inst2|inst3|DOUT[0]~2_combout\ $ (\inst2|inst3|DOUT[1]~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001001011101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|inst|mux_1|mux_1|mux_generate:0:mux_i|Mux0~5_combout\,
	datab => \inst2|inst3|DOUT[0]~2_combout\,
	datac => \inst2|inst2|OUT16B[3]~20_combout\,
	datad => \inst2|inst3|DOUT[1]~4_combout\,
	combout => \inst2|inst1|alu0|mux|Mux0~2_combout\);

-- Location: LCCOMB_X109_Y21_N30
\inst2|inst1|alu0|mux|Mux0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|inst1|alu0|mux|Mux0~0_combout\ = \inst2|inst|mux_1|mux_1|mux_generate:3:mux_i|Mux0~5_combout\ $ (\inst2|inst2|OUT16B[15]~28_combout\ $ (\inst2|inst1|alu3|adder|C[3]~2_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010101011010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|inst|mux_1|mux_1|mux_generate:3:mux_i|Mux0~5_combout\,
	datac => \inst2|inst2|OUT16B[15]~28_combout\,
	datad => \inst2|inst1|alu3|adder|C[3]~2_combout\,
	combout => \inst2|inst1|alu0|mux|Mux0~0_combout\);

-- Location: LCCOMB_X109_Y21_N14
\inst2|inst1|alu0|mux|Mux0~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|inst1|alu0|mux|Mux0~1_combout\ = \inst2|inst3|DOUT[2]~3_combout\ $ (((\inst2|inst3|DOUT[0]~2_combout\ & (\inst2|inst1|alu0|mux|Mux0~0_combout\)) # (!\inst2|inst3|DOUT[0]~2_combout\ & ((\inst2|inst1|alu0|adder|C[3]~2_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011100101101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|inst3|DOUT[0]~2_combout\,
	datab => \inst2|inst3|DOUT[2]~3_combout\,
	datac => \inst2|inst1|alu0|mux|Mux0~0_combout\,
	datad => \inst2|inst1|alu0|adder|C[3]~2_combout\,
	combout => \inst2|inst1|alu0|mux|Mux0~1_combout\);

-- Location: LCCOMB_X110_Y21_N20
\inst2|inst1|alu0|mux|Mux0~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|inst1|alu0|mux|Mux0~3_combout\ = \inst2|inst1|alu0|mux|Mux0~2_combout\ $ (((\inst2|inst3|DOUT[1]~4_combout\ & \inst2|inst1|alu0|mux|Mux0~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst2|inst1|alu0|mux|Mux0~2_combout\,
	datac => \inst2|inst3|DOUT[1]~4_combout\,
	datad => \inst2|inst1|alu0|mux|Mux0~1_combout\,
	combout => \inst2|inst1|alu0|mux|Mux0~3_combout\);

-- Location: LCCOMB_X112_Y21_N10
\inst1|dec_to_en[30]\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|dec_to_en\(30) = (\inst2|inst1|alu0|mux|Mux0~3_combout\ & (!\inst2|inst1|alu1|mux|Mux3~1_combout\ & (\inst|Mux6~0_combout\ & !\inst1|dec_to_en~9_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|inst1|alu0|mux|Mux0~3_combout\,
	datab => \inst2|inst1|alu1|mux|Mux3~1_combout\,
	datac => \inst|Mux6~0_combout\,
	datad => \inst1|dec_to_en~9_combout\,
	combout => \inst1|dec_to_en\(30));

-- Location: FF_X111_Y20_N7
\inst1|reg_gen:30:regs|y[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \SW17~input_o\,
	asdata => \inst2|inst|mux_2|mux_1|mux_generate:0:mux_i|Mux1~4_combout\,
	sload => VCC,
	ena => \inst1|dec_to_en\(30),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|reg_gen:30:regs|y\(2));

-- Location: LCCOMB_X114_Y18_N4
\inst1|DOUT[2]~240\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|DOUT[2]~240_combout\ = (\inst2|inst1|alu0|mux|Mux2~1_combout\ & (((\inst2|inst1|alu0|mux|Mux1~3_combout\)))) # (!\inst2|inst1|alu0|mux|Mux2~1_combout\ & ((\inst2|inst1|alu0|mux|Mux1~3_combout\ & ((\inst1|DOUT[10]~142_combout\))) # 
-- (!\inst2|inst1|alu0|mux|Mux1~3_combout\ & (\inst1|reg_gen:18:regs|y\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010010100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|inst1|alu0|mux|Mux2~1_combout\,
	datab => \inst1|reg_gen:18:regs|y\(2),
	datac => \inst2|inst1|alu0|mux|Mux1~3_combout\,
	datad => \inst1|DOUT[10]~142_combout\,
	combout => \inst1|DOUT[2]~240_combout\);

-- Location: LCCOMB_X111_Y18_N0
\inst1|DOUT[2]~241\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|DOUT[2]~241_combout\ = (\inst1|DOUT[2]~240_combout\ & ((\inst1|reg_gen:20:regs|y\(2)) # ((!\inst2|inst1|alu0|mux|Mux2~1_combout\)))) # (!\inst1|DOUT[2]~240_combout\ & (((\inst1|reg_gen:16:regs|y\(2) & \inst2|inst1|alu0|mux|Mux2~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|DOUT[2]~240_combout\,
	datab => \inst1|reg_gen:20:regs|y\(2),
	datac => \inst1|reg_gen:16:regs|y\(2),
	datad => \inst2|inst1|alu0|mux|Mux2~1_combout\,
	combout => \inst1|DOUT[2]~241_combout\);

-- Location: LCCOMB_X110_Y17_N30
\inst1|DOUT[2]~242\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|DOUT[2]~242_combout\ = (\inst1|reg_gen:30:regs|y\(2) & ((\inst1|DOUT[5]~198_combout\) # ((\inst1|DOUT[2]~241_combout\ & \inst1|DOUT[7]~197_combout\)))) # (!\inst1|reg_gen:30:regs|y\(2) & (((\inst1|DOUT[2]~241_combout\ & 
-- \inst1|DOUT[7]~197_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|reg_gen:30:regs|y\(2),
	datab => \inst1|DOUT[5]~198_combout\,
	datac => \inst1|DOUT[2]~241_combout\,
	datad => \inst1|DOUT[7]~197_combout\,
	combout => \inst1|DOUT[2]~242_combout\);

-- Location: LCCOMB_X111_Y19_N8
\inst1|DOUT[2]~244\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|DOUT[2]~244_combout\ = (\inst1|DOUT[5]~22_combout\ & (((\inst1|DOUT[5]~201_combout\)))) # (!\inst1|DOUT[5]~22_combout\ & ((\inst1|DOUT[5]~201_combout\ & ((\inst1|DOUT[10]~147_combout\))) # (!\inst1|DOUT[5]~201_combout\ & 
-- (\inst1|DOUT[10]~151_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001011000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|DOUT[10]~151_combout\,
	datab => \inst1|DOUT[5]~22_combout\,
	datac => \inst1|DOUT[5]~201_combout\,
	datad => \inst1|DOUT[10]~147_combout\,
	combout => \inst1|DOUT[2]~244_combout\);

-- Location: LCCOMB_X110_Y17_N22
\inst1|DOUT[2]~245\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|DOUT[2]~245_combout\ = (\inst1|DOUT[5]~22_combout\ & ((\inst1|DOUT[2]~244_combout\ & ((\inst1|DOUT[10]~144_combout\))) # (!\inst1|DOUT[2]~244_combout\ & (\inst1|DOUT[10]~140_combout\)))) # (!\inst1|DOUT[5]~22_combout\ & 
-- (((\inst1|DOUT[2]~244_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|DOUT[5]~22_combout\,
	datab => \inst1|DOUT[10]~140_combout\,
	datac => \inst1|DOUT[10]~144_combout\,
	datad => \inst1|DOUT[2]~244_combout\,
	combout => \inst1|DOUT[2]~245_combout\);

-- Location: LCCOMB_X110_Y17_N16
\inst1|DOUT[2]~243\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|DOUT[2]~243_combout\ = (\inst1|DOUT[13]~34_combout\ & (((\inst1|DOUT[13]~29_combout\)))) # (!\inst1|DOUT[13]~34_combout\ & ((\inst1|DOUT[13]~29_combout\ & ((\inst1|reg_gen:15:regs|y\(2)))) # (!\inst1|DOUT[13]~29_combout\ & 
-- (\inst1|DOUT[10]~148_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|DOUT[10]~148_combout\,
	datab => \inst1|DOUT[13]~34_combout\,
	datac => \inst1|reg_gen:15:regs|y\(2),
	datad => \inst1|DOUT[13]~29_combout\,
	combout => \inst1|DOUT[2]~243_combout\);

-- Location: LCCOMB_X110_Y17_N24
\inst1|DOUT[2]~246\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|DOUT[2]~246_combout\ = (\inst1|DOUT[13]~34_combout\ & ((\inst1|DOUT[2]~243_combout\ & ((\inst1|DOUT[2]~245_combout\))) # (!\inst1|DOUT[2]~243_combout\ & (\inst1|DOUT[10]~138_combout\)))) # (!\inst1|DOUT[13]~34_combout\ & 
-- (((\inst1|DOUT[2]~243_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|DOUT[10]~138_combout\,
	datab => \inst1|DOUT[13]~34_combout\,
	datac => \inst1|DOUT[2]~245_combout\,
	datad => \inst1|DOUT[2]~243_combout\,
	combout => \inst1|DOUT[2]~246_combout\);

-- Location: LCCOMB_X110_Y17_N6
\inst1|DOUT[2]~247\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|DOUT[2]~247_combout\ = (\inst1|DOUT[2]~242_combout\) # ((\inst1|DOUT[7]~205_combout\ & \inst1|DOUT[2]~246_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst1|DOUT[7]~205_combout\,
	datac => \inst1|DOUT[2]~242_combout\,
	datad => \inst1|DOUT[2]~246_combout\,
	combout => \inst1|DOUT[2]~247_combout\);

-- Location: LCCOMB_X110_Y17_N20
\inst1|DOUT[2]$latch~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|DOUT[2]$latch~0_combout\ = (GLOBAL(\inst1|DOUT[15]~51clkctrl_outclk\) & (\inst1|DOUT[2]~247_combout\)) # (!GLOBAL(\inst1|DOUT[15]~51clkctrl_outclk\) & ((\inst1|DOUT[2]$latch~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|DOUT[2]~247_combout\,
	datac => \inst1|DOUT[2]$latch~combout\,
	datad => \inst1|DOUT[15]~51clkctrl_outclk\,
	combout => \inst1|DOUT[2]$latch~0_combout\);

-- Location: LCCOMB_X106_Y19_N4
\inst1|comb~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|comb~3_combout\ = (\inst1|DOUT[7]~207_combout\ & (((!\inst1|dcd|dcd_3|dcd|Mux7~7_combout\) # (!\inst|Mux3~7_combout\)))) # (!\inst1|DOUT[7]~207_combout\ & (!\inst|Mux5~0_combout\ & ((!\inst1|dcd|dcd_3|dcd|Mux7~7_combout\) # 
-- (!\inst|Mux3~7_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101110111011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|DOUT[7]~207_combout\,
	datab => \inst|Mux5~0_combout\,
	datac => \inst|Mux3~7_combout\,
	datad => \inst1|dcd|dcd_3|dcd|Mux7~7_combout\,
	combout => \inst1|comb~3_combout\);

-- Location: LCCOMB_X106_Y19_N6
\inst1|dcd|dcd_0|D[2]~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|dcd|dcd_0|D[2]~3_combout\ = (!\inst2|inst1|alu0|mux|Mux0~3_combout\ & (\inst1|dcd|dcd_3|dcd|Mux7~7_combout\ & \inst2|inst1|alu1|mux|Mux3~1_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100010000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|inst1|alu0|mux|Mux0~3_combout\,
	datab => \inst1|dcd|dcd_3|dcd|Mux7~7_combout\,
	datad => \inst2|inst1|alu1|mux|Mux3~1_combout\,
	combout => \inst1|dcd|dcd_0|D[2]~3_combout\);

-- Location: LCCOMB_X106_Y19_N8
\inst1|DOUT[2]$latch\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|DOUT[2]$latch~combout\ = (!\inst1|comb~3_combout\ & ((\inst1|DOUT[2]$latch~0_combout\) # (\inst1|dcd|dcd_0|D[2]~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|DOUT[2]$latch~0_combout\,
	datac => \inst1|comb~3_combout\,
	datad => \inst1|dcd|dcd_0|D[2]~3_combout\,
	combout => \inst1|DOUT[2]$latch~combout\);

-- Location: LCCOMB_X106_Y19_N26
\inst3|OUT16B[2]~35\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|OUT16B[2]~35_combout\ = (\inst|Mux5~0_combout\ & (((\inst1|DOUT[2]$latch~combout\) # (!\inst1|DOUT[7]_2052~combout\)))) # (!\inst|Mux5~0_combout\ & (\inst2|inst1|alu0|mux|Mux1~3_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110001011101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|inst1|alu0|mux|Mux1~3_combout\,
	datab => \inst|Mux5~0_combout\,
	datac => \inst1|DOUT[2]$latch~combout\,
	datad => \inst1|DOUT[7]_2052~combout\,
	combout => \inst3|OUT16B[2]~35_combout\);

-- Location: FF_X106_Y22_N19
\inst2|inst|reg_gen:2:regs|reg_1|y[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \SW17~input_o\,
	asdata => \inst3|OUT16B[2]~35_combout\,
	sload => VCC,
	ena => \inst2|inst|add_reg1_dcd|Mux3~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst2|inst|reg_gen:2:regs|reg_1|y\(2));

-- Location: LCCOMB_X105_Y22_N30
\inst2|inst|mux_2|mux_1|mux_generate:0:mux_i|Mux1~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|inst|mux_2|mux_1|mux_generate:0:mux_i|Mux1~0_combout\ = (\inst4|inst1|data_out[6]~17_combout\ & ((\inst4|inst1|exception~2_combout\ & (\inst2|inst|reg_gen:2:regs|reg_1|y\(2))) # (!\inst4|inst1|exception~2_combout\ & 
-- ((\inst2|inst|reg_gen:3:regs|reg_1|y\(2)))))) # (!\inst4|inst1|data_out[6]~17_combout\ & (\inst2|inst|reg_gen:2:regs|reg_1|y\(2)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111010100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|inst|reg_gen:2:regs|reg_1|y\(2),
	datab => \inst4|inst1|data_out[6]~17_combout\,
	datac => \inst4|inst1|exception~2_combout\,
	datad => \inst2|inst|reg_gen:3:regs|reg_1|y\(2),
	combout => \inst2|inst|mux_2|mux_1|mux_generate:0:mux_i|Mux1~0_combout\);

-- Location: LCCOMB_X107_Y20_N28
\inst2|inst|mux_2|mux_1|mux_generate:0:mux_i|Mux1~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|inst|mux_2|mux_1|mux_generate:0:mux_i|Mux1~1_combout\ = (\inst2|inst|reg_gen:1:regs|reg_1|y\(2) & (\inst4|inst1|data_out[6]~17_combout\ & !\inst4|inst1|exception~2_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst2|inst|reg_gen:1:regs|reg_1|y\(2),
	datac => \inst4|inst1|data_out[6]~17_combout\,
	datad => \inst4|inst1|exception~2_combout\,
	combout => \inst2|inst|mux_2|mux_1|mux_generate:0:mux_i|Mux1~1_combout\);

-- Location: LCCOMB_X107_Y20_N10
\inst2|inst|mux_2|mux_1|mux_generate:0:mux_i|Mux1~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|inst|mux_2|mux_1|mux_generate:0:mux_i|Mux1~2_combout\ = (\inst2|inst|mux_2|mux_1|mux_generate:0:mux_i|Mux2~3_combout\ & ((\inst2|inst|mux_2|mux_1|mux_generate:0:mux_i|Mux2~4_combout\ & ((\inst2|inst|reg_gen:6:regs|reg_1|y\(2)))) # 
-- (!\inst2|inst|mux_2|mux_1|mux_generate:0:mux_i|Mux2~4_combout\ & (\inst2|inst|mux_2|mux_1|mux_generate:0:mux_i|Mux1~1_combout\)))) # (!\inst2|inst|mux_2|mux_1|mux_generate:0:mux_i|Mux2~3_combout\ & 
-- (((!\inst2|inst|mux_2|mux_1|mux_generate:0:mux_i|Mux2~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000011011101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|inst|mux_2|mux_1|mux_generate:0:mux_i|Mux2~3_combout\,
	datab => \inst2|inst|mux_2|mux_1|mux_generate:0:mux_i|Mux1~1_combout\,
	datac => \inst2|inst|reg_gen:6:regs|reg_1|y\(2),
	datad => \inst2|inst|mux_2|mux_1|mux_generate:0:mux_i|Mux2~4_combout\,
	combout => \inst2|inst|mux_2|mux_1|mux_generate:0:mux_i|Mux1~2_combout\);

-- Location: LCCOMB_X108_Y20_N22
\inst2|inst|mux_2|mux_1|mux_generate:0:mux_i|Mux1~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|inst|mux_2|mux_1|mux_generate:0:mux_i|Mux1~3_combout\ = (\inst2|inst|mux_2|mux_1|mux_generate:0:mux_i|Mux2~1_combout\ & (((\inst2|inst|mux_2|mux_1|mux_generate:0:mux_i|Mux1~2_combout\)))) # 
-- (!\inst2|inst|mux_2|mux_1|mux_generate:0:mux_i|Mux2~1_combout\ & ((\inst2|inst|mux_2|mux_1|mux_generate:0:mux_i|Mux1~2_combout\ & ((\inst2|inst|reg_gen:4:regs|reg_1|y\(2)))) # (!\inst2|inst|mux_2|mux_1|mux_generate:0:mux_i|Mux1~2_combout\ & 
-- (\inst2|inst|reg_gen:5:regs|reg_1|y\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|inst|mux_2|mux_1|mux_generate:0:mux_i|Mux2~1_combout\,
	datab => \inst2|inst|reg_gen:5:regs|reg_1|y\(2),
	datac => \inst2|inst|reg_gen:4:regs|reg_1|y\(2),
	datad => \inst2|inst|mux_2|mux_1|mux_generate:0:mux_i|Mux1~2_combout\,
	combout => \inst2|inst|mux_2|mux_1|mux_generate:0:mux_i|Mux1~3_combout\);

-- Location: LCCOMB_X107_Y21_N20
\inst2|inst|mux_2|mux_1|mux_generate:0:mux_i|Mux1~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|inst|mux_2|mux_1|mux_generate:0:mux_i|Mux1~4_combout\ = (\inst2|inst|mux_2|mux_1|mux_generate:0:mux_i|Mux2~7_combout\ & (\inst2|inst|mux_2|mux_1|mux_generate:0:mux_i|Mux1~0_combout\)) # (!\inst2|inst|mux_2|mux_1|mux_generate:0:mux_i|Mux2~7_combout\ 
-- & ((\inst2|inst|mux_2|mux_1|mux_generate:0:mux_i|Mux1~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst2|inst|mux_2|mux_1|mux_generate:0:mux_i|Mux1~0_combout\,
	datac => \inst2|inst|mux_2|mux_1|mux_generate:0:mux_i|Mux1~3_combout\,
	datad => \inst2|inst|mux_2|mux_1|mux_generate:0:mux_i|Mux2~7_combout\,
	combout => \inst2|inst|mux_2|mux_1|mux_generate:0:mux_i|Mux1~4_combout\);

-- Location: LCCOMB_X107_Y21_N16
\inst2|inst2|OUT16B[2]~17\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|inst2|OUT16B[2]~17_combout\ = (\inst|Mux7~0_combout\ & (\inst4|inst1|INS_OUT[2]~10_combout\)) # (!\inst|Mux7~0_combout\ & ((\inst2|inst|mux_2|mux_1|mux_generate:0:mux_i|Mux1~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|inst1|INS_OUT[2]~10_combout\,
	datac => \inst|Mux7~0_combout\,
	datad => \inst2|inst|mux_2|mux_1|mux_generate:0:mux_i|Mux1~4_combout\,
	combout => \inst2|inst2|OUT16B[2]~17_combout\);

-- Location: LCCOMB_X111_Y21_N30
\inst2|inst1|alu0|mux|Mux1~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|inst1|alu0|mux|Mux1~2_combout\ = (!\inst2|inst3|DOUT[1]~4_combout\ & ((\inst2|inst2|OUT16B[2]~17_combout\ & ((\inst2|inst3|DOUT[0]~2_combout\) # (\inst2|inst|mux_1|mux_1|mux_generate:0:mux_i|Mux1~5_combout\))) # (!\inst2|inst2|OUT16B[2]~17_combout\ 
-- & (\inst2|inst3|DOUT[0]~2_combout\ & \inst2|inst|mux_1|mux_1|mux_generate:0:mux_i|Mux1~5_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|inst2|OUT16B[2]~17_combout\,
	datab => \inst2|inst3|DOUT[0]~2_combout\,
	datac => \inst2|inst|mux_1|mux_1|mux_generate:0:mux_i|Mux1~5_combout\,
	datad => \inst2|inst3|DOUT[1]~4_combout\,
	combout => \inst2|inst1|alu0|mux|Mux1~2_combout\);

-- Location: LCCOMB_X111_Y21_N26
\inst2|inst1|alu0|mux|Mux1~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|inst1|alu0|mux|Mux1~3_combout\ = (\inst2|inst1|alu0|mux|Mux1~2_combout\) # ((\inst2|inst3|DOUT[1]~4_combout\ & (!\inst2|inst3|DOUT[0]~2_combout\ & \inst2|inst1|alu0|adder|S\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|inst1|alu0|mux|Mux1~2_combout\,
	datab => \inst2|inst3|DOUT[1]~4_combout\,
	datac => \inst2|inst3|DOUT[0]~2_combout\,
	datad => \inst2|inst1|alu0|adder|S\(2),
	combout => \inst2|inst1|alu0|mux|Mux1~3_combout\);

-- Location: LCCOMB_X111_Y21_N2
\inst1|DOUT[15]~49\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|DOUT[15]~49_combout\ = (!\inst2|inst1|alu0|mux|Mux2~1_combout\ & \inst2|inst1|alu0|mux|Mux1~3_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst2|inst1|alu0|mux|Mux2~1_combout\,
	datac => \inst2|inst1|alu0|mux|Mux1~3_combout\,
	combout => \inst1|DOUT[15]~49_combout\);

-- Location: LCCOMB_X110_Y21_N10
\inst1|DOUT[15]~50\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|DOUT[15]~50_combout\ = (\inst1|dcd|dcd_3|dcd|Mux7~2_combout\ & (!\inst2|inst1|alu1|mux|Mux3~1_combout\ & \inst2|inst1|alu0|mux|Mux0~3_combout\)) # (!\inst1|dcd|dcd_3|dcd|Mux7~2_combout\ & (\inst2|inst1|alu1|mux|Mux3~1_combout\ & 
-- !\inst2|inst1|alu0|mux|Mux0~3_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst1|dcd|dcd_3|dcd|Mux7~2_combout\,
	datac => \inst2|inst1|alu1|mux|Mux3~1_combout\,
	datad => \inst2|inst1|alu0|mux|Mux0~3_combout\,
	combout => \inst1|DOUT[15]~50_combout\);

-- Location: LCCOMB_X110_Y21_N14
\inst1|DOUT[15]~51\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|DOUT[15]~51_combout\ = (\inst1|DOUT[15]~49_combout\ & (((\inst1|dcd|dcd_3|dcd|Mux7~2_combout\ & !\inst1|DOUT[15]~50_combout\)) # (!\inst2|inst1|alu0|mux|Mux3~0_combout\))) # (!\inst1|DOUT[15]~49_combout\ & ((\inst1|dcd|dcd_3|dcd|Mux7~2_combout\) # 
-- ((!\inst1|DOUT[15]~50_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100111011011111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|DOUT[15]~49_combout\,
	datab => \inst1|dcd|dcd_3|dcd|Mux7~2_combout\,
	datac => \inst2|inst1|alu0|mux|Mux3~0_combout\,
	datad => \inst1|DOUT[15]~50_combout\,
	combout => \inst1|DOUT[15]~51_combout\);

-- Location: LCCOMB_X110_Y21_N8
\inst1|DOUT[7]_2052\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|DOUT[7]_2052~combout\ = (\inst|Mux5~0_combout\ & ((\inst1|DOUT[7]_2052~combout\) # ((\inst1|DOUT[15]~51_combout\) # (\inst1|DOUT[7]~207_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101010101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Mux5~0_combout\,
	datab => \inst1|DOUT[7]_2052~combout\,
	datac => \inst1|DOUT[15]~51_combout\,
	datad => \inst1|DOUT[7]~207_combout\,
	combout => \inst1|DOUT[7]_2052~combout\);

-- Location: LCCOMB_X111_Y19_N2
\inst1|DOUT[0]~261\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|DOUT[0]~261_combout\ = (\inst1|DOUT[5]~22_combout\ & (((\inst1|DOUT[5]~201_combout\)))) # (!\inst1|DOUT[5]~22_combout\ & ((\inst1|DOUT[5]~201_combout\ & (\inst1|DOUT[8]~187_combout\)) # (!\inst1|DOUT[5]~201_combout\ & 
-- ((\inst1|DOUT[8]~191_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110001111100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|DOUT[8]~187_combout\,
	datab => \inst1|DOUT[5]~22_combout\,
	datac => \inst1|DOUT[5]~201_combout\,
	datad => \inst1|DOUT[8]~191_combout\,
	combout => \inst1|DOUT[0]~261_combout\);

-- Location: LCCOMB_X110_Y18_N12
\inst1|DOUT[0]~262\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|DOUT[0]~262_combout\ = (\inst1|DOUT[5]~22_combout\ & ((\inst1|DOUT[0]~261_combout\ & (\inst1|DOUT[8]~184_combout\)) # (!\inst1|DOUT[0]~261_combout\ & ((\inst1|DOUT[8]~180_combout\))))) # (!\inst1|DOUT[5]~22_combout\ & 
-- (((\inst1|DOUT[0]~261_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101101011010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|DOUT[5]~22_combout\,
	datab => \inst1|DOUT[8]~184_combout\,
	datac => \inst1|DOUT[0]~261_combout\,
	datad => \inst1|DOUT[8]~180_combout\,
	combout => \inst1|DOUT[0]~262_combout\);

-- Location: LCCOMB_X110_Y18_N22
\inst1|DOUT[0]~260\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|DOUT[0]~260_combout\ = (\inst1|DOUT[13]~29_combout\ & (((\inst1|reg_gen:15:regs|y\(0)) # (\inst1|DOUT[13]~34_combout\)))) # (!\inst1|DOUT[13]~29_combout\ & (\inst1|DOUT[8]~188_combout\ & ((!\inst1|DOUT[13]~34_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|DOUT[13]~29_combout\,
	datab => \inst1|DOUT[8]~188_combout\,
	datac => \inst1|reg_gen:15:regs|y\(0),
	datad => \inst1|DOUT[13]~34_combout\,
	combout => \inst1|DOUT[0]~260_combout\);

-- Location: LCCOMB_X110_Y18_N14
\inst1|DOUT[0]~263\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|DOUT[0]~263_combout\ = (\inst1|DOUT[0]~260_combout\ & ((\inst1|DOUT[0]~262_combout\) # ((!\inst1|DOUT[13]~34_combout\)))) # (!\inst1|DOUT[0]~260_combout\ & (((\inst1|DOUT[8]~178_combout\ & \inst1|DOUT[13]~34_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|DOUT[0]~262_combout\,
	datab => \inst1|DOUT[8]~178_combout\,
	datac => \inst1|DOUT[0]~260_combout\,
	datad => \inst1|DOUT[13]~34_combout\,
	combout => \inst1|DOUT[0]~263_combout\);

-- Location: LCCOMB_X111_Y18_N16
\inst1|DOUT[0]~257\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|DOUT[0]~257_combout\ = (\inst2|inst1|alu0|mux|Mux2~1_combout\ & (\inst2|inst1|alu0|mux|Mux1~3_combout\)) # (!\inst2|inst1|alu0|mux|Mux2~1_combout\ & ((\inst2|inst1|alu0|mux|Mux1~3_combout\ & ((\inst1|DOUT[8]~182_combout\))) # 
-- (!\inst2|inst1|alu0|mux|Mux1~3_combout\ & (\inst1|reg_gen:18:regs|y\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|inst1|alu0|mux|Mux2~1_combout\,
	datab => \inst2|inst1|alu0|mux|Mux1~3_combout\,
	datac => \inst1|reg_gen:18:regs|y\(0),
	datad => \inst1|DOUT[8]~182_combout\,
	combout => \inst1|DOUT[0]~257_combout\);

-- Location: LCCOMB_X111_Y18_N10
\inst1|DOUT[0]~258\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|DOUT[0]~258_combout\ = (\inst2|inst1|alu0|mux|Mux2~1_combout\ & ((\inst1|DOUT[0]~257_combout\ & ((\inst1|reg_gen:20:regs|y\(0)))) # (!\inst1|DOUT[0]~257_combout\ & (\inst1|reg_gen:16:regs|y\(0))))) # (!\inst2|inst1|alu0|mux|Mux2~1_combout\ & 
-- (((\inst1|DOUT[0]~257_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|inst1|alu0|mux|Mux2~1_combout\,
	datab => \inst1|reg_gen:16:regs|y\(0),
	datac => \inst1|reg_gen:20:regs|y\(0),
	datad => \inst1|DOUT[0]~257_combout\,
	combout => \inst1|DOUT[0]~258_combout\);

-- Location: LCCOMB_X111_Y20_N14
\inst1|DOUT[0]~259\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|DOUT[0]~259_combout\ = (\inst1|DOUT[0]~258_combout\ & ((\inst1|DOUT[7]~197_combout\) # ((\inst1|reg_gen:30:regs|y\(0) & \inst1|DOUT[5]~198_combout\)))) # (!\inst1|DOUT[0]~258_combout\ & (((\inst1|reg_gen:30:regs|y\(0) & 
-- \inst1|DOUT[5]~198_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|DOUT[0]~258_combout\,
	datab => \inst1|DOUT[7]~197_combout\,
	datac => \inst1|reg_gen:30:regs|y\(0),
	datad => \inst1|DOUT[5]~198_combout\,
	combout => \inst1|DOUT[0]~259_combout\);

-- Location: LCCOMB_X107_Y18_N26
\inst1|DOUT[0]~264\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|DOUT[0]~264_combout\ = (\inst1|DOUT[0]~259_combout\) # ((\inst1|DOUT[7]~205_combout\ & \inst1|DOUT[0]~263_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst1|DOUT[7]~205_combout\,
	datac => \inst1|DOUT[0]~263_combout\,
	datad => \inst1|DOUT[0]~259_combout\,
	combout => \inst1|DOUT[0]~264_combout\);

-- Location: LCCOMB_X107_Y18_N6
\inst1|DOUT[0]$latch~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|DOUT[0]$latch~0_combout\ = (GLOBAL(\inst1|DOUT[15]~51clkctrl_outclk\) & (\inst1|DOUT[0]~264_combout\)) # (!GLOBAL(\inst1|DOUT[15]~51clkctrl_outclk\) & ((\inst1|DOUT[0]$latch~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|DOUT[0]~264_combout\,
	datab => \inst1|DOUT[0]$latch~combout\,
	datad => \inst1|DOUT[15]~51clkctrl_outclk\,
	combout => \inst1|DOUT[0]$latch~0_combout\);

-- Location: LCCOMB_X106_Y20_N12
\inst1|DOUT[1]~256\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|DOUT[1]~256_combout\ = (\inst2|inst1|alu1|mux|Mux3~1_combout\ & (!\inst2|inst1|alu0|mux|Mux0~3_combout\ & ((\inst1|dcd|dcd_3|dcd|Mux7~7_combout\) # (\inst1|dcd|dcd_3|dcd|Mux7~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|dcd|dcd_3|dcd|Mux7~7_combout\,
	datab => \inst1|dcd|dcd_3|dcd|Mux7~0_combout\,
	datac => \inst2|inst1|alu1|mux|Mux3~1_combout\,
	datad => \inst2|inst1|alu0|mux|Mux0~3_combout\,
	combout => \inst1|DOUT[1]~256_combout\);

-- Location: LCCOMB_X106_Y20_N18
\inst1|comb~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|comb~5_combout\ = (\inst1|DOUT[1]~256_combout\ & ((\inst1|DOUT[7]~207_combout\) # (!\inst|Mux5~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Mux5~0_combout\,
	datab => \inst1|DOUT[7]~207_combout\,
	datad => \inst1|DOUT[1]~256_combout\,
	combout => \inst1|comb~5_combout\);

-- Location: LCCOMB_X106_Y20_N4
\inst1|comb~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|comb~4_combout\ = (!\inst1|DOUT[1]~256_combout\ & ((\inst1|DOUT[7]~207_combout\) # (!\inst|Mux5~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst1|DOUT[7]~207_combout\,
	datac => \inst|Mux5~0_combout\,
	datad => \inst1|DOUT[1]~256_combout\,
	combout => \inst1|comb~4_combout\);

-- Location: LCCOMB_X107_Y18_N18
\inst1|DOUT[0]$latch\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|DOUT[0]$latch~combout\ = (!\inst1|comb~4_combout\ & ((\inst1|DOUT[0]$latch~0_combout\) # (\inst1|comb~5_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|DOUT[0]$latch~0_combout\,
	datac => \inst1|comb~5_combout\,
	datad => \inst1|comb~4_combout\,
	combout => \inst1|DOUT[0]$latch~combout\);

-- Location: LCCOMB_X107_Y18_N2
\inst3|OUT16B[0]~37\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|OUT16B[0]~37_combout\ = (\inst|Mux5~0_combout\ & (((\inst1|DOUT[0]$latch~combout\)) # (!\inst1|DOUT[7]_2052~combout\))) # (!\inst|Mux5~0_combout\ & (((\inst2|inst1|alu0|mux|Mux3~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110001110100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|DOUT[7]_2052~combout\,
	datab => \inst|Mux5~0_combout\,
	datac => \inst2|inst1|alu0|mux|Mux3~0_combout\,
	datad => \inst1|DOUT[0]$latch~combout\,
	combout => \inst3|OUT16B[0]~37_combout\);

-- Location: LCCOMB_X106_Y22_N22
\inst2|inst|reg_gen:2:regs|reg_1|y[0]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|inst|reg_gen:2:regs|reg_1|y[0]~feeder_combout\ = \inst3|OUT16B[0]~37_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst3|OUT16B[0]~37_combout\,
	combout => \inst2|inst|reg_gen:2:regs|reg_1|y[0]~feeder_combout\);

-- Location: FF_X106_Y22_N23
\inst2|inst|reg_gen:2:regs|reg_1|y[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \SW17~input_o\,
	d => \inst2|inst|reg_gen:2:regs|reg_1|y[0]~feeder_combout\,
	ena => \inst2|inst|add_reg1_dcd|Mux3~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst2|inst|reg_gen:2:regs|reg_1|y\(0));

-- Location: LCCOMB_X107_Y18_N28
\inst2|inst|mux_2|mux_1|mux_generate:0:mux_i|Mux3~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|inst|mux_2|mux_1|mux_generate:0:mux_i|Mux3~0_combout\ = (\inst4|inst1|data_out[6]~17_combout\ & ((\inst4|inst1|exception~2_combout\ & (\inst2|inst|reg_gen:2:regs|reg_1|y\(0))) # (!\inst4|inst1|exception~2_combout\ & 
-- ((\inst2|inst|reg_gen:3:regs|reg_1|y\(0)))))) # (!\inst4|inst1|data_out[6]~17_combout\ & (\inst2|inst|reg_gen:2:regs|reg_1|y\(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|inst|reg_gen:2:regs|reg_1|y\(0),
	datab => \inst4|inst1|data_out[6]~17_combout\,
	datac => \inst2|inst|reg_gen:3:regs|reg_1|y\(0),
	datad => \inst4|inst1|exception~2_combout\,
	combout => \inst2|inst|mux_2|mux_1|mux_generate:0:mux_i|Mux3~0_combout\);

-- Location: LCCOMB_X108_Y22_N16
\inst2|inst2|OUT16B[0]~16\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|inst2|OUT16B[0]~16_combout\ = (!\inst|Mux7~0_combout\ & ((\inst2|inst|mux_2|mux_1|mux_generate:0:mux_i|Mux2~7_combout\ & (\inst2|inst|mux_2|mux_1|mux_generate:0:mux_i|Mux3~0_combout\)) # 
-- (!\inst2|inst|mux_2|mux_1|mux_generate:0:mux_i|Mux2~7_combout\ & ((\inst2|inst|mux_2|mux_1|mux_generate:0:mux_i|Mux3~3_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|inst|mux_2|mux_1|mux_generate:0:mux_i|Mux3~0_combout\,
	datab => \inst2|inst|mux_2|mux_1|mux_generate:0:mux_i|Mux2~7_combout\,
	datac => \inst2|inst|mux_2|mux_1|mux_generate:0:mux_i|Mux3~3_combout\,
	datad => \inst|Mux7~0_combout\,
	combout => \inst2|inst2|OUT16B[0]~16_combout\);

-- Location: LCCOMB_X111_Y22_N30
\inst2|inst2|OUT16B[0]~18\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|inst2|OUT16B[0]~18_combout\ = (\inst2|inst2|OUT16B[0]~27_combout\) # (\inst2|inst2|OUT16B[0]~16_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst2|inst2|OUT16B[0]~27_combout\,
	datad => \inst2|inst2|OUT16B[0]~16_combout\,
	combout => \inst2|inst2|OUT16B[0]~18_combout\);

-- Location: LCCOMB_X111_Y21_N24
\inst1|DOUT[13]~21\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|DOUT[13]~21_combout\ = (\inst2|inst2|OUT16B[0]~18_combout\ & (\inst2|inst3|DOUT[1]~4_combout\ $ (((!\inst2|inst|mux_1|mux_1|mux_generate:0:mux_i|Mux3~5_combout\ & !\inst2|inst3|DOUT[0]~2_combout\))))) # (!\inst2|inst2|OUT16B[0]~18_combout\ & 
-- ((\inst2|inst3|DOUT[0]~2_combout\ $ (!\inst2|inst3|DOUT[1]~4_combout\)) # (!\inst2|inst|mux_1|mux_1|mux_generate:0:mux_i|Mux3~5_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100100010111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|inst2|OUT16B[0]~18_combout\,
	datab => \inst2|inst|mux_1|mux_1|mux_generate:0:mux_i|Mux3~5_combout\,
	datac => \inst2|inst3|DOUT[0]~2_combout\,
	datad => \inst2|inst3|DOUT[1]~4_combout\,
	combout => \inst1|DOUT[13]~21_combout\);

-- Location: LCCOMB_X109_Y20_N20
\inst1|DOUT[7]~205\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|DOUT[7]~205_combout\ = (\inst1|DOUT[13]~21_combout\ & (((\inst2|inst1|alu0|mux|Mux0~3_combout\)))) # (!\inst1|DOUT[13]~21_combout\ & ((\inst1|dcd|dcd_3|dcd|Mux7~1_combout\ & ((\inst2|inst1|alu1|mux|Mux3~1_combout\) # 
-- (!\inst2|inst1|alu0|mux|Mux0~3_combout\))) # (!\inst1|dcd|dcd_3|dcd|Mux7~1_combout\ & ((\inst2|inst1|alu0|mux|Mux0~3_combout\) # (!\inst2|inst1|alu1|mux|Mux3~1_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101101000101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|DOUT[13]~21_combout\,
	datab => \inst1|dcd|dcd_3|dcd|Mux7~1_combout\,
	datac => \inst2|inst1|alu1|mux|Mux3~1_combout\,
	datad => \inst2|inst1|alu0|mux|Mux0~3_combout\,
	combout => \inst1|DOUT[7]~205_combout\);

-- Location: LCCOMB_X110_Y17_N0
\inst1|DOUT[1]~252\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|DOUT[1]~252_combout\ = (\inst1|DOUT[5]~201_combout\ & (((\inst1|DOUT[5]~22_combout\)))) # (!\inst1|DOUT[5]~201_combout\ & ((\inst1|DOUT[5]~22_combout\ & (\inst1|DOUT[9]~160_combout\)) # (!\inst1|DOUT[5]~22_combout\ & 
-- ((\inst1|DOUT[9]~171_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110001111100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|DOUT[9]~160_combout\,
	datab => \inst1|DOUT[5]~201_combout\,
	datac => \inst1|DOUT[5]~22_combout\,
	datad => \inst1|DOUT[9]~171_combout\,
	combout => \inst1|DOUT[1]~252_combout\);

-- Location: LCCOMB_X110_Y17_N26
\inst1|DOUT[1]~253\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|DOUT[1]~253_combout\ = (\inst1|DOUT[5]~201_combout\ & ((\inst1|DOUT[1]~252_combout\ & (\inst1|DOUT[9]~164_combout\)) # (!\inst1|DOUT[1]~252_combout\ & ((\inst1|DOUT[9]~167_combout\))))) # (!\inst1|DOUT[5]~201_combout\ & 
-- (((\inst1|DOUT[1]~252_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|DOUT[9]~164_combout\,
	datab => \inst1|DOUT[5]~201_combout\,
	datac => \inst1|DOUT[9]~167_combout\,
	datad => \inst1|DOUT[1]~252_combout\,
	combout => \inst1|DOUT[1]~253_combout\);

-- Location: LCCOMB_X110_Y17_N18
\inst1|DOUT[1]~251\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|DOUT[1]~251_combout\ = (\inst1|DOUT[13]~34_combout\ & (((\inst1|DOUT[9]~158_combout\) # (\inst1|DOUT[13]~29_combout\)))) # (!\inst1|DOUT[13]~34_combout\ & (\inst1|DOUT[9]~168_combout\ & ((!\inst1|DOUT[13]~29_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|DOUT[9]~168_combout\,
	datab => \inst1|DOUT[13]~34_combout\,
	datac => \inst1|DOUT[9]~158_combout\,
	datad => \inst1|DOUT[13]~29_combout\,
	combout => \inst1|DOUT[1]~251_combout\);

-- Location: LCCOMB_X110_Y17_N8
\inst1|DOUT[1]~254\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|DOUT[1]~254_combout\ = (\inst1|DOUT[13]~29_combout\ & ((\inst1|DOUT[1]~251_combout\ & ((\inst1|DOUT[1]~253_combout\))) # (!\inst1|DOUT[1]~251_combout\ & (\inst1|reg_gen:15:regs|y\(1))))) # (!\inst1|DOUT[13]~29_combout\ & 
-- (((\inst1|DOUT[1]~251_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|DOUT[13]~29_combout\,
	datab => \inst1|reg_gen:15:regs|y\(1),
	datac => \inst1|DOUT[1]~253_combout\,
	datad => \inst1|DOUT[1]~251_combout\,
	combout => \inst1|DOUT[1]~254_combout\);

-- Location: LCCOMB_X111_Y18_N6
\inst1|DOUT[1]~248\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|DOUT[1]~248_combout\ = (\inst2|inst1|alu0|mux|Mux2~1_combout\ & (((\inst2|inst1|alu0|mux|Mux1~3_combout\)))) # (!\inst2|inst1|alu0|mux|Mux2~1_combout\ & ((\inst2|inst1|alu0|mux|Mux1~3_combout\ & (\inst1|DOUT[9]~162_combout\)) # 
-- (!\inst2|inst1|alu0|mux|Mux1~3_combout\ & ((\inst1|reg_gen:18:regs|y\(1))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|inst1|alu0|mux|Mux2~1_combout\,
	datab => \inst1|DOUT[9]~162_combout\,
	datac => \inst1|reg_gen:18:regs|y\(1),
	datad => \inst2|inst1|alu0|mux|Mux1~3_combout\,
	combout => \inst1|DOUT[1]~248_combout\);

-- Location: LCCOMB_X111_Y18_N22
\inst1|DOUT[1]~249\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|DOUT[1]~249_combout\ = (\inst1|DOUT[1]~248_combout\ & ((\inst1|reg_gen:20:regs|y\(1)) # ((!\inst2|inst1|alu0|mux|Mux2~1_combout\)))) # (!\inst1|DOUT[1]~248_combout\ & (((\inst1|reg_gen:16:regs|y\(1) & \inst2|inst1|alu0|mux|Mux2~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|DOUT[1]~248_combout\,
	datab => \inst1|reg_gen:20:regs|y\(1),
	datac => \inst1|reg_gen:16:regs|y\(1),
	datad => \inst2|inst1|alu0|mux|Mux2~1_combout\,
	combout => \inst1|DOUT[1]~249_combout\);

-- Location: LCCOMB_X110_Y17_N12
\inst1|DOUT[1]~250\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|DOUT[1]~250_combout\ = (\inst1|DOUT[1]~249_combout\ & ((\inst1|DOUT[7]~197_combout\) # ((\inst1|DOUT[5]~198_combout\ & \inst1|reg_gen:30:regs|y\(1))))) # (!\inst1|DOUT[1]~249_combout\ & (\inst1|DOUT[5]~198_combout\ & 
-- (\inst1|reg_gen:30:regs|y\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|DOUT[1]~249_combout\,
	datab => \inst1|DOUT[5]~198_combout\,
	datac => \inst1|reg_gen:30:regs|y\(1),
	datad => \inst1|DOUT[7]~197_combout\,
	combout => \inst1|DOUT[1]~250_combout\);

-- Location: LCCOMB_X110_Y17_N14
\inst1|DOUT[1]~255\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|DOUT[1]~255_combout\ = (\inst1|DOUT[1]~250_combout\) # ((\inst1|DOUT[7]~205_combout\ & \inst1|DOUT[1]~254_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst1|DOUT[7]~205_combout\,
	datac => \inst1|DOUT[1]~254_combout\,
	datad => \inst1|DOUT[1]~250_combout\,
	combout => \inst1|DOUT[1]~255_combout\);

-- Location: LCCOMB_X110_Y17_N2
\inst1|DOUT[1]$latch~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|DOUT[1]$latch~0_combout\ = (GLOBAL(\inst1|DOUT[15]~51clkctrl_outclk\) & (\inst1|DOUT[1]~255_combout\)) # (!GLOBAL(\inst1|DOUT[15]~51clkctrl_outclk\) & ((\inst1|DOUT[1]$latch~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst1|DOUT[1]~255_combout\,
	datac => \inst1|DOUT[1]$latch~combout\,
	datad => \inst1|DOUT[15]~51clkctrl_outclk\,
	combout => \inst1|DOUT[1]$latch~0_combout\);

-- Location: LCCOMB_X107_Y18_N30
\inst1|DOUT[1]$latch\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|DOUT[1]$latch~combout\ = (!\inst1|comb~4_combout\ & ((\inst1|DOUT[1]$latch~0_combout\) # (\inst1|comb~5_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|DOUT[1]$latch~0_combout\,
	datac => \inst1|comb~5_combout\,
	datad => \inst1|comb~4_combout\,
	combout => \inst1|DOUT[1]$latch~combout\);

-- Location: LCCOMB_X107_Y18_N22
\inst3|OUT16B[1]~36\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|OUT16B[1]~36_combout\ = (\inst|Mux5~0_combout\ & (((\inst1|DOUT[1]$latch~combout\) # (!\inst1|DOUT[7]_2052~combout\)))) # (!\inst|Mux5~0_combout\ & (!\inst2|inst1|alu0|mux|Mux2~1_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101000111011101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|inst1|alu0|mux|Mux2~1_combout\,
	datab => \inst|Mux5~0_combout\,
	datac => \inst1|DOUT[1]$latch~combout\,
	datad => \inst1|DOUT[7]_2052~combout\,
	combout => \inst3|OUT16B[1]~36_combout\);

-- Location: LCCOMB_X108_Y18_N12
\inst2|inst|reg_gen:3:regs|reg_1|y[1]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|inst|reg_gen:3:regs|reg_1|y[1]~feeder_combout\ = \inst3|OUT16B[1]~36_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst3|OUT16B[1]~36_combout\,
	combout => \inst2|inst|reg_gen:3:regs|reg_1|y[1]~feeder_combout\);

-- Location: FF_X108_Y18_N13
\inst2|inst|reg_gen:3:regs|reg_1|y[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \SW17~input_o\,
	d => \inst2|inst|reg_gen:3:regs|reg_1|y[1]~feeder_combout\,
	ena => \inst2|inst|add_reg1_dcd|Mux3~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst2|inst|reg_gen:3:regs|reg_1|y\(1));

-- Location: LCCOMB_X108_Y18_N30
\inst2|inst|mux_1|mux_1|mux_generate:0:mux_i|Mux2~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|inst|mux_1|mux_1|mux_generate:0:mux_i|Mux2~2_combout\ = (\inst4|inst1|data_out[9]~14_combout\ & ((\inst4|inst1|exception~2_combout\ & ((\inst2|inst|reg_gen:2:regs|reg_1|y\(1)))) # (!\inst4|inst1|exception~2_combout\ & 
-- (\inst2|inst|reg_gen:3:regs|reg_1|y\(1))))) # (!\inst4|inst1|data_out[9]~14_combout\ & (((\inst2|inst|reg_gen:2:regs|reg_1|y\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|inst|reg_gen:3:regs|reg_1|y\(1),
	datab => \inst2|inst|reg_gen:2:regs|reg_1|y\(1),
	datac => \inst4|inst1|data_out[9]~14_combout\,
	datad => \inst4|inst1|exception~2_combout\,
	combout => \inst2|inst|mux_1|mux_1|mux_generate:0:mux_i|Mux2~2_combout\);

-- Location: LCCOMB_X107_Y20_N6
\inst2|inst|mux_1|mux_1|mux_generate:0:mux_i|Mux2~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|inst|mux_1|mux_1|mux_generate:0:mux_i|Mux2~6_combout\ = (\inst2|inst|reg_gen:1:regs|reg_1|y\(1) & (!\inst4|inst1|exception~2_combout\ & ((\inst4|inst1|data_out[9]~13_combout\) # (\inst4|inst|reg|reg_1|y\(5)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|inst1|data_out[9]~13_combout\,
	datab => \inst4|inst|reg|reg_1|y\(5),
	datac => \inst2|inst|reg_gen:1:regs|reg_1|y\(1),
	datad => \inst4|inst1|exception~2_combout\,
	combout => \inst2|inst|mux_1|mux_1|mux_generate:0:mux_i|Mux2~6_combout\);

-- Location: LCCOMB_X107_Y20_N20
\inst2|inst|mux_1|mux_1|mux_generate:0:mux_i|Mux2~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|inst|mux_1|mux_1|mux_generate:0:mux_i|Mux2~3_combout\ = (\inst2|inst|mux_1|mux_1|mux_generate:3:mux_i|Mux3~6_combout\ & (((\inst2|inst|reg_gen:6:regs|reg_1|y\(1) & \inst2|inst|mux_1|mux_1|mux_generate:3:mux_i|Mux3~5_combout\)))) # 
-- (!\inst2|inst|mux_1|mux_1|mux_generate:3:mux_i|Mux3~6_combout\ & ((\inst2|inst|mux_1|mux_1|mux_generate:0:mux_i|Mux2~6_combout\) # ((!\inst2|inst|mux_1|mux_1|mux_generate:3:mux_i|Mux3~5_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100101000001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|inst|mux_1|mux_1|mux_generate:0:mux_i|Mux2~6_combout\,
	datab => \inst2|inst|reg_gen:6:regs|reg_1|y\(1),
	datac => \inst2|inst|mux_1|mux_1|mux_generate:3:mux_i|Mux3~6_combout\,
	datad => \inst2|inst|mux_1|mux_1|mux_generate:3:mux_i|Mux3~5_combout\,
	combout => \inst2|inst|mux_1|mux_1|mux_generate:0:mux_i|Mux2~3_combout\);

-- Location: LCCOMB_X107_Y20_N8
\inst2|inst|mux_1|mux_1|mux_generate:0:mux_i|Mux2~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|inst|mux_1|mux_1|mux_generate:0:mux_i|Mux2~4_combout\ = (\inst2|inst|mux_1|mux_1|mux_generate:3:mux_i|Mux3~4_combout\ & (((\inst2|inst|mux_1|mux_1|mux_generate:0:mux_i|Mux2~3_combout\)))) # 
-- (!\inst2|inst|mux_1|mux_1|mux_generate:3:mux_i|Mux3~4_combout\ & ((\inst2|inst|mux_1|mux_1|mux_generate:0:mux_i|Mux2~3_combout\ & (\inst2|inst|reg_gen:4:regs|reg_1|y\(1))) # (!\inst2|inst|mux_1|mux_1|mux_generate:0:mux_i|Mux2~3_combout\ & 
-- ((\inst2|inst|reg_gen:5:regs|reg_1|y\(1))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|inst|mux_1|mux_1|mux_generate:3:mux_i|Mux3~4_combout\,
	datab => \inst2|inst|reg_gen:4:regs|reg_1|y\(1),
	datac => \inst2|inst|reg_gen:5:regs|reg_1|y\(1),
	datad => \inst2|inst|mux_1|mux_1|mux_generate:0:mux_i|Mux2~3_combout\,
	combout => \inst2|inst|mux_1|mux_1|mux_generate:0:mux_i|Mux2~4_combout\);

-- Location: LCCOMB_X108_Y21_N6
\inst2|inst|mux_1|mux_1|mux_generate:0:mux_i|Mux2~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|inst|mux_1|mux_1|mux_generate:0:mux_i|Mux2~5_combout\ = (\inst2|inst|mux_1|mux_1|mux_generate:3:mux_i|Mux3~12_combout\ & (\inst2|inst|mux_1|mux_1|mux_generate:0:mux_i|Mux2~2_combout\)) # 
-- (!\inst2|inst|mux_1|mux_1|mux_generate:3:mux_i|Mux3~12_combout\ & ((\inst2|inst|mux_1|mux_1|mux_generate:0:mux_i|Mux2~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst2|inst|mux_1|mux_1|mux_generate:0:mux_i|Mux2~2_combout\,
	datac => \inst2|inst|mux_1|mux_1|mux_generate:3:mux_i|Mux3~12_combout\,
	datad => \inst2|inst|mux_1|mux_1|mux_generate:0:mux_i|Mux2~4_combout\,
	combout => \inst2|inst|mux_1|mux_1|mux_generate:0:mux_i|Mux2~5_combout\);

-- Location: LCCOMB_X111_Y21_N10
\inst2|inst1|alu0|adder|S[1]\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|inst1|alu0|adder|S\(1) = \inst2|inst|mux_1|mux_1|mux_generate:0:mux_i|Mux2~5_combout\ $ (\inst2|inst1|alu0|inverter|Rt\(1) $ (((\inst2|inst1|alu0|adder|C~0_combout\) # (\inst2|inst1|alu0|adder|G\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001100110010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|inst|mux_1|mux_1|mux_generate:0:mux_i|Mux2~5_combout\,
	datab => \inst2|inst1|alu0|inverter|Rt\(1),
	datac => \inst2|inst1|alu0|adder|C~0_combout\,
	datad => \inst2|inst1|alu0|adder|G\(0),
	combout => \inst2|inst1|alu0|adder|S\(1));

-- Location: LCCOMB_X106_Y21_N20
\inst2|inst2|OUT16B[1]~26\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|inst2|OUT16B[1]~26_combout\ = (\inst|Mux7~0_combout\ & (!\inst4|inst1|exception~2_combout\ & ((\inst4|inst1|data_out[1]~11_combout\)))) # (!\inst|Mux7~0_combout\ & (((\inst2|inst|mux_2|mux_1|mux_generate:0:mux_i|Mux2~8_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111010000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|inst1|exception~2_combout\,
	datab => \inst|Mux7~0_combout\,
	datac => \inst2|inst|mux_2|mux_1|mux_generate:0:mux_i|Mux2~8_combout\,
	datad => \inst4|inst1|data_out[1]~11_combout\,
	combout => \inst2|inst2|OUT16B[1]~26_combout\);

-- Location: LCCOMB_X111_Y21_N4
\inst2|inst1|alu0|mux|Mux2~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|inst1|alu0|mux|Mux2~0_combout\ = (!\inst2|inst3|DOUT[1]~4_combout\ & ((\inst2|inst|mux_1|mux_1|mux_generate:0:mux_i|Mux2~5_combout\ & (!\inst2|inst3|DOUT[0]~2_combout\ & !\inst2|inst2|OUT16B[1]~26_combout\)) # 
-- (!\inst2|inst|mux_1|mux_1|mux_generate:0:mux_i|Mux2~5_combout\ & ((!\inst2|inst2|OUT16B[1]~26_combout\) # (!\inst2|inst3|DOUT[0]~2_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000100010011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|inst|mux_1|mux_1|mux_generate:0:mux_i|Mux2~5_combout\,
	datab => \inst2|inst3|DOUT[1]~4_combout\,
	datac => \inst2|inst3|DOUT[0]~2_combout\,
	datad => \inst2|inst2|OUT16B[1]~26_combout\,
	combout => \inst2|inst1|alu0|mux|Mux2~0_combout\);

-- Location: LCCOMB_X111_Y21_N14
\inst2|inst1|alu0|mux|Mux2~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|inst1|alu0|mux|Mux2~1_combout\ = (\inst2|inst1|alu0|mux|Mux2~0_combout\) # ((\inst2|inst3|DOUT[1]~4_combout\ & ((\inst2|inst3|DOUT[0]~2_combout\) # (!\inst2|inst1|alu0|adder|S\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110011110100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|inst1|alu0|adder|S\(1),
	datab => \inst2|inst3|DOUT[1]~4_combout\,
	datac => \inst2|inst1|alu0|mux|Mux2~0_combout\,
	datad => \inst2|inst3|DOUT[0]~2_combout\,
	combout => \inst2|inst1|alu0|mux|Mux2~1_combout\);

-- Location: LCCOMB_X111_Y20_N12
\inst1|dcd|dcd_3|dcd|Mux7~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|dcd|dcd_3|dcd|Mux7~0_combout\ = (\inst2|inst1|alu0|mux|Mux2~1_combout\ & (!\inst2|inst1|alu0|mux|Mux3~0_combout\ & !\inst2|inst1|alu0|mux|Mux1~3_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst2|inst1|alu0|mux|Mux2~1_combout\,
	datac => \inst2|inst1|alu0|mux|Mux3~0_combout\,
	datad => \inst2|inst1|alu0|mux|Mux1~3_combout\,
	combout => \inst1|dcd|dcd_3|dcd|Mux7~0_combout\);

-- Location: LCCOMB_X108_Y23_N26
\inst|Mux3~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Mux3~3_combout\ = (!\inst2|inst1|alu3|mux|Mux2~0_combout\ & (!\inst2|inst1|alu3|mux|Mux3~1_combout\ & ((!\inst2|inst1|alu3|adder|S\(1)) # (!\inst2|inst1|alu0|mux|Mux1~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000100010001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|inst1|alu3|mux|Mux2~0_combout\,
	datab => \inst2|inst1|alu3|mux|Mux3~1_combout\,
	datac => \inst2|inst1|alu0|mux|Mux1~4_combout\,
	datad => \inst2|inst1|alu3|adder|S\(1),
	combout => \inst|Mux3~3_combout\);

-- Location: LCCOMB_X108_Y23_N8
\inst2|inst1|alu3|adder|S[3]\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|inst1|alu3|adder|S\(3) = \inst2|inst3|DOUT[2]~3_combout\ $ (\inst2|inst2|OUT16B[15]~28_combout\ $ (\inst2|inst1|alu3|adder|C[3]~2_combout\ $ (\inst2|inst|mux_1|mux_1|mux_generate:3:mux_i|Mux0~5_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|inst3|DOUT[2]~3_combout\,
	datab => \inst2|inst2|OUT16B[15]~28_combout\,
	datac => \inst2|inst1|alu3|adder|C[3]~2_combout\,
	datad => \inst2|inst|mux_1|mux_1|mux_generate:3:mux_i|Mux0~5_combout\,
	combout => \inst2|inst1|alu3|adder|S\(3));

-- Location: LCCOMB_X108_Y23_N22
\inst2|inst1|alu3|mux|Mux0~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|inst1|alu3|mux|Mux0~1_combout\ = (\inst2|inst1|alu3|mux|Mux0~0_combout\) # ((\inst2|inst1|alu0|mux|Mux1~4_combout\ & \inst2|inst1|alu3|adder|S\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|inst1|alu0|mux|Mux1~4_combout\,
	datac => \inst2|inst1|alu3|adder|S\(3),
	datad => \inst2|inst1|alu3|mux|Mux0~0_combout\,
	combout => \inst2|inst1|alu3|mux|Mux0~1_combout\);

-- Location: LCCOMB_X109_Y23_N28
\inst|Mux3~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Mux3~2_combout\ = (!\inst2|inst1|alu1|mux|Mux0~1_combout\ & (!\inst2|inst1|alu1|mux|Mux2~1_combout\ & (!\inst2|inst1|alu2|mux|Mux0~1_combout\ & !\inst2|inst1|alu1|mux|Mux1~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|inst1|alu1|mux|Mux0~1_combout\,
	datab => \inst2|inst1|alu1|mux|Mux2~1_combout\,
	datac => \inst2|inst1|alu2|mux|Mux0~1_combout\,
	datad => \inst2|inst1|alu1|mux|Mux1~1_combout\,
	combout => \inst|Mux3~2_combout\);

-- Location: LCCOMB_X108_Y23_N4
\inst|Mux3~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Mux3~4_combout\ = (\inst|Mux3~3_combout\ & (!\inst2|inst1|alu3|mux|Mux1~2_combout\ & (!\inst2|inst1|alu3|mux|Mux0~1_combout\ & \inst|Mux3~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Mux3~3_combout\,
	datab => \inst2|inst1|alu3|mux|Mux1~2_combout\,
	datac => \inst2|inst1|alu3|mux|Mux0~1_combout\,
	datad => \inst|Mux3~2_combout\,
	combout => \inst|Mux3~4_combout\);

-- Location: LCCOMB_X108_Y22_N4
\inst|Mux9~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Mux9~0_combout\ = (!\inst4|inst1|INS_OUT[13]~4_combout\ & (!\inst4|inst1|INS_OUT[15]~15_combout\ & (\inst4|inst1|INS_OUT[14]~5_combout\ & !\inst4|inst1|INS_OUT[12]~6_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|inst1|INS_OUT[13]~4_combout\,
	datab => \inst4|inst1|INS_OUT[15]~15_combout\,
	datac => \inst4|inst1|INS_OUT[14]~5_combout\,
	datad => \inst4|inst1|INS_OUT[12]~6_combout\,
	combout => \inst|Mux9~0_combout\);

-- Location: LCCOMB_X110_Y23_N26
\inst|Mux3~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Mux3~5_combout\ = (\inst|Mux9~0_combout\ & (!\inst2|inst1|alu2|mux|Mux3~1_combout\ & (!\inst2|inst1|alu2|mux|Mux1~1_combout\ & !\inst2|inst1|alu2|mux|Mux2~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Mux9~0_combout\,
	datab => \inst2|inst1|alu2|mux|Mux3~1_combout\,
	datac => \inst2|inst1|alu2|mux|Mux1~1_combout\,
	datad => \inst2|inst1|alu2|mux|Mux2~1_combout\,
	combout => \inst|Mux3~5_combout\);

-- Location: LCCOMB_X108_Y23_N18
\inst|Mux3~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Mux3~6_combout\ = (\inst|Mux3~7_combout\ & (\inst1|dcd|dcd_3|dcd|Mux7~0_combout\ & (\inst|Mux3~4_combout\ & \inst|Mux3~5_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Mux3~7_combout\,
	datab => \inst1|dcd|dcd_3|dcd|Mux7~0_combout\,
	datac => \inst|Mux3~4_combout\,
	datad => \inst|Mux3~5_combout\,
	combout => \inst|Mux3~6_combout\);

-- Location: LCCOMB_X107_Y24_N30
\inst4|JUMPMUX|OUT16B[1]~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|JUMPMUX|OUT16B[1]~14_combout\ = (\inst|Mux2~0_combout\ & (((\inst4|inst1|INS_OUT[0]~12_combout\)))) # (!\inst|Mux2~0_combout\ & (\inst4|inst|reg|reg_1|y\(1) $ (((!\inst|Mux3~6_combout\) # (!\inst4|inst1|INS_OUT[0]~12_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000110110001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Mux2~0_combout\,
	datab => \inst4|inst|reg|reg_1|y\(1),
	datac => \inst4|inst1|INS_OUT[0]~12_combout\,
	datad => \inst|Mux3~6_combout\,
	combout => \inst4|JUMPMUX|OUT16B[1]~14_combout\);

-- Location: LCCOMB_X107_Y22_N10
\inst4|inst|to_pc[1]\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|inst|to_pc\(1) = (\inst4|JUMPMUX|OUT16B[1]~14_combout\ & !\SW0~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|JUMPMUX|OUT16B[1]~14_combout\,
	datad => \SW0~input_o\,
	combout => \inst4|inst|to_pc\(1));

-- Location: FF_X107_Y22_N11
\inst4|inst|reg|reg_1|y[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \SW17~input_o\,
	d => \inst4|inst|to_pc\(1),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst4|inst|reg|reg_1|y\(1));

-- Location: LCCOMB_X107_Y26_N28
\inst4|inst2|alu0|alu0|adder|C~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|inst2|alu0|alu0|adder|C~0_combout\ = (\inst4|inst|reg|reg_1|y\(1) & \inst4|inst|reg|reg_1|y\(2))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|inst|reg|reg_1|y\(1),
	datad => \inst4|inst|reg|reg_1|y\(2),
	combout => \inst4|inst2|alu0|alu0|adder|C~0_combout\);

-- Location: LCCOMB_X107_Y26_N18
\inst4|inst3|add_1|C[3]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|inst3|add_1|C[3]~0_combout\ = (\inst4|inst|reg|reg_1|y\(2) & (!\inst4|inst|reg|reg_1|y\(1) & ((\inst4|inst1|INS_OUT[0]~12_combout\) # (\inst4|inst1|INS_OUT[1]~11_combout\)))) # (!\inst4|inst|reg|reg_1|y\(2) & (\inst4|inst1|INS_OUT[1]~11_combout\ & 
-- ((\inst4|inst|reg|reg_1|y\(1)) # (\inst4|inst1|INS_OUT[0]~12_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111011001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|inst|reg|reg_1|y\(1),
	datab => \inst4|inst|reg|reg_1|y\(2),
	datac => \inst4|inst1|INS_OUT[0]~12_combout\,
	datad => \inst4|inst1|INS_OUT[1]~11_combout\,
	combout => \inst4|inst3|add_1|C[3]~0_combout\);

-- Location: LCCOMB_X107_Y26_N30
\inst4|inst3|add_1|S[3]\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|inst3|add_1|S\(3) = \inst4|inst1|INS_OUT[2]~10_combout\ $ (\inst4|inst3|add_1|C[3]~0_combout\ $ (\inst4|inst|reg|reg_1|y\(3) $ (\inst4|inst2|alu0|alu0|adder|C~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|inst1|INS_OUT[2]~10_combout\,
	datab => \inst4|inst3|add_1|C[3]~0_combout\,
	datac => \inst4|inst|reg|reg_1|y\(3),
	datad => \inst4|inst2|alu0|alu0|adder|C~0_combout\,
	combout => \inst4|inst3|add_1|S\(3));

-- Location: LCCOMB_X107_Y26_N6
\inst4|inst7|OUT16B[3]~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|inst7|OUT16B[3]~12_combout\ = (\inst|Mux3~6_combout\ & (((\inst4|inst3|add_1|S\(3))))) # (!\inst|Mux3~6_combout\ & (\inst4|inst|reg|reg_1|y\(3) $ ((\inst4|inst2|alu0|alu0|adder|C~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111011000000110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|inst|reg|reg_1|y\(3),
	datab => \inst4|inst2|alu0|alu0|adder|C~0_combout\,
	datac => \inst|Mux3~6_combout\,
	datad => \inst4|inst3|add_1|S\(3),
	combout => \inst4|inst7|OUT16B[3]~12_combout\);

-- Location: LCCOMB_X107_Y22_N26
\inst4|inst|to_pc[3]\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|inst|to_pc\(3) = (!\SW0~input_o\ & ((\inst|Mux2~0_combout\ & (\inst4|inst1|INS_OUT[2]~10_combout\)) # (!\inst|Mux2~0_combout\ & ((\inst4|inst7|OUT16B[3]~12_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Mux2~0_combout\,
	datab => \inst4|inst1|INS_OUT[2]~10_combout\,
	datac => \inst4|inst7|OUT16B[3]~12_combout\,
	datad => \SW0~input_o\,
	combout => \inst4|inst|to_pc\(3));

-- Location: FF_X107_Y22_N27
\inst4|inst|reg|reg_1|y[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \SW17~input_o\,
	d => \inst4|inst|to_pc\(3),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst4|inst|reg|reg_1|y\(3));

-- Location: LCCOMB_X107_Y22_N8
\inst4|inst1|data_out[1]~11\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|inst1|data_out[1]~11_combout\ = (!\inst4|inst1|dec|en_0~combout\ & ((\inst4|inst|reg|reg_1|y\(3) & (!\inst4|inst|reg|reg_1|y\(2))) # (!\inst4|inst|reg|reg_1|y\(3) & ((\inst4|inst|reg|reg_1|y\(1))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000011100000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|inst|reg|reg_1|y\(3),
	datab => \inst4|inst|reg|reg_1|y\(2),
	datac => \inst4|inst1|dec|en_0~combout\,
	datad => \inst4|inst|reg|reg_1|y\(1),
	combout => \inst4|inst1|data_out[1]~11_combout\);

-- Location: LCCOMB_X106_Y21_N6
\inst4|inst1|INS_OUT[1]~11\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|inst1|INS_OUT[1]~11_combout\ = (!\inst4|inst1|exception~2_combout\ & \inst4|inst1|data_out[1]~11_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst4|inst1|exception~2_combout\,
	datad => \inst4|inst1|data_out[1]~11_combout\,
	combout => \inst4|inst1|INS_OUT[1]~11_combout\);

-- Location: LCCOMB_X107_Y26_N20
\inst4|inst3|add_1|S[2]\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|inst3|add_1|S\(2) = \inst4|inst|reg|reg_1|y\(2) $ (\inst4|inst1|INS_OUT[1]~11_combout\ $ (((\inst4|inst|reg|reg_1|y\(1)) # (\inst4|inst1|INS_OUT[0]~12_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100100100110110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|inst|reg|reg_1|y\(1),
	datab => \inst4|inst|reg|reg_1|y\(2),
	datac => \inst4|inst1|INS_OUT[0]~12_combout\,
	datad => \inst4|inst1|INS_OUT[1]~11_combout\,
	combout => \inst4|inst3|add_1|S\(2));

-- Location: LCCOMB_X107_Y26_N8
\inst4|inst7|OUT16B[2]~13\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|inst7|OUT16B[2]~13_combout\ = (\inst|Mux3~6_combout\ & (((\inst4|inst3|add_1|S\(2))))) # (!\inst|Mux3~6_combout\ & (\inst4|inst|reg|reg_1|y\(1) $ (((\inst4|inst|reg|reg_1|y\(2))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100010111001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|inst|reg|reg_1|y\(1),
	datab => \inst4|inst3|add_1|S\(2),
	datac => \inst|Mux3~6_combout\,
	datad => \inst4|inst|reg|reg_1|y\(2),
	combout => \inst4|inst7|OUT16B[2]~13_combout\);

-- Location: LCCOMB_X107_Y22_N18
\inst4|inst|to_pc[2]\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|inst|to_pc\(2) = (!\SW0~input_o\ & ((\inst|Mux2~0_combout\ & (\inst4|inst1|INS_OUT[1]~11_combout\)) # (!\inst|Mux2~0_combout\ & ((\inst4|inst7|OUT16B[2]~13_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000100100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Mux2~0_combout\,
	datab => \SW0~input_o\,
	datac => \inst4|inst1|INS_OUT[1]~11_combout\,
	datad => \inst4|inst7|OUT16B[2]~13_combout\,
	combout => \inst4|inst|to_pc\(2));

-- Location: FF_X107_Y22_N19
\inst4|inst|reg|reg_1|y[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \SW17~input_o\,
	d => \inst4|inst|to_pc\(2),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst4|inst|reg|reg_1|y\(2));

-- Location: LCCOMB_X106_Y21_N26
\inst4|inst1|data_out[4]~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|inst1|data_out[4]~6_combout\ = (!\inst4|inst1|dec|en_0~combout\ & ((\inst4|inst|reg|reg_1|y\(2) & (!\inst4|inst|reg|reg_1|y\(3) & \inst4|inst|reg|reg_1|y\(1))) # (!\inst4|inst|reg|reg_1|y\(2) & (\inst4|inst|reg|reg_1|y\(3) & 
-- !\inst4|inst|reg|reg_1|y\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|inst|reg|reg_1|y\(2),
	datab => \inst4|inst|reg|reg_1|y\(3),
	datac => \inst4|inst|reg|reg_1|y\(1),
	datad => \inst4|inst1|dec|en_0~combout\,
	combout => \inst4|inst1|data_out[4]~6_combout\);

-- Location: LCCOMB_X106_Y21_N4
\inst4|inst1|INS_OUT[4]~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|inst1|INS_OUT[4]~8_combout\ = (!\inst4|inst1|exception~2_combout\ & ((\inst4|inst1|data_out[4]~6_combout\) # (!\inst4|inst1|data_out[5]~5_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000000110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst4|inst1|exception~2_combout\,
	datac => \inst4|inst1|data_out[4]~6_combout\,
	datad => \inst4|inst1|data_out[5]~5_combout\,
	combout => \inst4|inst1|INS_OUT[4]~8_combout\);

-- Location: LCCOMB_X108_Y25_N30
\inst4|inst2|alu0|alu0|adder|COUT~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|inst2|alu0|alu0|adder|COUT~0_combout\ = (\inst4|inst|reg|reg_1|y\(3) & (\inst4|inst|reg|reg_1|y\(1) & \inst4|inst|reg|reg_1|y\(2)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|inst|reg|reg_1|y\(3),
	datac => \inst4|inst|reg|reg_1|y\(1),
	datad => \inst4|inst|reg|reg_1|y\(2),
	combout => \inst4|inst2|alu0|alu0|adder|COUT~0_combout\);

-- Location: LCCOMB_X107_Y26_N12
\inst4|inst3|add_1|C4~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|inst3|add_1|C4~0_combout\ = (\inst4|inst1|INS_OUT[2]~10_combout\ & ((\inst4|inst3|add_1|C[3]~0_combout\) # (\inst4|inst2|alu0|alu0|adder|C~0_combout\ $ (\inst4|inst|reg|reg_1|y\(3))))) # (!\inst4|inst1|INS_OUT[2]~10_combout\ & 
-- (\inst4|inst3|add_1|C[3]~0_combout\ & (\inst4|inst2|alu0|alu0|adder|C~0_combout\ $ (\inst4|inst|reg|reg_1|y\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011111000101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|inst1|INS_OUT[2]~10_combout\,
	datab => \inst4|inst2|alu0|alu0|adder|C~0_combout\,
	datac => \inst4|inst|reg|reg_1|y\(3),
	datad => \inst4|inst3|add_1|C[3]~0_combout\,
	combout => \inst4|inst3|add_1|C4~0_combout\);

-- Location: LCCOMB_X108_Y25_N10
\inst4|inst3|add_2|C[1]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|inst3|add_2|C[1]~0_combout\ = (\inst4|inst1|INS_OUT[3]~9_combout\ & ((\inst4|inst3|add_1|C4~0_combout\) # (\inst4|inst|reg|reg_1|y\(4) $ (\inst4|inst2|alu0|alu0|adder|COUT~0_combout\)))) # (!\inst4|inst1|INS_OUT[3]~9_combout\ & 
-- (\inst4|inst3|add_1|C4~0_combout\ & (\inst4|inst|reg|reg_1|y\(4) $ (\inst4|inst2|alu0|alu0|adder|COUT~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111011001100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|inst|reg|reg_1|y\(4),
	datab => \inst4|inst2|alu0|alu0|adder|COUT~0_combout\,
	datac => \inst4|inst1|INS_OUT[3]~9_combout\,
	datad => \inst4|inst3|add_1|C4~0_combout\,
	combout => \inst4|inst3|add_2|C[1]~0_combout\);

-- Location: LCCOMB_X108_Y25_N12
\inst4|inst2|alu0|alu1|adder|C~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|inst2|alu0|alu1|adder|C~0_combout\ = (\inst4|inst|reg|reg_1|y\(4) & (\inst4|inst|reg|reg_1|y\(1) & (\inst4|inst|reg|reg_1|y\(3) & \inst4|inst|reg|reg_1|y\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|inst|reg|reg_1|y\(4),
	datab => \inst4|inst|reg|reg_1|y\(1),
	datac => \inst4|inst|reg|reg_1|y\(3),
	datad => \inst4|inst|reg|reg_1|y\(2),
	combout => \inst4|inst2|alu0|alu1|adder|C~0_combout\);

-- Location: LCCOMB_X108_Y25_N26
\inst4|inst3|add_2|S[1]\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|inst3|add_2|S\(1) = \inst4|inst3|add_2|C[1]~0_combout\ $ (\inst4|inst2|alu0|alu1|adder|C~0_combout\ $ (\inst4|inst|reg|reg_1|y\(5) $ (\inst4|inst1|INS_OUT[4]~8_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|inst3|add_2|C[1]~0_combout\,
	datab => \inst4|inst2|alu0|alu1|adder|C~0_combout\,
	datac => \inst4|inst|reg|reg_1|y\(5),
	datad => \inst4|inst1|INS_OUT[4]~8_combout\,
	combout => \inst4|inst3|add_2|S\(1));

-- Location: LCCOMB_X108_Y25_N2
\inst4|inst7|OUT16B[5]~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|inst7|OUT16B[5]~10_combout\ = (\inst|Mux3~6_combout\ & (((\inst4|inst3|add_2|S\(1))))) # (!\inst|Mux3~6_combout\ & (\inst4|inst|reg|reg_1|y\(5) $ (((\inst4|inst2|alu0|alu1|adder|C~0_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110001011010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|inst|reg|reg_1|y\(5),
	datab => \inst4|inst3|add_2|S\(1),
	datac => \inst4|inst2|alu0|alu1|adder|C~0_combout\,
	datad => \inst|Mux3~6_combout\,
	combout => \inst4|inst7|OUT16B[5]~10_combout\);

-- Location: LCCOMB_X107_Y22_N14
\inst4|inst|to_pc[5]\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|inst|to_pc\(5) = (!\SW0~input_o\ & ((\inst|Mux2~0_combout\ & (\inst4|inst1|INS_OUT[4]~8_combout\)) # (!\inst|Mux2~0_combout\ & ((\inst4|inst7|OUT16B[5]~10_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000100100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Mux2~0_combout\,
	datab => \SW0~input_o\,
	datac => \inst4|inst1|INS_OUT[4]~8_combout\,
	datad => \inst4|inst7|OUT16B[5]~10_combout\,
	combout => \inst4|inst|to_pc\(5));

-- Location: FF_X107_Y22_N15
\inst4|inst|reg|reg_1|y[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \SW17~input_o\,
	d => \inst4|inst|to_pc\(5),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst4|inst|reg|reg_1|y\(5));

-- Location: LCCOMB_X107_Y25_N28
\inst2|inst|mux_1|mux_1|mux_generate:3:mux_i|Mux3~11\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|inst|mux_1|mux_1|mux_generate:3:mux_i|Mux3~11_combout\ = (!\inst4|inst|reg|reg_1|y\(5) & (!\inst4|inst1|exception~2_combout\ & \inst4|inst1|data_out[10]~15_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|inst|reg|reg_1|y\(5),
	datac => \inst4|inst1|exception~2_combout\,
	datad => \inst4|inst1|data_out[10]~15_combout\,
	combout => \inst2|inst|mux_1|mux_1|mux_generate:3:mux_i|Mux3~11_combout\);

-- Location: LCCOMB_X108_Y25_N20
\inst4|inst3|add_2|C[2]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|inst3|add_2|C[2]~1_combout\ = (\inst4|inst3|add_2|C[1]~0_combout\ & ((\inst4|inst1|INS_OUT[4]~8_combout\) # (\inst4|inst2|alu0|alu1|adder|C~0_combout\ $ (\inst4|inst|reg|reg_1|y\(5))))) # (!\inst4|inst3|add_2|C[1]~0_combout\ & 
-- (\inst4|inst1|INS_OUT[4]~8_combout\ & (\inst4|inst2|alu0|alu1|adder|C~0_combout\ $ (\inst4|inst|reg|reg_1|y\(5)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011111000101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|inst3|add_2|C[1]~0_combout\,
	datab => \inst4|inst2|alu0|alu1|adder|C~0_combout\,
	datac => \inst4|inst|reg|reg_1|y\(5),
	datad => \inst4|inst1|INS_OUT[4]~8_combout\,
	combout => \inst4|inst3|add_2|C[2]~1_combout\);

-- Location: LCCOMB_X108_Y25_N24
\inst4|inst2|alu0|alu1|adder|C~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|inst2|alu0|alu1|adder|C~2_combout\ = (\inst4|inst|reg|reg_1|y\(4) & (\inst4|inst2|alu0|alu0|adder|COUT~0_combout\ & \inst4|inst|reg|reg_1|y\(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|inst|reg|reg_1|y\(4),
	datab => \inst4|inst2|alu0|alu0|adder|COUT~0_combout\,
	datad => \inst4|inst|reg|reg_1|y\(5),
	combout => \inst4|inst2|alu0|alu1|adder|C~2_combout\);

-- Location: LCCOMB_X107_Y25_N2
\inst4|inst3|add_2|S[2]\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|inst3|add_2|S\(2) = \inst4|inst1|INS_OUT[5]~7_combout\ $ (\inst4|inst|reg|reg_1|y\(6) $ (\inst4|inst3|add_2|C[2]~1_combout\ $ (\inst4|inst2|alu0|alu1|adder|C~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|inst1|INS_OUT[5]~7_combout\,
	datab => \inst4|inst|reg|reg_1|y\(6),
	datac => \inst4|inst3|add_2|C[2]~1_combout\,
	datad => \inst4|inst2|alu0|alu1|adder|C~2_combout\,
	combout => \inst4|inst3|add_2|S\(2));

-- Location: LCCOMB_X108_Y23_N14
\inst4|inst7|OUT16B[6]~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|inst7|OUT16B[6]~9_combout\ = (\inst|Mux3~6_combout\ & (\inst4|inst3|add_2|S\(2))) # (!\inst|Mux3~6_combout\ & ((\inst4|inst2|alu0|alu1|adder|C~2_combout\ $ (\inst4|inst|reg|reg_1|y\(6)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|inst3|add_2|S\(2),
	datab => \inst4|inst2|alu0|alu1|adder|C~2_combout\,
	datac => \inst4|inst|reg|reg_1|y\(6),
	datad => \inst|Mux3~6_combout\,
	combout => \inst4|inst7|OUT16B[6]~9_combout\);

-- Location: LCCOMB_X107_Y23_N10
\inst4|inst|to_pc[6]\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|inst|to_pc\(6) = (!\SW0~input_o\ & ((\inst|Mux2~0_combout\ & ((\inst4|inst1|INS_OUT[5]~7_combout\))) # (!\inst|Mux2~0_combout\ & (\inst4|inst7|OUT16B[6]~9_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW0~input_o\,
	datab => \inst|Mux2~0_combout\,
	datac => \inst4|inst7|OUT16B[6]~9_combout\,
	datad => \inst4|inst1|INS_OUT[5]~7_combout\,
	combout => \inst4|inst|to_pc\(6));

-- Location: FF_X107_Y23_N11
\inst4|inst|reg|reg_1|y[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \SW17~input_o\,
	d => \inst4|inst|to_pc\(6),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst4|inst|reg|reg_1|y\(6));

-- Location: LCCOMB_X107_Y25_N24
\inst4|inst2|alu0|alu1|adder|S[3]\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|inst2|alu0|alu1|adder|S\(3) = \inst4|inst|reg|reg_1|y\(7) $ (((\inst4|inst2|alu0|alu1|adder|C~0_combout\ & (\inst4|inst|reg|reg_1|y\(6) & \inst4|inst|reg|reg_1|y\(5)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110101010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|inst|reg|reg_1|y\(7),
	datab => \inst4|inst2|alu0|alu1|adder|C~0_combout\,
	datac => \inst4|inst|reg|reg_1|y\(6),
	datad => \inst4|inst|reg|reg_1|y\(5),
	combout => \inst4|inst2|alu0|alu1|adder|S\(3));

-- Location: LCCOMB_X107_Y25_N6
\inst4|inst3|add_2|C[3]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|inst3|add_2|C[3]~2_combout\ = (\inst4|inst1|INS_OUT[5]~7_combout\ & ((\inst4|inst3|add_2|C[2]~1_combout\) # (\inst4|inst|reg|reg_1|y\(6) $ (\inst4|inst2|alu0|alu1|adder|C~2_combout\)))) # (!\inst4|inst1|INS_OUT[5]~7_combout\ & 
-- (\inst4|inst3|add_2|C[2]~1_combout\ & (\inst4|inst|reg|reg_1|y\(6) $ (\inst4|inst2|alu0|alu1|adder|C~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011001011101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|inst1|INS_OUT[5]~7_combout\,
	datab => \inst4|inst|reg|reg_1|y\(6),
	datac => \inst4|inst3|add_2|C[2]~1_combout\,
	datad => \inst4|inst2|alu0|alu1|adder|C~2_combout\,
	combout => \inst4|inst3|add_2|C[3]~2_combout\);

-- Location: LCCOMB_X107_Y23_N4
\inst4|inst7|OUT16B[7]~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|inst7|OUT16B[7]~8_combout\ = \inst4|inst2|alu0|alu1|adder|S\(3) $ (((\inst|Mux3~6_combout\ & (\inst4|inst3|add_2|C[3]~2_combout\ $ (\inst4|inst1|INS_OUT[5]~7_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|inst2|alu0|alu1|adder|S\(3),
	datab => \inst4|inst3|add_2|C[3]~2_combout\,
	datac => \inst4|inst1|INS_OUT[5]~7_combout\,
	datad => \inst|Mux3~6_combout\,
	combout => \inst4|inst7|OUT16B[7]~8_combout\);

-- Location: LCCOMB_X107_Y24_N26
\inst4|inst1|data_out[6]~20\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|inst1|data_out[6]~20_combout\ = (!\inst4|inst|reg|reg_1|y\(2) & ((\inst4|inst|reg|reg_1|y\(3) & ((!\inst4|inst|reg|reg_1|y\(4)))) # (!\inst4|inst|reg|reg_1|y\(3) & (!\inst4|inst|reg|reg_1|y\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000101010001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|inst|reg|reg_1|y\(2),
	datab => \inst4|inst|reg|reg_1|y\(1),
	datac => \inst4|inst|reg|reg_1|y\(3),
	datad => \inst4|inst|reg|reg_1|y\(4),
	combout => \inst4|inst1|data_out[6]~20_combout\);

-- Location: LCCOMB_X107_Y24_N16
\inst4|inst1|INS_OUT[6]~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|inst1|INS_OUT[6]~14_combout\ = (!\inst4|inst1|exception~2_combout\ & (!\inst4|inst|reg|reg_1|y\(5) & \inst4|inst1|data_out[6]~20_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst4|inst1|exception~2_combout\,
	datac => \inst4|inst|reg|reg_1|y\(5),
	datad => \inst4|inst1|data_out[6]~20_combout\,
	combout => \inst4|inst1|INS_OUT[6]~14_combout\);

-- Location: LCCOMB_X107_Y23_N8
\inst4|inst|to_pc[7]\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|inst|to_pc\(7) = (!\SW0~input_o\ & ((\inst|Mux2~0_combout\ & ((\inst4|inst1|INS_OUT[6]~14_combout\))) # (!\inst|Mux2~0_combout\ & (\inst4|inst7|OUT16B[7]~8_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|inst7|OUT16B[7]~8_combout\,
	datab => \inst|Mux2~0_combout\,
	datac => \inst4|inst1|INS_OUT[6]~14_combout\,
	datad => \SW0~input_o\,
	combout => \inst4|inst|to_pc\(7));

-- Location: FF_X107_Y23_N9
\inst4|inst|reg|reg_1|y[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \SW17~input_o\,
	d => \inst4|inst|to_pc\(7),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst4|inst|reg|reg_1|y\(7));

-- Location: LCCOMB_X111_Y23_N24
\inst4|inst1|INS_OUT[8]~16\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|inst1|INS_OUT[8]~16_combout\ = (!\inst4|inst1|exception~2_combout\ & (!\inst4|inst|reg|reg_1|y\(1) & (!\inst4|inst|reg|reg_1|y\(5) & \inst4|inst1|data_out[8]~18_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|inst1|exception~2_combout\,
	datab => \inst4|inst|reg|reg_1|y\(1),
	datac => \inst4|inst|reg|reg_1|y\(5),
	datad => \inst4|inst1|data_out[8]~18_combout\,
	combout => \inst4|inst1|INS_OUT[8]~16_combout\);

-- Location: LCCOMB_X107_Y25_N10
\inst4|inst2|alu0|alu1|adder|C~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|inst2|alu0|alu1|adder|C~1_combout\ = (\inst4|inst2|alu0|alu1|adder|C~0_combout\ & (\inst4|inst|reg|reg_1|y\(6) & \inst4|inst|reg|reg_1|y\(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|inst2|alu0|alu1|adder|C~0_combout\,
	datab => \inst4|inst|reg|reg_1|y\(6),
	datad => \inst4|inst|reg|reg_1|y\(5),
	combout => \inst4|inst2|alu0|alu1|adder|C~1_combout\);

-- Location: LCCOMB_X107_Y25_N12
\inst4|inst3|add_2|C4~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|inst3|add_2|C4~0_combout\ = (\inst4|inst1|INS_OUT[5]~7_combout\ & ((\inst4|inst3|add_2|C[3]~2_combout\) # (\inst4|inst2|alu0|alu1|adder|C~1_combout\ $ (\inst4|inst|reg|reg_1|y\(7))))) # (!\inst4|inst1|INS_OUT[5]~7_combout\ & 
-- (\inst4|inst3|add_2|C[3]~2_combout\ & (\inst4|inst2|alu0|alu1|adder|C~1_combout\ $ (\inst4|inst|reg|reg_1|y\(7)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101111001001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|inst2|alu0|alu1|adder|C~1_combout\,
	datab => \inst4|inst1|INS_OUT[5]~7_combout\,
	datac => \inst4|inst|reg|reg_1|y\(7),
	datad => \inst4|inst3|add_2|C[3]~2_combout\,
	combout => \inst4|inst3|add_2|C4~0_combout\);

-- Location: LCCOMB_X107_Y25_N8
\inst4|inst7|OUT16B[8]~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|inst7|OUT16B[8]~7_combout\ = \inst4|inst2|alu0|alu2|adder|S\(0) $ (((\inst|Mux3~6_combout\ & (\inst4|inst3|add_2|C4~0_combout\ $ (\inst4|inst1|INS_OUT[5]~7_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001110001101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|inst3|add_2|C4~0_combout\,
	datab => \inst4|inst2|alu0|alu2|adder|S\(0),
	datac => \inst|Mux3~6_combout\,
	datad => \inst4|inst1|INS_OUT[5]~7_combout\,
	combout => \inst4|inst7|OUT16B[8]~7_combout\);

-- Location: LCCOMB_X107_Y23_N2
\inst4|inst|to_pc[8]\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|inst|to_pc\(8) = (!\SW0~input_o\ & ((\inst|Mux2~0_combout\ & (\inst4|inst1|INS_OUT[1]~11_combout\)) # (!\inst|Mux2~0_combout\ & ((\inst4|inst7|OUT16B[8]~7_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|inst1|INS_OUT[1]~11_combout\,
	datab => \inst|Mux2~0_combout\,
	datac => \inst4|inst7|OUT16B[8]~7_combout\,
	datad => \SW0~input_o\,
	combout => \inst4|inst|to_pc\(8));

-- Location: FF_X107_Y23_N3
\inst4|inst|reg|reg_2|y[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \SW17~input_o\,
	d => \inst4|inst|to_pc\(8),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst4|inst|reg|reg_2|y\(0));

-- Location: LCCOMB_X107_Y25_N0
\inst4|inst2|alu0|alu2|adder|S[0]\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|inst2|alu0|alu2|adder|S\(0) = \inst4|inst|reg|reg_2|y\(0) $ (((\inst4|inst|reg|reg_1|y\(7) & (\inst4|inst|reg|reg_1|y\(6) & \inst4|inst2|alu0|alu1|adder|C~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111100011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|inst|reg|reg_1|y\(7),
	datab => \inst4|inst|reg|reg_1|y\(6),
	datac => \inst4|inst|reg|reg_2|y\(0),
	datad => \inst4|inst2|alu0|alu1|adder|C~2_combout\,
	combout => \inst4|inst2|alu0|alu2|adder|S\(0));

-- Location: LCCOMB_X107_Y25_N26
\inst4|inst3|add_3|C[1]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|inst3|add_3|C[1]~0_combout\ = (\inst4|inst1|INS_OUT[5]~7_combout\ & ((\inst4|inst2|alu0|alu2|adder|S\(0)) # ((\inst4|inst2|alu0|alu1|adder|S\(3)) # (\inst4|inst3|add_2|C[3]~2_combout\)))) # (!\inst4|inst1|INS_OUT[5]~7_combout\ & 
-- (\inst4|inst2|alu0|alu2|adder|S\(0) & (\inst4|inst2|alu0|alu1|adder|S\(3) & \inst4|inst3|add_2|C[3]~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101010101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|inst1|INS_OUT[5]~7_combout\,
	datab => \inst4|inst2|alu0|alu2|adder|S\(0),
	datac => \inst4|inst2|alu0|alu1|adder|S\(3),
	datad => \inst4|inst3|add_2|C[3]~2_combout\,
	combout => \inst4|inst3|add_3|C[1]~0_combout\);

-- Location: LCCOMB_X107_Y25_N14
\inst4|inst2|alu0|alu2|adder|C~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|inst2|alu0|alu2|adder|C~1_combout\ = (\inst4|inst|reg|reg_1|y\(7) & (\inst4|inst|reg|reg_1|y\(6) & (\inst4|inst|reg|reg_2|y\(0) & \inst4|inst2|alu0|alu1|adder|C~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|inst|reg|reg_1|y\(7),
	datab => \inst4|inst|reg|reg_1|y\(6),
	datac => \inst4|inst|reg|reg_2|y\(0),
	datad => \inst4|inst2|alu0|alu1|adder|C~2_combout\,
	combout => \inst4|inst2|alu0|alu2|adder|C~1_combout\);

-- Location: LCCOMB_X106_Y23_N22
\inst4|inst3|add_3|S[1]\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|inst3|add_3|S\(1) = \inst4|inst3|add_3|C[1]~0_combout\ $ (\inst4|inst2|alu0|alu2|adder|C~1_combout\ $ (\inst4|inst|reg|reg_2|y\(1) $ (\inst4|inst1|INS_OUT[5]~7_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|inst3|add_3|C[1]~0_combout\,
	datab => \inst4|inst2|alu0|alu2|adder|C~1_combout\,
	datac => \inst4|inst|reg|reg_2|y\(1),
	datad => \inst4|inst1|INS_OUT[5]~7_combout\,
	combout => \inst4|inst3|add_3|S\(1));

-- Location: LCCOMB_X106_Y23_N6
\inst4|inst7|OUT16B[9]~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|inst7|OUT16B[9]~6_combout\ = (\inst|Mux3~6_combout\ & (\inst4|inst3|add_3|S\(1))) # (!\inst|Mux3~6_combout\ & ((\inst4|inst|reg|reg_2|y\(1) $ (\inst4|inst2|alu0|alu2|adder|C~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010001110101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|inst3|add_3|S\(1),
	datab => \inst4|inst|reg|reg_2|y\(1),
	datac => \inst|Mux3~6_combout\,
	datad => \inst4|inst2|alu0|alu2|adder|C~1_combout\,
	combout => \inst4|inst7|OUT16B[9]~6_combout\);

-- Location: LCCOMB_X107_Y23_N22
\inst4|inst|to_pc[9]\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|inst|to_pc\(9) = (!\SW0~input_o\ & ((\inst|Mux2~0_combout\ & (\inst4|inst1|INS_OUT[8]~16_combout\)) # (!\inst|Mux2~0_combout\ & ((\inst4|inst7|OUT16B[9]~6_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000101000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW0~input_o\,
	datab => \inst|Mux2~0_combout\,
	datac => \inst4|inst1|INS_OUT[8]~16_combout\,
	datad => \inst4|inst7|OUT16B[9]~6_combout\,
	combout => \inst4|inst|to_pc\(9));

-- Location: FF_X107_Y23_N23
\inst4|inst|reg|reg_2|y[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \SW17~input_o\,
	d => \inst4|inst|to_pc\(9),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst4|inst|reg|reg_2|y\(1));

-- Location: LCCOMB_X107_Y25_N20
\inst4|inst2|alu0|alu2|adder|C~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|inst2|alu0|alu2|adder|C~0_combout\ = (\inst4|inst|reg|reg_1|y\(7) & (\inst4|inst|reg|reg_2|y\(1) & (\inst4|inst|reg|reg_2|y\(0) & \inst4|inst2|alu0|alu1|adder|C~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|inst|reg|reg_1|y\(7),
	datab => \inst4|inst|reg|reg_2|y\(1),
	datac => \inst4|inst|reg|reg_2|y\(0),
	datad => \inst4|inst2|alu0|alu1|adder|C~1_combout\,
	combout => \inst4|inst2|alu0|alu2|adder|C~0_combout\);

-- Location: LCCOMB_X106_Y23_N16
\inst4|inst3|add_3|C[2]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|inst3|add_3|C[2]~1_combout\ = (\inst4|inst1|INS_OUT[5]~7_combout\ & ((\inst4|inst3|add_3|C[1]~0_combout\) # (\inst4|inst|reg|reg_2|y\(1) $ (\inst4|inst2|alu0|alu2|adder|C~1_combout\)))) # (!\inst4|inst1|INS_OUT[5]~7_combout\ & 
-- (\inst4|inst3|add_3|C[1]~0_combout\ & (\inst4|inst|reg|reg_2|y\(1) $ (\inst4|inst2|alu0|alu2|adder|C~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011001011101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|inst1|INS_OUT[5]~7_combout\,
	datab => \inst4|inst|reg|reg_2|y\(1),
	datac => \inst4|inst3|add_3|C[1]~0_combout\,
	datad => \inst4|inst2|alu0|alu2|adder|C~1_combout\,
	combout => \inst4|inst3|add_3|C[2]~1_combout\);

-- Location: LCCOMB_X111_Y23_N28
\inst4|inst1|INS_OUT[9]~13\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|inst1|INS_OUT[9]~13_combout\ = (!\inst4|inst1|exception~2_combout\ & ((\inst4|inst|reg|reg_1|y\(5)) # (\inst4|inst1|data_out[9]~13_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010101010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|inst1|exception~2_combout\,
	datac => \inst4|inst|reg|reg_1|y\(5),
	datad => \inst4|inst1|data_out[9]~13_combout\,
	combout => \inst4|inst1|INS_OUT[9]~13_combout\);

-- Location: LCCOMB_X106_Y23_N12
\inst4|inst3|add_3|S[2]\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|inst3|add_3|S\(2) = \inst4|inst2|alu0|alu2|adder|C~0_combout\ $ (\inst4|inst3|add_3|C[2]~1_combout\ $ (\inst4|inst|reg|reg_2|y\(2) $ (\inst4|inst1|INS_OUT[5]~7_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|inst2|alu0|alu2|adder|C~0_combout\,
	datab => \inst4|inst3|add_3|C[2]~1_combout\,
	datac => \inst4|inst|reg|reg_2|y\(2),
	datad => \inst4|inst1|INS_OUT[5]~7_combout\,
	combout => \inst4|inst3|add_3|S\(2));

-- Location: LCCOMB_X106_Y23_N24
\inst4|inst7|OUT16B[10]~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|inst7|OUT16B[10]~5_combout\ = (\inst|Mux3~6_combout\ & (((\inst4|inst3|add_3|S\(2))))) # (!\inst|Mux3~6_combout\ & (\inst4|inst|reg|reg_2|y\(2) $ (((\inst4|inst2|alu0|alu2|adder|C~0_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100010111001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|inst|reg|reg_2|y\(2),
	datab => \inst4|inst3|add_3|S\(2),
	datac => \inst|Mux3~6_combout\,
	datad => \inst4|inst2|alu0|alu2|adder|C~0_combout\,
	combout => \inst4|inst7|OUT16B[10]~5_combout\);

-- Location: LCCOMB_X107_Y23_N18
\inst4|inst|to_pc[10]\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|inst|to_pc\(10) = (!\SW0~input_o\ & ((\inst|Mux2~0_combout\ & (\inst4|inst1|INS_OUT[9]~13_combout\)) # (!\inst|Mux2~0_combout\ & ((\inst4|inst7|OUT16B[10]~5_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000101000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW0~input_o\,
	datab => \inst|Mux2~0_combout\,
	datac => \inst4|inst1|INS_OUT[9]~13_combout\,
	datad => \inst4|inst7|OUT16B[10]~5_combout\,
	combout => \inst4|inst|to_pc\(10));

-- Location: FF_X107_Y23_N19
\inst4|inst|reg|reg_2|y[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \SW17~input_o\,
	d => \inst4|inst|to_pc\(10),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst4|inst|reg|reg_2|y\(2));

-- Location: LCCOMB_X106_Y23_N30
\inst4|inst3|add_3|C[3]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|inst3|add_3|C[3]~2_combout\ = (\inst4|inst3|add_3|C[2]~1_combout\ & ((\inst4|inst1|INS_OUT[5]~7_combout\) # (\inst4|inst2|alu0|alu2|adder|C~0_combout\ $ (\inst4|inst|reg|reg_2|y\(2))))) # (!\inst4|inst3|add_3|C[2]~1_combout\ & 
-- (\inst4|inst1|INS_OUT[5]~7_combout\ & (\inst4|inst2|alu0|alu2|adder|C~0_combout\ $ (\inst4|inst|reg|reg_2|y\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101111001001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|inst2|alu0|alu2|adder|C~0_combout\,
	datab => \inst4|inst3|add_3|C[2]~1_combout\,
	datac => \inst4|inst|reg|reg_2|y\(2),
	datad => \inst4|inst1|INS_OUT[5]~7_combout\,
	combout => \inst4|inst3|add_3|C[3]~2_combout\);

-- Location: LCCOMB_X106_Y23_N2
\inst4|inst2|alu0|alu2|adder|S[3]\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|inst2|alu0|alu2|adder|S\(3) = \inst4|inst|reg|reg_2|y\(3) $ (((\inst4|inst|reg|reg_2|y\(2) & \inst4|inst2|alu0|alu2|adder|C~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst4|inst|reg|reg_2|y\(2),
	datac => \inst4|inst|reg|reg_2|y\(3),
	datad => \inst4|inst2|alu0|alu2|adder|C~0_combout\,
	combout => \inst4|inst2|alu0|alu2|adder|S\(3));

-- Location: LCCOMB_X106_Y23_N14
\inst4|inst7|OUT16B[11]~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|inst7|OUT16B[11]~4_combout\ = \inst4|inst2|alu0|alu2|adder|S\(3) $ (((\inst|Mux3~6_combout\ & (\inst4|inst3|add_3|C[3]~2_combout\ $ (\inst4|inst1|INS_OUT[5]~7_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001110001101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|inst3|add_3|C[3]~2_combout\,
	datab => \inst4|inst2|alu0|alu2|adder|S\(3),
	datac => \inst|Mux3~6_combout\,
	datad => \inst4|inst1|INS_OUT[5]~7_combout\,
	combout => \inst4|inst7|OUT16B[11]~4_combout\);

-- Location: LCCOMB_X107_Y23_N12
\inst4|inst|to_pc[11]\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|inst|to_pc\(11) = (!\SW0~input_o\ & ((\inst|Mux2~0_combout\ & (\inst2|inst|mux_1|mux_1|mux_generate:3:mux_i|Mux3~11_combout\)) # (!\inst|Mux2~0_combout\ & ((\inst4|inst7|OUT16B[11]~4_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000101000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW0~input_o\,
	datab => \inst|Mux2~0_combout\,
	datac => \inst2|inst|mux_1|mux_1|mux_generate:3:mux_i|Mux3~11_combout\,
	datad => \inst4|inst7|OUT16B[11]~4_combout\,
	combout => \inst4|inst|to_pc\(11));

-- Location: FF_X107_Y23_N13
\inst4|inst|reg|reg_2|y[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \SW17~input_o\,
	d => \inst4|inst|to_pc\(11),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst4|inst|reg|reg_2|y\(3));

-- Location: LCCOMB_X106_Y23_N0
\inst4|inst3|add_4|S[0]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|inst3|add_4|S[0]~2_combout\ = \inst4|inst|reg|reg_2|y\(3) $ (((\inst4|inst|reg|reg_2|y\(2) & (\inst4|inst|reg|reg_2|y\(1) & \inst4|inst2|alu0|alu2|adder|C~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111100011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|inst|reg|reg_2|y\(2),
	datab => \inst4|inst|reg|reg_2|y\(1),
	datac => \inst4|inst|reg|reg_2|y\(3),
	datad => \inst4|inst2|alu0|alu2|adder|C~1_combout\,
	combout => \inst4|inst3|add_4|S[0]~2_combout\);

-- Location: LCCOMB_X106_Y23_N8
\inst4|inst2|alu0|alu3|adder|S[0]\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|inst2|alu0|alu3|adder|S\(0) = \inst4|inst|reg|reg_2|y\(4) $ (((\inst4|inst|reg|reg_2|y\(2) & (\inst4|inst|reg|reg_2|y\(3) & \inst4|inst2|alu0|alu2|adder|C~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110110011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|inst|reg|reg_2|y\(2),
	datab => \inst4|inst|reg|reg_2|y\(4),
	datac => \inst4|inst|reg|reg_2|y\(3),
	datad => \inst4|inst2|alu0|alu2|adder|C~0_combout\,
	combout => \inst4|inst2|alu0|alu3|adder|S\(0));

-- Location: LCCOMB_X106_Y23_N26
\inst4|inst3|add_4|S[0]~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|inst3|add_4|S[0]~3_combout\ = \inst4|inst2|alu0|alu3|adder|S\(0) $ (((\inst4|inst3|add_3|C[3]~2_combout\ & (\inst4|inst3|add_4|S[0]~2_combout\ & !\inst4|inst1|INS_OUT[5]~7_combout\)) # (!\inst4|inst3|add_3|C[3]~2_combout\ & 
-- (!\inst4|inst3|add_4|S[0]~2_combout\ & \inst4|inst1|INS_OUT[5]~7_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000101111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|inst3|add_3|C[3]~2_combout\,
	datab => \inst4|inst3|add_4|S[0]~2_combout\,
	datac => \inst4|inst2|alu0|alu3|adder|S\(0),
	datad => \inst4|inst1|INS_OUT[5]~7_combout\,
	combout => \inst4|inst3|add_4|S[0]~3_combout\);

-- Location: LCCOMB_X106_Y23_N28
\inst4|JUMPMUX|OUT16B[12]~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|JUMPMUX|OUT16B[12]~6_combout\ = (!\inst|Mux2~0_combout\ & ((\inst|Mux3~6_combout\ & (\inst4|inst3|add_4|S[0]~3_combout\)) # (!\inst|Mux3~6_combout\ & ((\inst4|inst2|alu0|alu3|adder|S\(0))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|inst3|add_4|S[0]~3_combout\,
	datab => \inst4|inst2|alu0|alu3|adder|S\(0),
	datac => \inst|Mux3~6_combout\,
	datad => \inst|Mux2~0_combout\,
	combout => \inst4|JUMPMUX|OUT16B[12]~6_combout\);

-- Location: LCCOMB_X107_Y23_N30
\inst4|inst|to_pc[12]\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|inst|to_pc\(12) = (!\SW0~input_o\ & \inst4|JUMPMUX|OUT16B[12]~6_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW0~input_o\,
	datad => \inst4|JUMPMUX|OUT16B[12]~6_combout\,
	combout => \inst4|inst|to_pc\(12));

-- Location: FF_X107_Y23_N31
\inst4|inst|reg|reg_2|y[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \SW17~input_o\,
	d => \inst4|inst|to_pc\(12),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst4|inst|reg|reg_2|y\(4));

-- Location: LCCOMB_X106_Y23_N4
\inst4|inst2|alu0|alu3|adder|C~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|inst2|alu0|alu3|adder|C~0_combout\ = (\inst4|inst|reg|reg_2|y\(2) & (\inst4|inst|reg|reg_2|y\(4) & (\inst4|inst|reg|reg_2|y\(3) & \inst4|inst2|alu0|alu2|adder|C~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|inst|reg|reg_2|y\(2),
	datab => \inst4|inst|reg|reg_2|y\(4),
	datac => \inst4|inst|reg|reg_2|y\(3),
	datad => \inst4|inst2|alu0|alu2|adder|C~0_combout\,
	combout => \inst4|inst2|alu0|alu3|adder|C~0_combout\);

-- Location: LCCOMB_X106_Y27_N20
\inst4|inst2|alu0|alu3|adder|S[1]\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|inst2|alu0|alu3|adder|S\(1) = \inst4|inst|reg|reg_2|y\(5) $ (\inst4|inst2|alu0|alu3|adder|C~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst4|inst|reg|reg_2|y\(5),
	datad => \inst4|inst2|alu0|alu3|adder|C~0_combout\,
	combout => \inst4|inst2|alu0|alu3|adder|S\(1));

-- Location: LCCOMB_X106_Y23_N10
\inst4|inst3|add_4|C[1]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|inst3|add_4|C[1]~0_combout\ = (\inst4|inst1|INS_OUT[5]~7_combout\ & ((\inst4|inst2|alu0|alu3|adder|S\(0)) # ((\inst4|inst3|add_3|C[3]~2_combout\) # (\inst4|inst2|alu0|alu2|adder|S\(3))))) # (!\inst4|inst1|INS_OUT[5]~7_combout\ & 
-- (\inst4|inst2|alu0|alu3|adder|S\(0) & (\inst4|inst3|add_3|C[3]~2_combout\ & \inst4|inst2|alu0|alu2|adder|S\(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101010101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|inst1|INS_OUT[5]~7_combout\,
	datab => \inst4|inst2|alu0|alu3|adder|S\(0),
	datac => \inst4|inst3|add_3|C[3]~2_combout\,
	datad => \inst4|inst2|alu0|alu2|adder|S\(3),
	combout => \inst4|inst3|add_4|C[1]~0_combout\);

-- Location: LCCOMB_X106_Y27_N28
\inst4|inst3|add_4|S[1]\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|inst3|add_4|S\(1) = \inst4|inst2|alu0|alu3|adder|C~0_combout\ $ (\inst4|inst1|INS_OUT[5]~7_combout\ $ (\inst4|inst|reg|reg_2|y\(5) $ (\inst4|inst3|add_4|C[1]~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|inst2|alu0|alu3|adder|C~0_combout\,
	datab => \inst4|inst1|INS_OUT[5]~7_combout\,
	datac => \inst4|inst|reg|reg_2|y\(5),
	datad => \inst4|inst3|add_4|C[1]~0_combout\,
	combout => \inst4|inst3|add_4|S\(1));

-- Location: LCCOMB_X107_Y23_N6
\inst4|inst|to_pc[13]\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|inst|to_pc\(13) = (!\SW0~input_o\ & ((\inst|Mux3~6_combout\ & ((\inst4|inst3|add_4|S\(1)))) # (!\inst|Mux3~6_combout\ & (\inst4|inst2|alu0|alu3|adder|S\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW0~input_o\,
	datab => \inst|Mux3~6_combout\,
	datac => \inst4|inst2|alu0|alu3|adder|S\(1),
	datad => \inst4|inst3|add_4|S\(1),
	combout => \inst4|inst|to_pc\(13));

-- Location: FF_X107_Y23_N7
\inst4|inst|reg|reg_2|y[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \SW17~input_o\,
	d => \inst4|inst|to_pc\(13),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst4|inst|reg|reg_2|y\(5));

-- Location: LCCOMB_X106_Y27_N24
\inst4|inst2|alu0|alu3|adder|S[2]\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|inst2|alu0|alu3|adder|S\(2) = \inst4|inst|reg|reg_2|y\(6) $ (((\inst4|inst2|alu0|alu3|adder|C~0_combout\ & \inst4|inst|reg|reg_2|y\(5))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|inst2|alu0|alu3|adder|C~0_combout\,
	datac => \inst4|inst|reg|reg_2|y\(5),
	datad => \inst4|inst|reg|reg_2|y\(6),
	combout => \inst4|inst2|alu0|alu3|adder|S\(2));

-- Location: LCCOMB_X106_Y27_N12
\inst4|inst2|alu0|alu3|adder|C~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|inst2|alu0|alu3|adder|C~1_combout\ = (\inst4|inst|reg|reg_2|y\(5) & \inst4|inst2|alu0|alu3|adder|C~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst4|inst|reg|reg_2|y\(5),
	datad => \inst4|inst2|alu0|alu3|adder|C~0_combout\,
	combout => \inst4|inst2|alu0|alu3|adder|C~1_combout\);

-- Location: LCCOMB_X106_Y27_N18
\inst4|inst3|add_4|C[2]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|inst3|add_4|C[2]~1_combout\ = (\inst4|inst1|INS_OUT[5]~7_combout\ & ((\inst4|inst3|add_4|C[1]~0_combout\) # (\inst4|inst2|alu0|alu3|adder|C~0_combout\ $ (\inst4|inst|reg|reg_2|y\(5))))) # (!\inst4|inst1|INS_OUT[5]~7_combout\ & 
-- (\inst4|inst3|add_4|C[1]~0_combout\ & (\inst4|inst2|alu0|alu3|adder|C~0_combout\ $ (\inst4|inst|reg|reg_2|y\(5)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101111001001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|inst2|alu0|alu3|adder|C~0_combout\,
	datab => \inst4|inst1|INS_OUT[5]~7_combout\,
	datac => \inst4|inst|reg|reg_2|y\(5),
	datad => \inst4|inst3|add_4|C[1]~0_combout\,
	combout => \inst4|inst3|add_4|C[2]~1_combout\);

-- Location: LCCOMB_X106_Y27_N14
\inst4|inst3|add_4|S[2]\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|inst3|add_4|S\(2) = \inst4|inst2|alu0|alu3|adder|C~1_combout\ $ (\inst4|inst3|add_4|C[2]~1_combout\ $ (\inst4|inst1|INS_OUT[5]~7_combout\ $ (\inst4|inst|reg|reg_2|y\(6))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|inst2|alu0|alu3|adder|C~1_combout\,
	datab => \inst4|inst3|add_4|C[2]~1_combout\,
	datac => \inst4|inst1|INS_OUT[5]~7_combout\,
	datad => \inst4|inst|reg|reg_2|y\(6),
	combout => \inst4|inst3|add_4|S\(2));

-- Location: LCCOMB_X107_Y23_N20
\inst4|inst|to_pc[14]\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|inst|to_pc\(14) = (!\SW0~input_o\ & ((\inst|Mux3~6_combout\ & ((\inst4|inst3|add_4|S\(2)))) # (!\inst|Mux3~6_combout\ & (\inst4|inst2|alu0|alu3|adder|S\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW0~input_o\,
	datab => \inst|Mux3~6_combout\,
	datac => \inst4|inst2|alu0|alu3|adder|S\(2),
	datad => \inst4|inst3|add_4|S\(2),
	combout => \inst4|inst|to_pc\(14));

-- Location: FF_X107_Y23_N21
\inst4|inst|reg|reg_2|y[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \SW17~input_o\,
	d => \inst4|inst|to_pc\(14),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst4|inst|reg|reg_2|y\(6));

-- Location: LCCOMB_X106_Y27_N6
\inst4|inst2|alu0|alu3|adder|S[3]\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|inst2|alu0|alu3|adder|S\(3) = \inst4|inst|reg|reg_2|y\(7) $ (((\inst4|inst2|alu0|alu3|adder|C~0_combout\ & (\inst4|inst|reg|reg_2|y\(5) & \inst4|inst|reg|reg_2|y\(6)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110110011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|inst2|alu0|alu3|adder|C~0_combout\,
	datab => \inst4|inst|reg|reg_2|y\(7),
	datac => \inst4|inst|reg|reg_2|y\(5),
	datad => \inst4|inst|reg|reg_2|y\(6),
	combout => \inst4|inst2|alu0|alu3|adder|S\(3));

-- Location: LCCOMB_X106_Y27_N0
\inst4|inst3|add_4|C[3]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|inst3|add_4|C[3]~2_combout\ = (\inst4|inst3|add_4|C[2]~1_combout\ & ((\inst4|inst1|INS_OUT[5]~7_combout\) # (\inst4|inst2|alu0|alu3|adder|C~1_combout\ $ (\inst4|inst|reg|reg_2|y\(6))))) # (!\inst4|inst3|add_4|C[2]~1_combout\ & 
-- (\inst4|inst1|INS_OUT[5]~7_combout\ & (\inst4|inst2|alu0|alu3|adder|C~1_combout\ $ (\inst4|inst|reg|reg_2|y\(6)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101010011101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|inst2|alu0|alu3|adder|C~1_combout\,
	datab => \inst4|inst3|add_4|C[2]~1_combout\,
	datac => \inst4|inst1|INS_OUT[5]~7_combout\,
	datad => \inst4|inst|reg|reg_2|y\(6),
	combout => \inst4|inst3|add_4|C[3]~2_combout\);

-- Location: LCCOMB_X106_Y27_N2
\inst4|inst3|add_4|S[3]\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|inst3|add_4|S\(3) = \inst4|inst2|alu0|alu3|adder|S\(3) $ (\inst4|inst3|add_4|C[3]~2_combout\ $ (((!\inst4|inst1|data_out[5]~5_combout\ & !\inst4|inst1|exception~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101011010101001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|inst2|alu0|alu3|adder|S\(3),
	datab => \inst4|inst1|data_out[5]~5_combout\,
	datac => \inst4|inst1|exception~2_combout\,
	datad => \inst4|inst3|add_4|C[3]~2_combout\,
	combout => \inst4|inst3|add_4|S\(3));

-- Location: LCCOMB_X107_Y23_N14
\inst4|inst|to_pc[15]\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|inst|to_pc\(15) = (!\SW0~input_o\ & ((\inst|Mux3~6_combout\ & ((\inst4|inst3|add_4|S\(3)))) # (!\inst|Mux3~6_combout\ & (\inst4|inst2|alu0|alu3|adder|S\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW0~input_o\,
	datab => \inst|Mux3~6_combout\,
	datac => \inst4|inst2|alu0|alu3|adder|S\(3),
	datad => \inst4|inst3|add_4|S\(3),
	combout => \inst4|inst|to_pc\(15));

-- Location: FF_X107_Y23_N15
\inst4|inst|reg|reg_2|y[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \SW17~input_o\,
	d => \inst4|inst|to_pc\(15),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst4|inst|reg|reg_2|y\(7));

-- Location: LCCOMB_X107_Y23_N26
\inst4|inst1|exception~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|inst1|exception~1_combout\ = (\inst4|inst|reg|reg_2|y\(4)) # ((\inst4|inst|reg|reg_2|y\(2)) # ((\inst4|inst|reg|reg_2|y\(7)) # (\inst4|inst|reg|reg_2|y\(5))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|inst|reg|reg_2|y\(4),
	datab => \inst4|inst|reg|reg_2|y\(2),
	datac => \inst4|inst|reg|reg_2|y\(7),
	datad => \inst4|inst|reg|reg_2|y\(5),
	combout => \inst4|inst1|exception~1_combout\);

-- Location: LCCOMB_X107_Y23_N24
\inst4|inst1|exception~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|inst1|exception~0_combout\ = (\inst4|inst|reg|reg_1|y\(6)) # ((\inst4|inst|reg|reg_1|y\(7)) # ((\inst4|inst|reg|reg_2|y\(1)) # (\inst4|inst|reg|reg_2|y\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|inst|reg|reg_1|y\(6),
	datab => \inst4|inst|reg|reg_1|y\(7),
	datac => \inst4|inst|reg|reg_2|y\(1),
	datad => \inst4|inst|reg|reg_2|y\(0),
	combout => \inst4|inst1|exception~0_combout\);

-- Location: LCCOMB_X107_Y23_N0
\inst4|inst1|exception~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|inst1|exception~2_combout\ = (\inst4|inst|reg|reg_2|y\(3)) # ((\inst4|inst|reg|reg_2|y\(6)) # ((\inst4|inst1|exception~1_combout\) # (\inst4|inst1|exception~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|inst|reg|reg_2|y\(3),
	datab => \inst4|inst|reg|reg_2|y\(6),
	datac => \inst4|inst1|exception~1_combout\,
	datad => \inst4|inst1|exception~0_combout\,
	combout => \inst4|inst1|exception~2_combout\);

-- Location: LCCOMB_X107_Y22_N0
\inst4|inst1|data_out[13]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|inst1|data_out[13]~0_combout\ = (\inst4|inst|reg|reg_1|y\(3) & ((\inst4|inst|reg|reg_1|y\(4)) # ((!\inst4|inst|reg|reg_1|y\(1))))) # (!\inst4|inst|reg|reg_1|y\(3) & (\inst4|inst|reg|reg_1|y\(2) & ((\inst4|inst|reg|reg_1|y\(4)) # 
-- (\inst4|inst|reg|reg_1|y\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010110011111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|inst|reg|reg_1|y\(4),
	datab => \inst4|inst|reg|reg_1|y\(2),
	datac => \inst4|inst|reg|reg_1|y\(3),
	datad => \inst4|inst|reg|reg_1|y\(1),
	combout => \inst4|inst1|data_out[13]~0_combout\);

-- Location: LCCOMB_X107_Y23_N16
\inst4|inst1|INS_OUT[13]~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|inst1|INS_OUT[13]~4_combout\ = (!\inst4|inst1|exception~2_combout\ & (!\inst4|inst|reg|reg_1|y\(5) & !\inst4|inst1|data_out[13]~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst4|inst1|exception~2_combout\,
	datac => \inst4|inst|reg|reg_1|y\(5),
	datad => \inst4|inst1|data_out[13]~0_combout\,
	combout => \inst4|inst1|INS_OUT[13]~4_combout\);

-- Location: LCCOMB_X111_Y22_N24
\inst|Mux2~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Mux2~0_combout\ = (\inst4|inst1|INS_OUT[13]~4_combout\ & (!\inst4|inst1|INS_OUT[15]~15_combout\ & (!\inst4|inst1|INS_OUT[12]~6_combout\ & !\inst4|inst1|INS_OUT[14]~5_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|inst1|INS_OUT[13]~4_combout\,
	datab => \inst4|inst1|INS_OUT[15]~15_combout\,
	datac => \inst4|inst1|INS_OUT[12]~6_combout\,
	datad => \inst4|inst1|INS_OUT[14]~5_combout\,
	combout => \inst|Mux2~0_combout\);

-- Location: LCCOMB_X108_Y25_N8
\inst4|inst3|add_2|S[0]\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|inst3|add_2|S\(0) = \inst4|inst|reg|reg_1|y\(4) $ (\inst4|inst2|alu0|alu0|adder|COUT~0_combout\ $ (\inst4|inst1|INS_OUT[3]~9_combout\ $ (\inst4|inst3|add_1|C4~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|inst|reg|reg_1|y\(4),
	datab => \inst4|inst2|alu0|alu0|adder|COUT~0_combout\,
	datac => \inst4|inst1|INS_OUT[3]~9_combout\,
	datad => \inst4|inst3|add_1|C4~0_combout\,
	combout => \inst4|inst3|add_2|S\(0));

-- Location: LCCOMB_X108_Y25_N22
\inst4|inst7|OUT16B[4]~11\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|inst7|OUT16B[4]~11_combout\ = (\inst|Mux3~6_combout\ & (((\inst4|inst3|add_2|S\(0))))) # (!\inst|Mux3~6_combout\ & (\inst4|inst|reg|reg_1|y\(4) $ (((\inst4|inst2|alu0|alu0|adder|COUT~0_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110001011010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|inst|reg|reg_1|y\(4),
	datab => \inst4|inst3|add_2|S\(0),
	datac => \inst4|inst2|alu0|alu0|adder|COUT~0_combout\,
	datad => \inst|Mux3~6_combout\,
	combout => \inst4|inst7|OUT16B[4]~11_combout\);

-- Location: LCCOMB_X107_Y22_N30
\inst4|inst|to_pc[4]\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|inst|to_pc\(4) = (!\SW0~input_o\ & ((\inst|Mux2~0_combout\ & (\inst4|inst1|INS_OUT[3]~9_combout\)) # (!\inst|Mux2~0_combout\ & ((\inst4|inst7|OUT16B[4]~11_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Mux2~0_combout\,
	datab => \inst4|inst1|INS_OUT[3]~9_combout\,
	datac => \inst4|inst7|OUT16B[4]~11_combout\,
	datad => \SW0~input_o\,
	combout => \inst4|inst|to_pc\(4));

-- Location: FF_X107_Y22_N31
\inst4|inst|reg|reg_1|y[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \SW17~input_o\,
	d => \inst4|inst|to_pc\(4),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst4|inst|reg|reg_1|y\(4));

-- Location: LCCOMB_X107_Y24_N4
\inst4|inst1|data_out[2]~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|inst1|data_out[2]~10_combout\ = (\inst4|inst|reg|reg_1|y\(5)) # ((\inst4|inst|reg|reg_1|y\(3) & ((\inst4|inst|reg|reg_1|y\(1)))) # (!\inst4|inst|reg|reg_1|y\(3) & (\inst4|inst|reg|reg_1|y\(2) & !\inst4|inst|reg|reg_1|y\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101011110100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|inst|reg|reg_1|y\(3),
	datab => \inst4|inst|reg|reg_1|y\(2),
	datac => \inst4|inst|reg|reg_1|y\(5),
	datad => \inst4|inst|reg|reg_1|y\(1),
	combout => \inst4|inst1|data_out[2]~10_combout\);

-- Location: LCCOMB_X107_Y24_N8
\inst4|inst1|INS_OUT[2]~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|inst1|INS_OUT[2]~10_combout\ = (!\inst4|inst1|exception~2_combout\ & ((\inst4|inst|reg|reg_1|y\(4) & ((!\inst4|inst1|data_out[3]~8_combout\))) # (!\inst4|inst|reg|reg_1|y\(4) & (\inst4|inst1|data_out[2]~10_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000000110010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|inst|reg|reg_1|y\(4),
	datab => \inst4|inst1|exception~2_combout\,
	datac => \inst4|inst1|data_out[2]~10_combout\,
	datad => \inst4|inst1|data_out[3]~8_combout\,
	combout => \inst4|inst1|INS_OUT[2]~10_combout\);

-- Location: LCCOMB_X108_Y22_N20
\inst2|inst3|DOUT[2]~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|inst3|DOUT[2]~3_combout\ = (\inst|Mux8~0_combout\ & ((\inst|Mux9~0_combout\))) # (!\inst|Mux8~0_combout\ & (\inst4|inst1|INS_OUT[2]~10_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|inst1|INS_OUT[2]~10_combout\,
	datac => \inst|Mux9~0_combout\,
	datad => \inst|Mux8~0_combout\,
	combout => \inst2|inst3|DOUT[2]~3_combout\);

-- Location: LCCOMB_X111_Y21_N6
\inst2|inst1|alu1|mux|Mux3~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|inst1|alu1|mux|Mux3~0_combout\ = \inst2|inst2|OUT16B[4]~19_combout\ $ (((\inst2|inst3|DOUT[1]~4_combout\ & (\inst2|inst3|DOUT[2]~3_combout\ $ (\inst2|inst1|alu0|adder|C4~0_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|inst3|DOUT[2]~3_combout\,
	datab => \inst2|inst2|OUT16B[4]~19_combout\,
	datac => \inst2|inst1|alu0|adder|C4~0_combout\,
	datad => \inst2|inst3|DOUT[1]~4_combout\,
	combout => \inst2|inst1|alu1|mux|Mux3~0_combout\);

-- Location: LCCOMB_X111_Y21_N20
\inst2|inst1|alu1|mux|Mux3~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|inst1|alu1|mux|Mux3~1_combout\ = (\inst2|inst1|alu1|mux|Mux3~0_combout\ & (\inst2|inst3|DOUT[1]~4_combout\ $ (((!\inst2|inst3|DOUT[0]~2_combout\ & !\inst2|inst|mux_1|mux_1|mux_generate:1:mux_i|Mux3~5_combout\))))) # 
-- (!\inst2|inst1|alu1|mux|Mux3~0_combout\ & ((\inst2|inst3|DOUT[1]~4_combout\ $ (!\inst2|inst3|DOUT[0]~2_combout\)) # (!\inst2|inst|mux_1|mux_1|mux_generate:1:mux_i|Mux3~5_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100100111010111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|inst1|alu1|mux|Mux3~0_combout\,
	datab => \inst2|inst3|DOUT[1]~4_combout\,
	datac => \inst2|inst3|DOUT[0]~2_combout\,
	datad => \inst2|inst|mux_1|mux_1|mux_generate:1:mux_i|Mux3~5_combout\,
	combout => \inst2|inst1|alu1|mux|Mux3~1_combout\);

-- Location: LCCOMB_X110_Y21_N26
\inst|Mux3~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Mux3~7_combout\ = (\inst2|inst1|alu1|mux|Mux3~1_combout\ & (\inst2|inst1|alu0|mux|Mux0~2_combout\ $ (((!\inst2|inst1|alu0|mux|Mux0~1_combout\) # (!\inst2|inst3|DOUT[1]~4_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000001000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|inst1|alu1|mux|Mux3~1_combout\,
	datab => \inst2|inst1|alu0|mux|Mux0~2_combout\,
	datac => \inst2|inst3|DOUT[1]~4_combout\,
	datad => \inst2|inst1|alu0|mux|Mux0~1_combout\,
	combout => \inst|Mux3~7_combout\);

-- Location: LCCOMB_X110_Y21_N16
\inst1|DOUT[15]~53\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|DOUT[15]~53_combout\ = (\inst|Mux3~7_combout\ & (((!\inst2|inst1|alu0|mux|Mux3~0_combout\ & \inst2|inst1|alu0|mux|Mux2~1_combout\)) # (!\inst2|inst1|alu0|mux|Mux1~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Mux3~7_combout\,
	datab => \inst2|inst1|alu0|mux|Mux3~0_combout\,
	datac => \inst2|inst1|alu0|mux|Mux2~1_combout\,
	datad => \inst2|inst1|alu0|mux|Mux1~3_combout\,
	combout => \inst1|DOUT[15]~53_combout\);

-- Location: LCCOMB_X109_Y18_N24
\inst1|DOUT[15]~54\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|DOUT[15]~54_combout\ = (\inst1|DOUT[15]~53_combout\) # (!\inst|Mux5~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst1|DOUT[15]~53_combout\,
	datad => \inst|Mux5~0_combout\,
	combout => \inst1|DOUT[15]~54_combout\);

-- Location: LCCOMB_X111_Y17_N6
\inst1|DOUT[15]~42\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|DOUT[15]~42_combout\ = (\inst1|DOUT[13]~37_combout\ & (((\inst1|DOUT[13]~40_combout\)))) # (!\inst1|DOUT[13]~37_combout\ & ((\inst1|DOUT[13]~40_combout\ & ((\inst1|DOUT[15]~39_combout\))) # (!\inst1|DOUT[13]~40_combout\ & 
-- (\inst1|DOUT[15]~41_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010010100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|DOUT[13]~37_combout\,
	datab => \inst1|DOUT[15]~41_combout\,
	datac => \inst1|DOUT[13]~40_combout\,
	datad => \inst1|DOUT[15]~39_combout\,
	combout => \inst1|DOUT[15]~42_combout\);

-- Location: LCCOMB_X111_Y17_N30
\inst1|DOUT[15]~45\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|DOUT[15]~45_combout\ = (\inst1|DOUT[15]~42_combout\ & ((\inst1|DOUT[15]~44_combout\) # ((!\inst1|DOUT[13]~37_combout\)))) # (!\inst1|DOUT[15]~42_combout\ & (((\inst1|reg_gen:15:regs|y\(7) & \inst1|DOUT[13]~37_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|DOUT[15]~42_combout\,
	datab => \inst1|DOUT[15]~44_combout\,
	datac => \inst1|reg_gen:15:regs|y\(7),
	datad => \inst1|DOUT[13]~37_combout\,
	combout => \inst1|DOUT[15]~45_combout\);

-- Location: LCCOMB_X113_Y18_N0
\inst1|DOUT[15]~31\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|DOUT[15]~31_combout\ = (\inst2|inst1|alu0|mux|Mux2~1_combout\ & (((\inst2|inst1|alu0|mux|Mux1~3_combout\)))) # (!\inst2|inst1|alu0|mux|Mux2~1_combout\ & ((\inst2|inst1|alu0|mux|Mux1~3_combout\ & (\inst1|DOUT[15]~30_combout\)) # 
-- (!\inst2|inst1|alu0|mux|Mux1~3_combout\ & ((\inst1|reg_gen:20:regs|y\(7))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|inst1|alu0|mux|Mux2~1_combout\,
	datab => \inst1|DOUT[15]~30_combout\,
	datac => \inst1|reg_gen:20:regs|y\(7),
	datad => \inst2|inst1|alu0|mux|Mux1~3_combout\,
	combout => \inst1|DOUT[15]~31_combout\);

-- Location: LCCOMB_X113_Y18_N20
\inst1|DOUT[15]~33\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|DOUT[15]~33_combout\ = (\inst2|inst1|alu0|mux|Mux2~1_combout\ & ((\inst1|DOUT[15]~31_combout\ & (\inst1|DOUT[15]~32_combout\)) # (!\inst1|DOUT[15]~31_combout\ & ((\inst1|reg_gen:18:regs|y\(7)))))) # (!\inst2|inst1|alu0|mux|Mux2~1_combout\ & 
-- (((\inst1|DOUT[15]~31_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|DOUT[15]~32_combout\,
	datab => \inst2|inst1|alu0|mux|Mux2~1_combout\,
	datac => \inst1|reg_gen:18:regs|y\(7),
	datad => \inst1|DOUT[15]~31_combout\,
	combout => \inst1|DOUT[15]~33_combout\);

-- Location: LCCOMB_X109_Y18_N22
\inst1|DOUT[15]~36\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|DOUT[15]~36_combout\ = (\inst1|DOUT[13]~34_combout\ & (((\inst1|DOUT[15]~33_combout\) # (\inst1|DOUT[13]~29_combout\)))) # (!\inst1|DOUT[13]~34_combout\ & (\inst1|DOUT[15]~35_combout\ & ((!\inst1|DOUT[13]~29_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|DOUT[15]~35_combout\,
	datab => \inst1|DOUT[13]~34_combout\,
	datac => \inst1|DOUT[15]~33_combout\,
	datad => \inst1|DOUT[13]~29_combout\,
	combout => \inst1|DOUT[15]~36_combout\);

-- Location: LCCOMB_X109_Y18_N26
\inst1|DOUT[15]~46\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|DOUT[15]~46_combout\ = (\inst1|DOUT[15]~36_combout\ & ((\inst1|DOUT[15]~45_combout\) # ((!\inst1|DOUT[13]~29_combout\)))) # (!\inst1|DOUT[15]~36_combout\ & (((\inst1|reg_gen:16:regs|y\(7) & \inst1|DOUT[13]~29_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|DOUT[15]~45_combout\,
	datab => \inst1|reg_gen:16:regs|y\(7),
	datac => \inst1|DOUT[15]~36_combout\,
	datad => \inst1|DOUT[13]~29_combout\,
	combout => \inst1|DOUT[15]~46_combout\);

-- Location: LCCOMB_X109_Y17_N24
\inst1|reg_gen:31:regs|y[7]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|reg_gen:31:regs|y[7]~feeder_combout\ = \inst2|inst|mux_2|mux_1|mux_generate:3:mux_i|Mux0~4_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst2|inst|mux_2|mux_1|mux_generate:3:mux_i|Mux0~4_combout\,
	combout => \inst1|reg_gen:31:regs|y[7]~feeder_combout\);

-- Location: FF_X109_Y17_N25
\inst1|reg_gen:31:regs|y[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \SW17~input_o\,
	d => \inst1|reg_gen:31:regs|y[7]~feeder_combout\,
	ena => \inst1|dec_to_en[31]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|reg_gen:31:regs|y\(7));

-- Location: LCCOMB_X109_Y18_N30
\inst1|DOUT[15]~24\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|DOUT[15]~24_combout\ = (\inst1|reg_gen:31:regs|y\(7) & \inst1|DOUT[13]~23_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst1|reg_gen:31:regs|y\(7),
	datad => \inst1|DOUT[13]~23_combout\,
	combout => \inst1|DOUT[15]~24_combout\);

-- Location: LCCOMB_X109_Y18_N16
\inst1|DOUT[15]~28\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|DOUT[15]~28_combout\ = (\inst1|DOUT[15]~27_combout\ & (\inst1|DOUT[13]~21_combout\ & (!\inst2|inst1|alu0|mux|Mux0~3_combout\ & !\inst1|DOUT[13]~23_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|DOUT[15]~27_combout\,
	datab => \inst1|DOUT[13]~21_combout\,
	datac => \inst2|inst1|alu0|mux|Mux0~3_combout\,
	datad => \inst1|DOUT[13]~23_combout\,
	combout => \inst1|DOUT[15]~28_combout\);

-- Location: LCCOMB_X109_Y18_N4
\inst1|DOUT[15]~48\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|DOUT[15]~48_combout\ = (\inst1|DOUT[15]~24_combout\) # ((\inst1|DOUT[15]~28_combout\) # ((\inst1|DOUT[15]~46_combout\ & \inst1|DOUT[15]~47_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|DOUT[15]~46_combout\,
	datab => \inst1|DOUT[15]~47_combout\,
	datac => \inst1|DOUT[15]~24_combout\,
	datad => \inst1|DOUT[15]~28_combout\,
	combout => \inst1|DOUT[15]~48_combout\);

-- Location: LCCOMB_X109_Y18_N20
\inst1|DOUT[15]$latch\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|DOUT[15]$latch~combout\ = (!\inst1|DOUT[15]~54_combout\ & ((GLOBAL(\inst1|DOUT[15]~52clkctrl_outclk\) & ((\inst1|DOUT[15]~48_combout\))) # (!GLOBAL(\inst1|DOUT[15]~52clkctrl_outclk\) & (\inst1|DOUT[15]$latch~combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|DOUT[15]~54_combout\,
	datab => \inst1|DOUT[15]$latch~combout\,
	datac => \inst1|DOUT[15]~48_combout\,
	datad => \inst1|DOUT[15]~52clkctrl_outclk\,
	combout => \inst1|DOUT[15]$latch~combout\);

-- Location: LCCOMB_X107_Y25_N30
\inst4|inst3|add_3|S[3]\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|inst3|add_3|S\(3) = \inst4|inst3|add_3|C[3]~2_combout\ $ (\inst4|inst2|alu0|alu2|adder|S\(3) $ (((!\inst4|inst1|exception~2_combout\ & !\inst4|inst1|data_out[5]~5_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101011010101001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|inst3|add_3|C[3]~2_combout\,
	datab => \inst4|inst1|exception~2_combout\,
	datac => \inst4|inst1|data_out[5]~5_combout\,
	datad => \inst4|inst2|alu0|alu2|adder|S\(3),
	combout => \inst4|inst3|add_3|S\(3));

-- Location: LCCOMB_X107_Y25_N16
\inst4|inst3|add_3|S[0]~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|inst3|add_3|S[0]~4_combout\ = \inst4|inst3|add_2|C4~0_combout\ $ (\inst4|inst2|alu0|alu2|adder|S\(0) $ (((!\inst4|inst1|data_out[5]~5_combout\ & !\inst4|inst1|exception~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011001101001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|inst3|add_2|C4~0_combout\,
	datab => \inst4|inst2|alu0|alu2|adder|S\(0),
	datac => \inst4|inst1|data_out[5]~5_combout\,
	datad => \inst4|inst1|exception~2_combout\,
	combout => \inst4|inst3|add_3|S[0]~4_combout\);

-- Location: LCCOMB_X107_Y25_N18
\inst4|inst3|add_2|S[3]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|inst3|add_2|S[3]~2_combout\ = \inst4|inst3|add_2|C[3]~2_combout\ $ (\inst4|inst2|alu0|alu1|adder|S\(3) $ (((!\inst4|inst1|data_out[5]~5_combout\ & !\inst4|inst1|exception~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011001101001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|inst3|add_2|C[3]~2_combout\,
	datab => \inst4|inst2|alu0|alu1|adder|S\(3),
	datac => \inst4|inst1|data_out[5]~5_combout\,
	datad => \inst4|inst1|exception~2_combout\,
	combout => \inst4|inst3|add_2|S[3]~2_combout\);

-- Location: LCCOMB_X107_Y24_N14
\inst4|inst3|add_1|P[1]\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|inst3|add_1|P\(1) = (\inst4|inst1|exception~2_combout\ & (((\inst4|inst|reg|reg_1|y\(1))))) # (!\inst4|inst1|exception~2_combout\ & ((\inst4|inst1|data_out[0]~12_combout\ & (\inst4|inst|reg|reg_1|y\(3))) # (!\inst4|inst1|data_out[0]~12_combout\ & 
-- ((\inst4|inst|reg|reg_1|y\(1))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110001011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|inst|reg|reg_1|y\(3),
	datab => \inst4|inst1|exception~2_combout\,
	datac => \inst4|inst|reg|reg_1|y\(1),
	datad => \inst4|inst1|data_out[0]~12_combout\,
	combout => \inst4|inst3|add_1|P\(1));

-- Location: LCCOMB_X108_Y66_N24
\inst6|Mux0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst6|Mux0~0_combout\ = (\inst4|inst1|INS_OUT[2]~10_combout\ & (!\inst4|inst1|INS_OUT[1]~11_combout\ & (\inst4|inst1|INS_OUT[0]~12_combout\ $ (!\inst4|inst1|INS_OUT[3]~9_combout\)))) # (!\inst4|inst1|INS_OUT[2]~10_combout\ & 
-- (\inst4|inst1|INS_OUT[0]~12_combout\ & (\inst4|inst1|INS_OUT[1]~11_combout\ $ (!\inst4|inst1|INS_OUT[3]~9_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110000000010010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|inst1|INS_OUT[2]~10_combout\,
	datab => \inst4|inst1|INS_OUT[1]~11_combout\,
	datac => \inst4|inst1|INS_OUT[0]~12_combout\,
	datad => \inst4|inst1|INS_OUT[3]~9_combout\,
	combout => \inst6|Mux0~0_combout\);

-- Location: LCCOMB_X103_Y54_N20
\inst6|Mux1~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst6|Mux1~0_combout\ = (\inst4|inst1|INS_OUT[1]~11_combout\ & ((\inst4|inst1|INS_OUT[0]~12_combout\ & ((\inst4|inst1|INS_OUT[3]~9_combout\))) # (!\inst4|inst1|INS_OUT[0]~12_combout\ & (\inst4|inst1|INS_OUT[2]~10_combout\)))) # 
-- (!\inst4|inst1|INS_OUT[1]~11_combout\ & (\inst4|inst1|INS_OUT[2]~10_combout\ & (\inst4|inst1|INS_OUT[3]~9_combout\ $ (\inst4|inst1|INS_OUT[0]~12_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010011001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|inst1|INS_OUT[1]~11_combout\,
	datab => \inst4|inst1|INS_OUT[2]~10_combout\,
	datac => \inst4|inst1|INS_OUT[3]~9_combout\,
	datad => \inst4|inst1|INS_OUT[0]~12_combout\,
	combout => \inst6|Mux1~0_combout\);

-- Location: LCCOMB_X108_Y66_N22
\inst6|Mux2~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst6|Mux2~0_combout\ = (\inst4|inst1|INS_OUT[2]~10_combout\ & (\inst4|inst1|INS_OUT[3]~9_combout\ & ((\inst4|inst1|INS_OUT[1]~11_combout\) # (!\inst4|inst1|INS_OUT[0]~12_combout\)))) # (!\inst4|inst1|INS_OUT[2]~10_combout\ & 
-- (\inst4|inst1|INS_OUT[1]~11_combout\ & (!\inst4|inst1|INS_OUT[0]~12_combout\ & !\inst4|inst1|INS_OUT[3]~9_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000101000000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|inst1|INS_OUT[2]~10_combout\,
	datab => \inst4|inst1|INS_OUT[1]~11_combout\,
	datac => \inst4|inst1|INS_OUT[0]~12_combout\,
	datad => \inst4|inst1|INS_OUT[3]~9_combout\,
	combout => \inst6|Mux2~0_combout\);

-- Location: LCCOMB_X108_Y58_N12
\inst6|Mux3~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst6|Mux3~0_combout\ = (\inst4|inst1|INS_OUT[1]~11_combout\ & ((\inst4|inst1|INS_OUT[0]~12_combout\ & (\inst4|inst1|INS_OUT[2]~10_combout\)) # (!\inst4|inst1|INS_OUT[0]~12_combout\ & (!\inst4|inst1|INS_OUT[2]~10_combout\ & 
-- \inst4|inst1|INS_OUT[3]~9_combout\)))) # (!\inst4|inst1|INS_OUT[1]~11_combout\ & (!\inst4|inst1|INS_OUT[3]~9_combout\ & (\inst4|inst1|INS_OUT[0]~12_combout\ $ (\inst4|inst1|INS_OUT[2]~10_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001000010000110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|inst1|INS_OUT[0]~12_combout\,
	datab => \inst4|inst1|INS_OUT[2]~10_combout\,
	datac => \inst4|inst1|INS_OUT[1]~11_combout\,
	datad => \inst4|inst1|INS_OUT[3]~9_combout\,
	combout => \inst6|Mux3~0_combout\);

-- Location: LCCOMB_X103_Y54_N30
\inst6|Mux4~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst6|Mux4~0_combout\ = (\inst4|inst1|INS_OUT[1]~11_combout\ & (((!\inst4|inst1|INS_OUT[3]~9_combout\ & \inst4|inst1|INS_OUT[0]~12_combout\)))) # (!\inst4|inst1|INS_OUT[1]~11_combout\ & ((\inst4|inst1|INS_OUT[2]~10_combout\ & 
-- (!\inst4|inst1|INS_OUT[3]~9_combout\)) # (!\inst4|inst1|INS_OUT[2]~10_combout\ & ((\inst4|inst1|INS_OUT[0]~12_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001111100000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|inst1|INS_OUT[1]~11_combout\,
	datab => \inst4|inst1|INS_OUT[2]~10_combout\,
	datac => \inst4|inst1|INS_OUT[3]~9_combout\,
	datad => \inst4|inst1|INS_OUT[0]~12_combout\,
	combout => \inst6|Mux4~0_combout\);

-- Location: LCCOMB_X108_Y66_N0
\inst6|Mux5~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst6|Mux5~0_combout\ = (\inst4|inst1|INS_OUT[2]~10_combout\ & (\inst4|inst1|INS_OUT[0]~12_combout\ & (\inst4|inst1|INS_OUT[1]~11_combout\ $ (\inst4|inst1|INS_OUT[3]~9_combout\)))) # (!\inst4|inst1|INS_OUT[2]~10_combout\ & 
-- (!\inst4|inst1|INS_OUT[3]~9_combout\ & ((\inst4|inst1|INS_OUT[1]~11_combout\) # (\inst4|inst1|INS_OUT[0]~12_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000011010100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|inst1|INS_OUT[2]~10_combout\,
	datab => \inst4|inst1|INS_OUT[1]~11_combout\,
	datac => \inst4|inst1|INS_OUT[0]~12_combout\,
	datad => \inst4|inst1|INS_OUT[3]~9_combout\,
	combout => \inst6|Mux5~0_combout\);

-- Location: LCCOMB_X108_Y58_N22
\inst6|Mux6~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst6|Mux6~0_combout\ = (\inst4|inst1|INS_OUT[0]~12_combout\ & ((\inst4|inst1|INS_OUT[3]~9_combout\) # (\inst4|inst1|INS_OUT[2]~10_combout\ $ (\inst4|inst1|INS_OUT[1]~11_combout\)))) # (!\inst4|inst1|INS_OUT[0]~12_combout\ & 
-- ((\inst4|inst1|INS_OUT[1]~11_combout\) # (\inst4|inst1|INS_OUT[2]~10_combout\ $ (\inst4|inst1|INS_OUT[3]~9_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101101111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|inst1|INS_OUT[0]~12_combout\,
	datab => \inst4|inst1|INS_OUT[2]~10_combout\,
	datac => \inst4|inst1|INS_OUT[1]~11_combout\,
	datad => \inst4|inst1|INS_OUT[3]~9_combout\,
	combout => \inst6|Mux6~0_combout\);

-- Location: LCCOMB_X114_Y28_N4
\inst5|Mux0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst5|Mux0~0_combout\ = (\inst4|inst1|INS_OUT[6]~14_combout\ & (!\inst4|inst1|INS_OUT[5]~7_combout\ & (\inst4|inst1|INS_OUT[1]~11_combout\ $ (!\inst4|inst1|INS_OUT[4]~8_combout\)))) # (!\inst4|inst1|INS_OUT[6]~14_combout\ & 
-- (\inst4|inst1|INS_OUT[4]~8_combout\ & (\inst4|inst1|INS_OUT[5]~7_combout\ $ (!\inst4|inst1|INS_OUT[1]~11_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110000100000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|inst1|INS_OUT[6]~14_combout\,
	datab => \inst4|inst1|INS_OUT[5]~7_combout\,
	datac => \inst4|inst1|INS_OUT[1]~11_combout\,
	datad => \inst4|inst1|INS_OUT[4]~8_combout\,
	combout => \inst5|Mux0~0_combout\);

-- Location: LCCOMB_X114_Y28_N18
\inst5|Mux1~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst5|Mux1~0_combout\ = (\inst4|inst1|INS_OUT[5]~7_combout\ & ((\inst4|inst1|INS_OUT[4]~8_combout\ & ((\inst4|inst1|INS_OUT[1]~11_combout\))) # (!\inst4|inst1|INS_OUT[4]~8_combout\ & (\inst4|inst1|INS_OUT[6]~14_combout\)))) # 
-- (!\inst4|inst1|INS_OUT[5]~7_combout\ & (\inst4|inst1|INS_OUT[6]~14_combout\ & (\inst4|inst1|INS_OUT[1]~11_combout\ $ (\inst4|inst1|INS_OUT[4]~8_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001010101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|inst1|INS_OUT[6]~14_combout\,
	datab => \inst4|inst1|INS_OUT[5]~7_combout\,
	datac => \inst4|inst1|INS_OUT[1]~11_combout\,
	datad => \inst4|inst1|INS_OUT[4]~8_combout\,
	combout => \inst5|Mux1~0_combout\);

-- Location: LCCOMB_X114_Y28_N28
\inst5|Mux2~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst5|Mux2~0_combout\ = (\inst4|inst1|INS_OUT[6]~14_combout\ & (\inst4|inst1|INS_OUT[1]~11_combout\ & ((\inst4|inst1|INS_OUT[5]~7_combout\) # (!\inst4|inst1|INS_OUT[4]~8_combout\)))) # (!\inst4|inst1|INS_OUT[6]~14_combout\ & 
-- (\inst4|inst1|INS_OUT[5]~7_combout\ & (!\inst4|inst1|INS_OUT[1]~11_combout\ & !\inst4|inst1|INS_OUT[4]~8_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000010100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|inst1|INS_OUT[6]~14_combout\,
	datab => \inst4|inst1|INS_OUT[5]~7_combout\,
	datac => \inst4|inst1|INS_OUT[1]~11_combout\,
	datad => \inst4|inst1|INS_OUT[4]~8_combout\,
	combout => \inst5|Mux2~0_combout\);

-- Location: LCCOMB_X114_Y28_N2
\inst5|Mux3~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst5|Mux3~0_combout\ = (\inst4|inst1|INS_OUT[5]~7_combout\ & ((\inst4|inst1|INS_OUT[6]~14_combout\ & ((\inst4|inst1|INS_OUT[4]~8_combout\))) # (!\inst4|inst1|INS_OUT[6]~14_combout\ & (\inst4|inst1|INS_OUT[1]~11_combout\ & 
-- !\inst4|inst1|INS_OUT[4]~8_combout\)))) # (!\inst4|inst1|INS_OUT[5]~7_combout\ & (!\inst4|inst1|INS_OUT[1]~11_combout\ & (\inst4|inst1|INS_OUT[6]~14_combout\ $ (\inst4|inst1|INS_OUT[4]~8_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100101000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|inst1|INS_OUT[6]~14_combout\,
	datab => \inst4|inst1|INS_OUT[5]~7_combout\,
	datac => \inst4|inst1|INS_OUT[1]~11_combout\,
	datad => \inst4|inst1|INS_OUT[4]~8_combout\,
	combout => \inst5|Mux3~0_combout\);

-- Location: LCCOMB_X114_Y28_N8
\inst5|Mux4~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst5|Mux4~0_combout\ = (\inst4|inst1|INS_OUT[5]~7_combout\ & (((!\inst4|inst1|INS_OUT[1]~11_combout\ & \inst4|inst1|INS_OUT[4]~8_combout\)))) # (!\inst4|inst1|INS_OUT[5]~7_combout\ & ((\inst4|inst1|INS_OUT[6]~14_combout\ & 
-- (!\inst4|inst1|INS_OUT[1]~11_combout\)) # (!\inst4|inst1|INS_OUT[6]~14_combout\ & ((\inst4|inst1|INS_OUT[4]~8_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001111100000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|inst1|INS_OUT[6]~14_combout\,
	datab => \inst4|inst1|INS_OUT[5]~7_combout\,
	datac => \inst4|inst1|INS_OUT[1]~11_combout\,
	datad => \inst4|inst1|INS_OUT[4]~8_combout\,
	combout => \inst5|Mux4~0_combout\);

-- Location: LCCOMB_X114_Y28_N6
\inst5|Mux5~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst5|Mux5~0_combout\ = (\inst4|inst1|INS_OUT[6]~14_combout\ & (\inst4|inst1|INS_OUT[4]~8_combout\ & (\inst4|inst1|INS_OUT[5]~7_combout\ $ (\inst4|inst1|INS_OUT[1]~11_combout\)))) # (!\inst4|inst1|INS_OUT[6]~14_combout\ & 
-- (!\inst4|inst1|INS_OUT[1]~11_combout\ & ((\inst4|inst1|INS_OUT[5]~7_combout\) # (\inst4|inst1|INS_OUT[4]~8_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010110100000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|inst1|INS_OUT[6]~14_combout\,
	datab => \inst4|inst1|INS_OUT[5]~7_combout\,
	datac => \inst4|inst1|INS_OUT[1]~11_combout\,
	datad => \inst4|inst1|INS_OUT[4]~8_combout\,
	combout => \inst5|Mux5~0_combout\);

-- Location: LCCOMB_X114_Y28_N12
\inst5|Mux6~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst5|Mux6~0_combout\ = (\inst4|inst1|INS_OUT[4]~8_combout\ & ((\inst4|inst1|INS_OUT[1]~11_combout\) # (\inst4|inst1|INS_OUT[6]~14_combout\ $ (\inst4|inst1|INS_OUT[5]~7_combout\)))) # (!\inst4|inst1|INS_OUT[4]~8_combout\ & 
-- ((\inst4|inst1|INS_OUT[5]~7_combout\) # (\inst4|inst1|INS_OUT[6]~14_combout\ $ (\inst4|inst1|INS_OUT[1]~11_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111011011011110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|inst1|INS_OUT[6]~14_combout\,
	datab => \inst4|inst1|INS_OUT[5]~7_combout\,
	datac => \inst4|inst1|INS_OUT[1]~11_combout\,
	datad => \inst4|inst1|INS_OUT[4]~8_combout\,
	combout => \inst5|Mux6~0_combout\);

-- Location: LCCOMB_X111_Y23_N6
\inst8|Mux0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst8|Mux0~0_combout\ = (\inst2|inst|mux_1|mux_1|mux_generate:3:mux_i|Mux3~11_combout\ & (!\inst4|inst1|INS_OUT[9]~13_combout\ & (\inst4|inst1|INS_OUT[8]~16_combout\ $ (!\inst4|inst1|INS_OUT[15]~15_combout\)))) # 
-- (!\inst2|inst|mux_1|mux_1|mux_generate:3:mux_i|Mux3~11_combout\ & (\inst4|inst1|INS_OUT[8]~16_combout\ & (\inst4|inst1|INS_OUT[15]~15_combout\ $ (!\inst4|inst1|INS_OUT[9]~13_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000010000110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|inst|mux_1|mux_1|mux_generate:3:mux_i|Mux3~11_combout\,
	datab => \inst4|inst1|INS_OUT[8]~16_combout\,
	datac => \inst4|inst1|INS_OUT[15]~15_combout\,
	datad => \inst4|inst1|INS_OUT[9]~13_combout\,
	combout => \inst8|Mux0~0_combout\);

-- Location: LCCOMB_X111_Y23_N0
\inst8|Mux1~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst8|Mux1~0_combout\ = (\inst4|inst1|INS_OUT[15]~15_combout\ & ((\inst4|inst1|INS_OUT[8]~16_combout\ & ((\inst4|inst1|INS_OUT[9]~13_combout\))) # (!\inst4|inst1|INS_OUT[8]~16_combout\ & (\inst2|inst|mux_1|mux_1|mux_generate:3:mux_i|Mux3~11_combout\)))) 
-- # (!\inst4|inst1|INS_OUT[15]~15_combout\ & (\inst2|inst|mux_1|mux_1|mux_generate:3:mux_i|Mux3~11_combout\ & (\inst4|inst1|INS_OUT[8]~16_combout\ $ (\inst4|inst1|INS_OUT[9]~13_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110001000101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|inst|mux_1|mux_1|mux_generate:3:mux_i|Mux3~11_combout\,
	datab => \inst4|inst1|INS_OUT[8]~16_combout\,
	datac => \inst4|inst1|INS_OUT[15]~15_combout\,
	datad => \inst4|inst1|INS_OUT[9]~13_combout\,
	combout => \inst8|Mux1~0_combout\);

-- Location: LCCOMB_X111_Y23_N18
\inst8|Mux2~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst8|Mux2~0_combout\ = (\inst2|inst|mux_1|mux_1|mux_generate:3:mux_i|Mux3~11_combout\ & (\inst4|inst1|INS_OUT[15]~15_combout\ & ((\inst4|inst1|INS_OUT[9]~13_combout\) # (!\inst4|inst1|INS_OUT[8]~16_combout\)))) # 
-- (!\inst2|inst|mux_1|mux_1|mux_generate:3:mux_i|Mux3~11_combout\ & (!\inst4|inst1|INS_OUT[8]~16_combout\ & (!\inst4|inst1|INS_OUT[15]~15_combout\ & \inst4|inst1|INS_OUT[9]~13_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000100100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|inst|mux_1|mux_1|mux_generate:3:mux_i|Mux3~11_combout\,
	datab => \inst4|inst1|INS_OUT[8]~16_combout\,
	datac => \inst4|inst1|INS_OUT[15]~15_combout\,
	datad => \inst4|inst1|INS_OUT[9]~13_combout\,
	combout => \inst8|Mux2~0_combout\);

-- Location: LCCOMB_X111_Y23_N8
\inst8|Mux3~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst8|Mux3~0_combout\ = (\inst4|inst1|INS_OUT[9]~13_combout\ & ((\inst2|inst|mux_1|mux_1|mux_generate:3:mux_i|Mux3~11_combout\ & (\inst4|inst1|INS_OUT[8]~16_combout\)) # (!\inst2|inst|mux_1|mux_1|mux_generate:3:mux_i|Mux3~11_combout\ & 
-- (!\inst4|inst1|INS_OUT[8]~16_combout\ & \inst4|inst1|INS_OUT[15]~15_combout\)))) # (!\inst4|inst1|INS_OUT[9]~13_combout\ & (!\inst4|inst1|INS_OUT[15]~15_combout\ & (\inst2|inst|mux_1|mux_1|mux_generate:3:mux_i|Mux3~11_combout\ $ 
-- (\inst4|inst1|INS_OUT[8]~16_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001100000000110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|inst|mux_1|mux_1|mux_generate:3:mux_i|Mux3~11_combout\,
	datab => \inst4|inst1|INS_OUT[8]~16_combout\,
	datac => \inst4|inst1|INS_OUT[15]~15_combout\,
	datad => \inst4|inst1|INS_OUT[9]~13_combout\,
	combout => \inst8|Mux3~0_combout\);

-- Location: LCCOMB_X111_Y23_N30
\inst8|Mux4~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst8|Mux4~0_combout\ = (\inst4|inst1|INS_OUT[9]~13_combout\ & (((\inst4|inst1|INS_OUT[8]~16_combout\ & !\inst4|inst1|INS_OUT[15]~15_combout\)))) # (!\inst4|inst1|INS_OUT[9]~13_combout\ & ((\inst2|inst|mux_1|mux_1|mux_generate:3:mux_i|Mux3~11_combout\ & 
-- ((!\inst4|inst1|INS_OUT[15]~15_combout\))) # (!\inst2|inst|mux_1|mux_1|mux_generate:3:mux_i|Mux3~11_combout\ & (\inst4|inst1|INS_OUT[8]~16_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110001001110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|inst|mux_1|mux_1|mux_generate:3:mux_i|Mux3~11_combout\,
	datab => \inst4|inst1|INS_OUT[8]~16_combout\,
	datac => \inst4|inst1|INS_OUT[15]~15_combout\,
	datad => \inst4|inst1|INS_OUT[9]~13_combout\,
	combout => \inst8|Mux4~0_combout\);

-- Location: LCCOMB_X111_Y23_N12
\inst8|Mux5~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst8|Mux5~0_combout\ = (\inst2|inst|mux_1|mux_1|mux_generate:3:mux_i|Mux3~11_combout\ & (\inst4|inst1|INS_OUT[8]~16_combout\ & (\inst4|inst1|INS_OUT[15]~15_combout\ $ (\inst4|inst1|INS_OUT[9]~13_combout\)))) # 
-- (!\inst2|inst|mux_1|mux_1|mux_generate:3:mux_i|Mux3~11_combout\ & (!\inst4|inst1|INS_OUT[15]~15_combout\ & ((\inst4|inst1|INS_OUT[8]~16_combout\) # (\inst4|inst1|INS_OUT[9]~13_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110110000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|inst|mux_1|mux_1|mux_generate:3:mux_i|Mux3~11_combout\,
	datab => \inst4|inst1|INS_OUT[8]~16_combout\,
	datac => \inst4|inst1|INS_OUT[15]~15_combout\,
	datad => \inst4|inst1|INS_OUT[9]~13_combout\,
	combout => \inst8|Mux5~0_combout\);

-- Location: LCCOMB_X111_Y23_N14
\inst8|Mux6~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst8|Mux6~0_combout\ = (\inst4|inst1|INS_OUT[8]~16_combout\ & ((\inst4|inst1|INS_OUT[15]~15_combout\) # (\inst2|inst|mux_1|mux_1|mux_generate:3:mux_i|Mux3~11_combout\ $ (\inst4|inst1|INS_OUT[9]~13_combout\)))) # (!\inst4|inst1|INS_OUT[8]~16_combout\ & 
-- ((\inst4|inst1|INS_OUT[9]~13_combout\) # (\inst2|inst|mux_1|mux_1|mux_generate:3:mux_i|Mux3~11_combout\ $ (\inst4|inst1|INS_OUT[15]~15_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111011111011010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|inst|mux_1|mux_1|mux_generate:3:mux_i|Mux3~11_combout\,
	datab => \inst4|inst1|INS_OUT[8]~16_combout\,
	datac => \inst4|inst1|INS_OUT[15]~15_combout\,
	datad => \inst4|inst1|INS_OUT[9]~13_combout\,
	combout => \inst8|Mux6~0_combout\);

-- Location: LCCOMB_X111_Y22_N16
\inst7|Mux0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst7|Mux0~0_combout\ = (\inst4|inst1|INS_OUT[14]~5_combout\ & (!\inst4|inst1|INS_OUT[13]~4_combout\ & (\inst4|inst1|INS_OUT[12]~6_combout\ $ (!\inst4|inst1|INS_OUT[15]~15_combout\)))) # (!\inst4|inst1|INS_OUT[14]~5_combout\ & 
-- (\inst4|inst1|INS_OUT[12]~6_combout\ & (\inst4|inst1|INS_OUT[13]~4_combout\ $ (!\inst4|inst1|INS_OUT[15]~15_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010100000000110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|inst1|INS_OUT[12]~6_combout\,
	datab => \inst4|inst1|INS_OUT[14]~5_combout\,
	datac => \inst4|inst1|INS_OUT[13]~4_combout\,
	datad => \inst4|inst1|INS_OUT[15]~15_combout\,
	combout => \inst7|Mux0~0_combout\);

-- Location: LCCOMB_X111_Y22_N10
\inst7|Mux1~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst7|Mux1~0_combout\ = (\inst4|inst1|INS_OUT[13]~4_combout\ & ((\inst4|inst1|INS_OUT[12]~6_combout\ & ((\inst4|inst1|INS_OUT[15]~15_combout\))) # (!\inst4|inst1|INS_OUT[12]~6_combout\ & (\inst4|inst1|INS_OUT[14]~5_combout\)))) # 
-- (!\inst4|inst1|INS_OUT[13]~4_combout\ & (\inst4|inst1|INS_OUT[14]~5_combout\ & (\inst4|inst1|INS_OUT[12]~6_combout\ $ (\inst4|inst1|INS_OUT[15]~15_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010001001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|inst1|INS_OUT[12]~6_combout\,
	datab => \inst4|inst1|INS_OUT[14]~5_combout\,
	datac => \inst4|inst1|INS_OUT[13]~4_combout\,
	datad => \inst4|inst1|INS_OUT[15]~15_combout\,
	combout => \inst7|Mux1~0_combout\);

-- Location: LCCOMB_X111_Y22_N22
\inst7|Mux2~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst7|Mux2~0_combout\ = (\inst4|inst1|INS_OUT[14]~5_combout\ & (\inst4|inst1|INS_OUT[15]~15_combout\ & ((\inst4|inst1|INS_OUT[13]~4_combout\) # (!\inst4|inst1|INS_OUT[12]~6_combout\)))) # (!\inst4|inst1|INS_OUT[14]~5_combout\ & 
-- (!\inst4|inst1|INS_OUT[12]~6_combout\ & (\inst4|inst1|INS_OUT[13]~4_combout\ & !\inst4|inst1|INS_OUT[15]~15_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100010000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|inst1|INS_OUT[12]~6_combout\,
	datab => \inst4|inst1|INS_OUT[14]~5_combout\,
	datac => \inst4|inst1|INS_OUT[13]~4_combout\,
	datad => \inst4|inst1|INS_OUT[15]~15_combout\,
	combout => \inst7|Mux2~0_combout\);

-- Location: LCCOMB_X111_Y22_N6
\inst7|Mux3~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst7|Mux3~0_combout\ = (\inst4|inst1|INS_OUT[13]~4_combout\ & ((\inst4|inst1|INS_OUT[12]~6_combout\ & (\inst4|inst1|INS_OUT[14]~5_combout\)) # (!\inst4|inst1|INS_OUT[12]~6_combout\ & (!\inst4|inst1|INS_OUT[14]~5_combout\ & 
-- \inst4|inst1|INS_OUT[15]~15_combout\)))) # (!\inst4|inst1|INS_OUT[13]~4_combout\ & (!\inst4|inst1|INS_OUT[15]~15_combout\ & (\inst4|inst1|INS_OUT[12]~6_combout\ $ (\inst4|inst1|INS_OUT[14]~5_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001000010000110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|inst1|INS_OUT[12]~6_combout\,
	datab => \inst4|inst1|INS_OUT[14]~5_combout\,
	datac => \inst4|inst1|INS_OUT[13]~4_combout\,
	datad => \inst4|inst1|INS_OUT[15]~15_combout\,
	combout => \inst7|Mux3~0_combout\);

-- Location: LCCOMB_X111_Y22_N20
\inst7|Mux4~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst7|Mux4~0_combout\ = (\inst4|inst1|INS_OUT[13]~4_combout\ & (\inst4|inst1|INS_OUT[12]~6_combout\ & ((!\inst4|inst1|INS_OUT[15]~15_combout\)))) # (!\inst4|inst1|INS_OUT[13]~4_combout\ & ((\inst4|inst1|INS_OUT[14]~5_combout\ & 
-- ((!\inst4|inst1|INS_OUT[15]~15_combout\))) # (!\inst4|inst1|INS_OUT[14]~5_combout\ & (\inst4|inst1|INS_OUT[12]~6_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001010101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|inst1|INS_OUT[12]~6_combout\,
	datab => \inst4|inst1|INS_OUT[14]~5_combout\,
	datac => \inst4|inst1|INS_OUT[13]~4_combout\,
	datad => \inst4|inst1|INS_OUT[15]~15_combout\,
	combout => \inst7|Mux4~0_combout\);

-- Location: LCCOMB_X111_Y22_N14
\inst7|Mux5~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst7|Mux5~0_combout\ = (\inst4|inst1|INS_OUT[12]~6_combout\ & (\inst4|inst1|INS_OUT[15]~15_combout\ $ (((\inst4|inst1|INS_OUT[13]~4_combout\) # (!\inst4|inst1|INS_OUT[14]~5_combout\))))) # (!\inst4|inst1|INS_OUT[12]~6_combout\ & 
-- (!\inst4|inst1|INS_OUT[14]~5_combout\ & (\inst4|inst1|INS_OUT[13]~4_combout\ & !\inst4|inst1|INS_OUT[15]~15_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100010110010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|inst1|INS_OUT[12]~6_combout\,
	datab => \inst4|inst1|INS_OUT[14]~5_combout\,
	datac => \inst4|inst1|INS_OUT[13]~4_combout\,
	datad => \inst4|inst1|INS_OUT[15]~15_combout\,
	combout => \inst7|Mux5~0_combout\);

-- Location: LCCOMB_X111_Y22_N8
\inst7|Mux6~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst7|Mux6~0_combout\ = (\inst4|inst1|INS_OUT[12]~6_combout\ & ((\inst4|inst1|INS_OUT[15]~15_combout\) # (\inst4|inst1|INS_OUT[14]~5_combout\ $ (\inst4|inst1|INS_OUT[13]~4_combout\)))) # (!\inst4|inst1|INS_OUT[12]~6_combout\ & 
-- ((\inst4|inst1|INS_OUT[13]~4_combout\) # (\inst4|inst1|INS_OUT[14]~5_combout\ $ (\inst4|inst1|INS_OUT[15]~15_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101101111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|inst1|INS_OUT[12]~6_combout\,
	datab => \inst4|inst1|INS_OUT[14]~5_combout\,
	datac => \inst4|inst1|INS_OUT[13]~4_combout\,
	datad => \inst4|inst1|INS_OUT[15]~15_combout\,
	combout => \inst7|Mux6~0_combout\);

-- Location: LCCOMB_X98_Y4_N20
\inst10|Mux0~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst10|Mux0~2_combout\ = (\inst1|DOUT[2]$latch~combout\ & (!\inst1|DOUT[1]$latch~combout\ & (\inst1|DOUT[3]$latch~combout\ $ (!\inst1|DOUT[0]$latch~combout\)))) # (!\inst1|DOUT[2]$latch~combout\ & (\inst1|DOUT[0]$latch~combout\ & 
-- (\inst1|DOUT[1]$latch~combout\ $ (!\inst1|DOUT[3]$latch~combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110000100000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|DOUT[1]$latch~combout\,
	datab => \inst1|DOUT[2]$latch~combout\,
	datac => \inst1|DOUT[3]$latch~combout\,
	datad => \inst1|DOUT[0]$latch~combout\,
	combout => \inst10|Mux0~2_combout\);

-- Location: LCCOMB_X98_Y4_N26
\inst10|Mux0~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst10|Mux0~3_combout\ = (\inst1|DOUT[7]_2052~combout\ & \inst10|Mux0~2_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst1|DOUT[7]_2052~combout\,
	datad => \inst10|Mux0~2_combout\,
	combout => \inst10|Mux0~3_combout\);

-- Location: LCCOMB_X98_Y4_N28
\inst10|Mux1~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst10|Mux1~2_combout\ = (\inst1|DOUT[1]$latch~combout\ & ((\inst1|DOUT[0]$latch~combout\ & ((\inst1|DOUT[3]$latch~combout\))) # (!\inst1|DOUT[0]$latch~combout\ & (\inst1|DOUT[2]$latch~combout\)))) # (!\inst1|DOUT[1]$latch~combout\ & 
-- (\inst1|DOUT[2]$latch~combout\ & (\inst1|DOUT[3]$latch~combout\ $ (\inst1|DOUT[0]$latch~combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010011001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|DOUT[1]$latch~combout\,
	datab => \inst1|DOUT[2]$latch~combout\,
	datac => \inst1|DOUT[3]$latch~combout\,
	datad => \inst1|DOUT[0]$latch~combout\,
	combout => \inst10|Mux1~2_combout\);

-- Location: LCCOMB_X98_Y4_N14
\inst10|Mux1~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst10|Mux1~3_combout\ = (\inst10|Mux1~2_combout\) # (!\inst1|DOUT[7]_2052~combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst1|DOUT[7]_2052~combout\,
	datad => \inst10|Mux1~2_combout\,
	combout => \inst10|Mux1~3_combout\);

-- Location: LCCOMB_X98_Y4_N24
\inst10|Mux2~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst10|Mux2~2_combout\ = (\inst1|DOUT[2]$latch~combout\ & (\inst1|DOUT[3]$latch~combout\ & ((\inst1|DOUT[1]$latch~combout\) # (!\inst1|DOUT[0]$latch~combout\)))) # (!\inst1|DOUT[2]$latch~combout\ & (\inst1|DOUT[1]$latch~combout\ & 
-- (!\inst1|DOUT[3]$latch~combout\ & !\inst1|DOUT[0]$latch~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000011000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|DOUT[1]$latch~combout\,
	datab => \inst1|DOUT[2]$latch~combout\,
	datac => \inst1|DOUT[3]$latch~combout\,
	datad => \inst1|DOUT[0]$latch~combout\,
	combout => \inst10|Mux2~2_combout\);

-- Location: LCCOMB_X98_Y4_N6
\inst10|Mux2~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst10|Mux2~3_combout\ = (\inst10|Mux2~2_combout\) # (!\inst1|DOUT[7]_2052~combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst1|DOUT[7]_2052~combout\,
	datad => \inst10|Mux2~2_combout\,
	combout => \inst10|Mux2~3_combout\);

-- Location: LCCOMB_X98_Y4_N4
\inst10|Mux3~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst10|Mux3~2_combout\ = (\inst1|DOUT[1]$latch~combout\ & ((\inst1|DOUT[2]$latch~combout\ & ((\inst1|DOUT[0]$latch~combout\))) # (!\inst1|DOUT[2]$latch~combout\ & (\inst1|DOUT[3]$latch~combout\ & !\inst1|DOUT[0]$latch~combout\)))) # 
-- (!\inst1|DOUT[1]$latch~combout\ & (!\inst1|DOUT[3]$latch~combout\ & (\inst1|DOUT[2]$latch~combout\ $ (\inst1|DOUT[0]$latch~combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100100100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|DOUT[1]$latch~combout\,
	datab => \inst1|DOUT[2]$latch~combout\,
	datac => \inst1|DOUT[3]$latch~combout\,
	datad => \inst1|DOUT[0]$latch~combout\,
	combout => \inst10|Mux3~2_combout\);

-- Location: LCCOMB_X98_Y4_N2
\inst10|Mux3~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst10|Mux3~3_combout\ = (\inst10|Mux3~2_combout\) # (!\inst1|DOUT[7]_2052~combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111111001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst10|Mux3~2_combout\,
	datac => \inst1|DOUT[7]_2052~combout\,
	combout => \inst10|Mux3~3_combout\);

-- Location: LCCOMB_X98_Y4_N12
\inst10|Mux4~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst10|Mux4~2_combout\ = (\inst1|DOUT[1]$latch~combout\ & (((!\inst1|DOUT[3]$latch~combout\ & \inst1|DOUT[0]$latch~combout\)))) # (!\inst1|DOUT[1]$latch~combout\ & ((\inst1|DOUT[2]$latch~combout\ & (!\inst1|DOUT[3]$latch~combout\)) # 
-- (!\inst1|DOUT[2]$latch~combout\ & ((\inst1|DOUT[0]$latch~combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001111100000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|DOUT[1]$latch~combout\,
	datab => \inst1|DOUT[2]$latch~combout\,
	datac => \inst1|DOUT[3]$latch~combout\,
	datad => \inst1|DOUT[0]$latch~combout\,
	combout => \inst10|Mux4~2_combout\);

-- Location: LCCOMB_X98_Y4_N22
\inst10|Mux4~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst10|Mux4~3_combout\ = (\inst1|DOUT[7]_2052~combout\ & \inst10|Mux4~2_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst1|DOUT[7]_2052~combout\,
	datad => \inst10|Mux4~2_combout\,
	combout => \inst10|Mux4~3_combout\);

-- Location: LCCOMB_X98_Y4_N8
\inst10|Mux5~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst10|Mux5~2_combout\ = (\inst1|DOUT[1]$latch~combout\ & (!\inst1|DOUT[3]$latch~combout\ & ((\inst1|DOUT[0]$latch~combout\) # (!\inst1|DOUT[2]$latch~combout\)))) # (!\inst1|DOUT[1]$latch~combout\ & (\inst1|DOUT[0]$latch~combout\ & 
-- (\inst1|DOUT[2]$latch~combout\ $ (!\inst1|DOUT[3]$latch~combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100101100000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|DOUT[1]$latch~combout\,
	datab => \inst1|DOUT[2]$latch~combout\,
	datac => \inst1|DOUT[3]$latch~combout\,
	datad => \inst1|DOUT[0]$latch~combout\,
	combout => \inst10|Mux5~2_combout\);

-- Location: LCCOMB_X90_Y4_N24
\inst10|Mux5~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst10|Mux5~3_combout\ = (\inst10|Mux5~2_combout\ & \inst1|DOUT[7]_2052~combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst10|Mux5~2_combout\,
	datad => \inst1|DOUT[7]_2052~combout\,
	combout => \inst10|Mux5~3_combout\);

-- Location: LCCOMB_X98_Y4_N10
\inst10|Mux6~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst10|Mux6~2_combout\ = (\inst1|DOUT[0]$latch~combout\ & ((\inst1|DOUT[3]$latch~combout\) # (\inst1|DOUT[1]$latch~combout\ $ (\inst1|DOUT[2]$latch~combout\)))) # (!\inst1|DOUT[0]$latch~combout\ & ((\inst1|DOUT[1]$latch~combout\) # 
-- (\inst1|DOUT[2]$latch~combout\ $ (\inst1|DOUT[3]$latch~combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111011010111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|DOUT[1]$latch~combout\,
	datab => \inst1|DOUT[2]$latch~combout\,
	datac => \inst1|DOUT[3]$latch~combout\,
	datad => \inst1|DOUT[0]$latch~combout\,
	combout => \inst10|Mux6~2_combout\);

-- Location: LCCOMB_X90_Y4_N22
\inst10|Mux6~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst10|Mux6~3_combout\ = (\inst10|Mux6~2_combout\) # (!\inst1|DOUT[7]_2052~combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst1|DOUT[7]_2052~combout\,
	datad => \inst10|Mux6~2_combout\,
	combout => \inst10|Mux6~3_combout\);

-- Location: LCCOMB_X90_Y4_N28
\inst9|Mux0~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst9|Mux0~2_combout\ = (\inst1|DOUT[7]$latch~combout\ & (\inst1|DOUT[4]$latch~combout\ & (\inst1|DOUT[5]$latch~combout\ $ (\inst1|DOUT[6]$latch~combout\)))) # (!\inst1|DOUT[7]$latch~combout\ & (!\inst1|DOUT[5]$latch~combout\ & 
-- (\inst1|DOUT[6]$latch~combout\ $ (\inst1|DOUT[4]$latch~combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010100100010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|DOUT[7]$latch~combout\,
	datab => \inst1|DOUT[5]$latch~combout\,
	datac => \inst1|DOUT[6]$latch~combout\,
	datad => \inst1|DOUT[4]$latch~combout\,
	combout => \inst9|Mux0~2_combout\);

-- Location: LCCOMB_X90_Y4_N2
\inst9|Mux0~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst9|Mux0~3_combout\ = (\inst1|DOUT[7]_2052~combout\ & \inst9|Mux0~2_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst1|DOUT[7]_2052~combout\,
	datad => \inst9|Mux0~2_combout\,
	combout => \inst9|Mux0~3_combout\);

-- Location: LCCOMB_X90_Y4_N8
\inst9|Mux1~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst9|Mux1~2_combout\ = (\inst1|DOUT[7]$latch~combout\ & ((\inst1|DOUT[4]$latch~combout\ & (\inst1|DOUT[5]$latch~combout\)) # (!\inst1|DOUT[4]$latch~combout\ & ((\inst1|DOUT[6]$latch~combout\))))) # (!\inst1|DOUT[7]$latch~combout\ & 
-- (\inst1|DOUT[6]$latch~combout\ & (\inst1|DOUT[5]$latch~combout\ $ (\inst1|DOUT[4]$latch~combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001100011100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|DOUT[7]$latch~combout\,
	datab => \inst1|DOUT[5]$latch~combout\,
	datac => \inst1|DOUT[6]$latch~combout\,
	datad => \inst1|DOUT[4]$latch~combout\,
	combout => \inst9|Mux1~2_combout\);

-- Location: LCCOMB_X90_Y4_N26
\inst9|Mux1~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst9|Mux1~3_combout\ = (\inst9|Mux1~2_combout\) # (!\inst1|DOUT[7]_2052~combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst9|Mux1~2_combout\,
	datad => \inst1|DOUT[7]_2052~combout\,
	combout => \inst9|Mux1~3_combout\);

-- Location: LCCOMB_X90_Y4_N16
\inst9|Mux2~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst9|Mux2~2_combout\ = (\inst1|DOUT[7]$latch~combout\ & (\inst1|DOUT[6]$latch~combout\ & ((\inst1|DOUT[5]$latch~combout\) # (!\inst1|DOUT[4]$latch~combout\)))) # (!\inst1|DOUT[7]$latch~combout\ & (\inst1|DOUT[5]$latch~combout\ & 
-- (!\inst1|DOUT[6]$latch~combout\ & !\inst1|DOUT[4]$latch~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000010100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|DOUT[7]$latch~combout\,
	datab => \inst1|DOUT[5]$latch~combout\,
	datac => \inst1|DOUT[6]$latch~combout\,
	datad => \inst1|DOUT[4]$latch~combout\,
	combout => \inst9|Mux2~2_combout\);

-- Location: LCCOMB_X90_Y4_N10
\inst9|Mux2~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst9|Mux2~3_combout\ = (\inst9|Mux2~2_combout\) # (!\inst1|DOUT[7]_2052~combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst1|DOUT[7]_2052~combout\,
	datad => \inst9|Mux2~2_combout\,
	combout => \inst9|Mux2~3_combout\);

-- Location: LCCOMB_X90_Y4_N4
\inst9|Mux3~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst9|Mux3~2_combout\ = (\inst1|DOUT[5]$latch~combout\ & ((\inst1|DOUT[6]$latch~combout\ & ((\inst1|DOUT[4]$latch~combout\))) # (!\inst1|DOUT[6]$latch~combout\ & (\inst1|DOUT[7]$latch~combout\ & !\inst1|DOUT[4]$latch~combout\)))) # 
-- (!\inst1|DOUT[5]$latch~combout\ & (!\inst1|DOUT[7]$latch~combout\ & (\inst1|DOUT[6]$latch~combout\ $ (\inst1|DOUT[4]$latch~combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000100011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|DOUT[7]$latch~combout\,
	datab => \inst1|DOUT[5]$latch~combout\,
	datac => \inst1|DOUT[6]$latch~combout\,
	datad => \inst1|DOUT[4]$latch~combout\,
	combout => \inst9|Mux3~2_combout\);

-- Location: LCCOMB_X90_Y4_N6
\inst9|Mux3~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst9|Mux3~3_combout\ = (\inst9|Mux3~2_combout\) # (!\inst1|DOUT[7]_2052~combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst9|Mux3~2_combout\,
	datad => \inst1|DOUT[7]_2052~combout\,
	combout => \inst9|Mux3~3_combout\);

-- Location: LCCOMB_X90_Y4_N12
\inst9|Mux4~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst9|Mux4~2_combout\ = (\inst1|DOUT[5]$latch~combout\ & (!\inst1|DOUT[7]$latch~combout\ & ((\inst1|DOUT[4]$latch~combout\)))) # (!\inst1|DOUT[5]$latch~combout\ & ((\inst1|DOUT[6]$latch~combout\ & (!\inst1|DOUT[7]$latch~combout\)) # 
-- (!\inst1|DOUT[6]$latch~combout\ & ((\inst1|DOUT[4]$latch~combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101011100010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|DOUT[7]$latch~combout\,
	datab => \inst1|DOUT[5]$latch~combout\,
	datac => \inst1|DOUT[6]$latch~combout\,
	datad => \inst1|DOUT[4]$latch~combout\,
	combout => \inst9|Mux4~2_combout\);

-- Location: LCCOMB_X90_Y4_N14
\inst9|Mux4~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst9|Mux4~3_combout\ = (\inst1|DOUT[7]_2052~combout\ & \inst9|Mux4~2_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst1|DOUT[7]_2052~combout\,
	datad => \inst9|Mux4~2_combout\,
	combout => \inst9|Mux4~3_combout\);

-- Location: LCCOMB_X90_Y4_N0
\inst9|Mux5~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst9|Mux5~2_combout\ = (\inst1|DOUT[5]$latch~combout\ & (!\inst1|DOUT[7]$latch~combout\ & ((\inst1|DOUT[4]$latch~combout\) # (!\inst1|DOUT[6]$latch~combout\)))) # (!\inst1|DOUT[5]$latch~combout\ & (\inst1|DOUT[4]$latch~combout\ & 
-- (\inst1|DOUT[7]$latch~combout\ $ (!\inst1|DOUT[6]$latch~combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110010100000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|DOUT[7]$latch~combout\,
	datab => \inst1|DOUT[5]$latch~combout\,
	datac => \inst1|DOUT[6]$latch~combout\,
	datad => \inst1|DOUT[4]$latch~combout\,
	combout => \inst9|Mux5~2_combout\);

-- Location: LCCOMB_X90_Y4_N18
\inst9|Mux5~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst9|Mux5~3_combout\ = (\inst1|DOUT[7]_2052~combout\ & \inst9|Mux5~2_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst1|DOUT[7]_2052~combout\,
	datad => \inst9|Mux5~2_combout\,
	combout => \inst9|Mux5~3_combout\);

-- Location: LCCOMB_X90_Y4_N20
\inst9|Mux6~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst9|Mux6~2_combout\ = (\inst1|DOUT[4]$latch~combout\ & ((\inst1|DOUT[7]$latch~combout\) # (\inst1|DOUT[5]$latch~combout\ $ (\inst1|DOUT[6]$latch~combout\)))) # (!\inst1|DOUT[4]$latch~combout\ & ((\inst1|DOUT[5]$latch~combout\) # 
-- (\inst1|DOUT[7]$latch~combout\ $ (\inst1|DOUT[6]$latch~combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011111011011110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|DOUT[7]$latch~combout\,
	datab => \inst1|DOUT[5]$latch~combout\,
	datac => \inst1|DOUT[6]$latch~combout\,
	datad => \inst1|DOUT[4]$latch~combout\,
	combout => \inst9|Mux6~2_combout\);

-- Location: LCCOMB_X90_Y4_N30
\inst9|Mux6~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst9|Mux6~3_combout\ = (\inst9|Mux6~2_combout\) # (!\inst1|DOUT[7]_2052~combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst1|DOUT[7]_2052~combout\,
	datad => \inst9|Mux6~2_combout\,
	combout => \inst9|Mux6~3_combout\);

-- Location: LCCOMB_X85_Y4_N4
\inst12|Mux0~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst12|Mux0~2_combout\ = (\inst1|DOUT[11]$latch~combout\ & (\inst1|DOUT[8]$latch~combout\ & (\inst1|DOUT[9]$latch~combout\ $ (\inst1|DOUT[10]$latch~combout\)))) # (!\inst1|DOUT[11]$latch~combout\ & (!\inst1|DOUT[9]$latch~combout\ & 
-- (\inst1|DOUT[8]$latch~combout\ $ (\inst1|DOUT[10]$latch~combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000110010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|DOUT[9]$latch~combout\,
	datab => \inst1|DOUT[11]$latch~combout\,
	datac => \inst1|DOUT[8]$latch~combout\,
	datad => \inst1|DOUT[10]$latch~combout\,
	combout => \inst12|Mux0~2_combout\);

-- Location: LCCOMB_X85_Y4_N6
\inst12|Mux0~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst12|Mux0~3_combout\ = (\inst1|DOUT[15]_2612~combout\ & \inst12|Mux0~2_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst1|DOUT[15]_2612~combout\,
	datac => \inst12|Mux0~2_combout\,
	combout => \inst12|Mux0~3_combout\);

-- Location: LCCOMB_X85_Y4_N16
\inst12|Mux1~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst12|Mux1~2_combout\ = (\inst1|DOUT[9]$latch~combout\ & ((\inst1|DOUT[8]$latch~combout\ & (\inst1|DOUT[11]$latch~combout\)) # (!\inst1|DOUT[8]$latch~combout\ & ((\inst1|DOUT[10]$latch~combout\))))) # (!\inst1|DOUT[9]$latch~combout\ & 
-- (\inst1|DOUT[10]$latch~combout\ & (\inst1|DOUT[11]$latch~combout\ $ (\inst1|DOUT[8]$latch~combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001111010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|DOUT[9]$latch~combout\,
	datab => \inst1|DOUT[11]$latch~combout\,
	datac => \inst1|DOUT[8]$latch~combout\,
	datad => \inst1|DOUT[10]$latch~combout\,
	combout => \inst12|Mux1~2_combout\);

-- Location: LCCOMB_X85_Y4_N14
\inst12|Mux1~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst12|Mux1~3_combout\ = (\inst12|Mux1~2_combout\) # (!\inst1|DOUT[15]_2612~combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst1|DOUT[15]_2612~combout\,
	datad => \inst12|Mux1~2_combout\,
	combout => \inst12|Mux1~3_combout\);

-- Location: LCCOMB_X85_Y4_N20
\inst12|Mux2~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst12|Mux2~2_combout\ = (\inst1|DOUT[11]$latch~combout\ & (\inst1|DOUT[10]$latch~combout\ & ((\inst1|DOUT[9]$latch~combout\) # (!\inst1|DOUT[8]$latch~combout\)))) # (!\inst1|DOUT[11]$latch~combout\ & (\inst1|DOUT[9]$latch~combout\ & 
-- (!\inst1|DOUT[8]$latch~combout\ & !\inst1|DOUT[10]$latch~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000110000000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|DOUT[9]$latch~combout\,
	datab => \inst1|DOUT[11]$latch~combout\,
	datac => \inst1|DOUT[8]$latch~combout\,
	datad => \inst1|DOUT[10]$latch~combout\,
	combout => \inst12|Mux2~2_combout\);

-- Location: LCCOMB_X85_Y4_N2
\inst12|Mux2~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst12|Mux2~3_combout\ = (\inst12|Mux2~2_combout\) # (!\inst1|DOUT[15]_2612~combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst1|DOUT[15]_2612~combout\,
	datad => \inst12|Mux2~2_combout\,
	combout => \inst12|Mux2~3_combout\);

-- Location: LCCOMB_X85_Y4_N24
\inst12|Mux3~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst12|Mux3~2_combout\ = (\inst1|DOUT[9]$latch~combout\ & ((\inst1|DOUT[8]$latch~combout\ & ((\inst1|DOUT[10]$latch~combout\))) # (!\inst1|DOUT[8]$latch~combout\ & (\inst1|DOUT[11]$latch~combout\ & !\inst1|DOUT[10]$latch~combout\)))) # 
-- (!\inst1|DOUT[9]$latch~combout\ & (!\inst1|DOUT[11]$latch~combout\ & (\inst1|DOUT[8]$latch~combout\ $ (\inst1|DOUT[10]$latch~combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000100011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|DOUT[9]$latch~combout\,
	datab => \inst1|DOUT[11]$latch~combout\,
	datac => \inst1|DOUT[8]$latch~combout\,
	datad => \inst1|DOUT[10]$latch~combout\,
	combout => \inst12|Mux3~2_combout\);

-- Location: LCCOMB_X85_Y4_N18
\inst12|Mux3~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst12|Mux3~3_combout\ = (\inst12|Mux3~2_combout\) # (!\inst1|DOUT[15]_2612~combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst1|DOUT[15]_2612~combout\,
	datad => \inst12|Mux3~2_combout\,
	combout => \inst12|Mux3~3_combout\);

-- Location: LCCOMB_X85_Y4_N28
\inst12|Mux4~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst12|Mux4~2_combout\ = (\inst1|DOUT[9]$latch~combout\ & (!\inst1|DOUT[11]$latch~combout\ & (\inst1|DOUT[8]$latch~combout\))) # (!\inst1|DOUT[9]$latch~combout\ & ((\inst1|DOUT[10]$latch~combout\ & (!\inst1|DOUT[11]$latch~combout\)) # 
-- (!\inst1|DOUT[10]$latch~combout\ & ((\inst1|DOUT[8]$latch~combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000101110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|DOUT[9]$latch~combout\,
	datab => \inst1|DOUT[11]$latch~combout\,
	datac => \inst1|DOUT[8]$latch~combout\,
	datad => \inst1|DOUT[10]$latch~combout\,
	combout => \inst12|Mux4~2_combout\);

-- Location: LCCOMB_X74_Y4_N24
\inst12|Mux4~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst12|Mux4~3_combout\ = (\inst1|DOUT[15]_2612~combout\ & \inst12|Mux4~2_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst1|DOUT[15]_2612~combout\,
	datad => \inst12|Mux4~2_combout\,
	combout => \inst12|Mux4~3_combout\);

-- Location: LCCOMB_X85_Y4_N26
\inst12|Mux5~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst12|Mux5~2_combout\ = (\inst1|DOUT[9]$latch~combout\ & (!\inst1|DOUT[11]$latch~combout\ & ((\inst1|DOUT[8]$latch~combout\) # (!\inst1|DOUT[10]$latch~combout\)))) # (!\inst1|DOUT[9]$latch~combout\ & (\inst1|DOUT[8]$latch~combout\ & 
-- (\inst1|DOUT[11]$latch~combout\ $ (!\inst1|DOUT[10]$latch~combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110000000110010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|DOUT[9]$latch~combout\,
	datab => \inst1|DOUT[11]$latch~combout\,
	datac => \inst1|DOUT[8]$latch~combout\,
	datad => \inst1|DOUT[10]$latch~combout\,
	combout => \inst12|Mux5~2_combout\);

-- Location: LCCOMB_X74_Y4_N26
\inst12|Mux5~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst12|Mux5~3_combout\ = (\inst1|DOUT[15]_2612~combout\ & \inst12|Mux5~2_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst1|DOUT[15]_2612~combout\,
	datad => \inst12|Mux5~2_combout\,
	combout => \inst12|Mux5~3_combout\);

-- Location: LCCOMB_X85_Y4_N12
\inst12|Mux6~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst12|Mux6~2_combout\ = (\inst1|DOUT[8]$latch~combout\ & ((\inst1|DOUT[11]$latch~combout\) # (\inst1|DOUT[9]$latch~combout\ $ (\inst1|DOUT[10]$latch~combout\)))) # (!\inst1|DOUT[8]$latch~combout\ & ((\inst1|DOUT[9]$latch~combout\) # 
-- (\inst1|DOUT[11]$latch~combout\ $ (\inst1|DOUT[10]$latch~combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101101111101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|DOUT[9]$latch~combout\,
	datab => \inst1|DOUT[11]$latch~combout\,
	datac => \inst1|DOUT[8]$latch~combout\,
	datad => \inst1|DOUT[10]$latch~combout\,
	combout => \inst12|Mux6~2_combout\);

-- Location: LCCOMB_X85_Y4_N22
\inst12|Mux6~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst12|Mux6~3_combout\ = (\inst12|Mux6~2_combout\) # (!\inst1|DOUT[15]_2612~combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst1|DOUT[15]_2612~combout\,
	datad => \inst12|Mux6~2_combout\,
	combout => \inst12|Mux6~3_combout\);

-- Location: LCCOMB_X74_Y4_N28
\inst11|Mux0~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst11|Mux0~2_combout\ = (\inst1|DOUT[15]$latch~combout\ & (\inst1|DOUT[12]$latch~combout\ & (\inst1|DOUT[13]$latch~combout\ $ (\inst1|DOUT[14]$latch~combout\)))) # (!\inst1|DOUT[15]$latch~combout\ & (!\inst1|DOUT[13]$latch~combout\ & 
-- (\inst1|DOUT[12]$latch~combout\ $ (\inst1|DOUT[14]$latch~combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000110010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|DOUT[15]$latch~combout\,
	datab => \inst1|DOUT[13]$latch~combout\,
	datac => \inst1|DOUT[12]$latch~combout\,
	datad => \inst1|DOUT[14]$latch~combout\,
	combout => \inst11|Mux0~2_combout\);

-- Location: LCCOMB_X74_Y4_N2
\inst11|Mux0~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst11|Mux0~3_combout\ = (\inst1|DOUT[15]_2612~combout\ & \inst11|Mux0~2_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst1|DOUT[15]_2612~combout\,
	datad => \inst11|Mux0~2_combout\,
	combout => \inst11|Mux0~3_combout\);

-- Location: LCCOMB_X74_Y4_N8
\inst11|Mux1~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst11|Mux1~2_combout\ = (\inst1|DOUT[15]$latch~combout\ & ((\inst1|DOUT[12]$latch~combout\ & (\inst1|DOUT[13]$latch~combout\)) # (!\inst1|DOUT[12]$latch~combout\ & ((\inst1|DOUT[14]$latch~combout\))))) # (!\inst1|DOUT[15]$latch~combout\ & 
-- (\inst1|DOUT[14]$latch~combout\ & (\inst1|DOUT[13]$latch~combout\ $ (\inst1|DOUT[12]$latch~combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001111010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|DOUT[15]$latch~combout\,
	datab => \inst1|DOUT[13]$latch~combout\,
	datac => \inst1|DOUT[12]$latch~combout\,
	datad => \inst1|DOUT[14]$latch~combout\,
	combout => \inst11|Mux1~2_combout\);

-- Location: LCCOMB_X74_Y4_N30
\inst11|Mux1~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst11|Mux1~3_combout\ = (\inst11|Mux1~2_combout\) # (!\inst1|DOUT[15]_2612~combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111111001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst11|Mux1~2_combout\,
	datac => \inst1|DOUT[15]_2612~combout\,
	combout => \inst11|Mux1~3_combout\);

-- Location: LCCOMB_X74_Y4_N16
\inst11|Mux2~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst11|Mux2~2_combout\ = (\inst1|DOUT[15]$latch~combout\ & (\inst1|DOUT[14]$latch~combout\ & ((\inst1|DOUT[13]$latch~combout\) # (!\inst1|DOUT[12]$latch~combout\)))) # (!\inst1|DOUT[15]$latch~combout\ & (\inst1|DOUT[13]$latch~combout\ & 
-- (!\inst1|DOUT[12]$latch~combout\ & !\inst1|DOUT[14]$latch~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000101000000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|DOUT[15]$latch~combout\,
	datab => \inst1|DOUT[13]$latch~combout\,
	datac => \inst1|DOUT[12]$latch~combout\,
	datad => \inst1|DOUT[14]$latch~combout\,
	combout => \inst11|Mux2~2_combout\);

-- Location: LCCOMB_X74_Y4_N18
\inst11|Mux2~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst11|Mux2~3_combout\ = (\inst11|Mux2~2_combout\) # (!\inst1|DOUT[15]_2612~combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst1|DOUT[15]_2612~combout\,
	datad => \inst11|Mux2~2_combout\,
	combout => \inst11|Mux2~3_combout\);

-- Location: LCCOMB_X74_Y4_N0
\inst11|Mux3~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst11|Mux3~2_combout\ = (\inst1|DOUT[13]$latch~combout\ & ((\inst1|DOUT[12]$latch~combout\ & ((\inst1|DOUT[14]$latch~combout\))) # (!\inst1|DOUT[12]$latch~combout\ & (\inst1|DOUT[15]$latch~combout\ & !\inst1|DOUT[14]$latch~combout\)))) # 
-- (!\inst1|DOUT[13]$latch~combout\ & (!\inst1|DOUT[15]$latch~combout\ & (\inst1|DOUT[12]$latch~combout\ $ (\inst1|DOUT[14]$latch~combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000100011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|DOUT[15]$latch~combout\,
	datab => \inst1|DOUT[13]$latch~combout\,
	datac => \inst1|DOUT[12]$latch~combout\,
	datad => \inst1|DOUT[14]$latch~combout\,
	combout => \inst11|Mux3~2_combout\);

-- Location: LCCOMB_X74_Y4_N6
\inst11|Mux3~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst11|Mux3~3_combout\ = (\inst11|Mux3~2_combout\) # (!\inst1|DOUT[15]_2612~combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst1|DOUT[15]_2612~combout\,
	datad => \inst11|Mux3~2_combout\,
	combout => \inst11|Mux3~3_combout\);

-- Location: LCCOMB_X74_Y4_N4
\inst11|Mux4~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst11|Mux4~2_combout\ = (\inst1|DOUT[13]$latch~combout\ & (!\inst1|DOUT[15]$latch~combout\ & (\inst1|DOUT[12]$latch~combout\))) # (!\inst1|DOUT[13]$latch~combout\ & ((\inst1|DOUT[14]$latch~combout\ & (!\inst1|DOUT[15]$latch~combout\)) # 
-- (!\inst1|DOUT[14]$latch~combout\ & ((\inst1|DOUT[12]$latch~combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000101110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|DOUT[15]$latch~combout\,
	datab => \inst1|DOUT[13]$latch~combout\,
	datac => \inst1|DOUT[12]$latch~combout\,
	datad => \inst1|DOUT[14]$latch~combout\,
	combout => \inst11|Mux4~2_combout\);

-- Location: LCCOMB_X74_Y4_N14
\inst11|Mux4~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst11|Mux4~3_combout\ = (\inst11|Mux4~2_combout\ & \inst1|DOUT[15]_2612~combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst11|Mux4~2_combout\,
	datac => \inst1|DOUT[15]_2612~combout\,
	combout => \inst11|Mux4~3_combout\);

-- Location: LCCOMB_X74_Y4_N12
\inst11|Mux5~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst11|Mux5~2_combout\ = (\inst1|DOUT[13]$latch~combout\ & (!\inst1|DOUT[15]$latch~combout\ & ((\inst1|DOUT[12]$latch~combout\) # (!\inst1|DOUT[14]$latch~combout\)))) # (!\inst1|DOUT[13]$latch~combout\ & (\inst1|DOUT[12]$latch~combout\ & 
-- (\inst1|DOUT[15]$latch~combout\ $ (!\inst1|DOUT[14]$latch~combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110000001010100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|DOUT[15]$latch~combout\,
	datab => \inst1|DOUT[13]$latch~combout\,
	datac => \inst1|DOUT[12]$latch~combout\,
	datad => \inst1|DOUT[14]$latch~combout\,
	combout => \inst11|Mux5~2_combout\);

-- Location: LCCOMB_X74_Y4_N10
\inst11|Mux5~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst11|Mux5~3_combout\ = (\inst1|DOUT[15]_2612~combout\ & \inst11|Mux5~2_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst1|DOUT[15]_2612~combout\,
	datad => \inst11|Mux5~2_combout\,
	combout => \inst11|Mux5~3_combout\);

-- Location: LCCOMB_X74_Y4_N20
\inst11|Mux6~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst11|Mux6~2_combout\ = (\inst1|DOUT[12]$latch~combout\ & ((\inst1|DOUT[15]$latch~combout\) # (\inst1|DOUT[13]$latch~combout\ $ (\inst1|DOUT[14]$latch~combout\)))) # (!\inst1|DOUT[12]$latch~combout\ & ((\inst1|DOUT[13]$latch~combout\) # 
-- (\inst1|DOUT[15]$latch~combout\ $ (\inst1|DOUT[14]$latch~combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011110111101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|DOUT[15]$latch~combout\,
	datab => \inst1|DOUT[13]$latch~combout\,
	datac => \inst1|DOUT[12]$latch~combout\,
	datad => \inst1|DOUT[14]$latch~combout\,
	combout => \inst11|Mux6~2_combout\);

-- Location: LCCOMB_X74_Y4_N22
\inst11|Mux6~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst11|Mux6~3_combout\ = (\inst11|Mux6~2_combout\) # (!\inst1|DOUT[15]_2612~combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst1|DOUT[15]_2612~combout\,
	datad => \inst11|Mux6~2_combout\,
	combout => \inst11|Mux6~3_combout\);

-- Location: LCCOMB_X106_Y27_N26
\inst4|inst7|OUT16B[15]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|inst7|OUT16B[15]~2_combout\ = (\inst|Mux3~6_combout\ & ((\inst4|inst3|add_4|S\(3)))) # (!\inst|Mux3~6_combout\ & (\inst4|inst2|alu0|alu3|adder|S\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|inst2|alu0|alu3|adder|S\(3),
	datac => \inst|Mux3~6_combout\,
	datad => \inst4|inst3|add_4|S\(3),
	combout => \inst4|inst7|OUT16B[15]~2_combout\);

-- Location: LCCOMB_X106_Y27_N10
\inst4|inst7|OUT16B[14]~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|inst7|OUT16B[14]~3_combout\ = (\inst|Mux3~6_combout\ & ((\inst4|inst3|add_4|S\(2)))) # (!\inst|Mux3~6_combout\ & (\inst4|inst2|alu0|alu3|adder|S\(2)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010011100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Mux3~6_combout\,
	datab => \inst4|inst2|alu0|alu3|adder|S\(2),
	datac => \inst4|inst3|add_4|S\(2),
	combout => \inst4|inst7|OUT16B[14]~3_combout\);

-- Location: LCCOMB_X106_Y27_N16
\inst4|inst7|OUT16B[13]~16\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|inst7|OUT16B[13]~16_combout\ = (\inst|Mux3~6_combout\ & (((\inst4|inst3|add_4|S\(1))))) # (!\inst|Mux3~6_combout\ & (\inst4|inst|reg|reg_2|y\(5) $ (((\inst4|inst2|alu0|alu3|adder|C~0_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100010111001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|inst|reg|reg_2|y\(5),
	datab => \inst4|inst3|add_4|S\(1),
	datac => \inst|Mux3~6_combout\,
	datad => \inst4|inst2|alu0|alu3|adder|C~0_combout\,
	combout => \inst4|inst7|OUT16B[13]~16_combout\);

-- Location: LCCOMB_X114_Y32_N16
\inst4|JUMPMUX|OUT16B[11]~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|JUMPMUX|OUT16B[11]~7_combout\ = (\inst|Mux2~0_combout\ & (\inst2|inst|mux_1|mux_1|mux_generate:3:mux_i|Mux3~11_combout\)) # (!\inst|Mux2~0_combout\ & ((\inst4|inst7|OUT16B[11]~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst2|inst|mux_1|mux_1|mux_generate:3:mux_i|Mux3~11_combout\,
	datac => \inst4|inst7|OUT16B[11]~4_combout\,
	datad => \inst|Mux2~0_combout\,
	combout => \inst4|JUMPMUX|OUT16B[11]~7_combout\);

-- Location: LCCOMB_X111_Y23_N16
\inst4|JUMPMUX|OUT16B[10]~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|JUMPMUX|OUT16B[10]~8_combout\ = (\inst|Mux2~0_combout\ & ((\inst4|inst1|INS_OUT[9]~13_combout\))) # (!\inst|Mux2~0_combout\ & (\inst4|inst7|OUT16B[10]~5_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst4|inst7|OUT16B[10]~5_combout\,
	datac => \inst|Mux2~0_combout\,
	datad => \inst4|inst1|INS_OUT[9]~13_combout\,
	combout => \inst4|JUMPMUX|OUT16B[10]~8_combout\);

-- Location: LCCOMB_X111_Y23_N22
\inst4|JUMPMUX|OUT16B[9]~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|JUMPMUX|OUT16B[9]~9_combout\ = (\inst|Mux2~0_combout\ & ((\inst4|inst1|INS_OUT[8]~16_combout\))) # (!\inst|Mux2~0_combout\ & (\inst4|inst7|OUT16B[9]~6_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Mux2~0_combout\,
	datac => \inst4|inst7|OUT16B[9]~6_combout\,
	datad => \inst4|inst1|INS_OUT[8]~16_combout\,
	combout => \inst4|JUMPMUX|OUT16B[9]~9_combout\);

-- Location: LCCOMB_X106_Y27_N30
\inst4|JUMPMUX|OUT16B[8]~15\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|JUMPMUX|OUT16B[8]~15_combout\ = (\inst|Mux2~0_combout\ & (\inst4|inst1|data_out[1]~11_combout\ & ((!\inst4|inst1|exception~2_combout\)))) # (!\inst|Mux2~0_combout\ & (((\inst4|inst7|OUT16B[8]~7_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|inst1|data_out[1]~11_combout\,
	datab => \inst4|inst7|OUT16B[8]~7_combout\,
	datac => \inst4|inst1|exception~2_combout\,
	datad => \inst|Mux2~0_combout\,
	combout => \inst4|JUMPMUX|OUT16B[8]~15_combout\);

-- Location: LCCOMB_X114_Y28_N22
\inst4|JUMPMUX|OUT16B[7]~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|JUMPMUX|OUT16B[7]~10_combout\ = (\inst|Mux2~0_combout\ & (\inst4|inst1|INS_OUT[6]~14_combout\)) # (!\inst|Mux2~0_combout\ & ((\inst4|inst7|OUT16B[7]~8_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|inst1|INS_OUT[6]~14_combout\,
	datac => \inst|Mux2~0_combout\,
	datad => \inst4|inst7|OUT16B[7]~8_combout\,
	combout => \inst4|JUMPMUX|OUT16B[7]~10_combout\);

-- Location: LCCOMB_X106_Y27_N4
\inst4|JUMPMUX|OUT16B[6]~16\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|JUMPMUX|OUT16B[6]~16_combout\ = (\inst|Mux2~0_combout\ & (((!\inst4|inst1|data_out[5]~5_combout\ & !\inst4|inst1|exception~2_combout\)))) # (!\inst|Mux2~0_combout\ & (\inst4|inst7|OUT16B[6]~9_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|inst7|OUT16B[6]~9_combout\,
	datab => \inst4|inst1|data_out[5]~5_combout\,
	datac => \inst4|inst1|exception~2_combout\,
	datad => \inst|Mux2~0_combout\,
	combout => \inst4|JUMPMUX|OUT16B[6]~16_combout\);

-- Location: LCCOMB_X108_Y25_N0
\inst4|JUMPMUX|OUT16B[5]~11\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|JUMPMUX|OUT16B[5]~11_combout\ = (\inst|Mux2~0_combout\ & (\inst4|inst1|INS_OUT[4]~8_combout\)) # (!\inst|Mux2~0_combout\ & ((\inst4|inst7|OUT16B[5]~10_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|inst1|INS_OUT[4]~8_combout\,
	datac => \inst4|inst7|OUT16B[5]~10_combout\,
	datad => \inst|Mux2~0_combout\,
	combout => \inst4|JUMPMUX|OUT16B[5]~11_combout\);

-- Location: LCCOMB_X108_Y25_N4
\inst4|JUMPMUX|OUT16B[4]~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|JUMPMUX|OUT16B[4]~12_combout\ = (\inst|Mux2~0_combout\ & ((\inst4|inst1|INS_OUT[3]~9_combout\))) # (!\inst|Mux2~0_combout\ & (\inst4|inst7|OUT16B[4]~11_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|inst7|OUT16B[4]~11_combout\,
	datac => \inst4|inst1|INS_OUT[3]~9_combout\,
	datad => \inst|Mux2~0_combout\,
	combout => \inst4|JUMPMUX|OUT16B[4]~12_combout\);

-- Location: LCCOMB_X99_Y34_N16
\inst4|JUMPMUX|OUT16B[3]~13\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|JUMPMUX|OUT16B[3]~13_combout\ = (\inst|Mux2~0_combout\ & ((\inst4|inst1|INS_OUT[2]~10_combout\))) # (!\inst|Mux2~0_combout\ & (\inst4|inst7|OUT16B[3]~12_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|inst7|OUT16B[3]~12_combout\,
	datac => \inst4|inst1|INS_OUT[2]~10_combout\,
	datad => \inst|Mux2~0_combout\,
	combout => \inst4|JUMPMUX|OUT16B[3]~13_combout\);

-- Location: LCCOMB_X106_Y27_N22
\inst4|JUMPMUX|OUT16B[2]~17\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|JUMPMUX|OUT16B[2]~17_combout\ = (\inst|Mux2~0_combout\ & (\inst4|inst1|data_out[1]~11_combout\ & ((!\inst4|inst1|exception~2_combout\)))) # (!\inst|Mux2~0_combout\ & (((\inst4|inst7|OUT16B[2]~13_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|inst1|data_out[1]~11_combout\,
	datab => \inst4|inst7|OUT16B[2]~13_combout\,
	datac => \inst4|inst1|exception~2_combout\,
	datad => \inst|Mux2~0_combout\,
	combout => \inst4|JUMPMUX|OUT16B[2]~17_combout\);

-- Location: LCCOMB_X106_Y23_N20
\inst4|inst7|OUT16B[12]~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|inst7|OUT16B[12]~14_combout\ = (\inst|Mux3~6_combout\ & ((\inst4|inst3|add_4|S[0]~3_combout\))) # (!\inst|Mux3~6_combout\ & (\inst4|inst2|alu0|alu3|adder|S\(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010011100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Mux3~6_combout\,
	datab => \inst4|inst2|alu0|alu3|adder|S\(0),
	datac => \inst4|inst3|add_4|S[0]~3_combout\,
	combout => \inst4|inst7|OUT16B[12]~14_combout\);

-- Location: LCCOMB_X107_Y26_N22
\inst4|inst7|OUT16B[1]~15\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|inst7|OUT16B[1]~15_combout\ = \inst4|inst|reg|reg_1|y\(1) $ (((\inst4|inst1|INS_OUT[0]~12_combout\ & \inst|Mux3~6_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110101001101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|inst|reg|reg_1|y\(1),
	datab => \inst4|inst1|INS_OUT[0]~12_combout\,
	datac => \inst|Mux3~6_combout\,
	combout => \inst4|inst7|OUT16B[1]~15_combout\);

-- Location: LCCOMB_X106_Y23_N18
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

-- Location: LCCOMB_X107_Y25_N22
\inst4|inst2|alu0|alu2|adder|S[1]\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|inst2|alu0|alu2|adder|S\(1) = \inst4|inst|reg|reg_2|y\(1) $ (((\inst4|inst|reg|reg_2|y\(0) & (\inst4|inst|reg|reg_1|y\(7) & \inst4|inst2|alu0|alu1|adder|C~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110110011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|inst|reg|reg_2|y\(0),
	datab => \inst4|inst|reg|reg_2|y\(1),
	datac => \inst4|inst|reg|reg_1|y\(7),
	datad => \inst4|inst2|alu0|alu1|adder|C~1_combout\,
	combout => \inst4|inst2|alu0|alu2|adder|S\(1));

-- Location: LCCOMB_X107_Y25_N4
\inst4|inst2|alu0|alu1|adder|S[2]\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|inst2|alu0|alu1|adder|S\(2) = \inst4|inst|reg|reg_1|y\(6) $ (((\inst4|inst2|alu0|alu1|adder|C~0_combout\ & \inst4|inst|reg|reg_1|y\(5))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|inst2|alu0|alu1|adder|C~0_combout\,
	datab => \inst4|inst|reg|reg_1|y\(6),
	datad => \inst4|inst|reg|reg_1|y\(5),
	combout => \inst4|inst2|alu0|alu1|adder|S\(2));

-- Location: LCCOMB_X108_Y25_N18
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

-- Location: LCCOMB_X108_Y25_N28
\inst4|inst2|alu0|alu1|adder|S[0]\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|inst2|alu0|alu1|adder|S\(0) = \inst4|inst|reg|reg_1|y\(4) $ (((\inst4|inst|reg|reg_1|y\(2) & (\inst4|inst|reg|reg_1|y\(3) & \inst4|inst|reg|reg_1|y\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111111110000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|inst|reg|reg_1|y\(2),
	datab => \inst4|inst|reg|reg_1|y\(3),
	datac => \inst4|inst|reg|reg_1|y\(1),
	datad => \inst4|inst|reg|reg_1|y\(4),
	combout => \inst4|inst2|alu0|alu1|adder|S\(0));

-- Location: LCCOMB_X107_Y26_N24
\inst4|inst2|alu0|alu0|adder|S[3]\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|inst2|alu0|alu0|adder|S\(3) = \inst4|inst|reg|reg_1|y\(3) $ (((\inst4|inst|reg|reg_1|y\(1) & \inst4|inst|reg|reg_1|y\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|inst|reg|reg_1|y\(1),
	datac => \inst4|inst|reg|reg_1|y\(3),
	datad => \inst4|inst|reg|reg_1|y\(2),
	combout => \inst4|inst2|alu0|alu0|adder|S\(3));

-- Location: LCCOMB_X107_Y24_N22
\inst4|inst2|alu0|alu0|adder|S[2]\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|inst2|alu0|alu0|adder|S\(2) = \inst4|inst|reg|reg_1|y\(1) $ (\inst4|inst|reg|reg_1|y\(2))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|inst|reg|reg_1|y\(1),
	datac => \inst4|inst|reg|reg_1|y\(2),
	combout => \inst4|inst2|alu0|alu0|adder|S\(2));

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

ww_PCEnable <= \PCEnable~output_o\;

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

ww_HEX0(0) <= \HEX0[0]~output_o\;

ww_HEX0(1) <= \HEX0[1]~output_o\;

ww_HEX0(2) <= \HEX0[2]~output_o\;

ww_HEX0(3) <= \HEX0[3]~output_o\;

ww_HEX0(4) <= \HEX0[4]~output_o\;

ww_HEX0(5) <= \HEX0[5]~output_o\;

ww_HEX0(6) <= \HEX0[6]~output_o\;

ww_HEX1(0) <= \HEX1[0]~output_o\;

ww_HEX1(1) <= \HEX1[1]~output_o\;

ww_HEX1(2) <= \HEX1[2]~output_o\;

ww_HEX1(3) <= \HEX1[3]~output_o\;

ww_HEX1(4) <= \HEX1[4]~output_o\;

ww_HEX1(5) <= \HEX1[5]~output_o\;

ww_HEX1(6) <= \HEX1[6]~output_o\;

ww_HEX2(0) <= \HEX2[0]~output_o\;

ww_HEX2(1) <= \HEX2[1]~output_o\;

ww_HEX2(2) <= \HEX2[2]~output_o\;

ww_HEX2(3) <= \HEX2[3]~output_o\;

ww_HEX2(4) <= \HEX2[4]~output_o\;

ww_HEX2(5) <= \HEX2[5]~output_o\;

ww_HEX2(6) <= \HEX2[6]~output_o\;

ww_HEX3(0) <= \HEX3[0]~output_o\;

ww_HEX3(1) <= \HEX3[1]~output_o\;

ww_HEX3(2) <= \HEX3[2]~output_o\;

ww_HEX3(3) <= \HEX3[3]~output_o\;

ww_HEX3(4) <= \HEX3[4]~output_o\;

ww_HEX3(5) <= \HEX3[5]~output_o\;

ww_HEX3(6) <= \HEX3[6]~output_o\;

ww_HEX4(0) <= \HEX4[0]~output_o\;

ww_HEX4(1) <= \HEX4[1]~output_o\;

ww_HEX4(2) <= \HEX4[2]~output_o\;

ww_HEX4(3) <= \HEX4[3]~output_o\;

ww_HEX4(4) <= \HEX4[4]~output_o\;

ww_HEX4(5) <= \HEX4[5]~output_o\;

ww_HEX4(6) <= \HEX4[6]~output_o\;

ww_HEX5(0) <= \HEX5[0]~output_o\;

ww_HEX5(1) <= \HEX5[1]~output_o\;

ww_HEX5(2) <= \HEX5[2]~output_o\;

ww_HEX5(3) <= \HEX5[3]~output_o\;

ww_HEX5(4) <= \HEX5[4]~output_o\;

ww_HEX5(5) <= \HEX5[5]~output_o\;

ww_HEX5(6) <= \HEX5[6]~output_o\;

ww_HEX6(0) <= \HEX6[0]~output_o\;

ww_HEX6(1) <= \HEX6[1]~output_o\;

ww_HEX6(2) <= \HEX6[2]~output_o\;

ww_HEX6(3) <= \HEX6[3]~output_o\;

ww_HEX6(4) <= \HEX6[4]~output_o\;

ww_HEX6(5) <= \HEX6[5]~output_o\;

ww_HEX6(6) <= \HEX6[6]~output_o\;

ww_HEX7(0) <= \HEX7[0]~output_o\;

ww_HEX7(1) <= \HEX7[1]~output_o\;

ww_HEX7(2) <= \HEX7[2]~output_o\;

ww_HEX7(3) <= \HEX7[3]~output_o\;

ww_HEX7(4) <= \HEX7[4]~output_o\;

ww_HEX7(5) <= \HEX7[5]~output_o\;

ww_HEX7(6) <= \HEX7[6]~output_o\;

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


