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
-- Generated on "03/17/2026 11:29:26"
                                                             
-- Vhdl Test Bench(with test vectors) for design  :          ALU4
-- 
-- Simulation tool : 3rd Party
-- 

LIBRARY ieee;                                               
USE ieee.std_logic_1164.all;                                

ENTITY ALU4_vhd_vec_tst IS
END ALU4_vhd_vec_tst;
ARCHITECTURE ALU4_arch OF ALU4_vhd_vec_tst IS
-- constants                                                 
-- signals                                                   
SIGNAL A : STD_LOGIC_VECTOR(3 DOWNTO 0);
SIGNAL B : STD_LOGIC_VECTOR(3 DOWNTO 0);
SIGNAL CIN : STD_LOGIC;
SIGNAL COUT : STD_LOGIC;
SIGNAL F : STD_LOGIC_VECTOR(3 DOWNTO 0);
SIGNAL LESS : STD_LOGIC;
SIGNAL OVERFLOW : STD_LOGIC;
SIGNAL SEL : STD_LOGIC_VECTOR(2 DOWNTO 0);
SIGNAL SET : STD_LOGIC;
SIGNAL ZERO : STD_LOGIC;
COMPONENT ALU4
	PORT (
	A : IN STD_LOGIC_VECTOR(3 DOWNTO 0);
	B : IN STD_LOGIC_VECTOR(3 DOWNTO 0);
	CIN : IN STD_LOGIC;
	COUT : OUT STD_LOGIC;
	F : OUT STD_LOGIC_VECTOR(3 DOWNTO 0);
	LESS : IN STD_LOGIC;
	OVERFLOW : OUT STD_LOGIC;
	SEL : IN STD_LOGIC_VECTOR(2 DOWNTO 0);
	SET : OUT STD_LOGIC;
	ZERO : OUT STD_LOGIC
	);
END COMPONENT;
BEGIN
	i1 : ALU4
	PORT MAP (
-- list connections between master ports and signals
	A => A,
	B => B,
	CIN => CIN,
	COUT => COUT,
	F => F,
	LESS => LESS,
	OVERFLOW => OVERFLOW,
	SEL => SEL,
	SET => SET,
	ZERO => ZERO
	);
-- A[3]
t_prcs_A_3: PROCESS
BEGIN
	A(3) <= '0';
WAIT;
END PROCESS t_prcs_A_3;
-- A[2]
t_prcs_A_2: PROCESS
BEGIN
	A(2) <= '0';
WAIT;
END PROCESS t_prcs_A_2;
-- A[1]
t_prcs_A_1: PROCESS
BEGIN
	A(1) <= '0';
WAIT;
END PROCESS t_prcs_A_1;
-- A[0]
t_prcs_A_0: PROCESS
BEGIN
	A(0) <= '0';
WAIT;
END PROCESS t_prcs_A_0;
-- B[3]
t_prcs_B_3: PROCESS
BEGIN
	B(3) <= '0';
WAIT;
END PROCESS t_prcs_B_3;
-- B[2]
t_prcs_B_2: PROCESS
BEGIN
	B(2) <= '0';
WAIT;
END PROCESS t_prcs_B_2;
-- B[1]
t_prcs_B_1: PROCESS
BEGIN
	B(1) <= '1';
WAIT;
END PROCESS t_prcs_B_1;
-- B[0]
t_prcs_B_0: PROCESS
BEGIN
	B(0) <= '1';
WAIT;
END PROCESS t_prcs_B_0;

-- CIN
t_prcs_CIN: PROCESS
BEGIN
	CIN <= '0';
WAIT;
END PROCESS t_prcs_CIN;

-- LESS
t_prcs_LESS: PROCESS
BEGIN
	LESS <= '0';
WAIT;
END PROCESS t_prcs_LESS;
-- SEL[2]
t_prcs_SEL_2: PROCESS
BEGIN
	SEL(2) <= '0';
WAIT;
END PROCESS t_prcs_SEL_2;
-- SEL[1]
t_prcs_SEL_1: PROCESS
BEGIN
	SEL(1) <= '1';
WAIT;
END PROCESS t_prcs_SEL_1;
-- SEL[0]
t_prcs_SEL_0: PROCESS
BEGIN
	SEL(0) <= '0';
WAIT;
END PROCESS t_prcs_SEL_0;
END ALU4_arch;
