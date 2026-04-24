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

-- DATE "04/23/2026 23:55:03"

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

ENTITY 	DAT_MEM IS
    PORT (
	ADDR : IN std_logic_vector(15 DOWNTO 0);
	DIN : IN std_logic_vector(15 DOWNTO 0);
	WE : IN std_logic;
	RE : IN std_logic;
	CLK : IN std_logic;
	DOUT : BUFFER std_logic_vector(15 DOWNTO 0)
	);
END DAT_MEM;

-- Design Ports Information
-- ADDR[5]	=>  Location: PIN_AE6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ADDR[6]	=>  Location: PIN_AE14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ADDR[7]	=>  Location: PIN_AB14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ADDR[8]	=>  Location: PIN_E4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ADDR[9]	=>  Location: PIN_P2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ADDR[10]	=>  Location: PIN_G21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ADDR[11]	=>  Location: PIN_R7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ADDR[12]	=>  Location: PIN_AF25,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ADDR[13]	=>  Location: PIN_B11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ADDR[14]	=>  Location: PIN_D28,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ADDR[15]	=>  Location: PIN_G19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- DOUT[0]	=>  Location: PIN_E11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- DOUT[1]	=>  Location: PIN_G8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- DOUT[2]	=>  Location: PIN_A8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- DOUT[3]	=>  Location: PIN_G9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- DOUT[4]	=>  Location: PIN_A6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- DOUT[5]	=>  Location: PIN_B8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- DOUT[6]	=>  Location: PIN_D6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- DOUT[7]	=>  Location: PIN_F8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- DOUT[8]	=>  Location: PIN_F11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- DOUT[9]	=>  Location: PIN_E7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- DOUT[10]	=>  Location: PIN_E10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- DOUT[11]	=>  Location: PIN_D7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- DOUT[12]	=>  Location: PIN_G12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- DOUT[13]	=>  Location: PIN_C8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- DOUT[14]	=>  Location: PIN_E8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- DOUT[15]	=>  Location: PIN_H8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ADDR[3]	=>  Location: PIN_C11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ADDR[4]	=>  Location: PIN_D9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ADDR[2]	=>  Location: PIN_B6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ADDR[1]	=>  Location: PIN_H12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ADDR[0]	=>  Location: PIN_A7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- RE	=>  Location: PIN_G11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- DIN[0]	=>  Location: PIN_E12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- CLK	=>  Location: PIN_J1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- WE	=>  Location: PIN_G13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- DIN[8]	=>  Location: PIN_H10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- DIN[1]	=>  Location: PIN_F12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- DIN[9]	=>  Location: PIN_J10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- DIN[2]	=>  Location: PIN_H13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- DIN[10]	=>  Location: PIN_D8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- DIN[3]	=>  Location: PIN_A10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- DIN[11]	=>  Location: PIN_C9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- DIN[4]	=>  Location: PIN_B10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- DIN[12]	=>  Location: PIN_F10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- DIN[13]	=>  Location: PIN_G10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- DIN[5]	=>  Location: PIN_D10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- DIN[6]	=>  Location: PIN_C10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- DIN[14]	=>  Location: PIN_C7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- DIN[15]	=>  Location: PIN_D11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- DIN[7]	=>  Location: PIN_B7,	 I/O Standard: 2.5 V,	 Current Strength: Default


ARCHITECTURE structure OF DAT_MEM IS
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
SIGNAL ww_DIN : std_logic_vector(15 DOWNTO 0);
SIGNAL ww_WE : std_logic;
SIGNAL ww_RE : std_logic;
SIGNAL ww_CLK : std_logic;
SIGNAL ww_DOUT : std_logic_vector(15 DOWNTO 0);
SIGNAL \DOUT[15]~48clkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \CLK~inputclkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \ADDR[5]~input_o\ : std_logic;
SIGNAL \ADDR[6]~input_o\ : std_logic;
SIGNAL \ADDR[7]~input_o\ : std_logic;
SIGNAL \ADDR[8]~input_o\ : std_logic;
SIGNAL \ADDR[9]~input_o\ : std_logic;
SIGNAL \ADDR[10]~input_o\ : std_logic;
SIGNAL \ADDR[11]~input_o\ : std_logic;
SIGNAL \ADDR[12]~input_o\ : std_logic;
SIGNAL \ADDR[13]~input_o\ : std_logic;
SIGNAL \ADDR[14]~input_o\ : std_logic;
SIGNAL \ADDR[15]~input_o\ : std_logic;
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
SIGNAL \RE~input_o\ : std_logic;
SIGNAL \ADDR[1]~input_o\ : std_logic;
SIGNAL \CLK~input_o\ : std_logic;
SIGNAL \CLK~inputclkctrl_outclk\ : std_logic;
SIGNAL \DIN[0]~input_o\ : std_logic;
SIGNAL \reg_gen:18:regs|y[0]~feeder_combout\ : std_logic;
SIGNAL \ADDR[2]~input_o\ : std_logic;
SIGNAL \ADDR[0]~input_o\ : std_logic;
SIGNAL \ADDR[3]~input_o\ : std_logic;
SIGNAL \ADDR[4]~input_o\ : std_logic;
SIGNAL \WE~input_o\ : std_logic;
SIGNAL \dec_to_en[19]~22_combout\ : std_logic;
SIGNAL \dec_to_en[31]~24_combout\ : std_logic;
SIGNAL \dec_to_en[3]~23_combout\ : std_logic;
SIGNAL \reg_gen:10:regs|y[0]~feeder_combout\ : std_logic;
SIGNAL \dec_to_en[11]~21_combout\ : std_logic;
SIGNAL \DOUT[0]~24_combout\ : std_logic;
SIGNAL \DOUT[0]~25_combout\ : std_logic;
SIGNAL \DOUT[0]~22_combout\ : std_logic;
SIGNAL \DOUT[0]~23_combout\ : std_logic;
SIGNAL \DOUT[0]~26_combout\ : std_logic;
SIGNAL \DOUT[0]~41_combout\ : std_logic;
SIGNAL \DIN[8]~input_o\ : std_logic;
SIGNAL \DOUT[0]~40_combout\ : std_logic;
SIGNAL \reg_gen:15:regs|y[0]~feeder_combout\ : std_logic;
SIGNAL \DOUT[0]~42_combout\ : std_logic;
SIGNAL \DOUT[0]~43_combout\ : std_logic;
SIGNAL \DOUT[0]~44_combout\ : std_logic;
SIGNAL \DOUT[0]~45_combout\ : std_logic;
SIGNAL \DOUT[0]~46_combout\ : std_logic;
SIGNAL \reg_gen:13:regs|y[0]~feeder_combout\ : std_logic;
SIGNAL \reg_gen:21:regs|y[0]~feeder_combout\ : std_logic;
SIGNAL \DOUT[0]~27_combout\ : std_logic;
SIGNAL \DOUT[0]~28_combout\ : std_logic;
SIGNAL \reg_gen:17:regs|y[0]~feeder_combout\ : std_logic;
SIGNAL \reg_gen:9:regs|y[0]~feeder_combout\ : std_logic;
SIGNAL \DOUT[0]~29_combout\ : std_logic;
SIGNAL \DOUT[0]~30_combout\ : std_logic;
SIGNAL \DOUT[0]~31_combout\ : std_logic;
SIGNAL \DOUT[0]~34_combout\ : std_logic;
SIGNAL \DOUT[0]~33_combout\ : std_logic;
SIGNAL \dcd|dcd_3|dcd|Mux7~0_combout\ : std_logic;
SIGNAL \dec_to_en[0]~31_combout\ : std_logic;
SIGNAL \dec_to_en[24]~20_combout\ : std_logic;
SIGNAL \dec_to_en[16]~29_combout\ : std_logic;
SIGNAL \dec_to_en[16]~30_combout\ : std_logic;
SIGNAL \DOUT[0]~35_combout\ : std_logic;
SIGNAL \dec_to_en[8]~27_combout\ : std_logic;
SIGNAL \dec_to_en[8]~28_combout\ : std_logic;
SIGNAL \reg_gen:24:regs|y[0]~feeder_combout\ : std_logic;
SIGNAL \dec_to_en[24]~25_combout\ : std_logic;
SIGNAL \dec_to_en[24]~26_combout\ : std_logic;
SIGNAL \DOUT[0]~32_combout\ : std_logic;
SIGNAL \reg_gen:12:regs|y[0]~feeder_combout\ : std_logic;
SIGNAL \DOUT[0]~36_combout\ : std_logic;
SIGNAL \DOUT[0]~37_combout\ : std_logic;
SIGNAL \DOUT[0]~38_combout\ : std_logic;
SIGNAL \DOUT[0]~39_combout\ : std_logic;
SIGNAL \DOUT[0]~47_combout\ : std_logic;
SIGNAL \DOUT[15]~48_combout\ : std_logic;
SIGNAL \DOUT[15]~48clkctrl_outclk\ : std_logic;
SIGNAL \DOUT[0]$latch~combout\ : std_logic;
SIGNAL \DOUT[0]_1561~combout\ : std_logic;
SIGNAL \DIN[9]~input_o\ : std_logic;
SIGNAL \reg_gen:19:regs|y[1]~feeder_combout\ : std_logic;
SIGNAL \DOUT[1]~66_combout\ : std_logic;
SIGNAL \DOUT[1]~67_combout\ : std_logic;
SIGNAL \DOUT[1]~68_combout\ : std_logic;
SIGNAL \DIN[1]~input_o\ : std_logic;
SIGNAL \reg_gen:23:regs|y[1]~feeder_combout\ : std_logic;
SIGNAL \DOUT[1]~65_combout\ : std_logic;
SIGNAL \DOUT[1]~69_combout\ : std_logic;
SIGNAL \reg_gen:10:regs|y[1]~feeder_combout\ : std_logic;
SIGNAL \DOUT[1]~51_combout\ : std_logic;
SIGNAL \DOUT[1]~52_combout\ : std_logic;
SIGNAL \DOUT[1]~49_combout\ : std_logic;
SIGNAL \DOUT[1]~50_combout\ : std_logic;
SIGNAL \DOUT[1]~53_combout\ : std_logic;
SIGNAL \reg_gen:13:regs|y[1]~feeder_combout\ : std_logic;
SIGNAL \reg_gen:21:regs|y[1]~feeder_combout\ : std_logic;
SIGNAL \DOUT[1]~54_combout\ : std_logic;
SIGNAL \DOUT[1]~55_combout\ : std_logic;
SIGNAL \DOUT[1]~56_combout\ : std_logic;
SIGNAL \DOUT[1]~57_combout\ : std_logic;
SIGNAL \DOUT[1]~58_combout\ : std_logic;
SIGNAL \DOUT[1]~61_combout\ : std_logic;
SIGNAL \DOUT[1]~62_combout\ : std_logic;
SIGNAL \DOUT[1]~59_combout\ : std_logic;
SIGNAL \DOUT[1]~60_combout\ : std_logic;
SIGNAL \DOUT[1]~63_combout\ : std_logic;
SIGNAL \DOUT[1]~64_combout\ : std_logic;
SIGNAL \DOUT[1]~70_combout\ : std_logic;
SIGNAL \DOUT[1]$latch~combout\ : std_logic;
SIGNAL \DIN[10]~input_o\ : std_logic;
SIGNAL \DOUT[2]~87_combout\ : std_logic;
SIGNAL \DOUT[2]~88_combout\ : std_logic;
SIGNAL \DOUT[2]~89_combout\ : std_logic;
SIGNAL \DOUT[2]~90_combout\ : std_logic;
SIGNAL \DIN[2]~input_o\ : std_logic;
SIGNAL \DOUT[2]~91_combout\ : std_logic;
SIGNAL \DOUT[2]~71_combout\ : std_logic;
SIGNAL \DOUT[2]~72_combout\ : std_logic;
SIGNAL \DOUT[2]~73_combout\ : std_logic;
SIGNAL \DOUT[2]~74_combout\ : std_logic;
SIGNAL \DOUT[2]~75_combout\ : std_logic;
SIGNAL \reg_gen:17:regs|y[2]~feeder_combout\ : std_logic;
SIGNAL \DOUT[2]~78_combout\ : std_logic;
SIGNAL \DOUT[2]~79_combout\ : std_logic;
SIGNAL \reg_gen:13:regs|y[2]~feeder_combout\ : std_logic;
SIGNAL \DOUT[2]~76_combout\ : std_logic;
SIGNAL \DOUT[2]~77_combout\ : std_logic;
SIGNAL \DOUT[2]~80_combout\ : std_logic;
SIGNAL \DOUT[2]~82_combout\ : std_logic;
SIGNAL \DOUT[2]~81_combout\ : std_logic;
SIGNAL \DOUT[2]~83_combout\ : std_logic;
SIGNAL \DOUT[2]~84_combout\ : std_logic;
SIGNAL \DOUT[2]~85_combout\ : std_logic;
SIGNAL \DOUT[2]~86_combout\ : std_logic;
SIGNAL \DOUT[2]~92_combout\ : std_logic;
SIGNAL \DOUT[2]$latch~combout\ : std_logic;
SIGNAL \DIN[3]~input_o\ : std_logic;
SIGNAL \DOUT[3]~93_combout\ : std_logic;
SIGNAL \DOUT[3]~94_combout\ : std_logic;
SIGNAL \DOUT[3]~95_combout\ : std_logic;
SIGNAL \DOUT[3]~96_combout\ : std_logic;
SIGNAL \DOUT[3]~97_combout\ : std_logic;
SIGNAL \reg_gen:24:regs|y[3]~feeder_combout\ : std_logic;
SIGNAL \DOUT[3]~103_combout\ : std_logic;
SIGNAL \DOUT[3]~104_combout\ : std_logic;
SIGNAL \reg_gen:12:regs|y[3]~feeder_combout\ : std_logic;
SIGNAL \DOUT[3]~105_combout\ : std_logic;
SIGNAL \DOUT[3]~106_combout\ : std_logic;
SIGNAL \DOUT[3]~107_combout\ : std_logic;
SIGNAL \DIN[11]~input_o\ : std_logic;
SIGNAL \DOUT[3]~100_combout\ : std_logic;
SIGNAL \DOUT[3]~101_combout\ : std_logic;
SIGNAL \DOUT[3]~98_combout\ : std_logic;
SIGNAL \DOUT[3]~99_combout\ : std_logic;
SIGNAL \DOUT[3]~102_combout\ : std_logic;
SIGNAL \DOUT[3]~108_combout\ : std_logic;
SIGNAL \DOUT[3]~109_combout\ : std_logic;
SIGNAL \reg_gen:11:regs|y[3]~feeder_combout\ : std_logic;
SIGNAL \reg_gen:19:regs|y[3]~feeder_combout\ : std_logic;
SIGNAL \DOUT[3]~110_combout\ : std_logic;
SIGNAL \DOUT[3]~111_combout\ : std_logic;
SIGNAL \DOUT[3]~112_combout\ : std_logic;
SIGNAL \DOUT[3]~113_combout\ : std_logic;
SIGNAL \DOUT[3]~114_combout\ : std_logic;
SIGNAL \DOUT[3]$latch~combout\ : std_logic;
SIGNAL \DIN[4]~input_o\ : std_logic;
SIGNAL \DOUT[4]~127_combout\ : std_logic;
SIGNAL \DOUT[4]~128_combout\ : std_logic;
SIGNAL \DOUT[4]~126_combout\ : std_logic;
SIGNAL \reg_gen:24:regs|y[4]~feeder_combout\ : std_logic;
SIGNAL \DOUT[4]~125_combout\ : std_logic;
SIGNAL \DOUT[4]~129_combout\ : std_logic;
SIGNAL \DIN[12]~input_o\ : std_logic;
SIGNAL \DOUT[4]~122_combout\ : std_logic;
SIGNAL \DOUT[4]~123_combout\ : std_logic;
SIGNAL \DOUT[4]~120_combout\ : std_logic;
SIGNAL \DOUT[4]~121_combout\ : std_logic;
SIGNAL \DOUT[4]~124_combout\ : std_logic;
SIGNAL \DOUT[4]~130_combout\ : std_logic;
SIGNAL \DOUT[4]~115_combout\ : std_logic;
SIGNAL \DOUT[4]~116_combout\ : std_logic;
SIGNAL \reg_gen:18:regs|y[4]~feeder_combout\ : std_logic;
SIGNAL \reg_gen:10:regs|y[4]~feeder_combout\ : std_logic;
SIGNAL \DOUT[4]~117_combout\ : std_logic;
SIGNAL \DOUT[4]~118_combout\ : std_logic;
SIGNAL \DOUT[4]~119_combout\ : std_logic;
SIGNAL \reg_gen:11:regs|y[4]~feeder_combout\ : std_logic;
SIGNAL \DOUT[4]~132_combout\ : std_logic;
SIGNAL \DOUT[4]~133_combout\ : std_logic;
SIGNAL \reg_gen:23:regs|y[4]~feeder_combout\ : std_logic;
SIGNAL \DOUT[4]~131_combout\ : std_logic;
SIGNAL \DOUT[4]~134_combout\ : std_logic;
SIGNAL \DOUT[4]~135_combout\ : std_logic;
SIGNAL \DOUT[4]~136_combout\ : std_logic;
SIGNAL \DOUT[4]$latch~combout\ : std_logic;
SIGNAL \DIN[13]~input_o\ : std_logic;
SIGNAL \DOUT[5]~153_combout\ : std_logic;
SIGNAL \reg_gen:15:regs|y[5]~feeder_combout\ : std_logic;
SIGNAL \reg_gen:19:regs|y[5]~feeder_combout\ : std_logic;
SIGNAL \DOUT[5]~154_combout\ : std_logic;
SIGNAL \DOUT[5]~155_combout\ : std_logic;
SIGNAL \DOUT[5]~156_combout\ : std_logic;
SIGNAL \DIN[5]~input_o\ : std_logic;
SIGNAL \DOUT[5]~157_combout\ : std_logic;
SIGNAL \reg_gen:13:regs|y[5]~feeder_combout\ : std_logic;
SIGNAL \reg_gen:21:regs|y[5]~feeder_combout\ : std_logic;
SIGNAL \DOUT[5]~137_combout\ : std_logic;
SIGNAL \DOUT[5]~138_combout\ : std_logic;
SIGNAL \reg_gen:17:regs|y[5]~feeder_combout\ : std_logic;
SIGNAL \DOUT[5]~139_combout\ : std_logic;
SIGNAL \DOUT[5]~140_combout\ : std_logic;
SIGNAL \DOUT[5]~141_combout\ : std_logic;
SIGNAL \DOUT[5]~142_combout\ : std_logic;
SIGNAL \DOUT[5]~143_combout\ : std_logic;
SIGNAL \reg_gen:18:regs|y[5]~feeder_combout\ : std_logic;
SIGNAL \reg_gen:10:regs|y[5]~feeder_combout\ : std_logic;
SIGNAL \DOUT[5]~144_combout\ : std_logic;
SIGNAL \DOUT[5]~145_combout\ : std_logic;
SIGNAL \DOUT[5]~146_combout\ : std_logic;
SIGNAL \reg_gen:12:regs|y[5]~feeder_combout\ : std_logic;
SIGNAL \DOUT[5]~149_combout\ : std_logic;
SIGNAL \DOUT[5]~150_combout\ : std_logic;
SIGNAL \DOUT[5]~147_combout\ : std_logic;
SIGNAL \DOUT[5]~148_combout\ : std_logic;
SIGNAL \DOUT[5]~151_combout\ : std_logic;
SIGNAL \DOUT[5]~152_combout\ : std_logic;
SIGNAL \DOUT[5]~158_combout\ : std_logic;
SIGNAL \DOUT[5]$latch~combout\ : std_logic;
SIGNAL \DIN[14]~input_o\ : std_logic;
SIGNAL \reg_gen:23:regs|y[6]~feeder_combout\ : std_logic;
SIGNAL \DOUT[6]~175_combout\ : std_logic;
SIGNAL \DOUT[6]~176_combout\ : std_logic;
SIGNAL \DOUT[6]~177_combout\ : std_logic;
SIGNAL \DOUT[6]~178_combout\ : std_logic;
SIGNAL \DIN[6]~input_o\ : std_logic;
SIGNAL \DOUT[6]~179_combout\ : std_logic;
SIGNAL \reg_gen:13:regs|y[6]~feeder_combout\ : std_logic;
SIGNAL \reg_gen:21:regs|y[6]~feeder_combout\ : std_logic;
SIGNAL \DOUT[6]~164_combout\ : std_logic;
SIGNAL \DOUT[6]~165_combout\ : std_logic;
SIGNAL \reg_gen:17:regs|y[6]~feeder_combout\ : std_logic;
SIGNAL \DOUT[6]~166_combout\ : std_logic;
SIGNAL \DOUT[6]~167_combout\ : std_logic;
SIGNAL \DOUT[6]~168_combout\ : std_logic;
SIGNAL \reg_gen:24:regs|y[6]~feeder_combout\ : std_logic;
SIGNAL \DOUT[6]~169_combout\ : std_logic;
SIGNAL \reg_gen:12:regs|y[6]~feeder_combout\ : std_logic;
SIGNAL \reg_gen:20:regs|y[6]~feeder_combout\ : std_logic;
SIGNAL \DOUT[6]~171_combout\ : std_logic;
SIGNAL \DOUT[6]~172_combout\ : std_logic;
SIGNAL \DOUT[6]~170_combout\ : std_logic;
SIGNAL \DOUT[6]~173_combout\ : std_logic;
SIGNAL \DOUT[6]~174_combout\ : std_logic;
SIGNAL \DOUT[6]~159_combout\ : std_logic;
SIGNAL \DOUT[6]~160_combout\ : std_logic;
SIGNAL \DOUT[6]~161_combout\ : std_logic;
SIGNAL \DOUT[6]~162_combout\ : std_logic;
SIGNAL \DOUT[6]~163_combout\ : std_logic;
SIGNAL \DOUT[6]~180_combout\ : std_logic;
SIGNAL \DOUT[6]$latch~combout\ : std_logic;
SIGNAL \DIN[7]~input_o\ : std_logic;
SIGNAL \DOUT[7]~186_combout\ : std_logic;
SIGNAL \DOUT[7]~187_combout\ : std_logic;
SIGNAL \reg_gen:18:regs|y[7]~feeder_combout\ : std_logic;
SIGNAL \reg_gen:10:regs|y[7]~feeder_combout\ : std_logic;
SIGNAL \DOUT[7]~188_combout\ : std_logic;
SIGNAL \DOUT[7]~189_combout\ : std_logic;
SIGNAL \DOUT[7]~190_combout\ : std_logic;
SIGNAL \reg_gen:24:regs|y[7]~feeder_combout\ : std_logic;
SIGNAL \DOUT[7]~191_combout\ : std_logic;
SIGNAL \DOUT[7]~192_combout\ : std_logic;
SIGNAL \DOUT[7]~193_combout\ : std_logic;
SIGNAL \DOUT[7]~194_combout\ : std_logic;
SIGNAL \DOUT[7]~195_combout\ : std_logic;
SIGNAL \DOUT[7]~196_combout\ : std_logic;
SIGNAL \DIN[15]~input_o\ : std_logic;
SIGNAL \DOUT[7]~183_combout\ : std_logic;
SIGNAL \DOUT[7]~184_combout\ : std_logic;
SIGNAL \reg_gen:13:regs|y[7]~feeder_combout\ : std_logic;
SIGNAL \reg_gen:21:regs|y[7]~feeder_combout\ : std_logic;
SIGNAL \DOUT[7]~181_combout\ : std_logic;
SIGNAL \DOUT[7]~182_combout\ : std_logic;
SIGNAL \DOUT[7]~185_combout\ : std_logic;
SIGNAL \DOUT[7]~197_combout\ : std_logic;
SIGNAL \reg_gen:15:regs|y[7]~feeder_combout\ : std_logic;
SIGNAL \reg_gen:19:regs|y[7]~feeder_combout\ : std_logic;
SIGNAL \DOUT[7]~198_combout\ : std_logic;
SIGNAL \DOUT[7]~199_combout\ : std_logic;
SIGNAL \DOUT[7]~200_combout\ : std_logic;
SIGNAL \DOUT[7]~201_combout\ : std_logic;
SIGNAL \DOUT[7]~202_combout\ : std_logic;
SIGNAL \DOUT[7]$latch~combout\ : std_logic;
SIGNAL \DOUT[8]~209_combout\ : std_logic;
SIGNAL \DOUT[8]~203_combout\ : std_logic;
SIGNAL \DOUT[8]~204_combout\ : std_logic;
SIGNAL \DOUT[8]~205_combout\ : std_logic;
SIGNAL \DOUT[8]~206_combout\ : std_logic;
SIGNAL \DOUT[8]~207_combout\ : std_logic;
SIGNAL \DOUT[8]~208_combout\ : std_logic;
SIGNAL \DOUT[8]~210_combout\ : std_logic;
SIGNAL \reg_gen:31:regs|y[0]~feeder_combout\ : std_logic;
SIGNAL \DOUT[8]~211_combout\ : std_logic;
SIGNAL \DOUT[8]$latch~combout\ : std_logic;
SIGNAL \DOUT[9]~212_combout\ : std_logic;
SIGNAL \DOUT[9]~213_combout\ : std_logic;
SIGNAL \DOUT[9]~214_combout\ : std_logic;
SIGNAL \DOUT[9]~215_combout\ : std_logic;
SIGNAL \DOUT[9]~216_combout\ : std_logic;
SIGNAL \DOUT[9]~217_combout\ : std_logic;
SIGNAL \DOUT[9]~218_combout\ : std_logic;
SIGNAL \DOUT[9]$latch~combout\ : std_logic;
SIGNAL \DOUT[10]~221_combout\ : std_logic;
SIGNAL \DOUT[10]~222_combout\ : std_logic;
SIGNAL \DOUT[10]~219_combout\ : std_logic;
SIGNAL \DOUT[10]~220_combout\ : std_logic;
SIGNAL \DOUT[10]~223_combout\ : std_logic;
SIGNAL \DOUT[10]~224_combout\ : std_logic;
SIGNAL \DOUT[10]$latch~combout\ : std_logic;
SIGNAL \DOUT[11]~225_combout\ : std_logic;
SIGNAL \DOUT[11]~226_combout\ : std_logic;
SIGNAL \DOUT[11]~227_combout\ : std_logic;
SIGNAL \DOUT[11]~228_combout\ : std_logic;
SIGNAL \DOUT[11]~229_combout\ : std_logic;
SIGNAL \DOUT[11]~230_combout\ : std_logic;
SIGNAL \DOUT[11]$latch~combout\ : std_logic;
SIGNAL \reg_gen:31:regs|y[4]~feeder_combout\ : std_logic;
SIGNAL \DOUT[12]~234_combout\ : std_logic;
SIGNAL \DOUT[12]~235_combout\ : std_logic;
SIGNAL \DOUT[12]~257_combout\ : std_logic;
SIGNAL \DOUT[12]~231_combout\ : std_logic;
SIGNAL \DOUT[12]~232_combout\ : std_logic;
SIGNAL \DOUT[12]~233_combout\ : std_logic;
SIGNAL \DOUT[12]~236_combout\ : std_logic;
SIGNAL \DOUT[12]~237_combout\ : std_logic;
SIGNAL \DOUT[12]$latch~combout\ : std_logic;
SIGNAL \DOUT[13]~238_combout\ : std_logic;
SIGNAL \DOUT[13]~239_combout\ : std_logic;
SIGNAL \DOUT[13]~240_combout\ : std_logic;
SIGNAL \DOUT[13]~241_combout\ : std_logic;
SIGNAL \DOUT[13]~242_combout\ : std_logic;
SIGNAL \DOUT[13]~243_combout\ : std_logic;
SIGNAL \DOUT[13]$latch~combout\ : std_logic;
SIGNAL \DOUT[14]~246_combout\ : std_logic;
SIGNAL \DOUT[14]~247_combout\ : std_logic;
SIGNAL \DOUT[14]~244_combout\ : std_logic;
SIGNAL \DOUT[14]~245_combout\ : std_logic;
SIGNAL \DOUT[14]~248_combout\ : std_logic;
SIGNAL \DOUT[14]~249_combout\ : std_logic;
SIGNAL \DOUT[14]$latch~combout\ : std_logic;
SIGNAL \DOUT[15]~250_combout\ : std_logic;
SIGNAL \DOUT[15]~251_combout\ : std_logic;
SIGNAL \DOUT[15]~252_combout\ : std_logic;
SIGNAL \DOUT[15]~253_combout\ : std_logic;
SIGNAL \DOUT[15]~254_combout\ : std_logic;
SIGNAL \DOUT[15]~255_combout\ : std_logic;
SIGNAL \DOUT[15]~256_combout\ : std_logic;
SIGNAL \DOUT[15]$latch~combout\ : std_logic;
SIGNAL dec_to_en : std_logic_vector(32 DOWNTO 0);
SIGNAL \reg_gen:27:regs|y\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \reg_gen:3:regs|y\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \reg_gen:19:regs|y\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \reg_gen:11:regs|y\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \reg_gen:15:regs|y\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \reg_gen:7:regs|y\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \reg_gen:23:regs|y\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \reg_gen:28:regs|y\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \reg_gen:5:regs|y\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \reg_gen:26:regs|y\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \reg_gen:13:regs|y\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \reg_gen:2:regs|y\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \reg_gen:25:regs|y\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \reg_gen:21:regs|y\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \reg_gen:10:regs|y\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \reg_gen:22:regs|y\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \reg_gen:14:regs|y\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \reg_gen:6:regs|y\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \reg_gen:29:regs|y\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \reg_gen:31:regs|y\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \reg_gen:30:regs|y\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \reg_gen:18:regs|y\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \reg_gen:17:regs|y\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \reg_gen:9:regs|y\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \reg_gen:1:regs|y\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \reg_gen:24:regs|y\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \reg_gen:8:regs|y\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \reg_gen:16:regs|y\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \reg_gen:0:regs|y\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \reg_gen:12:regs|y\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \reg_gen:20:regs|y\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \reg_gen:4:regs|y\ : std_logic_vector(7 DOWNTO 0);

COMPONENT hard_block
    PORT (
	devoe : IN std_logic;
	devclrn : IN std_logic;
	devpor : IN std_logic);
END COMPONENT;

BEGIN

ww_ADDR <= ADDR;
ww_DIN <= DIN;
ww_WE <= WE;
ww_RE <= RE;
ww_CLK <= CLK;
DOUT <= ww_DOUT;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

\DOUT[15]~48clkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \DOUT[15]~48_combout\);

\CLK~inputclkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \CLK~input_o\);
auto_generated_inst : hard_block
PORT MAP (
	devoe => ww_devoe,
	devclrn => ww_devclrn,
	devpor => ww_devpor);

-- Location: IOOBUF_X31_Y73_N2
\DOUT[0]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \DOUT[0]$latch~combout\,
	oe => \DOUT[0]_1561~combout\,
	devoe => ww_devoe,
	o => \DOUT[0]~output_o\);

-- Location: IOOBUF_X11_Y73_N16
\DOUT[1]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \DOUT[1]$latch~combout\,
	oe => \DOUT[0]_1561~combout\,
	devoe => ww_devoe,
	o => \DOUT[1]~output_o\);

-- Location: IOOBUF_X18_Y73_N23
\DOUT[2]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \DOUT[2]$latch~combout\,
	oe => \DOUT[0]_1561~combout\,
	devoe => ww_devoe,
	o => \DOUT[2]~output_o\);

-- Location: IOOBUF_X13_Y73_N23
\DOUT[3]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \DOUT[3]$latch~combout\,
	oe => \DOUT[0]_1561~combout\,
	devoe => ww_devoe,
	o => \DOUT[3]~output_o\);

-- Location: IOOBUF_X27_Y73_N16
\DOUT[4]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \DOUT[4]$latch~combout\,
	oe => \DOUT[0]_1561~combout\,
	devoe => ww_devoe,
	o => \DOUT[4]~output_o\);

-- Location: IOOBUF_X16_Y73_N2
\DOUT[5]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \DOUT[5]$latch~combout\,
	oe => \DOUT[0]_1561~combout\,
	devoe => ww_devoe,
	o => \DOUT[5]~output_o\);

-- Location: IOOBUF_X13_Y73_N16
\DOUT[6]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \DOUT[6]$latch~combout\,
	oe => \DOUT[0]_1561~combout\,
	devoe => ww_devoe,
	o => \DOUT[6]~output_o\);

-- Location: IOOBUF_X11_Y73_N9
\DOUT[7]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \DOUT[7]$latch~combout\,
	oe => \DOUT[0]_1561~combout\,
	devoe => ww_devoe,
	o => \DOUT[7]~output_o\);

-- Location: IOOBUF_X31_Y73_N9
\DOUT[8]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \DOUT[8]$latch~combout\,
	oe => \DOUT[0]_1561~combout\,
	devoe => ww_devoe,
	o => \DOUT[8]~output_o\);

-- Location: IOOBUF_X13_Y73_N9
\DOUT[9]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \DOUT[9]$latch~combout\,
	oe => \DOUT[0]_1561~combout\,
	devoe => ww_devoe,
	o => \DOUT[9]~output_o\);

-- Location: IOOBUF_X18_Y73_N16
\DOUT[10]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \DOUT[10]$latch~combout\,
	oe => \DOUT[0]_1561~combout\,
	devoe => ww_devoe,
	o => \DOUT[10]~output_o\);

-- Location: IOOBUF_X13_Y73_N2
\DOUT[11]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \DOUT[11]$latch~combout\,
	oe => \DOUT[0]_1561~combout\,
	devoe => ww_devoe,
	o => \DOUT[11]~output_o\);

-- Location: IOOBUF_X27_Y73_N9
\DOUT[12]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \DOUT[12]$latch~combout\,
	oe => \DOUT[0]_1561~combout\,
	devoe => ww_devoe,
	o => \DOUT[12]~output_o\);

-- Location: IOOBUF_X16_Y73_N9
\DOUT[13]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \DOUT[13]$latch~combout\,
	oe => \DOUT[0]_1561~combout\,
	devoe => ww_devoe,
	o => \DOUT[13]~output_o\);

-- Location: IOOBUF_X11_Y73_N2
\DOUT[14]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \DOUT[14]$latch~combout\,
	oe => \DOUT[0]_1561~combout\,
	devoe => ww_devoe,
	o => \DOUT[14]~output_o\);

-- Location: IOOBUF_X11_Y73_N23
\DOUT[15]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \DOUT[15]$latch~combout\,
	oe => \DOUT[0]_1561~combout\,
	devoe => ww_devoe,
	o => \DOUT[15]~output_o\);

-- Location: IOIBUF_X25_Y73_N15
\RE~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_RE,
	o => \RE~input_o\);

-- Location: IOIBUF_X25_Y73_N22
\ADDR[1]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_ADDR(1),
	o => \ADDR[1]~input_o\);

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

-- Location: IOIBUF_X33_Y73_N1
\DIN[0]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_DIN(0),
	o => \DIN[0]~input_o\);

-- Location: LCCOMB_X31_Y71_N20
\reg_gen:18:regs|y[0]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \reg_gen:18:regs|y[0]~feeder_combout\ = \DIN[0]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \DIN[0]~input_o\,
	combout => \reg_gen:18:regs|y[0]~feeder_combout\);

-- Location: IOIBUF_X27_Y73_N22
\ADDR[2]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_ADDR(2),
	o => \ADDR[2]~input_o\);

-- Location: IOIBUF_X29_Y73_N1
\ADDR[0]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_ADDR(0),
	o => \ADDR[0]~input_o\);

-- Location: IOIBUF_X23_Y73_N1
\ADDR[3]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_ADDR(3),
	o => \ADDR[3]~input_o\);

-- Location: IOIBUF_X23_Y73_N22
\ADDR[4]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_ADDR(4),
	o => \ADDR[4]~input_o\);

-- Location: IOIBUF_X38_Y73_N15
\WE~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_WE,
	o => \WE~input_o\);

-- Location: LCCOMB_X29_Y70_N16
\dec_to_en[19]~22\ : cycloneive_lcell_comb
-- Equation(s):
-- \dec_to_en[19]~22_combout\ = (!\ADDR[3]~input_o\ & (\ADDR[4]~input_o\ & \WE~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ADDR[3]~input_o\,
	datab => \ADDR[4]~input_o\,
	datac => \WE~input_o\,
	combout => \dec_to_en[19]~22_combout\);

-- Location: LCCOMB_X30_Y72_N26
\dec_to_en[18]\ : cycloneive_lcell_comb
-- Equation(s):
-- dec_to_en(18) = (!\ADDR[2]~input_o\ & (\dec_to_en[19]~22_combout\ & (\ADDR[1]~input_o\ $ (\ADDR[0]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001001000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ADDR[1]~input_o\,
	datab => \ADDR[2]~input_o\,
	datac => \ADDR[0]~input_o\,
	datad => \dec_to_en[19]~22_combout\,
	combout => dec_to_en(18));

-- Location: FF_X31_Y71_N21
\reg_gen:18:regs|y[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \reg_gen:18:regs|y[0]~feeder_combout\,
	ena => dec_to_en(18),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \reg_gen:18:regs|y\(0));

-- Location: LCCOMB_X29_Y72_N4
\dec_to_en[31]~24\ : cycloneive_lcell_comb
-- Equation(s):
-- \dec_to_en[31]~24_combout\ = (\ADDR[3]~input_o\ & (\WE~input_o\ & \ADDR[4]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ADDR[3]~input_o\,
	datac => \WE~input_o\,
	datad => \ADDR[4]~input_o\,
	combout => \dec_to_en[31]~24_combout\);

-- Location: LCCOMB_X29_Y72_N8
\dec_to_en[26]\ : cycloneive_lcell_comb
-- Equation(s):
-- dec_to_en(26) = (!\ADDR[2]~input_o\ & (\dec_to_en[31]~24_combout\ & (\ADDR[0]~input_o\ $ (\ADDR[1]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ADDR[2]~input_o\,
	datab => \dec_to_en[31]~24_combout\,
	datac => \ADDR[0]~input_o\,
	datad => \ADDR[1]~input_o\,
	combout => dec_to_en(26));

-- Location: FF_X30_Y71_N11
\reg_gen:26:regs|y[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	asdata => \DIN[0]~input_o\,
	sload => VCC,
	ena => dec_to_en(26),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \reg_gen:26:regs|y\(0));

-- Location: LCCOMB_X29_Y70_N26
\dec_to_en[3]~23\ : cycloneive_lcell_comb
-- Equation(s):
-- \dec_to_en[3]~23_combout\ = (!\ADDR[3]~input_o\ & (!\ADDR[4]~input_o\ & \WE~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ADDR[3]~input_o\,
	datab => \ADDR[4]~input_o\,
	datac => \WE~input_o\,
	combout => \dec_to_en[3]~23_combout\);

-- Location: LCCOMB_X29_Y72_N18
\dec_to_en[2]\ : cycloneive_lcell_comb
-- Equation(s):
-- dec_to_en(2) = (!\ADDR[2]~input_o\ & (\dec_to_en[3]~23_combout\ & (\ADDR[0]~input_o\ $ (\ADDR[1]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001010000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ADDR[2]~input_o\,
	datab => \ADDR[0]~input_o\,
	datac => \ADDR[1]~input_o\,
	datad => \dec_to_en[3]~23_combout\,
	combout => dec_to_en(2));

-- Location: FF_X30_Y71_N21
\reg_gen:2:regs|y[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	asdata => \DIN[0]~input_o\,
	sload => VCC,
	ena => dec_to_en(2),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \reg_gen:2:regs|y\(0));

-- Location: LCCOMB_X30_Y72_N20
\reg_gen:10:regs|y[0]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \reg_gen:10:regs|y[0]~feeder_combout\ = \DIN[0]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \DIN[0]~input_o\,
	combout => \reg_gen:10:regs|y[0]~feeder_combout\);

-- Location: LCCOMB_X29_Y70_N30
\dec_to_en[11]~21\ : cycloneive_lcell_comb
-- Equation(s):
-- \dec_to_en[11]~21_combout\ = (\ADDR[3]~input_o\ & (!\ADDR[4]~input_o\ & \WE~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ADDR[3]~input_o\,
	datab => \ADDR[4]~input_o\,
	datac => \WE~input_o\,
	combout => \dec_to_en[11]~21_combout\);

-- Location: LCCOMB_X30_Y72_N8
\dec_to_en[10]\ : cycloneive_lcell_comb
-- Equation(s):
-- dec_to_en(10) = (!\ADDR[2]~input_o\ & (\dec_to_en[11]~21_combout\ & (\ADDR[1]~input_o\ $ (\ADDR[0]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000011000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ADDR[1]~input_o\,
	datab => \ADDR[0]~input_o\,
	datac => \ADDR[2]~input_o\,
	datad => \dec_to_en[11]~21_combout\,
	combout => dec_to_en(10));

-- Location: FF_X30_Y72_N21
\reg_gen:10:regs|y[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \reg_gen:10:regs|y[0]~feeder_combout\,
	ena => dec_to_en(10),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \reg_gen:10:regs|y\(0));

-- Location: LCCOMB_X30_Y71_N20
\DOUT[0]~24\ : cycloneive_lcell_comb
-- Equation(s):
-- \DOUT[0]~24_combout\ = (\ADDR[3]~input_o\ & ((\ADDR[4]~input_o\) # ((\reg_gen:10:regs|y\(0))))) # (!\ADDR[3]~input_o\ & (!\ADDR[4]~input_o\ & (\reg_gen:2:regs|y\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ADDR[3]~input_o\,
	datab => \ADDR[4]~input_o\,
	datac => \reg_gen:2:regs|y\(0),
	datad => \reg_gen:10:regs|y\(0),
	combout => \DOUT[0]~24_combout\);

-- Location: LCCOMB_X30_Y71_N10
\DOUT[0]~25\ : cycloneive_lcell_comb
-- Equation(s):
-- \DOUT[0]~25_combout\ = (\ADDR[4]~input_o\ & ((\DOUT[0]~24_combout\ & ((\reg_gen:26:regs|y\(0)))) # (!\DOUT[0]~24_combout\ & (\reg_gen:18:regs|y\(0))))) # (!\ADDR[4]~input_o\ & (((\DOUT[0]~24_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \reg_gen:18:regs|y\(0),
	datab => \ADDR[4]~input_o\,
	datac => \reg_gen:26:regs|y\(0),
	datad => \DOUT[0]~24_combout\,
	combout => \DOUT[0]~25_combout\);

-- Location: LCCOMB_X27_Y71_N6
\dec_to_en[30]\ : cycloneive_lcell_comb
-- Equation(s):
-- dec_to_en(30) = (\dec_to_en[31]~24_combout\ & (\ADDR[2]~input_o\ & (\ADDR[1]~input_o\ $ (\ADDR[0]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dec_to_en[31]~24_combout\,
	datab => \ADDR[1]~input_o\,
	datac => \ADDR[0]~input_o\,
	datad => \ADDR[2]~input_o\,
	combout => dec_to_en(30));

-- Location: FF_X27_Y71_N27
\reg_gen:30:regs|y[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	asdata => \DIN[0]~input_o\,
	sload => VCC,
	ena => dec_to_en(30),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \reg_gen:30:regs|y\(0));

-- Location: LCCOMB_X29_Y71_N12
\dec_to_en[14]\ : cycloneive_lcell_comb
-- Equation(s):
-- dec_to_en(14) = (\dec_to_en[11]~21_combout\ & (\ADDR[2]~input_o\ & (\ADDR[1]~input_o\ $ (\ADDR[0]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dec_to_en[11]~21_combout\,
	datab => \ADDR[1]~input_o\,
	datac => \ADDR[0]~input_o\,
	datad => \ADDR[2]~input_o\,
	combout => dec_to_en(14));

-- Location: FF_X27_Y71_N13
\reg_gen:14:regs|y[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	asdata => \DIN[0]~input_o\,
	sload => VCC,
	ena => dec_to_en(14),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \reg_gen:14:regs|y\(0));

-- Location: LCCOMB_X29_Y71_N24
\dec_to_en[6]\ : cycloneive_lcell_comb
-- Equation(s):
-- dec_to_en(6) = (\dec_to_en[3]~23_combout\ & (\ADDR[2]~input_o\ & (\ADDR[0]~input_o\ $ (\ADDR[1]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ADDR[0]~input_o\,
	datab => \ADDR[1]~input_o\,
	datac => \dec_to_en[3]~23_combout\,
	datad => \ADDR[2]~input_o\,
	combout => dec_to_en(6));

-- Location: FF_X28_Y71_N7
\reg_gen:6:regs|y[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	asdata => \DIN[0]~input_o\,
	sload => VCC,
	ena => dec_to_en(6),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \reg_gen:6:regs|y\(0));

-- Location: LCCOMB_X29_Y71_N2
\dec_to_en[22]\ : cycloneive_lcell_comb
-- Equation(s):
-- dec_to_en(22) = (\dec_to_en[19]~22_combout\ & (\ADDR[2]~input_o\ & (\ADDR[0]~input_o\ $ (\ADDR[1]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ADDR[0]~input_o\,
	datab => \dec_to_en[19]~22_combout\,
	datac => \ADDR[1]~input_o\,
	datad => \ADDR[2]~input_o\,
	combout => dec_to_en(22));

-- Location: FF_X28_Y71_N29
\reg_gen:22:regs|y[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	asdata => \DIN[0]~input_o\,
	sload => VCC,
	ena => dec_to_en(22),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \reg_gen:22:regs|y\(0));

-- Location: LCCOMB_X28_Y71_N6
\DOUT[0]~22\ : cycloneive_lcell_comb
-- Equation(s):
-- \DOUT[0]~22_combout\ = (\ADDR[3]~input_o\ & (\ADDR[4]~input_o\)) # (!\ADDR[3]~input_o\ & ((\ADDR[4]~input_o\ & ((\reg_gen:22:regs|y\(0)))) # (!\ADDR[4]~input_o\ & (\reg_gen:6:regs|y\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ADDR[3]~input_o\,
	datab => \ADDR[4]~input_o\,
	datac => \reg_gen:6:regs|y\(0),
	datad => \reg_gen:22:regs|y\(0),
	combout => \DOUT[0]~22_combout\);

-- Location: LCCOMB_X27_Y71_N12
\DOUT[0]~23\ : cycloneive_lcell_comb
-- Equation(s):
-- \DOUT[0]~23_combout\ = (\ADDR[3]~input_o\ & ((\DOUT[0]~22_combout\ & (\reg_gen:30:regs|y\(0))) # (!\DOUT[0]~22_combout\ & ((\reg_gen:14:regs|y\(0)))))) # (!\ADDR[3]~input_o\ & (((\DOUT[0]~22_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \reg_gen:30:regs|y\(0),
	datab => \ADDR[3]~input_o\,
	datac => \reg_gen:14:regs|y\(0),
	datad => \DOUT[0]~22_combout\,
	combout => \DOUT[0]~23_combout\);

-- Location: LCCOMB_X30_Y71_N28
\DOUT[0]~26\ : cycloneive_lcell_comb
-- Equation(s):
-- \DOUT[0]~26_combout\ = (\ADDR[2]~input_o\ & ((\DOUT[0]~23_combout\))) # (!\ADDR[2]~input_o\ & (\DOUT[0]~25_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \DOUT[0]~25_combout\,
	datab => \ADDR[2]~input_o\,
	datad => \DOUT[0]~23_combout\,
	combout => \DOUT[0]~26_combout\);

-- Location: LCCOMB_X26_Y70_N10
\DOUT[0]~41\ : cycloneive_lcell_comb
-- Equation(s):
-- \DOUT[0]~41_combout\ = (\ADDR[2]~input_o\ & ((\ADDR[4]~input_o\) # (!\ADDR[3]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ADDR[2]~input_o\,
	datab => \ADDR[4]~input_o\,
	datad => \ADDR[3]~input_o\,
	combout => \DOUT[0]~41_combout\);

-- Location: IOIBUF_X20_Y73_N15
\DIN[8]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_DIN(8),
	o => \DIN[8]~input_o\);

-- Location: LCCOMB_X24_Y71_N24
\dec_to_en[7]\ : cycloneive_lcell_comb
-- Equation(s):
-- dec_to_en(7) = (\ADDR[1]~input_o\ & (\dec_to_en[3]~23_combout\ & \ADDR[2]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \ADDR[1]~input_o\,
	datac => \dec_to_en[3]~23_combout\,
	datad => \ADDR[2]~input_o\,
	combout => dec_to_en(7));

-- Location: FF_X24_Y71_N17
\reg_gen:7:regs|y[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	asdata => \DIN[8]~input_o\,
	sload => VCC,
	ena => dec_to_en(7),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \reg_gen:7:regs|y\(0));

-- Location: LCCOMB_X24_Y71_N10
\dec_to_en[23]\ : cycloneive_lcell_comb
-- Equation(s):
-- dec_to_en(23) = (\dec_to_en[19]~22_combout\ & (\ADDR[1]~input_o\ & \ADDR[2]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dec_to_en[19]~22_combout\,
	datab => \ADDR[1]~input_o\,
	datad => \ADDR[2]~input_o\,
	combout => dec_to_en(23));

-- Location: FF_X23_Y71_N25
\reg_gen:23:regs|y[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	asdata => \DIN[8]~input_o\,
	sload => VCC,
	ena => dec_to_en(23),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \reg_gen:23:regs|y\(0));

-- Location: LCCOMB_X24_Y71_N16
\DOUT[0]~40\ : cycloneive_lcell_comb
-- Equation(s):
-- \DOUT[0]~40_combout\ = (\ADDR[4]~input_o\ & ((\reg_gen:23:regs|y\(0)))) # (!\ADDR[4]~input_o\ & (\reg_gen:7:regs|y\(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ADDR[4]~input_o\,
	datac => \reg_gen:7:regs|y\(0),
	datad => \reg_gen:23:regs|y\(0),
	combout => \DOUT[0]~40_combout\);

-- Location: LCCOMB_X24_Y71_N26
\reg_gen:15:regs|y[0]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \reg_gen:15:regs|y[0]~feeder_combout\ = \DIN[8]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \DIN[8]~input_o\,
	combout => \reg_gen:15:regs|y[0]~feeder_combout\);

-- Location: LCCOMB_X26_Y70_N2
\dec_to_en[15]\ : cycloneive_lcell_comb
-- Equation(s):
-- dec_to_en(15) = (\ADDR[2]~input_o\ & (\ADDR[1]~input_o\ & \dec_to_en[11]~21_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ADDR[2]~input_o\,
	datab => \ADDR[1]~input_o\,
	datad => \dec_to_en[11]~21_combout\,
	combout => dec_to_en(15));

-- Location: FF_X24_Y71_N27
\reg_gen:15:regs|y[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \reg_gen:15:regs|y[0]~feeder_combout\,
	ena => dec_to_en(15),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \reg_gen:15:regs|y\(0));

-- Location: LCCOMB_X26_Y72_N4
\DOUT[0]~42\ : cycloneive_lcell_comb
-- Equation(s):
-- \DOUT[0]~42_combout\ = (\ADDR[2]~input_o\ & \ADDR[3]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \ADDR[2]~input_o\,
	datad => \ADDR[3]~input_o\,
	combout => \DOUT[0]~42_combout\);

-- Location: LCCOMB_X25_Y72_N14
\dec_to_en[11]\ : cycloneive_lcell_comb
-- Equation(s):
-- dec_to_en(11) = (\dec_to_en[11]~21_combout\ & (!\ADDR[2]~input_o\ & \ADDR[1]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dec_to_en[11]~21_combout\,
	datac => \ADDR[2]~input_o\,
	datad => \ADDR[1]~input_o\,
	combout => dec_to_en(11));

-- Location: FF_X25_Y72_N5
\reg_gen:11:regs|y[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	asdata => \DIN[8]~input_o\,
	sload => VCC,
	ena => dec_to_en(11),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \reg_gen:11:regs|y\(0));

-- Location: LCCOMB_X27_Y72_N4
\dec_to_en[27]\ : cycloneive_lcell_comb
-- Equation(s):
-- dec_to_en(27) = (!\ADDR[2]~input_o\ & (\dec_to_en[31]~24_combout\ & \ADDR[1]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100010000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ADDR[2]~input_o\,
	datab => \dec_to_en[31]~24_combout\,
	datad => \ADDR[1]~input_o\,
	combout => dec_to_en(27));

-- Location: FF_X24_Y72_N31
\reg_gen:27:regs|y[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	asdata => \DIN[8]~input_o\,
	sload => VCC,
	ena => dec_to_en(27),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \reg_gen:27:regs|y\(0));

-- Location: LCCOMB_X24_Y72_N10
\dec_to_en[3]\ : cycloneive_lcell_comb
-- Equation(s):
-- dec_to_en(3) = (\dec_to_en[3]~23_combout\ & (\ADDR[1]~input_o\ & !\ADDR[2]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \dec_to_en[3]~23_combout\,
	datac => \ADDR[1]~input_o\,
	datad => \ADDR[2]~input_o\,
	combout => dec_to_en(3));

-- Location: FF_X24_Y72_N1
\reg_gen:3:regs|y[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	asdata => \DIN[8]~input_o\,
	sload => VCC,
	ena => dec_to_en(3),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \reg_gen:3:regs|y\(0));

-- Location: LCCOMB_X24_Y72_N4
\dec_to_en[19]\ : cycloneive_lcell_comb
-- Equation(s):
-- dec_to_en(19) = (!\ADDR[2]~input_o\ & (\ADDR[1]~input_o\ & \dec_to_en[19]~22_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \ADDR[2]~input_o\,
	datac => \ADDR[1]~input_o\,
	datad => \dec_to_en[19]~22_combout\,
	combout => dec_to_en(19));

-- Location: FF_X23_Y72_N13
\reg_gen:19:regs|y[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	asdata => \DIN[8]~input_o\,
	sload => VCC,
	ena => dec_to_en(19),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \reg_gen:19:regs|y\(0));

-- Location: LCCOMB_X24_Y72_N0
\DOUT[0]~43\ : cycloneive_lcell_comb
-- Equation(s):
-- \DOUT[0]~43_combout\ = (\ADDR[4]~input_o\ & ((\ADDR[3]~input_o\) # ((\reg_gen:19:regs|y\(0))))) # (!\ADDR[4]~input_o\ & (!\ADDR[3]~input_o\ & (\reg_gen:3:regs|y\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ADDR[4]~input_o\,
	datab => \ADDR[3]~input_o\,
	datac => \reg_gen:3:regs|y\(0),
	datad => \reg_gen:19:regs|y\(0),
	combout => \DOUT[0]~43_combout\);

-- Location: LCCOMB_X24_Y72_N30
\DOUT[0]~44\ : cycloneive_lcell_comb
-- Equation(s):
-- \DOUT[0]~44_combout\ = (\ADDR[3]~input_o\ & ((\DOUT[0]~43_combout\ & ((\reg_gen:27:regs|y\(0)))) # (!\DOUT[0]~43_combout\ & (\reg_gen:11:regs|y\(0))))) # (!\ADDR[3]~input_o\ & (((\DOUT[0]~43_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \reg_gen:11:regs|y\(0),
	datab => \ADDR[3]~input_o\,
	datac => \reg_gen:27:regs|y\(0),
	datad => \DOUT[0]~43_combout\,
	combout => \DOUT[0]~44_combout\);

-- Location: LCCOMB_X30_Y71_N24
\DOUT[0]~45\ : cycloneive_lcell_comb
-- Equation(s):
-- \DOUT[0]~45_combout\ = (\DOUT[0]~42_combout\ & ((\reg_gen:15:regs|y\(0)) # ((\DOUT[0]~41_combout\)))) # (!\DOUT[0]~42_combout\ & (((\DOUT[0]~44_combout\ & !\DOUT[0]~41_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \reg_gen:15:regs|y\(0),
	datab => \DOUT[0]~42_combout\,
	datac => \DOUT[0]~44_combout\,
	datad => \DOUT[0]~41_combout\,
	combout => \DOUT[0]~45_combout\);

-- Location: LCCOMB_X30_Y71_N26
\DOUT[0]~46\ : cycloneive_lcell_comb
-- Equation(s):
-- \DOUT[0]~46_combout\ = (\DOUT[0]~41_combout\ & ((\DOUT[0]~45_combout\ & (\reg_gen:30:regs|y\(0))) # (!\DOUT[0]~45_combout\ & ((\DOUT[0]~40_combout\))))) # (!\DOUT[0]~41_combout\ & (((\DOUT[0]~45_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \reg_gen:30:regs|y\(0),
	datab => \DOUT[0]~41_combout\,
	datac => \DOUT[0]~40_combout\,
	datad => \DOUT[0]~45_combout\,
	combout => \DOUT[0]~46_combout\);

-- Location: LCCOMB_X27_Y69_N12
\reg_gen:13:regs|y[0]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \reg_gen:13:regs|y[0]~feeder_combout\ = \DIN[8]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \DIN[8]~input_o\,
	combout => \reg_gen:13:regs|y[0]~feeder_combout\);

-- Location: LCCOMB_X29_Y69_N4
\dec_to_en[13]\ : cycloneive_lcell_comb
-- Equation(s):
-- dec_to_en(13) = (!\ADDR[1]~input_o\ & (\ADDR[2]~input_o\ & \dec_to_en[11]~21_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ADDR[1]~input_o\,
	datab => \ADDR[2]~input_o\,
	datac => \dec_to_en[11]~21_combout\,
	combout => dec_to_en(13));

-- Location: FF_X27_Y69_N13
\reg_gen:13:regs|y[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \reg_gen:13:regs|y[0]~feeder_combout\,
	ena => dec_to_en(13),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \reg_gen:13:regs|y\(0));

-- Location: LCCOMB_X27_Y71_N26
\dec_to_en[29]\ : cycloneive_lcell_comb
-- Equation(s):
-- dec_to_en(29) = (\dec_to_en[31]~24_combout\ & (!\ADDR[1]~input_o\ & \ADDR[2]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010001000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dec_to_en[31]~24_combout\,
	datab => \ADDR[1]~input_o\,
	datad => \ADDR[2]~input_o\,
	combout => dec_to_en(29));

-- Location: FF_X26_Y69_N23
\reg_gen:29:regs|y[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	asdata => \DIN[8]~input_o\,
	sload => VCC,
	ena => dec_to_en(29),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \reg_gen:29:regs|y\(0));

-- Location: LCCOMB_X26_Y69_N10
\dec_to_en[5]\ : cycloneive_lcell_comb
-- Equation(s):
-- dec_to_en(5) = (\ADDR[2]~input_o\ & (!\ADDR[1]~input_o\ & \dec_to_en[3]~23_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ADDR[2]~input_o\,
	datac => \ADDR[1]~input_o\,
	datad => \dec_to_en[3]~23_combout\,
	combout => dec_to_en(5));

-- Location: FF_X26_Y69_N1
\reg_gen:5:regs|y[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	asdata => \DIN[8]~input_o\,
	sload => VCC,
	ena => dec_to_en(5),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \reg_gen:5:regs|y\(0));

-- Location: LCCOMB_X27_Y69_N6
\reg_gen:21:regs|y[0]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \reg_gen:21:regs|y[0]~feeder_combout\ = \DIN[8]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \DIN[8]~input_o\,
	combout => \reg_gen:21:regs|y[0]~feeder_combout\);

-- Location: LCCOMB_X27_Y70_N30
\dec_to_en[21]\ : cycloneive_lcell_comb
-- Equation(s):
-- dec_to_en(21) = (!\ADDR[1]~input_o\ & (\dec_to_en[19]~22_combout\ & \ADDR[2]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100010000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ADDR[1]~input_o\,
	datab => \dec_to_en[19]~22_combout\,
	datad => \ADDR[2]~input_o\,
	combout => dec_to_en(21));

-- Location: FF_X27_Y69_N7
\reg_gen:21:regs|y[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \reg_gen:21:regs|y[0]~feeder_combout\,
	ena => dec_to_en(21),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \reg_gen:21:regs|y\(0));

-- Location: LCCOMB_X26_Y69_N0
\DOUT[0]~27\ : cycloneive_lcell_comb
-- Equation(s):
-- \DOUT[0]~27_combout\ = (\ADDR[4]~input_o\ & ((\ADDR[3]~input_o\) # ((\reg_gen:21:regs|y\(0))))) # (!\ADDR[4]~input_o\ & (!\ADDR[3]~input_o\ & (\reg_gen:5:regs|y\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ADDR[4]~input_o\,
	datab => \ADDR[3]~input_o\,
	datac => \reg_gen:5:regs|y\(0),
	datad => \reg_gen:21:regs|y\(0),
	combout => \DOUT[0]~27_combout\);

-- Location: LCCOMB_X26_Y69_N22
\DOUT[0]~28\ : cycloneive_lcell_comb
-- Equation(s):
-- \DOUT[0]~28_combout\ = (\ADDR[3]~input_o\ & ((\DOUT[0]~27_combout\ & ((\reg_gen:29:regs|y\(0)))) # (!\DOUT[0]~27_combout\ & (\reg_gen:13:regs|y\(0))))) # (!\ADDR[3]~input_o\ & (((\DOUT[0]~27_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ADDR[3]~input_o\,
	datab => \reg_gen:13:regs|y\(0),
	datac => \reg_gen:29:regs|y\(0),
	datad => \DOUT[0]~27_combout\,
	combout => \DOUT[0]~28_combout\);

-- Location: LCCOMB_X27_Y70_N16
\reg_gen:17:regs|y[0]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \reg_gen:17:regs|y[0]~feeder_combout\ = \DIN[8]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \DIN[8]~input_o\,
	combout => \reg_gen:17:regs|y[0]~feeder_combout\);

-- Location: LCCOMB_X27_Y70_N8
\dec_to_en[17]\ : cycloneive_lcell_comb
-- Equation(s):
-- dec_to_en(17) = (!\ADDR[1]~input_o\ & (\dec_to_en[19]~22_combout\ & !\ADDR[2]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ADDR[1]~input_o\,
	datab => \dec_to_en[19]~22_combout\,
	datad => \ADDR[2]~input_o\,
	combout => dec_to_en(17));

-- Location: FF_X27_Y70_N17
\reg_gen:17:regs|y[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \reg_gen:17:regs|y[0]~feeder_combout\,
	ena => dec_to_en(17),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \reg_gen:17:regs|y\(0));

-- Location: LCCOMB_X27_Y71_N14
\dec_to_en[25]\ : cycloneive_lcell_comb
-- Equation(s):
-- dec_to_en(25) = (\dec_to_en[31]~24_combout\ & (!\ADDR[1]~input_o\ & !\ADDR[2]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dec_to_en[31]~24_combout\,
	datab => \ADDR[1]~input_o\,
	datad => \ADDR[2]~input_o\,
	combout => dec_to_en(25));

-- Location: FF_X27_Y70_N7
\reg_gen:25:regs|y[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	asdata => \DIN[8]~input_o\,
	sload => VCC,
	ena => dec_to_en(25),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \reg_gen:25:regs|y\(0));

-- Location: LCCOMB_X26_Y70_N12
\dec_to_en[1]\ : cycloneive_lcell_comb
-- Equation(s):
-- dec_to_en(1) = (!\ADDR[2]~input_o\ & (!\ADDR[1]~input_o\ & \dec_to_en[3]~23_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ADDR[2]~input_o\,
	datab => \ADDR[1]~input_o\,
	datad => \dec_to_en[3]~23_combout\,
	combout => dec_to_en(1));

-- Location: FF_X26_Y70_N15
\reg_gen:1:regs|y[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	asdata => \DIN[8]~input_o\,
	sload => VCC,
	ena => dec_to_en(1),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \reg_gen:1:regs|y\(0));

-- Location: LCCOMB_X26_Y70_N0
\reg_gen:9:regs|y[0]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \reg_gen:9:regs|y[0]~feeder_combout\ = \DIN[8]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \DIN[8]~input_o\,
	combout => \reg_gen:9:regs|y[0]~feeder_combout\);

-- Location: LCCOMB_X26_Y70_N26
\dec_to_en[9]\ : cycloneive_lcell_comb
-- Equation(s):
-- dec_to_en(9) = (!\ADDR[2]~input_o\ & (!\ADDR[1]~input_o\ & \dec_to_en[11]~21_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ADDR[2]~input_o\,
	datab => \ADDR[1]~input_o\,
	datad => \dec_to_en[11]~21_combout\,
	combout => dec_to_en(9));

-- Location: FF_X26_Y70_N1
\reg_gen:9:regs|y[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \reg_gen:9:regs|y[0]~feeder_combout\,
	ena => dec_to_en(9),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \reg_gen:9:regs|y\(0));

-- Location: LCCOMB_X26_Y70_N14
\DOUT[0]~29\ : cycloneive_lcell_comb
-- Equation(s):
-- \DOUT[0]~29_combout\ = (\ADDR[3]~input_o\ & ((\ADDR[4]~input_o\) # ((\reg_gen:9:regs|y\(0))))) # (!\ADDR[3]~input_o\ & (!\ADDR[4]~input_o\ & (\reg_gen:1:regs|y\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ADDR[3]~input_o\,
	datab => \ADDR[4]~input_o\,
	datac => \reg_gen:1:regs|y\(0),
	datad => \reg_gen:9:regs|y\(0),
	combout => \DOUT[0]~29_combout\);

-- Location: LCCOMB_X27_Y70_N6
\DOUT[0]~30\ : cycloneive_lcell_comb
-- Equation(s):
-- \DOUT[0]~30_combout\ = (\ADDR[4]~input_o\ & ((\DOUT[0]~29_combout\ & ((\reg_gen:25:regs|y\(0)))) # (!\DOUT[0]~29_combout\ & (\reg_gen:17:regs|y\(0))))) # (!\ADDR[4]~input_o\ & (((\DOUT[0]~29_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ADDR[4]~input_o\,
	datab => \reg_gen:17:regs|y\(0),
	datac => \reg_gen:25:regs|y\(0),
	datad => \DOUT[0]~29_combout\,
	combout => \DOUT[0]~30_combout\);

-- Location: LCCOMB_X30_Y71_N30
\DOUT[0]~31\ : cycloneive_lcell_comb
-- Equation(s):
-- \DOUT[0]~31_combout\ = (\ADDR[2]~input_o\ & (\DOUT[0]~28_combout\)) # (!\ADDR[2]~input_o\ & ((\DOUT[0]~30_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \ADDR[2]~input_o\,
	datac => \DOUT[0]~28_combout\,
	datad => \DOUT[0]~30_combout\,
	combout => \DOUT[0]~31_combout\);

-- Location: LCCOMB_X27_Y71_N4
\DOUT[0]~34\ : cycloneive_lcell_comb
-- Equation(s):
-- \DOUT[0]~34_combout\ = (\ADDR[2]~input_o\) # ((\ADDR[4]~input_o\ & !\ADDR[3]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ADDR[4]~input_o\,
	datab => \ADDR[3]~input_o\,
	datad => \ADDR[2]~input_o\,
	combout => \DOUT[0]~34_combout\);

-- Location: LCCOMB_X26_Y70_N16
\DOUT[0]~33\ : cycloneive_lcell_comb
-- Equation(s):
-- \DOUT[0]~33_combout\ = (\ADDR[2]~input_o\) # (\ADDR[3]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ADDR[2]~input_o\,
	datad => \ADDR[3]~input_o\,
	combout => \DOUT[0]~33_combout\);

-- Location: LCCOMB_X30_Y70_N0
\dcd|dcd_3|dcd|Mux7~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \dcd|dcd_3|dcd|Mux7~0_combout\ = (!\ADDR[2]~input_o\ & (!\ADDR[0]~input_o\ & !\ADDR[1]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000010001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ADDR[2]~input_o\,
	datab => \ADDR[0]~input_o\,
	datad => \ADDR[1]~input_o\,
	combout => \dcd|dcd_3|dcd|Mux7~0_combout\);

-- Location: LCCOMB_X29_Y70_N20
\dec_to_en[0]~31\ : cycloneive_lcell_comb
-- Equation(s):
-- \dec_to_en[0]~31_combout\ = (!\ADDR[3]~input_o\ & (!\ADDR[4]~input_o\ & (\WE~input_o\ & \dcd|dcd_3|dcd|Mux7~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ADDR[3]~input_o\,
	datab => \ADDR[4]~input_o\,
	datac => \WE~input_o\,
	datad => \dcd|dcd_3|dcd|Mux7~0_combout\,
	combout => \dec_to_en[0]~31_combout\);

-- Location: FF_X29_Y70_N1
\reg_gen:0:regs|y[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	asdata => \DIN[0]~input_o\,
	sload => VCC,
	ena => \dec_to_en[0]~31_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \reg_gen:0:regs|y\(0));

-- Location: LCCOMB_X30_Y70_N8
\dec_to_en[24]~20\ : cycloneive_lcell_comb
-- Equation(s):
-- \dec_to_en[24]~20_combout\ = (\ADDR[2]~input_o\ & (\ADDR[1]~input_o\ & \ADDR[0]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ADDR[2]~input_o\,
	datab => \ADDR[1]~input_o\,
	datad => \ADDR[0]~input_o\,
	combout => \dec_to_en[24]~20_combout\);

-- Location: LCCOMB_X30_Y70_N24
\dec_to_en[16]~29\ : cycloneive_lcell_comb
-- Equation(s):
-- \dec_to_en[16]~29_combout\ = (\ADDR[3]~input_o\ & (!\ADDR[4]~input_o\ & (\dec_to_en[24]~20_combout\))) # (!\ADDR[3]~input_o\ & (\ADDR[4]~input_o\ & ((\dcd|dcd_3|dcd|Mux7~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110010000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ADDR[3]~input_o\,
	datab => \ADDR[4]~input_o\,
	datac => \dec_to_en[24]~20_combout\,
	datad => \dcd|dcd_3|dcd|Mux7~0_combout\,
	combout => \dec_to_en[16]~29_combout\);

-- Location: LCCOMB_X30_Y70_N10
\dec_to_en[16]~30\ : cycloneive_lcell_comb
-- Equation(s):
-- \dec_to_en[16]~30_combout\ = (\dec_to_en[16]~29_combout\ & \WE~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dec_to_en[16]~29_combout\,
	datac => \WE~input_o\,
	combout => \dec_to_en[16]~30_combout\);

-- Location: FF_X30_Y70_N9
\reg_gen:16:regs|y[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	asdata => \DIN[0]~input_o\,
	sload => VCC,
	ena => \dec_to_en[16]~30_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \reg_gen:16:regs|y\(0));

-- Location: LCCOMB_X29_Y70_N0
\DOUT[0]~35\ : cycloneive_lcell_comb
-- Equation(s):
-- \DOUT[0]~35_combout\ = (\DOUT[0]~34_combout\ & ((\DOUT[0]~33_combout\) # ((\reg_gen:16:regs|y\(0))))) # (!\DOUT[0]~34_combout\ & (!\DOUT[0]~33_combout\ & (\reg_gen:0:regs|y\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \DOUT[0]~34_combout\,
	datab => \DOUT[0]~33_combout\,
	datac => \reg_gen:0:regs|y\(0),
	datad => \reg_gen:16:regs|y\(0),
	combout => \DOUT[0]~35_combout\);

-- Location: LCCOMB_X30_Y70_N30
\dec_to_en[8]~27\ : cycloneive_lcell_comb
-- Equation(s):
-- \dec_to_en[8]~27_combout\ = (!\ADDR[4]~input_o\ & ((\ADDR[3]~input_o\ & ((\dcd|dcd_3|dcd|Mux7~0_combout\))) # (!\ADDR[3]~input_o\ & (\dec_to_en[24]~20_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ADDR[3]~input_o\,
	datab => \ADDR[4]~input_o\,
	datac => \dec_to_en[24]~20_combout\,
	datad => \dcd|dcd_3|dcd|Mux7~0_combout\,
	combout => \dec_to_en[8]~27_combout\);

-- Location: LCCOMB_X30_Y70_N16
\dec_to_en[8]~28\ : cycloneive_lcell_comb
-- Equation(s):
-- \dec_to_en[8]~28_combout\ = (\WE~input_o\ & \dec_to_en[8]~27_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \WE~input_o\,
	datab => \dec_to_en[8]~27_combout\,
	combout => \dec_to_en[8]~28_combout\);

-- Location: FF_X30_Y70_N7
\reg_gen:8:regs|y[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	asdata => \DIN[0]~input_o\,
	sload => VCC,
	ena => \dec_to_en[8]~28_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \reg_gen:8:regs|y\(0));

-- Location: LCCOMB_X31_Y70_N16
\reg_gen:24:regs|y[0]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \reg_gen:24:regs|y[0]~feeder_combout\ = \DIN[0]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \DIN[0]~input_o\,
	combout => \reg_gen:24:regs|y[0]~feeder_combout\);

-- Location: LCCOMB_X31_Y70_N12
\dec_to_en[24]~25\ : cycloneive_lcell_comb
-- Equation(s):
-- \dec_to_en[24]~25_combout\ = (\ADDR[3]~input_o\ & (!\ADDR[1]~input_o\ & (!\ADDR[0]~input_o\ & !\ADDR[2]~input_o\))) # (!\ADDR[3]~input_o\ & (\ADDR[1]~input_o\ & (\ADDR[0]~input_o\ & \ADDR[2]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000000000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ADDR[3]~input_o\,
	datab => \ADDR[1]~input_o\,
	datac => \ADDR[0]~input_o\,
	datad => \ADDR[2]~input_o\,
	combout => \dec_to_en[24]~25_combout\);

-- Location: LCCOMB_X31_Y70_N10
\dec_to_en[24]~26\ : cycloneive_lcell_comb
-- Equation(s):
-- \dec_to_en[24]~26_combout\ = (\dec_to_en[24]~25_combout\ & (\ADDR[4]~input_o\ & \WE~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dec_to_en[24]~25_combout\,
	datac => \ADDR[4]~input_o\,
	datad => \WE~input_o\,
	combout => \dec_to_en[24]~26_combout\);

-- Location: FF_X31_Y70_N17
\reg_gen:24:regs|y[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \reg_gen:24:regs|y[0]~feeder_combout\,
	ena => \dec_to_en[24]~26_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \reg_gen:24:regs|y\(0));

-- Location: LCCOMB_X30_Y70_N6
\DOUT[0]~32\ : cycloneive_lcell_comb
-- Equation(s):
-- \DOUT[0]~32_combout\ = (\ADDR[4]~input_o\ & ((\reg_gen:24:regs|y\(0)))) # (!\ADDR[4]~input_o\ & (\reg_gen:8:regs|y\(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ADDR[4]~input_o\,
	datac => \reg_gen:8:regs|y\(0),
	datad => \reg_gen:24:regs|y\(0),
	combout => \DOUT[0]~32_combout\);

-- Location: LCCOMB_X29_Y69_N16
\reg_gen:12:regs|y[0]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \reg_gen:12:regs|y[0]~feeder_combout\ = \DIN[0]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \DIN[0]~input_o\,
	combout => \reg_gen:12:regs|y[0]~feeder_combout\);

-- Location: LCCOMB_X29_Y69_N10
\dec_to_en[12]\ : cycloneive_lcell_comb
-- Equation(s):
-- dec_to_en(12) = (\dec_to_en[11]~21_combout\ & ((\ADDR[1]~input_o\ & (\ADDR[0]~input_o\ & !\ADDR[2]~input_o\)) # (!\ADDR[1]~input_o\ & (!\ADDR[0]~input_o\ & \ADDR[2]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ADDR[1]~input_o\,
	datab => \ADDR[0]~input_o\,
	datac => \ADDR[2]~input_o\,
	datad => \dec_to_en[11]~21_combout\,
	combout => dec_to_en(12));

-- Location: FF_X29_Y69_N17
\reg_gen:12:regs|y[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \reg_gen:12:regs|y[0]~feeder_combout\,
	ena => dec_to_en(12),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \reg_gen:12:regs|y\(0));

-- Location: LCCOMB_X29_Y71_N22
\dec_to_en[28]\ : cycloneive_lcell_comb
-- Equation(s):
-- dec_to_en(28) = (\dec_to_en[31]~24_combout\ & ((\ADDR[0]~input_o\ & (\ADDR[1]~input_o\ & !\ADDR[2]~input_o\)) # (!\ADDR[0]~input_o\ & (!\ADDR[1]~input_o\ & \ADDR[2]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dec_to_en[31]~24_combout\,
	datab => \ADDR[0]~input_o\,
	datac => \ADDR[1]~input_o\,
	datad => \ADDR[2]~input_o\,
	combout => dec_to_en(28));

-- Location: FF_X29_Y71_N29
\reg_gen:28:regs|y[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	asdata => \DIN[0]~input_o\,
	sload => VCC,
	ena => dec_to_en(28),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \reg_gen:28:regs|y\(0));

-- Location: LCCOMB_X29_Y69_N0
\dec_to_en[4]\ : cycloneive_lcell_comb
-- Equation(s):
-- dec_to_en(4) = (\dec_to_en[3]~23_combout\ & ((\ADDR[1]~input_o\ & (!\ADDR[2]~input_o\ & \ADDR[0]~input_o\)) # (!\ADDR[1]~input_o\ & (\ADDR[2]~input_o\ & !\ADDR[0]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ADDR[1]~input_o\,
	datab => \ADDR[2]~input_o\,
	datac => \dec_to_en[3]~23_combout\,
	datad => \ADDR[0]~input_o\,
	combout => dec_to_en(4));

-- Location: FF_X28_Y69_N15
\reg_gen:4:regs|y[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	asdata => \DIN[0]~input_o\,
	sload => VCC,
	ena => dec_to_en(4),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \reg_gen:4:regs|y\(0));

-- Location: LCCOMB_X28_Y69_N4
\dec_to_en[20]\ : cycloneive_lcell_comb
-- Equation(s):
-- dec_to_en(20) = (\dec_to_en[19]~22_combout\ & ((\ADDR[0]~input_o\ & (\ADDR[1]~input_o\ & !\ADDR[2]~input_o\)) # (!\ADDR[0]~input_o\ & (!\ADDR[1]~input_o\ & \ADDR[2]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ADDR[0]~input_o\,
	datab => \ADDR[1]~input_o\,
	datac => \ADDR[2]~input_o\,
	datad => \dec_to_en[19]~22_combout\,
	combout => dec_to_en(20));

-- Location: FF_X28_Y69_N17
\reg_gen:20:regs|y[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	asdata => \DIN[0]~input_o\,
	sload => VCC,
	ena => dec_to_en(20),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \reg_gen:20:regs|y\(0));

-- Location: LCCOMB_X28_Y69_N14
\DOUT[0]~36\ : cycloneive_lcell_comb
-- Equation(s):
-- \DOUT[0]~36_combout\ = (\ADDR[3]~input_o\ & (\ADDR[4]~input_o\)) # (!\ADDR[3]~input_o\ & ((\ADDR[4]~input_o\ & ((\reg_gen:20:regs|y\(0)))) # (!\ADDR[4]~input_o\ & (\reg_gen:4:regs|y\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ADDR[3]~input_o\,
	datab => \ADDR[4]~input_o\,
	datac => \reg_gen:4:regs|y\(0),
	datad => \reg_gen:20:regs|y\(0),
	combout => \DOUT[0]~36_combout\);

-- Location: LCCOMB_X29_Y71_N28
\DOUT[0]~37\ : cycloneive_lcell_comb
-- Equation(s):
-- \DOUT[0]~37_combout\ = (\ADDR[3]~input_o\ & ((\DOUT[0]~36_combout\ & ((\reg_gen:28:regs|y\(0)))) # (!\DOUT[0]~36_combout\ & (\reg_gen:12:regs|y\(0))))) # (!\ADDR[3]~input_o\ & (((\DOUT[0]~36_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ADDR[3]~input_o\,
	datab => \reg_gen:12:regs|y\(0),
	datac => \reg_gen:28:regs|y\(0),
	datad => \DOUT[0]~36_combout\,
	combout => \DOUT[0]~37_combout\);

-- Location: LCCOMB_X30_Y71_N12
\DOUT[0]~38\ : cycloneive_lcell_comb
-- Equation(s):
-- \DOUT[0]~38_combout\ = (\DOUT[0]~35_combout\ & (((\DOUT[0]~37_combout\)) # (!\DOUT[0]~33_combout\))) # (!\DOUT[0]~35_combout\ & (\DOUT[0]~33_combout\ & (\DOUT[0]~32_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101001100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \DOUT[0]~35_combout\,
	datab => \DOUT[0]~33_combout\,
	datac => \DOUT[0]~32_combout\,
	datad => \DOUT[0]~37_combout\,
	combout => \DOUT[0]~38_combout\);

-- Location: LCCOMB_X30_Y71_N22
\DOUT[0]~39\ : cycloneive_lcell_comb
-- Equation(s):
-- \DOUT[0]~39_combout\ = (\ADDR[1]~input_o\ & (\ADDR[0]~input_o\)) # (!\ADDR[1]~input_o\ & ((\ADDR[0]~input_o\ & (\DOUT[0]~31_combout\)) # (!\ADDR[0]~input_o\ & ((\DOUT[0]~38_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100111001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ADDR[1]~input_o\,
	datab => \ADDR[0]~input_o\,
	datac => \DOUT[0]~31_combout\,
	datad => \DOUT[0]~38_combout\,
	combout => \DOUT[0]~39_combout\);

-- Location: LCCOMB_X30_Y71_N16
\DOUT[0]~47\ : cycloneive_lcell_comb
-- Equation(s):
-- \DOUT[0]~47_combout\ = (\ADDR[1]~input_o\ & ((\DOUT[0]~39_combout\ & ((\DOUT[0]~46_combout\))) # (!\DOUT[0]~39_combout\ & (\DOUT[0]~26_combout\)))) # (!\ADDR[1]~input_o\ & (((\DOUT[0]~39_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ADDR[1]~input_o\,
	datab => \DOUT[0]~26_combout\,
	datac => \DOUT[0]~46_combout\,
	datad => \DOUT[0]~39_combout\,
	combout => \DOUT[0]~47_combout\);

-- Location: LCCOMB_X30_Y70_N14
\DOUT[15]~48\ : cycloneive_lcell_comb
-- Equation(s):
-- \DOUT[15]~48_combout\ = ((!\dec_to_en[24]~20_combout\) # (!\ADDR[4]~input_o\)) # (!\ADDR[3]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111011111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ADDR[3]~input_o\,
	datab => \ADDR[4]~input_o\,
	datad => \dec_to_en[24]~20_combout\,
	combout => \DOUT[15]~48_combout\);

-- Location: CLKCTRL_G10
\DOUT[15]~48clkctrl\ : cycloneive_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \DOUT[15]~48clkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \DOUT[15]~48clkctrl_outclk\);

-- Location: LCCOMB_X30_Y71_N4
\DOUT[0]$latch\ : cycloneive_lcell_comb
-- Equation(s):
-- \DOUT[0]$latch~combout\ = (\RE~input_o\ & ((GLOBAL(\DOUT[15]~48clkctrl_outclk\) & (\DOUT[0]~47_combout\)) # (!GLOBAL(\DOUT[15]~48clkctrl_outclk\) & ((\DOUT[0]$latch~combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RE~input_o\,
	datab => \DOUT[0]~47_combout\,
	datac => \DOUT[0]$latch~combout\,
	datad => \DOUT[15]~48clkctrl_outclk\,
	combout => \DOUT[0]$latch~combout\);

-- Location: LCCOMB_X30_Y72_N10
\DOUT[0]_1561\ : cycloneive_lcell_comb
-- Equation(s):
-- \DOUT[0]_1561~combout\ = (\RE~input_o\ & ((\DOUT[15]~48_combout\) # (\DOUT[0]_1561~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \RE~input_o\,
	datac => \DOUT[15]~48_combout\,
	datad => \DOUT[0]_1561~combout\,
	combout => \DOUT[0]_1561~combout\);

-- Location: IOIBUF_X20_Y73_N22
\DIN[9]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_DIN(9),
	o => \DIN[9]~input_o\);

-- Location: FF_X26_Y72_N5
\reg_gen:15:regs|y[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	asdata => \DIN[9]~input_o\,
	sload => VCC,
	ena => dec_to_en(15),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \reg_gen:15:regs|y\(1));

-- Location: FF_X25_Y72_N19
\reg_gen:11:regs|y[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	asdata => \DIN[9]~input_o\,
	sload => VCC,
	ena => dec_to_en(11),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \reg_gen:11:regs|y\(1));

-- Location: FF_X25_Y72_N29
\reg_gen:27:regs|y[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	asdata => \DIN[9]~input_o\,
	sload => VCC,
	ena => dec_to_en(27),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \reg_gen:27:regs|y\(1));

-- Location: FF_X24_Y72_N21
\reg_gen:3:regs|y[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	asdata => \DIN[9]~input_o\,
	sload => VCC,
	ena => dec_to_en(3),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \reg_gen:3:regs|y\(1));

-- Location: LCCOMB_X23_Y72_N2
\reg_gen:19:regs|y[1]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \reg_gen:19:regs|y[1]~feeder_combout\ = \DIN[9]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \DIN[9]~input_o\,
	combout => \reg_gen:19:regs|y[1]~feeder_combout\);

-- Location: FF_X23_Y72_N3
\reg_gen:19:regs|y[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \reg_gen:19:regs|y[1]~feeder_combout\,
	ena => dec_to_en(19),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \reg_gen:19:regs|y\(1));

-- Location: LCCOMB_X24_Y72_N20
\DOUT[1]~66\ : cycloneive_lcell_comb
-- Equation(s):
-- \DOUT[1]~66_combout\ = (\ADDR[4]~input_o\ & ((\ADDR[3]~input_o\) # ((\reg_gen:19:regs|y\(1))))) # (!\ADDR[4]~input_o\ & (!\ADDR[3]~input_o\ & (\reg_gen:3:regs|y\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ADDR[4]~input_o\,
	datab => \ADDR[3]~input_o\,
	datac => \reg_gen:3:regs|y\(1),
	datad => \reg_gen:19:regs|y\(1),
	combout => \DOUT[1]~66_combout\);

-- Location: LCCOMB_X25_Y72_N28
\DOUT[1]~67\ : cycloneive_lcell_comb
-- Equation(s):
-- \DOUT[1]~67_combout\ = (\ADDR[3]~input_o\ & ((\DOUT[1]~66_combout\ & ((\reg_gen:27:regs|y\(1)))) # (!\DOUT[1]~66_combout\ & (\reg_gen:11:regs|y\(1))))) # (!\ADDR[3]~input_o\ & (((\DOUT[1]~66_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ADDR[3]~input_o\,
	datab => \reg_gen:11:regs|y\(1),
	datac => \reg_gen:27:regs|y\(1),
	datad => \DOUT[1]~66_combout\,
	combout => \DOUT[1]~67_combout\);

-- Location: LCCOMB_X25_Y72_N30
\DOUT[1]~68\ : cycloneive_lcell_comb
-- Equation(s):
-- \DOUT[1]~68_combout\ = (\DOUT[0]~41_combout\ & (((\DOUT[0]~42_combout\)))) # (!\DOUT[0]~41_combout\ & ((\DOUT[0]~42_combout\ & (\reg_gen:15:regs|y\(1))) # (!\DOUT[0]~42_combout\ & ((\DOUT[1]~67_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \reg_gen:15:regs|y\(1),
	datab => \DOUT[1]~67_combout\,
	datac => \DOUT[0]~41_combout\,
	datad => \DOUT[0]~42_combout\,
	combout => \DOUT[1]~68_combout\);

-- Location: IOIBUF_X33_Y73_N8
\DIN[1]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_DIN(1),
	o => \DIN[1]~input_o\);

-- Location: FF_X27_Y71_N11
\reg_gen:30:regs|y[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	asdata => \DIN[1]~input_o\,
	sload => VCC,
	ena => dec_to_en(30),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \reg_gen:30:regs|y\(1));

-- Location: FF_X23_Y71_N13
\reg_gen:7:regs|y[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	asdata => \DIN[9]~input_o\,
	sload => VCC,
	ena => dec_to_en(7),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \reg_gen:7:regs|y\(1));

-- Location: LCCOMB_X23_Y71_N18
\reg_gen:23:regs|y[1]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \reg_gen:23:regs|y[1]~feeder_combout\ = \DIN[9]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \DIN[9]~input_o\,
	combout => \reg_gen:23:regs|y[1]~feeder_combout\);

-- Location: FF_X23_Y71_N19
\reg_gen:23:regs|y[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \reg_gen:23:regs|y[1]~feeder_combout\,
	ena => dec_to_en(23),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \reg_gen:23:regs|y\(1));

-- Location: LCCOMB_X23_Y71_N12
\DOUT[1]~65\ : cycloneive_lcell_comb
-- Equation(s):
-- \DOUT[1]~65_combout\ = (\ADDR[4]~input_o\ & ((\reg_gen:23:regs|y\(1)))) # (!\ADDR[4]~input_o\ & (\reg_gen:7:regs|y\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ADDR[4]~input_o\,
	datac => \reg_gen:7:regs|y\(1),
	datad => \reg_gen:23:regs|y\(1),
	combout => \DOUT[1]~65_combout\);

-- Location: LCCOMB_X26_Y71_N10
\DOUT[1]~69\ : cycloneive_lcell_comb
-- Equation(s):
-- \DOUT[1]~69_combout\ = (\DOUT[0]~41_combout\ & ((\DOUT[1]~68_combout\ & (\reg_gen:30:regs|y\(1))) # (!\DOUT[1]~68_combout\ & ((\DOUT[1]~65_combout\))))) # (!\DOUT[0]~41_combout\ & (\DOUT[1]~68_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110011011000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \DOUT[0]~41_combout\,
	datab => \DOUT[1]~68_combout\,
	datac => \reg_gen:30:regs|y\(1),
	datad => \DOUT[1]~65_combout\,
	combout => \DOUT[1]~69_combout\);

-- Location: FF_X31_Y71_N15
\reg_gen:18:regs|y[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	asdata => \DIN[1]~input_o\,
	sload => VCC,
	ena => dec_to_en(18),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \reg_gen:18:regs|y\(1));

-- Location: FF_X26_Y71_N19
\reg_gen:26:regs|y[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	asdata => \DIN[1]~input_o\,
	sload => VCC,
	ena => dec_to_en(26),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \reg_gen:26:regs|y\(1));

-- Location: FF_X31_Y71_N5
\reg_gen:2:regs|y[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	asdata => \DIN[1]~input_o\,
	sload => VCC,
	ena => dec_to_en(2),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \reg_gen:2:regs|y\(1));

-- Location: LCCOMB_X32_Y71_N24
\reg_gen:10:regs|y[1]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \reg_gen:10:regs|y[1]~feeder_combout\ = \DIN[1]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \DIN[1]~input_o\,
	combout => \reg_gen:10:regs|y[1]~feeder_combout\);

-- Location: FF_X32_Y71_N25
\reg_gen:10:regs|y[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \reg_gen:10:regs|y[1]~feeder_combout\,
	ena => dec_to_en(10),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \reg_gen:10:regs|y\(1));

-- Location: LCCOMB_X31_Y71_N4
\DOUT[1]~51\ : cycloneive_lcell_comb
-- Equation(s):
-- \DOUT[1]~51_combout\ = (\ADDR[3]~input_o\ & ((\ADDR[4]~input_o\) # ((\reg_gen:10:regs|y\(1))))) # (!\ADDR[3]~input_o\ & (!\ADDR[4]~input_o\ & (\reg_gen:2:regs|y\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ADDR[3]~input_o\,
	datab => \ADDR[4]~input_o\,
	datac => \reg_gen:2:regs|y\(1),
	datad => \reg_gen:10:regs|y\(1),
	combout => \DOUT[1]~51_combout\);

-- Location: LCCOMB_X26_Y71_N18
\DOUT[1]~52\ : cycloneive_lcell_comb
-- Equation(s):
-- \DOUT[1]~52_combout\ = (\ADDR[4]~input_o\ & ((\DOUT[1]~51_combout\ & ((\reg_gen:26:regs|y\(1)))) # (!\DOUT[1]~51_combout\ & (\reg_gen:18:regs|y\(1))))) # (!\ADDR[4]~input_o\ & (((\DOUT[1]~51_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ADDR[4]~input_o\,
	datab => \reg_gen:18:regs|y\(1),
	datac => \reg_gen:26:regs|y\(1),
	datad => \DOUT[1]~51_combout\,
	combout => \DOUT[1]~52_combout\);

-- Location: FF_X28_Y71_N15
\reg_gen:6:regs|y[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	asdata => \DIN[1]~input_o\,
	sload => VCC,
	ena => dec_to_en(6),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \reg_gen:6:regs|y\(1));

-- Location: FF_X28_Y71_N9
\reg_gen:22:regs|y[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	asdata => \DIN[1]~input_o\,
	sload => VCC,
	ena => dec_to_en(22),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \reg_gen:22:regs|y\(1));

-- Location: LCCOMB_X28_Y71_N14
\DOUT[1]~49\ : cycloneive_lcell_comb
-- Equation(s):
-- \DOUT[1]~49_combout\ = (\ADDR[3]~input_o\ & (\ADDR[4]~input_o\)) # (!\ADDR[3]~input_o\ & ((\ADDR[4]~input_o\ & ((\reg_gen:22:regs|y\(1)))) # (!\ADDR[4]~input_o\ & (\reg_gen:6:regs|y\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ADDR[3]~input_o\,
	datab => \ADDR[4]~input_o\,
	datac => \reg_gen:6:regs|y\(1),
	datad => \reg_gen:22:regs|y\(1),
	combout => \DOUT[1]~49_combout\);

-- Location: FF_X26_Y71_N9
\reg_gen:14:regs|y[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	asdata => \DIN[1]~input_o\,
	sload => VCC,
	ena => dec_to_en(14),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \reg_gen:14:regs|y\(1));

-- Location: LCCOMB_X26_Y71_N8
\DOUT[1]~50\ : cycloneive_lcell_comb
-- Equation(s):
-- \DOUT[1]~50_combout\ = (\DOUT[1]~49_combout\ & ((\reg_gen:30:regs|y\(1)) # ((!\ADDR[3]~input_o\)))) # (!\DOUT[1]~49_combout\ & (((\reg_gen:14:regs|y\(1) & \ADDR[3]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \DOUT[1]~49_combout\,
	datab => \reg_gen:30:regs|y\(1),
	datac => \reg_gen:14:regs|y\(1),
	datad => \ADDR[3]~input_o\,
	combout => \DOUT[1]~50_combout\);

-- Location: LCCOMB_X26_Y71_N16
\DOUT[1]~53\ : cycloneive_lcell_comb
-- Equation(s):
-- \DOUT[1]~53_combout\ = (\ADDR[2]~input_o\ & ((\DOUT[1]~50_combout\))) # (!\ADDR[2]~input_o\ & (\DOUT[1]~52_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \DOUT[1]~52_combout\,
	datac => \DOUT[1]~50_combout\,
	datad => \ADDR[2]~input_o\,
	combout => \DOUT[1]~53_combout\);

-- Location: LCCOMB_X27_Y69_N20
\reg_gen:13:regs|y[1]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \reg_gen:13:regs|y[1]~feeder_combout\ = \DIN[9]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \DIN[9]~input_o\,
	combout => \reg_gen:13:regs|y[1]~feeder_combout\);

-- Location: FF_X27_Y69_N21
\reg_gen:13:regs|y[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \reg_gen:13:regs|y[1]~feeder_combout\,
	ena => dec_to_en(13),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \reg_gen:13:regs|y\(1));

-- Location: FF_X26_Y69_N7
\reg_gen:29:regs|y[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	asdata => \DIN[9]~input_o\,
	sload => VCC,
	ena => dec_to_en(29),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \reg_gen:29:regs|y\(1));

-- Location: FF_X26_Y69_N25
\reg_gen:5:regs|y[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	asdata => \DIN[9]~input_o\,
	sload => VCC,
	ena => dec_to_en(5),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \reg_gen:5:regs|y\(1));

-- Location: LCCOMB_X27_Y69_N18
\reg_gen:21:regs|y[1]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \reg_gen:21:regs|y[1]~feeder_combout\ = \DIN[9]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \DIN[9]~input_o\,
	combout => \reg_gen:21:regs|y[1]~feeder_combout\);

-- Location: FF_X27_Y69_N19
\reg_gen:21:regs|y[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \reg_gen:21:regs|y[1]~feeder_combout\,
	ena => dec_to_en(21),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \reg_gen:21:regs|y\(1));

-- Location: LCCOMB_X26_Y69_N24
\DOUT[1]~54\ : cycloneive_lcell_comb
-- Equation(s):
-- \DOUT[1]~54_combout\ = (\ADDR[4]~input_o\ & ((\ADDR[3]~input_o\) # ((\reg_gen:21:regs|y\(1))))) # (!\ADDR[4]~input_o\ & (!\ADDR[3]~input_o\ & (\reg_gen:5:regs|y\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ADDR[4]~input_o\,
	datab => \ADDR[3]~input_o\,
	datac => \reg_gen:5:regs|y\(1),
	datad => \reg_gen:21:regs|y\(1),
	combout => \DOUT[1]~54_combout\);

-- Location: LCCOMB_X26_Y69_N6
\DOUT[1]~55\ : cycloneive_lcell_comb
-- Equation(s):
-- \DOUT[1]~55_combout\ = (\ADDR[3]~input_o\ & ((\DOUT[1]~54_combout\ & ((\reg_gen:29:regs|y\(1)))) # (!\DOUT[1]~54_combout\ & (\reg_gen:13:regs|y\(1))))) # (!\ADDR[3]~input_o\ & (((\DOUT[1]~54_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \reg_gen:13:regs|y\(1),
	datab => \ADDR[3]~input_o\,
	datac => \reg_gen:29:regs|y\(1),
	datad => \DOUT[1]~54_combout\,
	combout => \DOUT[1]~55_combout\);

-- Location: FF_X27_Y70_N1
\reg_gen:17:regs|y[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	asdata => \DIN[9]~input_o\,
	sload => VCC,
	ena => dec_to_en(17),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \reg_gen:17:regs|y\(1));

-- Location: FF_X27_Y70_N15
\reg_gen:25:regs|y[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	asdata => \DIN[9]~input_o\,
	sload => VCC,
	ena => dec_to_en(25),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \reg_gen:25:regs|y\(1));

-- Location: FF_X26_Y70_N31
\reg_gen:1:regs|y[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	asdata => \DIN[9]~input_o\,
	sload => VCC,
	ena => dec_to_en(1),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \reg_gen:1:regs|y\(1));

-- Location: FF_X26_Y70_N13
\reg_gen:9:regs|y[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	asdata => \DIN[9]~input_o\,
	sload => VCC,
	ena => dec_to_en(9),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \reg_gen:9:regs|y\(1));

-- Location: LCCOMB_X26_Y70_N30
\DOUT[1]~56\ : cycloneive_lcell_comb
-- Equation(s):
-- \DOUT[1]~56_combout\ = (\ADDR[3]~input_o\ & ((\ADDR[4]~input_o\) # ((\reg_gen:9:regs|y\(1))))) # (!\ADDR[3]~input_o\ & (!\ADDR[4]~input_o\ & (\reg_gen:1:regs|y\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ADDR[3]~input_o\,
	datab => \ADDR[4]~input_o\,
	datac => \reg_gen:1:regs|y\(1),
	datad => \reg_gen:9:regs|y\(1),
	combout => \DOUT[1]~56_combout\);

-- Location: LCCOMB_X27_Y70_N14
\DOUT[1]~57\ : cycloneive_lcell_comb
-- Equation(s):
-- \DOUT[1]~57_combout\ = (\ADDR[4]~input_o\ & ((\DOUT[1]~56_combout\ & ((\reg_gen:25:regs|y\(1)))) # (!\DOUT[1]~56_combout\ & (\reg_gen:17:regs|y\(1))))) # (!\ADDR[4]~input_o\ & (((\DOUT[1]~56_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ADDR[4]~input_o\,
	datab => \reg_gen:17:regs|y\(1),
	datac => \reg_gen:25:regs|y\(1),
	datad => \DOUT[1]~56_combout\,
	combout => \DOUT[1]~57_combout\);

-- Location: LCCOMB_X26_Y71_N30
\DOUT[1]~58\ : cycloneive_lcell_comb
-- Equation(s):
-- \DOUT[1]~58_combout\ = (\ADDR[2]~input_o\ & (\DOUT[1]~55_combout\)) # (!\ADDR[2]~input_o\ & ((\DOUT[1]~57_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \ADDR[2]~input_o\,
	datac => \DOUT[1]~55_combout\,
	datad => \DOUT[1]~57_combout\,
	combout => \DOUT[1]~58_combout\);

-- Location: FF_X29_Y71_N31
\reg_gen:16:regs|y[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	asdata => \DIN[1]~input_o\,
	sload => VCC,
	ena => \dec_to_en[16]~30_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \reg_gen:16:regs|y\(1));

-- Location: FF_X29_Y69_N27
\reg_gen:12:regs|y[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	asdata => \DIN[1]~input_o\,
	sload => VCC,
	ena => dec_to_en(12),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \reg_gen:12:regs|y\(1));

-- Location: FF_X29_Y71_N5
\reg_gen:28:regs|y[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	asdata => \DIN[1]~input_o\,
	sload => VCC,
	ena => dec_to_en(28),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \reg_gen:28:regs|y\(1));

-- Location: FF_X28_Y69_N23
\reg_gen:4:regs|y[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	asdata => \DIN[1]~input_o\,
	sload => VCC,
	ena => dec_to_en(4),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \reg_gen:4:regs|y\(1));

-- Location: FF_X28_Y69_N21
\reg_gen:20:regs|y[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	asdata => \DIN[1]~input_o\,
	sload => VCC,
	ena => dec_to_en(20),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \reg_gen:20:regs|y\(1));

-- Location: LCCOMB_X28_Y69_N22
\DOUT[1]~61\ : cycloneive_lcell_comb
-- Equation(s):
-- \DOUT[1]~61_combout\ = (\ADDR[3]~input_o\ & (\ADDR[4]~input_o\)) # (!\ADDR[3]~input_o\ & ((\ADDR[4]~input_o\ & ((\reg_gen:20:regs|y\(1)))) # (!\ADDR[4]~input_o\ & (\reg_gen:4:regs|y\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ADDR[3]~input_o\,
	datab => \ADDR[4]~input_o\,
	datac => \reg_gen:4:regs|y\(1),
	datad => \reg_gen:20:regs|y\(1),
	combout => \DOUT[1]~61_combout\);

-- Location: LCCOMB_X29_Y71_N4
\DOUT[1]~62\ : cycloneive_lcell_comb
-- Equation(s):
-- \DOUT[1]~62_combout\ = (\ADDR[3]~input_o\ & ((\DOUT[1]~61_combout\ & ((\reg_gen:28:regs|y\(1)))) # (!\DOUT[1]~61_combout\ & (\reg_gen:12:regs|y\(1))))) # (!\ADDR[3]~input_o\ & (((\DOUT[1]~61_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ADDR[3]~input_o\,
	datab => \reg_gen:12:regs|y\(1),
	datac => \reg_gen:28:regs|y\(1),
	datad => \DOUT[1]~61_combout\,
	combout => \DOUT[1]~62_combout\);

-- Location: FF_X29_Y70_N7
\reg_gen:0:regs|y[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	asdata => \DIN[1]~input_o\,
	sload => VCC,
	ena => \dec_to_en[0]~31_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \reg_gen:0:regs|y\(1));

-- Location: FF_X30_Y70_N27
\reg_gen:8:regs|y[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	asdata => \DIN[1]~input_o\,
	sload => VCC,
	ena => \dec_to_en[8]~28_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \reg_gen:8:regs|y\(1));

-- Location: FF_X31_Y70_N3
\reg_gen:24:regs|y[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	asdata => \DIN[1]~input_o\,
	sload => VCC,
	ena => \dec_to_en[24]~26_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \reg_gen:24:regs|y\(1));

-- Location: LCCOMB_X30_Y70_N26
\DOUT[1]~59\ : cycloneive_lcell_comb
-- Equation(s):
-- \DOUT[1]~59_combout\ = (\ADDR[4]~input_o\ & ((\reg_gen:24:regs|y\(1)))) # (!\ADDR[4]~input_o\ & (\reg_gen:8:regs|y\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ADDR[4]~input_o\,
	datac => \reg_gen:8:regs|y\(1),
	datad => \reg_gen:24:regs|y\(1),
	combout => \DOUT[1]~59_combout\);

-- Location: LCCOMB_X29_Y70_N6
\DOUT[1]~60\ : cycloneive_lcell_comb
-- Equation(s):
-- \DOUT[1]~60_combout\ = (\DOUT[0]~34_combout\ & (\DOUT[0]~33_combout\)) # (!\DOUT[0]~34_combout\ & ((\DOUT[0]~33_combout\ & ((\DOUT[1]~59_combout\))) # (!\DOUT[0]~33_combout\ & (\reg_gen:0:regs|y\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \DOUT[0]~34_combout\,
	datab => \DOUT[0]~33_combout\,
	datac => \reg_gen:0:regs|y\(1),
	datad => \DOUT[1]~59_combout\,
	combout => \DOUT[1]~60_combout\);

-- Location: LCCOMB_X29_Y71_N26
\DOUT[1]~63\ : cycloneive_lcell_comb
-- Equation(s):
-- \DOUT[1]~63_combout\ = (\DOUT[0]~34_combout\ & ((\DOUT[1]~60_combout\ & ((\DOUT[1]~62_combout\))) # (!\DOUT[1]~60_combout\ & (\reg_gen:16:regs|y\(1))))) # (!\DOUT[0]~34_combout\ & (((\DOUT[1]~60_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \reg_gen:16:regs|y\(1),
	datab => \DOUT[0]~34_combout\,
	datac => \DOUT[1]~62_combout\,
	datad => \DOUT[1]~60_combout\,
	combout => \DOUT[1]~63_combout\);

-- Location: LCCOMB_X26_Y71_N4
\DOUT[1]~64\ : cycloneive_lcell_comb
-- Equation(s):
-- \DOUT[1]~64_combout\ = (\ADDR[0]~input_o\ & ((\ADDR[1]~input_o\) # ((\DOUT[1]~58_combout\)))) # (!\ADDR[0]~input_o\ & (!\ADDR[1]~input_o\ & ((\DOUT[1]~63_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100110101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ADDR[0]~input_o\,
	datab => \ADDR[1]~input_o\,
	datac => \DOUT[1]~58_combout\,
	datad => \DOUT[1]~63_combout\,
	combout => \DOUT[1]~64_combout\);

-- Location: LCCOMB_X26_Y71_N28
\DOUT[1]~70\ : cycloneive_lcell_comb
-- Equation(s):
-- \DOUT[1]~70_combout\ = (\ADDR[1]~input_o\ & ((\DOUT[1]~64_combout\ & (\DOUT[1]~69_combout\)) # (!\DOUT[1]~64_combout\ & ((\DOUT[1]~53_combout\))))) # (!\ADDR[1]~input_o\ & (((\DOUT[1]~64_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \DOUT[1]~69_combout\,
	datab => \ADDR[1]~input_o\,
	datac => \DOUT[1]~53_combout\,
	datad => \DOUT[1]~64_combout\,
	combout => \DOUT[1]~70_combout\);

-- Location: LCCOMB_X26_Y71_N24
\DOUT[1]$latch\ : cycloneive_lcell_comb
-- Equation(s):
-- \DOUT[1]$latch~combout\ = (\RE~input_o\ & ((GLOBAL(\DOUT[15]~48clkctrl_outclk\) & ((\DOUT[1]~70_combout\))) # (!GLOBAL(\DOUT[15]~48clkctrl_outclk\) & (\DOUT[1]$latch~combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \DOUT[1]$latch~combout\,
	datab => \RE~input_o\,
	datac => \DOUT[1]~70_combout\,
	datad => \DOUT[15]~48clkctrl_outclk\,
	combout => \DOUT[1]$latch~combout\);

-- Location: IOIBUF_X16_Y73_N15
\DIN[10]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_DIN(10),
	o => \DIN[10]~input_o\);

-- Location: FF_X23_Y71_N1
\reg_gen:7:regs|y[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	asdata => \DIN[10]~input_o\,
	sload => VCC,
	ena => dec_to_en(7),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \reg_gen:7:regs|y\(2));

-- Location: FF_X23_Y71_N3
\reg_gen:23:regs|y[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	asdata => \DIN[10]~input_o\,
	sload => VCC,
	ena => dec_to_en(23),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \reg_gen:23:regs|y\(2));

-- Location: LCCOMB_X23_Y71_N0
\DOUT[2]~87\ : cycloneive_lcell_comb
-- Equation(s):
-- \DOUT[2]~87_combout\ = (\ADDR[4]~input_o\ & ((\reg_gen:23:regs|y\(2)))) # (!\ADDR[4]~input_o\ & (\reg_gen:7:regs|y\(2)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ADDR[4]~input_o\,
	datac => \reg_gen:7:regs|y\(2),
	datad => \reg_gen:23:regs|y\(2),
	combout => \DOUT[2]~87_combout\);

-- Location: FF_X25_Y72_N17
\reg_gen:11:regs|y[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	asdata => \DIN[10]~input_o\,
	sload => VCC,
	ena => dec_to_en(11),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \reg_gen:11:regs|y\(2));

-- Location: FF_X25_Y72_N11
\reg_gen:27:regs|y[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	asdata => \DIN[10]~input_o\,
	sload => VCC,
	ena => dec_to_en(27),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \reg_gen:27:regs|y\(2));

-- Location: FF_X24_Y72_N15
\reg_gen:3:regs|y[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	asdata => \DIN[10]~input_o\,
	sload => VCC,
	ena => dec_to_en(3),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \reg_gen:3:regs|y\(2));

-- Location: FF_X23_Y72_N25
\reg_gen:19:regs|y[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	asdata => \DIN[10]~input_o\,
	sload => VCC,
	ena => dec_to_en(19),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \reg_gen:19:regs|y\(2));

-- Location: LCCOMB_X24_Y72_N14
\DOUT[2]~88\ : cycloneive_lcell_comb
-- Equation(s):
-- \DOUT[2]~88_combout\ = (\ADDR[4]~input_o\ & ((\ADDR[3]~input_o\) # ((\reg_gen:19:regs|y\(2))))) # (!\ADDR[4]~input_o\ & (!\ADDR[3]~input_o\ & (\reg_gen:3:regs|y\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ADDR[4]~input_o\,
	datab => \ADDR[3]~input_o\,
	datac => \reg_gen:3:regs|y\(2),
	datad => \reg_gen:19:regs|y\(2),
	combout => \DOUT[2]~88_combout\);

-- Location: LCCOMB_X25_Y72_N10
\DOUT[2]~89\ : cycloneive_lcell_comb
-- Equation(s):
-- \DOUT[2]~89_combout\ = (\ADDR[3]~input_o\ & ((\DOUT[2]~88_combout\ & ((\reg_gen:27:regs|y\(2)))) # (!\DOUT[2]~88_combout\ & (\reg_gen:11:regs|y\(2))))) # (!\ADDR[3]~input_o\ & (((\DOUT[2]~88_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ADDR[3]~input_o\,
	datab => \reg_gen:11:regs|y\(2),
	datac => \reg_gen:27:regs|y\(2),
	datad => \DOUT[2]~88_combout\,
	combout => \DOUT[2]~89_combout\);

-- Location: LCCOMB_X26_Y72_N22
\DOUT[2]~90\ : cycloneive_lcell_comb
-- Equation(s):
-- \DOUT[2]~90_combout\ = (\DOUT[0]~41_combout\ & ((\DOUT[2]~87_combout\) # ((\DOUT[0]~42_combout\)))) # (!\DOUT[0]~41_combout\ & (((!\DOUT[0]~42_combout\ & \DOUT[2]~89_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100101111001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \DOUT[2]~87_combout\,
	datab => \DOUT[0]~41_combout\,
	datac => \DOUT[0]~42_combout\,
	datad => \DOUT[2]~89_combout\,
	combout => \DOUT[2]~90_combout\);

-- Location: IOIBUF_X38_Y73_N22
\DIN[2]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_DIN(2),
	o => \DIN[2]~input_o\);

-- Location: FF_X27_Y71_N31
\reg_gen:30:regs|y[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	asdata => \DIN[2]~input_o\,
	sload => VCC,
	ena => dec_to_en(30),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \reg_gen:30:regs|y\(2));

-- Location: FF_X26_Y72_N25
\reg_gen:15:regs|y[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	asdata => \DIN[10]~input_o\,
	sload => VCC,
	ena => dec_to_en(15),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \reg_gen:15:regs|y\(2));

-- Location: LCCOMB_X26_Y72_N20
\DOUT[2]~91\ : cycloneive_lcell_comb
-- Equation(s):
-- \DOUT[2]~91_combout\ = (\DOUT[2]~90_combout\ & ((\reg_gen:30:regs|y\(2)) # ((!\DOUT[0]~42_combout\)))) # (!\DOUT[2]~90_combout\ & (((\DOUT[0]~42_combout\ & \reg_gen:15:regs|y\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101101010001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \DOUT[2]~90_combout\,
	datab => \reg_gen:30:regs|y\(2),
	datac => \DOUT[0]~42_combout\,
	datad => \reg_gen:15:regs|y\(2),
	combout => \DOUT[2]~91_combout\);

-- Location: FF_X27_Y71_N9
\reg_gen:14:regs|y[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	asdata => \DIN[2]~input_o\,
	sload => VCC,
	ena => dec_to_en(14),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \reg_gen:14:regs|y\(2));

-- Location: FF_X28_Y71_N31
\reg_gen:6:regs|y[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	asdata => \DIN[2]~input_o\,
	sload => VCC,
	ena => dec_to_en(6),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \reg_gen:6:regs|y\(2));

-- Location: FF_X28_Y71_N5
\reg_gen:22:regs|y[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	asdata => \DIN[2]~input_o\,
	sload => VCC,
	ena => dec_to_en(22),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \reg_gen:22:regs|y\(2));

-- Location: LCCOMB_X28_Y71_N30
\DOUT[2]~71\ : cycloneive_lcell_comb
-- Equation(s):
-- \DOUT[2]~71_combout\ = (\ADDR[3]~input_o\ & (\ADDR[4]~input_o\)) # (!\ADDR[3]~input_o\ & ((\ADDR[4]~input_o\ & ((\reg_gen:22:regs|y\(2)))) # (!\ADDR[4]~input_o\ & (\reg_gen:6:regs|y\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ADDR[3]~input_o\,
	datab => \ADDR[4]~input_o\,
	datac => \reg_gen:6:regs|y\(2),
	datad => \reg_gen:22:regs|y\(2),
	combout => \DOUT[2]~71_combout\);

-- Location: LCCOMB_X27_Y71_N8
\DOUT[2]~72\ : cycloneive_lcell_comb
-- Equation(s):
-- \DOUT[2]~72_combout\ = (\ADDR[3]~input_o\ & ((\DOUT[2]~71_combout\ & (\reg_gen:30:regs|y\(2))) # (!\DOUT[2]~71_combout\ & ((\reg_gen:14:regs|y\(2)))))) # (!\ADDR[3]~input_o\ & (((\DOUT[2]~71_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \reg_gen:30:regs|y\(2),
	datab => \ADDR[3]~input_o\,
	datac => \reg_gen:14:regs|y\(2),
	datad => \DOUT[2]~71_combout\,
	combout => \DOUT[2]~72_combout\);

-- Location: FF_X30_Y72_N31
\reg_gen:18:regs|y[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	asdata => \DIN[2]~input_o\,
	sload => VCC,
	ena => dec_to_en(18),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \reg_gen:18:regs|y\(2));

-- Location: FF_X29_Y72_N11
\reg_gen:26:regs|y[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	asdata => \DIN[2]~input_o\,
	sload => VCC,
	ena => dec_to_en(26),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \reg_gen:26:regs|y\(2));

-- Location: FF_X29_Y72_N17
\reg_gen:2:regs|y[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	asdata => \DIN[2]~input_o\,
	sload => VCC,
	ena => dec_to_en(2),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \reg_gen:2:regs|y\(2));

-- Location: FF_X30_Y72_N13
\reg_gen:10:regs|y[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	asdata => \DIN[2]~input_o\,
	sload => VCC,
	ena => dec_to_en(10),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \reg_gen:10:regs|y\(2));

-- Location: LCCOMB_X29_Y72_N16
\DOUT[2]~73\ : cycloneive_lcell_comb
-- Equation(s):
-- \DOUT[2]~73_combout\ = (\ADDR[3]~input_o\ & ((\ADDR[4]~input_o\) # ((\reg_gen:10:regs|y\(2))))) # (!\ADDR[3]~input_o\ & (!\ADDR[4]~input_o\ & (\reg_gen:2:regs|y\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ADDR[3]~input_o\,
	datab => \ADDR[4]~input_o\,
	datac => \reg_gen:2:regs|y\(2),
	datad => \reg_gen:10:regs|y\(2),
	combout => \DOUT[2]~73_combout\);

-- Location: LCCOMB_X29_Y72_N10
\DOUT[2]~74\ : cycloneive_lcell_comb
-- Equation(s):
-- \DOUT[2]~74_combout\ = (\ADDR[4]~input_o\ & ((\DOUT[2]~73_combout\ & ((\reg_gen:26:regs|y\(2)))) # (!\DOUT[2]~73_combout\ & (\reg_gen:18:regs|y\(2))))) # (!\ADDR[4]~input_o\ & (((\DOUT[2]~73_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \reg_gen:18:regs|y\(2),
	datab => \ADDR[4]~input_o\,
	datac => \reg_gen:26:regs|y\(2),
	datad => \DOUT[2]~73_combout\,
	combout => \DOUT[2]~74_combout\);

-- Location: LCCOMB_X26_Y72_N30
\DOUT[2]~75\ : cycloneive_lcell_comb
-- Equation(s):
-- \DOUT[2]~75_combout\ = (\ADDR[2]~input_o\ & (\DOUT[2]~72_combout\)) # (!\ADDR[2]~input_o\ & ((\DOUT[2]~74_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \ADDR[2]~input_o\,
	datac => \DOUT[2]~72_combout\,
	datad => \DOUT[2]~74_combout\,
	combout => \DOUT[2]~75_combout\);

-- Location: LCCOMB_X25_Y69_N18
\reg_gen:17:regs|y[2]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \reg_gen:17:regs|y[2]~feeder_combout\ = \DIN[10]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \DIN[10]~input_o\,
	combout => \reg_gen:17:regs|y[2]~feeder_combout\);

-- Location: FF_X25_Y69_N19
\reg_gen:17:regs|y[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \reg_gen:17:regs|y[2]~feeder_combout\,
	ena => dec_to_en(17),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \reg_gen:17:regs|y\(2));

-- Location: FF_X26_Y72_N9
\reg_gen:25:regs|y[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	asdata => \DIN[10]~input_o\,
	sload => VCC,
	ena => dec_to_en(25),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \reg_gen:25:regs|y\(2));

-- Location: FF_X26_Y70_N9
\reg_gen:1:regs|y[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	asdata => \DIN[10]~input_o\,
	sload => VCC,
	ena => dec_to_en(1),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \reg_gen:1:regs|y\(2));

-- Location: FF_X26_Y70_N17
\reg_gen:9:regs|y[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	asdata => \DIN[10]~input_o\,
	sload => VCC,
	ena => dec_to_en(9),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \reg_gen:9:regs|y\(2));

-- Location: LCCOMB_X26_Y70_N8
\DOUT[2]~78\ : cycloneive_lcell_comb
-- Equation(s):
-- \DOUT[2]~78_combout\ = (\ADDR[3]~input_o\ & ((\ADDR[4]~input_o\) # ((\reg_gen:9:regs|y\(2))))) # (!\ADDR[3]~input_o\ & (!\ADDR[4]~input_o\ & (\reg_gen:1:regs|y\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ADDR[3]~input_o\,
	datab => \ADDR[4]~input_o\,
	datac => \reg_gen:1:regs|y\(2),
	datad => \reg_gen:9:regs|y\(2),
	combout => \DOUT[2]~78_combout\);

-- Location: LCCOMB_X26_Y72_N8
\DOUT[2]~79\ : cycloneive_lcell_comb
-- Equation(s):
-- \DOUT[2]~79_combout\ = (\ADDR[4]~input_o\ & ((\DOUT[2]~78_combout\ & ((\reg_gen:25:regs|y\(2)))) # (!\DOUT[2]~78_combout\ & (\reg_gen:17:regs|y\(2))))) # (!\ADDR[4]~input_o\ & (((\DOUT[2]~78_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ADDR[4]~input_o\,
	datab => \reg_gen:17:regs|y\(2),
	datac => \reg_gen:25:regs|y\(2),
	datad => \DOUT[2]~78_combout\,
	combout => \DOUT[2]~79_combout\);

-- Location: LCCOMB_X25_Y69_N8
\reg_gen:13:regs|y[2]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \reg_gen:13:regs|y[2]~feeder_combout\ = \DIN[10]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \DIN[10]~input_o\,
	combout => \reg_gen:13:regs|y[2]~feeder_combout\);

-- Location: FF_X25_Y69_N9
\reg_gen:13:regs|y[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \reg_gen:13:regs|y[2]~feeder_combout\,
	ena => dec_to_en(13),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \reg_gen:13:regs|y\(2));

-- Location: FF_X26_Y69_N15
\reg_gen:29:regs|y[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	asdata => \DIN[10]~input_o\,
	sload => VCC,
	ena => dec_to_en(29),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \reg_gen:29:regs|y\(2));

-- Location: FF_X26_Y69_N29
\reg_gen:5:regs|y[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	asdata => \DIN[10]~input_o\,
	sload => VCC,
	ena => dec_to_en(5),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \reg_gen:5:regs|y\(2));

-- Location: FF_X27_Y69_N29
\reg_gen:21:regs|y[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	asdata => \DIN[10]~input_o\,
	sload => VCC,
	ena => dec_to_en(21),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \reg_gen:21:regs|y\(2));

-- Location: LCCOMB_X26_Y69_N28
\DOUT[2]~76\ : cycloneive_lcell_comb
-- Equation(s):
-- \DOUT[2]~76_combout\ = (\ADDR[4]~input_o\ & ((\ADDR[3]~input_o\) # ((\reg_gen:21:regs|y\(2))))) # (!\ADDR[4]~input_o\ & (!\ADDR[3]~input_o\ & (\reg_gen:5:regs|y\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ADDR[4]~input_o\,
	datab => \ADDR[3]~input_o\,
	datac => \reg_gen:5:regs|y\(2),
	datad => \reg_gen:21:regs|y\(2),
	combout => \DOUT[2]~76_combout\);

-- Location: LCCOMB_X26_Y69_N14
\DOUT[2]~77\ : cycloneive_lcell_comb
-- Equation(s):
-- \DOUT[2]~77_combout\ = (\ADDR[3]~input_o\ & ((\DOUT[2]~76_combout\ & ((\reg_gen:29:regs|y\(2)))) # (!\DOUT[2]~76_combout\ & (\reg_gen:13:regs|y\(2))))) # (!\ADDR[3]~input_o\ & (((\DOUT[2]~76_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \reg_gen:13:regs|y\(2),
	datab => \ADDR[3]~input_o\,
	datac => \reg_gen:29:regs|y\(2),
	datad => \DOUT[2]~76_combout\,
	combout => \DOUT[2]~77_combout\);

-- Location: LCCOMB_X26_Y72_N10
\DOUT[2]~80\ : cycloneive_lcell_comb
-- Equation(s):
-- \DOUT[2]~80_combout\ = (\ADDR[2]~input_o\ & ((\DOUT[2]~77_combout\))) # (!\ADDR[2]~input_o\ & (\DOUT[2]~79_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \ADDR[2]~input_o\,
	datac => \DOUT[2]~79_combout\,
	datad => \DOUT[2]~77_combout\,
	combout => \DOUT[2]~80_combout\);

-- Location: FF_X29_Y70_N25
\reg_gen:0:regs|y[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	asdata => \DIN[2]~input_o\,
	sload => VCC,
	ena => \dec_to_en[0]~31_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \reg_gen:0:regs|y\(2));

-- Location: FF_X30_Y70_N19
\reg_gen:16:regs|y[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	asdata => \DIN[2]~input_o\,
	sload => VCC,
	ena => \dec_to_en[16]~30_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \reg_gen:16:regs|y\(2));

-- Location: LCCOMB_X29_Y70_N24
\DOUT[2]~82\ : cycloneive_lcell_comb
-- Equation(s):
-- \DOUT[2]~82_combout\ = (\DOUT[0]~34_combout\ & ((\DOUT[0]~33_combout\) # ((\reg_gen:16:regs|y\(2))))) # (!\DOUT[0]~34_combout\ & (!\DOUT[0]~33_combout\ & (\reg_gen:0:regs|y\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \DOUT[0]~34_combout\,
	datab => \DOUT[0]~33_combout\,
	datac => \reg_gen:0:regs|y\(2),
	datad => \reg_gen:16:regs|y\(2),
	combout => \DOUT[2]~82_combout\);

-- Location: FF_X30_Y70_N13
\reg_gen:8:regs|y[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	asdata => \DIN[2]~input_o\,
	sload => VCC,
	ena => \dec_to_en[8]~28_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \reg_gen:8:regs|y\(2));

-- Location: FF_X31_Y70_N29
\reg_gen:24:regs|y[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	asdata => \DIN[2]~input_o\,
	sload => VCC,
	ena => \dec_to_en[24]~26_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \reg_gen:24:regs|y\(2));

-- Location: LCCOMB_X30_Y70_N12
\DOUT[2]~81\ : cycloneive_lcell_comb
-- Equation(s):
-- \DOUT[2]~81_combout\ = (\ADDR[4]~input_o\ & ((\reg_gen:24:regs|y\(2)))) # (!\ADDR[4]~input_o\ & (\reg_gen:8:regs|y\(2)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ADDR[4]~input_o\,
	datac => \reg_gen:8:regs|y\(2),
	datad => \reg_gen:24:regs|y\(2),
	combout => \DOUT[2]~81_combout\);

-- Location: FF_X30_Y69_N29
\reg_gen:12:regs|y[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	asdata => \DIN[2]~input_o\,
	sload => VCC,
	ena => dec_to_en(12),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \reg_gen:12:regs|y\(2));

-- Location: FF_X30_Y69_N27
\reg_gen:28:regs|y[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	asdata => \DIN[2]~input_o\,
	sload => VCC,
	ena => dec_to_en(28),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \reg_gen:28:regs|y\(2));

-- Location: FF_X29_Y69_N13
\reg_gen:4:regs|y[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	asdata => \DIN[2]~input_o\,
	sload => VCC,
	ena => dec_to_en(4),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \reg_gen:4:regs|y\(2));

-- Location: FF_X28_Y69_N13
\reg_gen:20:regs|y[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	asdata => \DIN[2]~input_o\,
	sload => VCC,
	ena => dec_to_en(20),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \reg_gen:20:regs|y\(2));

-- Location: LCCOMB_X29_Y69_N12
\DOUT[2]~83\ : cycloneive_lcell_comb
-- Equation(s):
-- \DOUT[2]~83_combout\ = (\ADDR[4]~input_o\ & ((\ADDR[3]~input_o\) # ((\reg_gen:20:regs|y\(2))))) # (!\ADDR[4]~input_o\ & (!\ADDR[3]~input_o\ & (\reg_gen:4:regs|y\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ADDR[4]~input_o\,
	datab => \ADDR[3]~input_o\,
	datac => \reg_gen:4:regs|y\(2),
	datad => \reg_gen:20:regs|y\(2),
	combout => \DOUT[2]~83_combout\);

-- Location: LCCOMB_X30_Y69_N26
\DOUT[2]~84\ : cycloneive_lcell_comb
-- Equation(s):
-- \DOUT[2]~84_combout\ = (\ADDR[3]~input_o\ & ((\DOUT[2]~83_combout\ & ((\reg_gen:28:regs|y\(2)))) # (!\DOUT[2]~83_combout\ & (\reg_gen:12:regs|y\(2))))) # (!\ADDR[3]~input_o\ & (((\DOUT[2]~83_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ADDR[3]~input_o\,
	datab => \reg_gen:12:regs|y\(2),
	datac => \reg_gen:28:regs|y\(2),
	datad => \DOUT[2]~83_combout\,
	combout => \DOUT[2]~84_combout\);

-- Location: LCCOMB_X26_Y72_N28
\DOUT[2]~85\ : cycloneive_lcell_comb
-- Equation(s):
-- \DOUT[2]~85_combout\ = (\DOUT[2]~82_combout\ & (((\DOUT[2]~84_combout\) # (!\DOUT[0]~33_combout\)))) # (!\DOUT[2]~82_combout\ & (\DOUT[2]~81_combout\ & (\DOUT[0]~33_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101001001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \DOUT[2]~82_combout\,
	datab => \DOUT[2]~81_combout\,
	datac => \DOUT[0]~33_combout\,
	datad => \DOUT[2]~84_combout\,
	combout => \DOUT[2]~85_combout\);

-- Location: LCCOMB_X26_Y72_N6
\DOUT[2]~86\ : cycloneive_lcell_comb
-- Equation(s):
-- \DOUT[2]~86_combout\ = (\ADDR[0]~input_o\ & ((\DOUT[2]~80_combout\) # ((\ADDR[1]~input_o\)))) # (!\ADDR[0]~input_o\ & (((!\ADDR[1]~input_o\ & \DOUT[2]~85_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100101111001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \DOUT[2]~80_combout\,
	datab => \ADDR[0]~input_o\,
	datac => \ADDR[1]~input_o\,
	datad => \DOUT[2]~85_combout\,
	combout => \DOUT[2]~86_combout\);

-- Location: LCCOMB_X26_Y72_N14
\DOUT[2]~92\ : cycloneive_lcell_comb
-- Equation(s):
-- \DOUT[2]~92_combout\ = (\ADDR[1]~input_o\ & ((\DOUT[2]~86_combout\ & (\DOUT[2]~91_combout\)) # (!\DOUT[2]~86_combout\ & ((\DOUT[2]~75_combout\))))) # (!\ADDR[1]~input_o\ & (((\DOUT[2]~86_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ADDR[1]~input_o\,
	datab => \DOUT[2]~91_combout\,
	datac => \DOUT[2]~75_combout\,
	datad => \DOUT[2]~86_combout\,
	combout => \DOUT[2]~92_combout\);

-- Location: LCCOMB_X26_Y72_N0
\DOUT[2]$latch\ : cycloneive_lcell_comb
-- Equation(s):
-- \DOUT[2]$latch~combout\ = (\RE~input_o\ & ((GLOBAL(\DOUT[15]~48clkctrl_outclk\) & ((\DOUT[2]~92_combout\))) # (!GLOBAL(\DOUT[15]~48clkctrl_outclk\) & (\DOUT[2]$latch~combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RE~input_o\,
	datab => \DOUT[2]$latch~combout\,
	datac => \DOUT[2]~92_combout\,
	datad => \DOUT[15]~48clkctrl_outclk\,
	combout => \DOUT[2]$latch~combout\);

-- Location: IOIBUF_X38_Y73_N1
\DIN[3]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_DIN(3),
	o => \DIN[3]~input_o\);

-- Location: FF_X27_Y71_N3
\reg_gen:30:regs|y[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	asdata => \DIN[3]~input_o\,
	sload => VCC,
	ena => dec_to_en(30),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \reg_gen:30:regs|y\(3));

-- Location: FF_X27_Y71_N17
\reg_gen:14:regs|y[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	asdata => \DIN[3]~input_o\,
	sload => VCC,
	ena => dec_to_en(14),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \reg_gen:14:regs|y\(3));

-- Location: FF_X28_Y71_N19
\reg_gen:6:regs|y[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	asdata => \DIN[3]~input_o\,
	sload => VCC,
	ena => dec_to_en(6),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \reg_gen:6:regs|y\(3));

-- Location: FF_X28_Y71_N17
\reg_gen:22:regs|y[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	asdata => \DIN[3]~input_o\,
	sload => VCC,
	ena => dec_to_en(22),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \reg_gen:22:regs|y\(3));

-- Location: LCCOMB_X28_Y71_N18
\DOUT[3]~93\ : cycloneive_lcell_comb
-- Equation(s):
-- \DOUT[3]~93_combout\ = (\ADDR[3]~input_o\ & (\ADDR[4]~input_o\)) # (!\ADDR[3]~input_o\ & ((\ADDR[4]~input_o\ & ((\reg_gen:22:regs|y\(3)))) # (!\ADDR[4]~input_o\ & (\reg_gen:6:regs|y\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ADDR[3]~input_o\,
	datab => \ADDR[4]~input_o\,
	datac => \reg_gen:6:regs|y\(3),
	datad => \reg_gen:22:regs|y\(3),
	combout => \DOUT[3]~93_combout\);

-- Location: LCCOMB_X27_Y71_N16
\DOUT[3]~94\ : cycloneive_lcell_comb
-- Equation(s):
-- \DOUT[3]~94_combout\ = (\ADDR[3]~input_o\ & ((\DOUT[3]~93_combout\ & (\reg_gen:30:regs|y\(3))) # (!\DOUT[3]~93_combout\ & ((\reg_gen:14:regs|y\(3)))))) # (!\ADDR[3]~input_o\ & (((\DOUT[3]~93_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ADDR[3]~input_o\,
	datab => \reg_gen:30:regs|y\(3),
	datac => \reg_gen:14:regs|y\(3),
	datad => \DOUT[3]~93_combout\,
	combout => \DOUT[3]~94_combout\);

-- Location: FF_X30_Y72_N23
\reg_gen:18:regs|y[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	asdata => \DIN[3]~input_o\,
	sload => VCC,
	ena => dec_to_en(18),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \reg_gen:18:regs|y\(3));

-- Location: FF_X29_Y72_N23
\reg_gen:26:regs|y[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	asdata => \DIN[3]~input_o\,
	sload => VCC,
	ena => dec_to_en(26),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \reg_gen:26:regs|y\(3));

-- Location: FF_X29_Y72_N1
\reg_gen:2:regs|y[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	asdata => \DIN[3]~input_o\,
	sload => VCC,
	ena => dec_to_en(2),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \reg_gen:2:regs|y\(3));

-- Location: FF_X30_Y72_N5
\reg_gen:10:regs|y[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	asdata => \DIN[3]~input_o\,
	sload => VCC,
	ena => dec_to_en(10),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \reg_gen:10:regs|y\(3));

-- Location: LCCOMB_X29_Y72_N0
\DOUT[3]~95\ : cycloneive_lcell_comb
-- Equation(s):
-- \DOUT[3]~95_combout\ = (\ADDR[3]~input_o\ & ((\ADDR[4]~input_o\) # ((\reg_gen:10:regs|y\(3))))) # (!\ADDR[3]~input_o\ & (!\ADDR[4]~input_o\ & (\reg_gen:2:regs|y\(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ADDR[3]~input_o\,
	datab => \ADDR[4]~input_o\,
	datac => \reg_gen:2:regs|y\(3),
	datad => \reg_gen:10:regs|y\(3),
	combout => \DOUT[3]~95_combout\);

-- Location: LCCOMB_X29_Y72_N22
\DOUT[3]~96\ : cycloneive_lcell_comb
-- Equation(s):
-- \DOUT[3]~96_combout\ = (\ADDR[4]~input_o\ & ((\DOUT[3]~95_combout\ & ((\reg_gen:26:regs|y\(3)))) # (!\DOUT[3]~95_combout\ & (\reg_gen:18:regs|y\(3))))) # (!\ADDR[4]~input_o\ & (((\DOUT[3]~95_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ADDR[4]~input_o\,
	datab => \reg_gen:18:regs|y\(3),
	datac => \reg_gen:26:regs|y\(3),
	datad => \DOUT[3]~95_combout\,
	combout => \DOUT[3]~96_combout\);

-- Location: LCCOMB_X25_Y70_N0
\DOUT[3]~97\ : cycloneive_lcell_comb
-- Equation(s):
-- \DOUT[3]~97_combout\ = (\ADDR[2]~input_o\ & (\DOUT[3]~94_combout\)) # (!\ADDR[2]~input_o\ & ((\DOUT[3]~96_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \DOUT[3]~94_combout\,
	datac => \DOUT[3]~96_combout\,
	datad => \ADDR[2]~input_o\,
	combout => \DOUT[3]~97_combout\);

-- Location: FF_X30_Y70_N21
\reg_gen:16:regs|y[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	asdata => \DIN[3]~input_o\,
	sload => VCC,
	ena => \dec_to_en[16]~30_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \reg_gen:16:regs|y\(3));

-- Location: FF_X29_Y70_N15
\reg_gen:0:regs|y[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	asdata => \DIN[3]~input_o\,
	sload => VCC,
	ena => \dec_to_en[0]~31_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \reg_gen:0:regs|y\(3));

-- Location: FF_X30_Y70_N3
\reg_gen:8:regs|y[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	asdata => \DIN[3]~input_o\,
	sload => VCC,
	ena => \dec_to_en[8]~28_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \reg_gen:8:regs|y\(3));

-- Location: LCCOMB_X31_Y70_N22
\reg_gen:24:regs|y[3]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \reg_gen:24:regs|y[3]~feeder_combout\ = \DIN[3]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \DIN[3]~input_o\,
	combout => \reg_gen:24:regs|y[3]~feeder_combout\);

-- Location: FF_X31_Y70_N23
\reg_gen:24:regs|y[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \reg_gen:24:regs|y[3]~feeder_combout\,
	ena => \dec_to_en[24]~26_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \reg_gen:24:regs|y\(3));

-- Location: LCCOMB_X30_Y70_N2
\DOUT[3]~103\ : cycloneive_lcell_comb
-- Equation(s):
-- \DOUT[3]~103_combout\ = (\ADDR[4]~input_o\ & ((\reg_gen:24:regs|y\(3)))) # (!\ADDR[4]~input_o\ & (\reg_gen:8:regs|y\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ADDR[4]~input_o\,
	datac => \reg_gen:8:regs|y\(3),
	datad => \reg_gen:24:regs|y\(3),
	combout => \DOUT[3]~103_combout\);

-- Location: LCCOMB_X29_Y70_N14
\DOUT[3]~104\ : cycloneive_lcell_comb
-- Equation(s):
-- \DOUT[3]~104_combout\ = (\DOUT[0]~34_combout\ & (\DOUT[0]~33_combout\)) # (!\DOUT[0]~34_combout\ & ((\DOUT[0]~33_combout\ & ((\DOUT[3]~103_combout\))) # (!\DOUT[0]~33_combout\ & (\reg_gen:0:regs|y\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \DOUT[0]~34_combout\,
	datab => \DOUT[0]~33_combout\,
	datac => \reg_gen:0:regs|y\(3),
	datad => \DOUT[3]~103_combout\,
	combout => \DOUT[3]~104_combout\);

-- Location: LCCOMB_X29_Y69_N22
\reg_gen:12:regs|y[3]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \reg_gen:12:regs|y[3]~feeder_combout\ = \DIN[3]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \DIN[3]~input_o\,
	combout => \reg_gen:12:regs|y[3]~feeder_combout\);

-- Location: FF_X29_Y69_N23
\reg_gen:12:regs|y[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \reg_gen:12:regs|y[3]~feeder_combout\,
	ena => dec_to_en(12),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \reg_gen:12:regs|y\(3));

-- Location: FF_X28_Y70_N29
\reg_gen:28:regs|y[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	asdata => \DIN[3]~input_o\,
	sload => VCC,
	ena => dec_to_en(28),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \reg_gen:28:regs|y\(3));

-- Location: FF_X28_Y69_N1
\reg_gen:4:regs|y[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	asdata => \DIN[3]~input_o\,
	sload => VCC,
	ena => dec_to_en(4),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \reg_gen:4:regs|y\(3));

-- Location: FF_X28_Y69_N7
\reg_gen:20:regs|y[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	asdata => \DIN[3]~input_o\,
	sload => VCC,
	ena => dec_to_en(20),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \reg_gen:20:regs|y\(3));

-- Location: LCCOMB_X28_Y69_N0
\DOUT[3]~105\ : cycloneive_lcell_comb
-- Equation(s):
-- \DOUT[3]~105_combout\ = (\ADDR[3]~input_o\ & (\ADDR[4]~input_o\)) # (!\ADDR[3]~input_o\ & ((\ADDR[4]~input_o\ & ((\reg_gen:20:regs|y\(3)))) # (!\ADDR[4]~input_o\ & (\reg_gen:4:regs|y\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ADDR[3]~input_o\,
	datab => \ADDR[4]~input_o\,
	datac => \reg_gen:4:regs|y\(3),
	datad => \reg_gen:20:regs|y\(3),
	combout => \DOUT[3]~105_combout\);

-- Location: LCCOMB_X28_Y70_N28
\DOUT[3]~106\ : cycloneive_lcell_comb
-- Equation(s):
-- \DOUT[3]~106_combout\ = (\ADDR[3]~input_o\ & ((\DOUT[3]~105_combout\ & ((\reg_gen:28:regs|y\(3)))) # (!\DOUT[3]~105_combout\ & (\reg_gen:12:regs|y\(3))))) # (!\ADDR[3]~input_o\ & (((\DOUT[3]~105_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ADDR[3]~input_o\,
	datab => \reg_gen:12:regs|y\(3),
	datac => \reg_gen:28:regs|y\(3),
	datad => \DOUT[3]~105_combout\,
	combout => \DOUT[3]~106_combout\);

-- Location: LCCOMB_X25_Y70_N2
\DOUT[3]~107\ : cycloneive_lcell_comb
-- Equation(s):
-- \DOUT[3]~107_combout\ = (\DOUT[0]~34_combout\ & ((\DOUT[3]~104_combout\ & ((\DOUT[3]~106_combout\))) # (!\DOUT[3]~104_combout\ & (\reg_gen:16:regs|y\(3))))) # (!\DOUT[0]~34_combout\ & (((\DOUT[3]~104_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100001011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \DOUT[0]~34_combout\,
	datab => \reg_gen:16:regs|y\(3),
	datac => \DOUT[3]~104_combout\,
	datad => \DOUT[3]~106_combout\,
	combout => \DOUT[3]~107_combout\);

-- Location: IOIBUF_X23_Y73_N15
\DIN[11]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_DIN(11),
	o => \DIN[11]~input_o\);

-- Location: FF_X24_Y70_N13
\reg_gen:17:regs|y[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	asdata => \DIN[11]~input_o\,
	sload => VCC,
	ena => dec_to_en(17),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \reg_gen:17:regs|y\(3));

-- Location: FF_X25_Y70_N23
\reg_gen:25:regs|y[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	asdata => \DIN[11]~input_o\,
	sload => VCC,
	ena => dec_to_en(25),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \reg_gen:25:regs|y\(3));

-- Location: FF_X26_Y70_N5
\reg_gen:1:regs|y[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	asdata => \DIN[11]~input_o\,
	sload => VCC,
	ena => dec_to_en(1),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \reg_gen:1:regs|y\(3));

-- Location: FF_X26_Y70_N7
\reg_gen:9:regs|y[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	asdata => \DIN[11]~input_o\,
	sload => VCC,
	ena => dec_to_en(9),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \reg_gen:9:regs|y\(3));

-- Location: LCCOMB_X26_Y70_N4
\DOUT[3]~100\ : cycloneive_lcell_comb
-- Equation(s):
-- \DOUT[3]~100_combout\ = (\ADDR[3]~input_o\ & ((\ADDR[4]~input_o\) # ((\reg_gen:9:regs|y\(3))))) # (!\ADDR[3]~input_o\ & (!\ADDR[4]~input_o\ & (\reg_gen:1:regs|y\(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ADDR[3]~input_o\,
	datab => \ADDR[4]~input_o\,
	datac => \reg_gen:1:regs|y\(3),
	datad => \reg_gen:9:regs|y\(3),
	combout => \DOUT[3]~100_combout\);

-- Location: LCCOMB_X25_Y70_N22
\DOUT[3]~101\ : cycloneive_lcell_comb
-- Equation(s):
-- \DOUT[3]~101_combout\ = (\ADDR[4]~input_o\ & ((\DOUT[3]~100_combout\ & ((\reg_gen:25:regs|y\(3)))) # (!\DOUT[3]~100_combout\ & (\reg_gen:17:regs|y\(3))))) # (!\ADDR[4]~input_o\ & (((\DOUT[3]~100_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \reg_gen:17:regs|y\(3),
	datab => \ADDR[4]~input_o\,
	datac => \reg_gen:25:regs|y\(3),
	datad => \DOUT[3]~100_combout\,
	combout => \DOUT[3]~101_combout\);

-- Location: FF_X27_Y69_N11
\reg_gen:13:regs|y[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	asdata => \DIN[11]~input_o\,
	sload => VCC,
	ena => dec_to_en(13),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \reg_gen:13:regs|y\(3));

-- Location: FF_X26_Y69_N31
\reg_gen:29:regs|y[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	asdata => \DIN[11]~input_o\,
	sload => VCC,
	ena => dec_to_en(29),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \reg_gen:29:regs|y\(3));

-- Location: FF_X26_Y69_N21
\reg_gen:5:regs|y[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	asdata => \DIN[11]~input_o\,
	sload => VCC,
	ena => dec_to_en(5),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \reg_gen:5:regs|y\(3));

-- Location: FF_X27_Y69_N17
\reg_gen:21:regs|y[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	asdata => \DIN[11]~input_o\,
	sload => VCC,
	ena => dec_to_en(21),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \reg_gen:21:regs|y\(3));

-- Location: LCCOMB_X26_Y69_N20
\DOUT[3]~98\ : cycloneive_lcell_comb
-- Equation(s):
-- \DOUT[3]~98_combout\ = (\ADDR[4]~input_o\ & ((\ADDR[3]~input_o\) # ((\reg_gen:21:regs|y\(3))))) # (!\ADDR[4]~input_o\ & (!\ADDR[3]~input_o\ & (\reg_gen:5:regs|y\(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ADDR[4]~input_o\,
	datab => \ADDR[3]~input_o\,
	datac => \reg_gen:5:regs|y\(3),
	datad => \reg_gen:21:regs|y\(3),
	combout => \DOUT[3]~98_combout\);

-- Location: LCCOMB_X26_Y69_N30
\DOUT[3]~99\ : cycloneive_lcell_comb
-- Equation(s):
-- \DOUT[3]~99_combout\ = (\ADDR[3]~input_o\ & ((\DOUT[3]~98_combout\ & ((\reg_gen:29:regs|y\(3)))) # (!\DOUT[3]~98_combout\ & (\reg_gen:13:regs|y\(3))))) # (!\ADDR[3]~input_o\ & (((\DOUT[3]~98_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ADDR[3]~input_o\,
	datab => \reg_gen:13:regs|y\(3),
	datac => \reg_gen:29:regs|y\(3),
	datad => \DOUT[3]~98_combout\,
	combout => \DOUT[3]~99_combout\);

-- Location: LCCOMB_X25_Y70_N24
\DOUT[3]~102\ : cycloneive_lcell_comb
-- Equation(s):
-- \DOUT[3]~102_combout\ = (\ADDR[2]~input_o\ & ((\DOUT[3]~99_combout\))) # (!\ADDR[2]~input_o\ & (\DOUT[3]~101_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ADDR[2]~input_o\,
	datac => \DOUT[3]~101_combout\,
	datad => \DOUT[3]~99_combout\,
	combout => \DOUT[3]~102_combout\);

-- Location: LCCOMB_X25_Y70_N20
\DOUT[3]~108\ : cycloneive_lcell_comb
-- Equation(s):
-- \DOUT[3]~108_combout\ = (\ADDR[1]~input_o\ & (((\ADDR[0]~input_o\)))) # (!\ADDR[1]~input_o\ & ((\ADDR[0]~input_o\ & ((\DOUT[3]~102_combout\))) # (!\ADDR[0]~input_o\ & (\DOUT[3]~107_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010010100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ADDR[1]~input_o\,
	datab => \DOUT[3]~107_combout\,
	datac => \ADDR[0]~input_o\,
	datad => \DOUT[3]~102_combout\,
	combout => \DOUT[3]~108_combout\);

-- Location: FF_X24_Y71_N21
\reg_gen:7:regs|y[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	asdata => \DIN[11]~input_o\,
	sload => VCC,
	ena => dec_to_en(7),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \reg_gen:7:regs|y\(3));

-- Location: FF_X23_Y71_N15
\reg_gen:23:regs|y[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	asdata => \DIN[11]~input_o\,
	sload => VCC,
	ena => dec_to_en(23),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \reg_gen:23:regs|y\(3));

-- Location: LCCOMB_X24_Y71_N20
\DOUT[3]~109\ : cycloneive_lcell_comb
-- Equation(s):
-- \DOUT[3]~109_combout\ = (\ADDR[4]~input_o\ & ((\reg_gen:23:regs|y\(3)))) # (!\ADDR[4]~input_o\ & (\reg_gen:7:regs|y\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ADDR[4]~input_o\,
	datac => \reg_gen:7:regs|y\(3),
	datad => \reg_gen:23:regs|y\(3),
	combout => \DOUT[3]~109_combout\);

-- Location: LCCOMB_X25_Y72_N8
\reg_gen:11:regs|y[3]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \reg_gen:11:regs|y[3]~feeder_combout\ = \DIN[11]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \DIN[11]~input_o\,
	combout => \reg_gen:11:regs|y[3]~feeder_combout\);

-- Location: FF_X25_Y72_N9
\reg_gen:11:regs|y[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \reg_gen:11:regs|y[3]~feeder_combout\,
	ena => dec_to_en(11),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \reg_gen:11:regs|y\(3));

-- Location: FF_X24_Y72_N3
\reg_gen:27:regs|y[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	asdata => \DIN[11]~input_o\,
	sload => VCC,
	ena => dec_to_en(27),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \reg_gen:27:regs|y\(3));

-- Location: FF_X24_Y72_N13
\reg_gen:3:regs|y[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	asdata => \DIN[11]~input_o\,
	sload => VCC,
	ena => dec_to_en(3),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \reg_gen:3:regs|y\(3));

-- Location: LCCOMB_X23_Y72_N30
\reg_gen:19:regs|y[3]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \reg_gen:19:regs|y[3]~feeder_combout\ = \DIN[11]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \DIN[11]~input_o\,
	combout => \reg_gen:19:regs|y[3]~feeder_combout\);

-- Location: FF_X23_Y72_N31
\reg_gen:19:regs|y[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \reg_gen:19:regs|y[3]~feeder_combout\,
	ena => dec_to_en(19),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \reg_gen:19:regs|y\(3));

-- Location: LCCOMB_X24_Y72_N12
\DOUT[3]~110\ : cycloneive_lcell_comb
-- Equation(s):
-- \DOUT[3]~110_combout\ = (\ADDR[4]~input_o\ & ((\ADDR[3]~input_o\) # ((\reg_gen:19:regs|y\(3))))) # (!\ADDR[4]~input_o\ & (!\ADDR[3]~input_o\ & (\reg_gen:3:regs|y\(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ADDR[4]~input_o\,
	datab => \ADDR[3]~input_o\,
	datac => \reg_gen:3:regs|y\(3),
	datad => \reg_gen:19:regs|y\(3),
	combout => \DOUT[3]~110_combout\);

-- Location: LCCOMB_X24_Y72_N2
\DOUT[3]~111\ : cycloneive_lcell_comb
-- Equation(s):
-- \DOUT[3]~111_combout\ = (\ADDR[3]~input_o\ & ((\DOUT[3]~110_combout\ & ((\reg_gen:27:regs|y\(3)))) # (!\DOUT[3]~110_combout\ & (\reg_gen:11:regs|y\(3))))) # (!\ADDR[3]~input_o\ & (((\DOUT[3]~110_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ADDR[3]~input_o\,
	datab => \reg_gen:11:regs|y\(3),
	datac => \reg_gen:27:regs|y\(3),
	datad => \DOUT[3]~110_combout\,
	combout => \DOUT[3]~111_combout\);

-- Location: FF_X25_Y70_N15
\reg_gen:15:regs|y[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	asdata => \DIN[11]~input_o\,
	sload => VCC,
	ena => dec_to_en(15),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \reg_gen:15:regs|y\(3));

-- Location: LCCOMB_X25_Y70_N14
\DOUT[3]~112\ : cycloneive_lcell_comb
-- Equation(s):
-- \DOUT[3]~112_combout\ = (\DOUT[0]~41_combout\ & (((\DOUT[0]~42_combout\)))) # (!\DOUT[0]~41_combout\ & ((\DOUT[0]~42_combout\ & ((\reg_gen:15:regs|y\(3)))) # (!\DOUT[0]~42_combout\ & (\DOUT[3]~111_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \DOUT[3]~111_combout\,
	datab => \DOUT[0]~41_combout\,
	datac => \reg_gen:15:regs|y\(3),
	datad => \DOUT[0]~42_combout\,
	combout => \DOUT[3]~112_combout\);

-- Location: LCCOMB_X25_Y70_N16
\DOUT[3]~113\ : cycloneive_lcell_comb
-- Equation(s):
-- \DOUT[3]~113_combout\ = (\DOUT[0]~41_combout\ & ((\DOUT[3]~112_combout\ & (\reg_gen:30:regs|y\(3))) # (!\DOUT[3]~112_combout\ & ((\DOUT[3]~109_combout\))))) # (!\DOUT[0]~41_combout\ & (((\DOUT[3]~112_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \reg_gen:30:regs|y\(3),
	datab => \DOUT[3]~109_combout\,
	datac => \DOUT[0]~41_combout\,
	datad => \DOUT[3]~112_combout\,
	combout => \DOUT[3]~113_combout\);

-- Location: LCCOMB_X25_Y70_N10
\DOUT[3]~114\ : cycloneive_lcell_comb
-- Equation(s):
-- \DOUT[3]~114_combout\ = (\ADDR[1]~input_o\ & ((\DOUT[3]~108_combout\ & ((\DOUT[3]~113_combout\))) # (!\DOUT[3]~108_combout\ & (\DOUT[3]~97_combout\)))) # (!\ADDR[1]~input_o\ & (((\DOUT[3]~108_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100001011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ADDR[1]~input_o\,
	datab => \DOUT[3]~97_combout\,
	datac => \DOUT[3]~108_combout\,
	datad => \DOUT[3]~113_combout\,
	combout => \DOUT[3]~114_combout\);

-- Location: LCCOMB_X25_Y70_N8
\DOUT[3]$latch\ : cycloneive_lcell_comb
-- Equation(s):
-- \DOUT[3]$latch~combout\ = (\RE~input_o\ & ((GLOBAL(\DOUT[15]~48clkctrl_outclk\) & (\DOUT[3]~114_combout\)) # (!GLOBAL(\DOUT[15]~48clkctrl_outclk\) & ((\DOUT[3]$latch~combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \DOUT[3]~114_combout\,
	datab => \DOUT[3]$latch~combout\,
	datac => \RE~input_o\,
	datad => \DOUT[15]~48clkctrl_outclk\,
	combout => \DOUT[3]$latch~combout\);

-- Location: IOIBUF_X38_Y73_N8
\DIN[4]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_DIN(4),
	o => \DIN[4]~input_o\);

-- Location: FF_X30_Y69_N21
\reg_gen:28:regs|y[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	asdata => \DIN[4]~input_o\,
	sload => VCC,
	ena => dec_to_en(28),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \reg_gen:28:regs|y\(4));

-- Location: FF_X29_Y69_N9
\reg_gen:12:regs|y[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	asdata => \DIN[4]~input_o\,
	sload => VCC,
	ena => dec_to_en(12),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \reg_gen:12:regs|y\(4));

-- Location: FF_X29_Y69_N19
\reg_gen:4:regs|y[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	asdata => \DIN[4]~input_o\,
	sload => VCC,
	ena => dec_to_en(4),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \reg_gen:4:regs|y\(4));

-- Location: FF_X28_Y69_N3
\reg_gen:20:regs|y[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	asdata => \DIN[4]~input_o\,
	sload => VCC,
	ena => dec_to_en(20),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \reg_gen:20:regs|y\(4));

-- Location: LCCOMB_X29_Y69_N18
\DOUT[4]~127\ : cycloneive_lcell_comb
-- Equation(s):
-- \DOUT[4]~127_combout\ = (\ADDR[4]~input_o\ & ((\ADDR[3]~input_o\) # ((\reg_gen:20:regs|y\(4))))) # (!\ADDR[4]~input_o\ & (!\ADDR[3]~input_o\ & (\reg_gen:4:regs|y\(4))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ADDR[4]~input_o\,
	datab => \ADDR[3]~input_o\,
	datac => \reg_gen:4:regs|y\(4),
	datad => \reg_gen:20:regs|y\(4),
	combout => \DOUT[4]~127_combout\);

-- Location: LCCOMB_X29_Y69_N8
\DOUT[4]~128\ : cycloneive_lcell_comb
-- Equation(s):
-- \DOUT[4]~128_combout\ = (\ADDR[3]~input_o\ & ((\DOUT[4]~127_combout\ & (\reg_gen:28:regs|y\(4))) # (!\DOUT[4]~127_combout\ & ((\reg_gen:12:regs|y\(4)))))) # (!\ADDR[3]~input_o\ & (((\DOUT[4]~127_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \reg_gen:28:regs|y\(4),
	datab => \ADDR[3]~input_o\,
	datac => \reg_gen:12:regs|y\(4),
	datad => \DOUT[4]~127_combout\,
	combout => \DOUT[4]~128_combout\);

-- Location: FF_X29_Y70_N5
\reg_gen:0:regs|y[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	asdata => \DIN[4]~input_o\,
	sload => VCC,
	ena => \dec_to_en[0]~31_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \reg_gen:0:regs|y\(4));

-- Location: FF_X30_Y70_N15
\reg_gen:16:regs|y[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	asdata => \DIN[4]~input_o\,
	sload => VCC,
	ena => \dec_to_en[16]~30_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \reg_gen:16:regs|y\(4));

-- Location: LCCOMB_X29_Y70_N4
\DOUT[4]~126\ : cycloneive_lcell_comb
-- Equation(s):
-- \DOUT[4]~126_combout\ = (\DOUT[0]~34_combout\ & ((\DOUT[0]~33_combout\) # ((\reg_gen:16:regs|y\(4))))) # (!\DOUT[0]~34_combout\ & (!\DOUT[0]~33_combout\ & (\reg_gen:0:regs|y\(4))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \DOUT[0]~34_combout\,
	datab => \DOUT[0]~33_combout\,
	datac => \reg_gen:0:regs|y\(4),
	datad => \reg_gen:16:regs|y\(4),
	combout => \DOUT[4]~126_combout\);

-- Location: FF_X30_Y70_N23
\reg_gen:8:regs|y[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	asdata => \DIN[4]~input_o\,
	sload => VCC,
	ena => \dec_to_en[8]~28_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \reg_gen:8:regs|y\(4));

-- Location: LCCOMB_X31_Y70_N24
\reg_gen:24:regs|y[4]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \reg_gen:24:regs|y[4]~feeder_combout\ = \DIN[4]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \DIN[4]~input_o\,
	combout => \reg_gen:24:regs|y[4]~feeder_combout\);

-- Location: FF_X31_Y70_N25
\reg_gen:24:regs|y[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \reg_gen:24:regs|y[4]~feeder_combout\,
	ena => \dec_to_en[24]~26_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \reg_gen:24:regs|y\(4));

-- Location: LCCOMB_X30_Y70_N22
\DOUT[4]~125\ : cycloneive_lcell_comb
-- Equation(s):
-- \DOUT[4]~125_combout\ = (\ADDR[4]~input_o\ & ((\reg_gen:24:regs|y\(4)))) # (!\ADDR[4]~input_o\ & (\reg_gen:8:regs|y\(4)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ADDR[4]~input_o\,
	datac => \reg_gen:8:regs|y\(4),
	datad => \reg_gen:24:regs|y\(4),
	combout => \DOUT[4]~125_combout\);

-- Location: LCCOMB_X29_Y69_N20
\DOUT[4]~129\ : cycloneive_lcell_comb
-- Equation(s):
-- \DOUT[4]~129_combout\ = (\DOUT[0]~33_combout\ & ((\DOUT[4]~126_combout\ & (\DOUT[4]~128_combout\)) # (!\DOUT[4]~126_combout\ & ((\DOUT[4]~125_combout\))))) # (!\DOUT[0]~33_combout\ & (((\DOUT[4]~126_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101101011010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \DOUT[0]~33_combout\,
	datab => \DOUT[4]~128_combout\,
	datac => \DOUT[4]~126_combout\,
	datad => \DOUT[4]~125_combout\,
	combout => \DOUT[4]~129_combout\);

-- Location: IOIBUF_X20_Y73_N1
\DIN[12]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_DIN(12),
	o => \DIN[12]~input_o\);

-- Location: FF_X27_Y70_N29
\reg_gen:17:regs|y[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	asdata => \DIN[12]~input_o\,
	sload => VCC,
	ena => dec_to_en(17),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \reg_gen:17:regs|y\(4));

-- Location: FF_X27_Y70_N23
\reg_gen:25:regs|y[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	asdata => \DIN[12]~input_o\,
	sload => VCC,
	ena => dec_to_en(25),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \reg_gen:25:regs|y\(4));

-- Location: FF_X26_Y70_N25
\reg_gen:1:regs|y[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	asdata => \DIN[12]~input_o\,
	sload => VCC,
	ena => dec_to_en(1),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \reg_gen:1:regs|y\(4));

-- Location: FF_X26_Y70_N27
\reg_gen:9:regs|y[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	asdata => \DIN[12]~input_o\,
	sload => VCC,
	ena => dec_to_en(9),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \reg_gen:9:regs|y\(4));

-- Location: LCCOMB_X26_Y70_N24
\DOUT[4]~122\ : cycloneive_lcell_comb
-- Equation(s):
-- \DOUT[4]~122_combout\ = (\ADDR[3]~input_o\ & ((\ADDR[4]~input_o\) # ((\reg_gen:9:regs|y\(4))))) # (!\ADDR[3]~input_o\ & (!\ADDR[4]~input_o\ & (\reg_gen:1:regs|y\(4))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ADDR[3]~input_o\,
	datab => \ADDR[4]~input_o\,
	datac => \reg_gen:1:regs|y\(4),
	datad => \reg_gen:9:regs|y\(4),
	combout => \DOUT[4]~122_combout\);

-- Location: LCCOMB_X27_Y70_N22
\DOUT[4]~123\ : cycloneive_lcell_comb
-- Equation(s):
-- \DOUT[4]~123_combout\ = (\ADDR[4]~input_o\ & ((\DOUT[4]~122_combout\ & ((\reg_gen:25:regs|y\(4)))) # (!\DOUT[4]~122_combout\ & (\reg_gen:17:regs|y\(4))))) # (!\ADDR[4]~input_o\ & (((\DOUT[4]~122_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ADDR[4]~input_o\,
	datab => \reg_gen:17:regs|y\(4),
	datac => \reg_gen:25:regs|y\(4),
	datad => \DOUT[4]~122_combout\,
	combout => \DOUT[4]~123_combout\);

-- Location: FF_X27_Y69_N31
\reg_gen:13:regs|y[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	asdata => \DIN[12]~input_o\,
	sload => VCC,
	ena => dec_to_en(13),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \reg_gen:13:regs|y\(4));

-- Location: FF_X26_Y69_N27
\reg_gen:29:regs|y[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	asdata => \DIN[12]~input_o\,
	sload => VCC,
	ena => dec_to_en(29),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \reg_gen:29:regs|y\(4));

-- Location: FF_X26_Y69_N13
\reg_gen:5:regs|y[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	asdata => \DIN[12]~input_o\,
	sload => VCC,
	ena => dec_to_en(5),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \reg_gen:5:regs|y\(4));

-- Location: FF_X27_Y69_N5
\reg_gen:21:regs|y[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	asdata => \DIN[12]~input_o\,
	sload => VCC,
	ena => dec_to_en(21),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \reg_gen:21:regs|y\(4));

-- Location: LCCOMB_X26_Y69_N12
\DOUT[4]~120\ : cycloneive_lcell_comb
-- Equation(s):
-- \DOUT[4]~120_combout\ = (\ADDR[4]~input_o\ & ((\ADDR[3]~input_o\) # ((\reg_gen:21:regs|y\(4))))) # (!\ADDR[4]~input_o\ & (!\ADDR[3]~input_o\ & (\reg_gen:5:regs|y\(4))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ADDR[4]~input_o\,
	datab => \ADDR[3]~input_o\,
	datac => \reg_gen:5:regs|y\(4),
	datad => \reg_gen:21:regs|y\(4),
	combout => \DOUT[4]~120_combout\);

-- Location: LCCOMB_X26_Y69_N26
\DOUT[4]~121\ : cycloneive_lcell_comb
-- Equation(s):
-- \DOUT[4]~121_combout\ = (\ADDR[3]~input_o\ & ((\DOUT[4]~120_combout\ & ((\reg_gen:29:regs|y\(4)))) # (!\DOUT[4]~120_combout\ & (\reg_gen:13:regs|y\(4))))) # (!\ADDR[3]~input_o\ & (((\DOUT[4]~120_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \reg_gen:13:regs|y\(4),
	datab => \ADDR[3]~input_o\,
	datac => \reg_gen:29:regs|y\(4),
	datad => \DOUT[4]~120_combout\,
	combout => \DOUT[4]~121_combout\);

-- Location: LCCOMB_X28_Y72_N2
\DOUT[4]~124\ : cycloneive_lcell_comb
-- Equation(s):
-- \DOUT[4]~124_combout\ = (\ADDR[2]~input_o\ & ((\DOUT[4]~121_combout\))) # (!\ADDR[2]~input_o\ & (\DOUT[4]~123_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ADDR[2]~input_o\,
	datac => \DOUT[4]~123_combout\,
	datad => \DOUT[4]~121_combout\,
	combout => \DOUT[4]~124_combout\);

-- Location: LCCOMB_X28_Y72_N24
\DOUT[4]~130\ : cycloneive_lcell_comb
-- Equation(s):
-- \DOUT[4]~130_combout\ = (\ADDR[0]~input_o\ & ((\ADDR[1]~input_o\) # ((\DOUT[4]~124_combout\)))) # (!\ADDR[0]~input_o\ & (!\ADDR[1]~input_o\ & (\DOUT[4]~129_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ADDR[0]~input_o\,
	datab => \ADDR[1]~input_o\,
	datac => \DOUT[4]~129_combout\,
	datad => \DOUT[4]~124_combout\,
	combout => \DOUT[4]~130_combout\);

-- Location: FF_X27_Y71_N23
\reg_gen:30:regs|y[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	asdata => \DIN[4]~input_o\,
	sload => VCC,
	ena => dec_to_en(30),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \reg_gen:30:regs|y\(4));

-- Location: FF_X27_Y71_N25
\reg_gen:14:regs|y[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	asdata => \DIN[4]~input_o\,
	sload => VCC,
	ena => dec_to_en(14),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \reg_gen:14:regs|y\(4));

-- Location: FF_X28_Y71_N23
\reg_gen:6:regs|y[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	asdata => \DIN[4]~input_o\,
	sload => VCC,
	ena => dec_to_en(6),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \reg_gen:6:regs|y\(4));

-- Location: FF_X28_Y71_N21
\reg_gen:22:regs|y[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	asdata => \DIN[4]~input_o\,
	sload => VCC,
	ena => dec_to_en(22),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \reg_gen:22:regs|y\(4));

-- Location: LCCOMB_X28_Y71_N22
\DOUT[4]~115\ : cycloneive_lcell_comb
-- Equation(s):
-- \DOUT[4]~115_combout\ = (\ADDR[3]~input_o\ & (\ADDR[4]~input_o\)) # (!\ADDR[3]~input_o\ & ((\ADDR[4]~input_o\ & ((\reg_gen:22:regs|y\(4)))) # (!\ADDR[4]~input_o\ & (\reg_gen:6:regs|y\(4)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ADDR[3]~input_o\,
	datab => \ADDR[4]~input_o\,
	datac => \reg_gen:6:regs|y\(4),
	datad => \reg_gen:22:regs|y\(4),
	combout => \DOUT[4]~115_combout\);

-- Location: LCCOMB_X27_Y71_N24
\DOUT[4]~116\ : cycloneive_lcell_comb
-- Equation(s):
-- \DOUT[4]~116_combout\ = (\ADDR[3]~input_o\ & ((\DOUT[4]~115_combout\ & (\reg_gen:30:regs|y\(4))) # (!\DOUT[4]~115_combout\ & ((\reg_gen:14:regs|y\(4)))))) # (!\ADDR[3]~input_o\ & (((\DOUT[4]~115_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \reg_gen:30:regs|y\(4),
	datab => \ADDR[3]~input_o\,
	datac => \reg_gen:14:regs|y\(4),
	datad => \DOUT[4]~115_combout\,
	combout => \DOUT[4]~116_combout\);

-- Location: LCCOMB_X30_Y72_N14
\reg_gen:18:regs|y[4]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \reg_gen:18:regs|y[4]~feeder_combout\ = \DIN[4]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \DIN[4]~input_o\,
	combout => \reg_gen:18:regs|y[4]~feeder_combout\);

-- Location: FF_X30_Y72_N15
\reg_gen:18:regs|y[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \reg_gen:18:regs|y[4]~feeder_combout\,
	ena => dec_to_en(18),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \reg_gen:18:regs|y\(4));

-- Location: FF_X29_Y72_N7
\reg_gen:26:regs|y[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	asdata => \DIN[4]~input_o\,
	sload => VCC,
	ena => dec_to_en(26),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \reg_gen:26:regs|y\(4));

-- Location: FF_X29_Y72_N21
\reg_gen:2:regs|y[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	asdata => \DIN[4]~input_o\,
	sload => VCC,
	ena => dec_to_en(2),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \reg_gen:2:regs|y\(4));

-- Location: LCCOMB_X30_Y72_N28
\reg_gen:10:regs|y[4]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \reg_gen:10:regs|y[4]~feeder_combout\ = \DIN[4]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \DIN[4]~input_o\,
	combout => \reg_gen:10:regs|y[4]~feeder_combout\);

-- Location: FF_X30_Y72_N29
\reg_gen:10:regs|y[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \reg_gen:10:regs|y[4]~feeder_combout\,
	ena => dec_to_en(10),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \reg_gen:10:regs|y\(4));

-- Location: LCCOMB_X29_Y72_N20
\DOUT[4]~117\ : cycloneive_lcell_comb
-- Equation(s):
-- \DOUT[4]~117_combout\ = (\ADDR[3]~input_o\ & ((\ADDR[4]~input_o\) # ((\reg_gen:10:regs|y\(4))))) # (!\ADDR[3]~input_o\ & (!\ADDR[4]~input_o\ & (\reg_gen:2:regs|y\(4))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ADDR[3]~input_o\,
	datab => \ADDR[4]~input_o\,
	datac => \reg_gen:2:regs|y\(4),
	datad => \reg_gen:10:regs|y\(4),
	combout => \DOUT[4]~117_combout\);

-- Location: LCCOMB_X29_Y72_N6
\DOUT[4]~118\ : cycloneive_lcell_comb
-- Equation(s):
-- \DOUT[4]~118_combout\ = (\ADDR[4]~input_o\ & ((\DOUT[4]~117_combout\ & ((\reg_gen:26:regs|y\(4)))) # (!\DOUT[4]~117_combout\ & (\reg_gen:18:regs|y\(4))))) # (!\ADDR[4]~input_o\ & (((\DOUT[4]~117_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ADDR[4]~input_o\,
	datab => \reg_gen:18:regs|y\(4),
	datac => \reg_gen:26:regs|y\(4),
	datad => \DOUT[4]~117_combout\,
	combout => \DOUT[4]~118_combout\);

-- Location: LCCOMB_X28_Y72_N20
\DOUT[4]~119\ : cycloneive_lcell_comb
-- Equation(s):
-- \DOUT[4]~119_combout\ = (\ADDR[2]~input_o\ & (\DOUT[4]~116_combout\)) # (!\ADDR[2]~input_o\ & ((\DOUT[4]~118_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ADDR[2]~input_o\,
	datac => \DOUT[4]~116_combout\,
	datad => \DOUT[4]~118_combout\,
	combout => \DOUT[4]~119_combout\);

-- Location: LCCOMB_X25_Y72_N26
\reg_gen:11:regs|y[4]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \reg_gen:11:regs|y[4]~feeder_combout\ = \DIN[12]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \DIN[12]~input_o\,
	combout => \reg_gen:11:regs|y[4]~feeder_combout\);

-- Location: FF_X25_Y72_N27
\reg_gen:11:regs|y[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \reg_gen:11:regs|y[4]~feeder_combout\,
	ena => dec_to_en(11),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \reg_gen:11:regs|y\(4));

-- Location: FF_X28_Y72_N17
\reg_gen:27:regs|y[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	asdata => \DIN[12]~input_o\,
	sload => VCC,
	ena => dec_to_en(27),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \reg_gen:27:regs|y\(4));

-- Location: FF_X23_Y72_N19
\reg_gen:3:regs|y[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	asdata => \DIN[12]~input_o\,
	sload => VCC,
	ena => dec_to_en(3),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \reg_gen:3:regs|y\(4));

-- Location: FF_X23_Y72_N1
\reg_gen:19:regs|y[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	asdata => \DIN[12]~input_o\,
	sload => VCC,
	ena => dec_to_en(19),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \reg_gen:19:regs|y\(4));

-- Location: LCCOMB_X23_Y72_N18
\DOUT[4]~132\ : cycloneive_lcell_comb
-- Equation(s):
-- \DOUT[4]~132_combout\ = (\ADDR[3]~input_o\ & (\ADDR[4]~input_o\)) # (!\ADDR[3]~input_o\ & ((\ADDR[4]~input_o\ & ((\reg_gen:19:regs|y\(4)))) # (!\ADDR[4]~input_o\ & (\reg_gen:3:regs|y\(4)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ADDR[3]~input_o\,
	datab => \ADDR[4]~input_o\,
	datac => \reg_gen:3:regs|y\(4),
	datad => \reg_gen:19:regs|y\(4),
	combout => \DOUT[4]~132_combout\);

-- Location: LCCOMB_X28_Y72_N16
\DOUT[4]~133\ : cycloneive_lcell_comb
-- Equation(s):
-- \DOUT[4]~133_combout\ = (\ADDR[3]~input_o\ & ((\DOUT[4]~132_combout\ & ((\reg_gen:27:regs|y\(4)))) # (!\DOUT[4]~132_combout\ & (\reg_gen:11:regs|y\(4))))) # (!\ADDR[3]~input_o\ & (((\DOUT[4]~132_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ADDR[3]~input_o\,
	datab => \reg_gen:11:regs|y\(4),
	datac => \reg_gen:27:regs|y\(4),
	datad => \DOUT[4]~132_combout\,
	combout => \DOUT[4]~133_combout\);

-- Location: FF_X24_Y71_N23
\reg_gen:7:regs|y[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	asdata => \DIN[12]~input_o\,
	sload => VCC,
	ena => dec_to_en(7),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \reg_gen:7:regs|y\(4));

-- Location: LCCOMB_X23_Y71_N8
\reg_gen:23:regs|y[4]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \reg_gen:23:regs|y[4]~feeder_combout\ = \DIN[12]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \DIN[12]~input_o\,
	combout => \reg_gen:23:regs|y[4]~feeder_combout\);

-- Location: FF_X23_Y71_N9
\reg_gen:23:regs|y[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \reg_gen:23:regs|y[4]~feeder_combout\,
	ena => dec_to_en(23),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \reg_gen:23:regs|y\(4));

-- Location: LCCOMB_X24_Y71_N22
\DOUT[4]~131\ : cycloneive_lcell_comb
-- Equation(s):
-- \DOUT[4]~131_combout\ = (\ADDR[4]~input_o\ & ((\reg_gen:23:regs|y\(4)))) # (!\ADDR[4]~input_o\ & (\reg_gen:7:regs|y\(4)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ADDR[4]~input_o\,
	datac => \reg_gen:7:regs|y\(4),
	datad => \reg_gen:23:regs|y\(4),
	combout => \DOUT[4]~131_combout\);

-- Location: LCCOMB_X28_Y72_N10
\DOUT[4]~134\ : cycloneive_lcell_comb
-- Equation(s):
-- \DOUT[4]~134_combout\ = (\DOUT[0]~42_combout\ & (\DOUT[0]~41_combout\)) # (!\DOUT[0]~42_combout\ & ((\DOUT[0]~41_combout\ & ((\DOUT[4]~131_combout\))) # (!\DOUT[0]~41_combout\ & (\DOUT[4]~133_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \DOUT[0]~42_combout\,
	datab => \DOUT[0]~41_combout\,
	datac => \DOUT[4]~133_combout\,
	datad => \DOUT[4]~131_combout\,
	combout => \DOUT[4]~134_combout\);

-- Location: FF_X28_Y72_N7
\reg_gen:15:regs|y[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	asdata => \DIN[12]~input_o\,
	sload => VCC,
	ena => dec_to_en(15),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \reg_gen:15:regs|y\(4));

-- Location: LCCOMB_X28_Y72_N28
\DOUT[4]~135\ : cycloneive_lcell_comb
-- Equation(s):
-- \DOUT[4]~135_combout\ = (\DOUT[4]~134_combout\ & (((\reg_gen:30:regs|y\(4)) # (!\DOUT[0]~42_combout\)))) # (!\DOUT[4]~134_combout\ & (\reg_gen:15:regs|y\(4) & (\DOUT[0]~42_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101001001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \DOUT[4]~134_combout\,
	datab => \reg_gen:15:regs|y\(4),
	datac => \DOUT[0]~42_combout\,
	datad => \reg_gen:30:regs|y\(4),
	combout => \DOUT[4]~135_combout\);

-- Location: LCCOMB_X28_Y72_N22
\DOUT[4]~136\ : cycloneive_lcell_comb
-- Equation(s):
-- \DOUT[4]~136_combout\ = (\ADDR[1]~input_o\ & ((\DOUT[4]~130_combout\ & ((\DOUT[4]~135_combout\))) # (!\DOUT[4]~130_combout\ & (\DOUT[4]~119_combout\)))) # (!\ADDR[1]~input_o\ & (\DOUT[4]~130_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110001100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ADDR[1]~input_o\,
	datab => \DOUT[4]~130_combout\,
	datac => \DOUT[4]~119_combout\,
	datad => \DOUT[4]~135_combout\,
	combout => \DOUT[4]~136_combout\);

-- Location: LCCOMB_X28_Y72_N8
\DOUT[4]$latch\ : cycloneive_lcell_comb
-- Equation(s):
-- \DOUT[4]$latch~combout\ = (\RE~input_o\ & ((GLOBAL(\DOUT[15]~48clkctrl_outclk\) & (\DOUT[4]~136_combout\)) # (!GLOBAL(\DOUT[15]~48clkctrl_outclk\) & ((\DOUT[4]$latch~combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \DOUT[4]~136_combout\,
	datab => \RE~input_o\,
	datac => \DOUT[4]$latch~combout\,
	datad => \DOUT[15]~48clkctrl_outclk\,
	combout => \DOUT[4]$latch~combout\);

-- Location: IOIBUF_X20_Y73_N8
\DIN[13]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_DIN(13),
	o => \DIN[13]~input_o\);

-- Location: FF_X24_Y71_N29
\reg_gen:7:regs|y[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	asdata => \DIN[13]~input_o\,
	sload => VCC,
	ena => dec_to_en(7),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \reg_gen:7:regs|y\(5));

-- Location: FF_X23_Y71_N23
\reg_gen:23:regs|y[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	asdata => \DIN[13]~input_o\,
	sload => VCC,
	ena => dec_to_en(23),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \reg_gen:23:regs|y\(5));

-- Location: LCCOMB_X24_Y71_N28
\DOUT[5]~153\ : cycloneive_lcell_comb
-- Equation(s):
-- \DOUT[5]~153_combout\ = (\ADDR[4]~input_o\ & ((\reg_gen:23:regs|y\(5)))) # (!\ADDR[4]~input_o\ & (\reg_gen:7:regs|y\(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ADDR[4]~input_o\,
	datac => \reg_gen:7:regs|y\(5),
	datad => \reg_gen:23:regs|y\(5),
	combout => \DOUT[5]~153_combout\);

-- Location: LCCOMB_X24_Y71_N2
\reg_gen:15:regs|y[5]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \reg_gen:15:regs|y[5]~feeder_combout\ = \DIN[13]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \DIN[13]~input_o\,
	combout => \reg_gen:15:regs|y[5]~feeder_combout\);

-- Location: FF_X24_Y71_N3
\reg_gen:15:regs|y[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \reg_gen:15:regs|y[5]~feeder_combout\,
	ena => dec_to_en(15),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \reg_gen:15:regs|y\(5));

-- Location: FF_X25_Y72_N13
\reg_gen:11:regs|y[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	asdata => \DIN[13]~input_o\,
	sload => VCC,
	ena => dec_to_en(11),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \reg_gen:11:regs|y\(5));

-- Location: FF_X24_Y72_N27
\reg_gen:27:regs|y[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	asdata => \DIN[13]~input_o\,
	sload => VCC,
	ena => dec_to_en(27),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \reg_gen:27:regs|y\(5));

-- Location: FF_X24_Y72_N25
\reg_gen:3:regs|y[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	asdata => \DIN[13]~input_o\,
	sload => VCC,
	ena => dec_to_en(3),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \reg_gen:3:regs|y\(5));

-- Location: LCCOMB_X23_Y72_N28
\reg_gen:19:regs|y[5]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \reg_gen:19:regs|y[5]~feeder_combout\ = \DIN[13]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \DIN[13]~input_o\,
	combout => \reg_gen:19:regs|y[5]~feeder_combout\);

-- Location: FF_X23_Y72_N29
\reg_gen:19:regs|y[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \reg_gen:19:regs|y[5]~feeder_combout\,
	ena => dec_to_en(19),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \reg_gen:19:regs|y\(5));

-- Location: LCCOMB_X24_Y72_N24
\DOUT[5]~154\ : cycloneive_lcell_comb
-- Equation(s):
-- \DOUT[5]~154_combout\ = (\ADDR[4]~input_o\ & ((\ADDR[3]~input_o\) # ((\reg_gen:19:regs|y\(5))))) # (!\ADDR[4]~input_o\ & (!\ADDR[3]~input_o\ & (\reg_gen:3:regs|y\(5))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ADDR[4]~input_o\,
	datab => \ADDR[3]~input_o\,
	datac => \reg_gen:3:regs|y\(5),
	datad => \reg_gen:19:regs|y\(5),
	combout => \DOUT[5]~154_combout\);

-- Location: LCCOMB_X24_Y72_N26
\DOUT[5]~155\ : cycloneive_lcell_comb
-- Equation(s):
-- \DOUT[5]~155_combout\ = (\ADDR[3]~input_o\ & ((\DOUT[5]~154_combout\ & ((\reg_gen:27:regs|y\(5)))) # (!\DOUT[5]~154_combout\ & (\reg_gen:11:regs|y\(5))))) # (!\ADDR[3]~input_o\ & (((\DOUT[5]~154_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ADDR[3]~input_o\,
	datab => \reg_gen:11:regs|y\(5),
	datac => \reg_gen:27:regs|y\(5),
	datad => \DOUT[5]~154_combout\,
	combout => \DOUT[5]~155_combout\);

-- Location: LCCOMB_X25_Y71_N8
\DOUT[5]~156\ : cycloneive_lcell_comb
-- Equation(s):
-- \DOUT[5]~156_combout\ = (\DOUT[0]~41_combout\ & (((\DOUT[0]~42_combout\)))) # (!\DOUT[0]~41_combout\ & ((\DOUT[0]~42_combout\ & (\reg_gen:15:regs|y\(5))) # (!\DOUT[0]~42_combout\ & ((\DOUT[5]~155_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \reg_gen:15:regs|y\(5),
	datab => \DOUT[0]~41_combout\,
	datac => \DOUT[5]~155_combout\,
	datad => \DOUT[0]~42_combout\,
	combout => \DOUT[5]~156_combout\);

-- Location: IOIBUF_X35_Y73_N22
\DIN[5]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_DIN(5),
	o => \DIN[5]~input_o\);

-- Location: FF_X27_Y71_N19
\reg_gen:30:regs|y[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	asdata => \DIN[5]~input_o\,
	sload => VCC,
	ena => dec_to_en(30),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \reg_gen:30:regs|y\(5));

-- Location: LCCOMB_X25_Y71_N30
\DOUT[5]~157\ : cycloneive_lcell_comb
-- Equation(s):
-- \DOUT[5]~157_combout\ = (\DOUT[0]~41_combout\ & ((\DOUT[5]~156_combout\ & ((\reg_gen:30:regs|y\(5)))) # (!\DOUT[5]~156_combout\ & (\DOUT[5]~153_combout\)))) # (!\DOUT[0]~41_combout\ & (((\DOUT[5]~156_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100000111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \DOUT[5]~153_combout\,
	datab => \DOUT[0]~41_combout\,
	datac => \DOUT[5]~156_combout\,
	datad => \reg_gen:30:regs|y\(5),
	combout => \DOUT[5]~157_combout\);

-- Location: LCCOMB_X25_Y69_N12
\reg_gen:13:regs|y[5]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \reg_gen:13:regs|y[5]~feeder_combout\ = \DIN[13]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \DIN[13]~input_o\,
	combout => \reg_gen:13:regs|y[5]~feeder_combout\);

-- Location: FF_X25_Y69_N13
\reg_gen:13:regs|y[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \reg_gen:13:regs|y[5]~feeder_combout\,
	ena => dec_to_en(13),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \reg_gen:13:regs|y\(5));

-- Location: FF_X25_Y71_N13
\reg_gen:29:regs|y[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	asdata => \DIN[13]~input_o\,
	sload => VCC,
	ena => dec_to_en(29),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \reg_gen:29:regs|y\(5));

-- Location: FF_X26_Y69_N9
\reg_gen:5:regs|y[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	asdata => \DIN[13]~input_o\,
	sload => VCC,
	ena => dec_to_en(5),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \reg_gen:5:regs|y\(5));

-- Location: LCCOMB_X27_Y69_N2
\reg_gen:21:regs|y[5]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \reg_gen:21:regs|y[5]~feeder_combout\ = \DIN[13]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \DIN[13]~input_o\,
	combout => \reg_gen:21:regs|y[5]~feeder_combout\);

-- Location: FF_X27_Y69_N3
\reg_gen:21:regs|y[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \reg_gen:21:regs|y[5]~feeder_combout\,
	ena => dec_to_en(21),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \reg_gen:21:regs|y\(5));

-- Location: LCCOMB_X26_Y69_N8
\DOUT[5]~137\ : cycloneive_lcell_comb
-- Equation(s):
-- \DOUT[5]~137_combout\ = (\ADDR[4]~input_o\ & ((\ADDR[3]~input_o\) # ((\reg_gen:21:regs|y\(5))))) # (!\ADDR[4]~input_o\ & (!\ADDR[3]~input_o\ & (\reg_gen:5:regs|y\(5))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ADDR[4]~input_o\,
	datab => \ADDR[3]~input_o\,
	datac => \reg_gen:5:regs|y\(5),
	datad => \reg_gen:21:regs|y\(5),
	combout => \DOUT[5]~137_combout\);

-- Location: LCCOMB_X25_Y71_N12
\DOUT[5]~138\ : cycloneive_lcell_comb
-- Equation(s):
-- \DOUT[5]~138_combout\ = (\ADDR[3]~input_o\ & ((\DOUT[5]~137_combout\ & ((\reg_gen:29:regs|y\(5)))) # (!\DOUT[5]~137_combout\ & (\reg_gen:13:regs|y\(5))))) # (!\ADDR[3]~input_o\ & (((\DOUT[5]~137_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \reg_gen:13:regs|y\(5),
	datab => \ADDR[3]~input_o\,
	datac => \reg_gen:29:regs|y\(5),
	datad => \DOUT[5]~137_combout\,
	combout => \DOUT[5]~138_combout\);

-- Location: LCCOMB_X25_Y69_N2
\reg_gen:17:regs|y[5]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \reg_gen:17:regs|y[5]~feeder_combout\ = \DIN[13]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \DIN[13]~input_o\,
	combout => \reg_gen:17:regs|y[5]~feeder_combout\);

-- Location: FF_X25_Y69_N3
\reg_gen:17:regs|y[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \reg_gen:17:regs|y[5]~feeder_combout\,
	ena => dec_to_en(17),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \reg_gen:17:regs|y\(5));

-- Location: FF_X25_Y71_N3
\reg_gen:25:regs|y[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	asdata => \DIN[13]~input_o\,
	sload => VCC,
	ena => dec_to_en(25),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \reg_gen:25:regs|y\(5));

-- Location: FF_X26_Y70_N21
\reg_gen:1:regs|y[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	asdata => \DIN[13]~input_o\,
	sload => VCC,
	ena => dec_to_en(1),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \reg_gen:1:regs|y\(5));

-- Location: FF_X26_Y70_N3
\reg_gen:9:regs|y[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	asdata => \DIN[13]~input_o\,
	sload => VCC,
	ena => dec_to_en(9),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \reg_gen:9:regs|y\(5));

-- Location: LCCOMB_X26_Y70_N20
\DOUT[5]~139\ : cycloneive_lcell_comb
-- Equation(s):
-- \DOUT[5]~139_combout\ = (\ADDR[3]~input_o\ & ((\ADDR[4]~input_o\) # ((\reg_gen:9:regs|y\(5))))) # (!\ADDR[3]~input_o\ & (!\ADDR[4]~input_o\ & (\reg_gen:1:regs|y\(5))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ADDR[3]~input_o\,
	datab => \ADDR[4]~input_o\,
	datac => \reg_gen:1:regs|y\(5),
	datad => \reg_gen:9:regs|y\(5),
	combout => \DOUT[5]~139_combout\);

-- Location: LCCOMB_X25_Y71_N2
\DOUT[5]~140\ : cycloneive_lcell_comb
-- Equation(s):
-- \DOUT[5]~140_combout\ = (\ADDR[4]~input_o\ & ((\DOUT[5]~139_combout\ & ((\reg_gen:25:regs|y\(5)))) # (!\DOUT[5]~139_combout\ & (\reg_gen:17:regs|y\(5))))) # (!\ADDR[4]~input_o\ & (((\DOUT[5]~139_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ADDR[4]~input_o\,
	datab => \reg_gen:17:regs|y\(5),
	datac => \reg_gen:25:regs|y\(5),
	datad => \DOUT[5]~139_combout\,
	combout => \DOUT[5]~140_combout\);

-- Location: LCCOMB_X25_Y71_N24
\DOUT[5]~141\ : cycloneive_lcell_comb
-- Equation(s):
-- \DOUT[5]~141_combout\ = (\ADDR[2]~input_o\ & (\DOUT[5]~138_combout\)) # (!\ADDR[2]~input_o\ & ((\DOUT[5]~140_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010110010101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \DOUT[5]~138_combout\,
	datab => \DOUT[5]~140_combout\,
	datac => \ADDR[2]~input_o\,
	combout => \DOUT[5]~141_combout\);

-- Location: FF_X27_Y71_N21
\reg_gen:14:regs|y[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	asdata => \DIN[5]~input_o\,
	sload => VCC,
	ena => dec_to_en(14),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \reg_gen:14:regs|y\(5));

-- Location: FF_X28_Y71_N27
\reg_gen:6:regs|y[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	asdata => \DIN[5]~input_o\,
	sload => VCC,
	ena => dec_to_en(6),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \reg_gen:6:regs|y\(5));

-- Location: FF_X28_Y71_N13
\reg_gen:22:regs|y[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	asdata => \DIN[5]~input_o\,
	sload => VCC,
	ena => dec_to_en(22),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \reg_gen:22:regs|y\(5));

-- Location: LCCOMB_X28_Y71_N26
\DOUT[5]~142\ : cycloneive_lcell_comb
-- Equation(s):
-- \DOUT[5]~142_combout\ = (\ADDR[3]~input_o\ & (\ADDR[4]~input_o\)) # (!\ADDR[3]~input_o\ & ((\ADDR[4]~input_o\ & ((\reg_gen:22:regs|y\(5)))) # (!\ADDR[4]~input_o\ & (\reg_gen:6:regs|y\(5)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ADDR[3]~input_o\,
	datab => \ADDR[4]~input_o\,
	datac => \reg_gen:6:regs|y\(5),
	datad => \reg_gen:22:regs|y\(5),
	combout => \DOUT[5]~142_combout\);

-- Location: LCCOMB_X27_Y71_N20
\DOUT[5]~143\ : cycloneive_lcell_comb
-- Equation(s):
-- \DOUT[5]~143_combout\ = (\ADDR[3]~input_o\ & ((\DOUT[5]~142_combout\ & (\reg_gen:30:regs|y\(5))) # (!\DOUT[5]~142_combout\ & ((\reg_gen:14:regs|y\(5)))))) # (!\ADDR[3]~input_o\ & (((\DOUT[5]~142_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ADDR[3]~input_o\,
	datab => \reg_gen:30:regs|y\(5),
	datac => \reg_gen:14:regs|y\(5),
	datad => \DOUT[5]~142_combout\,
	combout => \DOUT[5]~143_combout\);

-- Location: LCCOMB_X30_Y72_N2
\reg_gen:18:regs|y[5]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \reg_gen:18:regs|y[5]~feeder_combout\ = \DIN[5]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \DIN[5]~input_o\,
	combout => \reg_gen:18:regs|y[5]~feeder_combout\);

-- Location: FF_X30_Y72_N3
\reg_gen:18:regs|y[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \reg_gen:18:regs|y[5]~feeder_combout\,
	ena => dec_to_en(18),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \reg_gen:18:regs|y\(5));

-- Location: FF_X29_Y72_N31
\reg_gen:26:regs|y[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	asdata => \DIN[5]~input_o\,
	sload => VCC,
	ena => dec_to_en(26),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \reg_gen:26:regs|y\(5));

-- Location: LCCOMB_X30_Y72_N0
\reg_gen:10:regs|y[5]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \reg_gen:10:regs|y[5]~feeder_combout\ = \DIN[5]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \DIN[5]~input_o\,
	combout => \reg_gen:10:regs|y[5]~feeder_combout\);

-- Location: FF_X30_Y72_N1
\reg_gen:10:regs|y[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \reg_gen:10:regs|y[5]~feeder_combout\,
	ena => dec_to_en(10),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \reg_gen:10:regs|y\(5));

-- Location: FF_X29_Y72_N29
\reg_gen:2:regs|y[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	asdata => \DIN[5]~input_o\,
	sload => VCC,
	ena => dec_to_en(2),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \reg_gen:2:regs|y\(5));

-- Location: LCCOMB_X29_Y72_N28
\DOUT[5]~144\ : cycloneive_lcell_comb
-- Equation(s):
-- \DOUT[5]~144_combout\ = (\ADDR[3]~input_o\ & ((\reg_gen:10:regs|y\(5)) # ((\ADDR[4]~input_o\)))) # (!\ADDR[3]~input_o\ & (((\reg_gen:2:regs|y\(5) & !\ADDR[4]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ADDR[3]~input_o\,
	datab => \reg_gen:10:regs|y\(5),
	datac => \reg_gen:2:regs|y\(5),
	datad => \ADDR[4]~input_o\,
	combout => \DOUT[5]~144_combout\);

-- Location: LCCOMB_X29_Y72_N30
\DOUT[5]~145\ : cycloneive_lcell_comb
-- Equation(s):
-- \DOUT[5]~145_combout\ = (\ADDR[4]~input_o\ & ((\DOUT[5]~144_combout\ & ((\reg_gen:26:regs|y\(5)))) # (!\DOUT[5]~144_combout\ & (\reg_gen:18:regs|y\(5))))) # (!\ADDR[4]~input_o\ & (((\DOUT[5]~144_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \reg_gen:18:regs|y\(5),
	datab => \ADDR[4]~input_o\,
	datac => \reg_gen:26:regs|y\(5),
	datad => \DOUT[5]~144_combout\,
	combout => \DOUT[5]~145_combout\);

-- Location: LCCOMB_X25_Y71_N22
\DOUT[5]~146\ : cycloneive_lcell_comb
-- Equation(s):
-- \DOUT[5]~146_combout\ = (\ADDR[2]~input_o\ & (\DOUT[5]~143_combout\)) # (!\ADDR[2]~input_o\ & ((\DOUT[5]~145_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \ADDR[2]~input_o\,
	datac => \DOUT[5]~143_combout\,
	datad => \DOUT[5]~145_combout\,
	combout => \DOUT[5]~146_combout\);

-- Location: LCCOMB_X29_Y69_N14
\reg_gen:12:regs|y[5]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \reg_gen:12:regs|y[5]~feeder_combout\ = \DIN[5]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \DIN[5]~input_o\,
	combout => \reg_gen:12:regs|y[5]~feeder_combout\);

-- Location: FF_X29_Y69_N15
\reg_gen:12:regs|y[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \reg_gen:12:regs|y[5]~feeder_combout\,
	ena => dec_to_en(12),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \reg_gen:12:regs|y\(5));

-- Location: FF_X29_Y71_N15
\reg_gen:28:regs|y[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	asdata => \DIN[5]~input_o\,
	sload => VCC,
	ena => dec_to_en(28),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \reg_gen:28:regs|y\(5));

-- Location: FF_X28_Y69_N11
\reg_gen:4:regs|y[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	asdata => \DIN[5]~input_o\,
	sload => VCC,
	ena => dec_to_en(4),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \reg_gen:4:regs|y\(5));

-- Location: FF_X28_Y69_N25
\reg_gen:20:regs|y[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	asdata => \DIN[5]~input_o\,
	sload => VCC,
	ena => dec_to_en(20),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \reg_gen:20:regs|y\(5));

-- Location: LCCOMB_X28_Y69_N10
\DOUT[5]~149\ : cycloneive_lcell_comb
-- Equation(s):
-- \DOUT[5]~149_combout\ = (\ADDR[3]~input_o\ & (\ADDR[4]~input_o\)) # (!\ADDR[3]~input_o\ & ((\ADDR[4]~input_o\ & ((\reg_gen:20:regs|y\(5)))) # (!\ADDR[4]~input_o\ & (\reg_gen:4:regs|y\(5)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ADDR[3]~input_o\,
	datab => \ADDR[4]~input_o\,
	datac => \reg_gen:4:regs|y\(5),
	datad => \reg_gen:20:regs|y\(5),
	combout => \DOUT[5]~149_combout\);

-- Location: LCCOMB_X29_Y71_N14
\DOUT[5]~150\ : cycloneive_lcell_comb
-- Equation(s):
-- \DOUT[5]~150_combout\ = (\ADDR[3]~input_o\ & ((\DOUT[5]~149_combout\ & ((\reg_gen:28:regs|y\(5)))) # (!\DOUT[5]~149_combout\ & (\reg_gen:12:regs|y\(5))))) # (!\ADDR[3]~input_o\ & (((\DOUT[5]~149_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ADDR[3]~input_o\,
	datab => \reg_gen:12:regs|y\(5),
	datac => \reg_gen:28:regs|y\(5),
	datad => \DOUT[5]~149_combout\,
	combout => \DOUT[5]~150_combout\);

-- Location: FF_X29_Y71_N21
\reg_gen:16:regs|y[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	asdata => \DIN[5]~input_o\,
	sload => VCC,
	ena => \dec_to_en[16]~30_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \reg_gen:16:regs|y\(5));

-- Location: FF_X29_Y70_N23
\reg_gen:0:regs|y[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	asdata => \DIN[5]~input_o\,
	sload => VCC,
	ena => \dec_to_en[0]~31_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \reg_gen:0:regs|y\(5));

-- Location: FF_X30_Y70_N29
\reg_gen:8:regs|y[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	asdata => \DIN[5]~input_o\,
	sload => VCC,
	ena => \dec_to_en[8]~28_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \reg_gen:8:regs|y\(5));

-- Location: FF_X31_Y70_N7
\reg_gen:24:regs|y[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	asdata => \DIN[5]~input_o\,
	sload => VCC,
	ena => \dec_to_en[24]~26_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \reg_gen:24:regs|y\(5));

-- Location: LCCOMB_X30_Y70_N28
\DOUT[5]~147\ : cycloneive_lcell_comb
-- Equation(s):
-- \DOUT[5]~147_combout\ = (\ADDR[4]~input_o\ & ((\reg_gen:24:regs|y\(5)))) # (!\ADDR[4]~input_o\ & (\reg_gen:8:regs|y\(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ADDR[4]~input_o\,
	datac => \reg_gen:8:regs|y\(5),
	datad => \reg_gen:24:regs|y\(5),
	combout => \DOUT[5]~147_combout\);

-- Location: LCCOMB_X29_Y70_N22
\DOUT[5]~148\ : cycloneive_lcell_comb
-- Equation(s):
-- \DOUT[5]~148_combout\ = (\DOUT[0]~34_combout\ & (\DOUT[0]~33_combout\)) # (!\DOUT[0]~34_combout\ & ((\DOUT[0]~33_combout\ & ((\DOUT[5]~147_combout\))) # (!\DOUT[0]~33_combout\ & (\reg_gen:0:regs|y\(5)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \DOUT[0]~34_combout\,
	datab => \DOUT[0]~33_combout\,
	datac => \reg_gen:0:regs|y\(5),
	datad => \DOUT[5]~147_combout\,
	combout => \DOUT[5]~148_combout\);

-- Location: LCCOMB_X25_Y71_N0
\DOUT[5]~151\ : cycloneive_lcell_comb
-- Equation(s):
-- \DOUT[5]~151_combout\ = (\DOUT[0]~34_combout\ & ((\DOUT[5]~148_combout\ & (\DOUT[5]~150_combout\)) # (!\DOUT[5]~148_combout\ & ((\reg_gen:16:regs|y\(5)))))) # (!\DOUT[0]~34_combout\ & (((\DOUT[5]~148_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \DOUT[5]~150_combout\,
	datab => \reg_gen:16:regs|y\(5),
	datac => \DOUT[0]~34_combout\,
	datad => \DOUT[5]~148_combout\,
	combout => \DOUT[5]~151_combout\);

-- Location: LCCOMB_X25_Y71_N26
\DOUT[5]~152\ : cycloneive_lcell_comb
-- Equation(s):
-- \DOUT[5]~152_combout\ = (\ADDR[0]~input_o\ & (\ADDR[1]~input_o\)) # (!\ADDR[0]~input_o\ & ((\ADDR[1]~input_o\ & (\DOUT[5]~146_combout\)) # (!\ADDR[1]~input_o\ & ((\DOUT[5]~151_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100111001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ADDR[0]~input_o\,
	datab => \ADDR[1]~input_o\,
	datac => \DOUT[5]~146_combout\,
	datad => \DOUT[5]~151_combout\,
	combout => \DOUT[5]~152_combout\);

-- Location: LCCOMB_X25_Y71_N28
\DOUT[5]~158\ : cycloneive_lcell_comb
-- Equation(s):
-- \DOUT[5]~158_combout\ = (\DOUT[5]~152_combout\ & ((\DOUT[5]~157_combout\) # ((!\ADDR[0]~input_o\)))) # (!\DOUT[5]~152_combout\ & (((\DOUT[5]~141_combout\ & \ADDR[0]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \DOUT[5]~157_combout\,
	datab => \DOUT[5]~141_combout\,
	datac => \DOUT[5]~152_combout\,
	datad => \ADDR[0]~input_o\,
	combout => \DOUT[5]~158_combout\);

-- Location: LCCOMB_X25_Y71_N16
\DOUT[5]$latch\ : cycloneive_lcell_comb
-- Equation(s):
-- \DOUT[5]$latch~combout\ = (\RE~input_o\ & ((GLOBAL(\DOUT[15]~48clkctrl_outclk\) & (\DOUT[5]~158_combout\)) # (!GLOBAL(\DOUT[15]~48clkctrl_outclk\) & ((\DOUT[5]$latch~combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \DOUT[5]~158_combout\,
	datab => \DOUT[5]$latch~combout\,
	datac => \RE~input_o\,
	datad => \DOUT[15]~48clkctrl_outclk\,
	combout => \DOUT[5]$latch~combout\);

-- Location: IOIBUF_X16_Y73_N22
\DIN[14]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_DIN(14),
	o => \DIN[14]~input_o\);

-- Location: FF_X27_Y72_N25
\reg_gen:15:regs|y[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	asdata => \DIN[14]~input_o\,
	sload => VCC,
	ena => dec_to_en(15),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \reg_gen:15:regs|y\(6));

-- Location: FF_X23_Y71_N11
\reg_gen:7:regs|y[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	asdata => \DIN[14]~input_o\,
	sload => VCC,
	ena => dec_to_en(7),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \reg_gen:7:regs|y\(6));

-- Location: LCCOMB_X23_Y71_N28
\reg_gen:23:regs|y[6]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \reg_gen:23:regs|y[6]~feeder_combout\ = \DIN[14]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \DIN[14]~input_o\,
	combout => \reg_gen:23:regs|y[6]~feeder_combout\);

-- Location: FF_X23_Y71_N29
\reg_gen:23:regs|y[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \reg_gen:23:regs|y[6]~feeder_combout\,
	ena => dec_to_en(23),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \reg_gen:23:regs|y\(6));

-- Location: LCCOMB_X23_Y71_N10
\DOUT[6]~175\ : cycloneive_lcell_comb
-- Equation(s):
-- \DOUT[6]~175_combout\ = (\ADDR[4]~input_o\ & ((\reg_gen:23:regs|y\(6)))) # (!\ADDR[4]~input_o\ & (\reg_gen:7:regs|y\(6)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ADDR[4]~input_o\,
	datac => \reg_gen:7:regs|y\(6),
	datad => \reg_gen:23:regs|y\(6),
	combout => \DOUT[6]~175_combout\);

-- Location: FF_X25_Y72_N3
\reg_gen:11:regs|y[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	asdata => \DIN[14]~input_o\,
	sload => VCC,
	ena => dec_to_en(11),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \reg_gen:11:regs|y\(6));

-- Location: FF_X24_Y72_N19
\reg_gen:27:regs|y[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	asdata => \DIN[14]~input_o\,
	sload => VCC,
	ena => dec_to_en(27),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \reg_gen:27:regs|y\(6));

-- Location: FF_X24_Y72_N29
\reg_gen:3:regs|y[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	asdata => \DIN[14]~input_o\,
	sload => VCC,
	ena => dec_to_en(3),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \reg_gen:3:regs|y\(6));

-- Location: FF_X23_Y72_N15
\reg_gen:19:regs|y[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	asdata => \DIN[14]~input_o\,
	sload => VCC,
	ena => dec_to_en(19),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \reg_gen:19:regs|y\(6));

-- Location: LCCOMB_X24_Y72_N28
\DOUT[6]~176\ : cycloneive_lcell_comb
-- Equation(s):
-- \DOUT[6]~176_combout\ = (\ADDR[4]~input_o\ & ((\ADDR[3]~input_o\) # ((\reg_gen:19:regs|y\(6))))) # (!\ADDR[4]~input_o\ & (!\ADDR[3]~input_o\ & (\reg_gen:3:regs|y\(6))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ADDR[4]~input_o\,
	datab => \ADDR[3]~input_o\,
	datac => \reg_gen:3:regs|y\(6),
	datad => \reg_gen:19:regs|y\(6),
	combout => \DOUT[6]~176_combout\);

-- Location: LCCOMB_X24_Y72_N18
\DOUT[6]~177\ : cycloneive_lcell_comb
-- Equation(s):
-- \DOUT[6]~177_combout\ = (\ADDR[3]~input_o\ & ((\DOUT[6]~176_combout\ & ((\reg_gen:27:regs|y\(6)))) # (!\DOUT[6]~176_combout\ & (\reg_gen:11:regs|y\(6))))) # (!\ADDR[3]~input_o\ & (((\DOUT[6]~176_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \reg_gen:11:regs|y\(6),
	datab => \ADDR[3]~input_o\,
	datac => \reg_gen:27:regs|y\(6),
	datad => \DOUT[6]~176_combout\,
	combout => \DOUT[6]~177_combout\);

-- Location: LCCOMB_X27_Y72_N2
\DOUT[6]~178\ : cycloneive_lcell_comb
-- Equation(s):
-- \DOUT[6]~178_combout\ = (\DOUT[0]~41_combout\ & ((\DOUT[6]~175_combout\) # ((\DOUT[0]~42_combout\)))) # (!\DOUT[0]~41_combout\ & (((\DOUT[6]~177_combout\ & !\DOUT[0]~42_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \DOUT[6]~175_combout\,
	datab => \DOUT[6]~177_combout\,
	datac => \DOUT[0]~41_combout\,
	datad => \DOUT[0]~42_combout\,
	combout => \DOUT[6]~178_combout\);

-- Location: IOIBUF_X35_Y73_N15
\DIN[6]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_DIN(6),
	o => \DIN[6]~input_o\);

-- Location: FF_X27_Y71_N15
\reg_gen:30:regs|y[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	asdata => \DIN[6]~input_o\,
	sload => VCC,
	ena => dec_to_en(30),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \reg_gen:30:regs|y\(6));

-- Location: LCCOMB_X27_Y72_N8
\DOUT[6]~179\ : cycloneive_lcell_comb
-- Equation(s):
-- \DOUT[6]~179_combout\ = (\DOUT[0]~42_combout\ & ((\DOUT[6]~178_combout\ & ((\reg_gen:30:regs|y\(6)))) # (!\DOUT[6]~178_combout\ & (\reg_gen:15:regs|y\(6))))) # (!\DOUT[0]~42_combout\ & (((\DOUT[6]~178_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100000111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \reg_gen:15:regs|y\(6),
	datab => \DOUT[0]~42_combout\,
	datac => \DOUT[6]~178_combout\,
	datad => \reg_gen:30:regs|y\(6),
	combout => \DOUT[6]~179_combout\);

-- Location: LCCOMB_X27_Y69_N0
\reg_gen:13:regs|y[6]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \reg_gen:13:regs|y[6]~feeder_combout\ = \DIN[14]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \DIN[14]~input_o\,
	combout => \reg_gen:13:regs|y[6]~feeder_combout\);

-- Location: FF_X27_Y69_N1
\reg_gen:13:regs|y[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \reg_gen:13:regs|y[6]~feeder_combout\,
	ena => dec_to_en(13),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \reg_gen:13:regs|y\(6));

-- Location: FF_X26_Y69_N17
\reg_gen:29:regs|y[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	asdata => \DIN[14]~input_o\,
	sload => VCC,
	ena => dec_to_en(29),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \reg_gen:29:regs|y\(6));

-- Location: FF_X26_Y69_N19
\reg_gen:5:regs|y[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	asdata => \DIN[14]~input_o\,
	sload => VCC,
	ena => dec_to_en(5),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \reg_gen:5:regs|y\(6));

-- Location: LCCOMB_X27_Y69_N22
\reg_gen:21:regs|y[6]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \reg_gen:21:regs|y[6]~feeder_combout\ = \DIN[14]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \DIN[14]~input_o\,
	combout => \reg_gen:21:regs|y[6]~feeder_combout\);

-- Location: FF_X27_Y69_N23
\reg_gen:21:regs|y[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \reg_gen:21:regs|y[6]~feeder_combout\,
	ena => dec_to_en(21),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \reg_gen:21:regs|y\(6));

-- Location: LCCOMB_X26_Y69_N18
\DOUT[6]~164\ : cycloneive_lcell_comb
-- Equation(s):
-- \DOUT[6]~164_combout\ = (\ADDR[4]~input_o\ & ((\ADDR[3]~input_o\) # ((\reg_gen:21:regs|y\(6))))) # (!\ADDR[4]~input_o\ & (!\ADDR[3]~input_o\ & (\reg_gen:5:regs|y\(6))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ADDR[4]~input_o\,
	datab => \ADDR[3]~input_o\,
	datac => \reg_gen:5:regs|y\(6),
	datad => \reg_gen:21:regs|y\(6),
	combout => \DOUT[6]~164_combout\);

-- Location: LCCOMB_X26_Y69_N16
\DOUT[6]~165\ : cycloneive_lcell_comb
-- Equation(s):
-- \DOUT[6]~165_combout\ = (\ADDR[3]~input_o\ & ((\DOUT[6]~164_combout\ & ((\reg_gen:29:regs|y\(6)))) # (!\DOUT[6]~164_combout\ & (\reg_gen:13:regs|y\(6))))) # (!\ADDR[3]~input_o\ & (((\DOUT[6]~164_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ADDR[3]~input_o\,
	datab => \reg_gen:13:regs|y\(6),
	datac => \reg_gen:29:regs|y\(6),
	datad => \DOUT[6]~164_combout\,
	combout => \DOUT[6]~165_combout\);

-- Location: LCCOMB_X27_Y70_N20
\reg_gen:17:regs|y[6]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \reg_gen:17:regs|y[6]~feeder_combout\ = \DIN[14]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \DIN[14]~input_o\,
	combout => \reg_gen:17:regs|y[6]~feeder_combout\);

-- Location: FF_X27_Y70_N21
\reg_gen:17:regs|y[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \reg_gen:17:regs|y[6]~feeder_combout\,
	ena => dec_to_en(17),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \reg_gen:17:regs|y\(6));

-- Location: FF_X27_Y70_N11
\reg_gen:25:regs|y[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	asdata => \DIN[14]~input_o\,
	sload => VCC,
	ena => dec_to_en(25),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \reg_gen:25:regs|y\(6));

-- Location: FF_X26_Y70_N29
\reg_gen:1:regs|y[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	asdata => \DIN[14]~input_o\,
	sload => VCC,
	ena => dec_to_en(1),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \reg_gen:1:regs|y\(6));

-- Location: FF_X26_Y70_N19
\reg_gen:9:regs|y[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	asdata => \DIN[14]~input_o\,
	sload => VCC,
	ena => dec_to_en(9),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \reg_gen:9:regs|y\(6));

-- Location: LCCOMB_X26_Y70_N28
\DOUT[6]~166\ : cycloneive_lcell_comb
-- Equation(s):
-- \DOUT[6]~166_combout\ = (\ADDR[3]~input_o\ & ((\ADDR[4]~input_o\) # ((\reg_gen:9:regs|y\(6))))) # (!\ADDR[3]~input_o\ & (!\ADDR[4]~input_o\ & (\reg_gen:1:regs|y\(6))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ADDR[3]~input_o\,
	datab => \ADDR[4]~input_o\,
	datac => \reg_gen:1:regs|y\(6),
	datad => \reg_gen:9:regs|y\(6),
	combout => \DOUT[6]~166_combout\);

-- Location: LCCOMB_X27_Y70_N10
\DOUT[6]~167\ : cycloneive_lcell_comb
-- Equation(s):
-- \DOUT[6]~167_combout\ = (\ADDR[4]~input_o\ & ((\DOUT[6]~166_combout\ & ((\reg_gen:25:regs|y\(6)))) # (!\DOUT[6]~166_combout\ & (\reg_gen:17:regs|y\(6))))) # (!\ADDR[4]~input_o\ & (((\DOUT[6]~166_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ADDR[4]~input_o\,
	datab => \reg_gen:17:regs|y\(6),
	datac => \reg_gen:25:regs|y\(6),
	datad => \DOUT[6]~166_combout\,
	combout => \DOUT[6]~167_combout\);

-- Location: LCCOMB_X27_Y72_N18
\DOUT[6]~168\ : cycloneive_lcell_comb
-- Equation(s):
-- \DOUT[6]~168_combout\ = (\ADDR[2]~input_o\ & (\DOUT[6]~165_combout\)) # (!\ADDR[2]~input_o\ & ((\DOUT[6]~167_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ADDR[2]~input_o\,
	datac => \DOUT[6]~165_combout\,
	datad => \DOUT[6]~167_combout\,
	combout => \DOUT[6]~168_combout\);

-- Location: FF_X30_Y70_N5
\reg_gen:8:regs|y[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	asdata => \DIN[6]~input_o\,
	sload => VCC,
	ena => \dec_to_en[8]~28_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \reg_gen:8:regs|y\(6));

-- Location: LCCOMB_X31_Y70_N4
\reg_gen:24:regs|y[6]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \reg_gen:24:regs|y[6]~feeder_combout\ = \DIN[6]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \DIN[6]~input_o\,
	combout => \reg_gen:24:regs|y[6]~feeder_combout\);

-- Location: FF_X31_Y70_N5
\reg_gen:24:regs|y[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \reg_gen:24:regs|y[6]~feeder_combout\,
	ena => \dec_to_en[24]~26_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \reg_gen:24:regs|y\(6));

-- Location: LCCOMB_X30_Y70_N4
\DOUT[6]~169\ : cycloneive_lcell_comb
-- Equation(s):
-- \DOUT[6]~169_combout\ = (\ADDR[4]~input_o\ & ((\reg_gen:24:regs|y\(6)))) # (!\ADDR[4]~input_o\ & (\reg_gen:8:regs|y\(6)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ADDR[4]~input_o\,
	datac => \reg_gen:8:regs|y\(6),
	datad => \reg_gen:24:regs|y\(6),
	combout => \DOUT[6]~169_combout\);

-- Location: LCCOMB_X30_Y69_N18
\reg_gen:12:regs|y[6]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \reg_gen:12:regs|y[6]~feeder_combout\ = \DIN[6]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \DIN[6]~input_o\,
	combout => \reg_gen:12:regs|y[6]~feeder_combout\);

-- Location: FF_X30_Y69_N19
\reg_gen:12:regs|y[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \reg_gen:12:regs|y[6]~feeder_combout\,
	ena => dec_to_en(12),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \reg_gen:12:regs|y\(6));

-- Location: FF_X30_Y69_N9
\reg_gen:28:regs|y[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	asdata => \DIN[6]~input_o\,
	sload => VCC,
	ena => dec_to_en(28),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \reg_gen:28:regs|y\(6));

-- Location: FF_X29_Y69_N25
\reg_gen:4:regs|y[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	asdata => \DIN[6]~input_o\,
	sload => VCC,
	ena => dec_to_en(4),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \reg_gen:4:regs|y\(6));

-- Location: LCCOMB_X28_Y69_N8
\reg_gen:20:regs|y[6]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \reg_gen:20:regs|y[6]~feeder_combout\ = \DIN[6]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \DIN[6]~input_o\,
	combout => \reg_gen:20:regs|y[6]~feeder_combout\);

-- Location: FF_X28_Y69_N9
\reg_gen:20:regs|y[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \reg_gen:20:regs|y[6]~feeder_combout\,
	ena => dec_to_en(20),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \reg_gen:20:regs|y\(6));

-- Location: LCCOMB_X29_Y69_N24
\DOUT[6]~171\ : cycloneive_lcell_comb
-- Equation(s):
-- \DOUT[6]~171_combout\ = (\ADDR[4]~input_o\ & ((\ADDR[3]~input_o\) # ((\reg_gen:20:regs|y\(6))))) # (!\ADDR[4]~input_o\ & (!\ADDR[3]~input_o\ & (\reg_gen:4:regs|y\(6))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ADDR[4]~input_o\,
	datab => \ADDR[3]~input_o\,
	datac => \reg_gen:4:regs|y\(6),
	datad => \reg_gen:20:regs|y\(6),
	combout => \DOUT[6]~171_combout\);

-- Location: LCCOMB_X30_Y69_N8
\DOUT[6]~172\ : cycloneive_lcell_comb
-- Equation(s):
-- \DOUT[6]~172_combout\ = (\ADDR[3]~input_o\ & ((\DOUT[6]~171_combout\ & ((\reg_gen:28:regs|y\(6)))) # (!\DOUT[6]~171_combout\ & (\reg_gen:12:regs|y\(6))))) # (!\ADDR[3]~input_o\ & (((\DOUT[6]~171_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ADDR[3]~input_o\,
	datab => \reg_gen:12:regs|y\(6),
	datac => \reg_gen:28:regs|y\(6),
	datad => \DOUT[6]~171_combout\,
	combout => \DOUT[6]~172_combout\);

-- Location: FF_X29_Y70_N9
\reg_gen:0:regs|y[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	asdata => \DIN[6]~input_o\,
	sload => VCC,
	ena => \dec_to_en[0]~31_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \reg_gen:0:regs|y\(6));

-- Location: FF_X30_Y70_N17
\reg_gen:16:regs|y[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	asdata => \DIN[6]~input_o\,
	sload => VCC,
	ena => \dec_to_en[16]~30_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \reg_gen:16:regs|y\(6));

-- Location: LCCOMB_X29_Y70_N8
\DOUT[6]~170\ : cycloneive_lcell_comb
-- Equation(s):
-- \DOUT[6]~170_combout\ = (\DOUT[0]~34_combout\ & ((\DOUT[0]~33_combout\) # ((\reg_gen:16:regs|y\(6))))) # (!\DOUT[0]~34_combout\ & (!\DOUT[0]~33_combout\ & (\reg_gen:0:regs|y\(6))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \DOUT[0]~34_combout\,
	datab => \DOUT[0]~33_combout\,
	datac => \reg_gen:0:regs|y\(6),
	datad => \reg_gen:16:regs|y\(6),
	combout => \DOUT[6]~170_combout\);

-- Location: LCCOMB_X27_Y72_N20
\DOUT[6]~173\ : cycloneive_lcell_comb
-- Equation(s):
-- \DOUT[6]~173_combout\ = (\DOUT[0]~33_combout\ & ((\DOUT[6]~170_combout\ & ((\DOUT[6]~172_combout\))) # (!\DOUT[6]~170_combout\ & (\DOUT[6]~169_combout\)))) # (!\DOUT[0]~33_combout\ & (((\DOUT[6]~170_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \DOUT[6]~169_combout\,
	datab => \DOUT[0]~33_combout\,
	datac => \DOUT[6]~172_combout\,
	datad => \DOUT[6]~170_combout\,
	combout => \DOUT[6]~173_combout\);

-- Location: LCCOMB_X27_Y72_N26
\DOUT[6]~174\ : cycloneive_lcell_comb
-- Equation(s):
-- \DOUT[6]~174_combout\ = (\ADDR[1]~input_o\ & (\ADDR[0]~input_o\)) # (!\ADDR[1]~input_o\ & ((\ADDR[0]~input_o\ & (\DOUT[6]~168_combout\)) # (!\ADDR[0]~input_o\ & ((\DOUT[6]~173_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100111001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ADDR[1]~input_o\,
	datab => \ADDR[0]~input_o\,
	datac => \DOUT[6]~168_combout\,
	datad => \DOUT[6]~173_combout\,
	combout => \DOUT[6]~174_combout\);

-- Location: FF_X28_Y71_N11
\reg_gen:6:regs|y[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	asdata => \DIN[6]~input_o\,
	sload => VCC,
	ena => dec_to_en(6),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \reg_gen:6:regs|y\(6));

-- Location: FF_X28_Y71_N25
\reg_gen:22:regs|y[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	asdata => \DIN[6]~input_o\,
	sload => VCC,
	ena => dec_to_en(22),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \reg_gen:22:regs|y\(6));

-- Location: LCCOMB_X28_Y71_N10
\DOUT[6]~159\ : cycloneive_lcell_comb
-- Equation(s):
-- \DOUT[6]~159_combout\ = (\ADDR[3]~input_o\ & (\ADDR[4]~input_o\)) # (!\ADDR[3]~input_o\ & ((\ADDR[4]~input_o\ & ((\reg_gen:22:regs|y\(6)))) # (!\ADDR[4]~input_o\ & (\reg_gen:6:regs|y\(6)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ADDR[3]~input_o\,
	datab => \ADDR[4]~input_o\,
	datac => \reg_gen:6:regs|y\(6),
	datad => \reg_gen:22:regs|y\(6),
	combout => \DOUT[6]~159_combout\);

-- Location: FF_X27_Y71_N1
\reg_gen:14:regs|y[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	asdata => \DIN[6]~input_o\,
	sload => VCC,
	ena => dec_to_en(14),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \reg_gen:14:regs|y\(6));

-- Location: LCCOMB_X27_Y71_N0
\DOUT[6]~160\ : cycloneive_lcell_comb
-- Equation(s):
-- \DOUT[6]~160_combout\ = (\ADDR[3]~input_o\ & ((\DOUT[6]~159_combout\ & ((\reg_gen:30:regs|y\(6)))) # (!\DOUT[6]~159_combout\ & (\reg_gen:14:regs|y\(6))))) # (!\ADDR[3]~input_o\ & (\DOUT[6]~159_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110001100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ADDR[3]~input_o\,
	datab => \DOUT[6]~159_combout\,
	datac => \reg_gen:14:regs|y\(6),
	datad => \reg_gen:30:regs|y\(6),
	combout => \DOUT[6]~160_combout\);

-- Location: FF_X30_Y72_N19
\reg_gen:18:regs|y[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	asdata => \DIN[6]~input_o\,
	sload => VCC,
	ena => dec_to_en(18),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \reg_gen:18:regs|y\(6));

-- Location: FF_X29_Y72_N3
\reg_gen:26:regs|y[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	asdata => \DIN[6]~input_o\,
	sload => VCC,
	ena => dec_to_en(26),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \reg_gen:26:regs|y\(6));

-- Location: FF_X29_Y72_N13
\reg_gen:2:regs|y[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	asdata => \DIN[6]~input_o\,
	sload => VCC,
	ena => dec_to_en(2),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \reg_gen:2:regs|y\(6));

-- Location: FF_X30_Y72_N25
\reg_gen:10:regs|y[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	asdata => \DIN[6]~input_o\,
	sload => VCC,
	ena => dec_to_en(10),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \reg_gen:10:regs|y\(6));

-- Location: LCCOMB_X29_Y72_N12
\DOUT[6]~161\ : cycloneive_lcell_comb
-- Equation(s):
-- \DOUT[6]~161_combout\ = (\ADDR[3]~input_o\ & ((\ADDR[4]~input_o\) # ((\reg_gen:10:regs|y\(6))))) # (!\ADDR[3]~input_o\ & (!\ADDR[4]~input_o\ & (\reg_gen:2:regs|y\(6))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ADDR[3]~input_o\,
	datab => \ADDR[4]~input_o\,
	datac => \reg_gen:2:regs|y\(6),
	datad => \reg_gen:10:regs|y\(6),
	combout => \DOUT[6]~161_combout\);

-- Location: LCCOMB_X29_Y72_N2
\DOUT[6]~162\ : cycloneive_lcell_comb
-- Equation(s):
-- \DOUT[6]~162_combout\ = (\ADDR[4]~input_o\ & ((\DOUT[6]~161_combout\ & ((\reg_gen:26:regs|y\(6)))) # (!\DOUT[6]~161_combout\ & (\reg_gen:18:regs|y\(6))))) # (!\ADDR[4]~input_o\ & (((\DOUT[6]~161_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ADDR[4]~input_o\,
	datab => \reg_gen:18:regs|y\(6),
	datac => \reg_gen:26:regs|y\(6),
	datad => \DOUT[6]~161_combout\,
	combout => \DOUT[6]~162_combout\);

-- Location: LCCOMB_X27_Y72_N0
\DOUT[6]~163\ : cycloneive_lcell_comb
-- Equation(s):
-- \DOUT[6]~163_combout\ = (\ADDR[2]~input_o\ & (\DOUT[6]~160_combout\)) # (!\ADDR[2]~input_o\ & ((\DOUT[6]~162_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \DOUT[6]~160_combout\,
	datac => \DOUT[6]~162_combout\,
	datad => \ADDR[2]~input_o\,
	combout => \DOUT[6]~163_combout\);

-- Location: LCCOMB_X27_Y72_N10
\DOUT[6]~180\ : cycloneive_lcell_comb
-- Equation(s):
-- \DOUT[6]~180_combout\ = (\ADDR[1]~input_o\ & ((\DOUT[6]~174_combout\ & (\DOUT[6]~179_combout\)) # (!\DOUT[6]~174_combout\ & ((\DOUT[6]~163_combout\))))) # (!\ADDR[1]~input_o\ & (((\DOUT[6]~174_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101101011010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ADDR[1]~input_o\,
	datab => \DOUT[6]~179_combout\,
	datac => \DOUT[6]~174_combout\,
	datad => \DOUT[6]~163_combout\,
	combout => \DOUT[6]~180_combout\);

-- Location: LCCOMB_X27_Y72_N12
\DOUT[6]$latch\ : cycloneive_lcell_comb
-- Equation(s):
-- \DOUT[6]$latch~combout\ = (\RE~input_o\ & ((GLOBAL(\DOUT[15]~48clkctrl_outclk\) & ((\DOUT[6]~180_combout\))) # (!GLOBAL(\DOUT[15]~48clkctrl_outclk\) & (\DOUT[6]$latch~combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \DOUT[6]$latch~combout\,
	datab => \RE~input_o\,
	datac => \DOUT[6]~180_combout\,
	datad => \DOUT[15]~48clkctrl_outclk\,
	combout => \DOUT[6]$latch~combout\);

-- Location: IOIBUF_X29_Y73_N8
\DIN[7]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_DIN(7),
	o => \DIN[7]~input_o\);

-- Location: FF_X27_Y71_N5
\reg_gen:30:regs|y[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	asdata => \DIN[7]~input_o\,
	sload => VCC,
	ena => dec_to_en(30),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \reg_gen:30:regs|y\(7));

-- Location: FF_X27_Y71_N29
\reg_gen:14:regs|y[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	asdata => \DIN[7]~input_o\,
	sload => VCC,
	ena => dec_to_en(14),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \reg_gen:14:regs|y\(7));

-- Location: FF_X28_Y71_N3
\reg_gen:6:regs|y[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	asdata => \DIN[7]~input_o\,
	sload => VCC,
	ena => dec_to_en(6),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \reg_gen:6:regs|y\(7));

-- Location: FF_X28_Y71_N1
\reg_gen:22:regs|y[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	asdata => \DIN[7]~input_o\,
	sload => VCC,
	ena => dec_to_en(22),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \reg_gen:22:regs|y\(7));

-- Location: LCCOMB_X28_Y71_N2
\DOUT[7]~186\ : cycloneive_lcell_comb
-- Equation(s):
-- \DOUT[7]~186_combout\ = (\ADDR[3]~input_o\ & (\ADDR[4]~input_o\)) # (!\ADDR[3]~input_o\ & ((\ADDR[4]~input_o\ & ((\reg_gen:22:regs|y\(7)))) # (!\ADDR[4]~input_o\ & (\reg_gen:6:regs|y\(7)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ADDR[3]~input_o\,
	datab => \ADDR[4]~input_o\,
	datac => \reg_gen:6:regs|y\(7),
	datad => \reg_gen:22:regs|y\(7),
	combout => \DOUT[7]~186_combout\);

-- Location: LCCOMB_X27_Y71_N28
\DOUT[7]~187\ : cycloneive_lcell_comb
-- Equation(s):
-- \DOUT[7]~187_combout\ = (\ADDR[3]~input_o\ & ((\DOUT[7]~186_combout\ & (\reg_gen:30:regs|y\(7))) # (!\DOUT[7]~186_combout\ & ((\reg_gen:14:regs|y\(7)))))) # (!\ADDR[3]~input_o\ & (((\DOUT[7]~186_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ADDR[3]~input_o\,
	datab => \reg_gen:30:regs|y\(7),
	datac => \reg_gen:14:regs|y\(7),
	datad => \DOUT[7]~186_combout\,
	combout => \DOUT[7]~187_combout\);

-- Location: LCCOMB_X30_Y72_N6
\reg_gen:18:regs|y[7]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \reg_gen:18:regs|y[7]~feeder_combout\ = \DIN[7]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \DIN[7]~input_o\,
	combout => \reg_gen:18:regs|y[7]~feeder_combout\);

-- Location: FF_X30_Y72_N7
\reg_gen:18:regs|y[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \reg_gen:18:regs|y[7]~feeder_combout\,
	ena => dec_to_en(18),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \reg_gen:18:regs|y\(7));

-- Location: FF_X29_Y72_N27
\reg_gen:26:regs|y[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	asdata => \DIN[7]~input_o\,
	sload => VCC,
	ena => dec_to_en(26),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \reg_gen:26:regs|y\(7));

-- Location: FF_X29_Y72_N25
\reg_gen:2:regs|y[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	asdata => \DIN[7]~input_o\,
	sload => VCC,
	ena => dec_to_en(2),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \reg_gen:2:regs|y\(7));

-- Location: LCCOMB_X30_Y72_N16
\reg_gen:10:regs|y[7]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \reg_gen:10:regs|y[7]~feeder_combout\ = \DIN[7]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \DIN[7]~input_o\,
	combout => \reg_gen:10:regs|y[7]~feeder_combout\);

-- Location: FF_X30_Y72_N17
\reg_gen:10:regs|y[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \reg_gen:10:regs|y[7]~feeder_combout\,
	ena => dec_to_en(10),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \reg_gen:10:regs|y\(7));

-- Location: LCCOMB_X29_Y72_N24
\DOUT[7]~188\ : cycloneive_lcell_comb
-- Equation(s):
-- \DOUT[7]~188_combout\ = (\ADDR[3]~input_o\ & ((\ADDR[4]~input_o\) # ((\reg_gen:10:regs|y\(7))))) # (!\ADDR[3]~input_o\ & (!\ADDR[4]~input_o\ & (\reg_gen:2:regs|y\(7))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ADDR[3]~input_o\,
	datab => \ADDR[4]~input_o\,
	datac => \reg_gen:2:regs|y\(7),
	datad => \reg_gen:10:regs|y\(7),
	combout => \DOUT[7]~188_combout\);

-- Location: LCCOMB_X29_Y72_N26
\DOUT[7]~189\ : cycloneive_lcell_comb
-- Equation(s):
-- \DOUT[7]~189_combout\ = (\ADDR[4]~input_o\ & ((\DOUT[7]~188_combout\ & ((\reg_gen:26:regs|y\(7)))) # (!\DOUT[7]~188_combout\ & (\reg_gen:18:regs|y\(7))))) # (!\ADDR[4]~input_o\ & (((\DOUT[7]~188_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \reg_gen:18:regs|y\(7),
	datab => \ADDR[4]~input_o\,
	datac => \reg_gen:26:regs|y\(7),
	datad => \DOUT[7]~188_combout\,
	combout => \DOUT[7]~189_combout\);

-- Location: LCCOMB_X28_Y70_N22
\DOUT[7]~190\ : cycloneive_lcell_comb
-- Equation(s):
-- \DOUT[7]~190_combout\ = (\ADDR[2]~input_o\ & (\DOUT[7]~187_combout\)) # (!\ADDR[2]~input_o\ & ((\DOUT[7]~189_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \ADDR[2]~input_o\,
	datac => \DOUT[7]~187_combout\,
	datad => \DOUT[7]~189_combout\,
	combout => \DOUT[7]~190_combout\);

-- Location: FF_X29_Y70_N29
\reg_gen:0:regs|y[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	asdata => \DIN[7]~input_o\,
	sload => VCC,
	ena => \dec_to_en[0]~31_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \reg_gen:0:regs|y\(7));

-- Location: FF_X29_Y70_N11
\reg_gen:8:regs|y[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	asdata => \DIN[7]~input_o\,
	sload => VCC,
	ena => \dec_to_en[8]~28_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \reg_gen:8:regs|y\(7));

-- Location: LCCOMB_X31_Y70_N14
\reg_gen:24:regs|y[7]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \reg_gen:24:regs|y[7]~feeder_combout\ = \DIN[7]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \DIN[7]~input_o\,
	combout => \reg_gen:24:regs|y[7]~feeder_combout\);

-- Location: FF_X31_Y70_N15
\reg_gen:24:regs|y[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \reg_gen:24:regs|y[7]~feeder_combout\,
	ena => \dec_to_en[24]~26_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \reg_gen:24:regs|y\(7));

-- Location: LCCOMB_X29_Y70_N10
\DOUT[7]~191\ : cycloneive_lcell_comb
-- Equation(s):
-- \DOUT[7]~191_combout\ = (\ADDR[4]~input_o\ & ((\reg_gen:24:regs|y\(7)))) # (!\ADDR[4]~input_o\ & (\reg_gen:8:regs|y\(7)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \ADDR[4]~input_o\,
	datac => \reg_gen:8:regs|y\(7),
	datad => \reg_gen:24:regs|y\(7),
	combout => \DOUT[7]~191_combout\);

-- Location: LCCOMB_X29_Y70_N28
\DOUT[7]~192\ : cycloneive_lcell_comb
-- Equation(s):
-- \DOUT[7]~192_combout\ = (\DOUT[0]~34_combout\ & (\DOUT[0]~33_combout\)) # (!\DOUT[0]~34_combout\ & ((\DOUT[0]~33_combout\ & ((\DOUT[7]~191_combout\))) # (!\DOUT[0]~33_combout\ & (\reg_gen:0:regs|y\(7)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \DOUT[0]~34_combout\,
	datab => \DOUT[0]~33_combout\,
	datac => \reg_gen:0:regs|y\(7),
	datad => \DOUT[7]~191_combout\,
	combout => \DOUT[7]~192_combout\);

-- Location: FF_X30_Y70_N1
\reg_gen:16:regs|y[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	asdata => \DIN[7]~input_o\,
	sload => VCC,
	ena => \dec_to_en[16]~30_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \reg_gen:16:regs|y\(7));

-- Location: FF_X30_Y69_N3
\reg_gen:12:regs|y[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	asdata => \DIN[7]~input_o\,
	sload => VCC,
	ena => dec_to_en(12),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \reg_gen:12:regs|y\(7));

-- Location: FF_X30_Y69_N5
\reg_gen:28:regs|y[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	asdata => \DIN[7]~input_o\,
	sload => VCC,
	ena => dec_to_en(28),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \reg_gen:28:regs|y\(7));

-- Location: FF_X29_Y69_N3
\reg_gen:4:regs|y[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	asdata => \DIN[7]~input_o\,
	sload => VCC,
	ena => dec_to_en(4),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \reg_gen:4:regs|y\(7));

-- Location: FF_X28_Y69_N19
\reg_gen:20:regs|y[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	asdata => \DIN[7]~input_o\,
	sload => VCC,
	ena => dec_to_en(20),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \reg_gen:20:regs|y\(7));

-- Location: LCCOMB_X29_Y69_N2
\DOUT[7]~193\ : cycloneive_lcell_comb
-- Equation(s):
-- \DOUT[7]~193_combout\ = (\ADDR[4]~input_o\ & ((\ADDR[3]~input_o\) # ((\reg_gen:20:regs|y\(7))))) # (!\ADDR[4]~input_o\ & (!\ADDR[3]~input_o\ & (\reg_gen:4:regs|y\(7))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ADDR[4]~input_o\,
	datab => \ADDR[3]~input_o\,
	datac => \reg_gen:4:regs|y\(7),
	datad => \reg_gen:20:regs|y\(7),
	combout => \DOUT[7]~193_combout\);

-- Location: LCCOMB_X30_Y69_N4
\DOUT[7]~194\ : cycloneive_lcell_comb
-- Equation(s):
-- \DOUT[7]~194_combout\ = (\ADDR[3]~input_o\ & ((\DOUT[7]~193_combout\ & ((\reg_gen:28:regs|y\(7)))) # (!\DOUT[7]~193_combout\ & (\reg_gen:12:regs|y\(7))))) # (!\ADDR[3]~input_o\ & (((\DOUT[7]~193_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ADDR[3]~input_o\,
	datab => \reg_gen:12:regs|y\(7),
	datac => \reg_gen:28:regs|y\(7),
	datad => \DOUT[7]~193_combout\,
	combout => \DOUT[7]~194_combout\);

-- Location: LCCOMB_X29_Y70_N18
\DOUT[7]~195\ : cycloneive_lcell_comb
-- Equation(s):
-- \DOUT[7]~195_combout\ = (\DOUT[0]~34_combout\ & ((\DOUT[7]~192_combout\ & ((\DOUT[7]~194_combout\))) # (!\DOUT[7]~192_combout\ & (\reg_gen:16:regs|y\(7))))) # (!\DOUT[0]~34_combout\ & (\DOUT[7]~192_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110001100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \DOUT[0]~34_combout\,
	datab => \DOUT[7]~192_combout\,
	datac => \reg_gen:16:regs|y\(7),
	datad => \DOUT[7]~194_combout\,
	combout => \DOUT[7]~195_combout\);

-- Location: LCCOMB_X28_Y70_N0
\DOUT[7]~196\ : cycloneive_lcell_comb
-- Equation(s):
-- \DOUT[7]~196_combout\ = (\ADDR[0]~input_o\ & (\ADDR[1]~input_o\)) # (!\ADDR[0]~input_o\ & ((\ADDR[1]~input_o\ & (\DOUT[7]~190_combout\)) # (!\ADDR[1]~input_o\ & ((\DOUT[7]~195_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100111001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ADDR[0]~input_o\,
	datab => \ADDR[1]~input_o\,
	datac => \DOUT[7]~190_combout\,
	datad => \DOUT[7]~195_combout\,
	combout => \DOUT[7]~196_combout\);

-- Location: IOIBUF_X23_Y73_N8
\DIN[15]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_DIN(15),
	o => \DIN[15]~input_o\);

-- Location: FF_X27_Y70_N25
\reg_gen:17:regs|y[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	asdata => \DIN[15]~input_o\,
	sload => VCC,
	ena => dec_to_en(17),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \reg_gen:17:regs|y\(7));

-- Location: FF_X27_Y70_N19
\reg_gen:25:regs|y[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	asdata => \DIN[15]~input_o\,
	sload => VCC,
	ena => dec_to_en(25),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \reg_gen:25:regs|y\(7));

-- Location: FF_X26_Y70_N23
\reg_gen:1:regs|y[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	asdata => \DIN[15]~input_o\,
	sload => VCC,
	ena => dec_to_en(1),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \reg_gen:1:regs|y\(7));

-- Location: FF_X26_Y70_N11
\reg_gen:9:regs|y[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	asdata => \DIN[15]~input_o\,
	sload => VCC,
	ena => dec_to_en(9),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \reg_gen:9:regs|y\(7));

-- Location: LCCOMB_X26_Y70_N22
\DOUT[7]~183\ : cycloneive_lcell_comb
-- Equation(s):
-- \DOUT[7]~183_combout\ = (\ADDR[3]~input_o\ & ((\ADDR[4]~input_o\) # ((\reg_gen:9:regs|y\(7))))) # (!\ADDR[3]~input_o\ & (!\ADDR[4]~input_o\ & (\reg_gen:1:regs|y\(7))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ADDR[3]~input_o\,
	datab => \ADDR[4]~input_o\,
	datac => \reg_gen:1:regs|y\(7),
	datad => \reg_gen:9:regs|y\(7),
	combout => \DOUT[7]~183_combout\);

-- Location: LCCOMB_X27_Y70_N18
\DOUT[7]~184\ : cycloneive_lcell_comb
-- Equation(s):
-- \DOUT[7]~184_combout\ = (\ADDR[4]~input_o\ & ((\DOUT[7]~183_combout\ & ((\reg_gen:25:regs|y\(7)))) # (!\DOUT[7]~183_combout\ & (\reg_gen:17:regs|y\(7))))) # (!\ADDR[4]~input_o\ & (((\DOUT[7]~183_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \reg_gen:17:regs|y\(7),
	datab => \ADDR[4]~input_o\,
	datac => \reg_gen:25:regs|y\(7),
	datad => \DOUT[7]~183_combout\,
	combout => \DOUT[7]~184_combout\);

-- Location: LCCOMB_X27_Y69_N8
\reg_gen:13:regs|y[7]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \reg_gen:13:regs|y[7]~feeder_combout\ = \DIN[15]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \DIN[15]~input_o\,
	combout => \reg_gen:13:regs|y[7]~feeder_combout\);

-- Location: FF_X27_Y69_N9
\reg_gen:13:regs|y[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \reg_gen:13:regs|y[7]~feeder_combout\,
	ena => dec_to_en(13),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \reg_gen:13:regs|y\(7));

-- Location: FF_X26_Y69_N5
\reg_gen:29:regs|y[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	asdata => \DIN[15]~input_o\,
	sload => VCC,
	ena => dec_to_en(29),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \reg_gen:29:regs|y\(7));

-- Location: FF_X26_Y69_N3
\reg_gen:5:regs|y[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	asdata => \DIN[15]~input_o\,
	sload => VCC,
	ena => dec_to_en(5),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \reg_gen:5:regs|y\(7));

-- Location: LCCOMB_X27_Y69_N26
\reg_gen:21:regs|y[7]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \reg_gen:21:regs|y[7]~feeder_combout\ = \DIN[15]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \DIN[15]~input_o\,
	combout => \reg_gen:21:regs|y[7]~feeder_combout\);

-- Location: FF_X27_Y69_N27
\reg_gen:21:regs|y[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \reg_gen:21:regs|y[7]~feeder_combout\,
	ena => dec_to_en(21),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \reg_gen:21:regs|y\(7));

-- Location: LCCOMB_X26_Y69_N2
\DOUT[7]~181\ : cycloneive_lcell_comb
-- Equation(s):
-- \DOUT[7]~181_combout\ = (\ADDR[4]~input_o\ & ((\ADDR[3]~input_o\) # ((\reg_gen:21:regs|y\(7))))) # (!\ADDR[4]~input_o\ & (!\ADDR[3]~input_o\ & (\reg_gen:5:regs|y\(7))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ADDR[4]~input_o\,
	datab => \ADDR[3]~input_o\,
	datac => \reg_gen:5:regs|y\(7),
	datad => \reg_gen:21:regs|y\(7),
	combout => \DOUT[7]~181_combout\);

-- Location: LCCOMB_X26_Y69_N4
\DOUT[7]~182\ : cycloneive_lcell_comb
-- Equation(s):
-- \DOUT[7]~182_combout\ = (\ADDR[3]~input_o\ & ((\DOUT[7]~181_combout\ & ((\reg_gen:29:regs|y\(7)))) # (!\DOUT[7]~181_combout\ & (\reg_gen:13:regs|y\(7))))) # (!\ADDR[3]~input_o\ & (((\DOUT[7]~181_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ADDR[3]~input_o\,
	datab => \reg_gen:13:regs|y\(7),
	datac => \reg_gen:29:regs|y\(7),
	datad => \DOUT[7]~181_combout\,
	combout => \DOUT[7]~182_combout\);

-- Location: LCCOMB_X27_Y70_N12
\DOUT[7]~185\ : cycloneive_lcell_comb
-- Equation(s):
-- \DOUT[7]~185_combout\ = (\ADDR[2]~input_o\ & ((\DOUT[7]~182_combout\))) # (!\ADDR[2]~input_o\ & (\DOUT[7]~184_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ADDR[2]~input_o\,
	datac => \DOUT[7]~184_combout\,
	datad => \DOUT[7]~182_combout\,
	combout => \DOUT[7]~185_combout\);

-- Location: FF_X24_Y71_N9
\reg_gen:7:regs|y[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	asdata => \DIN[15]~input_o\,
	sload => VCC,
	ena => dec_to_en(7),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \reg_gen:7:regs|y\(7));

-- Location: FF_X23_Y71_N21
\reg_gen:23:regs|y[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	asdata => \DIN[15]~input_o\,
	sload => VCC,
	ena => dec_to_en(23),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \reg_gen:23:regs|y\(7));

-- Location: LCCOMB_X24_Y71_N8
\DOUT[7]~197\ : cycloneive_lcell_comb
-- Equation(s):
-- \DOUT[7]~197_combout\ = (\ADDR[4]~input_o\ & ((\reg_gen:23:regs|y\(7)))) # (!\ADDR[4]~input_o\ & (\reg_gen:7:regs|y\(7)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ADDR[4]~input_o\,
	datac => \reg_gen:7:regs|y\(7),
	datad => \reg_gen:23:regs|y\(7),
	combout => \DOUT[7]~197_combout\);

-- Location: LCCOMB_X25_Y70_N4
\reg_gen:15:regs|y[7]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \reg_gen:15:regs|y[7]~feeder_combout\ = \DIN[15]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \DIN[15]~input_o\,
	combout => \reg_gen:15:regs|y[7]~feeder_combout\);

-- Location: FF_X25_Y70_N5
\reg_gen:15:regs|y[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \reg_gen:15:regs|y[7]~feeder_combout\,
	ena => dec_to_en(15),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \reg_gen:15:regs|y\(7));

-- Location: FF_X25_Y72_N21
\reg_gen:11:regs|y[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	asdata => \DIN[15]~input_o\,
	sload => VCC,
	ena => dec_to_en(11),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \reg_gen:11:regs|y\(7));

-- Location: FF_X24_Y72_N7
\reg_gen:27:regs|y[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	asdata => \DIN[15]~input_o\,
	sload => VCC,
	ena => dec_to_en(27),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \reg_gen:27:regs|y\(7));

-- Location: FF_X24_Y72_N17
\reg_gen:3:regs|y[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	asdata => \DIN[15]~input_o\,
	sload => VCC,
	ena => dec_to_en(3),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \reg_gen:3:regs|y\(7));

-- Location: LCCOMB_X23_Y72_N20
\reg_gen:19:regs|y[7]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \reg_gen:19:regs|y[7]~feeder_combout\ = \DIN[15]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \DIN[15]~input_o\,
	combout => \reg_gen:19:regs|y[7]~feeder_combout\);

-- Location: FF_X23_Y72_N21
\reg_gen:19:regs|y[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \reg_gen:19:regs|y[7]~feeder_combout\,
	ena => dec_to_en(19),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \reg_gen:19:regs|y\(7));

-- Location: LCCOMB_X24_Y72_N16
\DOUT[7]~198\ : cycloneive_lcell_comb
-- Equation(s):
-- \DOUT[7]~198_combout\ = (\ADDR[4]~input_o\ & ((\ADDR[3]~input_o\) # ((\reg_gen:19:regs|y\(7))))) # (!\ADDR[4]~input_o\ & (!\ADDR[3]~input_o\ & (\reg_gen:3:regs|y\(7))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ADDR[4]~input_o\,
	datab => \ADDR[3]~input_o\,
	datac => \reg_gen:3:regs|y\(7),
	datad => \reg_gen:19:regs|y\(7),
	combout => \DOUT[7]~198_combout\);

-- Location: LCCOMB_X24_Y72_N6
\DOUT[7]~199\ : cycloneive_lcell_comb
-- Equation(s):
-- \DOUT[7]~199_combout\ = (\ADDR[3]~input_o\ & ((\DOUT[7]~198_combout\ & ((\reg_gen:27:regs|y\(7)))) # (!\DOUT[7]~198_combout\ & (\reg_gen:11:regs|y\(7))))) # (!\ADDR[3]~input_o\ & (((\DOUT[7]~198_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \reg_gen:11:regs|y\(7),
	datab => \ADDR[3]~input_o\,
	datac => \reg_gen:27:regs|y\(7),
	datad => \DOUT[7]~198_combout\,
	combout => \DOUT[7]~199_combout\);

-- Location: LCCOMB_X28_Y70_N26
\DOUT[7]~200\ : cycloneive_lcell_comb
-- Equation(s):
-- \DOUT[7]~200_combout\ = (\DOUT[0]~42_combout\ & ((\reg_gen:15:regs|y\(7)) # ((\DOUT[0]~41_combout\)))) # (!\DOUT[0]~42_combout\ & (((\DOUT[7]~199_combout\ & !\DOUT[0]~41_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \reg_gen:15:regs|y\(7),
	datab => \DOUT[0]~42_combout\,
	datac => \DOUT[7]~199_combout\,
	datad => \DOUT[0]~41_combout\,
	combout => \DOUT[7]~200_combout\);

-- Location: LCCOMB_X28_Y70_N4
\DOUT[7]~201\ : cycloneive_lcell_comb
-- Equation(s):
-- \DOUT[7]~201_combout\ = (\DOUT[7]~200_combout\ & ((\reg_gen:30:regs|y\(7)) # ((!\DOUT[0]~41_combout\)))) # (!\DOUT[7]~200_combout\ & (((\DOUT[7]~197_combout\ & \DOUT[0]~41_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \reg_gen:30:regs|y\(7),
	datab => \DOUT[7]~197_combout\,
	datac => \DOUT[7]~200_combout\,
	datad => \DOUT[0]~41_combout\,
	combout => \DOUT[7]~201_combout\);

-- Location: LCCOMB_X28_Y70_N18
\DOUT[7]~202\ : cycloneive_lcell_comb
-- Equation(s):
-- \DOUT[7]~202_combout\ = (\DOUT[7]~196_combout\ & (((\DOUT[7]~201_combout\) # (!\ADDR[0]~input_o\)))) # (!\DOUT[7]~196_combout\ & (\DOUT[7]~185_combout\ & ((\ADDR[0]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \DOUT[7]~196_combout\,
	datab => \DOUT[7]~185_combout\,
	datac => \DOUT[7]~201_combout\,
	datad => \ADDR[0]~input_o\,
	combout => \DOUT[7]~202_combout\);

-- Location: LCCOMB_X28_Y70_N16
\DOUT[7]$latch\ : cycloneive_lcell_comb
-- Equation(s):
-- \DOUT[7]$latch~combout\ = (\RE~input_o\ & ((GLOBAL(\DOUT[15]~48clkctrl_outclk\) & (\DOUT[7]~202_combout\)) # (!GLOBAL(\DOUT[15]~48clkctrl_outclk\) & ((\DOUT[7]$latch~combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \DOUT[7]~202_combout\,
	datab => \DOUT[7]$latch~combout\,
	datac => \RE~input_o\,
	datad => \DOUT[15]~48clkctrl_outclk\,
	combout => \DOUT[7]$latch~combout\);

-- Location: LCCOMB_X29_Y71_N16
\DOUT[8]~209\ : cycloneive_lcell_comb
-- Equation(s):
-- \DOUT[8]~209_combout\ = (\ADDR[3]~input_o\ & (\ADDR[1]~input_o\ & (\ADDR[4]~input_o\ & \ADDR[2]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ADDR[3]~input_o\,
	datab => \ADDR[1]~input_o\,
	datac => \ADDR[4]~input_o\,
	datad => \ADDR[2]~input_o\,
	combout => \DOUT[8]~209_combout\);

-- Location: LCCOMB_X29_Y71_N30
\DOUT[8]~203\ : cycloneive_lcell_comb
-- Equation(s):
-- \DOUT[8]~203_combout\ = (\ADDR[1]~input_o\ & ((\ADDR[3]~input_o\) # (!\ADDR[2]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ADDR[3]~input_o\,
	datab => \ADDR[1]~input_o\,
	datad => \ADDR[2]~input_o\,
	combout => \DOUT[8]~203_combout\);

-- Location: LCCOMB_X24_Y71_N30
\DOUT[8]~204\ : cycloneive_lcell_comb
-- Equation(s):
-- \DOUT[8]~204_combout\ = (\ADDR[1]~input_o\ & \ADDR[2]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \ADDR[1]~input_o\,
	datad => \ADDR[2]~input_o\,
	combout => \DOUT[8]~204_combout\);

-- Location: LCCOMB_X30_Y71_N2
\DOUT[8]~205\ : cycloneive_lcell_comb
-- Equation(s):
-- \DOUT[8]~205_combout\ = (\DOUT[8]~203_combout\ & (\DOUT[8]~204_combout\)) # (!\DOUT[8]~203_combout\ & ((\DOUT[8]~204_combout\ & (\DOUT[0]~32_combout\)) # (!\DOUT[8]~204_combout\ & ((\DOUT[0]~26_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100111001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \DOUT[8]~203_combout\,
	datab => \DOUT[8]~204_combout\,
	datac => \DOUT[0]~32_combout\,
	datad => \DOUT[0]~26_combout\,
	combout => \DOUT[8]~205_combout\);

-- Location: LCCOMB_X30_Y71_N8
\DOUT[8]~206\ : cycloneive_lcell_comb
-- Equation(s):
-- \DOUT[8]~206_combout\ = (\DOUT[8]~203_combout\ & ((\DOUT[8]~205_combout\ & ((\reg_gen:16:regs|y\(0)))) # (!\DOUT[8]~205_combout\ & (\DOUT[0]~37_combout\)))) # (!\DOUT[8]~203_combout\ & (((\DOUT[8]~205_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \DOUT[8]~203_combout\,
	datab => \DOUT[0]~37_combout\,
	datac => \reg_gen:16:regs|y\(0),
	datad => \DOUT[8]~205_combout\,
	combout => \DOUT[8]~206_combout\);

-- Location: LCCOMB_X24_Y71_N12
\DOUT[8]~207\ : cycloneive_lcell_comb
-- Equation(s):
-- \DOUT[8]~207_combout\ = (\DOUT[8]~203_combout\ & (((\reg_gen:15:regs|y\(0))) # (!\DOUT[8]~204_combout\))) # (!\DOUT[8]~203_combout\ & (\DOUT[8]~204_combout\ & ((\DOUT[0]~40_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110011010100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \DOUT[8]~203_combout\,
	datab => \DOUT[8]~204_combout\,
	datac => \reg_gen:15:regs|y\(0),
	datad => \DOUT[0]~40_combout\,
	combout => \DOUT[8]~207_combout\);

-- Location: LCCOMB_X30_Y71_N18
\DOUT[8]~208\ : cycloneive_lcell_comb
-- Equation(s):
-- \DOUT[8]~208_combout\ = (\DOUT[8]~207_combout\ & ((\DOUT[0]~44_combout\) # ((\DOUT[8]~204_combout\)))) # (!\DOUT[8]~207_combout\ & (((\DOUT[0]~31_combout\ & !\DOUT[8]~204_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \DOUT[0]~44_combout\,
	datab => \DOUT[8]~207_combout\,
	datac => \DOUT[0]~31_combout\,
	datad => \DOUT[8]~204_combout\,
	combout => \DOUT[8]~208_combout\);

-- Location: LCCOMB_X30_Y71_N0
\DOUT[8]~210\ : cycloneive_lcell_comb
-- Equation(s):
-- \DOUT[8]~210_combout\ = (!\DOUT[8]~209_combout\ & ((\ADDR[0]~input_o\ & (\DOUT[8]~206_combout\)) # (!\ADDR[0]~input_o\ & ((\DOUT[8]~208_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000101000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \DOUT[8]~209_combout\,
	datab => \ADDR[0]~input_o\,
	datac => \DOUT[8]~206_combout\,
	datad => \DOUT[8]~208_combout\,
	combout => \DOUT[8]~210_combout\);

-- Location: LCCOMB_X21_Y71_N8
\reg_gen:31:regs|y[0]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \reg_gen:31:regs|y[0]~feeder_combout\ = \DIN[8]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \DIN[8]~input_o\,
	combout => \reg_gen:31:regs|y[0]~feeder_combout\);

-- Location: LCCOMB_X28_Y70_N12
\dec_to_en[31]\ : cycloneive_lcell_comb
-- Equation(s):
-- dec_to_en(31) = (\dec_to_en[31]~24_combout\ & (\ADDR[1]~input_o\ & \ADDR[2]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dec_to_en[31]~24_combout\,
	datab => \ADDR[1]~input_o\,
	datad => \ADDR[2]~input_o\,
	combout => dec_to_en(31));

-- Location: FF_X21_Y71_N9
\reg_gen:31:regs|y[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \reg_gen:31:regs|y[0]~feeder_combout\,
	ena => dec_to_en(31),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \reg_gen:31:regs|y\(0));

-- Location: LCCOMB_X30_Y71_N6
\DOUT[8]~211\ : cycloneive_lcell_comb
-- Equation(s):
-- \DOUT[8]~211_combout\ = (\DOUT[8]~210_combout\) # ((\reg_gen:31:regs|y\(0) & \DOUT[8]~209_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \DOUT[8]~210_combout\,
	datac => \reg_gen:31:regs|y\(0),
	datad => \DOUT[8]~209_combout\,
	combout => \DOUT[8]~211_combout\);

-- Location: LCCOMB_X30_Y71_N14
\DOUT[8]$latch\ : cycloneive_lcell_comb
-- Equation(s):
-- \DOUT[8]$latch~combout\ = (\RE~input_o\ & ((GLOBAL(\DOUT[15]~48clkctrl_outclk\) & (\DOUT[8]~211_combout\)) # (!GLOBAL(\DOUT[15]~48clkctrl_outclk\) & ((\DOUT[8]$latch~combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RE~input_o\,
	datab => \DOUT[8]~211_combout\,
	datac => \DOUT[8]$latch~combout\,
	datad => \DOUT[15]~48clkctrl_outclk\,
	combout => \DOUT[8]$latch~combout\);

-- Location: FF_X21_Y71_N15
\reg_gen:31:regs|y[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	asdata => \DIN[9]~input_o\,
	sload => VCC,
	ena => dec_to_en(31),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \reg_gen:31:regs|y\(1));

-- Location: LCCOMB_X26_Y71_N6
\DOUT[9]~212\ : cycloneive_lcell_comb
-- Equation(s):
-- \DOUT[9]~212_combout\ = (\ADDR[2]~input_o\ & (\DOUT[1]~50_combout\)) # (!\ADDR[2]~input_o\ & ((\DOUT[1]~52_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \ADDR[2]~input_o\,
	datac => \DOUT[1]~50_combout\,
	datad => \DOUT[1]~52_combout\,
	combout => \DOUT[9]~212_combout\);

-- Location: LCCOMB_X26_Y71_N12
\DOUT[9]~213\ : cycloneive_lcell_comb
-- Equation(s):
-- \DOUT[9]~213_combout\ = (\DOUT[8]~203_combout\ & (\DOUT[8]~204_combout\)) # (!\DOUT[8]~203_combout\ & ((\DOUT[8]~204_combout\ & (\DOUT[1]~59_combout\)) # (!\DOUT[8]~204_combout\ & ((\DOUT[9]~212_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100111001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \DOUT[8]~203_combout\,
	datab => \DOUT[8]~204_combout\,
	datac => \DOUT[1]~59_combout\,
	datad => \DOUT[9]~212_combout\,
	combout => \DOUT[9]~213_combout\);

-- Location: LCCOMB_X26_Y71_N22
\DOUT[9]~214\ : cycloneive_lcell_comb
-- Equation(s):
-- \DOUT[9]~214_combout\ = (\DOUT[8]~203_combout\ & ((\DOUT[9]~213_combout\ & (\reg_gen:16:regs|y\(1))) # (!\DOUT[9]~213_combout\ & ((\DOUT[1]~62_combout\))))) # (!\DOUT[8]~203_combout\ & (((\DOUT[9]~213_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \DOUT[8]~203_combout\,
	datab => \reg_gen:16:regs|y\(1),
	datac => \DOUT[1]~62_combout\,
	datad => \DOUT[9]~213_combout\,
	combout => \DOUT[9]~214_combout\);

-- Location: LCCOMB_X26_Y71_N20
\DOUT[9]~215\ : cycloneive_lcell_comb
-- Equation(s):
-- \DOUT[9]~215_combout\ = (\DOUT[8]~203_combout\ & ((\DOUT[8]~204_combout\) # ((\DOUT[1]~67_combout\)))) # (!\DOUT[8]~203_combout\ & (!\DOUT[8]~204_combout\ & (\DOUT[1]~58_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \DOUT[8]~203_combout\,
	datab => \DOUT[8]~204_combout\,
	datac => \DOUT[1]~58_combout\,
	datad => \DOUT[1]~67_combout\,
	combout => \DOUT[9]~215_combout\);

-- Location: LCCOMB_X26_Y71_N2
\DOUT[9]~216\ : cycloneive_lcell_comb
-- Equation(s):
-- \DOUT[9]~216_combout\ = (\DOUT[8]~204_combout\ & ((\DOUT[9]~215_combout\ & ((\reg_gen:15:regs|y\(1)))) # (!\DOUT[9]~215_combout\ & (\DOUT[1]~65_combout\)))) # (!\DOUT[8]~204_combout\ & (((\DOUT[9]~215_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \DOUT[1]~65_combout\,
	datab => \DOUT[8]~204_combout\,
	datac => \reg_gen:15:regs|y\(1),
	datad => \DOUT[9]~215_combout\,
	combout => \DOUT[9]~216_combout\);

-- Location: LCCOMB_X26_Y71_N0
\DOUT[9]~217\ : cycloneive_lcell_comb
-- Equation(s):
-- \DOUT[9]~217_combout\ = (!\DOUT[8]~209_combout\ & ((\ADDR[0]~input_o\ & (\DOUT[9]~214_combout\)) # (!\ADDR[0]~input_o\ & ((\DOUT[9]~216_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000100100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ADDR[0]~input_o\,
	datab => \DOUT[8]~209_combout\,
	datac => \DOUT[9]~214_combout\,
	datad => \DOUT[9]~216_combout\,
	combout => \DOUT[9]~217_combout\);

-- Location: LCCOMB_X26_Y71_N26
\DOUT[9]~218\ : cycloneive_lcell_comb
-- Equation(s):
-- \DOUT[9]~218_combout\ = (\DOUT[9]~217_combout\) # ((\reg_gen:31:regs|y\(1) & \DOUT[8]~209_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100011111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \reg_gen:31:regs|y\(1),
	datab => \DOUT[8]~209_combout\,
	datac => \DOUT[9]~217_combout\,
	combout => \DOUT[9]~218_combout\);

-- Location: LCCOMB_X26_Y71_N14
\DOUT[9]$latch\ : cycloneive_lcell_comb
-- Equation(s):
-- \DOUT[9]$latch~combout\ = (\RE~input_o\ & ((GLOBAL(\DOUT[15]~48clkctrl_outclk\) & (\DOUT[9]~218_combout\)) # (!GLOBAL(\DOUT[15]~48clkctrl_outclk\) & ((\DOUT[9]$latch~combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \DOUT[9]~218_combout\,
	datab => \RE~input_o\,
	datac => \DOUT[9]$latch~combout\,
	datad => \DOUT[15]~48clkctrl_outclk\,
	combout => \DOUT[9]$latch~combout\);

-- Location: FF_X21_Y72_N21
\reg_gen:31:regs|y[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	asdata => \DIN[10]~input_o\,
	sload => VCC,
	ena => dec_to_en(31),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \reg_gen:31:regs|y\(2));

-- Location: LCCOMB_X26_Y72_N18
\DOUT[10]~221\ : cycloneive_lcell_comb
-- Equation(s):
-- \DOUT[10]~221_combout\ = (\DOUT[8]~204_combout\ & (((\DOUT[8]~203_combout\)))) # (!\DOUT[8]~204_combout\ & ((\DOUT[8]~203_combout\ & (\DOUT[2]~89_combout\)) # (!\DOUT[8]~203_combout\ & ((\DOUT[2]~80_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110001111100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \DOUT[2]~89_combout\,
	datab => \DOUT[8]~204_combout\,
	datac => \DOUT[8]~203_combout\,
	datad => \DOUT[2]~80_combout\,
	combout => \DOUT[10]~221_combout\);

-- Location: LCCOMB_X26_Y72_N24
\DOUT[10]~222\ : cycloneive_lcell_comb
-- Equation(s):
-- \DOUT[10]~222_combout\ = (\DOUT[8]~204_combout\ & ((\DOUT[10]~221_combout\ & ((\reg_gen:15:regs|y\(2)))) # (!\DOUT[10]~221_combout\ & (\DOUT[2]~87_combout\)))) # (!\DOUT[8]~204_combout\ & (((\DOUT[10]~221_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \DOUT[2]~87_combout\,
	datab => \DOUT[8]~204_combout\,
	datac => \reg_gen:15:regs|y\(2),
	datad => \DOUT[10]~221_combout\,
	combout => \DOUT[10]~222_combout\);

-- Location: LCCOMB_X30_Y70_N18
\DOUT[10]~219\ : cycloneive_lcell_comb
-- Equation(s):
-- \DOUT[10]~219_combout\ = (\DOUT[8]~204_combout\ & ((\DOUT[8]~203_combout\ & (\reg_gen:16:regs|y\(2))) # (!\DOUT[8]~203_combout\ & ((\DOUT[2]~81_combout\))))) # (!\DOUT[8]~204_combout\ & (\DOUT[8]~203_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110011011000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \DOUT[8]~204_combout\,
	datab => \DOUT[8]~203_combout\,
	datac => \reg_gen:16:regs|y\(2),
	datad => \DOUT[2]~81_combout\,
	combout => \DOUT[10]~219_combout\);

-- Location: LCCOMB_X26_Y72_N16
\DOUT[10]~220\ : cycloneive_lcell_comb
-- Equation(s):
-- \DOUT[10]~220_combout\ = (\DOUT[8]~204_combout\ & (((\DOUT[10]~219_combout\)))) # (!\DOUT[8]~204_combout\ & ((\DOUT[10]~219_combout\ & ((\DOUT[2]~84_combout\))) # (!\DOUT[10]~219_combout\ & (\DOUT[2]~75_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001011000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \DOUT[2]~75_combout\,
	datab => \DOUT[8]~204_combout\,
	datac => \DOUT[10]~219_combout\,
	datad => \DOUT[2]~84_combout\,
	combout => \DOUT[10]~220_combout\);

-- Location: LCCOMB_X26_Y72_N12
\DOUT[10]~223\ : cycloneive_lcell_comb
-- Equation(s):
-- \DOUT[10]~223_combout\ = (!\DOUT[8]~209_combout\ & ((\ADDR[0]~input_o\ & ((\DOUT[10]~220_combout\))) # (!\ADDR[0]~input_o\ & (\DOUT[10]~222_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111000000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \DOUT[10]~222_combout\,
	datab => \ADDR[0]~input_o\,
	datac => \DOUT[8]~209_combout\,
	datad => \DOUT[10]~220_combout\,
	combout => \DOUT[10]~223_combout\);

-- Location: LCCOMB_X26_Y72_N2
\DOUT[10]~224\ : cycloneive_lcell_comb
-- Equation(s):
-- \DOUT[10]~224_combout\ = (\DOUT[10]~223_combout\) # ((\reg_gen:31:regs|y\(2) & \DOUT[8]~209_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \reg_gen:31:regs|y\(2),
	datac => \DOUT[8]~209_combout\,
	datad => \DOUT[10]~223_combout\,
	combout => \DOUT[10]~224_combout\);

-- Location: LCCOMB_X26_Y72_N26
\DOUT[10]$latch\ : cycloneive_lcell_comb
-- Equation(s):
-- \DOUT[10]$latch~combout\ = (\RE~input_o\ & ((GLOBAL(\DOUT[15]~48clkctrl_outclk\) & (\DOUT[10]~224_combout\)) # (!GLOBAL(\DOUT[15]~48clkctrl_outclk\) & ((\DOUT[10]$latch~combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RE~input_o\,
	datab => \DOUT[10]~224_combout\,
	datac => \DOUT[10]$latch~combout\,
	datad => \DOUT[15]~48clkctrl_outclk\,
	combout => \DOUT[10]$latch~combout\);

-- Location: LCCOMB_X30_Y70_N20
\DOUT[11]~225\ : cycloneive_lcell_comb
-- Equation(s):
-- \DOUT[11]~225_combout\ = (\DOUT[8]~204_combout\ & ((\DOUT[8]~203_combout\ & (\reg_gen:16:regs|y\(3))) # (!\DOUT[8]~203_combout\ & ((\DOUT[3]~103_combout\))))) # (!\DOUT[8]~204_combout\ & (\DOUT[8]~203_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110011011000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \DOUT[8]~204_combout\,
	datab => \DOUT[8]~203_combout\,
	datac => \reg_gen:16:regs|y\(3),
	datad => \DOUT[3]~103_combout\,
	combout => \DOUT[11]~225_combout\);

-- Location: LCCOMB_X25_Y70_N26
\DOUT[11]~226\ : cycloneive_lcell_comb
-- Equation(s):
-- \DOUT[11]~226_combout\ = (\DOUT[8]~204_combout\ & (((\DOUT[11]~225_combout\)))) # (!\DOUT[8]~204_combout\ & ((\DOUT[11]~225_combout\ & (\DOUT[3]~106_combout\)) # (!\DOUT[11]~225_combout\ & ((\DOUT[3]~97_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010111100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \DOUT[8]~204_combout\,
	datab => \DOUT[3]~106_combout\,
	datac => \DOUT[11]~225_combout\,
	datad => \DOUT[3]~97_combout\,
	combout => \DOUT[11]~226_combout\);

-- Location: LCCOMB_X25_Y70_N12
\DOUT[11]~227\ : cycloneive_lcell_comb
-- Equation(s):
-- \DOUT[11]~227_combout\ = (\DOUT[8]~204_combout\ & (\DOUT[8]~203_combout\)) # (!\DOUT[8]~204_combout\ & ((\DOUT[8]~203_combout\ & (\DOUT[3]~111_combout\)) # (!\DOUT[8]~203_combout\ & ((\DOUT[3]~102_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100111001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \DOUT[8]~204_combout\,
	datab => \DOUT[8]~203_combout\,
	datac => \DOUT[3]~111_combout\,
	datad => \DOUT[3]~102_combout\,
	combout => \DOUT[11]~227_combout\);

-- Location: LCCOMB_X25_Y70_N6
\DOUT[11]~228\ : cycloneive_lcell_comb
-- Equation(s):
-- \DOUT[11]~228_combout\ = (\DOUT[8]~204_combout\ & ((\DOUT[11]~227_combout\ & ((\reg_gen:15:regs|y\(3)))) # (!\DOUT[11]~227_combout\ & (\DOUT[3]~109_combout\)))) # (!\DOUT[8]~204_combout\ & (((\DOUT[11]~227_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \DOUT[8]~204_combout\,
	datab => \DOUT[3]~109_combout\,
	datac => \reg_gen:15:regs|y\(3),
	datad => \DOUT[11]~227_combout\,
	combout => \DOUT[11]~228_combout\);

-- Location: LCCOMB_X25_Y70_N28
\DOUT[11]~229\ : cycloneive_lcell_comb
-- Equation(s):
-- \DOUT[11]~229_combout\ = (!\DOUT[8]~209_combout\ & ((\ADDR[0]~input_o\ & (\DOUT[11]~226_combout\)) # (!\ADDR[0]~input_o\ & ((\DOUT[11]~228_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000100100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ADDR[0]~input_o\,
	datab => \DOUT[8]~209_combout\,
	datac => \DOUT[11]~226_combout\,
	datad => \DOUT[11]~228_combout\,
	combout => \DOUT[11]~229_combout\);

-- Location: FF_X24_Y70_N15
\reg_gen:31:regs|y[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	asdata => \DIN[11]~input_o\,
	sload => VCC,
	ena => dec_to_en(31),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \reg_gen:31:regs|y\(3));

-- Location: LCCOMB_X25_Y70_N30
\DOUT[11]~230\ : cycloneive_lcell_comb
-- Equation(s):
-- \DOUT[11]~230_combout\ = (\DOUT[11]~229_combout\) # ((\reg_gen:31:regs|y\(3) & \DOUT[8]~209_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \DOUT[11]~229_combout\,
	datac => \reg_gen:31:regs|y\(3),
	datad => \DOUT[8]~209_combout\,
	combout => \DOUT[11]~230_combout\);

-- Location: LCCOMB_X25_Y70_N18
\DOUT[11]$latch\ : cycloneive_lcell_comb
-- Equation(s):
-- \DOUT[11]$latch~combout\ = (\RE~input_o\ & ((GLOBAL(\DOUT[15]~48clkctrl_outclk\) & ((\DOUT[11]~230_combout\))) # (!GLOBAL(\DOUT[15]~48clkctrl_outclk\) & (\DOUT[11]$latch~combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RE~input_o\,
	datab => \DOUT[11]$latch~combout\,
	datac => \DOUT[11]~230_combout\,
	datad => \DOUT[15]~48clkctrl_outclk\,
	combout => \DOUT[11]$latch~combout\);

-- Location: LCCOMB_X21_Y72_N14
\reg_gen:31:regs|y[4]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \reg_gen:31:regs|y[4]~feeder_combout\ = \DIN[12]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \DIN[12]~input_o\,
	combout => \reg_gen:31:regs|y[4]~feeder_combout\);

-- Location: FF_X21_Y72_N15
\reg_gen:31:regs|y[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \reg_gen:31:regs|y[4]~feeder_combout\,
	ena => dec_to_en(31),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \reg_gen:31:regs|y\(4));

-- Location: LCCOMB_X28_Y72_N6
\DOUT[12]~234\ : cycloneive_lcell_comb
-- Equation(s):
-- \DOUT[12]~234_combout\ = (\DOUT[8]~204_combout\ & ((\DOUT[8]~203_combout\ & (\reg_gen:15:regs|y\(4))) # (!\DOUT[8]~203_combout\ & ((\DOUT[4]~131_combout\))))) # (!\DOUT[8]~204_combout\ & (\DOUT[8]~203_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110011011000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \DOUT[8]~204_combout\,
	datab => \DOUT[8]~203_combout\,
	datac => \reg_gen:15:regs|y\(4),
	datad => \DOUT[4]~131_combout\,
	combout => \DOUT[12]~234_combout\);

-- Location: LCCOMB_X28_Y72_N4
\DOUT[12]~235\ : cycloneive_lcell_comb
-- Equation(s):
-- \DOUT[12]~235_combout\ = (!\DOUT[8]~209_combout\ & ((\DOUT[12]~234_combout\ & ((\DOUT[8]~204_combout\) # (\DOUT[4]~133_combout\))) # (!\DOUT[12]~234_combout\ & (!\DOUT[8]~204_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010111001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \DOUT[12]~234_combout\,
	datab => \DOUT[8]~204_combout\,
	datac => \DOUT[4]~133_combout\,
	datad => \DOUT[8]~209_combout\,
	combout => \DOUT[12]~235_combout\);

-- Location: LCCOMB_X28_Y72_N26
\DOUT[12]~257\ : cycloneive_lcell_comb
-- Equation(s):
-- \DOUT[12]~257_combout\ = (\ADDR[1]~input_o\) # ((\ADDR[2]~input_o\ & ((\DOUT[4]~121_combout\))) # (!\ADDR[2]~input_o\ & (\DOUT[4]~123_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111011011100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ADDR[2]~input_o\,
	datab => \ADDR[1]~input_o\,
	datac => \DOUT[4]~123_combout\,
	datad => \DOUT[4]~121_combout\,
	combout => \DOUT[12]~257_combout\);

-- Location: LCCOMB_X29_Y70_N12
\DOUT[12]~231\ : cycloneive_lcell_comb
-- Equation(s):
-- \DOUT[12]~231_combout\ = (\DOUT[8]~203_combout\ & (\reg_gen:16:regs|y\(4))) # (!\DOUT[8]~203_combout\ & ((\DOUT[4]~125_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \reg_gen:16:regs|y\(4),
	datac => \DOUT[8]~203_combout\,
	datad => \DOUT[4]~125_combout\,
	combout => \DOUT[12]~231_combout\);

-- Location: LCCOMB_X28_Y72_N12
\DOUT[12]~232\ : cycloneive_lcell_comb
-- Equation(s):
-- \DOUT[12]~232_combout\ = (\DOUT[8]~203_combout\ & (\DOUT[4]~128_combout\)) # (!\DOUT[8]~203_combout\ & ((\DOUT[4]~119_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \DOUT[8]~203_combout\,
	datac => \DOUT[4]~128_combout\,
	datad => \DOUT[4]~119_combout\,
	combout => \DOUT[12]~232_combout\);

-- Location: LCCOMB_X28_Y72_N18
\DOUT[12]~233\ : cycloneive_lcell_comb
-- Equation(s):
-- \DOUT[12]~233_combout\ = (!\DOUT[8]~209_combout\ & ((\DOUT[8]~204_combout\ & (\DOUT[12]~231_combout\)) # (!\DOUT[8]~204_combout\ & ((\DOUT[12]~232_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000101000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \DOUT[8]~209_combout\,
	datab => \DOUT[8]~204_combout\,
	datac => \DOUT[12]~231_combout\,
	datad => \DOUT[12]~232_combout\,
	combout => \DOUT[12]~233_combout\);

-- Location: LCCOMB_X28_Y72_N30
\DOUT[12]~236\ : cycloneive_lcell_comb
-- Equation(s):
-- \DOUT[12]~236_combout\ = (\ADDR[0]~input_o\ & (((\DOUT[12]~233_combout\)))) # (!\ADDR[0]~input_o\ & (\DOUT[12]~235_combout\ & (\DOUT[12]~257_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ADDR[0]~input_o\,
	datab => \DOUT[12]~235_combout\,
	datac => \DOUT[12]~257_combout\,
	datad => \DOUT[12]~233_combout\,
	combout => \DOUT[12]~236_combout\);

-- Location: LCCOMB_X28_Y72_N0
\DOUT[12]~237\ : cycloneive_lcell_comb
-- Equation(s):
-- \DOUT[12]~237_combout\ = (\DOUT[12]~236_combout\) # ((\reg_gen:31:regs|y\(4) & \DOUT[8]~209_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \reg_gen:31:regs|y\(4),
	datac => \DOUT[12]~236_combout\,
	datad => \DOUT[8]~209_combout\,
	combout => \DOUT[12]~237_combout\);

-- Location: LCCOMB_X28_Y72_N14
\DOUT[12]$latch\ : cycloneive_lcell_comb
-- Equation(s):
-- \DOUT[12]$latch~combout\ = (\RE~input_o\ & ((GLOBAL(\DOUT[15]~48clkctrl_outclk\) & (\DOUT[12]~237_combout\)) # (!GLOBAL(\DOUT[15]~48clkctrl_outclk\) & ((\DOUT[12]$latch~combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \DOUT[12]~237_combout\,
	datab => \RE~input_o\,
	datac => \DOUT[12]$latch~combout\,
	datad => \DOUT[15]~48clkctrl_outclk\,
	combout => \DOUT[12]$latch~combout\);

-- Location: FF_X21_Y71_N5
\reg_gen:31:regs|y[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	asdata => \DIN[13]~input_o\,
	sload => VCC,
	ena => dec_to_en(31),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \reg_gen:31:regs|y\(5));

-- Location: LCCOMB_X29_Y71_N10
\DOUT[13]~238\ : cycloneive_lcell_comb
-- Equation(s):
-- \DOUT[13]~238_combout\ = (\DOUT[8]~203_combout\ & (\reg_gen:16:regs|y\(5) & ((\DOUT[8]~204_combout\)))) # (!\DOUT[8]~203_combout\ & (((\DOUT[5]~147_combout\) # (!\DOUT[8]~204_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100001010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \DOUT[8]~203_combout\,
	datab => \reg_gen:16:regs|y\(5),
	datac => \DOUT[5]~147_combout\,
	datad => \DOUT[8]~204_combout\,
	combout => \DOUT[13]~238_combout\);

-- Location: LCCOMB_X25_Y71_N14
\DOUT[13]~239\ : cycloneive_lcell_comb
-- Equation(s):
-- \DOUT[13]~239_combout\ = (\DOUT[8]~204_combout\ & (((\DOUT[13]~238_combout\)))) # (!\DOUT[8]~204_combout\ & ((\DOUT[13]~238_combout\ & ((\DOUT[5]~146_combout\))) # (!\DOUT[13]~238_combout\ & (\DOUT[5]~150_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \DOUT[5]~150_combout\,
	datab => \DOUT[8]~204_combout\,
	datac => \DOUT[5]~146_combout\,
	datad => \DOUT[13]~238_combout\,
	combout => \DOUT[13]~239_combout\);

-- Location: LCCOMB_X25_Y71_N20
\DOUT[13]~240\ : cycloneive_lcell_comb
-- Equation(s):
-- \DOUT[13]~240_combout\ = (\DOUT[8]~203_combout\ & ((\DOUT[8]~204_combout\) # ((\DOUT[5]~155_combout\)))) # (!\DOUT[8]~203_combout\ & (!\DOUT[8]~204_combout\ & ((\DOUT[5]~141_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100110101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \DOUT[8]~203_combout\,
	datab => \DOUT[8]~204_combout\,
	datac => \DOUT[5]~155_combout\,
	datad => \DOUT[5]~141_combout\,
	combout => \DOUT[13]~240_combout\);

-- Location: LCCOMB_X25_Y71_N10
\DOUT[13]~241\ : cycloneive_lcell_comb
-- Equation(s):
-- \DOUT[13]~241_combout\ = (\DOUT[8]~204_combout\ & ((\DOUT[13]~240_combout\ & (\reg_gen:15:regs|y\(5))) # (!\DOUT[13]~240_combout\ & ((\DOUT[5]~153_combout\))))) # (!\DOUT[8]~204_combout\ & (((\DOUT[13]~240_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \reg_gen:15:regs|y\(5),
	datab => \DOUT[8]~204_combout\,
	datac => \DOUT[5]~153_combout\,
	datad => \DOUT[13]~240_combout\,
	combout => \DOUT[13]~241_combout\);

-- Location: LCCOMB_X25_Y71_N4
\DOUT[13]~242\ : cycloneive_lcell_comb
-- Equation(s):
-- \DOUT[13]~242_combout\ = (!\DOUT[8]~209_combout\ & ((\ADDR[0]~input_o\ & (\DOUT[13]~239_combout\)) # (!\ADDR[0]~input_o\ & ((\DOUT[13]~241_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000100100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ADDR[0]~input_o\,
	datab => \DOUT[8]~209_combout\,
	datac => \DOUT[13]~239_combout\,
	datad => \DOUT[13]~241_combout\,
	combout => \DOUT[13]~242_combout\);

-- Location: LCCOMB_X25_Y71_N6
\DOUT[13]~243\ : cycloneive_lcell_comb
-- Equation(s):
-- \DOUT[13]~243_combout\ = (\DOUT[13]~242_combout\) # ((\reg_gen:31:regs|y\(5) & \DOUT[8]~209_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \reg_gen:31:regs|y\(5),
	datac => \DOUT[13]~242_combout\,
	datad => \DOUT[8]~209_combout\,
	combout => \DOUT[13]~243_combout\);

-- Location: LCCOMB_X25_Y71_N18
\DOUT[13]$latch\ : cycloneive_lcell_comb
-- Equation(s):
-- \DOUT[13]$latch~combout\ = (\RE~input_o\ & ((GLOBAL(\DOUT[15]~48clkctrl_outclk\) & ((\DOUT[13]~243_combout\))) # (!GLOBAL(\DOUT[15]~48clkctrl_outclk\) & (\DOUT[13]$latch~combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RE~input_o\,
	datab => \DOUT[13]$latch~combout\,
	datac => \DOUT[13]~243_combout\,
	datad => \DOUT[15]~48clkctrl_outclk\,
	combout => \DOUT[13]$latch~combout\);

-- Location: FF_X27_Y72_N5
\reg_gen:31:regs|y[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	asdata => \DIN[14]~input_o\,
	sload => VCC,
	ena => dec_to_en(31),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \reg_gen:31:regs|y\(6));

-- Location: LCCOMB_X27_Y72_N28
\DOUT[14]~246\ : cycloneive_lcell_comb
-- Equation(s):
-- \DOUT[14]~246_combout\ = (\DOUT[8]~203_combout\ & ((\DOUT[8]~204_combout\) # ((\DOUT[6]~177_combout\)))) # (!\DOUT[8]~203_combout\ & (!\DOUT[8]~204_combout\ & ((\DOUT[6]~168_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100110101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \DOUT[8]~203_combout\,
	datab => \DOUT[8]~204_combout\,
	datac => \DOUT[6]~177_combout\,
	datad => \DOUT[6]~168_combout\,
	combout => \DOUT[14]~246_combout\);

-- Location: LCCOMB_X27_Y72_N24
\DOUT[14]~247\ : cycloneive_lcell_comb
-- Equation(s):
-- \DOUT[14]~247_combout\ = (\DOUT[8]~204_combout\ & ((\DOUT[14]~246_combout\ & ((\reg_gen:15:regs|y\(6)))) # (!\DOUT[14]~246_combout\ & (\DOUT[6]~175_combout\)))) # (!\DOUT[8]~204_combout\ & (((\DOUT[14]~246_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \DOUT[6]~175_combout\,
	datab => \DOUT[8]~204_combout\,
	datac => \reg_gen:15:regs|y\(6),
	datad => \DOUT[14]~246_combout\,
	combout => \DOUT[14]~247_combout\);

-- Location: LCCOMB_X27_Y72_N16
\DOUT[14]~244\ : cycloneive_lcell_comb
-- Equation(s):
-- \DOUT[14]~244_combout\ = (\DOUT[8]~203_combout\ & (\DOUT[8]~204_combout\)) # (!\DOUT[8]~203_combout\ & ((\DOUT[8]~204_combout\ & (\DOUT[6]~169_combout\)) # (!\DOUT[8]~204_combout\ & ((\DOUT[6]~163_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100111001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \DOUT[8]~203_combout\,
	datab => \DOUT[8]~204_combout\,
	datac => \DOUT[6]~169_combout\,
	datad => \DOUT[6]~163_combout\,
	combout => \DOUT[14]~244_combout\);

-- Location: LCCOMB_X27_Y72_N6
\DOUT[14]~245\ : cycloneive_lcell_comb
-- Equation(s):
-- \DOUT[14]~245_combout\ = (\DOUT[8]~203_combout\ & ((\DOUT[14]~244_combout\ & (\reg_gen:16:regs|y\(6))) # (!\DOUT[14]~244_combout\ & ((\DOUT[6]~172_combout\))))) # (!\DOUT[8]~203_combout\ & (((\DOUT[14]~244_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \DOUT[8]~203_combout\,
	datab => \reg_gen:16:regs|y\(6),
	datac => \DOUT[6]~172_combout\,
	datad => \DOUT[14]~244_combout\,
	combout => \DOUT[14]~245_combout\);

-- Location: LCCOMB_X27_Y72_N14
\DOUT[14]~248\ : cycloneive_lcell_comb
-- Equation(s):
-- \DOUT[14]~248_combout\ = (!\DOUT[8]~209_combout\ & ((\ADDR[0]~input_o\ & ((\DOUT[14]~245_combout\))) # (!\ADDR[0]~input_o\ & (\DOUT[14]~247_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111000000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ADDR[0]~input_o\,
	datab => \DOUT[14]~247_combout\,
	datac => \DOUT[8]~209_combout\,
	datad => \DOUT[14]~245_combout\,
	combout => \DOUT[14]~248_combout\);

-- Location: LCCOMB_X27_Y72_N30
\DOUT[14]~249\ : cycloneive_lcell_comb
-- Equation(s):
-- \DOUT[14]~249_combout\ = (\DOUT[14]~248_combout\) # ((\reg_gen:31:regs|y\(6) & \DOUT[8]~209_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \reg_gen:31:regs|y\(6),
	datac => \DOUT[8]~209_combout\,
	datad => \DOUT[14]~248_combout\,
	combout => \DOUT[14]~249_combout\);

-- Location: LCCOMB_X27_Y72_N22
\DOUT[14]$latch\ : cycloneive_lcell_comb
-- Equation(s):
-- \DOUT[14]$latch~combout\ = (\RE~input_o\ & ((GLOBAL(\DOUT[15]~48clkctrl_outclk\) & ((\DOUT[14]~249_combout\))) # (!GLOBAL(\DOUT[15]~48clkctrl_outclk\) & (\DOUT[14]$latch~combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \DOUT[14]$latch~combout\,
	datab => \RE~input_o\,
	datac => \DOUT[14]~249_combout\,
	datad => \DOUT[15]~48clkctrl_outclk\,
	combout => \DOUT[14]$latch~combout\);

-- Location: FF_X28_Y70_N13
\reg_gen:31:regs|y[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	asdata => \DIN[15]~input_o\,
	sload => VCC,
	ena => dec_to_en(31),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \reg_gen:31:regs|y\(7));

-- Location: LCCOMB_X28_Y70_N20
\DOUT[15]~250\ : cycloneive_lcell_comb
-- Equation(s):
-- \DOUT[15]~250_combout\ = (\ADDR[2]~input_o\ & (\DOUT[7]~187_combout\)) # (!\ADDR[2]~input_o\ & ((\DOUT[7]~189_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \ADDR[2]~input_o\,
	datac => \DOUT[7]~187_combout\,
	datad => \DOUT[7]~189_combout\,
	combout => \DOUT[15]~250_combout\);

-- Location: LCCOMB_X28_Y70_N6
\DOUT[15]~251\ : cycloneive_lcell_comb
-- Equation(s):
-- \DOUT[15]~251_combout\ = (\DOUT[8]~203_combout\ & (((\DOUT[8]~204_combout\)))) # (!\DOUT[8]~203_combout\ & ((\DOUT[8]~204_combout\ & (\DOUT[7]~191_combout\)) # (!\DOUT[8]~204_combout\ & ((\DOUT[15]~250_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110001111100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \DOUT[7]~191_combout\,
	datab => \DOUT[8]~203_combout\,
	datac => \DOUT[8]~204_combout\,
	datad => \DOUT[15]~250_combout\,
	combout => \DOUT[15]~251_combout\);

-- Location: LCCOMB_X28_Y70_N8
\DOUT[15]~252\ : cycloneive_lcell_comb
-- Equation(s):
-- \DOUT[15]~252_combout\ = (\DOUT[8]~203_combout\ & ((\DOUT[15]~251_combout\ & (\reg_gen:16:regs|y\(7))) # (!\DOUT[15]~251_combout\ & ((\DOUT[7]~194_combout\))))) # (!\DOUT[8]~203_combout\ & (((\DOUT[15]~251_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \reg_gen:16:regs|y\(7),
	datab => \DOUT[8]~203_combout\,
	datac => \DOUT[7]~194_combout\,
	datad => \DOUT[15]~251_combout\,
	combout => \DOUT[15]~252_combout\);

-- Location: LCCOMB_X28_Y70_N2
\DOUT[15]~253\ : cycloneive_lcell_comb
-- Equation(s):
-- \DOUT[15]~253_combout\ = (\DOUT[8]~204_combout\ & (\DOUT[8]~203_combout\)) # (!\DOUT[8]~204_combout\ & ((\DOUT[8]~203_combout\ & (\DOUT[7]~199_combout\)) # (!\DOUT[8]~203_combout\ & ((\DOUT[7]~185_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100111001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \DOUT[8]~204_combout\,
	datab => \DOUT[8]~203_combout\,
	datac => \DOUT[7]~199_combout\,
	datad => \DOUT[7]~185_combout\,
	combout => \DOUT[15]~253_combout\);

-- Location: LCCOMB_X28_Y70_N24
\DOUT[15]~254\ : cycloneive_lcell_comb
-- Equation(s):
-- \DOUT[15]~254_combout\ = (\DOUT[8]~204_combout\ & ((\DOUT[15]~253_combout\ & (\reg_gen:15:regs|y\(7))) # (!\DOUT[15]~253_combout\ & ((\DOUT[7]~197_combout\))))) # (!\DOUT[8]~204_combout\ & (((\DOUT[15]~253_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \reg_gen:15:regs|y\(7),
	datab => \DOUT[7]~197_combout\,
	datac => \DOUT[8]~204_combout\,
	datad => \DOUT[15]~253_combout\,
	combout => \DOUT[15]~254_combout\);

-- Location: LCCOMB_X28_Y70_N10
\DOUT[15]~255\ : cycloneive_lcell_comb
-- Equation(s):
-- \DOUT[15]~255_combout\ = (!\DOUT[8]~209_combout\ & ((\ADDR[0]~input_o\ & (\DOUT[15]~252_combout\)) # (!\ADDR[0]~input_o\ & ((\DOUT[15]~254_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000101000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \DOUT[8]~209_combout\,
	datab => \ADDR[0]~input_o\,
	datac => \DOUT[15]~252_combout\,
	datad => \DOUT[15]~254_combout\,
	combout => \DOUT[15]~255_combout\);

-- Location: LCCOMB_X28_Y70_N30
\DOUT[15]~256\ : cycloneive_lcell_comb
-- Equation(s):
-- \DOUT[15]~256_combout\ = (\DOUT[15]~255_combout\) # ((\reg_gen:31:regs|y\(7) & \DOUT[8]~209_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \reg_gen:31:regs|y\(7),
	datab => \DOUT[15]~255_combout\,
	datad => \DOUT[8]~209_combout\,
	combout => \DOUT[15]~256_combout\);

-- Location: LCCOMB_X28_Y70_N14
\DOUT[15]$latch\ : cycloneive_lcell_comb
-- Equation(s):
-- \DOUT[15]$latch~combout\ = (\RE~input_o\ & ((GLOBAL(\DOUT[15]~48clkctrl_outclk\) & (\DOUT[15]~256_combout\)) # (!GLOBAL(\DOUT[15]~48clkctrl_outclk\) & ((\DOUT[15]$latch~combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RE~input_o\,
	datab => \DOUT[15]~256_combout\,
	datac => \DOUT[15]$latch~combout\,
	datad => \DOUT[15]~48clkctrl_outclk\,
	combout => \DOUT[15]$latch~combout\);

-- Location: IOIBUF_X1_Y0_N15
\ADDR[5]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_ADDR(5),
	o => \ADDR[5]~input_o\);

-- Location: IOIBUF_X49_Y0_N22
\ADDR[6]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_ADDR(6),
	o => \ADDR[6]~input_o\);

-- Location: IOIBUF_X54_Y0_N15
\ADDR[7]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_ADDR(7),
	o => \ADDR[7]~input_o\);

-- Location: IOIBUF_X1_Y73_N8
\ADDR[8]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_ADDR(8),
	o => \ADDR[8]~input_o\);

-- Location: IOIBUF_X0_Y43_N15
\ADDR[9]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_ADDR(9),
	o => \ADDR[9]~input_o\);

-- Location: IOIBUF_X74_Y73_N22
\ADDR[10]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_ADDR(10),
	o => \ADDR[10]~input_o\);

-- Location: IOIBUF_X0_Y35_N15
\ADDR[11]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_ADDR(11),
	o => \ADDR[11]~input_o\);

-- Location: IOIBUF_X83_Y0_N1
\ADDR[12]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_ADDR(12),
	o => \ADDR[12]~input_o\);

-- Location: IOIBUF_X42_Y73_N8
\ADDR[13]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_ADDR(13),
	o => \ADDR[13]~input_o\);

-- Location: IOIBUF_X115_Y60_N15
\ADDR[14]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_ADDR(14),
	o => \ADDR[14]~input_o\);

-- Location: IOIBUF_X69_Y73_N15
\ADDR[15]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_ADDR(15),
	o => \ADDR[15]~input_o\);

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


