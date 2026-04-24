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
-- Generated on "04/24/2026 01:31:50"
                                                             
-- Vhdl Test Bench(with test vectors) for design  :          PCJMP
-- 
-- Simulation tool : 3rd Party
-- 

LIBRARY ieee;                                               
USE ieee.std_logic_1164.all;                                

ENTITY PCJMP_vhd_vec_tst IS
END PCJMP_vhd_vec_tst;
ARCHITECTURE PCJMP_arch OF PCJMP_vhd_vec_tst IS
-- constants                                                 
-- signals                                                   
SIGNAL JMPADDR : STD_LOGIC_VECTOR(11 DOWNTO 0);
SIGNAL JMPOUT : STD_LOGIC_VECTOR(15 DOWNTO 0);
SIGNAL PC : STD_LOGIC_VECTOR(15 DOWNTO 0);
COMPONENT PCJMP
	PORT (
	JMPADDR : IN STD_LOGIC_VECTOR(11 DOWNTO 0);
	JMPOUT : OUT STD_LOGIC_VECTOR(15 DOWNTO 0);
	PC : IN STD_LOGIC_VECTOR(15 DOWNTO 0)
	);
END COMPONENT;
BEGIN
	i1 : PCJMP
	PORT MAP (
-- list connections between master ports and signals
	JMPADDR => JMPADDR,
	JMPOUT => JMPOUT,
	PC => PC
	);
-- JMPADDR[11]
t_prcs_JMPADDR_11: PROCESS
BEGIN
	JMPADDR(11) <= '0';
WAIT;
END PROCESS t_prcs_JMPADDR_11;
-- JMPADDR[10]
t_prcs_JMPADDR_10: PROCESS
BEGIN
	JMPADDR(10) <= '0';
WAIT;
END PROCESS t_prcs_JMPADDR_10;
-- JMPADDR[9]
t_prcs_JMPADDR_9: PROCESS
BEGIN
	JMPADDR(9) <= '0';
WAIT;
END PROCESS t_prcs_JMPADDR_9;
-- JMPADDR[8]
t_prcs_JMPADDR_8: PROCESS
BEGIN
	JMPADDR(8) <= '1';
WAIT;
END PROCESS t_prcs_JMPADDR_8;
-- JMPADDR[7]
t_prcs_JMPADDR_7: PROCESS
BEGIN
	JMPADDR(7) <= '1';
WAIT;
END PROCESS t_prcs_JMPADDR_7;
-- JMPADDR[6]
t_prcs_JMPADDR_6: PROCESS
BEGIN
	JMPADDR(6) <= '1';
WAIT;
END PROCESS t_prcs_JMPADDR_6;
-- JMPADDR[5]
t_prcs_JMPADDR_5: PROCESS
BEGIN
	JMPADDR(5) <= '1';
WAIT;
END PROCESS t_prcs_JMPADDR_5;
-- JMPADDR[4]
t_prcs_JMPADDR_4: PROCESS
BEGIN
	JMPADDR(4) <= '1';
WAIT;
END PROCESS t_prcs_JMPADDR_4;
-- JMPADDR[3]
t_prcs_JMPADDR_3: PROCESS
BEGIN
	JMPADDR(3) <= '1';
WAIT;
END PROCESS t_prcs_JMPADDR_3;
-- JMPADDR[2]
t_prcs_JMPADDR_2: PROCESS
BEGIN
	JMPADDR(2) <= '1';
WAIT;
END PROCESS t_prcs_JMPADDR_2;
-- JMPADDR[1]
t_prcs_JMPADDR_1: PROCESS
BEGIN
	JMPADDR(1) <= '1';
WAIT;
END PROCESS t_prcs_JMPADDR_1;
-- JMPADDR[0]
t_prcs_JMPADDR_0: PROCESS
BEGIN
	JMPADDR(0) <= '1';
WAIT;
END PROCESS t_prcs_JMPADDR_0;
-- PC[15]
t_prcs_PC_15: PROCESS
BEGIN
	PC(15) <= '1';
WAIT;
END PROCESS t_prcs_PC_15;
-- PC[14]
t_prcs_PC_14: PROCESS
BEGIN
	PC(14) <= '1';
WAIT;
END PROCESS t_prcs_PC_14;
-- PC[13]
t_prcs_PC_13: PROCESS
BEGIN
	PC(13) <= '1';
WAIT;
END PROCESS t_prcs_PC_13;
-- PC[12]
t_prcs_PC_12: PROCESS
BEGIN
	PC(12) <= '0';
WAIT;
END PROCESS t_prcs_PC_12;
-- PC[11]
t_prcs_PC_11: PROCESS
BEGIN
	PC(11) <= '0';
WAIT;
END PROCESS t_prcs_PC_11;
-- PC[10]
t_prcs_PC_10: PROCESS
BEGIN
	PC(10) <= '0';
WAIT;
END PROCESS t_prcs_PC_10;
-- PC[9]
t_prcs_PC_9: PROCESS
BEGIN
	PC(9) <= '0';
WAIT;
END PROCESS t_prcs_PC_9;
-- PC[8]
t_prcs_PC_8: PROCESS
BEGIN
	PC(8) <= '0';
WAIT;
END PROCESS t_prcs_PC_8;
-- PC[7]
t_prcs_PC_7: PROCESS
BEGIN
	PC(7) <= '0';
WAIT;
END PROCESS t_prcs_PC_7;
-- PC[6]
t_prcs_PC_6: PROCESS
BEGIN
	PC(6) <= '0';
WAIT;
END PROCESS t_prcs_PC_6;
-- PC[5]
t_prcs_PC_5: PROCESS
BEGIN
	PC(5) <= '1';
WAIT;
END PROCESS t_prcs_PC_5;
-- PC[4]
t_prcs_PC_4: PROCESS
BEGIN
	PC(4) <= '0';
WAIT;
END PROCESS t_prcs_PC_4;
-- PC[3]
t_prcs_PC_3: PROCESS
BEGIN
	PC(3) <= '0';
	WAIT FOR 800000 ps;
	PC(3) <= '1';
WAIT;
END PROCESS t_prcs_PC_3;
-- PC[2]
t_prcs_PC_2: PROCESS
BEGIN
	PC(2) <= '0';
	WAIT FOR 400000 ps;
	PC(2) <= '1';
	WAIT FOR 400000 ps;
	PC(2) <= '0';
WAIT;
END PROCESS t_prcs_PC_2;
-- PC[1]
t_prcs_PC_1: PROCESS
BEGIN
	FOR i IN 1 TO 2
	LOOP
		PC(1) <= '0';
		WAIT FOR 200000 ps;
		PC(1) <= '1';
		WAIT FOR 200000 ps;
	END LOOP;
	PC(1) <= '0';
WAIT;
END PROCESS t_prcs_PC_1;
-- PC[0]
t_prcs_PC_0: PROCESS
BEGIN
LOOP
	PC(0) <= '0';
	WAIT FOR 100000 ps;
	PC(0) <= '1';
	WAIT FOR 100000 ps;
	IF (NOW >= 1000000 ps) THEN WAIT; END IF;
END LOOP;
END PROCESS t_prcs_PC_0;
END PCJMP_arch;
