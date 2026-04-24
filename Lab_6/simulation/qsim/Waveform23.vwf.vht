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
-- Generated on "04/23/2026 23:38:58"
                                                             
-- Vhdl Test Bench(with test vectors) for design  :          ADD16
-- 
-- Simulation tool : 3rd Party
-- 

LIBRARY ieee;                                               
USE ieee.std_logic_1164.all;                                

ENTITY ADD16_vhd_vec_tst IS
END ADD16_vhd_vec_tst;
ARCHITECTURE ADD16_arch OF ADD16_vhd_vec_tst IS
-- constants                                                 
-- signals                                                   
SIGNAL Ai : STD_LOGIC_VECTOR(15 DOWNTO 0);
SIGNAL Bi : STD_LOGIC_VECTOR(15 DOWNTO 0);
SIGNAL S : STD_LOGIC_VECTOR(15 DOWNTO 0);
COMPONENT ADD16
	PORT (
	Ai : IN STD_LOGIC_VECTOR(15 DOWNTO 0);
	Bi : IN STD_LOGIC_VECTOR(15 DOWNTO 0);
	S : BUFFER STD_LOGIC_VECTOR(15 DOWNTO 0)
	);
END COMPONENT;
BEGIN
	i1 : ADD16
	PORT MAP (
-- list connections between master ports and signals
	Ai => Ai,
	Bi => Bi,
	S => S
	);
-- Ai[15]
t_prcs_Ai_15: PROCESS
BEGIN
	Ai(15) <= '0';
	WAIT FOR 50000 ps;
	Ai(15) <= '1';
	WAIT FOR 50000 ps;
	Ai(15) <= '0';
	WAIT FOR 250000 ps;
	Ai(15) <= '1';
	WAIT FOR 100000 ps;
	Ai(15) <= '0';
	WAIT FOR 200000 ps;
	Ai(15) <= '1';
	WAIT FOR 100000 ps;
	Ai(15) <= '0';
WAIT;
END PROCESS t_prcs_Ai_15;
-- Ai[14]
t_prcs_Ai_14: PROCESS
BEGIN
	Ai(14) <= '0';
	WAIT FOR 50000 ps;
	Ai(14) <= '1';
	WAIT FOR 50000 ps;
	Ai(14) <= '0';
	WAIT FOR 50000 ps;
	Ai(14) <= '1';
	WAIT FOR 100000 ps;
	Ai(14) <= '0';
	WAIT FOR 50000 ps;
	Ai(14) <= '1';
	WAIT FOR 50000 ps;
	Ai(14) <= '0';
	WAIT FOR 50000 ps;
	Ai(14) <= '1';
	WAIT FOR 150000 ps;
	Ai(14) <= '0';
	WAIT FOR 100000 ps;
	Ai(14) <= '1';
	WAIT FOR 50000 ps;
	Ai(14) <= '0';
	WAIT FOR 100000 ps;
	Ai(14) <= '1';
	WAIT FOR 50000 ps;
	Ai(14) <= '0';
WAIT;
END PROCESS t_prcs_Ai_14;
-- Ai[13]
t_prcs_Ai_13: PROCESS
BEGIN
	Ai(13) <= '1';
	WAIT FOR 150000 ps;
	Ai(13) <= '0';
	WAIT FOR 300000 ps;
	Ai(13) <= '1';
	WAIT FOR 50000 ps;
	Ai(13) <= '0';
	WAIT FOR 150000 ps;
	Ai(13) <= '1';
	WAIT FOR 200000 ps;
	Ai(13) <= '0';
	WAIT FOR 50000 ps;
	Ai(13) <= '1';
WAIT;
END PROCESS t_prcs_Ai_13;
-- Ai[12]
t_prcs_Ai_12: PROCESS
BEGIN
	Ai(12) <= '1';
	WAIT FOR 150000 ps;
	Ai(12) <= '0';
	WAIT FOR 50000 ps;
	Ai(12) <= '1';
	WAIT FOR 50000 ps;
	Ai(12) <= '0';
	WAIT FOR 50000 ps;
	Ai(12) <= '1';
	WAIT FOR 50000 ps;
	Ai(12) <= '0';
	WAIT FOR 50000 ps;
	Ai(12) <= '1';
	WAIT FOR 150000 ps;
	Ai(12) <= '0';
	WAIT FOR 50000 ps;
	Ai(12) <= '1';
	WAIT FOR 50000 ps;
	Ai(12) <= '0';
	WAIT FOR 50000 ps;
	Ai(12) <= '1';
	WAIT FOR 200000 ps;
	Ai(12) <= '0';
	WAIT FOR 50000 ps;
	Ai(12) <= '1';
WAIT;
END PROCESS t_prcs_Ai_12;
-- Ai[11]
t_prcs_Ai_11: PROCESS
BEGIN
	Ai(11) <= '0';
	WAIT FOR 50000 ps;
	Ai(11) <= '1';
	WAIT FOR 100000 ps;
	Ai(11) <= '0';
	WAIT FOR 150000 ps;
	Ai(11) <= '1';
	WAIT FOR 100000 ps;
	Ai(11) <= '0';
	WAIT FOR 50000 ps;
	Ai(11) <= '1';
	WAIT FOR 200000 ps;
	Ai(11) <= '0';
	WAIT FOR 100000 ps;
	Ai(11) <= '1';
	WAIT FOR 200000 ps;
	Ai(11) <= '0';
WAIT;
END PROCESS t_prcs_Ai_11;
-- Ai[10]
t_prcs_Ai_10: PROCESS
BEGIN
	Ai(10) <= '1';
	WAIT FOR 100000 ps;
	Ai(10) <= '0';
	WAIT FOR 50000 ps;
	Ai(10) <= '1';
	WAIT FOR 50000 ps;
	Ai(10) <= '0';
	WAIT FOR 150000 ps;
	Ai(10) <= '1';
	WAIT FOR 100000 ps;
	Ai(10) <= '0';
	WAIT FOR 150000 ps;
	Ai(10) <= '1';
	WAIT FOR 100000 ps;
	Ai(10) <= '0';
	WAIT FOR 100000 ps;
	Ai(10) <= '1';
	WAIT FOR 50000 ps;
	Ai(10) <= '0';
	WAIT FOR 50000 ps;
	Ai(10) <= '1';
WAIT;
END PROCESS t_prcs_Ai_10;
-- Ai[9]
t_prcs_Ai_9: PROCESS
BEGIN
	Ai(9) <= '0';
	WAIT FOR 50000 ps;
	Ai(9) <= '1';
	WAIT FOR 50000 ps;
	Ai(9) <= '0';
	WAIT FOR 100000 ps;
	Ai(9) <= '1';
	WAIT FOR 50000 ps;
	Ai(9) <= '0';
	WAIT FOR 50000 ps;
	Ai(9) <= '1';
	WAIT FOR 350000 ps;
	Ai(9) <= '0';
	WAIT FOR 50000 ps;
	Ai(9) <= '1';
	WAIT FOR 50000 ps;
	Ai(9) <= '0';
	WAIT FOR 150000 ps;
	Ai(9) <= '1';
	WAIT FOR 50000 ps;
	Ai(9) <= '0';
WAIT;
END PROCESS t_prcs_Ai_9;
-- Ai[8]
t_prcs_Ai_8: PROCESS
BEGIN
	Ai(8) <= '0';
	WAIT FOR 50000 ps;
	Ai(8) <= '1';
	WAIT FOR 150000 ps;
	Ai(8) <= '0';
	WAIT FOR 50000 ps;
	Ai(8) <= '1';
	WAIT FOR 200000 ps;
	Ai(8) <= '0';
	WAIT FOR 50000 ps;
	Ai(8) <= '1';
	WAIT FOR 50000 ps;
	Ai(8) <= '0';
	WAIT FOR 100000 ps;
	Ai(8) <= '1';
	WAIT FOR 50000 ps;
	Ai(8) <= '0';
	WAIT FOR 200000 ps;
	Ai(8) <= '1';
	WAIT FOR 50000 ps;
	Ai(8) <= '0';
WAIT;
END PROCESS t_prcs_Ai_8;
-- Ai[7]
t_prcs_Ai_7: PROCESS
BEGIN
	Ai(7) <= '0';
	WAIT FOR 50000 ps;
	Ai(7) <= '1';
	WAIT FOR 200000 ps;
	Ai(7) <= '0';
	WAIT FOR 100000 ps;
	Ai(7) <= '1';
	WAIT FOR 100000 ps;
	Ai(7) <= '0';
	WAIT FOR 50000 ps;
	Ai(7) <= '1';
	WAIT FOR 50000 ps;
	Ai(7) <= '0';
	WAIT FOR 150000 ps;
	Ai(7) <= '1';
	WAIT FOR 50000 ps;
	Ai(7) <= '0';
	WAIT FOR 50000 ps;
	Ai(7) <= '1';
	WAIT FOR 50000 ps;
	Ai(7) <= '0';
WAIT;
END PROCESS t_prcs_Ai_7;
-- Ai[6]
t_prcs_Ai_6: PROCESS
BEGIN
	Ai(6) <= '1';
	WAIT FOR 250000 ps;
	Ai(6) <= '0';
	WAIT FOR 150000 ps;
	Ai(6) <= '1';
	WAIT FOR 50000 ps;
	Ai(6) <= '0';
	WAIT FOR 150000 ps;
	Ai(6) <= '1';
	WAIT FOR 50000 ps;
	Ai(6) <= '0';
	WAIT FOR 100000 ps;
	Ai(6) <= '1';
	WAIT FOR 50000 ps;
	Ai(6) <= '0';
	WAIT FOR 50000 ps;
	Ai(6) <= '1';
	WAIT FOR 50000 ps;
	Ai(6) <= '0';
	WAIT FOR 50000 ps;
	Ai(6) <= '1';
WAIT;
END PROCESS t_prcs_Ai_6;
-- Ai[5]
t_prcs_Ai_5: PROCESS
BEGIN
	Ai(5) <= '0';
	WAIT FOR 50000 ps;
	Ai(5) <= '1';
	WAIT FOR 50000 ps;
	Ai(5) <= '0';
	WAIT FOR 50000 ps;
	Ai(5) <= '1';
	WAIT FOR 150000 ps;
	Ai(5) <= '0';
	WAIT FOR 200000 ps;
	Ai(5) <= '1';
	WAIT FOR 100000 ps;
	Ai(5) <= '0';
	WAIT FOR 150000 ps;
	Ai(5) <= '1';
	WAIT FOR 50000 ps;
	Ai(5) <= '0';
	WAIT FOR 100000 ps;
	Ai(5) <= '1';
	WAIT FOR 50000 ps;
	Ai(5) <= '0';
WAIT;
END PROCESS t_prcs_Ai_5;
-- Ai[4]
t_prcs_Ai_4: PROCESS
BEGIN
	Ai(4) <= '0';
	WAIT FOR 50000 ps;
	Ai(4) <= '1';
	WAIT FOR 150000 ps;
	Ai(4) <= '0';
	WAIT FOR 50000 ps;
	Ai(4) <= '1';
	WAIT FOR 150000 ps;
	Ai(4) <= '0';
	WAIT FOR 50000 ps;
	Ai(4) <= '1';
	WAIT FOR 50000 ps;
	Ai(4) <= '0';
	WAIT FOR 50000 ps;
	Ai(4) <= '1';
	WAIT FOR 50000 ps;
	Ai(4) <= '0';
	WAIT FOR 50000 ps;
	Ai(4) <= '1';
	WAIT FOR 100000 ps;
	Ai(4) <= '0';
	WAIT FOR 50000 ps;
	Ai(4) <= '1';
	WAIT FOR 50000 ps;
	Ai(4) <= '0';
	WAIT FOR 50000 ps;
	Ai(4) <= '1';
	WAIT FOR 50000 ps;
	Ai(4) <= '0';
WAIT;
END PROCESS t_prcs_Ai_4;
-- Ai[3]
t_prcs_Ai_3: PROCESS
BEGIN
	Ai(3) <= '0';
	WAIT FOR 50000 ps;
	Ai(3) <= '1';
	WAIT FOR 100000 ps;
	Ai(3) <= '0';
	WAIT FOR 50000 ps;
	Ai(3) <= '1';
	WAIT FOR 50000 ps;
	Ai(3) <= '0';
	WAIT FOR 50000 ps;
	Ai(3) <= '1';
	WAIT FOR 50000 ps;
	Ai(3) <= '0';
	WAIT FOR 50000 ps;
	Ai(3) <= '1';
	WAIT FOR 300000 ps;
	Ai(3) <= '0';
	WAIT FOR 50000 ps;
	Ai(3) <= '1';
	WAIT FOR 50000 ps;
	Ai(3) <= '0';
WAIT;
END PROCESS t_prcs_Ai_3;
-- Ai[2]
t_prcs_Ai_2: PROCESS
BEGIN
	Ai(2) <= '1';
	WAIT FOR 100000 ps;
	Ai(2) <= '0';
	WAIT FOR 50000 ps;
	Ai(2) <= '1';
	WAIT FOR 100000 ps;
	Ai(2) <= '0';
	WAIT FOR 100000 ps;
	Ai(2) <= '1';
	WAIT FOR 50000 ps;
	Ai(2) <= '0';
	WAIT FOR 50000 ps;
	Ai(2) <= '1';
	WAIT FOR 100000 ps;
	Ai(2) <= '0';
	WAIT FOR 100000 ps;
	Ai(2) <= '1';
	WAIT FOR 50000 ps;
	Ai(2) <= '0';
	WAIT FOR 100000 ps;
	Ai(2) <= '1';
	WAIT FOR 50000 ps;
	Ai(2) <= '0';
	WAIT FOR 50000 ps;
	Ai(2) <= '1';
WAIT;
END PROCESS t_prcs_Ai_2;
-- Ai[1]
t_prcs_Ai_1: PROCESS
BEGIN
	Ai(1) <= '1';
	WAIT FOR 100000 ps;
	Ai(1) <= '0';
	WAIT FOR 50000 ps;
	Ai(1) <= '1';
	WAIT FOR 50000 ps;
	Ai(1) <= '0';
	WAIT FOR 50000 ps;
	Ai(1) <= '1';
	WAIT FOR 50000 ps;
	Ai(1) <= '0';
	WAIT FOR 50000 ps;
	Ai(1) <= '1';
	WAIT FOR 100000 ps;
	Ai(1) <= '0';
	WAIT FOR 200000 ps;
	Ai(1) <= '1';
	WAIT FOR 50000 ps;
	Ai(1) <= '0';
	WAIT FOR 50000 ps;
	Ai(1) <= '1';
	WAIT FOR 50000 ps;
	Ai(1) <= '0';
	WAIT FOR 50000 ps;
	Ai(1) <= '1';
	WAIT FOR 50000 ps;
	Ai(1) <= '0';
	WAIT FOR 50000 ps;
	Ai(1) <= '1';
WAIT;
END PROCESS t_prcs_Ai_1;
-- Ai[0]
t_prcs_Ai_0: PROCESS
BEGIN
	Ai(0) <= '0';
	WAIT FOR 50000 ps;
	Ai(0) <= '1';
	WAIT FOR 150000 ps;
	Ai(0) <= '0';
	WAIT FOR 50000 ps;
	Ai(0) <= '1';
	WAIT FOR 100000 ps;
	Ai(0) <= '0';
	WAIT FOR 50000 ps;
	Ai(0) <= '1';
	WAIT FOR 100000 ps;
	Ai(0) <= '0';
	WAIT FOR 100000 ps;
	Ai(0) <= '1';
	WAIT FOR 250000 ps;
	Ai(0) <= '0';
WAIT;
END PROCESS t_prcs_Ai_0;
-- Bi[15]
t_prcs_Bi_15: PROCESS
BEGIN
	Bi(15) <= '1';
	WAIT FOR 50000 ps;
	Bi(15) <= '0';
	WAIT FOR 50000 ps;
	Bi(15) <= '1';
	WAIT FOR 200000 ps;
	Bi(15) <= '0';
	WAIT FOR 50000 ps;
	Bi(15) <= '1';
	WAIT FOR 100000 ps;
	Bi(15) <= '0';
	WAIT FOR 50000 ps;
	Bi(15) <= '1';
	WAIT FOR 150000 ps;
	Bi(15) <= '0';
	WAIT FOR 50000 ps;
	Bi(15) <= '1';
	WAIT FOR 50000 ps;
	Bi(15) <= '0';
	WAIT FOR 100000 ps;
	Bi(15) <= '1';
WAIT;
END PROCESS t_prcs_Bi_15;
-- Bi[14]
t_prcs_Bi_14: PROCESS
BEGIN
	Bi(14) <= '0';
	WAIT FOR 100000 ps;
	Bi(14) <= '1';
	WAIT FOR 150000 ps;
	Bi(14) <= '0';
	WAIT FOR 50000 ps;
	Bi(14) <= '1';
	WAIT FOR 100000 ps;
	Bi(14) <= '0';
	WAIT FOR 50000 ps;
	Bi(14) <= '1';
	WAIT FOR 150000 ps;
	Bi(14) <= '0';
	WAIT FOR 50000 ps;
	Bi(14) <= '1';
	WAIT FOR 100000 ps;
	Bi(14) <= '0';
	WAIT FOR 50000 ps;
	Bi(14) <= '1';
	WAIT FOR 50000 ps;
	Bi(14) <= '0';
WAIT;
END PROCESS t_prcs_Bi_14;
-- Bi[13]
t_prcs_Bi_13: PROCESS
BEGIN
	Bi(13) <= '0';
	WAIT FOR 150000 ps;
	Bi(13) <= '1';
	WAIT FOR 50000 ps;
	Bi(13) <= '0';
	WAIT FOR 200000 ps;
	Bi(13) <= '1';
	WAIT FOR 50000 ps;
	Bi(13) <= '0';
	WAIT FOR 100000 ps;
	Bi(13) <= '1';
	WAIT FOR 250000 ps;
	Bi(13) <= '0';
WAIT;
END PROCESS t_prcs_Bi_13;
-- Bi[12]
t_prcs_Bi_12: PROCESS
BEGIN
	Bi(12) <= '0';
	WAIT FOR 200000 ps;
	Bi(12) <= '1';
	WAIT FOR 100000 ps;
	Bi(12) <= '0';
	WAIT FOR 200000 ps;
	Bi(12) <= '1';
	WAIT FOR 150000 ps;
	Bi(12) <= '0';
	WAIT FOR 100000 ps;
	Bi(12) <= '1';
	WAIT FOR 50000 ps;
	Bi(12) <= '0';
	WAIT FOR 50000 ps;
	Bi(12) <= '1';
WAIT;
END PROCESS t_prcs_Bi_12;
-- Bi[11]
t_prcs_Bi_11: PROCESS
BEGIN
	Bi(11) <= '0';
	WAIT FOR 100000 ps;
	Bi(11) <= '1';
	WAIT FOR 150000 ps;
	Bi(11) <= '0';
	WAIT FOR 50000 ps;
	Bi(11) <= '1';
	WAIT FOR 50000 ps;
	Bi(11) <= '0';
	WAIT FOR 250000 ps;
	Bi(11) <= '1';
	WAIT FOR 50000 ps;
	Bi(11) <= '0';
	WAIT FOR 250000 ps;
	Bi(11) <= '1';
WAIT;
END PROCESS t_prcs_Bi_11;
-- Bi[10]
t_prcs_Bi_10: PROCESS
BEGIN
	Bi(10) <= '0';
	WAIT FOR 450000 ps;
	Bi(10) <= '1';
	WAIT FOR 100000 ps;
	Bi(10) <= '0';
	WAIT FOR 50000 ps;
	Bi(10) <= '1';
	WAIT FOR 50000 ps;
	Bi(10) <= '0';
	WAIT FOR 50000 ps;
	Bi(10) <= '1';
	WAIT FOR 50000 ps;
	Bi(10) <= '0';
WAIT;
END PROCESS t_prcs_Bi_10;
-- Bi[9]
t_prcs_Bi_9: PROCESS
BEGIN
	Bi(9) <= '0';
	WAIT FOR 100000 ps;
	Bi(9) <= '1';
	WAIT FOR 50000 ps;
	Bi(9) <= '0';
	WAIT FOR 50000 ps;
	Bi(9) <= '1';
	WAIT FOR 100000 ps;
	Bi(9) <= '0';
	WAIT FOR 200000 ps;
	Bi(9) <= '1';
	WAIT FOR 50000 ps;
	Bi(9) <= '0';
	WAIT FOR 100000 ps;
	Bi(9) <= '1';
	WAIT FOR 150000 ps;
	Bi(9) <= '0';
WAIT;
END PROCESS t_prcs_Bi_9;
-- Bi[8]
t_prcs_Bi_8: PROCESS
BEGIN
	Bi(8) <= '1';
	WAIT FOR 50000 ps;
	Bi(8) <= '0';
	WAIT FOR 100000 ps;
	Bi(8) <= '1';
	WAIT FOR 50000 ps;
	Bi(8) <= '0';
	WAIT FOR 100000 ps;
	Bi(8) <= '1';
	WAIT FOR 50000 ps;
	Bi(8) <= '0';
	WAIT FOR 150000 ps;
	Bi(8) <= '1';
	WAIT FOR 100000 ps;
	Bi(8) <= '0';
	WAIT FOR 50000 ps;
	Bi(8) <= '1';
	WAIT FOR 50000 ps;
	Bi(8) <= '0';
	WAIT FOR 50000 ps;
	Bi(8) <= '1';
WAIT;
END PROCESS t_prcs_Bi_8;
-- Bi[7]
t_prcs_Bi_7: PROCESS
BEGIN
	Bi(7) <= '1';
	WAIT FOR 50000 ps;
	Bi(7) <= '0';
	WAIT FOR 50000 ps;
	Bi(7) <= '1';
	WAIT FOR 50000 ps;
	Bi(7) <= '0';
	WAIT FOR 50000 ps;
	Bi(7) <= '1';
	WAIT FOR 100000 ps;
	Bi(7) <= '0';
	WAIT FOR 50000 ps;
	Bi(7) <= '1';
	WAIT FOR 200000 ps;
	Bi(7) <= '0';
	WAIT FOR 50000 ps;
	Bi(7) <= '1';
	WAIT FOR 50000 ps;
	Bi(7) <= '0';
	WAIT FOR 50000 ps;
	Bi(7) <= '1';
	WAIT FOR 50000 ps;
	Bi(7) <= '0';
	WAIT FOR 100000 ps;
	Bi(7) <= '1';
	WAIT FOR 100000 ps;
	Bi(7) <= '0';
WAIT;
END PROCESS t_prcs_Bi_7;
-- Bi[6]
t_prcs_Bi_6: PROCESS
BEGIN
	Bi(6) <= '1';
	WAIT FOR 50000 ps;
	Bi(6) <= '0';
	WAIT FOR 100000 ps;
	Bi(6) <= '1';
	WAIT FOR 300000 ps;
	Bi(6) <= '0';
	WAIT FOR 100000 ps;
	Bi(6) <= '1';
	WAIT FOR 50000 ps;
	Bi(6) <= '0';
	WAIT FOR 150000 ps;
	Bi(6) <= '1';
	WAIT FOR 100000 ps;
	Bi(6) <= '0';
	WAIT FOR 50000 ps;
	Bi(6) <= '1';
WAIT;
END PROCESS t_prcs_Bi_6;
-- Bi[5]
t_prcs_Bi_5: PROCESS
BEGIN
	Bi(5) <= '0';
	WAIT FOR 100000 ps;
	Bi(5) <= '1';
	WAIT FOR 150000 ps;
	Bi(5) <= '0';
	WAIT FOR 150000 ps;
	Bi(5) <= '1';
	WAIT FOR 100000 ps;
	Bi(5) <= '0';
	WAIT FOR 50000 ps;
	Bi(5) <= '1';
	WAIT FOR 100000 ps;
	Bi(5) <= '0';
	WAIT FOR 50000 ps;
	Bi(5) <= '1';
	WAIT FOR 150000 ps;
	Bi(5) <= '0';
	WAIT FOR 100000 ps;
	Bi(5) <= '1';
WAIT;
END PROCESS t_prcs_Bi_5;
-- Bi[4]
t_prcs_Bi_4: PROCESS
BEGIN
	Bi(4) <= '1';
	WAIT FOR 50000 ps;
	Bi(4) <= '0';
	WAIT FOR 150000 ps;
	Bi(4) <= '1';
	WAIT FOR 50000 ps;
	Bi(4) <= '0';
	WAIT FOR 200000 ps;
	Bi(4) <= '1';
	WAIT FOR 200000 ps;
	Bi(4) <= '0';
	WAIT FOR 50000 ps;
	Bi(4) <= '1';
	WAIT FOR 200000 ps;
	Bi(4) <= '0';
WAIT;
END PROCESS t_prcs_Bi_4;
-- Bi[3]
t_prcs_Bi_3: PROCESS
BEGIN
	Bi(3) <= '1';
	WAIT FOR 50000 ps;
	Bi(3) <= '0';
	WAIT FOR 50000 ps;
	Bi(3) <= '1';
	WAIT FOR 100000 ps;
	Bi(3) <= '0';
	WAIT FOR 50000 ps;
	Bi(3) <= '1';
	WAIT FOR 100000 ps;
	Bi(3) <= '0';
	WAIT FOR 100000 ps;
	Bi(3) <= '1';
	WAIT FOR 100000 ps;
	Bi(3) <= '0';
	WAIT FOR 50000 ps;
	Bi(3) <= '1';
	WAIT FOR 100000 ps;
	Bi(3) <= '0';
	WAIT FOR 150000 ps;
	Bi(3) <= '1';
	WAIT FOR 100000 ps;
	Bi(3) <= '0';
WAIT;
END PROCESS t_prcs_Bi_3;
-- Bi[2]
t_prcs_Bi_2: PROCESS
BEGIN
	Bi(2) <= '1';
	WAIT FOR 50000 ps;
	Bi(2) <= '0';
	WAIT FOR 50000 ps;
	Bi(2) <= '1';
	WAIT FOR 50000 ps;
	Bi(2) <= '0';
	WAIT FOR 100000 ps;
	Bi(2) <= '1';
	WAIT FOR 100000 ps;
	Bi(2) <= '0';
	WAIT FOR 50000 ps;
	Bi(2) <= '1';
	WAIT FOR 50000 ps;
	Bi(2) <= '0';
	WAIT FOR 50000 ps;
	Bi(2) <= '1';
	WAIT FOR 100000 ps;
	Bi(2) <= '0';
	WAIT FOR 50000 ps;
	Bi(2) <= '1';
	WAIT FOR 150000 ps;
	Bi(2) <= '0';
	WAIT FOR 100000 ps;
	Bi(2) <= '1';
WAIT;
END PROCESS t_prcs_Bi_2;
-- Bi[1]
t_prcs_Bi_1: PROCESS
BEGIN
	Bi(1) <= '0';
	WAIT FOR 50000 ps;
	Bi(1) <= '1';
	WAIT FOR 100000 ps;
	Bi(1) <= '0';
	WAIT FOR 50000 ps;
	Bi(1) <= '1';
	WAIT FOR 50000 ps;
	Bi(1) <= '0';
	WAIT FOR 50000 ps;
	Bi(1) <= '1';
	WAIT FOR 200000 ps;
	Bi(1) <= '0';
	WAIT FOR 50000 ps;
	Bi(1) <= '1';
	WAIT FOR 50000 ps;
	Bi(1) <= '0';
	WAIT FOR 50000 ps;
	Bi(1) <= '1';
	WAIT FOR 50000 ps;
	Bi(1) <= '0';
	WAIT FOR 50000 ps;
	Bi(1) <= '1';
	WAIT FOR 150000 ps;
	Bi(1) <= '0';
	WAIT FOR 50000 ps;
	Bi(1) <= '1';
WAIT;
END PROCESS t_prcs_Bi_1;
-- Bi[0]
t_prcs_Bi_0: PROCESS
BEGIN
	Bi(0) <= '1';
	WAIT FOR 100000 ps;
	Bi(0) <= '0';
	WAIT FOR 150000 ps;
	Bi(0) <= '1';
	WAIT FOR 100000 ps;
	Bi(0) <= '0';
	WAIT FOR 150000 ps;
	Bi(0) <= '1';
	WAIT FOR 50000 ps;
	Bi(0) <= '0';
	WAIT FOR 50000 ps;
	Bi(0) <= '1';
	WAIT FOR 100000 ps;
	Bi(0) <= '0';
	WAIT FOR 50000 ps;
	Bi(0) <= '1';
	WAIT FOR 100000 ps;
	Bi(0) <= '0';
	WAIT FOR 50000 ps;
	Bi(0) <= '1';
WAIT;
END PROCESS t_prcs_Bi_0;
END ADD16_arch;
