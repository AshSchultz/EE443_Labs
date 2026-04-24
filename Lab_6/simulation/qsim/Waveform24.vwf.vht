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
-- Generated on "04/22/2026 23:01:20"
                                                             
-- Vhdl Test Bench(with test vectors) for design  :          MUX2X16
-- 
-- Simulation tool : 3rd Party
-- 

LIBRARY ieee;                                               
USE ieee.std_logic_1164.all;                                

ENTITY MUX2X16_vhd_vec_tst IS
END MUX2X16_vhd_vec_tst;
ARCHITECTURE MUX2X16_arch OF MUX2X16_vhd_vec_tst IS
-- constants                                                 
-- signals                                                   
SIGNAL CONTROL : STD_LOGIC;
SIGNAL IN1 : STD_LOGIC_VECTOR(15 DOWNTO 0);
SIGNAL IN2 : STD_LOGIC_VECTOR(15 DOWNTO 0);
SIGNAL OUT16B : STD_LOGIC_VECTOR(15 DOWNTO 0);
COMPONENT MUX2X16
	PORT (
	CONTROL : IN STD_LOGIC;
	IN1 : IN STD_LOGIC_VECTOR(15 DOWNTO 0);
	IN2 : IN STD_LOGIC_VECTOR(15 DOWNTO 0);
	OUT16B : OUT STD_LOGIC_VECTOR(15 DOWNTO 0)
	);
END COMPONENT;
BEGIN
	i1 : MUX2X16
	PORT MAP (
-- list connections between master ports and signals
	CONTROL => CONTROL,
	IN1 => IN1,
	IN2 => IN2,
	OUT16B => OUT16B
	);

-- CONTROL
t_prcs_CONTROL: PROCESS
BEGIN
LOOP
	CONTROL <= '0';
	WAIT FOR 25000 ps;
	CONTROL <= '1';
	WAIT FOR 25000 ps;
	IF (NOW >= 1000000 ps) THEN WAIT; END IF;
END LOOP;
END PROCESS t_prcs_CONTROL;
-- IN1[15]
t_prcs_IN1_15: PROCESS
BEGIN
	IN1(15) <= '1';
WAIT;
END PROCESS t_prcs_IN1_15;
-- IN1[14]
t_prcs_IN1_14: PROCESS
BEGIN
	IN1(14) <= '1';
WAIT;
END PROCESS t_prcs_IN1_14;
-- IN1[13]
t_prcs_IN1_13: PROCESS
BEGIN
	IN1(13) <= '0';
WAIT;
END PROCESS t_prcs_IN1_13;
-- IN1[12]
t_prcs_IN1_12: PROCESS
BEGIN
	IN1(12) <= '1';
WAIT;
END PROCESS t_prcs_IN1_12;
-- IN1[11]
t_prcs_IN1_11: PROCESS
BEGIN
	IN1(11) <= '1';
WAIT;
END PROCESS t_prcs_IN1_11;
-- IN1[10]
t_prcs_IN1_10: PROCESS
BEGIN
	IN1(10) <= '1';
WAIT;
END PROCESS t_prcs_IN1_10;
-- IN1[9]
t_prcs_IN1_9: PROCESS
BEGIN
	IN1(9) <= '1';
WAIT;
END PROCESS t_prcs_IN1_9;
-- IN1[8]
t_prcs_IN1_8: PROCESS
BEGIN
	IN1(8) <= '0';
WAIT;
END PROCESS t_prcs_IN1_8;
-- IN1[7]
t_prcs_IN1_7: PROCESS
BEGIN
	IN1(7) <= '1';
WAIT;
END PROCESS t_prcs_IN1_7;
-- IN1[6]
t_prcs_IN1_6: PROCESS
BEGIN
	IN1(6) <= '0';
WAIT;
END PROCESS t_prcs_IN1_6;
-- IN1[5]
t_prcs_IN1_5: PROCESS
BEGIN
	IN1(5) <= '1';
WAIT;
END PROCESS t_prcs_IN1_5;
-- IN1[4]
t_prcs_IN1_4: PROCESS
BEGIN
	IN1(4) <= '0';
WAIT;
END PROCESS t_prcs_IN1_4;
-- IN1[3]
t_prcs_IN1_3: PROCESS
BEGIN
	IN1(3) <= '1';
WAIT;
END PROCESS t_prcs_IN1_3;
-- IN1[2]
t_prcs_IN1_2: PROCESS
BEGIN
	IN1(2) <= '1';
WAIT;
END PROCESS t_prcs_IN1_2;
-- IN1[1]
t_prcs_IN1_1: PROCESS
BEGIN
	IN1(1) <= '0';
WAIT;
END PROCESS t_prcs_IN1_1;
-- IN1[0]
t_prcs_IN1_0: PROCESS
BEGIN
	IN1(0) <= '1';
WAIT;
END PROCESS t_prcs_IN1_0;
-- IN2[15]
t_prcs_IN2_15: PROCESS
BEGIN
	IN2(15) <= '0';
WAIT;
END PROCESS t_prcs_IN2_15;
-- IN2[14]
t_prcs_IN2_14: PROCESS
BEGIN
	IN2(14) <= '0';
WAIT;
END PROCESS t_prcs_IN2_14;
-- IN2[13]
t_prcs_IN2_13: PROCESS
BEGIN
	IN2(13) <= '0';
WAIT;
END PROCESS t_prcs_IN2_13;
-- IN2[12]
t_prcs_IN2_12: PROCESS
BEGIN
	IN2(12) <= '0';
WAIT;
END PROCESS t_prcs_IN2_12;
-- IN2[11]
t_prcs_IN2_11: PROCESS
BEGIN
	IN2(11) <= '0';
WAIT;
END PROCESS t_prcs_IN2_11;
-- IN2[10]
t_prcs_IN2_10: PROCESS
BEGIN
	IN2(10) <= '0';
WAIT;
END PROCESS t_prcs_IN2_10;
-- IN2[9]
t_prcs_IN2_9: PROCESS
BEGIN
	IN2(9) <= '0';
WAIT;
END PROCESS t_prcs_IN2_9;
-- IN2[8]
t_prcs_IN2_8: PROCESS
BEGIN
	IN2(8) <= '0';
WAIT;
END PROCESS t_prcs_IN2_8;
-- IN2[7]
t_prcs_IN2_7: PROCESS
BEGIN
	IN2(7) <= '0';
WAIT;
END PROCESS t_prcs_IN2_7;
-- IN2[6]
t_prcs_IN2_6: PROCESS
BEGIN
	IN2(6) <= '0';
WAIT;
END PROCESS t_prcs_IN2_6;
-- IN2[5]
t_prcs_IN2_5: PROCESS
BEGIN
	IN2(5) <= '0';
WAIT;
END PROCESS t_prcs_IN2_5;
-- IN2[4]
t_prcs_IN2_4: PROCESS
BEGIN
	IN2(4) <= '0';
WAIT;
END PROCESS t_prcs_IN2_4;
-- IN2[3]
t_prcs_IN2_3: PROCESS
BEGIN
	IN2(3) <= '0';
WAIT;
END PROCESS t_prcs_IN2_3;
-- IN2[2]
t_prcs_IN2_2: PROCESS
BEGIN
	IN2(2) <= '0';
WAIT;
END PROCESS t_prcs_IN2_2;
-- IN2[1]
t_prcs_IN2_1: PROCESS
BEGIN
	IN2(1) <= '0';
WAIT;
END PROCESS t_prcs_IN2_1;
-- IN2[0]
t_prcs_IN2_0: PROCESS
BEGIN
	IN2(0) <= '0';
WAIT;
END PROCESS t_prcs_IN2_0;
END MUX2X16_arch;
