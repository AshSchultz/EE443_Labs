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

-- DATE "04/24/2026 02:10:23"

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
	DOUT1 : OUT std_logic_vector(15 DOWNTO 0);
	DOUT2 : OUT std_logic_vector(15 DOWNTO 0)
	);
END REG8X16;

-- Design Ports Information
-- DOUT1[0]	=>  Location: PIN_A10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- DOUT1[1]	=>  Location: PIN_D15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- DOUT1[2]	=>  Location: PIN_H12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- DOUT1[3]	=>  Location: PIN_B10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- DOUT1[4]	=>  Location: PIN_C12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- DOUT1[5]	=>  Location: PIN_D12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- DOUT1[6]	=>  Location: PIN_F14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- DOUT1[7]	=>  Location: PIN_D13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- DOUT1[8]	=>  Location: PIN_G14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- DOUT1[9]	=>  Location: PIN_H5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- DOUT1[10]	=>  Location: PIN_J10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- DOUT1[11]	=>  Location: PIN_H10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- DOUT1[12]	=>  Location: PIN_L5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- DOUT1[13]	=>  Location: PIN_A7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- DOUT1[14]	=>  Location: PIN_H14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- DOUT1[15]	=>  Location: PIN_C11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- DOUT2[0]	=>  Location: PIN_F12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- DOUT2[1]	=>  Location: PIN_E12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- DOUT2[2]	=>  Location: PIN_B7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- DOUT2[3]	=>  Location: PIN_C7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- DOUT2[4]	=>  Location: PIN_J13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- DOUT2[5]	=>  Location: PIN_J14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- DOUT2[6]	=>  Location: PIN_C8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- DOUT2[7]	=>  Location: PIN_D7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- DOUT2[8]	=>  Location: PIN_C15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- DOUT2[9]	=>  Location: PIN_F11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- DOUT2[10]	=>  Location: PIN_D11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- DOUT2[11]	=>  Location: PIN_G12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- DOUT2[12]	=>  Location: PIN_G11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- DOUT2[13]	=>  Location: PIN_E11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- DOUT2[14]	=>  Location: PIN_A12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- DOUT2[15]	=>  Location: PIN_G10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ADD_R1[1]	=>  Location: PIN_J28,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ADD_R1[2]	=>  Location: PIN_J27,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ADD_R1[0]	=>  Location: PIN_J12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ADD_R2[1]	=>  Location: PIN_A11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ADD_R2[2]	=>  Location: PIN_D10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ADD_R2[0]	=>  Location: PIN_C10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- DIN[0]	=>  Location: PIN_H13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- CLK	=>  Location: PIN_J1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ADD_W[2]	=>  Location: PIN_D9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ADD_W[0]	=>  Location: PIN_C9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- WE	=>  Location: PIN_B6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ADD_W[1]	=>  Location: PIN_A6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- DIN[1]	=>  Location: PIN_C13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- DIN[2]	=>  Location: PIN_G13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- DIN[3]	=>  Location: PIN_E14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- DIN[4]	=>  Location: PIN_C14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- DIN[5]	=>  Location: PIN_D14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- DIN[6]	=>  Location: PIN_B11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- DIN[7]	=>  Location: PIN_E15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- DIN[8]	=>  Location: PIN_F15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- DIN[9]	=>  Location: PIN_F10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- DIN[10]	=>  Location: PIN_A8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- DIN[11]	=>  Location: PIN_B8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- DIN[12]	=>  Location: PIN_F1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- DIN[13]	=>  Location: PIN_E10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- DIN[14]	=>  Location: PIN_D8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- DIN[15]	=>  Location: PIN_J4,	 I/O Standard: 2.5 V,	 Current Strength: Default


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
SIGNAL \ADD_R1[0]~input_o\ : std_logic;
SIGNAL \ADD_R1[2]~input_o\ : std_logic;
SIGNAL \ADD_R1[1]~input_o\ : std_logic;
SIGNAL \mux_1|mux_1|mux_generate:0:mux_i|Mux2~2_combout\ : std_logic;
SIGNAL \mux_1|mux_1|mux_generate:0:mux_i|Mux2~1_combout\ : std_logic;
SIGNAL \CLK~input_o\ : std_logic;
SIGNAL \CLK~inputclkctrl_outclk\ : std_logic;
SIGNAL \DIN[0]~input_o\ : std_logic;
SIGNAL \ADD_W[1]~input_o\ : std_logic;
SIGNAL \ADD_W[0]~input_o\ : std_logic;
SIGNAL \ADD_W[2]~input_o\ : std_logic;
SIGNAL \WE~input_o\ : std_logic;
SIGNAL \add_reg1_dcd|Mux3~2_combout\ : std_logic;
SIGNAL \add_reg1_dcd|Mux3~3_combout\ : std_logic;
SIGNAL \mux_1|mux_1|mux_generate:0:mux_i|Mux3~0_combout\ : std_logic;
SIGNAL \mux_1|mux_1|mux_generate:0:mux_i|Mux3~1_combout\ : std_logic;
SIGNAL \add_reg1_dcd|Mux3~1_combout\ : std_logic;
SIGNAL \add_reg1_dcd|Mux3~0_combout\ : std_logic;
SIGNAL \mux_1|mux_1|mux_generate:0:mux_i|Mux2~0_combout\ : std_logic;
SIGNAL \mux_1|mux_1|mux_generate:0:mux_i|Mux3~2_combout\ : std_logic;
SIGNAL \add_reg1_dcd|Mux3~5_combout\ : std_logic;
SIGNAL \add_reg1_dcd|Mux3~4_combout\ : std_logic;
SIGNAL \mux_1|mux_1|mux_generate:0:mux_i|Mux3~3_combout\ : std_logic;
SIGNAL \mux_1|mux_1|mux_generate:0:mux_i|Mux3~4_combout\ : std_logic;
SIGNAL \DIN[1]~input_o\ : std_logic;
SIGNAL \mux_1|mux_1|mux_generate:0:mux_i|Mux2~3_combout\ : std_logic;
SIGNAL \mux_1|mux_1|mux_generate:0:mux_i|Mux2~4_combout\ : std_logic;
SIGNAL \mux_1|mux_1|mux_generate:0:mux_i|Mux2~5_combout\ : std_logic;
SIGNAL \mux_1|mux_1|mux_generate:0:mux_i|Mux2~6_combout\ : std_logic;
SIGNAL \mux_1|mux_1|mux_generate:0:mux_i|Mux2~7_combout\ : std_logic;
SIGNAL \DIN[2]~input_o\ : std_logic;
SIGNAL \mux_1|mux_1|mux_generate:0:mux_i|Mux1~3_combout\ : std_logic;
SIGNAL \mux_1|mux_1|mux_generate:0:mux_i|Mux1~0_combout\ : std_logic;
SIGNAL \mux_1|mux_1|mux_generate:0:mux_i|Mux1~1_combout\ : std_logic;
SIGNAL \mux_1|mux_1|mux_generate:0:mux_i|Mux1~2_combout\ : std_logic;
SIGNAL \mux_1|mux_1|mux_generate:0:mux_i|Mux1~4_combout\ : std_logic;
SIGNAL \DIN[3]~input_o\ : std_logic;
SIGNAL \mux_1|mux_1|mux_generate:0:mux_i|Mux0~3_combout\ : std_logic;
SIGNAL \mux_1|mux_1|mux_generate:0:mux_i|Mux0~0_combout\ : std_logic;
SIGNAL \mux_1|mux_1|mux_generate:0:mux_i|Mux0~1_combout\ : std_logic;
SIGNAL \mux_1|mux_1|mux_generate:0:mux_i|Mux0~2_combout\ : std_logic;
SIGNAL \mux_1|mux_1|mux_generate:0:mux_i|Mux0~4_combout\ : std_logic;
SIGNAL \DIN[4]~input_o\ : std_logic;
SIGNAL \mux_1|mux_1|mux_generate:1:mux_i|Mux3~0_combout\ : std_logic;
SIGNAL \mux_1|mux_1|mux_generate:1:mux_i|Mux3~1_combout\ : std_logic;
SIGNAL \mux_1|mux_1|mux_generate:1:mux_i|Mux3~2_combout\ : std_logic;
SIGNAL \mux_1|mux_1|mux_generate:1:mux_i|Mux3~3_combout\ : std_logic;
SIGNAL \mux_1|mux_1|mux_generate:1:mux_i|Mux3~4_combout\ : std_logic;
SIGNAL \DIN[5]~input_o\ : std_logic;
SIGNAL \mux_1|mux_1|mux_generate:1:mux_i|Mux2~3_combout\ : std_logic;
SIGNAL \mux_1|mux_1|mux_generate:1:mux_i|Mux2~0_combout\ : std_logic;
SIGNAL \mux_1|mux_1|mux_generate:1:mux_i|Mux2~1_combout\ : std_logic;
SIGNAL \mux_1|mux_1|mux_generate:1:mux_i|Mux2~2_combout\ : std_logic;
SIGNAL \mux_1|mux_1|mux_generate:1:mux_i|Mux2~4_combout\ : std_logic;
SIGNAL \DIN[6]~input_o\ : std_logic;
SIGNAL \mux_1|mux_1|mux_generate:1:mux_i|Mux1~3_combout\ : std_logic;
SIGNAL \mux_1|mux_1|mux_generate:1:mux_i|Mux1~0_combout\ : std_logic;
SIGNAL \mux_1|mux_1|mux_generate:1:mux_i|Mux1~1_combout\ : std_logic;
SIGNAL \mux_1|mux_1|mux_generate:1:mux_i|Mux1~2_combout\ : std_logic;
SIGNAL \mux_1|mux_1|mux_generate:1:mux_i|Mux1~4_combout\ : std_logic;
SIGNAL \DIN[7]~input_o\ : std_logic;
SIGNAL \mux_1|mux_1|mux_generate:1:mux_i|Mux0~0_combout\ : std_logic;
SIGNAL \mux_1|mux_1|mux_generate:1:mux_i|Mux0~1_combout\ : std_logic;
SIGNAL \mux_1|mux_1|mux_generate:1:mux_i|Mux0~2_combout\ : std_logic;
SIGNAL \mux_1|mux_1|mux_generate:1:mux_i|Mux0~3_combout\ : std_logic;
SIGNAL \mux_1|mux_1|mux_generate:1:mux_i|Mux0~4_combout\ : std_logic;
SIGNAL \DIN[8]~input_o\ : std_logic;
SIGNAL \mux_1|mux_1|mux_generate:2:mux_i|Mux3~0_combout\ : std_logic;
SIGNAL \mux_1|mux_1|mux_generate:2:mux_i|Mux3~1_combout\ : std_logic;
SIGNAL \mux_1|mux_1|mux_generate:2:mux_i|Mux3~2_combout\ : std_logic;
SIGNAL \mux_1|mux_1|mux_generate:2:mux_i|Mux3~3_combout\ : std_logic;
SIGNAL \mux_1|mux_1|mux_generate:2:mux_i|Mux3~4_combout\ : std_logic;
SIGNAL \DIN[9]~input_o\ : std_logic;
SIGNAL \mux_1|mux_1|mux_generate:2:mux_i|Mux2~0_combout\ : std_logic;
SIGNAL \mux_1|mux_1|mux_generate:2:mux_i|Mux2~1_combout\ : std_logic;
SIGNAL \mux_1|mux_1|mux_generate:2:mux_i|Mux2~2_combout\ : std_logic;
SIGNAL \mux_1|mux_1|mux_generate:2:mux_i|Mux2~3_combout\ : std_logic;
SIGNAL \mux_1|mux_1|mux_generate:2:mux_i|Mux2~4_combout\ : std_logic;
SIGNAL \DIN[10]~input_o\ : std_logic;
SIGNAL \mux_1|mux_1|mux_generate:2:mux_i|Mux1~3_combout\ : std_logic;
SIGNAL \mux_1|mux_1|mux_generate:2:mux_i|Mux1~0_combout\ : std_logic;
SIGNAL \mux_1|mux_1|mux_generate:2:mux_i|Mux1~1_combout\ : std_logic;
SIGNAL \mux_1|mux_1|mux_generate:2:mux_i|Mux1~2_combout\ : std_logic;
SIGNAL \mux_1|mux_1|mux_generate:2:mux_i|Mux1~4_combout\ : std_logic;
SIGNAL \DIN[11]~input_o\ : std_logic;
SIGNAL \mux_1|mux_1|mux_generate:2:mux_i|Mux0~0_combout\ : std_logic;
SIGNAL \mux_1|mux_1|mux_generate:2:mux_i|Mux0~1_combout\ : std_logic;
SIGNAL \mux_1|mux_1|mux_generate:2:mux_i|Mux0~2_combout\ : std_logic;
SIGNAL \mux_1|mux_1|mux_generate:2:mux_i|Mux0~3_combout\ : std_logic;
SIGNAL \mux_1|mux_1|mux_generate:2:mux_i|Mux0~4_combout\ : std_logic;
SIGNAL \DIN[12]~input_o\ : std_logic;
SIGNAL \mux_1|mux_1|mux_generate:3:mux_i|Mux3~0_combout\ : std_logic;
SIGNAL \mux_1|mux_1|mux_generate:3:mux_i|Mux3~1_combout\ : std_logic;
SIGNAL \mux_1|mux_1|mux_generate:3:mux_i|Mux3~2_combout\ : std_logic;
SIGNAL \mux_1|mux_1|mux_generate:3:mux_i|Mux3~3_combout\ : std_logic;
SIGNAL \mux_1|mux_1|mux_generate:3:mux_i|Mux3~4_combout\ : std_logic;
SIGNAL \DIN[13]~input_o\ : std_logic;
SIGNAL \mux_1|mux_1|mux_generate:3:mux_i|Mux2~3_combout\ : std_logic;
SIGNAL \mux_1|mux_1|mux_generate:3:mux_i|Mux2~0_combout\ : std_logic;
SIGNAL \mux_1|mux_1|mux_generate:3:mux_i|Mux2~1_combout\ : std_logic;
SIGNAL \mux_1|mux_1|mux_generate:3:mux_i|Mux2~2_combout\ : std_logic;
SIGNAL \mux_1|mux_1|mux_generate:3:mux_i|Mux2~4_combout\ : std_logic;
SIGNAL \DIN[14]~input_o\ : std_logic;
SIGNAL \mux_1|mux_1|mux_generate:3:mux_i|Mux1~0_combout\ : std_logic;
SIGNAL \mux_1|mux_1|mux_generate:3:mux_i|Mux1~1_combout\ : std_logic;
SIGNAL \mux_1|mux_1|mux_generate:3:mux_i|Mux1~2_combout\ : std_logic;
SIGNAL \mux_1|mux_1|mux_generate:3:mux_i|Mux1~3_combout\ : std_logic;
SIGNAL \mux_1|mux_1|mux_generate:3:mux_i|Mux1~4_combout\ : std_logic;
SIGNAL \DIN[15]~input_o\ : std_logic;
SIGNAL \mux_1|mux_1|mux_generate:3:mux_i|Mux0~3_combout\ : std_logic;
SIGNAL \mux_1|mux_1|mux_generate:3:mux_i|Mux0~0_combout\ : std_logic;
SIGNAL \mux_1|mux_1|mux_generate:3:mux_i|Mux0~1_combout\ : std_logic;
SIGNAL \mux_1|mux_1|mux_generate:3:mux_i|Mux0~2_combout\ : std_logic;
SIGNAL \mux_1|mux_1|mux_generate:3:mux_i|Mux0~4_combout\ : std_logic;
SIGNAL \ADD_R2[2]~input_o\ : std_logic;
SIGNAL \ADD_R2[0]~input_o\ : std_logic;
SIGNAL \mux_2|mux_1|mux_generate:0:mux_i|Mux3~3_combout\ : std_logic;
SIGNAL \ADD_R2[1]~input_o\ : std_logic;
SIGNAL \mux_2|mux_1|mux_generate:3:mux_i|Mux0~0_combout\ : std_logic;
SIGNAL \mux_2|mux_1|mux_generate:0:mux_i|Mux3~0_combout\ : std_logic;
SIGNAL \mux_2|mux_1|mux_generate:3:mux_i|Mux0~2_combout\ : std_logic;
SIGNAL \mux_2|mux_1|mux_generate:3:mux_i|Mux0~1_combout\ : std_logic;
SIGNAL \mux_2|mux_1|mux_generate:0:mux_i|Mux3~1_combout\ : std_logic;
SIGNAL \mux_2|mux_1|mux_generate:0:mux_i|Mux3~2_combout\ : std_logic;
SIGNAL \mux_2|mux_1|mux_generate:0:mux_i|Mux3~4_combout\ : std_logic;
SIGNAL \mux_2|mux_1|mux_generate:0:mux_i|Mux2~3_combout\ : std_logic;
SIGNAL \mux_2|mux_1|mux_generate:0:mux_i|Mux2~0_combout\ : std_logic;
SIGNAL \mux_2|mux_1|mux_generate:0:mux_i|Mux2~1_combout\ : std_logic;
SIGNAL \mux_2|mux_1|mux_generate:0:mux_i|Mux2~2_combout\ : std_logic;
SIGNAL \mux_2|mux_1|mux_generate:0:mux_i|Mux2~4_combout\ : std_logic;
SIGNAL \mux_2|mux_1|mux_generate:0:mux_i|Mux1~3_combout\ : std_logic;
SIGNAL \mux_2|mux_1|mux_generate:0:mux_i|Mux1~0_combout\ : std_logic;
SIGNAL \mux_2|mux_1|mux_generate:0:mux_i|Mux1~1_combout\ : std_logic;
SIGNAL \mux_2|mux_1|mux_generate:0:mux_i|Mux1~2_combout\ : std_logic;
SIGNAL \mux_2|mux_1|mux_generate:0:mux_i|Mux1~4_combout\ : std_logic;
SIGNAL \mux_2|mux_1|mux_generate:0:mux_i|Mux0~0_combout\ : std_logic;
SIGNAL \mux_2|mux_1|mux_generate:0:mux_i|Mux0~1_combout\ : std_logic;
SIGNAL \mux_2|mux_1|mux_generate:0:mux_i|Mux0~2_combout\ : std_logic;
SIGNAL \mux_2|mux_1|mux_generate:0:mux_i|Mux0~3_combout\ : std_logic;
SIGNAL \mux_2|mux_1|mux_generate:0:mux_i|Mux0~4_combout\ : std_logic;
SIGNAL \mux_2|mux_1|mux_generate:1:mux_i|Mux3~0_combout\ : std_logic;
SIGNAL \mux_2|mux_1|mux_generate:1:mux_i|Mux3~1_combout\ : std_logic;
SIGNAL \mux_2|mux_1|mux_generate:1:mux_i|Mux3~2_combout\ : std_logic;
SIGNAL \mux_2|mux_1|mux_generate:1:mux_i|Mux3~3_combout\ : std_logic;
SIGNAL \mux_2|mux_1|mux_generate:1:mux_i|Mux3~4_combout\ : std_logic;
SIGNAL \mux_2|mux_1|mux_generate:1:mux_i|Mux2~0_combout\ : std_logic;
SIGNAL \mux_2|mux_1|mux_generate:1:mux_i|Mux2~1_combout\ : std_logic;
SIGNAL \mux_2|mux_1|mux_generate:1:mux_i|Mux2~2_combout\ : std_logic;
SIGNAL \mux_2|mux_1|mux_generate:1:mux_i|Mux2~3_combout\ : std_logic;
SIGNAL \mux_2|mux_1|mux_generate:1:mux_i|Mux2~4_combout\ : std_logic;
SIGNAL \mux_2|mux_1|mux_generate:1:mux_i|Mux1~0_combout\ : std_logic;
SIGNAL \mux_2|mux_1|mux_generate:1:mux_i|Mux1~1_combout\ : std_logic;
SIGNAL \mux_2|mux_1|mux_generate:1:mux_i|Mux1~2_combout\ : std_logic;
SIGNAL \mux_2|mux_1|mux_generate:1:mux_i|Mux1~3_combout\ : std_logic;
SIGNAL \mux_2|mux_1|mux_generate:1:mux_i|Mux1~4_combout\ : std_logic;
SIGNAL \mux_2|mux_1|mux_generate:1:mux_i|Mux0~3_combout\ : std_logic;
SIGNAL \mux_2|mux_1|mux_generate:1:mux_i|Mux0~0_combout\ : std_logic;
SIGNAL \mux_2|mux_1|mux_generate:1:mux_i|Mux0~1_combout\ : std_logic;
SIGNAL \mux_2|mux_1|mux_generate:1:mux_i|Mux0~2_combout\ : std_logic;
SIGNAL \mux_2|mux_1|mux_generate:1:mux_i|Mux0~4_combout\ : std_logic;
SIGNAL \mux_2|mux_1|mux_generate:2:mux_i|Mux3~0_combout\ : std_logic;
SIGNAL \mux_2|mux_1|mux_generate:2:mux_i|Mux3~1_combout\ : std_logic;
SIGNAL \mux_2|mux_1|mux_generate:2:mux_i|Mux3~2_combout\ : std_logic;
SIGNAL \mux_2|mux_1|mux_generate:2:mux_i|Mux3~3_combout\ : std_logic;
SIGNAL \mux_2|mux_1|mux_generate:2:mux_i|Mux3~4_combout\ : std_logic;
SIGNAL \mux_2|mux_1|mux_generate:2:mux_i|Mux2~3_combout\ : std_logic;
SIGNAL \mux_2|mux_1|mux_generate:2:mux_i|Mux2~0_combout\ : std_logic;
SIGNAL \mux_2|mux_1|mux_generate:2:mux_i|Mux2~1_combout\ : std_logic;
SIGNAL \mux_2|mux_1|mux_generate:2:mux_i|Mux2~2_combout\ : std_logic;
SIGNAL \mux_2|mux_1|mux_generate:2:mux_i|Mux2~4_combout\ : std_logic;
SIGNAL \mux_2|mux_1|mux_generate:2:mux_i|Mux1~3_combout\ : std_logic;
SIGNAL \mux_2|mux_1|mux_generate:2:mux_i|Mux1~0_combout\ : std_logic;
SIGNAL \mux_2|mux_1|mux_generate:2:mux_i|Mux1~1_combout\ : std_logic;
SIGNAL \mux_2|mux_1|mux_generate:2:mux_i|Mux1~2_combout\ : std_logic;
SIGNAL \mux_2|mux_1|mux_generate:2:mux_i|Mux1~4_combout\ : std_logic;
SIGNAL \mux_2|mux_1|mux_generate:2:mux_i|Mux0~3_combout\ : std_logic;
SIGNAL \mux_2|mux_1|mux_generate:2:mux_i|Mux0~0_combout\ : std_logic;
SIGNAL \mux_2|mux_1|mux_generate:2:mux_i|Mux0~1_combout\ : std_logic;
SIGNAL \mux_2|mux_1|mux_generate:2:mux_i|Mux0~2_combout\ : std_logic;
SIGNAL \mux_2|mux_1|mux_generate:2:mux_i|Mux0~4_combout\ : std_logic;
SIGNAL \mux_2|mux_1|mux_generate:3:mux_i|Mux3~3_combout\ : std_logic;
SIGNAL \mux_2|mux_1|mux_generate:3:mux_i|Mux3~0_combout\ : std_logic;
SIGNAL \mux_2|mux_1|mux_generate:3:mux_i|Mux3~1_combout\ : std_logic;
SIGNAL \mux_2|mux_1|mux_generate:3:mux_i|Mux3~2_combout\ : std_logic;
SIGNAL \mux_2|mux_1|mux_generate:3:mux_i|Mux3~4_combout\ : std_logic;
SIGNAL \mux_2|mux_1|mux_generate:3:mux_i|Mux2~0_combout\ : std_logic;
SIGNAL \mux_2|mux_1|mux_generate:3:mux_i|Mux2~1_combout\ : std_logic;
SIGNAL \mux_2|mux_1|mux_generate:3:mux_i|Mux2~2_combout\ : std_logic;
SIGNAL \mux_2|mux_1|mux_generate:3:mux_i|Mux2~3_combout\ : std_logic;
SIGNAL \mux_2|mux_1|mux_generate:3:mux_i|Mux2~4_combout\ : std_logic;
SIGNAL \mux_2|mux_1|mux_generate:3:mux_i|Mux1~0_combout\ : std_logic;
SIGNAL \mux_2|mux_1|mux_generate:3:mux_i|Mux1~1_combout\ : std_logic;
SIGNAL \mux_2|mux_1|mux_generate:3:mux_i|Mux1~2_combout\ : std_logic;
SIGNAL \mux_2|mux_1|mux_generate:3:mux_i|Mux1~3_combout\ : std_logic;
SIGNAL \mux_2|mux_1|mux_generate:3:mux_i|Mux1~4_combout\ : std_logic;
SIGNAL \mux_2|mux_1|mux_generate:3:mux_i|Mux0~3_combout\ : std_logic;
SIGNAL \mux_2|mux_1|mux_generate:3:mux_i|Mux0~4_combout\ : std_logic;
SIGNAL \mux_2|mux_1|mux_generate:3:mux_i|Mux0~5_combout\ : std_logic;
SIGNAL \mux_2|mux_1|mux_generate:3:mux_i|Mux0~6_combout\ : std_logic;
SIGNAL \mux_2|mux_1|mux_generate:3:mux_i|Mux0~7_combout\ : std_logic;
SIGNAL \reg_gen:2:regs|reg_2|y\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \reg_gen:3:regs|reg_1|y\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \reg_gen:1:regs|reg_1|y\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \reg_gen:6:regs|reg_2|y\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \reg_gen:6:regs|reg_1|y\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \reg_gen:5:regs|reg_1|y\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \reg_gen:4:regs|reg_1|y\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \reg_gen:2:regs|reg_1|y\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \reg_gen:5:regs|reg_2|y\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \reg_gen:4:regs|reg_2|y\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \reg_gen:1:regs|reg_2|y\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \reg_gen:3:regs|reg_2|y\ : std_logic_vector(7 DOWNTO 0);

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

-- Location: IOOBUF_X38_Y73_N2
\DOUT1[0]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \mux_1|mux_1|mux_generate:0:mux_i|Mux3~4_combout\,
	devoe => ww_devoe,
	o => \DOUT1[0]~output_o\);

-- Location: IOOBUF_X58_Y73_N23
\DOUT1[1]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \mux_1|mux_1|mux_generate:0:mux_i|Mux2~7_combout\,
	devoe => ww_devoe,
	o => \DOUT1[1]~output_o\);

-- Location: IOOBUF_X25_Y73_N23
\DOUT1[2]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \mux_1|mux_1|mux_generate:0:mux_i|Mux1~4_combout\,
	devoe => ww_devoe,
	o => \DOUT1[2]~output_o\);

-- Location: IOOBUF_X38_Y73_N9
\DOUT1[3]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \mux_1|mux_1|mux_generate:0:mux_i|Mux0~4_combout\,
	devoe => ww_devoe,
	o => \DOUT1[3]~output_o\);

-- Location: IOOBUF_X52_Y73_N16
\DOUT1[4]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \mux_1|mux_1|mux_generate:1:mux_i|Mux3~4_combout\,
	devoe => ww_devoe,
	o => \DOUT1[4]~output_o\);

-- Location: IOOBUF_X52_Y73_N23
\DOUT1[5]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \mux_1|mux_1|mux_generate:1:mux_i|Mux2~4_combout\,
	devoe => ww_devoe,
	o => \DOUT1[5]~output_o\);

-- Location: IOOBUF_X45_Y73_N2
\DOUT1[6]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \mux_1|mux_1|mux_generate:1:mux_i|Mux1~4_combout\,
	devoe => ww_devoe,
	o => \DOUT1[6]~output_o\);

-- Location: IOOBUF_X54_Y73_N9
\DOUT1[7]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \mux_1|mux_1|mux_generate:1:mux_i|Mux0~4_combout\,
	devoe => ww_devoe,
	o => \DOUT1[7]~output_o\);

-- Location: IOOBUF_X47_Y73_N16
\DOUT1[8]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \mux_1|mux_1|mux_generate:2:mux_i|Mux3~4_combout\,
	devoe => ww_devoe,
	o => \DOUT1[8]~output_o\);

-- Location: IOOBUF_X0_Y59_N23
\DOUT1[9]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \mux_1|mux_1|mux_generate:2:mux_i|Mux2~4_combout\,
	devoe => ww_devoe,
	o => \DOUT1[9]~output_o\);

-- Location: IOOBUF_X20_Y73_N23
\DOUT1[10]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \mux_1|mux_1|mux_generate:2:mux_i|Mux1~4_combout\,
	devoe => ww_devoe,
	o => \DOUT1[10]~output_o\);

-- Location: IOOBUF_X20_Y73_N16
\DOUT1[11]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \mux_1|mux_1|mux_generate:2:mux_i|Mux0~4_combout\,
	devoe => ww_devoe,
	o => \DOUT1[11]~output_o\);

-- Location: IOOBUF_X0_Y58_N16
\DOUT1[12]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \mux_1|mux_1|mux_generate:3:mux_i|Mux3~4_combout\,
	devoe => ww_devoe,
	o => \DOUT1[12]~output_o\);

-- Location: IOOBUF_X29_Y73_N2
\DOUT1[13]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \mux_1|mux_1|mux_generate:3:mux_i|Mux2~4_combout\,
	devoe => ww_devoe,
	o => \DOUT1[13]~output_o\);

-- Location: IOOBUF_X49_Y73_N16
\DOUT1[14]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \mux_1|mux_1|mux_generate:3:mux_i|Mux1~4_combout\,
	devoe => ww_devoe,
	o => \DOUT1[14]~output_o\);

-- Location: IOOBUF_X23_Y73_N2
\DOUT1[15]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \mux_1|mux_1|mux_generate:3:mux_i|Mux0~4_combout\,
	devoe => ww_devoe,
	o => \DOUT1[15]~output_o\);

-- Location: IOOBUF_X33_Y73_N9
\DOUT2[0]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \mux_2|mux_1|mux_generate:0:mux_i|Mux3~4_combout\,
	devoe => ww_devoe,
	o => \DOUT2[0]~output_o\);

-- Location: IOOBUF_X33_Y73_N2
\DOUT2[1]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \mux_2|mux_1|mux_generate:0:mux_i|Mux2~4_combout\,
	devoe => ww_devoe,
	o => \DOUT2[1]~output_o\);

-- Location: IOOBUF_X29_Y73_N9
\DOUT2[2]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \mux_2|mux_1|mux_generate:0:mux_i|Mux1~4_combout\,
	devoe => ww_devoe,
	o => \DOUT2[2]~output_o\);

-- Location: IOOBUF_X16_Y73_N23
\DOUT2[3]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \mux_2|mux_1|mux_generate:0:mux_i|Mux0~4_combout\,
	devoe => ww_devoe,
	o => \DOUT2[3]~output_o\);

-- Location: IOOBUF_X40_Y73_N2
\DOUT2[4]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \mux_2|mux_1|mux_generate:1:mux_i|Mux3~4_combout\,
	devoe => ww_devoe,
	o => \DOUT2[4]~output_o\);

-- Location: IOOBUF_X49_Y73_N23
\DOUT2[5]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \mux_2|mux_1|mux_generate:1:mux_i|Mux2~4_combout\,
	devoe => ww_devoe,
	o => \DOUT2[5]~output_o\);

-- Location: IOOBUF_X16_Y73_N9
\DOUT2[6]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \mux_2|mux_1|mux_generate:1:mux_i|Mux1~4_combout\,
	devoe => ww_devoe,
	o => \DOUT2[6]~output_o\);

-- Location: IOOBUF_X13_Y73_N2
\DOUT2[7]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \mux_2|mux_1|mux_generate:1:mux_i|Mux0~4_combout\,
	devoe => ww_devoe,
	o => \DOUT2[7]~output_o\);

-- Location: IOOBUF_X58_Y73_N16
\DOUT2[8]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \mux_2|mux_1|mux_generate:2:mux_i|Mux3~4_combout\,
	devoe => ww_devoe,
	o => \DOUT2[8]~output_o\);

-- Location: IOOBUF_X31_Y73_N9
\DOUT2[9]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \mux_2|mux_1|mux_generate:2:mux_i|Mux2~4_combout\,
	devoe => ww_devoe,
	o => \DOUT2[9]~output_o\);

-- Location: IOOBUF_X23_Y73_N9
\DOUT2[10]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \mux_2|mux_1|mux_generate:2:mux_i|Mux1~4_combout\,
	devoe => ww_devoe,
	o => \DOUT2[10]~output_o\);

-- Location: IOOBUF_X27_Y73_N9
\DOUT2[11]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \mux_2|mux_1|mux_generate:2:mux_i|Mux0~4_combout\,
	devoe => ww_devoe,
	o => \DOUT2[11]~output_o\);

-- Location: IOOBUF_X25_Y73_N16
\DOUT2[12]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \mux_2|mux_1|mux_generate:3:mux_i|Mux3~4_combout\,
	devoe => ww_devoe,
	o => \DOUT2[12]~output_o\);

-- Location: IOOBUF_X31_Y73_N2
\DOUT2[13]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \mux_2|mux_1|mux_generate:3:mux_i|Mux2~4_combout\,
	devoe => ww_devoe,
	o => \DOUT2[13]~output_o\);

-- Location: IOOBUF_X47_Y73_N2
\DOUT2[14]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \mux_2|mux_1|mux_generate:3:mux_i|Mux1~4_combout\,
	devoe => ww_devoe,
	o => \DOUT2[14]~output_o\);

-- Location: IOOBUF_X20_Y73_N9
\DOUT2[15]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \mux_2|mux_1|mux_generate:3:mux_i|Mux0~7_combout\,
	devoe => ww_devoe,
	o => \DOUT2[15]~output_o\);

-- Location: IOIBUF_X40_Y73_N8
\ADD_R1[0]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_ADD_R1(0),
	o => \ADD_R1[0]~input_o\);

-- Location: IOIBUF_X115_Y37_N1
\ADD_R1[2]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_ADD_R1(2),
	o => \ADD_R1[2]~input_o\);

-- Location: IOIBUF_X115_Y37_N8
\ADD_R1[1]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_ADD_R1(1),
	o => \ADD_R1[1]~input_o\);

-- Location: LCCOMB_X39_Y59_N20
\mux_1|mux_1|mux_generate:0:mux_i|Mux2~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \mux_1|mux_1|mux_generate:0:mux_i|Mux2~2_combout\ = (\ADD_R1[2]~input_o\ & ((\ADD_R1[0]~input_o\) # (\ADD_R1[1]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100100011001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ADD_R1[0]~input_o\,
	datab => \ADD_R1[2]~input_o\,
	datac => \ADD_R1[1]~input_o\,
	combout => \mux_1|mux_1|mux_generate:0:mux_i|Mux2~2_combout\);

-- Location: LCCOMB_X39_Y59_N18
\mux_1|mux_1|mux_generate:0:mux_i|Mux2~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \mux_1|mux_1|mux_generate:0:mux_i|Mux2~1_combout\ = ((!\ADD_R1[0]~input_o\ & \ADD_R1[1]~input_o\)) # (!\ADD_R1[2]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111001101110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ADD_R1[0]~input_o\,
	datab => \ADD_R1[2]~input_o\,
	datac => \ADD_R1[1]~input_o\,
	combout => \mux_1|mux_1|mux_generate:0:mux_i|Mux2~1_combout\);

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

-- Location: IOIBUF_X38_Y73_N22
\DIN[0]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_DIN(0),
	o => \DIN[0]~input_o\);

-- Location: IOIBUF_X27_Y73_N15
\ADD_W[1]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_ADD_W(1),
	o => \ADD_W[1]~input_o\);

-- Location: IOIBUF_X23_Y73_N15
\ADD_W[0]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_ADD_W(0),
	o => \ADD_W[0]~input_o\);

-- Location: IOIBUF_X23_Y73_N22
\ADD_W[2]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_ADD_W(2),
	o => \ADD_W[2]~input_o\);

-- Location: IOIBUF_X27_Y73_N22
\WE~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_WE,
	o => \WE~input_o\);

-- Location: LCCOMB_X35_Y59_N24
\add_reg1_dcd|Mux3~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \add_reg1_dcd|Mux3~2_combout\ = (\ADD_W[1]~input_o\ & (!\ADD_W[0]~input_o\ & (\ADD_W[2]~input_o\ & \WE~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ADD_W[1]~input_o\,
	datab => \ADD_W[0]~input_o\,
	datac => \ADD_W[2]~input_o\,
	datad => \WE~input_o\,
	combout => \add_reg1_dcd|Mux3~2_combout\);

-- Location: FF_X38_Y59_N1
\reg_gen:6:regs|reg_1|y[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	asdata => \DIN[0]~input_o\,
	sload => VCC,
	ena => \add_reg1_dcd|Mux3~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \reg_gen:6:regs|reg_1|y\(0));

-- Location: LCCOMB_X35_Y59_N26
\add_reg1_dcd|Mux3~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \add_reg1_dcd|Mux3~3_combout\ = (!\ADD_W[1]~input_o\ & (\ADD_W[0]~input_o\ & (!\ADD_W[2]~input_o\ & \WE~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ADD_W[1]~input_o\,
	datab => \ADD_W[0]~input_o\,
	datac => \ADD_W[2]~input_o\,
	datad => \WE~input_o\,
	combout => \add_reg1_dcd|Mux3~3_combout\);

-- Location: FF_X38_Y59_N27
\reg_gen:1:regs|reg_1|y[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	asdata => \DIN[0]~input_o\,
	sload => VCC,
	ena => \add_reg1_dcd|Mux3~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \reg_gen:1:regs|reg_1|y\(0));

-- Location: LCCOMB_X38_Y58_N20
\mux_1|mux_1|mux_generate:0:mux_i|Mux3~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \mux_1|mux_1|mux_generate:0:mux_i|Mux3~0_combout\ = (\ADD_R1[0]~input_o\ & \reg_gen:1:regs|reg_1|y\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \ADD_R1[0]~input_o\,
	datac => \reg_gen:1:regs|reg_1|y\(0),
	combout => \mux_1|mux_1|mux_generate:0:mux_i|Mux3~0_combout\);

-- Location: LCCOMB_X38_Y58_N30
\mux_1|mux_1|mux_generate:0:mux_i|Mux3~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \mux_1|mux_1|mux_generate:0:mux_i|Mux3~1_combout\ = (\mux_1|mux_1|mux_generate:0:mux_i|Mux2~2_combout\ & (\mux_1|mux_1|mux_generate:0:mux_i|Mux2~1_combout\ & (\reg_gen:6:regs|reg_1|y\(0)))) # (!\mux_1|mux_1|mux_generate:0:mux_i|Mux2~2_combout\ & 
-- (((\mux_1|mux_1|mux_generate:0:mux_i|Mux3~0_combout\)) # (!\mux_1|mux_1|mux_generate:0:mux_i|Mux2~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101010110010001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mux_1|mux_1|mux_generate:0:mux_i|Mux2~2_combout\,
	datab => \mux_1|mux_1|mux_generate:0:mux_i|Mux2~1_combout\,
	datac => \reg_gen:6:regs|reg_1|y\(0),
	datad => \mux_1|mux_1|mux_generate:0:mux_i|Mux3~0_combout\,
	combout => \mux_1|mux_1|mux_generate:0:mux_i|Mux3~1_combout\);

-- Location: LCCOMB_X35_Y59_N30
\add_reg1_dcd|Mux3~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \add_reg1_dcd|Mux3~1_combout\ = (!\ADD_W[1]~input_o\ & (!\ADD_W[0]~input_o\ & (\ADD_W[2]~input_o\ & \WE~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ADD_W[1]~input_o\,
	datab => \ADD_W[0]~input_o\,
	datac => \ADD_W[2]~input_o\,
	datad => \WE~input_o\,
	combout => \add_reg1_dcd|Mux3~1_combout\);

-- Location: FF_X38_Y58_N3
\reg_gen:4:regs|reg_1|y[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	asdata => \DIN[0]~input_o\,
	sload => VCC,
	ena => \add_reg1_dcd|Mux3~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \reg_gen:4:regs|reg_1|y\(0));

-- Location: LCCOMB_X35_Y59_N20
\add_reg1_dcd|Mux3~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \add_reg1_dcd|Mux3~0_combout\ = (!\ADD_W[1]~input_o\ & (\ADD_W[0]~input_o\ & (\ADD_W[2]~input_o\ & \WE~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ADD_W[1]~input_o\,
	datab => \ADD_W[0]~input_o\,
	datac => \ADD_W[2]~input_o\,
	datad => \WE~input_o\,
	combout => \add_reg1_dcd|Mux3~0_combout\);

-- Location: FF_X38_Y58_N1
\reg_gen:5:regs|reg_1|y[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	asdata => \DIN[0]~input_o\,
	sload => VCC,
	ena => \add_reg1_dcd|Mux3~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \reg_gen:5:regs|reg_1|y\(0));

-- Location: LCCOMB_X39_Y59_N24
\mux_1|mux_1|mux_generate:0:mux_i|Mux2~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \mux_1|mux_1|mux_generate:0:mux_i|Mux2~0_combout\ = (\ADD_R1[1]~input_o\) # (!\ADD_R1[2]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001111110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \ADD_R1[2]~input_o\,
	datac => \ADD_R1[1]~input_o\,
	combout => \mux_1|mux_1|mux_generate:0:mux_i|Mux2~0_combout\);

-- Location: LCCOMB_X38_Y58_N0
\mux_1|mux_1|mux_generate:0:mux_i|Mux3~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \mux_1|mux_1|mux_generate:0:mux_i|Mux3~2_combout\ = (\mux_1|mux_1|mux_generate:0:mux_i|Mux3~1_combout\ & ((\reg_gen:4:regs|reg_1|y\(0)) # ((\mux_1|mux_1|mux_generate:0:mux_i|Mux2~0_combout\)))) # (!\mux_1|mux_1|mux_generate:0:mux_i|Mux3~1_combout\ & 
-- (((\reg_gen:5:regs|reg_1|y\(0) & !\mux_1|mux_1|mux_generate:0:mux_i|Mux2~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mux_1|mux_1|mux_generate:0:mux_i|Mux3~1_combout\,
	datab => \reg_gen:4:regs|reg_1|y\(0),
	datac => \reg_gen:5:regs|reg_1|y\(0),
	datad => \mux_1|mux_1|mux_generate:0:mux_i|Mux2~0_combout\,
	combout => \mux_1|mux_1|mux_generate:0:mux_i|Mux3~2_combout\);

-- Location: LCCOMB_X35_Y59_N22
\add_reg1_dcd|Mux3~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \add_reg1_dcd|Mux3~5_combout\ = (\ADD_W[1]~input_o\ & (!\ADD_W[0]~input_o\ & (!\ADD_W[2]~input_o\ & \WE~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ADD_W[1]~input_o\,
	datab => \ADD_W[0]~input_o\,
	datac => \ADD_W[2]~input_o\,
	datad => \WE~input_o\,
	combout => \add_reg1_dcd|Mux3~5_combout\);

-- Location: FF_X39_Y58_N11
\reg_gen:2:regs|reg_1|y[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	asdata => \DIN[0]~input_o\,
	sload => VCC,
	ena => \add_reg1_dcd|Mux3~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \reg_gen:2:regs|reg_1|y\(0));

-- Location: LCCOMB_X35_Y59_N28
\add_reg1_dcd|Mux3~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \add_reg1_dcd|Mux3~4_combout\ = (\ADD_W[1]~input_o\ & (\ADD_W[0]~input_o\ & (!\ADD_W[2]~input_o\ & \WE~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ADD_W[1]~input_o\,
	datab => \ADD_W[0]~input_o\,
	datac => \ADD_W[2]~input_o\,
	datad => \WE~input_o\,
	combout => \add_reg1_dcd|Mux3~4_combout\);

-- Location: FF_X39_Y58_N25
\reg_gen:3:regs|reg_1|y[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	asdata => \DIN[0]~input_o\,
	sload => VCC,
	ena => \add_reg1_dcd|Mux3~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \reg_gen:3:regs|reg_1|y\(0));

-- Location: LCCOMB_X39_Y58_N24
\mux_1|mux_1|mux_generate:0:mux_i|Mux3~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \mux_1|mux_1|mux_generate:0:mux_i|Mux3~3_combout\ = (\ADD_R1[0]~input_o\ & ((\reg_gen:3:regs|reg_1|y\(0)))) # (!\ADD_R1[0]~input_o\ & (\reg_gen:2:regs|reg_1|y\(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \reg_gen:2:regs|reg_1|y\(0),
	datac => \reg_gen:3:regs|reg_1|y\(0),
	datad => \ADD_R1[0]~input_o\,
	combout => \mux_1|mux_1|mux_generate:0:mux_i|Mux3~3_combout\);

-- Location: LCCOMB_X39_Y59_N14
\mux_1|mux_1|mux_generate:0:mux_i|Mux3~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \mux_1|mux_1|mux_generate:0:mux_i|Mux3~4_combout\ = (\ADD_R1[1]~input_o\ & ((\ADD_R1[2]~input_o\ & (\mux_1|mux_1|mux_generate:0:mux_i|Mux3~2_combout\)) # (!\ADD_R1[2]~input_o\ & ((\mux_1|mux_1|mux_generate:0:mux_i|Mux3~3_combout\))))) # 
-- (!\ADD_R1[1]~input_o\ & (\mux_1|mux_1|mux_generate:0:mux_i|Mux3~2_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mux_1|mux_1|mux_generate:0:mux_i|Mux3~2_combout\,
	datab => \mux_1|mux_1|mux_generate:0:mux_i|Mux3~3_combout\,
	datac => \ADD_R1[1]~input_o\,
	datad => \ADD_R1[2]~input_o\,
	combout => \mux_1|mux_1|mux_generate:0:mux_i|Mux3~4_combout\);

-- Location: IOIBUF_X54_Y73_N1
\DIN[1]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_DIN(1),
	o => \DIN[1]~input_o\);

-- Location: FF_X41_Y59_N9
\reg_gen:6:regs|reg_1|y[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	asdata => \DIN[1]~input_o\,
	sload => VCC,
	ena => \add_reg1_dcd|Mux3~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \reg_gen:6:regs|reg_1|y\(1));

-- Location: FF_X41_Y59_N11
\reg_gen:1:regs|reg_1|y[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	asdata => \DIN[1]~input_o\,
	sload => VCC,
	ena => \add_reg1_dcd|Mux3~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \reg_gen:1:regs|reg_1|y\(1));

-- Location: LCCOMB_X38_Y58_N28
\mux_1|mux_1|mux_generate:0:mux_i|Mux2~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \mux_1|mux_1|mux_generate:0:mux_i|Mux2~3_combout\ = (\ADD_R1[0]~input_o\ & \reg_gen:1:regs|reg_1|y\(1))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \ADD_R1[0]~input_o\,
	datad => \reg_gen:1:regs|reg_1|y\(1),
	combout => \mux_1|mux_1|mux_generate:0:mux_i|Mux2~3_combout\);

-- Location: LCCOMB_X38_Y58_N14
\mux_1|mux_1|mux_generate:0:mux_i|Mux2~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \mux_1|mux_1|mux_generate:0:mux_i|Mux2~4_combout\ = (\mux_1|mux_1|mux_generate:0:mux_i|Mux2~2_combout\ & (\mux_1|mux_1|mux_generate:0:mux_i|Mux2~1_combout\ & (\reg_gen:6:regs|reg_1|y\(1)))) # (!\mux_1|mux_1|mux_generate:0:mux_i|Mux2~2_combout\ & 
-- (((\mux_1|mux_1|mux_generate:0:mux_i|Mux2~3_combout\)) # (!\mux_1|mux_1|mux_generate:0:mux_i|Mux2~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101010110010001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mux_1|mux_1|mux_generate:0:mux_i|Mux2~2_combout\,
	datab => \mux_1|mux_1|mux_generate:0:mux_i|Mux2~1_combout\,
	datac => \reg_gen:6:regs|reg_1|y\(1),
	datad => \mux_1|mux_1|mux_generate:0:mux_i|Mux2~3_combout\,
	combout => \mux_1|mux_1|mux_generate:0:mux_i|Mux2~4_combout\);

-- Location: FF_X38_Y58_N25
\reg_gen:5:regs|reg_1|y[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	asdata => \DIN[1]~input_o\,
	sload => VCC,
	ena => \add_reg1_dcd|Mux3~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \reg_gen:5:regs|reg_1|y\(1));

-- Location: FF_X38_Y58_N27
\reg_gen:4:regs|reg_1|y[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	asdata => \DIN[1]~input_o\,
	sload => VCC,
	ena => \add_reg1_dcd|Mux3~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \reg_gen:4:regs|reg_1|y\(1));

-- Location: LCCOMB_X38_Y58_N24
\mux_1|mux_1|mux_generate:0:mux_i|Mux2~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \mux_1|mux_1|mux_generate:0:mux_i|Mux2~5_combout\ = (\mux_1|mux_1|mux_generate:0:mux_i|Mux2~0_combout\ & (\mux_1|mux_1|mux_generate:0:mux_i|Mux2~4_combout\)) # (!\mux_1|mux_1|mux_generate:0:mux_i|Mux2~0_combout\ & 
-- ((\mux_1|mux_1|mux_generate:0:mux_i|Mux2~4_combout\ & ((\reg_gen:4:regs|reg_1|y\(1)))) # (!\mux_1|mux_1|mux_generate:0:mux_i|Mux2~4_combout\ & (\reg_gen:5:regs|reg_1|y\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mux_1|mux_1|mux_generate:0:mux_i|Mux2~0_combout\,
	datab => \mux_1|mux_1|mux_generate:0:mux_i|Mux2~4_combout\,
	datac => \reg_gen:5:regs|reg_1|y\(1),
	datad => \reg_gen:4:regs|reg_1|y\(1),
	combout => \mux_1|mux_1|mux_generate:0:mux_i|Mux2~5_combout\);

-- Location: FF_X39_Y58_N7
\reg_gen:2:regs|reg_1|y[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	asdata => \DIN[1]~input_o\,
	sload => VCC,
	ena => \add_reg1_dcd|Mux3~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \reg_gen:2:regs|reg_1|y\(1));

-- Location: FF_X39_Y58_N13
\reg_gen:3:regs|reg_1|y[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	asdata => \DIN[1]~input_o\,
	sload => VCC,
	ena => \add_reg1_dcd|Mux3~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \reg_gen:3:regs|reg_1|y\(1));

-- Location: LCCOMB_X39_Y58_N12
\mux_1|mux_1|mux_generate:0:mux_i|Mux2~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \mux_1|mux_1|mux_generate:0:mux_i|Mux2~6_combout\ = (\ADD_R1[0]~input_o\ & ((\reg_gen:3:regs|reg_1|y\(1)))) # (!\ADD_R1[0]~input_o\ & (\reg_gen:2:regs|reg_1|y\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \reg_gen:2:regs|reg_1|y\(1),
	datac => \reg_gen:3:regs|reg_1|y\(1),
	datad => \ADD_R1[0]~input_o\,
	combout => \mux_1|mux_1|mux_generate:0:mux_i|Mux2~6_combout\);

-- Location: LCCOMB_X39_Y59_N8
\mux_1|mux_1|mux_generate:0:mux_i|Mux2~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \mux_1|mux_1|mux_generate:0:mux_i|Mux2~7_combout\ = (\ADD_R1[1]~input_o\ & ((\ADD_R1[2]~input_o\ & (\mux_1|mux_1|mux_generate:0:mux_i|Mux2~5_combout\)) # (!\ADD_R1[2]~input_o\ & ((\mux_1|mux_1|mux_generate:0:mux_i|Mux2~6_combout\))))) # 
-- (!\ADD_R1[1]~input_o\ & (\mux_1|mux_1|mux_generate:0:mux_i|Mux2~5_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mux_1|mux_1|mux_generate:0:mux_i|Mux2~5_combout\,
	datab => \mux_1|mux_1|mux_generate:0:mux_i|Mux2~6_combout\,
	datac => \ADD_R1[1]~input_o\,
	datad => \ADD_R1[2]~input_o\,
	combout => \mux_1|mux_1|mux_generate:0:mux_i|Mux2~7_combout\);

-- Location: IOIBUF_X38_Y73_N15
\DIN[2]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_DIN(2),
	o => \DIN[2]~input_o\);

-- Location: FF_X39_Y58_N19
\reg_gen:2:regs|reg_1|y[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	asdata => \DIN[2]~input_o\,
	sload => VCC,
	ena => \add_reg1_dcd|Mux3~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \reg_gen:2:regs|reg_1|y\(2));

-- Location: FF_X39_Y58_N9
\reg_gen:3:regs|reg_1|y[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	asdata => \DIN[2]~input_o\,
	sload => VCC,
	ena => \add_reg1_dcd|Mux3~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \reg_gen:3:regs|reg_1|y\(2));

-- Location: LCCOMB_X39_Y58_N8
\mux_1|mux_1|mux_generate:0:mux_i|Mux1~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \mux_1|mux_1|mux_generate:0:mux_i|Mux1~3_combout\ = (\ADD_R1[0]~input_o\ & ((\reg_gen:3:regs|reg_1|y\(2)))) # (!\ADD_R1[0]~input_o\ & (\reg_gen:2:regs|reg_1|y\(2)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \reg_gen:2:regs|reg_1|y\(2),
	datac => \reg_gen:3:regs|reg_1|y\(2),
	datad => \ADD_R1[0]~input_o\,
	combout => \mux_1|mux_1|mux_generate:0:mux_i|Mux1~3_combout\);

-- Location: FF_X38_Y59_N29
\reg_gen:6:regs|reg_1|y[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	asdata => \DIN[2]~input_o\,
	sload => VCC,
	ena => \add_reg1_dcd|Mux3~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \reg_gen:6:regs|reg_1|y\(2));

-- Location: FF_X38_Y59_N23
\reg_gen:1:regs|reg_1|y[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	asdata => \DIN[2]~input_o\,
	sload => VCC,
	ena => \add_reg1_dcd|Mux3~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \reg_gen:1:regs|reg_1|y\(2));

-- Location: LCCOMB_X38_Y59_N24
\mux_1|mux_1|mux_generate:0:mux_i|Mux1~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \mux_1|mux_1|mux_generate:0:mux_i|Mux1~0_combout\ = (\ADD_R1[0]~input_o\ & \reg_gen:1:regs|reg_1|y\(2))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \ADD_R1[0]~input_o\,
	datad => \reg_gen:1:regs|reg_1|y\(2),
	combout => \mux_1|mux_1|mux_generate:0:mux_i|Mux1~0_combout\);

-- Location: LCCOMB_X38_Y58_N4
\mux_1|mux_1|mux_generate:0:mux_i|Mux1~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \mux_1|mux_1|mux_generate:0:mux_i|Mux1~1_combout\ = (\mux_1|mux_1|mux_generate:0:mux_i|Mux2~2_combout\ & (\reg_gen:6:regs|reg_1|y\(2) & (\mux_1|mux_1|mux_generate:0:mux_i|Mux2~1_combout\))) # (!\mux_1|mux_1|mux_generate:0:mux_i|Mux2~2_combout\ & 
-- (((\mux_1|mux_1|mux_generate:0:mux_i|Mux1~0_combout\) # (!\mux_1|mux_1|mux_generate:0:mux_i|Mux2~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101010110000101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mux_1|mux_1|mux_generate:0:mux_i|Mux2~2_combout\,
	datab => \reg_gen:6:regs|reg_1|y\(2),
	datac => \mux_1|mux_1|mux_generate:0:mux_i|Mux2~1_combout\,
	datad => \mux_1|mux_1|mux_generate:0:mux_i|Mux1~0_combout\,
	combout => \mux_1|mux_1|mux_generate:0:mux_i|Mux1~1_combout\);

-- Location: FF_X38_Y58_N9
\reg_gen:5:regs|reg_1|y[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	asdata => \DIN[2]~input_o\,
	sload => VCC,
	ena => \add_reg1_dcd|Mux3~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \reg_gen:5:regs|reg_1|y\(2));

-- Location: FF_X38_Y58_N19
\reg_gen:4:regs|reg_1|y[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	asdata => \DIN[2]~input_o\,
	sload => VCC,
	ena => \add_reg1_dcd|Mux3~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \reg_gen:4:regs|reg_1|y\(2));

-- Location: LCCOMB_X38_Y58_N8
\mux_1|mux_1|mux_generate:0:mux_i|Mux1~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \mux_1|mux_1|mux_generate:0:mux_i|Mux1~2_combout\ = (\mux_1|mux_1|mux_generate:0:mux_i|Mux2~0_combout\ & (\mux_1|mux_1|mux_generate:0:mux_i|Mux1~1_combout\)) # (!\mux_1|mux_1|mux_generate:0:mux_i|Mux2~0_combout\ & 
-- ((\mux_1|mux_1|mux_generate:0:mux_i|Mux1~1_combout\ & ((\reg_gen:4:regs|reg_1|y\(2)))) # (!\mux_1|mux_1|mux_generate:0:mux_i|Mux1~1_combout\ & (\reg_gen:5:regs|reg_1|y\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mux_1|mux_1|mux_generate:0:mux_i|Mux2~0_combout\,
	datab => \mux_1|mux_1|mux_generate:0:mux_i|Mux1~1_combout\,
	datac => \reg_gen:5:regs|reg_1|y\(2),
	datad => \reg_gen:4:regs|reg_1|y\(2),
	combout => \mux_1|mux_1|mux_generate:0:mux_i|Mux1~2_combout\);

-- Location: LCCOMB_X36_Y58_N24
\mux_1|mux_1|mux_generate:0:mux_i|Mux1~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \mux_1|mux_1|mux_generate:0:mux_i|Mux1~4_combout\ = (\ADD_R1[2]~input_o\ & (((\mux_1|mux_1|mux_generate:0:mux_i|Mux1~2_combout\)))) # (!\ADD_R1[2]~input_o\ & ((\ADD_R1[1]~input_o\ & (\mux_1|mux_1|mux_generate:0:mux_i|Mux1~3_combout\)) # 
-- (!\ADD_R1[1]~input_o\ & ((\mux_1|mux_1|mux_generate:0:mux_i|Mux1~2_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110001011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mux_1|mux_1|mux_generate:0:mux_i|Mux1~3_combout\,
	datab => \ADD_R1[2]~input_o\,
	datac => \mux_1|mux_1|mux_generate:0:mux_i|Mux1~2_combout\,
	datad => \ADD_R1[1]~input_o\,
	combout => \mux_1|mux_1|mux_generate:0:mux_i|Mux1~4_combout\);

-- Location: IOIBUF_X45_Y73_N8
\DIN[3]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_DIN(3),
	o => \DIN[3]~input_o\);

-- Location: FF_X39_Y59_N5
\reg_gen:2:regs|reg_1|y[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	asdata => \DIN[3]~input_o\,
	sload => VCC,
	ena => \add_reg1_dcd|Mux3~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \reg_gen:2:regs|reg_1|y\(3));

-- Location: FF_X39_Y59_N3
\reg_gen:3:regs|reg_1|y[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	asdata => \DIN[3]~input_o\,
	sload => VCC,
	ena => \add_reg1_dcd|Mux3~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \reg_gen:3:regs|reg_1|y\(3));

-- Location: LCCOMB_X39_Y59_N2
\mux_1|mux_1|mux_generate:0:mux_i|Mux0~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \mux_1|mux_1|mux_generate:0:mux_i|Mux0~3_combout\ = (\ADD_R1[0]~input_o\ & ((\reg_gen:3:regs|reg_1|y\(3)))) # (!\ADD_R1[0]~input_o\ & (\reg_gen:2:regs|reg_1|y\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \reg_gen:2:regs|reg_1|y\(3),
	datac => \reg_gen:3:regs|reg_1|y\(3),
	datad => \ADD_R1[0]~input_o\,
	combout => \mux_1|mux_1|mux_generate:0:mux_i|Mux0~3_combout\);

-- Location: FF_X40_Y59_N19
\reg_gen:4:regs|reg_1|y[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	asdata => \DIN[3]~input_o\,
	sload => VCC,
	ena => \add_reg1_dcd|Mux3~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \reg_gen:4:regs|reg_1|y\(3));

-- Location: FF_X40_Y59_N25
\reg_gen:5:regs|reg_1|y[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	asdata => \DIN[3]~input_o\,
	sload => VCC,
	ena => \add_reg1_dcd|Mux3~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \reg_gen:5:regs|reg_1|y\(3));

-- Location: FF_X41_Y59_N7
\reg_gen:1:regs|reg_1|y[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	asdata => \DIN[3]~input_o\,
	sload => VCC,
	ena => \add_reg1_dcd|Mux3~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \reg_gen:1:regs|reg_1|y\(3));

-- Location: LCCOMB_X41_Y59_N24
\mux_1|mux_1|mux_generate:0:mux_i|Mux0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \mux_1|mux_1|mux_generate:0:mux_i|Mux0~0_combout\ = (\ADD_R1[0]~input_o\ & \reg_gen:1:regs|reg_1|y\(3))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \ADD_R1[0]~input_o\,
	datad => \reg_gen:1:regs|reg_1|y\(3),
	combout => \mux_1|mux_1|mux_generate:0:mux_i|Mux0~0_combout\);

-- Location: FF_X41_Y59_N5
\reg_gen:6:regs|reg_1|y[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	asdata => \DIN[3]~input_o\,
	sload => VCC,
	ena => \add_reg1_dcd|Mux3~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \reg_gen:6:regs|reg_1|y\(3));

-- Location: LCCOMB_X41_Y59_N18
\mux_1|mux_1|mux_generate:0:mux_i|Mux0~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \mux_1|mux_1|mux_generate:0:mux_i|Mux0~1_combout\ = (\mux_1|mux_1|mux_generate:0:mux_i|Mux2~1_combout\ & ((\mux_1|mux_1|mux_generate:0:mux_i|Mux2~2_combout\ & ((\reg_gen:6:regs|reg_1|y\(3)))) # (!\mux_1|mux_1|mux_generate:0:mux_i|Mux2~2_combout\ & 
-- (\mux_1|mux_1|mux_generate:0:mux_i|Mux0~0_combout\)))) # (!\mux_1|mux_1|mux_generate:0:mux_i|Mux2~1_combout\ & (((!\mux_1|mux_1|mux_generate:0:mux_i|Mux2~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000011011101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mux_1|mux_1|mux_generate:0:mux_i|Mux2~1_combout\,
	datab => \mux_1|mux_1|mux_generate:0:mux_i|Mux0~0_combout\,
	datac => \reg_gen:6:regs|reg_1|y\(3),
	datad => \mux_1|mux_1|mux_generate:0:mux_i|Mux2~2_combout\,
	combout => \mux_1|mux_1|mux_generate:0:mux_i|Mux0~1_combout\);

-- Location: LCCOMB_X40_Y59_N24
\mux_1|mux_1|mux_generate:0:mux_i|Mux0~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \mux_1|mux_1|mux_generate:0:mux_i|Mux0~2_combout\ = (\mux_1|mux_1|mux_generate:0:mux_i|Mux2~0_combout\ & (((\mux_1|mux_1|mux_generate:0:mux_i|Mux0~1_combout\)))) # (!\mux_1|mux_1|mux_generate:0:mux_i|Mux2~0_combout\ & 
-- ((\mux_1|mux_1|mux_generate:0:mux_i|Mux0~1_combout\ & (\reg_gen:4:regs|reg_1|y\(3))) # (!\mux_1|mux_1|mux_generate:0:mux_i|Mux0~1_combout\ & ((\reg_gen:5:regs|reg_1|y\(3))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mux_1|mux_1|mux_generate:0:mux_i|Mux2~0_combout\,
	datab => \reg_gen:4:regs|reg_1|y\(3),
	datac => \reg_gen:5:regs|reg_1|y\(3),
	datad => \mux_1|mux_1|mux_generate:0:mux_i|Mux0~1_combout\,
	combout => \mux_1|mux_1|mux_generate:0:mux_i|Mux0~2_combout\);

-- Location: LCCOMB_X39_Y59_N30
\mux_1|mux_1|mux_generate:0:mux_i|Mux0~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \mux_1|mux_1|mux_generate:0:mux_i|Mux0~4_combout\ = (\ADD_R1[1]~input_o\ & ((\ADD_R1[2]~input_o\ & ((\mux_1|mux_1|mux_generate:0:mux_i|Mux0~2_combout\))) # (!\ADD_R1[2]~input_o\ & (\mux_1|mux_1|mux_generate:0:mux_i|Mux0~3_combout\)))) # 
-- (!\ADD_R1[1]~input_o\ & (((\mux_1|mux_1|mux_generate:0:mux_i|Mux0~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mux_1|mux_1|mux_generate:0:mux_i|Mux0~3_combout\,
	datab => \mux_1|mux_1|mux_generate:0:mux_i|Mux0~2_combout\,
	datac => \ADD_R1[1]~input_o\,
	datad => \ADD_R1[2]~input_o\,
	combout => \mux_1|mux_1|mux_generate:0:mux_i|Mux0~4_combout\);

-- Location: IOIBUF_X52_Y73_N1
\DIN[4]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_DIN(4),
	o => \DIN[4]~input_o\);

-- Location: FF_X40_Y59_N23
\reg_gen:4:regs|reg_1|y[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	asdata => \DIN[4]~input_o\,
	sload => VCC,
	ena => \add_reg1_dcd|Mux3~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \reg_gen:4:regs|reg_1|y\(4));

-- Location: FF_X40_Y59_N5
\reg_gen:5:regs|reg_1|y[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	asdata => \DIN[4]~input_o\,
	sload => VCC,
	ena => \add_reg1_dcd|Mux3~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \reg_gen:5:regs|reg_1|y\(4));

-- Location: FF_X41_Y59_N15
\reg_gen:1:regs|reg_1|y[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	asdata => \DIN[4]~input_o\,
	sload => VCC,
	ena => \add_reg1_dcd|Mux3~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \reg_gen:1:regs|reg_1|y\(4));

-- Location: LCCOMB_X41_Y59_N16
\mux_1|mux_1|mux_generate:1:mux_i|Mux3~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \mux_1|mux_1|mux_generate:1:mux_i|Mux3~0_combout\ = (\ADD_R1[0]~input_o\ & \reg_gen:1:regs|reg_1|y\(4))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \ADD_R1[0]~input_o\,
	datad => \reg_gen:1:regs|reg_1|y\(4),
	combout => \mux_1|mux_1|mux_generate:1:mux_i|Mux3~0_combout\);

-- Location: FF_X41_Y59_N13
\reg_gen:6:regs|reg_1|y[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	asdata => \DIN[4]~input_o\,
	sload => VCC,
	ena => \add_reg1_dcd|Mux3~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \reg_gen:6:regs|reg_1|y\(4));

-- Location: LCCOMB_X41_Y59_N26
\mux_1|mux_1|mux_generate:1:mux_i|Mux3~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \mux_1|mux_1|mux_generate:1:mux_i|Mux3~1_combout\ = (\mux_1|mux_1|mux_generate:0:mux_i|Mux2~1_combout\ & ((\mux_1|mux_1|mux_generate:0:mux_i|Mux2~2_combout\ & ((\reg_gen:6:regs|reg_1|y\(4)))) # (!\mux_1|mux_1|mux_generate:0:mux_i|Mux2~2_combout\ & 
-- (\mux_1|mux_1|mux_generate:1:mux_i|Mux3~0_combout\)))) # (!\mux_1|mux_1|mux_generate:0:mux_i|Mux2~1_combout\ & (((!\mux_1|mux_1|mux_generate:0:mux_i|Mux2~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010110100001101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mux_1|mux_1|mux_generate:0:mux_i|Mux2~1_combout\,
	datab => \mux_1|mux_1|mux_generate:1:mux_i|Mux3~0_combout\,
	datac => \mux_1|mux_1|mux_generate:0:mux_i|Mux2~2_combout\,
	datad => \reg_gen:6:regs|reg_1|y\(4),
	combout => \mux_1|mux_1|mux_generate:1:mux_i|Mux3~1_combout\);

-- Location: LCCOMB_X40_Y59_N4
\mux_1|mux_1|mux_generate:1:mux_i|Mux3~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \mux_1|mux_1|mux_generate:1:mux_i|Mux3~2_combout\ = (\mux_1|mux_1|mux_generate:0:mux_i|Mux2~0_combout\ & (((\mux_1|mux_1|mux_generate:1:mux_i|Mux3~1_combout\)))) # (!\mux_1|mux_1|mux_generate:0:mux_i|Mux2~0_combout\ & 
-- ((\mux_1|mux_1|mux_generate:1:mux_i|Mux3~1_combout\ & (\reg_gen:4:regs|reg_1|y\(4))) # (!\mux_1|mux_1|mux_generate:1:mux_i|Mux3~1_combout\ & ((\reg_gen:5:regs|reg_1|y\(4))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \reg_gen:4:regs|reg_1|y\(4),
	datab => \mux_1|mux_1|mux_generate:0:mux_i|Mux2~0_combout\,
	datac => \reg_gen:5:regs|reg_1|y\(4),
	datad => \mux_1|mux_1|mux_generate:1:mux_i|Mux3~1_combout\,
	combout => \mux_1|mux_1|mux_generate:1:mux_i|Mux3~2_combout\);

-- Location: FF_X41_Y62_N9
\reg_gen:3:regs|reg_1|y[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	asdata => \DIN[4]~input_o\,
	sload => VCC,
	ena => \add_reg1_dcd|Mux3~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \reg_gen:3:regs|reg_1|y\(4));

-- Location: FF_X41_Y62_N19
\reg_gen:2:regs|reg_1|y[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	asdata => \DIN[4]~input_o\,
	sload => VCC,
	ena => \add_reg1_dcd|Mux3~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \reg_gen:2:regs|reg_1|y\(4));

-- Location: LCCOMB_X41_Y62_N8
\mux_1|mux_1|mux_generate:1:mux_i|Mux3~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \mux_1|mux_1|mux_generate:1:mux_i|Mux3~3_combout\ = (\ADD_R1[0]~input_o\ & (\reg_gen:3:regs|reg_1|y\(4))) # (!\ADD_R1[0]~input_o\ & ((\reg_gen:2:regs|reg_1|y\(4))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \ADD_R1[0]~input_o\,
	datac => \reg_gen:3:regs|reg_1|y\(4),
	datad => \reg_gen:2:regs|reg_1|y\(4),
	combout => \mux_1|mux_1|mux_generate:1:mux_i|Mux3~3_combout\);

-- Location: LCCOMB_X41_Y62_N12
\mux_1|mux_1|mux_generate:1:mux_i|Mux3~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \mux_1|mux_1|mux_generate:1:mux_i|Mux3~4_combout\ = (\ADD_R1[2]~input_o\ & (\mux_1|mux_1|mux_generate:1:mux_i|Mux3~2_combout\)) # (!\ADD_R1[2]~input_o\ & ((\ADD_R1[1]~input_o\ & ((\mux_1|mux_1|mux_generate:1:mux_i|Mux3~3_combout\))) # 
-- (!\ADD_R1[1]~input_o\ & (\mux_1|mux_1|mux_generate:1:mux_i|Mux3~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mux_1|mux_1|mux_generate:1:mux_i|Mux3~2_combout\,
	datab => \ADD_R1[2]~input_o\,
	datac => \mux_1|mux_1|mux_generate:1:mux_i|Mux3~3_combout\,
	datad => \ADD_R1[1]~input_o\,
	combout => \mux_1|mux_1|mux_generate:1:mux_i|Mux3~4_combout\);

-- Location: IOIBUF_X52_Y73_N8
\DIN[5]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_DIN(5),
	o => \DIN[5]~input_o\);

-- Location: FF_X41_Y62_N31
\reg_gen:3:regs|reg_1|y[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	asdata => \DIN[5]~input_o\,
	sload => VCC,
	ena => \add_reg1_dcd|Mux3~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \reg_gen:3:regs|reg_1|y\(5));

-- Location: FF_X41_Y62_N17
\reg_gen:2:regs|reg_1|y[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	asdata => \DIN[5]~input_o\,
	sload => VCC,
	ena => \add_reg1_dcd|Mux3~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \reg_gen:2:regs|reg_1|y\(5));

-- Location: LCCOMB_X41_Y62_N30
\mux_1|mux_1|mux_generate:1:mux_i|Mux2~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \mux_1|mux_1|mux_generate:1:mux_i|Mux2~3_combout\ = (\ADD_R1[0]~input_o\ & (\reg_gen:3:regs|reg_1|y\(5))) # (!\ADD_R1[0]~input_o\ & ((\reg_gen:2:regs|reg_1|y\(5))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \ADD_R1[0]~input_o\,
	datac => \reg_gen:3:regs|reg_1|y\(5),
	datad => \reg_gen:2:regs|reg_1|y\(5),
	combout => \mux_1|mux_1|mux_generate:1:mux_i|Mux2~3_combout\);

-- Location: FF_X41_Y59_N31
\reg_gen:1:regs|reg_1|y[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	asdata => \DIN[5]~input_o\,
	sload => VCC,
	ena => \add_reg1_dcd|Mux3~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \reg_gen:1:regs|reg_1|y\(5));

-- Location: LCCOMB_X41_Y59_N0
\mux_1|mux_1|mux_generate:1:mux_i|Mux2~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \mux_1|mux_1|mux_generate:1:mux_i|Mux2~0_combout\ = (\reg_gen:1:regs|reg_1|y\(5) & \ADD_R1[0]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \reg_gen:1:regs|reg_1|y\(5),
	datac => \ADD_R1[0]~input_o\,
	combout => \mux_1|mux_1|mux_generate:1:mux_i|Mux2~0_combout\);

-- Location: FF_X41_Y59_N21
\reg_gen:6:regs|reg_1|y[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	asdata => \DIN[5]~input_o\,
	sload => VCC,
	ena => \add_reg1_dcd|Mux3~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \reg_gen:6:regs|reg_1|y\(5));

-- Location: LCCOMB_X41_Y59_N2
\mux_1|mux_1|mux_generate:1:mux_i|Mux2~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \mux_1|mux_1|mux_generate:1:mux_i|Mux2~1_combout\ = (\mux_1|mux_1|mux_generate:0:mux_i|Mux2~1_combout\ & ((\mux_1|mux_1|mux_generate:0:mux_i|Mux2~2_combout\ & ((\reg_gen:6:regs|reg_1|y\(5)))) # (!\mux_1|mux_1|mux_generate:0:mux_i|Mux2~2_combout\ & 
-- (\mux_1|mux_1|mux_generate:1:mux_i|Mux2~0_combout\)))) # (!\mux_1|mux_1|mux_generate:0:mux_i|Mux2~1_combout\ & (((!\mux_1|mux_1|mux_generate:0:mux_i|Mux2~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010110100001101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mux_1|mux_1|mux_generate:0:mux_i|Mux2~1_combout\,
	datab => \mux_1|mux_1|mux_generate:1:mux_i|Mux2~0_combout\,
	datac => \mux_1|mux_1|mux_generate:0:mux_i|Mux2~2_combout\,
	datad => \reg_gen:6:regs|reg_1|y\(5),
	combout => \mux_1|mux_1|mux_generate:1:mux_i|Mux2~1_combout\);

-- Location: FF_X40_Y59_N1
\reg_gen:5:regs|reg_1|y[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	asdata => \DIN[5]~input_o\,
	sload => VCC,
	ena => \add_reg1_dcd|Mux3~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \reg_gen:5:regs|reg_1|y\(5));

-- Location: FF_X40_Y59_N3
\reg_gen:4:regs|reg_1|y[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	asdata => \DIN[5]~input_o\,
	sload => VCC,
	ena => \add_reg1_dcd|Mux3~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \reg_gen:4:regs|reg_1|y\(5));

-- Location: LCCOMB_X40_Y59_N0
\mux_1|mux_1|mux_generate:1:mux_i|Mux2~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \mux_1|mux_1|mux_generate:1:mux_i|Mux2~2_combout\ = (\mux_1|mux_1|mux_generate:1:mux_i|Mux2~1_combout\ & ((\mux_1|mux_1|mux_generate:0:mux_i|Mux2~0_combout\) # ((\reg_gen:4:regs|reg_1|y\(5))))) # (!\mux_1|mux_1|mux_generate:1:mux_i|Mux2~1_combout\ & 
-- (!\mux_1|mux_1|mux_generate:0:mux_i|Mux2~0_combout\ & (\reg_gen:5:regs|reg_1|y\(5))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mux_1|mux_1|mux_generate:1:mux_i|Mux2~1_combout\,
	datab => \mux_1|mux_1|mux_generate:0:mux_i|Mux2~0_combout\,
	datac => \reg_gen:5:regs|reg_1|y\(5),
	datad => \reg_gen:4:regs|reg_1|y\(5),
	combout => \mux_1|mux_1|mux_generate:1:mux_i|Mux2~2_combout\);

-- Location: LCCOMB_X41_Y62_N2
\mux_1|mux_1|mux_generate:1:mux_i|Mux2~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \mux_1|mux_1|mux_generate:1:mux_i|Mux2~4_combout\ = (\ADD_R1[1]~input_o\ & ((\ADD_R1[2]~input_o\ & ((\mux_1|mux_1|mux_generate:1:mux_i|Mux2~2_combout\))) # (!\ADD_R1[2]~input_o\ & (\mux_1|mux_1|mux_generate:1:mux_i|Mux2~3_combout\)))) # 
-- (!\ADD_R1[1]~input_o\ & (((\mux_1|mux_1|mux_generate:1:mux_i|Mux2~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110100100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ADD_R1[1]~input_o\,
	datab => \ADD_R1[2]~input_o\,
	datac => \mux_1|mux_1|mux_generate:1:mux_i|Mux2~3_combout\,
	datad => \mux_1|mux_1|mux_generate:1:mux_i|Mux2~2_combout\,
	combout => \mux_1|mux_1|mux_generate:1:mux_i|Mux2~4_combout\);

-- Location: IOIBUF_X42_Y73_N8
\DIN[6]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_DIN(6),
	o => \DIN[6]~input_o\);

-- Location: FF_X41_Y62_N21
\reg_gen:3:regs|reg_1|y[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	asdata => \DIN[6]~input_o\,
	sload => VCC,
	ena => \add_reg1_dcd|Mux3~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \reg_gen:3:regs|reg_1|y\(6));

-- Location: FF_X41_Y62_N23
\reg_gen:2:regs|reg_1|y[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	asdata => \DIN[6]~input_o\,
	sload => VCC,
	ena => \add_reg1_dcd|Mux3~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \reg_gen:2:regs|reg_1|y\(6));

-- Location: LCCOMB_X41_Y62_N20
\mux_1|mux_1|mux_generate:1:mux_i|Mux1~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \mux_1|mux_1|mux_generate:1:mux_i|Mux1~3_combout\ = (\ADD_R1[0]~input_o\ & (\reg_gen:3:regs|reg_1|y\(6))) # (!\ADD_R1[0]~input_o\ & ((\reg_gen:2:regs|reg_1|y\(6))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \ADD_R1[0]~input_o\,
	datac => \reg_gen:3:regs|reg_1|y\(6),
	datad => \reg_gen:2:regs|reg_1|y\(6),
	combout => \mux_1|mux_1|mux_generate:1:mux_i|Mux1~3_combout\);

-- Location: FF_X40_Y59_N31
\reg_gen:4:regs|reg_1|y[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	asdata => \DIN[6]~input_o\,
	sload => VCC,
	ena => \add_reg1_dcd|Mux3~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \reg_gen:4:regs|reg_1|y\(6));

-- Location: FF_X40_Y59_N13
\reg_gen:5:regs|reg_1|y[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	asdata => \DIN[6]~input_o\,
	sload => VCC,
	ena => \add_reg1_dcd|Mux3~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \reg_gen:5:regs|reg_1|y\(6));

-- Location: FF_X38_Y59_N19
\reg_gen:6:regs|reg_1|y[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	asdata => \DIN[6]~input_o\,
	sload => VCC,
	ena => \add_reg1_dcd|Mux3~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \reg_gen:6:regs|reg_1|y\(6));

-- Location: FF_X38_Y59_N13
\reg_gen:1:regs|reg_1|y[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	asdata => \DIN[6]~input_o\,
	sload => VCC,
	ena => \add_reg1_dcd|Mux3~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \reg_gen:1:regs|reg_1|y\(6));

-- Location: LCCOMB_X39_Y59_N16
\mux_1|mux_1|mux_generate:1:mux_i|Mux1~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \mux_1|mux_1|mux_generate:1:mux_i|Mux1~0_combout\ = (\reg_gen:1:regs|reg_1|y\(6) & \ADD_R1[0]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \reg_gen:1:regs|reg_1|y\(6),
	datad => \ADD_R1[0]~input_o\,
	combout => \mux_1|mux_1|mux_generate:1:mux_i|Mux1~0_combout\);

-- Location: LCCOMB_X39_Y59_N10
\mux_1|mux_1|mux_generate:1:mux_i|Mux1~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \mux_1|mux_1|mux_generate:1:mux_i|Mux1~1_combout\ = (\mux_1|mux_1|mux_generate:0:mux_i|Mux2~1_combout\ & ((\mux_1|mux_1|mux_generate:0:mux_i|Mux2~2_combout\ & (\reg_gen:6:regs|reg_1|y\(6))) # (!\mux_1|mux_1|mux_generate:0:mux_i|Mux2~2_combout\ & 
-- ((\mux_1|mux_1|mux_generate:1:mux_i|Mux1~0_combout\))))) # (!\mux_1|mux_1|mux_generate:0:mux_i|Mux2~1_combout\ & (((!\mux_1|mux_1|mux_generate:0:mux_i|Mux2~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000011001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \reg_gen:6:regs|reg_1|y\(6),
	datab => \mux_1|mux_1|mux_generate:1:mux_i|Mux1~0_combout\,
	datac => \mux_1|mux_1|mux_generate:0:mux_i|Mux2~1_combout\,
	datad => \mux_1|mux_1|mux_generate:0:mux_i|Mux2~2_combout\,
	combout => \mux_1|mux_1|mux_generate:1:mux_i|Mux1~1_combout\);

-- Location: LCCOMB_X40_Y59_N12
\mux_1|mux_1|mux_generate:1:mux_i|Mux1~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \mux_1|mux_1|mux_generate:1:mux_i|Mux1~2_combout\ = (\mux_1|mux_1|mux_generate:0:mux_i|Mux2~0_combout\ & (((\mux_1|mux_1|mux_generate:1:mux_i|Mux1~1_combout\)))) # (!\mux_1|mux_1|mux_generate:0:mux_i|Mux2~0_combout\ & 
-- ((\mux_1|mux_1|mux_generate:1:mux_i|Mux1~1_combout\ & (\reg_gen:4:regs|reg_1|y\(6))) # (!\mux_1|mux_1|mux_generate:1:mux_i|Mux1~1_combout\ & ((\reg_gen:5:regs|reg_1|y\(6))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \reg_gen:4:regs|reg_1|y\(6),
	datab => \mux_1|mux_1|mux_generate:0:mux_i|Mux2~0_combout\,
	datac => \reg_gen:5:regs|reg_1|y\(6),
	datad => \mux_1|mux_1|mux_generate:1:mux_i|Mux1~1_combout\,
	combout => \mux_1|mux_1|mux_generate:1:mux_i|Mux1~2_combout\);

-- Location: LCCOMB_X41_Y62_N24
\mux_1|mux_1|mux_generate:1:mux_i|Mux1~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \mux_1|mux_1|mux_generate:1:mux_i|Mux1~4_combout\ = (\ADD_R1[1]~input_o\ & ((\ADD_R1[2]~input_o\ & ((\mux_1|mux_1|mux_generate:1:mux_i|Mux1~2_combout\))) # (!\ADD_R1[2]~input_o\ & (\mux_1|mux_1|mux_generate:1:mux_i|Mux1~3_combout\)))) # 
-- (!\ADD_R1[1]~input_o\ & (((\mux_1|mux_1|mux_generate:1:mux_i|Mux1~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ADD_R1[1]~input_o\,
	datab => \mux_1|mux_1|mux_generate:1:mux_i|Mux1~3_combout\,
	datac => \mux_1|mux_1|mux_generate:1:mux_i|Mux1~2_combout\,
	datad => \ADD_R1[2]~input_o\,
	combout => \mux_1|mux_1|mux_generate:1:mux_i|Mux1~4_combout\);

-- Location: IOIBUF_X58_Y73_N8
\DIN[7]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_DIN(7),
	o => \DIN[7]~input_o\);

-- Location: FF_X40_Y59_N27
\reg_gen:4:regs|reg_1|y[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	asdata => \DIN[7]~input_o\,
	sload => VCC,
	ena => \add_reg1_dcd|Mux3~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \reg_gen:4:regs|reg_1|y\(7));

-- Location: FF_X40_Y59_N17
\reg_gen:5:regs|reg_1|y[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	asdata => \DIN[7]~input_o\,
	sload => VCC,
	ena => \add_reg1_dcd|Mux3~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \reg_gen:5:regs|reg_1|y\(7));

-- Location: FF_X38_Y59_N17
\reg_gen:1:regs|reg_1|y[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	asdata => \DIN[7]~input_o\,
	sload => VCC,
	ena => \add_reg1_dcd|Mux3~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \reg_gen:1:regs|reg_1|y\(7));

-- Location: LCCOMB_X38_Y59_N2
\mux_1|mux_1|mux_generate:1:mux_i|Mux0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \mux_1|mux_1|mux_generate:1:mux_i|Mux0~0_combout\ = (\reg_gen:1:regs|reg_1|y\(7) & \ADD_R1[0]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \reg_gen:1:regs|reg_1|y\(7),
	datab => \ADD_R1[0]~input_o\,
	combout => \mux_1|mux_1|mux_generate:1:mux_i|Mux0~0_combout\);

-- Location: FF_X38_Y59_N7
\reg_gen:6:regs|reg_1|y[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	asdata => \DIN[7]~input_o\,
	sload => VCC,
	ena => \add_reg1_dcd|Mux3~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \reg_gen:6:regs|reg_1|y\(7));

-- Location: LCCOMB_X39_Y59_N12
\mux_1|mux_1|mux_generate:1:mux_i|Mux0~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \mux_1|mux_1|mux_generate:1:mux_i|Mux0~1_combout\ = (\mux_1|mux_1|mux_generate:0:mux_i|Mux2~1_combout\ & ((\mux_1|mux_1|mux_generate:0:mux_i|Mux2~2_combout\ & ((\reg_gen:6:regs|reg_1|y\(7)))) # (!\mux_1|mux_1|mux_generate:0:mux_i|Mux2~2_combout\ & 
-- (\mux_1|mux_1|mux_generate:1:mux_i|Mux0~0_combout\)))) # (!\mux_1|mux_1|mux_generate:0:mux_i|Mux2~1_combout\ & (((!\mux_1|mux_1|mux_generate:0:mux_i|Mux2~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000011011101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mux_1|mux_1|mux_generate:0:mux_i|Mux2~1_combout\,
	datab => \mux_1|mux_1|mux_generate:1:mux_i|Mux0~0_combout\,
	datac => \reg_gen:6:regs|reg_1|y\(7),
	datad => \mux_1|mux_1|mux_generate:0:mux_i|Mux2~2_combout\,
	combout => \mux_1|mux_1|mux_generate:1:mux_i|Mux0~1_combout\);

-- Location: LCCOMB_X40_Y59_N16
\mux_1|mux_1|mux_generate:1:mux_i|Mux0~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \mux_1|mux_1|mux_generate:1:mux_i|Mux0~2_combout\ = (\mux_1|mux_1|mux_generate:0:mux_i|Mux2~0_combout\ & (((\mux_1|mux_1|mux_generate:1:mux_i|Mux0~1_combout\)))) # (!\mux_1|mux_1|mux_generate:0:mux_i|Mux2~0_combout\ & 
-- ((\mux_1|mux_1|mux_generate:1:mux_i|Mux0~1_combout\ & (\reg_gen:4:regs|reg_1|y\(7))) # (!\mux_1|mux_1|mux_generate:1:mux_i|Mux0~1_combout\ & ((\reg_gen:5:regs|reg_1|y\(7))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \reg_gen:4:regs|reg_1|y\(7),
	datab => \mux_1|mux_1|mux_generate:0:mux_i|Mux2~0_combout\,
	datac => \reg_gen:5:regs|reg_1|y\(7),
	datad => \mux_1|mux_1|mux_generate:1:mux_i|Mux0~1_combout\,
	combout => \mux_1|mux_1|mux_generate:1:mux_i|Mux0~2_combout\);

-- Location: FF_X39_Y58_N15
\reg_gen:2:regs|reg_1|y[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	asdata => \DIN[7]~input_o\,
	sload => VCC,
	ena => \add_reg1_dcd|Mux3~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \reg_gen:2:regs|reg_1|y\(7));

-- Location: FF_X39_Y58_N5
\reg_gen:3:regs|reg_1|y[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	asdata => \DIN[7]~input_o\,
	sload => VCC,
	ena => \add_reg1_dcd|Mux3~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \reg_gen:3:regs|reg_1|y\(7));

-- Location: LCCOMB_X39_Y58_N4
\mux_1|mux_1|mux_generate:1:mux_i|Mux0~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \mux_1|mux_1|mux_generate:1:mux_i|Mux0~3_combout\ = (\ADD_R1[0]~input_o\ & ((\reg_gen:3:regs|reg_1|y\(7)))) # (!\ADD_R1[0]~input_o\ & (\reg_gen:2:regs|reg_1|y\(7)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \reg_gen:2:regs|reg_1|y\(7),
	datac => \reg_gen:3:regs|reg_1|y\(7),
	datad => \ADD_R1[0]~input_o\,
	combout => \mux_1|mux_1|mux_generate:1:mux_i|Mux0~3_combout\);

-- Location: LCCOMB_X40_Y59_N28
\mux_1|mux_1|mux_generate:1:mux_i|Mux0~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \mux_1|mux_1|mux_generate:1:mux_i|Mux0~4_combout\ = (\ADD_R1[2]~input_o\ & (\mux_1|mux_1|mux_generate:1:mux_i|Mux0~2_combout\)) # (!\ADD_R1[2]~input_o\ & ((\ADD_R1[1]~input_o\ & ((\mux_1|mux_1|mux_generate:1:mux_i|Mux0~3_combout\))) # 
-- (!\ADD_R1[1]~input_o\ & (\mux_1|mux_1|mux_generate:1:mux_i|Mux0~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mux_1|mux_1|mux_generate:1:mux_i|Mux0~2_combout\,
	datab => \ADD_R1[2]~input_o\,
	datac => \mux_1|mux_1|mux_generate:1:mux_i|Mux0~3_combout\,
	datad => \ADD_R1[1]~input_o\,
	combout => \mux_1|mux_1|mux_generate:1:mux_i|Mux0~4_combout\);

-- Location: IOIBUF_X58_Y73_N1
\DIN[8]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_DIN(8),
	o => \DIN[8]~input_o\);

-- Location: FF_X40_Y59_N9
\reg_gen:4:regs|reg_2|y[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	asdata => \DIN[8]~input_o\,
	sload => VCC,
	ena => \add_reg1_dcd|Mux3~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \reg_gen:4:regs|reg_2|y\(0));

-- Location: FF_X38_Y59_N31
\reg_gen:1:regs|reg_2|y[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	asdata => \DIN[8]~input_o\,
	sload => VCC,
	ena => \add_reg1_dcd|Mux3~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \reg_gen:1:regs|reg_2|y\(0));

-- Location: LCCOMB_X38_Y59_N8
\mux_1|mux_1|mux_generate:2:mux_i|Mux3~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \mux_1|mux_1|mux_generate:2:mux_i|Mux3~0_combout\ = (\ADD_R1[0]~input_o\ & \reg_gen:1:regs|reg_2|y\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \ADD_R1[0]~input_o\,
	datac => \reg_gen:1:regs|reg_2|y\(0),
	combout => \mux_1|mux_1|mux_generate:2:mux_i|Mux3~0_combout\);

-- Location: FF_X38_Y59_N21
\reg_gen:6:regs|reg_2|y[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	asdata => \DIN[8]~input_o\,
	sload => VCC,
	ena => \add_reg1_dcd|Mux3~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \reg_gen:6:regs|reg_2|y\(0));

-- Location: LCCOMB_X39_Y59_N6
\mux_1|mux_1|mux_generate:2:mux_i|Mux3~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \mux_1|mux_1|mux_generate:2:mux_i|Mux3~1_combout\ = (\mux_1|mux_1|mux_generate:0:mux_i|Mux2~1_combout\ & ((\mux_1|mux_1|mux_generate:0:mux_i|Mux2~2_combout\ & ((\reg_gen:6:regs|reg_2|y\(0)))) # (!\mux_1|mux_1|mux_generate:0:mux_i|Mux2~2_combout\ & 
-- (\mux_1|mux_1|mux_generate:2:mux_i|Mux3~0_combout\)))) # (!\mux_1|mux_1|mux_generate:0:mux_i|Mux2~1_combout\ & (((\mux_1|mux_1|mux_generate:0:mux_i|Mux2~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mux_1|mux_1|mux_generate:2:mux_i|Mux3~0_combout\,
	datab => \reg_gen:6:regs|reg_2|y\(0),
	datac => \mux_1|mux_1|mux_generate:0:mux_i|Mux2~1_combout\,
	datad => \mux_1|mux_1|mux_generate:0:mux_i|Mux2~2_combout\,
	combout => \mux_1|mux_1|mux_generate:2:mux_i|Mux3~1_combout\);

-- Location: FF_X40_Y59_N7
\reg_gen:5:regs|reg_2|y[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	asdata => \DIN[8]~input_o\,
	sload => VCC,
	ena => \add_reg1_dcd|Mux3~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \reg_gen:5:regs|reg_2|y\(0));

-- Location: LCCOMB_X40_Y59_N6
\mux_1|mux_1|mux_generate:2:mux_i|Mux3~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \mux_1|mux_1|mux_generate:2:mux_i|Mux3~2_combout\ = (\mux_1|mux_1|mux_generate:2:mux_i|Mux3~1_combout\ & (((\reg_gen:5:regs|reg_2|y\(0)) # (\mux_1|mux_1|mux_generate:0:mux_i|Mux2~0_combout\)))) # (!\mux_1|mux_1|mux_generate:2:mux_i|Mux3~1_combout\ & 
-- (\reg_gen:4:regs|reg_2|y\(0) & ((!\mux_1|mux_1|mux_generate:0:mux_i|Mux2~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \reg_gen:4:regs|reg_2|y\(0),
	datab => \mux_1|mux_1|mux_generate:2:mux_i|Mux3~1_combout\,
	datac => \reg_gen:5:regs|reg_2|y\(0),
	datad => \mux_1|mux_1|mux_generate:0:mux_i|Mux2~0_combout\,
	combout => \mux_1|mux_1|mux_generate:2:mux_i|Mux3~2_combout\);

-- Location: FF_X39_Y58_N27
\reg_gen:2:regs|reg_2|y[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	asdata => \DIN[8]~input_o\,
	sload => VCC,
	ena => \add_reg1_dcd|Mux3~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \reg_gen:2:regs|reg_2|y\(0));

-- Location: FF_X39_Y58_N1
\reg_gen:3:regs|reg_2|y[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	asdata => \DIN[8]~input_o\,
	sload => VCC,
	ena => \add_reg1_dcd|Mux3~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \reg_gen:3:regs|reg_2|y\(0));

-- Location: LCCOMB_X39_Y58_N0
\mux_1|mux_1|mux_generate:2:mux_i|Mux3~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \mux_1|mux_1|mux_generate:2:mux_i|Mux3~3_combout\ = (\ADD_R1[0]~input_o\ & ((\reg_gen:3:regs|reg_2|y\(0)))) # (!\ADD_R1[0]~input_o\ & (\reg_gen:2:regs|reg_2|y\(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \reg_gen:2:regs|reg_2|y\(0),
	datac => \reg_gen:3:regs|reg_2|y\(0),
	datad => \ADD_R1[0]~input_o\,
	combout => \mux_1|mux_1|mux_generate:2:mux_i|Mux3~3_combout\);

-- Location: LCCOMB_X40_Y59_N10
\mux_1|mux_1|mux_generate:2:mux_i|Mux3~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \mux_1|mux_1|mux_generate:2:mux_i|Mux3~4_combout\ = (\ADD_R1[2]~input_o\ & (\mux_1|mux_1|mux_generate:2:mux_i|Mux3~2_combout\)) # (!\ADD_R1[2]~input_o\ & ((\ADD_R1[1]~input_o\ & ((\mux_1|mux_1|mux_generate:2:mux_i|Mux3~3_combout\))) # 
-- (!\ADD_R1[1]~input_o\ & (\mux_1|mux_1|mux_generate:2:mux_i|Mux3~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mux_1|mux_1|mux_generate:2:mux_i|Mux3~2_combout\,
	datab => \ADD_R1[2]~input_o\,
	datac => \mux_1|mux_1|mux_generate:2:mux_i|Mux3~3_combout\,
	datad => \ADD_R1[1]~input_o\,
	combout => \mux_1|mux_1|mux_generate:2:mux_i|Mux3~4_combout\);

-- Location: IOIBUF_X20_Y73_N1
\DIN[9]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_DIN(9),
	o => \DIN[9]~input_o\);

-- Location: FF_X38_Y59_N11
\reg_gen:1:regs|reg_2|y[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	asdata => \DIN[9]~input_o\,
	sload => VCC,
	ena => \add_reg1_dcd|Mux3~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \reg_gen:1:regs|reg_2|y\(1));

-- Location: LCCOMB_X36_Y59_N28
\mux_1|mux_1|mux_generate:2:mux_i|Mux2~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \mux_1|mux_1|mux_generate:2:mux_i|Mux2~0_combout\ = (\reg_gen:1:regs|reg_2|y\(1) & \ADD_R1[0]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \reg_gen:1:regs|reg_2|y\(1),
	datad => \ADD_R1[0]~input_o\,
	combout => \mux_1|mux_1|mux_generate:2:mux_i|Mux2~0_combout\);

-- Location: FF_X38_Y59_N3
\reg_gen:6:regs|reg_2|y[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	asdata => \DIN[9]~input_o\,
	sload => VCC,
	ena => \add_reg1_dcd|Mux3~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \reg_gen:6:regs|reg_2|y\(1));

-- Location: LCCOMB_X36_Y59_N30
\mux_1|mux_1|mux_generate:2:mux_i|Mux2~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \mux_1|mux_1|mux_generate:2:mux_i|Mux2~1_combout\ = (\mux_1|mux_1|mux_generate:0:mux_i|Mux2~1_combout\ & ((\mux_1|mux_1|mux_generate:0:mux_i|Mux2~2_combout\ & ((\reg_gen:6:regs|reg_2|y\(1)))) # (!\mux_1|mux_1|mux_generate:0:mux_i|Mux2~2_combout\ & 
-- (\mux_1|mux_1|mux_generate:2:mux_i|Mux2~0_combout\)))) # (!\mux_1|mux_1|mux_generate:0:mux_i|Mux2~1_combout\ & (((!\mux_1|mux_1|mux_generate:0:mux_i|Mux2~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000010111011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mux_1|mux_1|mux_generate:2:mux_i|Mux2~0_combout\,
	datab => \mux_1|mux_1|mux_generate:0:mux_i|Mux2~1_combout\,
	datac => \reg_gen:6:regs|reg_2|y\(1),
	datad => \mux_1|mux_1|mux_generate:0:mux_i|Mux2~2_combout\,
	combout => \mux_1|mux_1|mux_generate:2:mux_i|Mux2~1_combout\);

-- Location: FF_X36_Y59_N3
\reg_gen:4:regs|reg_2|y[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	asdata => \DIN[9]~input_o\,
	sload => VCC,
	ena => \add_reg1_dcd|Mux3~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \reg_gen:4:regs|reg_2|y\(1));

-- Location: FF_X36_Y59_N1
\reg_gen:5:regs|reg_2|y[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	asdata => \DIN[9]~input_o\,
	sload => VCC,
	ena => \add_reg1_dcd|Mux3~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \reg_gen:5:regs|reg_2|y\(1));

-- Location: LCCOMB_X36_Y59_N0
\mux_1|mux_1|mux_generate:2:mux_i|Mux2~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \mux_1|mux_1|mux_generate:2:mux_i|Mux2~2_combout\ = (\mux_1|mux_1|mux_generate:2:mux_i|Mux2~1_combout\ & ((\reg_gen:4:regs|reg_2|y\(1)) # ((\mux_1|mux_1|mux_generate:0:mux_i|Mux2~0_combout\)))) # (!\mux_1|mux_1|mux_generate:2:mux_i|Mux2~1_combout\ & 
-- (((\reg_gen:5:regs|reg_2|y\(1) & !\mux_1|mux_1|mux_generate:0:mux_i|Mux2~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mux_1|mux_1|mux_generate:2:mux_i|Mux2~1_combout\,
	datab => \reg_gen:4:regs|reg_2|y\(1),
	datac => \reg_gen:5:regs|reg_2|y\(1),
	datad => \mux_1|mux_1|mux_generate:0:mux_i|Mux2~0_combout\,
	combout => \mux_1|mux_1|mux_generate:2:mux_i|Mux2~2_combout\);

-- Location: FF_X39_Y58_N23
\reg_gen:2:regs|reg_2|y[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	asdata => \DIN[9]~input_o\,
	sload => VCC,
	ena => \add_reg1_dcd|Mux3~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \reg_gen:2:regs|reg_2|y\(1));

-- Location: FF_X39_Y58_N21
\reg_gen:3:regs|reg_2|y[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	asdata => \DIN[9]~input_o\,
	sload => VCC,
	ena => \add_reg1_dcd|Mux3~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \reg_gen:3:regs|reg_2|y\(1));

-- Location: LCCOMB_X39_Y58_N20
\mux_1|mux_1|mux_generate:2:mux_i|Mux2~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \mux_1|mux_1|mux_generate:2:mux_i|Mux2~3_combout\ = (\ADD_R1[0]~input_o\ & ((\reg_gen:3:regs|reg_2|y\(1)))) # (!\ADD_R1[0]~input_o\ & (\reg_gen:2:regs|reg_2|y\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \reg_gen:2:regs|reg_2|y\(1),
	datac => \reg_gen:3:regs|reg_2|y\(1),
	datad => \ADD_R1[0]~input_o\,
	combout => \mux_1|mux_1|mux_generate:2:mux_i|Mux2~3_combout\);

-- Location: LCCOMB_X36_Y59_N24
\mux_1|mux_1|mux_generate:2:mux_i|Mux2~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \mux_1|mux_1|mux_generate:2:mux_i|Mux2~4_combout\ = (\ADD_R1[2]~input_o\ & (\mux_1|mux_1|mux_generate:2:mux_i|Mux2~2_combout\)) # (!\ADD_R1[2]~input_o\ & ((\ADD_R1[1]~input_o\ & ((\mux_1|mux_1|mux_generate:2:mux_i|Mux2~3_combout\))) # 
-- (!\ADD_R1[1]~input_o\ & (\mux_1|mux_1|mux_generate:2:mux_i|Mux2~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ADD_R1[2]~input_o\,
	datab => \mux_1|mux_1|mux_generate:2:mux_i|Mux2~2_combout\,
	datac => \mux_1|mux_1|mux_generate:2:mux_i|Mux2~3_combout\,
	datad => \ADD_R1[1]~input_o\,
	combout => \mux_1|mux_1|mux_generate:2:mux_i|Mux2~4_combout\);

-- Location: IOIBUF_X18_Y73_N22
\DIN[10]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_DIN(10),
	o => \DIN[10]~input_o\);

-- Location: FF_X39_Y58_N3
\reg_gen:2:regs|reg_2|y[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	asdata => \DIN[10]~input_o\,
	sload => VCC,
	ena => \add_reg1_dcd|Mux3~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \reg_gen:2:regs|reg_2|y\(2));

-- Location: FF_X39_Y58_N17
\reg_gen:3:regs|reg_2|y[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	asdata => \DIN[10]~input_o\,
	sload => VCC,
	ena => \add_reg1_dcd|Mux3~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \reg_gen:3:regs|reg_2|y\(2));

-- Location: LCCOMB_X39_Y58_N16
\mux_1|mux_1|mux_generate:2:mux_i|Mux1~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \mux_1|mux_1|mux_generate:2:mux_i|Mux1~3_combout\ = (\ADD_R1[0]~input_o\ & ((\reg_gen:3:regs|reg_2|y\(2)))) # (!\ADD_R1[0]~input_o\ & (\reg_gen:2:regs|reg_2|y\(2)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \reg_gen:2:regs|reg_2|y\(2),
	datac => \reg_gen:3:regs|reg_2|y\(2),
	datad => \ADD_R1[0]~input_o\,
	combout => \mux_1|mux_1|mux_generate:2:mux_i|Mux1~3_combout\);

-- Location: FF_X36_Y57_N27
\reg_gen:1:regs|reg_2|y[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	asdata => \DIN[10]~input_o\,
	sload => VCC,
	ena => \add_reg1_dcd|Mux3~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \reg_gen:1:regs|reg_2|y\(2));

-- Location: LCCOMB_X36_Y57_N12
\mux_1|mux_1|mux_generate:2:mux_i|Mux1~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \mux_1|mux_1|mux_generate:2:mux_i|Mux1~0_combout\ = (\reg_gen:1:regs|reg_2|y\(2) & \ADD_R1[0]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \reg_gen:1:regs|reg_2|y\(2),
	datac => \ADD_R1[0]~input_o\,
	combout => \mux_1|mux_1|mux_generate:2:mux_i|Mux1~0_combout\);

-- Location: FF_X36_Y57_N1
\reg_gen:6:regs|reg_2|y[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	asdata => \DIN[10]~input_o\,
	sload => VCC,
	ena => \add_reg1_dcd|Mux3~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \reg_gen:6:regs|reg_2|y\(2));

-- Location: LCCOMB_X36_Y57_N6
\mux_1|mux_1|mux_generate:2:mux_i|Mux1~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \mux_1|mux_1|mux_generate:2:mux_i|Mux1~1_combout\ = (\mux_1|mux_1|mux_generate:0:mux_i|Mux2~1_combout\ & ((\mux_1|mux_1|mux_generate:0:mux_i|Mux2~2_combout\ & ((\reg_gen:6:regs|reg_2|y\(2)))) # (!\mux_1|mux_1|mux_generate:0:mux_i|Mux2~2_combout\ & 
-- (\mux_1|mux_1|mux_generate:2:mux_i|Mux1~0_combout\)))) # (!\mux_1|mux_1|mux_generate:0:mux_i|Mux2~1_combout\ & (((!\mux_1|mux_1|mux_generate:0:mux_i|Mux2~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000010101111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mux_1|mux_1|mux_generate:2:mux_i|Mux1~0_combout\,
	datab => \reg_gen:6:regs|reg_2|y\(2),
	datac => \mux_1|mux_1|mux_generate:0:mux_i|Mux2~1_combout\,
	datad => \mux_1|mux_1|mux_generate:0:mux_i|Mux2~2_combout\,
	combout => \mux_1|mux_1|mux_generate:2:mux_i|Mux1~1_combout\);

-- Location: FF_X36_Y58_N27
\reg_gen:5:regs|reg_2|y[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	asdata => \DIN[10]~input_o\,
	sload => VCC,
	ena => \add_reg1_dcd|Mux3~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \reg_gen:5:regs|reg_2|y\(2));

-- Location: FF_X36_Y58_N29
\reg_gen:4:regs|reg_2|y[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	asdata => \DIN[10]~input_o\,
	sload => VCC,
	ena => \add_reg1_dcd|Mux3~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \reg_gen:4:regs|reg_2|y\(2));

-- Location: LCCOMB_X36_Y58_N26
\mux_1|mux_1|mux_generate:2:mux_i|Mux1~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \mux_1|mux_1|mux_generate:2:mux_i|Mux1~2_combout\ = (\mux_1|mux_1|mux_generate:2:mux_i|Mux1~1_combout\ & ((\mux_1|mux_1|mux_generate:0:mux_i|Mux2~0_combout\) # ((\reg_gen:4:regs|reg_2|y\(2))))) # (!\mux_1|mux_1|mux_generate:2:mux_i|Mux1~1_combout\ & 
-- (!\mux_1|mux_1|mux_generate:0:mux_i|Mux2~0_combout\ & (\reg_gen:5:regs|reg_2|y\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mux_1|mux_1|mux_generate:2:mux_i|Mux1~1_combout\,
	datab => \mux_1|mux_1|mux_generate:0:mux_i|Mux2~0_combout\,
	datac => \reg_gen:5:regs|reg_2|y\(2),
	datad => \reg_gen:4:regs|reg_2|y\(2),
	combout => \mux_1|mux_1|mux_generate:2:mux_i|Mux1~2_combout\);

-- Location: LCCOMB_X36_Y58_N30
\mux_1|mux_1|mux_generate:2:mux_i|Mux1~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \mux_1|mux_1|mux_generate:2:mux_i|Mux1~4_combout\ = (\ADD_R1[2]~input_o\ & (((\mux_1|mux_1|mux_generate:2:mux_i|Mux1~2_combout\)))) # (!\ADD_R1[2]~input_o\ & ((\ADD_R1[1]~input_o\ & (\mux_1|mux_1|mux_generate:2:mux_i|Mux1~3_combout\)) # 
-- (!\ADD_R1[1]~input_o\ & ((\mux_1|mux_1|mux_generate:2:mux_i|Mux1~2_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110001011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mux_1|mux_1|mux_generate:2:mux_i|Mux1~3_combout\,
	datab => \ADD_R1[2]~input_o\,
	datac => \mux_1|mux_1|mux_generate:2:mux_i|Mux1~2_combout\,
	datad => \ADD_R1[1]~input_o\,
	combout => \mux_1|mux_1|mux_generate:2:mux_i|Mux1~4_combout\);

-- Location: IOIBUF_X16_Y73_N1
\DIN[11]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_DIN(11),
	o => \DIN[11]~input_o\);

-- Location: FF_X41_Y59_N23
\reg_gen:1:regs|reg_2|y[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	asdata => \DIN[11]~input_o\,
	sload => VCC,
	ena => \add_reg1_dcd|Mux3~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \reg_gen:1:regs|reg_2|y\(3));

-- Location: LCCOMB_X40_Y59_N8
\mux_1|mux_1|mux_generate:2:mux_i|Mux0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \mux_1|mux_1|mux_generate:2:mux_i|Mux0~0_combout\ = (\ADD_R1[0]~input_o\ & \reg_gen:1:regs|reg_2|y\(3))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \ADD_R1[0]~input_o\,
	datad => \reg_gen:1:regs|reg_2|y\(3),
	combout => \mux_1|mux_1|mux_generate:2:mux_i|Mux0~0_combout\);

-- Location: FF_X41_Y59_N29
\reg_gen:6:regs|reg_2|y[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	asdata => \DIN[11]~input_o\,
	sload => VCC,
	ena => \add_reg1_dcd|Mux3~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \reg_gen:6:regs|reg_2|y\(3));

-- Location: LCCOMB_X40_Y59_N20
\mux_1|mux_1|mux_generate:2:mux_i|Mux0~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \mux_1|mux_1|mux_generate:2:mux_i|Mux0~1_combout\ = (\mux_1|mux_1|mux_generate:0:mux_i|Mux2~1_combout\ & ((\mux_1|mux_1|mux_generate:0:mux_i|Mux2~2_combout\ & ((\reg_gen:6:regs|reg_2|y\(3)))) # (!\mux_1|mux_1|mux_generate:0:mux_i|Mux2~2_combout\ & 
-- (\mux_1|mux_1|mux_generate:2:mux_i|Mux0~0_combout\)))) # (!\mux_1|mux_1|mux_generate:0:mux_i|Mux2~1_combout\ & (!\mux_1|mux_1|mux_generate:0:mux_i|Mux2~2_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100100110001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mux_1|mux_1|mux_generate:0:mux_i|Mux2~1_combout\,
	datab => \mux_1|mux_1|mux_generate:0:mux_i|Mux2~2_combout\,
	datac => \mux_1|mux_1|mux_generate:2:mux_i|Mux0~0_combout\,
	datad => \reg_gen:6:regs|reg_2|y\(3),
	combout => \mux_1|mux_1|mux_generate:2:mux_i|Mux0~1_combout\);

-- Location: FF_X36_Y58_N9
\reg_gen:5:regs|reg_2|y[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	asdata => \DIN[11]~input_o\,
	sload => VCC,
	ena => \add_reg1_dcd|Mux3~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \reg_gen:5:regs|reg_2|y\(3));

-- Location: FF_X36_Y58_N3
\reg_gen:4:regs|reg_2|y[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	asdata => \DIN[11]~input_o\,
	sload => VCC,
	ena => \add_reg1_dcd|Mux3~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \reg_gen:4:regs|reg_2|y\(3));

-- Location: LCCOMB_X36_Y58_N8
\mux_1|mux_1|mux_generate:2:mux_i|Mux0~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \mux_1|mux_1|mux_generate:2:mux_i|Mux0~2_combout\ = (\mux_1|mux_1|mux_generate:2:mux_i|Mux0~1_combout\ & ((\mux_1|mux_1|mux_generate:0:mux_i|Mux2~0_combout\) # ((\reg_gen:4:regs|reg_2|y\(3))))) # (!\mux_1|mux_1|mux_generate:2:mux_i|Mux0~1_combout\ & 
-- (!\mux_1|mux_1|mux_generate:0:mux_i|Mux2~0_combout\ & (\reg_gen:5:regs|reg_2|y\(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mux_1|mux_1|mux_generate:2:mux_i|Mux0~1_combout\,
	datab => \mux_1|mux_1|mux_generate:0:mux_i|Mux2~0_combout\,
	datac => \reg_gen:5:regs|reg_2|y\(3),
	datad => \reg_gen:4:regs|reg_2|y\(3),
	combout => \mux_1|mux_1|mux_generate:2:mux_i|Mux0~2_combout\);

-- Location: FF_X36_Y60_N17
\reg_gen:3:regs|reg_2|y[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	asdata => \DIN[11]~input_o\,
	sload => VCC,
	ena => \add_reg1_dcd|Mux3~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \reg_gen:3:regs|reg_2|y\(3));

-- Location: FF_X36_Y60_N19
\reg_gen:2:regs|reg_2|y[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	asdata => \DIN[11]~input_o\,
	sload => VCC,
	ena => \add_reg1_dcd|Mux3~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \reg_gen:2:regs|reg_2|y\(3));

-- Location: LCCOMB_X36_Y60_N16
\mux_1|mux_1|mux_generate:2:mux_i|Mux0~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \mux_1|mux_1|mux_generate:2:mux_i|Mux0~3_combout\ = (\ADD_R1[0]~input_o\ & (\reg_gen:3:regs|reg_2|y\(3))) # (!\ADD_R1[0]~input_o\ & ((\reg_gen:2:regs|reg_2|y\(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ADD_R1[0]~input_o\,
	datac => \reg_gen:3:regs|reg_2|y\(3),
	datad => \reg_gen:2:regs|reg_2|y\(3),
	combout => \mux_1|mux_1|mux_generate:2:mux_i|Mux0~3_combout\);

-- Location: LCCOMB_X36_Y58_N4
\mux_1|mux_1|mux_generate:2:mux_i|Mux0~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \mux_1|mux_1|mux_generate:2:mux_i|Mux0~4_combout\ = (\ADD_R1[2]~input_o\ & (\mux_1|mux_1|mux_generate:2:mux_i|Mux0~2_combout\)) # (!\ADD_R1[2]~input_o\ & ((\ADD_R1[1]~input_o\ & ((\mux_1|mux_1|mux_generate:2:mux_i|Mux0~3_combout\))) # 
-- (!\ADD_R1[1]~input_o\ & (\mux_1|mux_1|mux_generate:2:mux_i|Mux0~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010110010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mux_1|mux_1|mux_generate:2:mux_i|Mux0~2_combout\,
	datab => \mux_1|mux_1|mux_generate:2:mux_i|Mux0~3_combout\,
	datac => \ADD_R1[2]~input_o\,
	datad => \ADD_R1[1]~input_o\,
	combout => \mux_1|mux_1|mux_generate:2:mux_i|Mux0~4_combout\);

-- Location: IOIBUF_X0_Y59_N15
\DIN[12]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_DIN(12),
	o => \DIN[12]~input_o\);

-- Location: FF_X36_Y57_N3
\reg_gen:1:regs|reg_2|y[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	asdata => \DIN[12]~input_o\,
	sload => VCC,
	ena => \add_reg1_dcd|Mux3~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \reg_gen:1:regs|reg_2|y\(4));

-- Location: LCCOMB_X36_Y57_N20
\mux_1|mux_1|mux_generate:3:mux_i|Mux3~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \mux_1|mux_1|mux_generate:3:mux_i|Mux3~0_combout\ = (\ADD_R1[0]~input_o\ & \reg_gen:1:regs|reg_2|y\(4))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \ADD_R1[0]~input_o\,
	datad => \reg_gen:1:regs|reg_2|y\(4),
	combout => \mux_1|mux_1|mux_generate:3:mux_i|Mux3~0_combout\);

-- Location: FF_X36_Y57_N25
\reg_gen:6:regs|reg_2|y[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	asdata => \DIN[12]~input_o\,
	sload => VCC,
	ena => \add_reg1_dcd|Mux3~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \reg_gen:6:regs|reg_2|y\(4));

-- Location: LCCOMB_X36_Y57_N22
\mux_1|mux_1|mux_generate:3:mux_i|Mux3~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \mux_1|mux_1|mux_generate:3:mux_i|Mux3~1_combout\ = (\mux_1|mux_1|mux_generate:0:mux_i|Mux2~1_combout\ & ((\mux_1|mux_1|mux_generate:0:mux_i|Mux2~2_combout\ & ((\reg_gen:6:regs|reg_2|y\(4)))) # (!\mux_1|mux_1|mux_generate:0:mux_i|Mux2~2_combout\ & 
-- (\mux_1|mux_1|mux_generate:3:mux_i|Mux3~0_combout\)))) # (!\mux_1|mux_1|mux_generate:0:mux_i|Mux2~1_combout\ & (((!\mux_1|mux_1|mux_generate:0:mux_i|Mux2~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010110100001101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mux_1|mux_1|mux_generate:0:mux_i|Mux2~1_combout\,
	datab => \mux_1|mux_1|mux_generate:3:mux_i|Mux3~0_combout\,
	datac => \mux_1|mux_1|mux_generate:0:mux_i|Mux2~2_combout\,
	datad => \reg_gen:6:regs|reg_2|y\(4),
	combout => \mux_1|mux_1|mux_generate:3:mux_i|Mux3~1_combout\);

-- Location: FF_X36_Y58_N7
\reg_gen:5:regs|reg_2|y[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	asdata => \DIN[12]~input_o\,
	sload => VCC,
	ena => \add_reg1_dcd|Mux3~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \reg_gen:5:regs|reg_2|y\(4));

-- Location: FF_X36_Y58_N17
\reg_gen:4:regs|reg_2|y[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	asdata => \DIN[12]~input_o\,
	sload => VCC,
	ena => \add_reg1_dcd|Mux3~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \reg_gen:4:regs|reg_2|y\(4));

-- Location: LCCOMB_X36_Y58_N6
\mux_1|mux_1|mux_generate:3:mux_i|Mux3~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \mux_1|mux_1|mux_generate:3:mux_i|Mux3~2_combout\ = (\mux_1|mux_1|mux_generate:3:mux_i|Mux3~1_combout\ & ((\mux_1|mux_1|mux_generate:0:mux_i|Mux2~0_combout\) # ((\reg_gen:4:regs|reg_2|y\(4))))) # (!\mux_1|mux_1|mux_generate:3:mux_i|Mux3~1_combout\ & 
-- (!\mux_1|mux_1|mux_generate:0:mux_i|Mux2~0_combout\ & (\reg_gen:5:regs|reg_2|y\(4))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mux_1|mux_1|mux_generate:3:mux_i|Mux3~1_combout\,
	datab => \mux_1|mux_1|mux_generate:0:mux_i|Mux2~0_combout\,
	datac => \reg_gen:5:regs|reg_2|y\(4),
	datad => \reg_gen:4:regs|reg_2|y\(4),
	combout => \mux_1|mux_1|mux_generate:3:mux_i|Mux3~2_combout\);

-- Location: FF_X36_Y60_N29
\reg_gen:3:regs|reg_2|y[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	asdata => \DIN[12]~input_o\,
	sload => VCC,
	ena => \add_reg1_dcd|Mux3~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \reg_gen:3:regs|reg_2|y\(4));

-- Location: FF_X36_Y60_N23
\reg_gen:2:regs|reg_2|y[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	asdata => \DIN[12]~input_o\,
	sload => VCC,
	ena => \add_reg1_dcd|Mux3~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \reg_gen:2:regs|reg_2|y\(4));

-- Location: LCCOMB_X36_Y60_N28
\mux_1|mux_1|mux_generate:3:mux_i|Mux3~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \mux_1|mux_1|mux_generate:3:mux_i|Mux3~3_combout\ = (\ADD_R1[0]~input_o\ & (\reg_gen:3:regs|reg_2|y\(4))) # (!\ADD_R1[0]~input_o\ & ((\reg_gen:2:regs|reg_2|y\(4))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ADD_R1[0]~input_o\,
	datac => \reg_gen:3:regs|reg_2|y\(4),
	datad => \reg_gen:2:regs|reg_2|y\(4),
	combout => \mux_1|mux_1|mux_generate:3:mux_i|Mux3~3_combout\);

-- Location: LCCOMB_X36_Y58_N10
\mux_1|mux_1|mux_generate:3:mux_i|Mux3~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \mux_1|mux_1|mux_generate:3:mux_i|Mux3~4_combout\ = (\ADD_R1[2]~input_o\ & (\mux_1|mux_1|mux_generate:3:mux_i|Mux3~2_combout\)) # (!\ADD_R1[2]~input_o\ & ((\ADD_R1[1]~input_o\ & ((\mux_1|mux_1|mux_generate:3:mux_i|Mux3~3_combout\))) # 
-- (!\ADD_R1[1]~input_o\ & (\mux_1|mux_1|mux_generate:3:mux_i|Mux3~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010110010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mux_1|mux_1|mux_generate:3:mux_i|Mux3~2_combout\,
	datab => \mux_1|mux_1|mux_generate:3:mux_i|Mux3~3_combout\,
	datac => \ADD_R1[2]~input_o\,
	datad => \ADD_R1[1]~input_o\,
	combout => \mux_1|mux_1|mux_generate:3:mux_i|Mux3~4_combout\);

-- Location: IOIBUF_X18_Y73_N15
\DIN[13]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_DIN(13),
	o => \DIN[13]~input_o\);

-- Location: FF_X36_Y60_N25
\reg_gen:3:regs|reg_2|y[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	asdata => \DIN[13]~input_o\,
	sload => VCC,
	ena => \add_reg1_dcd|Mux3~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \reg_gen:3:regs|reg_2|y\(5));

-- Location: FF_X36_Y60_N27
\reg_gen:2:regs|reg_2|y[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	asdata => \DIN[13]~input_o\,
	sload => VCC,
	ena => \add_reg1_dcd|Mux3~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \reg_gen:2:regs|reg_2|y\(5));

-- Location: LCCOMB_X36_Y60_N24
\mux_1|mux_1|mux_generate:3:mux_i|Mux2~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \mux_1|mux_1|mux_generate:3:mux_i|Mux2~3_combout\ = (\ADD_R1[0]~input_o\ & (\reg_gen:3:regs|reg_2|y\(5))) # (!\ADD_R1[0]~input_o\ & ((\reg_gen:2:regs|reg_2|y\(5))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ADD_R1[0]~input_o\,
	datac => \reg_gen:3:regs|reg_2|y\(5),
	datad => \reg_gen:2:regs|reg_2|y\(5),
	combout => \mux_1|mux_1|mux_generate:3:mux_i|Mux2~3_combout\);

-- Location: FF_X36_Y57_N17
\reg_gen:6:regs|reg_2|y[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	asdata => \DIN[13]~input_o\,
	sload => VCC,
	ena => \add_reg1_dcd|Mux3~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \reg_gen:6:regs|reg_2|y\(5));

-- Location: FF_X36_Y57_N11
\reg_gen:1:regs|reg_2|y[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	asdata => \DIN[13]~input_o\,
	sload => VCC,
	ena => \add_reg1_dcd|Mux3~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \reg_gen:1:regs|reg_2|y\(5));

-- Location: LCCOMB_X36_Y57_N4
\mux_1|mux_1|mux_generate:3:mux_i|Mux2~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \mux_1|mux_1|mux_generate:3:mux_i|Mux2~0_combout\ = (\reg_gen:1:regs|reg_2|y\(5) & \ADD_R1[0]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \reg_gen:1:regs|reg_2|y\(5),
	datac => \ADD_R1[0]~input_o\,
	combout => \mux_1|mux_1|mux_generate:3:mux_i|Mux2~0_combout\);

-- Location: LCCOMB_X36_Y57_N14
\mux_1|mux_1|mux_generate:3:mux_i|Mux2~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \mux_1|mux_1|mux_generate:3:mux_i|Mux2~1_combout\ = (\mux_1|mux_1|mux_generate:0:mux_i|Mux2~1_combout\ & ((\mux_1|mux_1|mux_generate:0:mux_i|Mux2~2_combout\ & (\reg_gen:6:regs|reg_2|y\(5))) # (!\mux_1|mux_1|mux_generate:0:mux_i|Mux2~2_combout\ & 
-- ((\mux_1|mux_1|mux_generate:3:mux_i|Mux2~0_combout\))))) # (!\mux_1|mux_1|mux_generate:0:mux_i|Mux2~1_combout\ & (((!\mux_1|mux_1|mux_generate:0:mux_i|Mux2~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100011110101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mux_1|mux_1|mux_generate:0:mux_i|Mux2~1_combout\,
	datab => \reg_gen:6:regs|reg_2|y\(5),
	datac => \mux_1|mux_1|mux_generate:3:mux_i|Mux2~0_combout\,
	datad => \mux_1|mux_1|mux_generate:0:mux_i|Mux2~2_combout\,
	combout => \mux_1|mux_1|mux_generate:3:mux_i|Mux2~1_combout\);

-- Location: FF_X36_Y59_N13
\reg_gen:4:regs|reg_2|y[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	asdata => \DIN[13]~input_o\,
	sload => VCC,
	ena => \add_reg1_dcd|Mux3~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \reg_gen:4:regs|reg_2|y\(5));

-- Location: FF_X36_Y59_N27
\reg_gen:5:regs|reg_2|y[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	asdata => \DIN[13]~input_o\,
	sload => VCC,
	ena => \add_reg1_dcd|Mux3~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \reg_gen:5:regs|reg_2|y\(5));

-- Location: LCCOMB_X36_Y59_N26
\mux_1|mux_1|mux_generate:3:mux_i|Mux2~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \mux_1|mux_1|mux_generate:3:mux_i|Mux2~2_combout\ = (\mux_1|mux_1|mux_generate:3:mux_i|Mux2~1_combout\ & ((\reg_gen:4:regs|reg_2|y\(5)) # ((\mux_1|mux_1|mux_generate:0:mux_i|Mux2~0_combout\)))) # (!\mux_1|mux_1|mux_generate:3:mux_i|Mux2~1_combout\ & 
-- (((\reg_gen:5:regs|reg_2|y\(5) & !\mux_1|mux_1|mux_generate:0:mux_i|Mux2~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mux_1|mux_1|mux_generate:3:mux_i|Mux2~1_combout\,
	datab => \reg_gen:4:regs|reg_2|y\(5),
	datac => \reg_gen:5:regs|reg_2|y\(5),
	datad => \mux_1|mux_1|mux_generate:0:mux_i|Mux2~0_combout\,
	combout => \mux_1|mux_1|mux_generate:3:mux_i|Mux2~2_combout\);

-- Location: LCCOMB_X36_Y59_N14
\mux_1|mux_1|mux_generate:3:mux_i|Mux2~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \mux_1|mux_1|mux_generate:3:mux_i|Mux2~4_combout\ = (\ADD_R1[2]~input_o\ & (((\mux_1|mux_1|mux_generate:3:mux_i|Mux2~2_combout\)))) # (!\ADD_R1[2]~input_o\ & ((\ADD_R1[1]~input_o\ & (\mux_1|mux_1|mux_generate:3:mux_i|Mux2~3_combout\)) # 
-- (!\ADD_R1[1]~input_o\ & ((\mux_1|mux_1|mux_generate:3:mux_i|Mux2~2_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ADD_R1[2]~input_o\,
	datab => \mux_1|mux_1|mux_generate:3:mux_i|Mux2~3_combout\,
	datac => \mux_1|mux_1|mux_generate:3:mux_i|Mux2~2_combout\,
	datad => \ADD_R1[1]~input_o\,
	combout => \mux_1|mux_1|mux_generate:3:mux_i|Mux2~4_combout\);

-- Location: IOIBUF_X16_Y73_N15
\DIN[14]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_DIN(14),
	o => \DIN[14]~input_o\);

-- Location: FF_X35_Y59_N17
\reg_gen:6:regs|reg_2|y[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	asdata => \DIN[14]~input_o\,
	sload => VCC,
	ena => \add_reg1_dcd|Mux3~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \reg_gen:6:regs|reg_2|y\(6));

-- Location: FF_X35_Y59_N11
\reg_gen:1:regs|reg_2|y[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	asdata => \DIN[14]~input_o\,
	sload => VCC,
	ena => \add_reg1_dcd|Mux3~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \reg_gen:1:regs|reg_2|y\(6));

-- Location: LCCOMB_X36_Y59_N4
\mux_1|mux_1|mux_generate:3:mux_i|Mux1~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \mux_1|mux_1|mux_generate:3:mux_i|Mux1~0_combout\ = (\reg_gen:1:regs|reg_2|y\(6) & \ADD_R1[0]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \reg_gen:1:regs|reg_2|y\(6),
	datad => \ADD_R1[0]~input_o\,
	combout => \mux_1|mux_1|mux_generate:3:mux_i|Mux1~0_combout\);

-- Location: LCCOMB_X36_Y59_N6
\mux_1|mux_1|mux_generate:3:mux_i|Mux1~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \mux_1|mux_1|mux_generate:3:mux_i|Mux1~1_combout\ = (\mux_1|mux_1|mux_generate:0:mux_i|Mux2~1_combout\ & ((\mux_1|mux_1|mux_generate:0:mux_i|Mux2~2_combout\ & (\reg_gen:6:regs|reg_2|y\(6))) # (!\mux_1|mux_1|mux_generate:0:mux_i|Mux2~2_combout\ & 
-- ((\mux_1|mux_1|mux_generate:3:mux_i|Mux1~0_combout\))))) # (!\mux_1|mux_1|mux_generate:0:mux_i|Mux2~1_combout\ & (((!\mux_1|mux_1|mux_generate:0:mux_i|Mux2~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100011110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \reg_gen:6:regs|reg_2|y\(6),
	datab => \mux_1|mux_1|mux_generate:0:mux_i|Mux2~1_combout\,
	datac => \mux_1|mux_1|mux_generate:3:mux_i|Mux1~0_combout\,
	datad => \mux_1|mux_1|mux_generate:0:mux_i|Mux2~2_combout\,
	combout => \mux_1|mux_1|mux_generate:3:mux_i|Mux1~1_combout\);

-- Location: FF_X36_Y59_N17
\reg_gen:5:regs|reg_2|y[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	asdata => \DIN[14]~input_o\,
	sload => VCC,
	ena => \add_reg1_dcd|Mux3~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \reg_gen:5:regs|reg_2|y\(6));

-- Location: FF_X36_Y59_N11
\reg_gen:4:regs|reg_2|y[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	asdata => \DIN[14]~input_o\,
	sload => VCC,
	ena => \add_reg1_dcd|Mux3~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \reg_gen:4:regs|reg_2|y\(6));

-- Location: LCCOMB_X36_Y59_N16
\mux_1|mux_1|mux_generate:3:mux_i|Mux1~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \mux_1|mux_1|mux_generate:3:mux_i|Mux1~2_combout\ = (\mux_1|mux_1|mux_generate:3:mux_i|Mux1~1_combout\ & ((\mux_1|mux_1|mux_generate:0:mux_i|Mux2~0_combout\) # ((\reg_gen:4:regs|reg_2|y\(6))))) # (!\mux_1|mux_1|mux_generate:3:mux_i|Mux1~1_combout\ & 
-- (!\mux_1|mux_1|mux_generate:0:mux_i|Mux2~0_combout\ & (\reg_gen:5:regs|reg_2|y\(6))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mux_1|mux_1|mux_generate:3:mux_i|Mux1~1_combout\,
	datab => \mux_1|mux_1|mux_generate:0:mux_i|Mux2~0_combout\,
	datac => \reg_gen:5:regs|reg_2|y\(6),
	datad => \reg_gen:4:regs|reg_2|y\(6),
	combout => \mux_1|mux_1|mux_generate:3:mux_i|Mux1~2_combout\);

-- Location: FF_X41_Y62_N27
\reg_gen:3:regs|reg_2|y[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	asdata => \DIN[14]~input_o\,
	sload => VCC,
	ena => \add_reg1_dcd|Mux3~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \reg_gen:3:regs|reg_2|y\(6));

-- Location: FF_X41_Y62_N29
\reg_gen:2:regs|reg_2|y[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	asdata => \DIN[14]~input_o\,
	sload => VCC,
	ena => \add_reg1_dcd|Mux3~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \reg_gen:2:regs|reg_2|y\(6));

-- Location: LCCOMB_X41_Y62_N26
\mux_1|mux_1|mux_generate:3:mux_i|Mux1~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \mux_1|mux_1|mux_generate:3:mux_i|Mux1~3_combout\ = (\ADD_R1[0]~input_o\ & (\reg_gen:3:regs|reg_2|y\(6))) # (!\ADD_R1[0]~input_o\ & ((\reg_gen:2:regs|reg_2|y\(6))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \ADD_R1[0]~input_o\,
	datac => \reg_gen:3:regs|reg_2|y\(6),
	datad => \reg_gen:2:regs|reg_2|y\(6),
	combout => \mux_1|mux_1|mux_generate:3:mux_i|Mux1~3_combout\);

-- Location: LCCOMB_X41_Y62_N14
\mux_1|mux_1|mux_generate:3:mux_i|Mux1~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \mux_1|mux_1|mux_generate:3:mux_i|Mux1~4_combout\ = (\ADD_R1[2]~input_o\ & (\mux_1|mux_1|mux_generate:3:mux_i|Mux1~2_combout\)) # (!\ADD_R1[2]~input_o\ & ((\ADD_R1[1]~input_o\ & ((\mux_1|mux_1|mux_generate:3:mux_i|Mux1~3_combout\))) # 
-- (!\ADD_R1[1]~input_o\ & (\mux_1|mux_1|mux_generate:3:mux_i|Mux1~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mux_1|mux_1|mux_generate:3:mux_i|Mux1~2_combout\,
	datab => \ADD_R1[2]~input_o\,
	datac => \mux_1|mux_1|mux_generate:3:mux_i|Mux1~3_combout\,
	datad => \ADD_R1[1]~input_o\,
	combout => \mux_1|mux_1|mux_generate:3:mux_i|Mux1~4_combout\);

-- Location: IOIBUF_X0_Y57_N15
\DIN[15]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_DIN(15),
	o => \DIN[15]~input_o\);

-- Location: FF_X39_Y58_N31
\reg_gen:2:regs|reg_2|y[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	asdata => \DIN[15]~input_o\,
	sload => VCC,
	ena => \add_reg1_dcd|Mux3~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \reg_gen:2:regs|reg_2|y\(7));

-- Location: FF_X39_Y58_N29
\reg_gen:3:regs|reg_2|y[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	asdata => \DIN[15]~input_o\,
	sload => VCC,
	ena => \add_reg1_dcd|Mux3~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \reg_gen:3:regs|reg_2|y\(7));

-- Location: LCCOMB_X39_Y58_N28
\mux_1|mux_1|mux_generate:3:mux_i|Mux0~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \mux_1|mux_1|mux_generate:3:mux_i|Mux0~3_combout\ = (\ADD_R1[0]~input_o\ & ((\reg_gen:3:regs|reg_2|y\(7)))) # (!\ADD_R1[0]~input_o\ & (\reg_gen:2:regs|reg_2|y\(7)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \reg_gen:2:regs|reg_2|y\(7),
	datac => \reg_gen:3:regs|reg_2|y\(7),
	datad => \ADD_R1[0]~input_o\,
	combout => \mux_1|mux_1|mux_generate:3:mux_i|Mux0~3_combout\);

-- Location: FF_X36_Y58_N15
\reg_gen:4:regs|reg_2|y[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	asdata => \DIN[15]~input_o\,
	sload => VCC,
	ena => \add_reg1_dcd|Mux3~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \reg_gen:4:regs|reg_2|y\(7));

-- Location: FF_X36_Y58_N13
\reg_gen:5:regs|reg_2|y[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	asdata => \DIN[15]~input_o\,
	sload => VCC,
	ena => \add_reg1_dcd|Mux3~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \reg_gen:5:regs|reg_2|y\(7));

-- Location: FF_X36_Y57_N9
\reg_gen:6:regs|reg_2|y[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	asdata => \DIN[15]~input_o\,
	sload => VCC,
	ena => \add_reg1_dcd|Mux3~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \reg_gen:6:regs|reg_2|y\(7));

-- Location: FF_X36_Y57_N19
\reg_gen:1:regs|reg_2|y[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	asdata => \DIN[15]~input_o\,
	sload => VCC,
	ena => \add_reg1_dcd|Mux3~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \reg_gen:1:regs|reg_2|y\(7));

-- Location: LCCOMB_X36_Y57_N28
\mux_1|mux_1|mux_generate:3:mux_i|Mux0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \mux_1|mux_1|mux_generate:3:mux_i|Mux0~0_combout\ = (\ADD_R1[0]~input_o\ & \reg_gen:1:regs|reg_2|y\(7))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \ADD_R1[0]~input_o\,
	datad => \reg_gen:1:regs|reg_2|y\(7),
	combout => \mux_1|mux_1|mux_generate:3:mux_i|Mux0~0_combout\);

-- Location: LCCOMB_X36_Y57_N30
\mux_1|mux_1|mux_generate:3:mux_i|Mux0~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \mux_1|mux_1|mux_generate:3:mux_i|Mux0~1_combout\ = (\mux_1|mux_1|mux_generate:0:mux_i|Mux2~1_combout\ & ((\mux_1|mux_1|mux_generate:0:mux_i|Mux2~2_combout\ & (\reg_gen:6:regs|reg_2|y\(7))) # (!\mux_1|mux_1|mux_generate:0:mux_i|Mux2~2_combout\ & 
-- ((\mux_1|mux_1|mux_generate:3:mux_i|Mux0~0_combout\))))) # (!\mux_1|mux_1|mux_generate:0:mux_i|Mux2~1_combout\ & (((!\mux_1|mux_1|mux_generate:0:mux_i|Mux2~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000011001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \reg_gen:6:regs|reg_2|y\(7),
	datab => \mux_1|mux_1|mux_generate:3:mux_i|Mux0~0_combout\,
	datac => \mux_1|mux_1|mux_generate:0:mux_i|Mux2~1_combout\,
	datad => \mux_1|mux_1|mux_generate:0:mux_i|Mux2~2_combout\,
	combout => \mux_1|mux_1|mux_generate:3:mux_i|Mux0~1_combout\);

-- Location: LCCOMB_X36_Y58_N12
\mux_1|mux_1|mux_generate:3:mux_i|Mux0~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \mux_1|mux_1|mux_generate:3:mux_i|Mux0~2_combout\ = (\mux_1|mux_1|mux_generate:0:mux_i|Mux2~0_combout\ & (((\mux_1|mux_1|mux_generate:3:mux_i|Mux0~1_combout\)))) # (!\mux_1|mux_1|mux_generate:0:mux_i|Mux2~0_combout\ & 
-- ((\mux_1|mux_1|mux_generate:3:mux_i|Mux0~1_combout\ & (\reg_gen:4:regs|reg_2|y\(7))) # (!\mux_1|mux_1|mux_generate:3:mux_i|Mux0~1_combout\ & ((\reg_gen:5:regs|reg_2|y\(7))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \reg_gen:4:regs|reg_2|y\(7),
	datab => \mux_1|mux_1|mux_generate:0:mux_i|Mux2~0_combout\,
	datac => \reg_gen:5:regs|reg_2|y\(7),
	datad => \mux_1|mux_1|mux_generate:3:mux_i|Mux0~1_combout\,
	combout => \mux_1|mux_1|mux_generate:3:mux_i|Mux0~2_combout\);

-- Location: LCCOMB_X36_Y58_N0
\mux_1|mux_1|mux_generate:3:mux_i|Mux0~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \mux_1|mux_1|mux_generate:3:mux_i|Mux0~4_combout\ = (\ADD_R1[2]~input_o\ & (((\mux_1|mux_1|mux_generate:3:mux_i|Mux0~2_combout\)))) # (!\ADD_R1[2]~input_o\ & ((\ADD_R1[1]~input_o\ & (\mux_1|mux_1|mux_generate:3:mux_i|Mux0~3_combout\)) # 
-- (!\ADD_R1[1]~input_o\ & ((\mux_1|mux_1|mux_generate:3:mux_i|Mux0~2_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110001011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mux_1|mux_1|mux_generate:3:mux_i|Mux0~3_combout\,
	datab => \ADD_R1[2]~input_o\,
	datac => \mux_1|mux_1|mux_generate:3:mux_i|Mux0~2_combout\,
	datad => \ADD_R1[1]~input_o\,
	combout => \mux_1|mux_1|mux_generate:3:mux_i|Mux0~4_combout\);

-- Location: IOIBUF_X35_Y73_N22
\ADD_R2[2]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_ADD_R2(2),
	o => \ADD_R2[2]~input_o\);

-- Location: IOIBUF_X35_Y73_N15
\ADD_R2[0]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_ADD_R2(0),
	o => \ADD_R2[0]~input_o\);

-- Location: LCCOMB_X39_Y58_N10
\mux_2|mux_1|mux_generate:0:mux_i|Mux3~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \mux_2|mux_1|mux_generate:0:mux_i|Mux3~3_combout\ = (\ADD_R2[0]~input_o\ & ((\reg_gen:3:regs|reg_1|y\(0)))) # (!\ADD_R2[0]~input_o\ & (\reg_gen:2:regs|reg_1|y\(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \ADD_R2[0]~input_o\,
	datac => \reg_gen:2:regs|reg_1|y\(0),
	datad => \reg_gen:3:regs|reg_1|y\(0),
	combout => \mux_2|mux_1|mux_generate:0:mux_i|Mux3~3_combout\);

-- Location: IOIBUF_X42_Y73_N1
\ADD_R2[1]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_ADD_R2(1),
	o => \ADD_R2[1]~input_o\);

-- Location: LCCOMB_X38_Y58_N6
\mux_2|mux_1|mux_generate:3:mux_i|Mux0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \mux_2|mux_1|mux_generate:3:mux_i|Mux0~0_combout\ = (\ADD_R2[1]~input_o\) # (!\ADD_R2[2]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \ADD_R2[2]~input_o\,
	datad => \ADD_R2[1]~input_o\,
	combout => \mux_2|mux_1|mux_generate:3:mux_i|Mux0~0_combout\);

-- Location: LCCOMB_X38_Y59_N26
\mux_2|mux_1|mux_generate:0:mux_i|Mux3~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \mux_2|mux_1|mux_generate:0:mux_i|Mux3~0_combout\ = (\ADD_R2[0]~input_o\ & \reg_gen:1:regs|reg_1|y\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \ADD_R2[0]~input_o\,
	datac => \reg_gen:1:regs|reg_1|y\(0),
	combout => \mux_2|mux_1|mux_generate:0:mux_i|Mux3~0_combout\);

-- Location: LCCOMB_X38_Y59_N14
\mux_2|mux_1|mux_generate:3:mux_i|Mux0~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \mux_2|mux_1|mux_generate:3:mux_i|Mux0~2_combout\ = (\ADD_R2[2]~input_o\ & ((\ADD_R2[1]~input_o\) # (\ADD_R2[0]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100100011001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ADD_R2[1]~input_o\,
	datab => \ADD_R2[2]~input_o\,
	datac => \ADD_R2[0]~input_o\,
	combout => \mux_2|mux_1|mux_generate:3:mux_i|Mux0~2_combout\);

-- Location: LCCOMB_X38_Y59_N4
\mux_2|mux_1|mux_generate:3:mux_i|Mux0~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \mux_2|mux_1|mux_generate:3:mux_i|Mux0~1_combout\ = ((\ADD_R2[1]~input_o\ & !\ADD_R2[0]~input_o\)) # (!\ADD_R2[2]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011101100111011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ADD_R2[1]~input_o\,
	datab => \ADD_R2[2]~input_o\,
	datac => \ADD_R2[0]~input_o\,
	combout => \mux_2|mux_1|mux_generate:3:mux_i|Mux0~1_combout\);

-- Location: LCCOMB_X38_Y59_N0
\mux_2|mux_1|mux_generate:0:mux_i|Mux3~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \mux_2|mux_1|mux_generate:0:mux_i|Mux3~1_combout\ = (\mux_2|mux_1|mux_generate:3:mux_i|Mux0~2_combout\ & (((\reg_gen:6:regs|reg_1|y\(0) & \mux_2|mux_1|mux_generate:3:mux_i|Mux0~1_combout\)))) # (!\mux_2|mux_1|mux_generate:3:mux_i|Mux0~2_combout\ & 
-- ((\mux_2|mux_1|mux_generate:0:mux_i|Mux3~0_combout\) # ((!\mux_2|mux_1|mux_generate:3:mux_i|Mux0~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110001000110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mux_2|mux_1|mux_generate:0:mux_i|Mux3~0_combout\,
	datab => \mux_2|mux_1|mux_generate:3:mux_i|Mux0~2_combout\,
	datac => \reg_gen:6:regs|reg_1|y\(0),
	datad => \mux_2|mux_1|mux_generate:3:mux_i|Mux0~1_combout\,
	combout => \mux_2|mux_1|mux_generate:0:mux_i|Mux3~1_combout\);

-- Location: LCCOMB_X38_Y58_N2
\mux_2|mux_1|mux_generate:0:mux_i|Mux3~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \mux_2|mux_1|mux_generate:0:mux_i|Mux3~2_combout\ = (\mux_2|mux_1|mux_generate:3:mux_i|Mux0~0_combout\ & (((\mux_2|mux_1|mux_generate:0:mux_i|Mux3~1_combout\)))) # (!\mux_2|mux_1|mux_generate:3:mux_i|Mux0~0_combout\ & 
-- ((\mux_2|mux_1|mux_generate:0:mux_i|Mux3~1_combout\ & ((\reg_gen:4:regs|reg_1|y\(0)))) # (!\mux_2|mux_1|mux_generate:0:mux_i|Mux3~1_combout\ & (\reg_gen:5:regs|reg_1|y\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mux_2|mux_1|mux_generate:3:mux_i|Mux0~0_combout\,
	datab => \reg_gen:5:regs|reg_1|y\(0),
	datac => \reg_gen:4:regs|reg_1|y\(0),
	datad => \mux_2|mux_1|mux_generate:0:mux_i|Mux3~1_combout\,
	combout => \mux_2|mux_1|mux_generate:0:mux_i|Mux3~2_combout\);

-- Location: LCCOMB_X38_Y58_N16
\mux_2|mux_1|mux_generate:0:mux_i|Mux3~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \mux_2|mux_1|mux_generate:0:mux_i|Mux3~4_combout\ = (\ADD_R2[2]~input_o\ & (((\mux_2|mux_1|mux_generate:0:mux_i|Mux3~2_combout\)))) # (!\ADD_R2[2]~input_o\ & ((\ADD_R2[1]~input_o\ & (\mux_2|mux_1|mux_generate:0:mux_i|Mux3~3_combout\)) # 
-- (!\ADD_R2[1]~input_o\ & ((\mux_2|mux_1|mux_generate:0:mux_i|Mux3~2_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ADD_R2[2]~input_o\,
	datab => \mux_2|mux_1|mux_generate:0:mux_i|Mux3~3_combout\,
	datac => \mux_2|mux_1|mux_generate:0:mux_i|Mux3~2_combout\,
	datad => \ADD_R2[1]~input_o\,
	combout => \mux_2|mux_1|mux_generate:0:mux_i|Mux3~4_combout\);

-- Location: LCCOMB_X39_Y58_N6
\mux_2|mux_1|mux_generate:0:mux_i|Mux2~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \mux_2|mux_1|mux_generate:0:mux_i|Mux2~3_combout\ = (\ADD_R2[0]~input_o\ & ((\reg_gen:3:regs|reg_1|y\(1)))) # (!\ADD_R2[0]~input_o\ & (\reg_gen:2:regs|reg_1|y\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \ADD_R2[0]~input_o\,
	datac => \reg_gen:2:regs|reg_1|y\(1),
	datad => \reg_gen:3:regs|reg_1|y\(1),
	combout => \mux_2|mux_1|mux_generate:0:mux_i|Mux2~3_combout\);

-- Location: LCCOMB_X41_Y59_N10
\mux_2|mux_1|mux_generate:0:mux_i|Mux2~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \mux_2|mux_1|mux_generate:0:mux_i|Mux2~0_combout\ = (\reg_gen:1:regs|reg_1|y\(1) & \ADD_R2[0]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \reg_gen:1:regs|reg_1|y\(1),
	datad => \ADD_R2[0]~input_o\,
	combout => \mux_2|mux_1|mux_generate:0:mux_i|Mux2~0_combout\);

-- Location: LCCOMB_X41_Y59_N8
\mux_2|mux_1|mux_generate:0:mux_i|Mux2~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \mux_2|mux_1|mux_generate:0:mux_i|Mux2~1_combout\ = (\mux_2|mux_1|mux_generate:3:mux_i|Mux0~1_combout\ & ((\mux_2|mux_1|mux_generate:3:mux_i|Mux0~2_combout\ & (\reg_gen:6:regs|reg_1|y\(1))) # (!\mux_2|mux_1|mux_generate:3:mux_i|Mux0~2_combout\ & 
-- ((\mux_2|mux_1|mux_generate:0:mux_i|Mux2~0_combout\))))) # (!\mux_2|mux_1|mux_generate:3:mux_i|Mux0~1_combout\ & (!\mux_2|mux_1|mux_generate:3:mux_i|Mux0~2_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011001110010001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mux_2|mux_1|mux_generate:3:mux_i|Mux0~1_combout\,
	datab => \mux_2|mux_1|mux_generate:3:mux_i|Mux0~2_combout\,
	datac => \reg_gen:6:regs|reg_1|y\(1),
	datad => \mux_2|mux_1|mux_generate:0:mux_i|Mux2~0_combout\,
	combout => \mux_2|mux_1|mux_generate:0:mux_i|Mux2~1_combout\);

-- Location: LCCOMB_X38_Y58_N26
\mux_2|mux_1|mux_generate:0:mux_i|Mux2~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \mux_2|mux_1|mux_generate:0:mux_i|Mux2~2_combout\ = (\mux_2|mux_1|mux_generate:3:mux_i|Mux0~0_combout\ & (((\mux_2|mux_1|mux_generate:0:mux_i|Mux2~1_combout\)))) # (!\mux_2|mux_1|mux_generate:3:mux_i|Mux0~0_combout\ & 
-- ((\mux_2|mux_1|mux_generate:0:mux_i|Mux2~1_combout\ & ((\reg_gen:4:regs|reg_1|y\(1)))) # (!\mux_2|mux_1|mux_generate:0:mux_i|Mux2~1_combout\ & (\reg_gen:5:regs|reg_1|y\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mux_2|mux_1|mux_generate:3:mux_i|Mux0~0_combout\,
	datab => \reg_gen:5:regs|reg_1|y\(1),
	datac => \reg_gen:4:regs|reg_1|y\(1),
	datad => \mux_2|mux_1|mux_generate:0:mux_i|Mux2~1_combout\,
	combout => \mux_2|mux_1|mux_generate:0:mux_i|Mux2~2_combout\);

-- Location: LCCOMB_X38_Y58_N10
\mux_2|mux_1|mux_generate:0:mux_i|Mux2~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \mux_2|mux_1|mux_generate:0:mux_i|Mux2~4_combout\ = (\ADD_R2[2]~input_o\ & (((\mux_2|mux_1|mux_generate:0:mux_i|Mux2~2_combout\)))) # (!\ADD_R2[2]~input_o\ & ((\ADD_R2[1]~input_o\ & (\mux_2|mux_1|mux_generate:0:mux_i|Mux2~3_combout\)) # 
-- (!\ADD_R2[1]~input_o\ & ((\mux_2|mux_1|mux_generate:0:mux_i|Mux2~2_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110001011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mux_2|mux_1|mux_generate:0:mux_i|Mux2~3_combout\,
	datab => \ADD_R2[2]~input_o\,
	datac => \mux_2|mux_1|mux_generate:0:mux_i|Mux2~2_combout\,
	datad => \ADD_R2[1]~input_o\,
	combout => \mux_2|mux_1|mux_generate:0:mux_i|Mux2~4_combout\);

-- Location: LCCOMB_X39_Y58_N18
\mux_2|mux_1|mux_generate:0:mux_i|Mux1~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \mux_2|mux_1|mux_generate:0:mux_i|Mux1~3_combout\ = (\ADD_R2[0]~input_o\ & (\reg_gen:3:regs|reg_1|y\(2))) # (!\ADD_R2[0]~input_o\ & ((\reg_gen:2:regs|reg_1|y\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \reg_gen:3:regs|reg_1|y\(2),
	datac => \reg_gen:2:regs|reg_1|y\(2),
	datad => \ADD_R2[0]~input_o\,
	combout => \mux_2|mux_1|mux_generate:0:mux_i|Mux1~3_combout\);

-- Location: LCCOMB_X38_Y59_N22
\mux_2|mux_1|mux_generate:0:mux_i|Mux1~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \mux_2|mux_1|mux_generate:0:mux_i|Mux1~0_combout\ = (\ADD_R2[0]~input_o\ & \reg_gen:1:regs|reg_1|y\(2))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \ADD_R2[0]~input_o\,
	datac => \reg_gen:1:regs|reg_1|y\(2),
	combout => \mux_2|mux_1|mux_generate:0:mux_i|Mux1~0_combout\);

-- Location: LCCOMB_X38_Y59_N28
\mux_2|mux_1|mux_generate:0:mux_i|Mux1~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \mux_2|mux_1|mux_generate:0:mux_i|Mux1~1_combout\ = (\mux_2|mux_1|mux_generate:3:mux_i|Mux0~2_combout\ & (((\reg_gen:6:regs|reg_1|y\(2) & \mux_2|mux_1|mux_generate:3:mux_i|Mux0~1_combout\)))) # (!\mux_2|mux_1|mux_generate:3:mux_i|Mux0~2_combout\ & 
-- ((\mux_2|mux_1|mux_generate:0:mux_i|Mux1~0_combout\) # ((!\mux_2|mux_1|mux_generate:3:mux_i|Mux0~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110001000110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mux_2|mux_1|mux_generate:0:mux_i|Mux1~0_combout\,
	datab => \mux_2|mux_1|mux_generate:3:mux_i|Mux0~2_combout\,
	datac => \reg_gen:6:regs|reg_1|y\(2),
	datad => \mux_2|mux_1|mux_generate:3:mux_i|Mux0~1_combout\,
	combout => \mux_2|mux_1|mux_generate:0:mux_i|Mux1~1_combout\);

-- Location: LCCOMB_X38_Y58_N18
\mux_2|mux_1|mux_generate:0:mux_i|Mux1~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \mux_2|mux_1|mux_generate:0:mux_i|Mux1~2_combout\ = (\mux_2|mux_1|mux_generate:3:mux_i|Mux0~0_combout\ & (((\mux_2|mux_1|mux_generate:0:mux_i|Mux1~1_combout\)))) # (!\mux_2|mux_1|mux_generate:3:mux_i|Mux0~0_combout\ & 
-- ((\mux_2|mux_1|mux_generate:0:mux_i|Mux1~1_combout\ & ((\reg_gen:4:regs|reg_1|y\(2)))) # (!\mux_2|mux_1|mux_generate:0:mux_i|Mux1~1_combout\ & (\reg_gen:5:regs|reg_1|y\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mux_2|mux_1|mux_generate:3:mux_i|Mux0~0_combout\,
	datab => \reg_gen:5:regs|reg_1|y\(2),
	datac => \reg_gen:4:regs|reg_1|y\(2),
	datad => \mux_2|mux_1|mux_generate:0:mux_i|Mux1~1_combout\,
	combout => \mux_2|mux_1|mux_generate:0:mux_i|Mux1~2_combout\);

-- Location: LCCOMB_X38_Y58_N12
\mux_2|mux_1|mux_generate:0:mux_i|Mux1~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \mux_2|mux_1|mux_generate:0:mux_i|Mux1~4_combout\ = (\ADD_R2[1]~input_o\ & ((\ADD_R2[2]~input_o\ & ((\mux_2|mux_1|mux_generate:0:mux_i|Mux1~2_combout\))) # (!\ADD_R2[2]~input_o\ & (\mux_2|mux_1|mux_generate:0:mux_i|Mux1~3_combout\)))) # 
-- (!\ADD_R2[1]~input_o\ & (((\mux_2|mux_1|mux_generate:0:mux_i|Mux1~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mux_2|mux_1|mux_generate:0:mux_i|Mux1~3_combout\,
	datab => \ADD_R2[1]~input_o\,
	datac => \mux_2|mux_1|mux_generate:0:mux_i|Mux1~2_combout\,
	datad => \ADD_R2[2]~input_o\,
	combout => \mux_2|mux_1|mux_generate:0:mux_i|Mux1~4_combout\);

-- Location: LCCOMB_X41_Y59_N6
\mux_2|mux_1|mux_generate:0:mux_i|Mux0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \mux_2|mux_1|mux_generate:0:mux_i|Mux0~0_combout\ = (\reg_gen:1:regs|reg_1|y\(3) & \ADD_R2[0]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \reg_gen:1:regs|reg_1|y\(3),
	datad => \ADD_R2[0]~input_o\,
	combout => \mux_2|mux_1|mux_generate:0:mux_i|Mux0~0_combout\);

-- Location: LCCOMB_X41_Y59_N4
\mux_2|mux_1|mux_generate:0:mux_i|Mux0~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \mux_2|mux_1|mux_generate:0:mux_i|Mux0~1_combout\ = (\mux_2|mux_1|mux_generate:3:mux_i|Mux0~1_combout\ & ((\mux_2|mux_1|mux_generate:3:mux_i|Mux0~2_combout\ & (\reg_gen:6:regs|reg_1|y\(3))) # (!\mux_2|mux_1|mux_generate:3:mux_i|Mux0~2_combout\ & 
-- ((\mux_2|mux_1|mux_generate:0:mux_i|Mux0~0_combout\))))) # (!\mux_2|mux_1|mux_generate:3:mux_i|Mux0~1_combout\ & (!\mux_2|mux_1|mux_generate:3:mux_i|Mux0~2_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011001110010001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mux_2|mux_1|mux_generate:3:mux_i|Mux0~1_combout\,
	datab => \mux_2|mux_1|mux_generate:3:mux_i|Mux0~2_combout\,
	datac => \reg_gen:6:regs|reg_1|y\(3),
	datad => \mux_2|mux_1|mux_generate:0:mux_i|Mux0~0_combout\,
	combout => \mux_2|mux_1|mux_generate:0:mux_i|Mux0~1_combout\);

-- Location: LCCOMB_X40_Y59_N18
\mux_2|mux_1|mux_generate:0:mux_i|Mux0~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \mux_2|mux_1|mux_generate:0:mux_i|Mux0~2_combout\ = (\mux_2|mux_1|mux_generate:0:mux_i|Mux0~1_combout\ & ((\mux_2|mux_1|mux_generate:3:mux_i|Mux0~0_combout\) # ((\reg_gen:4:regs|reg_1|y\(3))))) # (!\mux_2|mux_1|mux_generate:0:mux_i|Mux0~1_combout\ & 
-- (!\mux_2|mux_1|mux_generate:3:mux_i|Mux0~0_combout\ & ((\reg_gen:5:regs|reg_1|y\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100110101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mux_2|mux_1|mux_generate:0:mux_i|Mux0~1_combout\,
	datab => \mux_2|mux_1|mux_generate:3:mux_i|Mux0~0_combout\,
	datac => \reg_gen:4:regs|reg_1|y\(3),
	datad => \reg_gen:5:regs|reg_1|y\(3),
	combout => \mux_2|mux_1|mux_generate:0:mux_i|Mux0~2_combout\);

-- Location: LCCOMB_X39_Y59_N4
\mux_2|mux_1|mux_generate:0:mux_i|Mux0~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \mux_2|mux_1|mux_generate:0:mux_i|Mux0~3_combout\ = (\ADD_R2[0]~input_o\ & ((\reg_gen:3:regs|reg_1|y\(3)))) # (!\ADD_R2[0]~input_o\ & (\reg_gen:2:regs|reg_1|y\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ADD_R2[0]~input_o\,
	datac => \reg_gen:2:regs|reg_1|y\(3),
	datad => \reg_gen:3:regs|reg_1|y\(3),
	combout => \mux_2|mux_1|mux_generate:0:mux_i|Mux0~3_combout\);

-- Location: LCCOMB_X39_Y59_N0
\mux_2|mux_1|mux_generate:0:mux_i|Mux0~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \mux_2|mux_1|mux_generate:0:mux_i|Mux0~4_combout\ = (\ADD_R2[2]~input_o\ & (\mux_2|mux_1|mux_generate:0:mux_i|Mux0~2_combout\)) # (!\ADD_R2[2]~input_o\ & ((\ADD_R2[1]~input_o\ & ((\mux_2|mux_1|mux_generate:0:mux_i|Mux0~3_combout\))) # 
-- (!\ADD_R2[1]~input_o\ & (\mux_2|mux_1|mux_generate:0:mux_i|Mux0~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ADD_R2[2]~input_o\,
	datab => \mux_2|mux_1|mux_generate:0:mux_i|Mux0~2_combout\,
	datac => \mux_2|mux_1|mux_generate:0:mux_i|Mux0~3_combout\,
	datad => \ADD_R2[1]~input_o\,
	combout => \mux_2|mux_1|mux_generate:0:mux_i|Mux0~4_combout\);

-- Location: LCCOMB_X41_Y59_N14
\mux_2|mux_1|mux_generate:1:mux_i|Mux3~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \mux_2|mux_1|mux_generate:1:mux_i|Mux3~0_combout\ = (\reg_gen:1:regs|reg_1|y\(4) & \ADD_R2[0]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \reg_gen:1:regs|reg_1|y\(4),
	datad => \ADD_R2[0]~input_o\,
	combout => \mux_2|mux_1|mux_generate:1:mux_i|Mux3~0_combout\);

-- Location: LCCOMB_X41_Y59_N12
\mux_2|mux_1|mux_generate:1:mux_i|Mux3~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \mux_2|mux_1|mux_generate:1:mux_i|Mux3~1_combout\ = (\mux_2|mux_1|mux_generate:3:mux_i|Mux0~1_combout\ & ((\mux_2|mux_1|mux_generate:3:mux_i|Mux0~2_combout\ & ((\reg_gen:6:regs|reg_1|y\(4)))) # (!\mux_2|mux_1|mux_generate:3:mux_i|Mux0~2_combout\ & 
-- (\mux_2|mux_1|mux_generate:1:mux_i|Mux3~0_combout\)))) # (!\mux_2|mux_1|mux_generate:3:mux_i|Mux0~1_combout\ & (((!\mux_2|mux_1|mux_generate:3:mux_i|Mux0~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000011011101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mux_2|mux_1|mux_generate:3:mux_i|Mux0~1_combout\,
	datab => \mux_2|mux_1|mux_generate:1:mux_i|Mux3~0_combout\,
	datac => \reg_gen:6:regs|reg_1|y\(4),
	datad => \mux_2|mux_1|mux_generate:3:mux_i|Mux0~2_combout\,
	combout => \mux_2|mux_1|mux_generate:1:mux_i|Mux3~1_combout\);

-- Location: LCCOMB_X40_Y59_N22
\mux_2|mux_1|mux_generate:1:mux_i|Mux3~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \mux_2|mux_1|mux_generate:1:mux_i|Mux3~2_combout\ = (\mux_2|mux_1|mux_generate:3:mux_i|Mux0~0_combout\ & (((\mux_2|mux_1|mux_generate:1:mux_i|Mux3~1_combout\)))) # (!\mux_2|mux_1|mux_generate:3:mux_i|Mux0~0_combout\ & 
-- ((\mux_2|mux_1|mux_generate:1:mux_i|Mux3~1_combout\ & ((\reg_gen:4:regs|reg_1|y\(4)))) # (!\mux_2|mux_1|mux_generate:1:mux_i|Mux3~1_combout\ & (\reg_gen:5:regs|reg_1|y\(4)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mux_2|mux_1|mux_generate:3:mux_i|Mux0~0_combout\,
	datab => \reg_gen:5:regs|reg_1|y\(4),
	datac => \reg_gen:4:regs|reg_1|y\(4),
	datad => \mux_2|mux_1|mux_generate:1:mux_i|Mux3~1_combout\,
	combout => \mux_2|mux_1|mux_generate:1:mux_i|Mux3~2_combout\);

-- Location: LCCOMB_X41_Y62_N18
\mux_2|mux_1|mux_generate:1:mux_i|Mux3~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \mux_2|mux_1|mux_generate:1:mux_i|Mux3~3_combout\ = (\ADD_R2[0]~input_o\ & ((\reg_gen:3:regs|reg_1|y\(4)))) # (!\ADD_R2[0]~input_o\ & (\reg_gen:2:regs|reg_1|y\(4)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \ADD_R2[0]~input_o\,
	datac => \reg_gen:2:regs|reg_1|y\(4),
	datad => \reg_gen:3:regs|reg_1|y\(4),
	combout => \mux_2|mux_1|mux_generate:1:mux_i|Mux3~3_combout\);

-- Location: LCCOMB_X41_Y62_N0
\mux_2|mux_1|mux_generate:1:mux_i|Mux3~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \mux_2|mux_1|mux_generate:1:mux_i|Mux3~4_combout\ = (\ADD_R2[2]~input_o\ & (\mux_2|mux_1|mux_generate:1:mux_i|Mux3~2_combout\)) # (!\ADD_R2[2]~input_o\ & ((\ADD_R2[1]~input_o\ & ((\mux_2|mux_1|mux_generate:1:mux_i|Mux3~3_combout\))) # 
-- (!\ADD_R2[1]~input_o\ & (\mux_2|mux_1|mux_generate:1:mux_i|Mux3~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010110010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mux_2|mux_1|mux_generate:1:mux_i|Mux3~2_combout\,
	datab => \mux_2|mux_1|mux_generate:1:mux_i|Mux3~3_combout\,
	datac => \ADD_R2[2]~input_o\,
	datad => \ADD_R2[1]~input_o\,
	combout => \mux_2|mux_1|mux_generate:1:mux_i|Mux3~4_combout\);

-- Location: LCCOMB_X41_Y59_N30
\mux_2|mux_1|mux_generate:1:mux_i|Mux2~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \mux_2|mux_1|mux_generate:1:mux_i|Mux2~0_combout\ = (\reg_gen:1:regs|reg_1|y\(5) & \ADD_R2[0]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \reg_gen:1:regs|reg_1|y\(5),
	datad => \ADD_R2[0]~input_o\,
	combout => \mux_2|mux_1|mux_generate:1:mux_i|Mux2~0_combout\);

-- Location: LCCOMB_X41_Y59_N20
\mux_2|mux_1|mux_generate:1:mux_i|Mux2~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \mux_2|mux_1|mux_generate:1:mux_i|Mux2~1_combout\ = (\mux_2|mux_1|mux_generate:3:mux_i|Mux0~1_combout\ & ((\mux_2|mux_1|mux_generate:3:mux_i|Mux0~2_combout\ & (\reg_gen:6:regs|reg_1|y\(5))) # (!\mux_2|mux_1|mux_generate:3:mux_i|Mux0~2_combout\ & 
-- ((\mux_2|mux_1|mux_generate:1:mux_i|Mux2~0_combout\))))) # (!\mux_2|mux_1|mux_generate:3:mux_i|Mux0~1_combout\ & (!\mux_2|mux_1|mux_generate:3:mux_i|Mux0~2_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011001110010001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mux_2|mux_1|mux_generate:3:mux_i|Mux0~1_combout\,
	datab => \mux_2|mux_1|mux_generate:3:mux_i|Mux0~2_combout\,
	datac => \reg_gen:6:regs|reg_1|y\(5),
	datad => \mux_2|mux_1|mux_generate:1:mux_i|Mux2~0_combout\,
	combout => \mux_2|mux_1|mux_generate:1:mux_i|Mux2~1_combout\);

-- Location: LCCOMB_X40_Y59_N2
\mux_2|mux_1|mux_generate:1:mux_i|Mux2~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \mux_2|mux_1|mux_generate:1:mux_i|Mux2~2_combout\ = (\mux_2|mux_1|mux_generate:1:mux_i|Mux2~1_combout\ & ((\mux_2|mux_1|mux_generate:3:mux_i|Mux0~0_combout\) # ((\reg_gen:4:regs|reg_1|y\(5))))) # (!\mux_2|mux_1|mux_generate:1:mux_i|Mux2~1_combout\ & 
-- (!\mux_2|mux_1|mux_generate:3:mux_i|Mux0~0_combout\ & ((\reg_gen:5:regs|reg_1|y\(5)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100110101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mux_2|mux_1|mux_generate:1:mux_i|Mux2~1_combout\,
	datab => \mux_2|mux_1|mux_generate:3:mux_i|Mux0~0_combout\,
	datac => \reg_gen:4:regs|reg_1|y\(5),
	datad => \reg_gen:5:regs|reg_1|y\(5),
	combout => \mux_2|mux_1|mux_generate:1:mux_i|Mux2~2_combout\);

-- Location: LCCOMB_X41_Y62_N16
\mux_2|mux_1|mux_generate:1:mux_i|Mux2~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \mux_2|mux_1|mux_generate:1:mux_i|Mux2~3_combout\ = (\ADD_R2[0]~input_o\ & ((\reg_gen:3:regs|reg_1|y\(5)))) # (!\ADD_R2[0]~input_o\ & (\reg_gen:2:regs|reg_1|y\(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \ADD_R2[0]~input_o\,
	datac => \reg_gen:2:regs|reg_1|y\(5),
	datad => \reg_gen:3:regs|reg_1|y\(5),
	combout => \mux_2|mux_1|mux_generate:1:mux_i|Mux2~3_combout\);

-- Location: LCCOMB_X41_Y62_N10
\mux_2|mux_1|mux_generate:1:mux_i|Mux2~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \mux_2|mux_1|mux_generate:1:mux_i|Mux2~4_combout\ = (\ADD_R2[2]~input_o\ & (\mux_2|mux_1|mux_generate:1:mux_i|Mux2~2_combout\)) # (!\ADD_R2[2]~input_o\ & ((\ADD_R2[1]~input_o\ & ((\mux_2|mux_1|mux_generate:1:mux_i|Mux2~3_combout\))) # 
-- (!\ADD_R2[1]~input_o\ & (\mux_2|mux_1|mux_generate:1:mux_i|Mux2~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mux_2|mux_1|mux_generate:1:mux_i|Mux2~2_combout\,
	datab => \ADD_R2[2]~input_o\,
	datac => \mux_2|mux_1|mux_generate:1:mux_i|Mux2~3_combout\,
	datad => \ADD_R2[1]~input_o\,
	combout => \mux_2|mux_1|mux_generate:1:mux_i|Mux2~4_combout\);

-- Location: LCCOMB_X38_Y59_N12
\mux_2|mux_1|mux_generate:1:mux_i|Mux1~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \mux_2|mux_1|mux_generate:1:mux_i|Mux1~0_combout\ = (\ADD_R2[0]~input_o\ & \reg_gen:1:regs|reg_1|y\(6))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \ADD_R2[0]~input_o\,
	datac => \reg_gen:1:regs|reg_1|y\(6),
	combout => \mux_2|mux_1|mux_generate:1:mux_i|Mux1~0_combout\);

-- Location: LCCOMB_X38_Y59_N18
\mux_2|mux_1|mux_generate:1:mux_i|Mux1~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \mux_2|mux_1|mux_generate:1:mux_i|Mux1~1_combout\ = (\mux_2|mux_1|mux_generate:3:mux_i|Mux0~2_combout\ & (\mux_2|mux_1|mux_generate:3:mux_i|Mux0~1_combout\ & (\reg_gen:6:regs|reg_1|y\(6)))) # (!\mux_2|mux_1|mux_generate:3:mux_i|Mux0~2_combout\ & 
-- (((\mux_2|mux_1|mux_generate:1:mux_i|Mux1~0_combout\)) # (!\mux_2|mux_1|mux_generate:3:mux_i|Mux0~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101010110010001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mux_2|mux_1|mux_generate:3:mux_i|Mux0~2_combout\,
	datab => \mux_2|mux_1|mux_generate:3:mux_i|Mux0~1_combout\,
	datac => \reg_gen:6:regs|reg_1|y\(6),
	datad => \mux_2|mux_1|mux_generate:1:mux_i|Mux1~0_combout\,
	combout => \mux_2|mux_1|mux_generate:1:mux_i|Mux1~1_combout\);

-- Location: LCCOMB_X40_Y59_N30
\mux_2|mux_1|mux_generate:1:mux_i|Mux1~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \mux_2|mux_1|mux_generate:1:mux_i|Mux1~2_combout\ = (\mux_2|mux_1|mux_generate:1:mux_i|Mux1~1_combout\ & ((\mux_2|mux_1|mux_generate:3:mux_i|Mux0~0_combout\) # ((\reg_gen:4:regs|reg_1|y\(6))))) # (!\mux_2|mux_1|mux_generate:1:mux_i|Mux1~1_combout\ & 
-- (!\mux_2|mux_1|mux_generate:3:mux_i|Mux0~0_combout\ & ((\reg_gen:5:regs|reg_1|y\(6)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100110101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mux_2|mux_1|mux_generate:1:mux_i|Mux1~1_combout\,
	datab => \mux_2|mux_1|mux_generate:3:mux_i|Mux0~0_combout\,
	datac => \reg_gen:4:regs|reg_1|y\(6),
	datad => \reg_gen:5:regs|reg_1|y\(6),
	combout => \mux_2|mux_1|mux_generate:1:mux_i|Mux1~2_combout\);

-- Location: LCCOMB_X41_Y62_N22
\mux_2|mux_1|mux_generate:1:mux_i|Mux1~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \mux_2|mux_1|mux_generate:1:mux_i|Mux1~3_combout\ = (\ADD_R2[0]~input_o\ & ((\reg_gen:3:regs|reg_1|y\(6)))) # (!\ADD_R2[0]~input_o\ & (\reg_gen:2:regs|reg_1|y\(6)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \ADD_R2[0]~input_o\,
	datac => \reg_gen:2:regs|reg_1|y\(6),
	datad => \reg_gen:3:regs|reg_1|y\(6),
	combout => \mux_2|mux_1|mux_generate:1:mux_i|Mux1~3_combout\);

-- Location: LCCOMB_X41_Y62_N4
\mux_2|mux_1|mux_generate:1:mux_i|Mux1~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \mux_2|mux_1|mux_generate:1:mux_i|Mux1~4_combout\ = (\ADD_R2[2]~input_o\ & (\mux_2|mux_1|mux_generate:1:mux_i|Mux1~2_combout\)) # (!\ADD_R2[2]~input_o\ & ((\ADD_R2[1]~input_o\ & ((\mux_2|mux_1|mux_generate:1:mux_i|Mux1~3_combout\))) # 
-- (!\ADD_R2[1]~input_o\ & (\mux_2|mux_1|mux_generate:1:mux_i|Mux1~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mux_2|mux_1|mux_generate:1:mux_i|Mux1~2_combout\,
	datab => \ADD_R2[2]~input_o\,
	datac => \mux_2|mux_1|mux_generate:1:mux_i|Mux1~3_combout\,
	datad => \ADD_R2[1]~input_o\,
	combout => \mux_2|mux_1|mux_generate:1:mux_i|Mux1~4_combout\);

-- Location: LCCOMB_X39_Y58_N14
\mux_2|mux_1|mux_generate:1:mux_i|Mux0~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \mux_2|mux_1|mux_generate:1:mux_i|Mux0~3_combout\ = (\ADD_R2[0]~input_o\ & (\reg_gen:3:regs|reg_1|y\(7))) # (!\ADD_R2[0]~input_o\ & ((\reg_gen:2:regs|reg_1|y\(7))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \reg_gen:3:regs|reg_1|y\(7),
	datac => \reg_gen:2:regs|reg_1|y\(7),
	datad => \ADD_R2[0]~input_o\,
	combout => \mux_2|mux_1|mux_generate:1:mux_i|Mux0~3_combout\);

-- Location: LCCOMB_X38_Y59_N16
\mux_2|mux_1|mux_generate:1:mux_i|Mux0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \mux_2|mux_1|mux_generate:1:mux_i|Mux0~0_combout\ = (\ADD_R2[0]~input_o\ & \reg_gen:1:regs|reg_1|y\(7))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \ADD_R2[0]~input_o\,
	datac => \reg_gen:1:regs|reg_1|y\(7),
	combout => \mux_2|mux_1|mux_generate:1:mux_i|Mux0~0_combout\);

-- Location: LCCOMB_X38_Y59_N6
\mux_2|mux_1|mux_generate:1:mux_i|Mux0~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \mux_2|mux_1|mux_generate:1:mux_i|Mux0~1_combout\ = (\mux_2|mux_1|mux_generate:3:mux_i|Mux0~2_combout\ & (((\reg_gen:6:regs|reg_1|y\(7) & \mux_2|mux_1|mux_generate:3:mux_i|Mux0~1_combout\)))) # (!\mux_2|mux_1|mux_generate:3:mux_i|Mux0~2_combout\ & 
-- ((\mux_2|mux_1|mux_generate:1:mux_i|Mux0~0_combout\) # ((!\mux_2|mux_1|mux_generate:3:mux_i|Mux0~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010001010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mux_2|mux_1|mux_generate:3:mux_i|Mux0~2_combout\,
	datab => \mux_2|mux_1|mux_generate:1:mux_i|Mux0~0_combout\,
	datac => \reg_gen:6:regs|reg_1|y\(7),
	datad => \mux_2|mux_1|mux_generate:3:mux_i|Mux0~1_combout\,
	combout => \mux_2|mux_1|mux_generate:1:mux_i|Mux0~1_combout\);

-- Location: LCCOMB_X40_Y59_N26
\mux_2|mux_1|mux_generate:1:mux_i|Mux0~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \mux_2|mux_1|mux_generate:1:mux_i|Mux0~2_combout\ = (\mux_2|mux_1|mux_generate:1:mux_i|Mux0~1_combout\ & ((\mux_2|mux_1|mux_generate:3:mux_i|Mux0~0_combout\) # ((\reg_gen:4:regs|reg_1|y\(7))))) # (!\mux_2|mux_1|mux_generate:1:mux_i|Mux0~1_combout\ & 
-- (!\mux_2|mux_1|mux_generate:3:mux_i|Mux0~0_combout\ & ((\reg_gen:5:regs|reg_1|y\(7)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100110101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mux_2|mux_1|mux_generate:1:mux_i|Mux0~1_combout\,
	datab => \mux_2|mux_1|mux_generate:3:mux_i|Mux0~0_combout\,
	datac => \reg_gen:4:regs|reg_1|y\(7),
	datad => \reg_gen:5:regs|reg_1|y\(7),
	combout => \mux_2|mux_1|mux_generate:1:mux_i|Mux0~2_combout\);

-- Location: LCCOMB_X39_Y59_N26
\mux_2|mux_1|mux_generate:1:mux_i|Mux0~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \mux_2|mux_1|mux_generate:1:mux_i|Mux0~4_combout\ = (\ADD_R2[2]~input_o\ & (((\mux_2|mux_1|mux_generate:1:mux_i|Mux0~2_combout\)))) # (!\ADD_R2[2]~input_o\ & ((\ADD_R2[1]~input_o\ & (\mux_2|mux_1|mux_generate:1:mux_i|Mux0~3_combout\)) # 
-- (!\ADD_R2[1]~input_o\ & ((\mux_2|mux_1|mux_generate:1:mux_i|Mux0~2_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100101011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mux_2|mux_1|mux_generate:1:mux_i|Mux0~3_combout\,
	datab => \mux_2|mux_1|mux_generate:1:mux_i|Mux0~2_combout\,
	datac => \ADD_R2[2]~input_o\,
	datad => \ADD_R2[1]~input_o\,
	combout => \mux_2|mux_1|mux_generate:1:mux_i|Mux0~4_combout\);

-- Location: LCCOMB_X38_Y59_N30
\mux_2|mux_1|mux_generate:2:mux_i|Mux3~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \mux_2|mux_1|mux_generate:2:mux_i|Mux3~0_combout\ = (\ADD_R2[0]~input_o\ & \reg_gen:1:regs|reg_2|y\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \ADD_R2[0]~input_o\,
	datac => \reg_gen:1:regs|reg_2|y\(0),
	combout => \mux_2|mux_1|mux_generate:2:mux_i|Mux3~0_combout\);

-- Location: LCCOMB_X38_Y59_N20
\mux_2|mux_1|mux_generate:2:mux_i|Mux3~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \mux_2|mux_1|mux_generate:2:mux_i|Mux3~1_combout\ = (\mux_2|mux_1|mux_generate:3:mux_i|Mux0~2_combout\ & (((\reg_gen:6:regs|reg_2|y\(0)) # (!\mux_2|mux_1|mux_generate:3:mux_i|Mux0~1_combout\)))) # (!\mux_2|mux_1|mux_generate:3:mux_i|Mux0~2_combout\ & 
-- (\mux_2|mux_1|mux_generate:2:mux_i|Mux3~0_combout\ & ((\mux_2|mux_1|mux_generate:3:mux_i|Mux0~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mux_2|mux_1|mux_generate:3:mux_i|Mux0~2_combout\,
	datab => \mux_2|mux_1|mux_generate:2:mux_i|Mux3~0_combout\,
	datac => \reg_gen:6:regs|reg_2|y\(0),
	datad => \mux_2|mux_1|mux_generate:3:mux_i|Mux0~1_combout\,
	combout => \mux_2|mux_1|mux_generate:2:mux_i|Mux3~1_combout\);

-- Location: LCCOMB_X39_Y59_N28
\mux_2|mux_1|mux_generate:2:mux_i|Mux3~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \mux_2|mux_1|mux_generate:2:mux_i|Mux3~2_combout\ = (\mux_2|mux_1|mux_generate:3:mux_i|Mux0~0_combout\ & (\mux_2|mux_1|mux_generate:2:mux_i|Mux3~1_combout\)) # (!\mux_2|mux_1|mux_generate:3:mux_i|Mux0~0_combout\ & 
-- ((\mux_2|mux_1|mux_generate:2:mux_i|Mux3~1_combout\ & ((\reg_gen:5:regs|reg_2|y\(0)))) # (!\mux_2|mux_1|mux_generate:2:mux_i|Mux3~1_combout\ & (\reg_gen:4:regs|reg_2|y\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mux_2|mux_1|mux_generate:3:mux_i|Mux0~0_combout\,
	datab => \mux_2|mux_1|mux_generate:2:mux_i|Mux3~1_combout\,
	datac => \reg_gen:4:regs|reg_2|y\(0),
	datad => \reg_gen:5:regs|reg_2|y\(0),
	combout => \mux_2|mux_1|mux_generate:2:mux_i|Mux3~2_combout\);

-- Location: LCCOMB_X39_Y58_N26
\mux_2|mux_1|mux_generate:2:mux_i|Mux3~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \mux_2|mux_1|mux_generate:2:mux_i|Mux3~3_combout\ = (\ADD_R2[0]~input_o\ & ((\reg_gen:3:regs|reg_2|y\(0)))) # (!\ADD_R2[0]~input_o\ & (\reg_gen:2:regs|reg_2|y\(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \ADD_R2[0]~input_o\,
	datac => \reg_gen:2:regs|reg_2|y\(0),
	datad => \reg_gen:3:regs|reg_2|y\(0),
	combout => \mux_2|mux_1|mux_generate:2:mux_i|Mux3~3_combout\);

-- Location: LCCOMB_X39_Y59_N22
\mux_2|mux_1|mux_generate:2:mux_i|Mux3~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \mux_2|mux_1|mux_generate:2:mux_i|Mux3~4_combout\ = (\ADD_R2[2]~input_o\ & (\mux_2|mux_1|mux_generate:2:mux_i|Mux3~2_combout\)) # (!\ADD_R2[2]~input_o\ & ((\ADD_R2[1]~input_o\ & ((\mux_2|mux_1|mux_generate:2:mux_i|Mux3~3_combout\))) # 
-- (!\ADD_R2[1]~input_o\ & (\mux_2|mux_1|mux_generate:2:mux_i|Mux3~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ADD_R2[2]~input_o\,
	datab => \mux_2|mux_1|mux_generate:2:mux_i|Mux3~2_combout\,
	datac => \mux_2|mux_1|mux_generate:2:mux_i|Mux3~3_combout\,
	datad => \ADD_R2[1]~input_o\,
	combout => \mux_2|mux_1|mux_generate:2:mux_i|Mux3~4_combout\);

-- Location: LCCOMB_X39_Y58_N22
\mux_2|mux_1|mux_generate:2:mux_i|Mux2~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \mux_2|mux_1|mux_generate:2:mux_i|Mux2~3_combout\ = (\ADD_R2[0]~input_o\ & ((\reg_gen:3:regs|reg_2|y\(1)))) # (!\ADD_R2[0]~input_o\ & (\reg_gen:2:regs|reg_2|y\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \ADD_R2[0]~input_o\,
	datac => \reg_gen:2:regs|reg_2|y\(1),
	datad => \reg_gen:3:regs|reg_2|y\(1),
	combout => \mux_2|mux_1|mux_generate:2:mux_i|Mux2~3_combout\);

-- Location: LCCOMB_X38_Y59_N10
\mux_2|mux_1|mux_generate:2:mux_i|Mux2~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \mux_2|mux_1|mux_generate:2:mux_i|Mux2~0_combout\ = (\ADD_R2[0]~input_o\ & \reg_gen:1:regs|reg_2|y\(1))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \ADD_R2[0]~input_o\,
	datac => \reg_gen:1:regs|reg_2|y\(1),
	combout => \mux_2|mux_1|mux_generate:2:mux_i|Mux2~0_combout\);

-- Location: LCCOMB_X36_Y59_N8
\mux_2|mux_1|mux_generate:2:mux_i|Mux2~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \mux_2|mux_1|mux_generate:2:mux_i|Mux2~1_combout\ = (\mux_2|mux_1|mux_generate:3:mux_i|Mux0~2_combout\ & (((\reg_gen:6:regs|reg_2|y\(1) & \mux_2|mux_1|mux_generate:3:mux_i|Mux0~1_combout\)))) # (!\mux_2|mux_1|mux_generate:3:mux_i|Mux0~2_combout\ & 
-- ((\mux_2|mux_1|mux_generate:2:mux_i|Mux2~0_combout\) # ((!\mux_2|mux_1|mux_generate:3:mux_i|Mux0~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010001010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mux_2|mux_1|mux_generate:3:mux_i|Mux0~2_combout\,
	datab => \mux_2|mux_1|mux_generate:2:mux_i|Mux2~0_combout\,
	datac => \reg_gen:6:regs|reg_2|y\(1),
	datad => \mux_2|mux_1|mux_generate:3:mux_i|Mux0~1_combout\,
	combout => \mux_2|mux_1|mux_generate:2:mux_i|Mux2~1_combout\);

-- Location: LCCOMB_X36_Y59_N2
\mux_2|mux_1|mux_generate:2:mux_i|Mux2~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \mux_2|mux_1|mux_generate:2:mux_i|Mux2~2_combout\ = (\mux_2|mux_1|mux_generate:2:mux_i|Mux2~1_combout\ & (((\reg_gen:4:regs|reg_2|y\(1)) # (\mux_2|mux_1|mux_generate:3:mux_i|Mux0~0_combout\)))) # (!\mux_2|mux_1|mux_generate:2:mux_i|Mux2~1_combout\ & 
-- (\reg_gen:5:regs|reg_2|y\(1) & ((!\mux_2|mux_1|mux_generate:3:mux_i|Mux0~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \reg_gen:5:regs|reg_2|y\(1),
	datab => \mux_2|mux_1|mux_generate:2:mux_i|Mux2~1_combout\,
	datac => \reg_gen:4:regs|reg_2|y\(1),
	datad => \mux_2|mux_1|mux_generate:3:mux_i|Mux0~0_combout\,
	combout => \mux_2|mux_1|mux_generate:2:mux_i|Mux2~2_combout\);

-- Location: LCCOMB_X36_Y59_N18
\mux_2|mux_1|mux_generate:2:mux_i|Mux2~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \mux_2|mux_1|mux_generate:2:mux_i|Mux2~4_combout\ = (\ADD_R2[1]~input_o\ & ((\ADD_R2[2]~input_o\ & ((\mux_2|mux_1|mux_generate:2:mux_i|Mux2~2_combout\))) # (!\ADD_R2[2]~input_o\ & (\mux_2|mux_1|mux_generate:2:mux_i|Mux2~3_combout\)))) # 
-- (!\ADD_R2[1]~input_o\ & (((\mux_2|mux_1|mux_generate:2:mux_i|Mux2~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mux_2|mux_1|mux_generate:2:mux_i|Mux2~3_combout\,
	datab => \mux_2|mux_1|mux_generate:2:mux_i|Mux2~2_combout\,
	datac => \ADD_R2[1]~input_o\,
	datad => \ADD_R2[2]~input_o\,
	combout => \mux_2|mux_1|mux_generate:2:mux_i|Mux2~4_combout\);

-- Location: LCCOMB_X39_Y58_N2
\mux_2|mux_1|mux_generate:2:mux_i|Mux1~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \mux_2|mux_1|mux_generate:2:mux_i|Mux1~3_combout\ = (\ADD_R2[0]~input_o\ & ((\reg_gen:3:regs|reg_2|y\(2)))) # (!\ADD_R2[0]~input_o\ & (\reg_gen:2:regs|reg_2|y\(2)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \ADD_R2[0]~input_o\,
	datac => \reg_gen:2:regs|reg_2|y\(2),
	datad => \reg_gen:3:regs|reg_2|y\(2),
	combout => \mux_2|mux_1|mux_generate:2:mux_i|Mux1~3_combout\);

-- Location: LCCOMB_X36_Y57_N26
\mux_2|mux_1|mux_generate:2:mux_i|Mux1~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \mux_2|mux_1|mux_generate:2:mux_i|Mux1~0_combout\ = (\reg_gen:1:regs|reg_2|y\(2) & \ADD_R2[0]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \reg_gen:1:regs|reg_2|y\(2),
	datad => \ADD_R2[0]~input_o\,
	combout => \mux_2|mux_1|mux_generate:2:mux_i|Mux1~0_combout\);

-- Location: LCCOMB_X36_Y57_N0
\mux_2|mux_1|mux_generate:2:mux_i|Mux1~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \mux_2|mux_1|mux_generate:2:mux_i|Mux1~1_combout\ = (\mux_2|mux_1|mux_generate:3:mux_i|Mux0~2_combout\ & (((\reg_gen:6:regs|reg_2|y\(2) & \mux_2|mux_1|mux_generate:3:mux_i|Mux0~1_combout\)))) # (!\mux_2|mux_1|mux_generate:3:mux_i|Mux0~2_combout\ & 
-- ((\mux_2|mux_1|mux_generate:2:mux_i|Mux1~0_combout\) # ((!\mux_2|mux_1|mux_generate:3:mux_i|Mux0~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110001000110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mux_2|mux_1|mux_generate:2:mux_i|Mux1~0_combout\,
	datab => \mux_2|mux_1|mux_generate:3:mux_i|Mux0~2_combout\,
	datac => \reg_gen:6:regs|reg_2|y\(2),
	datad => \mux_2|mux_1|mux_generate:3:mux_i|Mux0~1_combout\,
	combout => \mux_2|mux_1|mux_generate:2:mux_i|Mux1~1_combout\);

-- Location: LCCOMB_X36_Y58_N28
\mux_2|mux_1|mux_generate:2:mux_i|Mux1~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \mux_2|mux_1|mux_generate:2:mux_i|Mux1~2_combout\ = (\mux_2|mux_1|mux_generate:2:mux_i|Mux1~1_combout\ & (((\reg_gen:4:regs|reg_2|y\(2)) # (\mux_2|mux_1|mux_generate:3:mux_i|Mux0~0_combout\)))) # (!\mux_2|mux_1|mux_generate:2:mux_i|Mux1~1_combout\ & 
-- (\reg_gen:5:regs|reg_2|y\(2) & ((!\mux_2|mux_1|mux_generate:3:mux_i|Mux0~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \reg_gen:5:regs|reg_2|y\(2),
	datab => \mux_2|mux_1|mux_generate:2:mux_i|Mux1~1_combout\,
	datac => \reg_gen:4:regs|reg_2|y\(2),
	datad => \mux_2|mux_1|mux_generate:3:mux_i|Mux0~0_combout\,
	combout => \mux_2|mux_1|mux_generate:2:mux_i|Mux1~2_combout\);

-- Location: LCCOMB_X36_Y58_N18
\mux_2|mux_1|mux_generate:2:mux_i|Mux1~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \mux_2|mux_1|mux_generate:2:mux_i|Mux1~4_combout\ = (\ADD_R2[1]~input_o\ & ((\ADD_R2[2]~input_o\ & ((\mux_2|mux_1|mux_generate:2:mux_i|Mux1~2_combout\))) # (!\ADD_R2[2]~input_o\ & (\mux_2|mux_1|mux_generate:2:mux_i|Mux1~3_combout\)))) # 
-- (!\ADD_R2[1]~input_o\ & (((\mux_2|mux_1|mux_generate:2:mux_i|Mux1~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110100100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ADD_R2[1]~input_o\,
	datab => \ADD_R2[2]~input_o\,
	datac => \mux_2|mux_1|mux_generate:2:mux_i|Mux1~3_combout\,
	datad => \mux_2|mux_1|mux_generate:2:mux_i|Mux1~2_combout\,
	combout => \mux_2|mux_1|mux_generate:2:mux_i|Mux1~4_combout\);

-- Location: LCCOMB_X36_Y60_N18
\mux_2|mux_1|mux_generate:2:mux_i|Mux0~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \mux_2|mux_1|mux_generate:2:mux_i|Mux0~3_combout\ = (\ADD_R2[0]~input_o\ & ((\reg_gen:3:regs|reg_2|y\(3)))) # (!\ADD_R2[0]~input_o\ & (\reg_gen:2:regs|reg_2|y\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ADD_R2[0]~input_o\,
	datac => \reg_gen:2:regs|reg_2|y\(3),
	datad => \reg_gen:3:regs|reg_2|y\(3),
	combout => \mux_2|mux_1|mux_generate:2:mux_i|Mux0~3_combout\);

-- Location: LCCOMB_X41_Y59_N22
\mux_2|mux_1|mux_generate:2:mux_i|Mux0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \mux_2|mux_1|mux_generate:2:mux_i|Mux0~0_combout\ = (\reg_gen:1:regs|reg_2|y\(3) & \ADD_R2[0]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \reg_gen:1:regs|reg_2|y\(3),
	datad => \ADD_R2[0]~input_o\,
	combout => \mux_2|mux_1|mux_generate:2:mux_i|Mux0~0_combout\);

-- Location: LCCOMB_X41_Y59_N28
\mux_2|mux_1|mux_generate:2:mux_i|Mux0~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \mux_2|mux_1|mux_generate:2:mux_i|Mux0~1_combout\ = (\mux_2|mux_1|mux_generate:3:mux_i|Mux0~2_combout\ & (((\reg_gen:6:regs|reg_2|y\(3) & \mux_2|mux_1|mux_generate:3:mux_i|Mux0~1_combout\)))) # (!\mux_2|mux_1|mux_generate:3:mux_i|Mux0~2_combout\ & 
-- ((\mux_2|mux_1|mux_generate:2:mux_i|Mux0~0_combout\) # ((!\mux_2|mux_1|mux_generate:3:mux_i|Mux0~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110001000110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mux_2|mux_1|mux_generate:2:mux_i|Mux0~0_combout\,
	datab => \mux_2|mux_1|mux_generate:3:mux_i|Mux0~2_combout\,
	datac => \reg_gen:6:regs|reg_2|y\(3),
	datad => \mux_2|mux_1|mux_generate:3:mux_i|Mux0~1_combout\,
	combout => \mux_2|mux_1|mux_generate:2:mux_i|Mux0~1_combout\);

-- Location: LCCOMB_X36_Y58_N2
\mux_2|mux_1|mux_generate:2:mux_i|Mux0~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \mux_2|mux_1|mux_generate:2:mux_i|Mux0~2_combout\ = (\mux_2|mux_1|mux_generate:3:mux_i|Mux0~0_combout\ & (((\mux_2|mux_1|mux_generate:2:mux_i|Mux0~1_combout\)))) # (!\mux_2|mux_1|mux_generate:3:mux_i|Mux0~0_combout\ & 
-- ((\mux_2|mux_1|mux_generate:2:mux_i|Mux0~1_combout\ & ((\reg_gen:4:regs|reg_2|y\(3)))) # (!\mux_2|mux_1|mux_generate:2:mux_i|Mux0~1_combout\ & (\reg_gen:5:regs|reg_2|y\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mux_2|mux_1|mux_generate:3:mux_i|Mux0~0_combout\,
	datab => \reg_gen:5:regs|reg_2|y\(3),
	datac => \reg_gen:4:regs|reg_2|y\(3),
	datad => \mux_2|mux_1|mux_generate:2:mux_i|Mux0~1_combout\,
	combout => \mux_2|mux_1|mux_generate:2:mux_i|Mux0~2_combout\);

-- Location: LCCOMB_X36_Y59_N20
\mux_2|mux_1|mux_generate:2:mux_i|Mux0~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \mux_2|mux_1|mux_generate:2:mux_i|Mux0~4_combout\ = (\ADD_R2[1]~input_o\ & ((\ADD_R2[2]~input_o\ & ((\mux_2|mux_1|mux_generate:2:mux_i|Mux0~2_combout\))) # (!\ADD_R2[2]~input_o\ & (\mux_2|mux_1|mux_generate:2:mux_i|Mux0~3_combout\)))) # 
-- (!\ADD_R2[1]~input_o\ & (((\mux_2|mux_1|mux_generate:2:mux_i|Mux0~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mux_2|mux_1|mux_generate:2:mux_i|Mux0~3_combout\,
	datab => \mux_2|mux_1|mux_generate:2:mux_i|Mux0~2_combout\,
	datac => \ADD_R2[1]~input_o\,
	datad => \ADD_R2[2]~input_o\,
	combout => \mux_2|mux_1|mux_generate:2:mux_i|Mux0~4_combout\);

-- Location: LCCOMB_X36_Y60_N22
\mux_2|mux_1|mux_generate:3:mux_i|Mux3~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \mux_2|mux_1|mux_generate:3:mux_i|Mux3~3_combout\ = (\ADD_R2[0]~input_o\ & ((\reg_gen:3:regs|reg_2|y\(4)))) # (!\ADD_R2[0]~input_o\ & (\reg_gen:2:regs|reg_2|y\(4)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ADD_R2[0]~input_o\,
	datac => \reg_gen:2:regs|reg_2|y\(4),
	datad => \reg_gen:3:regs|reg_2|y\(4),
	combout => \mux_2|mux_1|mux_generate:3:mux_i|Mux3~3_combout\);

-- Location: LCCOMB_X36_Y57_N2
\mux_2|mux_1|mux_generate:3:mux_i|Mux3~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \mux_2|mux_1|mux_generate:3:mux_i|Mux3~0_combout\ = (\reg_gen:1:regs|reg_2|y\(4) & \ADD_R2[0]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \reg_gen:1:regs|reg_2|y\(4),
	datad => \ADD_R2[0]~input_o\,
	combout => \mux_2|mux_1|mux_generate:3:mux_i|Mux3~0_combout\);

-- Location: LCCOMB_X36_Y57_N24
\mux_2|mux_1|mux_generate:3:mux_i|Mux3~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \mux_2|mux_1|mux_generate:3:mux_i|Mux3~1_combout\ = (\mux_2|mux_1|mux_generate:3:mux_i|Mux0~2_combout\ & (((\reg_gen:6:regs|reg_2|y\(4) & \mux_2|mux_1|mux_generate:3:mux_i|Mux0~1_combout\)))) # (!\mux_2|mux_1|mux_generate:3:mux_i|Mux0~2_combout\ & 
-- ((\mux_2|mux_1|mux_generate:3:mux_i|Mux3~0_combout\) # ((!\mux_2|mux_1|mux_generate:3:mux_i|Mux0~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110001000110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mux_2|mux_1|mux_generate:3:mux_i|Mux3~0_combout\,
	datab => \mux_2|mux_1|mux_generate:3:mux_i|Mux0~2_combout\,
	datac => \reg_gen:6:regs|reg_2|y\(4),
	datad => \mux_2|mux_1|mux_generate:3:mux_i|Mux0~1_combout\,
	combout => \mux_2|mux_1|mux_generate:3:mux_i|Mux3~1_combout\);

-- Location: LCCOMB_X36_Y58_N16
\mux_2|mux_1|mux_generate:3:mux_i|Mux3~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \mux_2|mux_1|mux_generate:3:mux_i|Mux3~2_combout\ = (\mux_2|mux_1|mux_generate:3:mux_i|Mux3~1_combout\ & (((\reg_gen:4:regs|reg_2|y\(4)) # (\mux_2|mux_1|mux_generate:3:mux_i|Mux0~0_combout\)))) # (!\mux_2|mux_1|mux_generate:3:mux_i|Mux3~1_combout\ & 
-- (\reg_gen:5:regs|reg_2|y\(4) & ((!\mux_2|mux_1|mux_generate:3:mux_i|Mux0~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \reg_gen:5:regs|reg_2|y\(4),
	datab => \mux_2|mux_1|mux_generate:3:mux_i|Mux3~1_combout\,
	datac => \reg_gen:4:regs|reg_2|y\(4),
	datad => \mux_2|mux_1|mux_generate:3:mux_i|Mux0~0_combout\,
	combout => \mux_2|mux_1|mux_generate:3:mux_i|Mux3~2_combout\);

-- Location: LCCOMB_X36_Y58_N20
\mux_2|mux_1|mux_generate:3:mux_i|Mux3~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \mux_2|mux_1|mux_generate:3:mux_i|Mux3~4_combout\ = (\ADD_R2[2]~input_o\ & (((\mux_2|mux_1|mux_generate:3:mux_i|Mux3~2_combout\)))) # (!\ADD_R2[2]~input_o\ & ((\ADD_R2[1]~input_o\ & (\mux_2|mux_1|mux_generate:3:mux_i|Mux3~3_combout\)) # 
-- (!\ADD_R2[1]~input_o\ & ((\mux_2|mux_1|mux_generate:3:mux_i|Mux3~2_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111100100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mux_2|mux_1|mux_generate:3:mux_i|Mux3~3_combout\,
	datab => \ADD_R2[2]~input_o\,
	datac => \ADD_R2[1]~input_o\,
	datad => \mux_2|mux_1|mux_generate:3:mux_i|Mux3~2_combout\,
	combout => \mux_2|mux_1|mux_generate:3:mux_i|Mux3~4_combout\);

-- Location: LCCOMB_X36_Y57_N10
\mux_2|mux_1|mux_generate:3:mux_i|Mux2~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \mux_2|mux_1|mux_generate:3:mux_i|Mux2~0_combout\ = (\reg_gen:1:regs|reg_2|y\(5) & \ADD_R2[0]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \reg_gen:1:regs|reg_2|y\(5),
	datad => \ADD_R2[0]~input_o\,
	combout => \mux_2|mux_1|mux_generate:3:mux_i|Mux2~0_combout\);

-- Location: LCCOMB_X36_Y57_N16
\mux_2|mux_1|mux_generate:3:mux_i|Mux2~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \mux_2|mux_1|mux_generate:3:mux_i|Mux2~1_combout\ = (\mux_2|mux_1|mux_generate:3:mux_i|Mux0~2_combout\ & (((\reg_gen:6:regs|reg_2|y\(5) & \mux_2|mux_1|mux_generate:3:mux_i|Mux0~1_combout\)))) # (!\mux_2|mux_1|mux_generate:3:mux_i|Mux0~2_combout\ & 
-- ((\mux_2|mux_1|mux_generate:3:mux_i|Mux2~0_combout\) # ((!\mux_2|mux_1|mux_generate:3:mux_i|Mux0~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110001000110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mux_2|mux_1|mux_generate:3:mux_i|Mux2~0_combout\,
	datab => \mux_2|mux_1|mux_generate:3:mux_i|Mux0~2_combout\,
	datac => \reg_gen:6:regs|reg_2|y\(5),
	datad => \mux_2|mux_1|mux_generate:3:mux_i|Mux0~1_combout\,
	combout => \mux_2|mux_1|mux_generate:3:mux_i|Mux2~1_combout\);

-- Location: LCCOMB_X36_Y59_N12
\mux_2|mux_1|mux_generate:3:mux_i|Mux2~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \mux_2|mux_1|mux_generate:3:mux_i|Mux2~2_combout\ = (\mux_2|mux_1|mux_generate:3:mux_i|Mux0~0_combout\ & (((\mux_2|mux_1|mux_generate:3:mux_i|Mux2~1_combout\)))) # (!\mux_2|mux_1|mux_generate:3:mux_i|Mux0~0_combout\ & 
-- ((\mux_2|mux_1|mux_generate:3:mux_i|Mux2~1_combout\ & ((\reg_gen:4:regs|reg_2|y\(5)))) # (!\mux_2|mux_1|mux_generate:3:mux_i|Mux2~1_combout\ & (\reg_gen:5:regs|reg_2|y\(5)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mux_2|mux_1|mux_generate:3:mux_i|Mux0~0_combout\,
	datab => \reg_gen:5:regs|reg_2|y\(5),
	datac => \reg_gen:4:regs|reg_2|y\(5),
	datad => \mux_2|mux_1|mux_generate:3:mux_i|Mux2~1_combout\,
	combout => \mux_2|mux_1|mux_generate:3:mux_i|Mux2~2_combout\);

-- Location: LCCOMB_X36_Y60_N26
\mux_2|mux_1|mux_generate:3:mux_i|Mux2~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \mux_2|mux_1|mux_generate:3:mux_i|Mux2~3_combout\ = (\ADD_R2[0]~input_o\ & ((\reg_gen:3:regs|reg_2|y\(5)))) # (!\ADD_R2[0]~input_o\ & (\reg_gen:2:regs|reg_2|y\(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ADD_R2[0]~input_o\,
	datac => \reg_gen:2:regs|reg_2|y\(5),
	datad => \reg_gen:3:regs|reg_2|y\(5),
	combout => \mux_2|mux_1|mux_generate:3:mux_i|Mux2~3_combout\);

-- Location: LCCOMB_X36_Y59_N22
\mux_2|mux_1|mux_generate:3:mux_i|Mux2~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \mux_2|mux_1|mux_generate:3:mux_i|Mux2~4_combout\ = (\ADD_R2[1]~input_o\ & ((\ADD_R2[2]~input_o\ & (\mux_2|mux_1|mux_generate:3:mux_i|Mux2~2_combout\)) # (!\ADD_R2[2]~input_o\ & ((\mux_2|mux_1|mux_generate:3:mux_i|Mux2~3_combout\))))) # 
-- (!\ADD_R2[1]~input_o\ & (\mux_2|mux_1|mux_generate:3:mux_i|Mux2~2_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mux_2|mux_1|mux_generate:3:mux_i|Mux2~2_combout\,
	datab => \mux_2|mux_1|mux_generate:3:mux_i|Mux2~3_combout\,
	datac => \ADD_R2[1]~input_o\,
	datad => \ADD_R2[2]~input_o\,
	combout => \mux_2|mux_1|mux_generate:3:mux_i|Mux2~4_combout\);

-- Location: LCCOMB_X35_Y59_N10
\mux_2|mux_1|mux_generate:3:mux_i|Mux1~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \mux_2|mux_1|mux_generate:3:mux_i|Mux1~0_combout\ = (\ADD_R2[0]~input_o\ & \reg_gen:1:regs|reg_2|y\(6))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \ADD_R2[0]~input_o\,
	datac => \reg_gen:1:regs|reg_2|y\(6),
	combout => \mux_2|mux_1|mux_generate:3:mux_i|Mux1~0_combout\);

-- Location: LCCOMB_X35_Y59_N16
\mux_2|mux_1|mux_generate:3:mux_i|Mux1~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \mux_2|mux_1|mux_generate:3:mux_i|Mux1~1_combout\ = (\mux_2|mux_1|mux_generate:3:mux_i|Mux0~2_combout\ & (((\reg_gen:6:regs|reg_2|y\(6) & \mux_2|mux_1|mux_generate:3:mux_i|Mux0~1_combout\)))) # (!\mux_2|mux_1|mux_generate:3:mux_i|Mux0~2_combout\ & 
-- ((\mux_2|mux_1|mux_generate:3:mux_i|Mux1~0_combout\) # ((!\mux_2|mux_1|mux_generate:3:mux_i|Mux0~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110001000110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mux_2|mux_1|mux_generate:3:mux_i|Mux1~0_combout\,
	datab => \mux_2|mux_1|mux_generate:3:mux_i|Mux0~2_combout\,
	datac => \reg_gen:6:regs|reg_2|y\(6),
	datad => \mux_2|mux_1|mux_generate:3:mux_i|Mux0~1_combout\,
	combout => \mux_2|mux_1|mux_generate:3:mux_i|Mux1~1_combout\);

-- Location: LCCOMB_X36_Y59_N10
\mux_2|mux_1|mux_generate:3:mux_i|Mux1~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \mux_2|mux_1|mux_generate:3:mux_i|Mux1~2_combout\ = (\mux_2|mux_1|mux_generate:3:mux_i|Mux1~1_combout\ & (((\reg_gen:4:regs|reg_2|y\(6)) # (\mux_2|mux_1|mux_generate:3:mux_i|Mux0~0_combout\)))) # (!\mux_2|mux_1|mux_generate:3:mux_i|Mux1~1_combout\ & 
-- (\reg_gen:5:regs|reg_2|y\(6) & ((!\mux_2|mux_1|mux_generate:3:mux_i|Mux0~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mux_2|mux_1|mux_generate:3:mux_i|Mux1~1_combout\,
	datab => \reg_gen:5:regs|reg_2|y\(6),
	datac => \reg_gen:4:regs|reg_2|y\(6),
	datad => \mux_2|mux_1|mux_generate:3:mux_i|Mux0~0_combout\,
	combout => \mux_2|mux_1|mux_generate:3:mux_i|Mux1~2_combout\);

-- Location: LCCOMB_X41_Y62_N28
\mux_2|mux_1|mux_generate:3:mux_i|Mux1~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \mux_2|mux_1|mux_generate:3:mux_i|Mux1~3_combout\ = (\ADD_R2[0]~input_o\ & ((\reg_gen:3:regs|reg_2|y\(6)))) # (!\ADD_R2[0]~input_o\ & (\reg_gen:2:regs|reg_2|y\(6)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \ADD_R2[0]~input_o\,
	datac => \reg_gen:2:regs|reg_2|y\(6),
	datad => \reg_gen:3:regs|reg_2|y\(6),
	combout => \mux_2|mux_1|mux_generate:3:mux_i|Mux1~3_combout\);

-- Location: LCCOMB_X41_Y62_N6
\mux_2|mux_1|mux_generate:3:mux_i|Mux1~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \mux_2|mux_1|mux_generate:3:mux_i|Mux1~4_combout\ = (\ADD_R2[2]~input_o\ & (\mux_2|mux_1|mux_generate:3:mux_i|Mux1~2_combout\)) # (!\ADD_R2[2]~input_o\ & ((\ADD_R2[1]~input_o\ & ((\mux_2|mux_1|mux_generate:3:mux_i|Mux1~3_combout\))) # 
-- (!\ADD_R2[1]~input_o\ & (\mux_2|mux_1|mux_generate:3:mux_i|Mux1~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mux_2|mux_1|mux_generate:3:mux_i|Mux1~2_combout\,
	datab => \ADD_R2[2]~input_o\,
	datac => \mux_2|mux_1|mux_generate:3:mux_i|Mux1~3_combout\,
	datad => \ADD_R2[1]~input_o\,
	combout => \mux_2|mux_1|mux_generate:3:mux_i|Mux1~4_combout\);

-- Location: LCCOMB_X36_Y57_N18
\mux_2|mux_1|mux_generate:3:mux_i|Mux0~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \mux_2|mux_1|mux_generate:3:mux_i|Mux0~3_combout\ = (\reg_gen:1:regs|reg_2|y\(7) & \ADD_R2[0]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \reg_gen:1:regs|reg_2|y\(7),
	datad => \ADD_R2[0]~input_o\,
	combout => \mux_2|mux_1|mux_generate:3:mux_i|Mux0~3_combout\);

-- Location: LCCOMB_X36_Y57_N8
\mux_2|mux_1|mux_generate:3:mux_i|Mux0~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \mux_2|mux_1|mux_generate:3:mux_i|Mux0~4_combout\ = (\mux_2|mux_1|mux_generate:3:mux_i|Mux0~2_combout\ & (((\reg_gen:6:regs|reg_2|y\(7) & \mux_2|mux_1|mux_generate:3:mux_i|Mux0~1_combout\)))) # (!\mux_2|mux_1|mux_generate:3:mux_i|Mux0~2_combout\ & 
-- ((\mux_2|mux_1|mux_generate:3:mux_i|Mux0~3_combout\) # ((!\mux_2|mux_1|mux_generate:3:mux_i|Mux0~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110001000110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mux_2|mux_1|mux_generate:3:mux_i|Mux0~3_combout\,
	datab => \mux_2|mux_1|mux_generate:3:mux_i|Mux0~2_combout\,
	datac => \reg_gen:6:regs|reg_2|y\(7),
	datad => \mux_2|mux_1|mux_generate:3:mux_i|Mux0~1_combout\,
	combout => \mux_2|mux_1|mux_generate:3:mux_i|Mux0~4_combout\);

-- Location: LCCOMB_X36_Y58_N14
\mux_2|mux_1|mux_generate:3:mux_i|Mux0~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \mux_2|mux_1|mux_generate:3:mux_i|Mux0~5_combout\ = (\mux_2|mux_1|mux_generate:3:mux_i|Mux0~0_combout\ & (\mux_2|mux_1|mux_generate:3:mux_i|Mux0~4_combout\)) # (!\mux_2|mux_1|mux_generate:3:mux_i|Mux0~0_combout\ & 
-- ((\mux_2|mux_1|mux_generate:3:mux_i|Mux0~4_combout\ & (\reg_gen:4:regs|reg_2|y\(7))) # (!\mux_2|mux_1|mux_generate:3:mux_i|Mux0~4_combout\ & ((\reg_gen:5:regs|reg_2|y\(7))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100111001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mux_2|mux_1|mux_generate:3:mux_i|Mux0~0_combout\,
	datab => \mux_2|mux_1|mux_generate:3:mux_i|Mux0~4_combout\,
	datac => \reg_gen:4:regs|reg_2|y\(7),
	datad => \reg_gen:5:regs|reg_2|y\(7),
	combout => \mux_2|mux_1|mux_generate:3:mux_i|Mux0~5_combout\);

-- Location: LCCOMB_X39_Y58_N30
\mux_2|mux_1|mux_generate:3:mux_i|Mux0~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \mux_2|mux_1|mux_generate:3:mux_i|Mux0~6_combout\ = (\ADD_R2[0]~input_o\ & ((\reg_gen:3:regs|reg_2|y\(7)))) # (!\ADD_R2[0]~input_o\ & (\reg_gen:2:regs|reg_2|y\(7)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \ADD_R2[0]~input_o\,
	datac => \reg_gen:2:regs|reg_2|y\(7),
	datad => \reg_gen:3:regs|reg_2|y\(7),
	combout => \mux_2|mux_1|mux_generate:3:mux_i|Mux0~6_combout\);

-- Location: LCCOMB_X36_Y58_N22
\mux_2|mux_1|mux_generate:3:mux_i|Mux0~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \mux_2|mux_1|mux_generate:3:mux_i|Mux0~7_combout\ = (\ADD_R2[1]~input_o\ & ((\ADD_R2[2]~input_o\ & (\mux_2|mux_1|mux_generate:3:mux_i|Mux0~5_combout\)) # (!\ADD_R2[2]~input_o\ & ((\mux_2|mux_1|mux_generate:3:mux_i|Mux0~6_combout\))))) # 
-- (!\ADD_R2[1]~input_o\ & (((\mux_2|mux_1|mux_generate:3:mux_i|Mux0~5_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001011010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ADD_R2[1]~input_o\,
	datab => \ADD_R2[2]~input_o\,
	datac => \mux_2|mux_1|mux_generate:3:mux_i|Mux0~5_combout\,
	datad => \mux_2|mux_1|mux_generate:3:mux_i|Mux0~6_combout\,
	combout => \mux_2|mux_1|mux_generate:3:mux_i|Mux0~7_combout\);

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


