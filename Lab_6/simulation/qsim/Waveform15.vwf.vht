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
-- Generated on "04/21/2026 16:32:10"
                                                             
-- Vhdl Test Bench(with test vectors) for design  :          SGNEXT6x16
-- 
-- Simulation tool : 3rd Party
-- 

LIBRARY ieee;                                               
USE ieee.std_logic_1164.all;                                

ENTITY SGNEXT6x16_vhd_vec_tst IS
END SGNEXT6x16_vhd_vec_tst;
ARCHITECTURE SGNEXT6x16_arch OF SGNEXT6x16_vhd_vec_tst IS
-- constants                                                 
-- signals                                                   
SIGNAL EXTEN_OUT : STD_LOGIC_VECTOR(15 DOWNTO 0);
SIGNAL SIGN_IN : STD_LOGIC_VECTOR(5 DOWNTO 0);
COMPONENT SGNEXT6x16
	PORT (
	EXTEN_OUT : OUT STD_LOGIC_VECTOR(15 DOWNTO 0);
	SIGN_IN : IN STD_LOGIC_VECTOR(5 DOWNTO 0)
	);
END COMPONENT;
BEGIN
	i1 : SGNEXT6x16
	PORT MAP (
-- list connections between master ports and signals
	EXTEN_OUT => EXTEN_OUT,
	SIGN_IN => SIGN_IN
	);
-- SIGN_IN[5]
t_prcs_SIGN_IN_5: PROCESS
BEGIN
	SIGN_IN(5) <= '0';
	WAIT FOR 75000 ps;
	SIGN_IN(5) <= '1';
	WAIT FOR 800000 ps;
	SIGN_IN(5) <= '0';
WAIT;
END PROCESS t_prcs_SIGN_IN_5;
-- SIGN_IN[4]
t_prcs_SIGN_IN_4: PROCESS
BEGIN
	SIGN_IN(4) <= '1';
	WAIT FOR 75000 ps;
	SIGN_IN(4) <= '0';
	WAIT FOR 400000 ps;
	SIGN_IN(4) <= '1';
	WAIT FOR 400000 ps;
	SIGN_IN(4) <= '0';
WAIT;
END PROCESS t_prcs_SIGN_IN_4;
-- SIGN_IN[3]
t_prcs_SIGN_IN_3: PROCESS
BEGIN
	SIGN_IN(3) <= '1';
	WAIT FOR 75000 ps;
	FOR i IN 1 TO 2
	LOOP
		SIGN_IN(3) <= '0';
		WAIT FOR 200000 ps;
		SIGN_IN(3) <= '1';
		WAIT FOR 200000 ps;
	END LOOP;
	SIGN_IN(3) <= '0';
WAIT;
END PROCESS t_prcs_SIGN_IN_3;
-- SIGN_IN[2]
t_prcs_SIGN_IN_2: PROCESS
BEGIN
	SIGN_IN(2) <= '1';
	WAIT FOR 75000 ps;
	FOR i IN 1 TO 4
	LOOP
		SIGN_IN(2) <= '0';
		WAIT FOR 100000 ps;
		SIGN_IN(2) <= '1';
		WAIT FOR 100000 ps;
	END LOOP;
	SIGN_IN(2) <= '0';
	WAIT FOR 100000 ps;
	SIGN_IN(2) <= '1';
WAIT;
END PROCESS t_prcs_SIGN_IN_2;
-- SIGN_IN[1]
t_prcs_SIGN_IN_1: PROCESS
BEGIN
	SIGN_IN(1) <= '0';
	WAIT FOR 25000 ps;
	FOR i IN 1 TO 9
	LOOP
		SIGN_IN(1) <= '1';
		WAIT FOR 50000 ps;
		SIGN_IN(1) <= '0';
		WAIT FOR 50000 ps;
	END LOOP;
	SIGN_IN(1) <= '1';
	WAIT FOR 50000 ps;
	SIGN_IN(1) <= '0';
WAIT;
END PROCESS t_prcs_SIGN_IN_1;
-- SIGN_IN[0]
t_prcs_SIGN_IN_0: PROCESS
BEGIN
LOOP
	SIGN_IN(0) <= '1';
	WAIT FOR 25000 ps;
	SIGN_IN(0) <= '0';
	WAIT FOR 25000 ps;
	IF (NOW >= 1000000 ps) THEN WAIT; END IF;
END LOOP;
END PROCESS t_prcs_SIGN_IN_0;
END SGNEXT6x16_arch;
