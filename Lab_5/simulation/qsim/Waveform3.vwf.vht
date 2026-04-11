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
-- Generated on "03/16/2026 21:57:51"
                                                             
-- Vhdl Test Bench(with test vectors) for design  :          PINV4
-- 
-- Simulation tool : 3rd Party
-- 

LIBRARY ieee;                                               
USE ieee.std_logic_1164.all;                                

ENTITY PINV4_vhd_vec_tst IS
END PINV4_vhd_vec_tst;
ARCHITECTURE PINV4_arch OF PINV4_vhd_vec_tst IS
-- constants                                                 
-- signals                                                   
SIGNAL I : STD_LOGIC_VECTOR(3 DOWNTO 0);
SIGNAL Result : STD_LOGIC_VECTOR(3 DOWNTO 0);
SIGNAL Sel : STD_LOGIC;
COMPONENT PINV4
	PORT (
	I : IN STD_LOGIC_VECTOR(3 DOWNTO 0);
	Result : OUT STD_LOGIC_VECTOR(3 DOWNTO 0);
	Sel : IN STD_LOGIC
	);
END COMPONENT;
BEGIN
	i1 : PINV4
	PORT MAP (
-- list connections between master ports and signals
	I => I,
	Result => Result,
	Sel => Sel
	);
-- I[3]
t_prcs_I_3: PROCESS
BEGIN
	I(3) <= '1';
	WAIT FOR 100000 ps;
	I(3) <= '0';
	WAIT FOR 300000 ps;
	I(3) <= '1';
	WAIT FOR 100000 ps;
	I(3) <= '0';
	WAIT FOR 100000 ps;
	I(3) <= '1';
	WAIT FOR 100000 ps;
	I(3) <= '0';
WAIT;
END PROCESS t_prcs_I_3;
-- I[2]
t_prcs_I_2: PROCESS
BEGIN
	I(2) <= '1';
	WAIT FOR 200000 ps;
	I(2) <= '0';
	WAIT FOR 200000 ps;
	I(2) <= '1';
	WAIT FOR 200000 ps;
	I(2) <= '0';
	WAIT FOR 100000 ps;
	I(2) <= '1';
WAIT;
END PROCESS t_prcs_I_2;
-- I[1]
t_prcs_I_1: PROCESS
BEGIN
	I(1) <= '0';
	WAIT FOR 200000 ps;
	I(1) <= '1';
	WAIT FOR 100000 ps;
	I(1) <= '0';
	WAIT FOR 200000 ps;
	I(1) <= '1';
	WAIT FOR 300000 ps;
	I(1) <= '0';
	WAIT FOR 100000 ps;
	I(1) <= '1';
WAIT;
END PROCESS t_prcs_I_1;
-- I[0]
t_prcs_I_0: PROCESS
BEGIN
	I(0) <= '1';
	WAIT FOR 200000 ps;
	I(0) <= '0';
	WAIT FOR 400000 ps;
	I(0) <= '1';
	WAIT FOR 200000 ps;
	I(0) <= '0';
	WAIT FOR 100000 ps;
	I(0) <= '1';
WAIT;
END PROCESS t_prcs_I_0;

-- Sel
t_prcs_Sel: PROCESS
BEGIN
LOOP
	Sel <= '0';
	WAIT FOR 100000 ps;
	Sel <= '1';
	WAIT FOR 100000 ps;
	IF (NOW >= 1000000 ps) THEN WAIT; END IF;
END LOOP;
END PROCESS t_prcs_Sel;
END PINV4_arch;
