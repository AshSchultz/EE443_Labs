-- Copyright (C) 2023  Intel Corporation. All rights reserved.
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
-- Generated on "04/27/2026 12:43:19"
                                                             
-- Vhdl Test Bench(with test vectors) for design  :          m16dp
-- 
-- Simulation tool : 3rd Party
-- 

LIBRARY ieee;                                               
USE ieee.std_logic_1164.all;                                

ENTITY m16dp_vhd_vec_tst IS
END m16dp_vhd_vec_tst;
ARCHITECTURE m16dp_arch OF m16dp_vhd_vec_tst IS
-- constants                                                 
-- signals                                                   
SIGNAL ALUCon : STD_LOGIC;
SIGNAL ALUOp : STD_LOGIC_VECTOR(2 DOWNTO 0);
SIGNAL ALUOUT : STD_LOGIC_VECTOR(15 DOWNTO 0);
SIGNAL ALUSrc : STD_LOGIC;
SIGNAL BRADDER_OUT : STD_LOGIC_VECTOR(15 DOWNTO 0);
SIGNAL Branch : STD_LOGIC;
SIGNAL DMEMOUT : STD_LOGIC_VECTOR(15 DOWNTO 0);
SIGNAL EXTEN_OUT : STD_LOGIC_VECTOR(15 DOWNTO 0);
SIGNAL HEX0 : STD_LOGIC_VECTOR(0 TO 6);
SIGNAL HEX1 : STD_LOGIC_VECTOR(0 TO 6);
SIGNAL HEX2 : STD_LOGIC_VECTOR(0 TO 6);
SIGNAL HEX3 : STD_LOGIC_VECTOR(0 TO 6);
SIGNAL HEX4 : STD_LOGIC_VECTOR(0 TO 6);
SIGNAL HEX5 : STD_LOGIC_VECTOR(0 TO 6);
SIGNAL HEX6 : STD_LOGIC_VECTOR(0 TO 6);
SIGNAL HEX7 : STD_LOGIC_VECTOR(0 TO 6);
SIGNAL INS_OUT : STD_LOGIC_VECTOR(15 DOWNTO 0);
SIGNAL JOUT : STD_LOGIC_VECTOR(15 DOWNTO 0);
SIGNAL Jump : STD_LOGIC;
SIGNAL JUMPMUX_OUT : STD_LOGIC_VECTOR(15 DOWNTO 0);
SIGNAL MemRead : STD_LOGIC;
SIGNAL MemtoReg : STD_LOGIC;
SIGNAL MemWrite : STD_LOGIC;
SIGNAL PCP2 : STD_LOGIC_VECTOR(15 DOWNTO 0);
SIGNAL REG1OUT : STD_LOGIC_VECTOR(15 DOWNTO 0);
SIGNAL REG2_OUT : STD_LOGIC_VECTOR(15 DOWNTO 0);
SIGNAL RegDst : STD_LOGIC;
SIGNAL RegWrite : STD_LOGIC;
SIGNAL RST : STD_LOGIC;
SIGNAL SW0 : STD_LOGIC;
SIGNAL SW17 : STD_LOGIC;
SIGNAL W_REG : STD_LOGIC_VECTOR(15 DOWNTO 0);
COMPONENT m16dp
	PORT (
	ALUCon : OUT STD_LOGIC;
	ALUOp : OUT STD_LOGIC_VECTOR(2 DOWNTO 0);
	ALUOUT : OUT STD_LOGIC_VECTOR(15 DOWNTO 0);
	ALUSrc : OUT STD_LOGIC;
	BRADDER_OUT : OUT STD_LOGIC_VECTOR(15 DOWNTO 0);
	Branch : OUT STD_LOGIC;
	DMEMOUT : OUT STD_LOGIC_VECTOR(15 DOWNTO 0);
	EXTEN_OUT : OUT STD_LOGIC_VECTOR(15 DOWNTO 0);
	HEX0 : OUT STD_LOGIC_VECTOR(0 TO 6);
	HEX1 : OUT STD_LOGIC_VECTOR(0 TO 6);
	HEX2 : OUT STD_LOGIC_VECTOR(0 TO 6);
	HEX3 : OUT STD_LOGIC_VECTOR(0 TO 6);
	HEX4 : OUT STD_LOGIC_VECTOR(0 TO 6);
	HEX5 : OUT STD_LOGIC_VECTOR(0 TO 6);
	HEX6 : OUT STD_LOGIC_VECTOR(0 TO 6);
	HEX7 : OUT STD_LOGIC_VECTOR(0 TO 6);
	INS_OUT : OUT STD_LOGIC_VECTOR(15 DOWNTO 0);
	JOUT : OUT STD_LOGIC_VECTOR(15 DOWNTO 0);
	Jump : OUT STD_LOGIC;
	JUMPMUX_OUT : OUT STD_LOGIC_VECTOR(15 DOWNTO 0);
	MemRead : OUT STD_LOGIC;
	MemtoReg : OUT STD_LOGIC;
	MemWrite : OUT STD_LOGIC;
	PCP2 : OUT STD_LOGIC_VECTOR(15 DOWNTO 0);
	REG1OUT : OUT STD_LOGIC_VECTOR(15 DOWNTO 0);
	REG2_OUT : OUT STD_LOGIC_VECTOR(15 DOWNTO 0);
	RegDst : OUT STD_LOGIC;
	RegWrite : OUT STD_LOGIC;
	RST : IN STD_LOGIC;
	SW0 : IN STD_LOGIC;
	SW17 : IN STD_LOGIC;
	W_REG : OUT STD_LOGIC_VECTOR(15 DOWNTO 0)
	);
END COMPONENT;
BEGIN
	i1 : m16dp
	PORT MAP (
-- list connections between master ports and signals
	ALUCon => ALUCon,
	ALUOp => ALUOp,
	ALUOUT => ALUOUT,
	ALUSrc => ALUSrc,
	BRADDER_OUT => BRADDER_OUT,
	Branch => Branch,
	DMEMOUT => DMEMOUT,
	EXTEN_OUT => EXTEN_OUT,
	HEX0 => HEX0,
	HEX1 => HEX1,
	HEX2 => HEX2,
	HEX3 => HEX3,
	HEX4 => HEX4,
	HEX5 => HEX5,
	HEX6 => HEX6,
	HEX7 => HEX7,
	INS_OUT => INS_OUT,
	JOUT => JOUT,
	Jump => Jump,
	JUMPMUX_OUT => JUMPMUX_OUT,
	MemRead => MemRead,
	MemtoReg => MemtoReg,
	MemWrite => MemWrite,
	PCP2 => PCP2,
	REG1OUT => REG1OUT,
	REG2_OUT => REG2_OUT,
	RegDst => RegDst,
	RegWrite => RegWrite,
	RST => RST,
	SW0 => SW0,
	SW17 => SW17,
	W_REG => W_REG
	);

-- RST
t_prcs_RST: PROCESS
BEGIN
	RST <= '0';
WAIT;
END PROCESS t_prcs_RST;
END m16dp_arch;
