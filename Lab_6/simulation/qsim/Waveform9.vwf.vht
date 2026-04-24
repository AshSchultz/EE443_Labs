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
-- Generated on "04/20/2026 13:53:26"
                                                             
-- Vhdl Test Bench(with test vectors) for design  :          DCD5X32
-- 
-- Simulation tool : 3rd Party
-- 

LIBRARY ieee;                                               
USE ieee.std_logic_1164.all;                                

ENTITY DCD5X32_vhd_vec_tst IS
END DCD5X32_vhd_vec_tst;
ARCHITECTURE DCD5X32_arch OF DCD5X32_vhd_vec_tst IS
-- constants                                                 
-- signals                                                   
SIGNAL ADDR : STD_LOGIC_VECTOR(4 DOWNTO 0);
SIGNAL DOUT : STD_LOGIC_VECTOR(31 DOWNTO 0);
SIGNAL EN : STD_LOGIC_VECTOR(3 DOWNTO 0);
COMPONENT DCD5X32
	PORT (
	ADDR : IN STD_LOGIC_VECTOR(4 DOWNTO 0);
	DOUT : OUT STD_LOGIC_VECTOR(31 DOWNTO 0);
	EN : OUT STD_LOGIC_VECTOR(3 DOWNTO 0)
	);
END COMPONENT;
BEGIN
	i1 : DCD5X32
	PORT MAP (
-- list connections between master ports and signals
	ADDR => ADDR,
	DOUT => DOUT,
	EN => EN
	);
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
WAIT;
END PROCESS t_prcs_ADDR_1;
-- ADDR[0]
t_prcs_ADDR_0: PROCESS
BEGIN
	ADDR(0) <= '0';
WAIT;
END PROCESS t_prcs_ADDR_0;
END DCD5X32_arch;
