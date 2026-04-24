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

-- *****************************************************************************
-- This file contains a Vhdl test bench with test vectors .The test vectors     
-- are exported from a vector file in the Quartus Waveform Editor and apply to  
-- the top level entity of the current Quartus project .The user can use this   
-- testbench to simulate his design using a third-party simulation tool .       
-- *****************************************************************************
-- Generated on "04/22/2026 19:23:18"
                                                             
-- Vhdl Test Bench(with test vectors) for design  :          DAT_MEM
-- 
-- Simulation tool : 3rd Party
-- 

LIBRARY ieee;                                               
USE ieee.std_logic_1164.all;                                

ENTITY DAT_MEM_vhd_vec_tst IS
END DAT_MEM_vhd_vec_tst;
ARCHITECTURE DAT_MEM_arch OF DAT_MEM_vhd_vec_tst IS
-- constants                                                 
-- signals                                                   
SIGNAL ADDR : STD_LOGIC_VECTOR(15 DOWNTO 0);
SIGNAL CLK : STD_LOGIC;
SIGNAL DEC_OUT : STD_LOGIC_VECTOR(31 DOWNTO 0);
SIGNAL DIN : STD_LOGIC_VECTOR(15 DOWNTO 0);
SIGNAL DOUT : STD_LOGIC_VECTOR(15 DOWNTO 0);
SIGNAL RE : STD_LOGIC;
SIGNAL REG_2 : STD_LOGIC_VECTOR(7 DOWNTO 0);
SIGNAL REG_3 : STD_LOGIC_VECTOR(7 DOWNTO 0);
SIGNAL REG_4 : STD_LOGIC_VECTOR(7 DOWNTO 0);
SIGNAL REG_5 : STD_LOGIC_VECTOR(7 DOWNTO 0);
SIGNAL WE : STD_LOGIC;
COMPONENT DAT_MEM
	PORT (
	ADDR : IN STD_LOGIC_VECTOR(15 DOWNTO 0);
	CLK : IN STD_LOGIC;
	DEC_OUT : OUT STD_LOGIC_VECTOR(31 DOWNTO 0);
	DIN : IN STD_LOGIC_VECTOR(15 DOWNTO 0);
	DOUT : OUT STD_LOGIC_VECTOR(15 DOWNTO 0);
	RE : IN STD_LOGIC;
	REG_2 : OUT STD_LOGIC_VECTOR(7 DOWNTO 0);
	REG_3 : OUT STD_LOGIC_VECTOR(7 DOWNTO 0);
	REG_4 : OUT STD_LOGIC_VECTOR(7 DOWNTO 0);
	REG_5 : OUT STD_LOGIC_VECTOR(7 DOWNTO 0);
	WE : IN STD_LOGIC
	);
END COMPONENT;
BEGIN
	i1 : DAT_MEM
	PORT MAP (
-- list connections between master ports and signals
	ADDR => ADDR,
	CLK => CLK,
	DEC_OUT => DEC_OUT,
	DIN => DIN,
	DOUT => DOUT,
	RE => RE,
	REG_2 => REG_2,
	REG_3 => REG_3,
	REG_4 => REG_4,
	REG_5 => REG_5,
	WE => WE
	);
-- ADDR[15]
t_prcs_ADDR_15: PROCESS
BEGIN
	ADDR(15) <= '0';
WAIT;
END PROCESS t_prcs_ADDR_15;
-- ADDR[14]
t_prcs_ADDR_14: PROCESS
BEGIN
	ADDR(14) <= '0';
WAIT;
END PROCESS t_prcs_ADDR_14;
-- ADDR[13]
t_prcs_ADDR_13: PROCESS
BEGIN
	ADDR(13) <= '0';
WAIT;
END PROCESS t_prcs_ADDR_13;
-- ADDR[12]
t_prcs_ADDR_12: PROCESS
BEGIN
	ADDR(12) <= '0';
WAIT;
END PROCESS t_prcs_ADDR_12;
-- ADDR[11]
t_prcs_ADDR_11: PROCESS
BEGIN
	ADDR(11) <= '0';
WAIT;
END PROCESS t_prcs_ADDR_11;
-- ADDR[10]
t_prcs_ADDR_10: PROCESS
BEGIN
	ADDR(10) <= '0';
WAIT;
END PROCESS t_prcs_ADDR_10;
-- ADDR[9]
t_prcs_ADDR_9: PROCESS
BEGIN
	ADDR(9) <= '0';
WAIT;
END PROCESS t_prcs_ADDR_9;
-- ADDR[8]
t_prcs_ADDR_8: PROCESS
BEGIN
	ADDR(8) <= '0';
WAIT;
END PROCESS t_prcs_ADDR_8;
-- ADDR[7]
t_prcs_ADDR_7: PROCESS
BEGIN
	ADDR(7) <= '0';
WAIT;
END PROCESS t_prcs_ADDR_7;
-- ADDR[6]
t_prcs_ADDR_6: PROCESS
BEGIN
	ADDR(6) <= '0';
WAIT;
END PROCESS t_prcs_ADDR_6;
-- ADDR[5]
t_prcs_ADDR_5: PROCESS
BEGIN
	ADDR(5) <= '0';
WAIT;
END PROCESS t_prcs_ADDR_5;
-- ADDR[4]
t_prcs_ADDR_4: PROCESS
BEGIN
	ADDR(4) <= '0';
WAIT;
END PROCESS t_prcs_ADDR_4;
-- ADDR[3]
t_prcs_ADDR_3: PROCESS
BEGIN
	ADDR(3) <= '0';
WAIT;
END PROCESS t_prcs_ADDR_3;
-- ADDR[2]
t_prcs_ADDR_2: PROCESS
BEGIN
	ADDR(2) <= '0';
WAIT;
END PROCESS t_prcs_ADDR_2;
-- ADDR[1]
t_prcs_ADDR_1: PROCESS
BEGIN
	ADDR(1) <= '0';
	WAIT FOR 20000 ps;
	ADDR(1) <= '1';
	WAIT FOR 90000 ps;
	ADDR(1) <= '0';
	WAIT FOR 50000 ps;
	ADDR(1) <= '1';
	WAIT FOR 20000 ps;
	ADDR(1) <= '0';
WAIT;
END PROCESS t_prcs_ADDR_1;
-- ADDR[0]
t_prcs_ADDR_0: PROCESS
BEGIN
	ADDR(0) <= '0';
WAIT;
END PROCESS t_prcs_ADDR_0;
-- DIN[15]
t_prcs_DIN_15: PROCESS
BEGIN
	DIN(15) <= '0';
	WAIT FOR 20000 ps;
	DIN(15) <= '1';
	WAIT FOR 90000 ps;
	DIN(15) <= '0';
	WAIT FOR 50000 ps;
	DIN(15) <= '1';
	WAIT FOR 20000 ps;
	DIN(15) <= '0';
WAIT;
END PROCESS t_prcs_DIN_15;
-- DIN[14]
t_prcs_DIN_14: PROCESS
BEGIN
	DIN(14) <= '0';
	WAIT FOR 20000 ps;
	DIN(14) <= '1';
	WAIT FOR 90000 ps;
	DIN(14) <= '0';
	WAIT FOR 50000 ps;
	DIN(14) <= '1';
	WAIT FOR 20000 ps;
	DIN(14) <= '0';
WAIT;
END PROCESS t_prcs_DIN_14;
-- DIN[13]
t_prcs_DIN_13: PROCESS
BEGIN
	DIN(13) <= '0';
	WAIT FOR 20000 ps;
	DIN(13) <= '1';
	WAIT FOR 90000 ps;
	DIN(13) <= '0';
WAIT;
END PROCESS t_prcs_DIN_13;
-- DIN[12]
t_prcs_DIN_12: PROCESS
BEGIN
	DIN(12) <= '0';
	WAIT FOR 20000 ps;
	DIN(12) <= '1';
	WAIT FOR 90000 ps;
	DIN(12) <= '0';
	WAIT FOR 50000 ps;
	DIN(12) <= '1';
	WAIT FOR 20000 ps;
	DIN(12) <= '0';
WAIT;
END PROCESS t_prcs_DIN_12;
-- DIN[11]
t_prcs_DIN_11: PROCESS
BEGIN
	DIN(11) <= '0';
	WAIT FOR 20000 ps;
	DIN(11) <= '1';
	WAIT FOR 90000 ps;
	DIN(11) <= '0';
	WAIT FOR 50000 ps;
	DIN(11) <= '1';
	WAIT FOR 20000 ps;
	DIN(11) <= '0';
WAIT;
END PROCESS t_prcs_DIN_11;
-- DIN[10]
t_prcs_DIN_10: PROCESS
BEGIN
	DIN(10) <= '0';
	WAIT FOR 20000 ps;
	DIN(10) <= '1';
	WAIT FOR 90000 ps;
	DIN(10) <= '0';
	WAIT FOR 50000 ps;
	DIN(10) <= '1';
	WAIT FOR 20000 ps;
	DIN(10) <= '0';
WAIT;
END PROCESS t_prcs_DIN_10;
-- DIN[9]
t_prcs_DIN_9: PROCESS
BEGIN
	DIN(9) <= '0';
	WAIT FOR 20000 ps;
	DIN(9) <= '1';
	WAIT FOR 90000 ps;
	DIN(9) <= '0';
WAIT;
END PROCESS t_prcs_DIN_9;
-- DIN[8]
t_prcs_DIN_8: PROCESS
BEGIN
	DIN(8) <= '0';
	WAIT FOR 20000 ps;
	DIN(8) <= '1';
	WAIT FOR 90000 ps;
	DIN(8) <= '0';
	WAIT FOR 50000 ps;
	DIN(8) <= '1';
	WAIT FOR 20000 ps;
	DIN(8) <= '0';
WAIT;
END PROCESS t_prcs_DIN_8;
-- DIN[7]
t_prcs_DIN_7: PROCESS
BEGIN
	DIN(7) <= '0';
	WAIT FOR 20000 ps;
	DIN(7) <= '1';
	WAIT FOR 90000 ps;
	DIN(7) <= '0';
	WAIT FOR 50000 ps;
	DIN(7) <= '1';
	WAIT FOR 20000 ps;
	DIN(7) <= '0';
WAIT;
END PROCESS t_prcs_DIN_7;
-- DIN[6]
t_prcs_DIN_6: PROCESS
BEGIN
	DIN(6) <= '0';
	WAIT FOR 160000 ps;
	DIN(6) <= '1';
	WAIT FOR 20000 ps;
	DIN(6) <= '0';
WAIT;
END PROCESS t_prcs_DIN_6;
-- DIN[5]
t_prcs_DIN_5: PROCESS
BEGIN
	DIN(5) <= '0';
	WAIT FOR 20000 ps;
	DIN(5) <= '1';
	WAIT FOR 90000 ps;
	DIN(5) <= '0';
	WAIT FOR 50000 ps;
	DIN(5) <= '1';
	WAIT FOR 20000 ps;
	DIN(5) <= '0';
WAIT;
END PROCESS t_prcs_DIN_5;
-- DIN[4]
t_prcs_DIN_4: PROCESS
BEGIN
	DIN(4) <= '0';
WAIT;
END PROCESS t_prcs_DIN_4;
-- DIN[3]
t_prcs_DIN_3: PROCESS
BEGIN
	DIN(3) <= '0';
	WAIT FOR 20000 ps;
	DIN(3) <= '1';
	WAIT FOR 90000 ps;
	DIN(3) <= '0';
	WAIT FOR 50000 ps;
	DIN(3) <= '1';
	WAIT FOR 20000 ps;
	DIN(3) <= '0';
WAIT;
END PROCESS t_prcs_DIN_3;
-- DIN[2]
t_prcs_DIN_2: PROCESS
BEGIN
	DIN(2) <= '0';
	WAIT FOR 160000 ps;
	DIN(2) <= '1';
	WAIT FOR 20000 ps;
	DIN(2) <= '0';
WAIT;
END PROCESS t_prcs_DIN_2;
-- DIN[1]
t_prcs_DIN_1: PROCESS
BEGIN
	DIN(1) <= '0';
	WAIT FOR 20000 ps;
	DIN(1) <= '1';
	WAIT FOR 90000 ps;
	DIN(1) <= '0';
	WAIT FOR 50000 ps;
	DIN(1) <= '1';
	WAIT FOR 20000 ps;
	DIN(1) <= '0';
WAIT;
END PROCESS t_prcs_DIN_1;
-- DIN[0]
t_prcs_DIN_0: PROCESS
BEGIN
	DIN(0) <= '0';
	WAIT FOR 20000 ps;
	DIN(0) <= '1';
	WAIT FOR 90000 ps;
	DIN(0) <= '0';
WAIT;
END PROCESS t_prcs_DIN_0;

-- CLK
t_prcs_CLK: PROCESS
BEGIN
	FOR i IN 1 TO 33
	LOOP
		CLK <= '0';
		WAIT FOR 15000 ps;
		CLK <= '1';
		WAIT FOR 15000 ps;
	END LOOP;
	CLK <= '0';
WAIT;
END PROCESS t_prcs_CLK;

-- RE
t_prcs_RE: PROCESS
BEGIN
	RE <= '0';
	WAIT FOR 160000 ps;
	RE <= 'H';
	WAIT FOR 20000 ps;
	RE <= '0';
WAIT;
END PROCESS t_prcs_RE;

-- WE
t_prcs_WE: PROCESS
BEGIN
	WE <= '0';
	WAIT FOR 30000 ps;
	WE <= '1';
	WAIT FOR 80000 ps;
	WE <= '0';
WAIT;
END PROCESS t_prcs_WE;
END DAT_MEM_arch;
