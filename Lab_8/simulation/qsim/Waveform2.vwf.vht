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
-- Generated on "04/24/2026 14:11:46"
                                                             
-- Vhdl Test Bench(with test vectors) for design  :          CONTROL
-- 
-- Simulation tool : 3rd Party
-- 

LIBRARY ieee;                                               
USE ieee.std_logic_1164.all;                                

ENTITY CONTROL_vhd_vec_tst IS
END CONTROL_vhd_vec_tst;
ARCHITECTURE CONTROL_arch OF CONTROL_vhd_vec_tst IS
-- constants                                                 
-- signals                                                   
SIGNAL ALUCon : STD_LOGIC;
SIGNAL ALUOp : STD_LOGIC_VECTOR(2 DOWNTO 0);
SIGNAL ALUSrc : STD_LOGIC;
SIGNAL Branch : STD_LOGIC;
SIGNAL INS_OP : STD_LOGIC_VECTOR(3 DOWNTO 0);
SIGNAL Jump : STD_LOGIC;
SIGNAL MemRead : STD_LOGIC;
SIGNAL MemtoReg : STD_LOGIC;
SIGNAL MemWrite : STD_LOGIC;
SIGNAL RegDst : STD_LOGIC;
SIGNAL RegWrite : STD_LOGIC;
SIGNAL ZERO : STD_LOGIC;
COMPONENT CONTROL
	PORT (
	ALUCon : OUT STD_LOGIC;
	ALUOp : OUT STD_LOGIC_VECTOR(2 DOWNTO 0);
	ALUSrc : OUT STD_LOGIC;
	Branch : OUT STD_LOGIC;
	INS_OP : IN STD_LOGIC_VECTOR(3 DOWNTO 0);
	Jump : OUT STD_LOGIC;
	MemRead : OUT STD_LOGIC;
	MemtoReg : OUT STD_LOGIC;
	MemWrite : OUT STD_LOGIC;
	RegDst : OUT STD_LOGIC;
	RegWrite : OUT STD_LOGIC;
	ZERO : IN STD_LOGIC
	);
END COMPONENT;
BEGIN
	i1 : CONTROL
	PORT MAP (
-- list connections between master ports and signals
	ALUCon => ALUCon,
	ALUOp => ALUOp,
	ALUSrc => ALUSrc,
	Branch => Branch,
	INS_OP => INS_OP,
	Jump => Jump,
	MemRead => MemRead,
	MemtoReg => MemtoReg,
	MemWrite => MemWrite,
	RegDst => RegDst,
	RegWrite => RegWrite,
	ZERO => ZERO
	);
-- INS_OP[3]
t_prcs_INS_OP_3: PROCESS
BEGIN
	INS_OP(3) <= '0';
	WAIT FOR 150000 ps;
	INS_OP(3) <= '1';
	WAIT FOR 250000 ps;
	INS_OP(3) <= '0';
WAIT;
END PROCESS t_prcs_INS_OP_3;
-- INS_OP[2]
t_prcs_INS_OP_2: PROCESS
BEGIN
	INS_OP(2) <= '0';
	WAIT FOR 280000 ps;
	INS_OP(2) <= '1';
	WAIT FOR 210000 ps;
	INS_OP(2) <= '0';
WAIT;
END PROCESS t_prcs_INS_OP_2;
-- INS_OP[1]
t_prcs_INS_OP_1: PROCESS
BEGIN
	INS_OP(1) <= '0';
	WAIT FOR 150000 ps;
	INS_OP(1) <= '1';
	WAIT FOR 250000 ps;
	INS_OP(1) <= '0';
	WAIT FOR 90000 ps;
	INS_OP(1) <= '1';
	WAIT FOR 100000 ps;
	INS_OP(1) <= '0';
WAIT;
END PROCESS t_prcs_INS_OP_1;
-- INS_OP[0]
t_prcs_INS_OP_0: PROCESS
BEGIN
	INS_OP(0) <= '0';
	WAIT FOR 150000 ps;
	INS_OP(0) <= '1';
	WAIT FOR 250000 ps;
	INS_OP(0) <= '0';
WAIT;
END PROCESS t_prcs_INS_OP_0;

-- ZERO
t_prcs_ZERO: PROCESS
BEGIN
	ZERO <= '0';
	WAIT FOR 440000 ps;
	ZERO <= '1';
	WAIT FOR 50000 ps;
	ZERO <= '0';
WAIT;
END PROCESS t_prcs_ZERO;
END CONTROL_arch;
