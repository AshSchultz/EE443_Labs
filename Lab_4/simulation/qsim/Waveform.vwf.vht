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

-- *****************************************************************************
-- This file contains a Vhdl test bench with test vectors .The test vectors     
-- are exported from a vector file in the Quartus Waveform Editor and apply to  
-- the top level entity of the current Quartus project .The user can use this   
-- testbench to simulate his design using a third-party simulation tool .       
-- *****************************************************************************
-- Generated on "02/24/2026 11:54:25"
                                                             
-- Vhdl Test Bench(with test vectors) for design  :          REG8X16
-- 
-- Simulation tool : 3rd Party
-- 

LIBRARY ieee;                                               
USE ieee.std_logic_1164.all;                                

ENTITY REG8X16_vhd_vec_tst IS
END REG8X16_vhd_vec_tst;
ARCHITECTURE REG8X16_arch OF REG8X16_vhd_vec_tst IS
-- constants                                                 
-- signals                                                   
SIGNAL ADD_R1 : STD_LOGIC_VECTOR(2 DOWNTO 0);
SIGNAL ADD_R2 : STD_LOGIC_VECTOR(2 DOWNTO 0);
SIGNAL ADD_W : STD_LOGIC_VECTOR(2 DOWNTO 0);
SIGNAL CLK : STD_LOGIC;
SIGNAL DIN : STD_LOGIC_VECTOR(15 DOWNTO 0);
SIGNAL DOUT1 : STD_LOGIC_VECTOR(15 DOWNTO 0);
SIGNAL DOUT2 : STD_LOGIC_VECTOR(15 DOWNTO 0);
SIGNAL WE : STD_LOGIC;
COMPONENT REG8X16
	PORT (
	ADD_R1 : IN STD_LOGIC_VECTOR(2 DOWNTO 0);
	ADD_R2 : IN STD_LOGIC_VECTOR(2 DOWNTO 0);
	ADD_W : IN STD_LOGIC_VECTOR(2 DOWNTO 0);
	CLK : IN STD_LOGIC;
	DIN : IN STD_LOGIC_VECTOR(15 DOWNTO 0);
	DOUT1 : OUT STD_LOGIC_VECTOR(15 DOWNTO 0);
	DOUT2 : OUT STD_LOGIC_VECTOR(15 DOWNTO 0);
	WE : IN STD_LOGIC
	);
END COMPONENT;
BEGIN
	i1 : REG8X16
	PORT MAP (
-- list connections between master ports and signals
	ADD_R1 => ADD_R1,
	ADD_R2 => ADD_R2,
	ADD_W => ADD_W,
	CLK => CLK,
	DIN => DIN,
	DOUT1 => DOUT1,
	DOUT2 => DOUT2,
	WE => WE
	);
-- ADD_R1[2]
t_prcs_ADD_R1_2: PROCESS
BEGIN
	ADD_R1(2) <= '1';
	WAIT FOR 300000 ps;
	ADD_R1(2) <= '0';
	WAIT FOR 450000 ps;
	ADD_R1(2) <= '1';
WAIT;
END PROCESS t_prcs_ADD_R1_2;
-- ADD_R1[1]
t_prcs_ADD_R1_1: PROCESS
BEGIN
	ADD_R1(1) <= '1';
	WAIT FOR 300000 ps;
	ADD_R1(1) <= '0';
	WAIT FOR 300000 ps;
	ADD_R1(1) <= '1';
	WAIT FOR 150000 ps;
	ADD_R1(1) <= '0';
WAIT;
END PROCESS t_prcs_ADD_R1_1;
-- ADD_R1[0]
t_prcs_ADD_R1_0: PROCESS
BEGIN
	ADD_R1(0) <= '1';
	WAIT FOR 600000 ps;
	ADD_R1(0) <= '0';
	WAIT FOR 150000 ps;
	ADD_R1(0) <= '1';
	WAIT FOR 150000 ps;
	ADD_R1(0) <= '0';
WAIT;
END PROCESS t_prcs_ADD_R1_0;
-- ADD_R2[2]
t_prcs_ADD_R2_2: PROCESS
BEGIN
	ADD_R2(2) <= '0';
	WAIT FOR 150000 ps;
	ADD_R2(2) <= '1';
	WAIT FOR 150000 ps;
	ADD_R2(2) <= '0';
	WAIT FOR 300000 ps;
	ADD_R2(2) <= '1';
	WAIT FOR 150000 ps;
	ADD_R2(2) <= '0';
WAIT;
END PROCESS t_prcs_ADD_R2_2;
-- ADD_R2[1]
t_prcs_ADD_R2_1: PROCESS
BEGIN
	ADD_R2(1) <= '0';
	WAIT FOR 150000 ps;
	ADD_R2(1) <= '1';
	WAIT FOR 450000 ps;
	ADD_R2(1) <= '0';
	WAIT FOR 300000 ps;
	ADD_R2(1) <= '1';
WAIT;
END PROCESS t_prcs_ADD_R2_1;
-- ADD_R2[0]
t_prcs_ADD_R2_0: PROCESS
BEGIN
	ADD_R2(0) <= '1';
	WAIT FOR 150000 ps;
	ADD_R2(0) <= '0';
	WAIT FOR 150000 ps;
	ADD_R2(0) <= '1';
	WAIT FOR 150000 ps;
	ADD_R2(0) <= '0';
	WAIT FOR 300000 ps;
	ADD_R2(0) <= '1';
WAIT;
END PROCESS t_prcs_ADD_R2_0;
-- ADD_W[2]
t_prcs_ADD_W_2: PROCESS
BEGIN
	ADD_W(2) <= '1';
	WAIT FOR 60000 ps;
	ADD_W(2) <= '0';
WAIT;
END PROCESS t_prcs_ADD_W_2;
-- ADD_W[1]
t_prcs_ADD_W_1: PROCESS
BEGIN
	ADD_W(1) <= '1';
	WAIT FOR 60000 ps;
	ADD_W(1) <= '0';
WAIT;
END PROCESS t_prcs_ADD_W_1;
-- ADD_W[0]
t_prcs_ADD_W_0: PROCESS
BEGIN
	ADD_W(0) <= '0';
WAIT;
END PROCESS t_prcs_ADD_W_0;

-- CLK
t_prcs_CLK: PROCESS
BEGIN
LOOP
	CLK <= '0';
	WAIT FOR 20000 ps;
	CLK <= '1';
	WAIT FOR 20000 ps;
	IF (NOW >= 1000000 ps) THEN WAIT; END IF;
END LOOP;
END PROCESS t_prcs_CLK;
-- DIN[15]
t_prcs_DIN_15: PROCESS
BEGIN
	DIN(15) <= '0';
WAIT;
END PROCESS t_prcs_DIN_15;
-- DIN[14]
t_prcs_DIN_14: PROCESS
BEGIN
	DIN(14) <= '0';
WAIT;
END PROCESS t_prcs_DIN_14;
-- DIN[13]
t_prcs_DIN_13: PROCESS
BEGIN
	DIN(13) <= '0';
WAIT;
END PROCESS t_prcs_DIN_13;
-- DIN[12]
t_prcs_DIN_12: PROCESS
BEGIN
	DIN(12) <= '0';
WAIT;
END PROCESS t_prcs_DIN_12;
-- DIN[11]
t_prcs_DIN_11: PROCESS
BEGIN
	DIN(11) <= '0';
WAIT;
END PROCESS t_prcs_DIN_11;
-- DIN[10]
t_prcs_DIN_10: PROCESS
BEGIN
	DIN(10) <= '0';
WAIT;
END PROCESS t_prcs_DIN_10;
-- DIN[9]
t_prcs_DIN_9: PROCESS
BEGIN
	DIN(9) <= '0';
WAIT;
END PROCESS t_prcs_DIN_9;
-- DIN[8]
t_prcs_DIN_8: PROCESS
BEGIN
	DIN(8) <= '0';
WAIT;
END PROCESS t_prcs_DIN_8;
-- DIN[7]
t_prcs_DIN_7: PROCESS
BEGIN
	DIN(7) <= '0';
WAIT;
END PROCESS t_prcs_DIN_7;
-- DIN[6]
t_prcs_DIN_6: PROCESS
BEGIN
	DIN(6) <= '0';
WAIT;
END PROCESS t_prcs_DIN_6;
-- DIN[5]
t_prcs_DIN_5: PROCESS
BEGIN
	DIN(5) <= '0';
WAIT;
END PROCESS t_prcs_DIN_5;
-- DIN[4]
t_prcs_DIN_4: PROCESS
BEGIN
	DIN(4) <= '1';
	WAIT FOR 50000 ps;
	DIN(4) <= '0';
WAIT;
END PROCESS t_prcs_DIN_4;
-- DIN[3]
t_prcs_DIN_3: PROCESS
BEGIN
	DIN(3) <= '1';
	WAIT FOR 50000 ps;
	DIN(3) <= '0';
WAIT;
END PROCESS t_prcs_DIN_3;
-- DIN[2]
t_prcs_DIN_2: PROCESS
BEGIN
	DIN(2) <= '0';
WAIT;
END PROCESS t_prcs_DIN_2;
-- DIN[1]
t_prcs_DIN_1: PROCESS
BEGIN
	DIN(1) <= '0';
WAIT;
END PROCESS t_prcs_DIN_1;
-- DIN[0]
t_prcs_DIN_0: PROCESS
BEGIN
	DIN(0) <= '1';
	WAIT FOR 50000 ps;
	DIN(0) <= '0';
WAIT;
END PROCESS t_prcs_DIN_0;

-- WE
t_prcs_WE: PROCESS
BEGIN
	WE <= '1';
	WAIT FOR 50000 ps;
	WE <= '0';
WAIT;
END PROCESS t_prcs_WE;
END REG8X16_arch;
