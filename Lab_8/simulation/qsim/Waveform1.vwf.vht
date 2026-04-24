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
-- Generated on "04/24/2026 11:40:17"
                                                             
-- Vhdl Test Bench(with test vectors) for design  :          PC
-- 
-- Simulation tool : 3rd Party
-- 

LIBRARY ieee;                                               
USE ieee.std_logic_1164.all;                                

ENTITY PC_vhd_vec_tst IS
END PC_vhd_vec_tst;
ARCHITECTURE PC_arch OF PC_vhd_vec_tst IS
-- constants                                                 
-- signals                                                   
SIGNAL CLK : STD_LOGIC;
SIGNAL EN : STD_LOGIC;
SIGNAL PCIN : STD_LOGIC_VECTOR(15 DOWNTO 0);
SIGNAL PCOUT : STD_LOGIC_VECTOR(15 DOWNTO 0);
SIGNAL RST : STD_LOGIC;
COMPONENT PC
	PORT (
	CLK : IN STD_LOGIC;
	EN : IN STD_LOGIC;
	PCIN : IN STD_LOGIC_VECTOR(15 DOWNTO 0);
	PCOUT : OUT STD_LOGIC_VECTOR(15 DOWNTO 0);
	RST : IN STD_LOGIC
	);
END COMPONENT;
BEGIN
	i1 : PC
	PORT MAP (
-- list connections between master ports and signals
	CLK => CLK,
	EN => EN,
	PCIN => PCIN,
	PCOUT => PCOUT,
	RST => RST
	);

-- CLK
t_prcs_CLK: PROCESS
BEGIN
LOOP
	CLK <= '0';
	WAIT FOR 10000 ps;
	CLK <= '1';
	WAIT FOR 10000 ps;
	IF (NOW >= 1000000 ps) THEN WAIT; END IF;
END LOOP;
END PROCESS t_prcs_CLK;

-- EN
t_prcs_EN: PROCESS
BEGIN
	EN <= '1';
WAIT;
END PROCESS t_prcs_EN;
-- PCIN[15]
t_prcs_PCIN_15: PROCESS
BEGIN
	PCIN(15) <= '0';
WAIT;
END PROCESS t_prcs_PCIN_15;
-- PCIN[14]
t_prcs_PCIN_14: PROCESS
BEGIN
	PCIN(14) <= '0';
WAIT;
END PROCESS t_prcs_PCIN_14;
-- PCIN[13]
t_prcs_PCIN_13: PROCESS
BEGIN
	PCIN(13) <= '0';
WAIT;
END PROCESS t_prcs_PCIN_13;
-- PCIN[12]
t_prcs_PCIN_12: PROCESS
BEGIN
	PCIN(12) <= '0';
WAIT;
END PROCESS t_prcs_PCIN_12;
-- PCIN[11]
t_prcs_PCIN_11: PROCESS
BEGIN
	PCIN(11) <= '0';
WAIT;
END PROCESS t_prcs_PCIN_11;
-- PCIN[10]
t_prcs_PCIN_10: PROCESS
BEGIN
	PCIN(10) <= '0';
WAIT;
END PROCESS t_prcs_PCIN_10;
-- PCIN[9]
t_prcs_PCIN_9: PROCESS
BEGIN
	PCIN(9) <= '0';
WAIT;
END PROCESS t_prcs_PCIN_9;
-- PCIN[8]
t_prcs_PCIN_8: PROCESS
BEGIN
	PCIN(8) <= '0';
WAIT;
END PROCESS t_prcs_PCIN_8;
-- PCIN[7]
t_prcs_PCIN_7: PROCESS
BEGIN
	PCIN(7) <= '0';
WAIT;
END PROCESS t_prcs_PCIN_7;
-- PCIN[6]
t_prcs_PCIN_6: PROCESS
BEGIN
	PCIN(6) <= '0';
WAIT;
END PROCESS t_prcs_PCIN_6;
-- PCIN[5]
t_prcs_PCIN_5: PROCESS
BEGIN
	PCIN(5) <= '0';
	WAIT FOR 640000 ps;
	PCIN(5) <= '1';
	WAIT FOR 20000 ps;
	PCIN(5) <= '0';
	WAIT FOR 330000 ps;
	PCIN(5) <= '1';
WAIT;
END PROCESS t_prcs_PCIN_5;
-- PCIN[4]
t_prcs_PCIN_4: PROCESS
BEGIN
	PCIN(4) <= '0';
	WAIT FOR 320000 ps;
	PCIN(4) <= '1';
	WAIT FOR 320000 ps;
	PCIN(4) <= '0';
	WAIT FOR 320000 ps;
	PCIN(4) <= '1';
WAIT;
END PROCESS t_prcs_PCIN_4;
-- PCIN[3]
t_prcs_PCIN_3: PROCESS
BEGIN
	FOR i IN 1 TO 2
	LOOP
		PCIN(3) <= '0';
		WAIT FOR 160000 ps;
		PCIN(3) <= '1';
		WAIT FOR 160000 ps;
	END LOOP;
	PCIN(3) <= '0';
	WAIT FOR 160000 ps;
	PCIN(3) <= '1';
	WAIT FOR 160000 ps;
	PCIN(3) <= '0';
WAIT;
END PROCESS t_prcs_PCIN_3;
-- PCIN[2]
t_prcs_PCIN_2: PROCESS
BEGIN
	FOR i IN 1 TO 4
	LOOP
		PCIN(2) <= '0';
		WAIT FOR 80000 ps;
		PCIN(2) <= '1';
		WAIT FOR 80000 ps;
	END LOOP;
	PCIN(2) <= '0';
	WAIT FOR 80000 ps;
	PCIN(2) <= '1';
	WAIT FOR 80000 ps;
	PCIN(2) <= '0';
	WAIT FOR 80000 ps;
	PCIN(2) <= '1';
	WAIT FOR 80000 ps;
	PCIN(2) <= '0';
WAIT;
END PROCESS t_prcs_PCIN_2;
-- PCIN[1]
t_prcs_PCIN_1: PROCESS
BEGIN
	FOR i IN 1 TO 8
	LOOP
		PCIN(1) <= '0';
		WAIT FOR 40000 ps;
		PCIN(1) <= '1';
		WAIT FOR 40000 ps;
	END LOOP;
	PCIN(1) <= '0';
	WAIT FOR 40000 ps;
	PCIN(1) <= '1';
	WAIT FOR 40000 ps;
	PCIN(1) <= '0';
	WAIT FOR 40000 ps;
	FOR i IN 1 TO 2
	LOOP
		PCIN(1) <= '1';
		WAIT FOR 40000 ps;
		PCIN(1) <= '0';
		WAIT FOR 40000 ps;
	END LOOP;
	PCIN(1) <= '1';
	WAIT FOR 40000 ps;
	PCIN(1) <= '0';
WAIT;
END PROCESS t_prcs_PCIN_1;
-- PCIN[0]
t_prcs_PCIN_0: PROCESS
BEGIN
	FOR i IN 1 TO 16
	LOOP
		PCIN(0) <= '0';
		WAIT FOR 20000 ps;
		PCIN(0) <= '1';
		WAIT FOR 20000 ps;
	END LOOP;
	PCIN(0) <= '0';
	WAIT FOR 20000 ps;
	FOR i IN 1 TO 8
	LOOP
		PCIN(0) <= '1';
		WAIT FOR 20000 ps;
		PCIN(0) <= '0';
		WAIT FOR 20000 ps;
	END LOOP;
	PCIN(0) <= '1';
WAIT;
END PROCESS t_prcs_PCIN_0;

-- RST
t_prcs_RST: PROCESS
BEGIN
	RST <= '0';
	WAIT FOR 640000 ps;
	RST <= '1';
	WAIT FOR 20000 ps;
	RST <= '0';
WAIT;
END PROCESS t_prcs_RST;
END PC_arch;
