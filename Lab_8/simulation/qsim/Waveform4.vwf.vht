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
-- Generated on "04/24/2026 21:47:52"
                                                             
-- Vhdl Test Bench(with test vectors) for design  :          m16dp1
-- 
-- Simulation tool : 3rd Party
-- 

LIBRARY ieee;                                               
USE ieee.std_logic_1164.all;                                

ENTITY m16dp1_vhd_vec_tst IS
END m16dp1_vhd_vec_tst;
ARCHITECTURE m16dp1_arch OF m16dp1_vhd_vec_tst IS
-- constants                                                 
-- signals                                                   
SIGNAL ADDR : STD_LOGIC_VECTOR(15 DOWNTO 0);
SIGNAL ALUCon : STD_LOGIC;
SIGNAL ALUOp : STD_LOGIC_VECTOR(2 DOWNTO 0);
SIGNAL ALUSrc : STD_LOGIC;
SIGNAL CLK : STD_LOGIC;
SIGNAL CLK1 : STD_LOGIC;
SIGNAL DOUT : STD_LOGIC_VECTOR(15 DOWNTO 0);
SIGNAL EN : STD_LOGIC;
SIGNAL INS_OUT : STD_LOGIC_VECTOR(15 DOWNTO 0);
SIGNAL JOUT : STD_LOGIC;
SIGNAL MemRead : STD_LOGIC;
SIGNAL MemtoReg : STD_LOGIC;
SIGNAL MemWrite : STD_LOGIC;
SIGNAL OPCODE : STD_LOGIC_VECTOR(3 DOWNTO 0);
SIGNAL RE : STD_LOGIC;
SIGNAL RegDst : STD_LOGIC;
SIGNAL RegWrite : STD_LOGIC;
SIGNAL RST : STD_LOGIC;
SIGNAL WE : STD_LOGIC;
SIGNAL ZERO : STD_LOGIC;
COMPONENT m16dp1
	PORT (
	ADDR : IN STD_LOGIC_VECTOR(15 DOWNTO 0);
	ALUCon : OUT STD_LOGIC;
	ALUOp : OUT STD_LOGIC_VECTOR(2 DOWNTO 0);
	ALUSrc : OUT STD_LOGIC;
	CLK : IN STD_LOGIC;
	CLK1 : IN STD_LOGIC;
	DOUT : OUT STD_LOGIC_VECTOR(15 DOWNTO 0);
	EN : IN STD_LOGIC;
	INS_OUT : OUT STD_LOGIC_VECTOR(15 DOWNTO 0);
	JOUT : OUT STD_LOGIC;
	MemRead : OUT STD_LOGIC;
	MemtoReg : OUT STD_LOGIC;
	MemWrite : OUT STD_LOGIC;
	OPCODE : IN STD_LOGIC_VECTOR(3 DOWNTO 0);
	RE : IN STD_LOGIC;
	RegDst : OUT STD_LOGIC;
	RegWrite : OUT STD_LOGIC;
	RST : IN STD_LOGIC;
	WE : IN STD_LOGIC;
	ZERO : IN STD_LOGIC
	);
END COMPONENT;
BEGIN
	i1 : m16dp1
	PORT MAP (
-- list connections between master ports and signals
	ADDR => ADDR,
	ALUCon => ALUCon,
	ALUOp => ALUOp,
	ALUSrc => ALUSrc,
	CLK => CLK,
	CLK1 => CLK1,
	DOUT => DOUT,
	EN => EN,
	INS_OUT => INS_OUT,
	JOUT => JOUT,
	MemRead => MemRead,
	MemtoReg => MemtoReg,
	MemWrite => MemWrite,
	OPCODE => OPCODE,
	RE => RE,
	RegDst => RegDst,
	RegWrite => RegWrite,
	RST => RST,
	WE => WE,
	ZERO => ZERO
	);
-- ADDR[15]
t_prcs_ADDR_15: PROCESS
BEGIN
	ADDR(15) <= '0';
WAIT;
END PROCESS t_prcs_ADDR_15;
-- ADDR[14]
t_prcs_ADDR_14: PROCESS
BEGIN
	ADDR(14) <= '0';
WAIT;
END PROCESS t_prcs_ADDR_14;
-- ADDR[13]
t_prcs_ADDR_13: PROCESS
BEGIN
	ADDR(13) <= '0';
WAIT;
END PROCESS t_prcs_ADDR_13;
-- ADDR[12]
t_prcs_ADDR_12: PROCESS
BEGIN
	ADDR(12) <= '0';
WAIT;
END PROCESS t_prcs_ADDR_12;
-- ADDR[11]
t_prcs_ADDR_11: PROCESS
BEGIN
	ADDR(11) <= '0';
WAIT;
END PROCESS t_prcs_ADDR_11;
-- ADDR[10]
t_prcs_ADDR_10: PROCESS
BEGIN
	ADDR(10) <= '0';
WAIT;
END PROCESS t_prcs_ADDR_10;
-- ADDR[9]
t_prcs_ADDR_9: PROCESS
BEGIN
	ADDR(9) <= '0';
WAIT;
END PROCESS t_prcs_ADDR_9;
-- ADDR[8]
t_prcs_ADDR_8: PROCESS
BEGIN
	ADDR(8) <= '0';
WAIT;
END PROCESS t_prcs_ADDR_8;
-- ADDR[7]
t_prcs_ADDR_7: PROCESS
BEGIN
	ADDR(7) <= '0';
WAIT;
END PROCESS t_prcs_ADDR_7;
-- ADDR[6]
t_prcs_ADDR_6: PROCESS
BEGIN
	ADDR(6) <= '0';
WAIT;
END PROCESS t_prcs_ADDR_6;
-- ADDR[5]
t_prcs_ADDR_5: PROCESS
BEGIN
	ADDR(5) <= '0';
WAIT;
END PROCESS t_prcs_ADDR_5;
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

-- CLK1
t_prcs_CLK1: PROCESS
BEGIN
LOOP
	CLK1 <= '0';
	WAIT FOR 10000 ps;
	CLK1 <= '1';
	WAIT FOR 10000 ps;
	IF (NOW >= 1000000 ps) THEN WAIT; END IF;
END LOOP;
END PROCESS t_prcs_CLK1;

-- EN
t_prcs_EN: PROCESS
BEGIN
	EN <= '1';
WAIT;
END PROCESS t_prcs_EN;
-- OPCODE[3]
t_prcs_OPCODE_3: PROCESS
BEGIN
	OPCODE(3) <= '0';
WAIT;
END PROCESS t_prcs_OPCODE_3;
-- OPCODE[2]
t_prcs_OPCODE_2: PROCESS
BEGIN
	OPCODE(2) <= '0';
WAIT;
END PROCESS t_prcs_OPCODE_2;
-- OPCODE[1]
t_prcs_OPCODE_1: PROCESS
BEGIN
	OPCODE(1) <= '0';
WAIT;
END PROCESS t_prcs_OPCODE_1;
-- OPCODE[0]
t_prcs_OPCODE_0: PROCESS
BEGIN
	OPCODE(0) <= '0';
WAIT;
END PROCESS t_prcs_OPCODE_0;

-- RE
t_prcs_RE: PROCESS
BEGIN
	RE <= '0';
WAIT;
END PROCESS t_prcs_RE;

-- RST
t_prcs_RST: PROCESS
BEGIN
	RST <= '1';
	WAIT FOR 30000 ps;
	RST <= '0';
WAIT;
END PROCESS t_prcs_RST;

-- WE
t_prcs_WE: PROCESS
BEGIN
	WE <= '0';
WAIT;
END PROCESS t_prcs_WE;

-- ZERO
t_prcs_ZERO: PROCESS
BEGIN
	ZERO <= '0';
WAIT;
END PROCESS t_prcs_ZERO;
END m16dp1_arch;
