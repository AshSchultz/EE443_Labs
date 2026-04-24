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
-- Generated on "04/22/2026 20:44:52"
                                                             
-- Vhdl Test Bench(with test vectors) for design  :          SHLONE
-- 
-- Simulation tool : 3rd Party
-- 

LIBRARY ieee;                                               
USE ieee.std_logic_1164.all;                                

ENTITY SHLONE_vhd_vec_tst IS
END SHLONE_vhd_vec_tst;
ARCHITECTURE SHLONE_arch OF SHLONE_vhd_vec_tst IS
-- constants                                                 
-- signals                                                   
SIGNAL DIN : STD_LOGIC_VECTOR(15 DOWNTO 0);
SIGNAL DOUT : STD_LOGIC_VECTOR(15 DOWNTO 0);
COMPONENT SHLONE
	PORT (
	DIN : IN STD_LOGIC_VECTOR(15 DOWNTO 0);
	DOUT : OUT STD_LOGIC_VECTOR(15 DOWNTO 0)
	);
END COMPONENT;
BEGIN
	i1 : SHLONE
	PORT MAP (
-- list connections between master ports and signals
	DIN => DIN,
	DOUT => DOUT
	);
-- DIN[15]
t_prcs_DIN_15: PROCESS
BEGIN
	DIN(15) <= '1';
WAIT;
END PROCESS t_prcs_DIN_15;
-- DIN[14]
t_prcs_DIN_14: PROCESS
BEGIN
	DIN(14) <= '1';
WAIT;
END PROCESS t_prcs_DIN_14;
-- DIN[13]
t_prcs_DIN_13: PROCESS
BEGIN
	DIN(13) <= '1';
WAIT;
END PROCESS t_prcs_DIN_13;
-- DIN[12]
t_prcs_DIN_12: PROCESS
BEGIN
	DIN(12) <= '1';
WAIT;
END PROCESS t_prcs_DIN_12;
-- DIN[11]
t_prcs_DIN_11: PROCESS
BEGIN
	DIN(11) <= '1';
WAIT;
END PROCESS t_prcs_DIN_11;
-- DIN[10]
t_prcs_DIN_10: PROCESS
BEGIN
	DIN(10) <= '1';
WAIT;
END PROCESS t_prcs_DIN_10;
-- DIN[9]
t_prcs_DIN_9: PROCESS
BEGIN
	DIN(9) <= '1';
WAIT;
END PROCESS t_prcs_DIN_9;
-- DIN[8]
t_prcs_DIN_8: PROCESS
BEGIN
	DIN(8) <= '1';
WAIT;
END PROCESS t_prcs_DIN_8;
-- DIN[7]
t_prcs_DIN_7: PROCESS
BEGIN
	DIN(7) <= '1';
WAIT;
END PROCESS t_prcs_DIN_7;
-- DIN[6]
t_prcs_DIN_6: PROCESS
BEGIN
	DIN(6) <= '1';
WAIT;
END PROCESS t_prcs_DIN_6;
-- DIN[5]
t_prcs_DIN_5: PROCESS
BEGIN
	DIN(5) <= '1';
WAIT;
END PROCESS t_prcs_DIN_5;
-- DIN[4]
t_prcs_DIN_4: PROCESS
BEGIN
	DIN(4) <= '1';
WAIT;
END PROCESS t_prcs_DIN_4;
-- DIN[3]
t_prcs_DIN_3: PROCESS
BEGIN
	DIN(3) <= '1';
WAIT;
END PROCESS t_prcs_DIN_3;
-- DIN[2]
t_prcs_DIN_2: PROCESS
BEGIN
	DIN(2) <= '1';
WAIT;
END PROCESS t_prcs_DIN_2;
-- DIN[1]
t_prcs_DIN_1: PROCESS
BEGIN
	DIN(1) <= '1';
WAIT;
END PROCESS t_prcs_DIN_1;
-- DIN[0]
t_prcs_DIN_0: PROCESS
BEGIN
	DIN(0) <= '1';
WAIT;
END PROCESS t_prcs_DIN_0;
END SHLONE_arch;
