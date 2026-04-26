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
-- Generated on "04/25/2026 13:58:11"
                                                             
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
SIGNAL Branch : STD_LOGIC;
SIGNAL CLK : STD_LOGIC;
SIGNAL DOUT0 : STD_LOGIC;
SIGNAL DOUT1 : STD_LOGIC;
SIGNAL DOUT2 : STD_LOGIC;
SIGNAL DOUT3 : STD_LOGIC;
SIGNAL DOUT4 : STD_LOGIC;
SIGNAL DOUT5 : STD_LOGIC;
SIGNAL DOUT6 : STD_LOGIC;
SIGNAL DOUT7 : STD_LOGIC;
SIGNAL DOUT8 : STD_LOGIC;
SIGNAL DOUT9 : STD_LOGIC;
SIGNAL DOUT10 : STD_LOGIC;
SIGNAL DOUT11 : STD_LOGIC;
SIGNAL DOUT12 : STD_LOGIC;
SIGNAL DOUT13 : STD_LOGIC;
SIGNAL DOUT14 : STD_LOGIC;
SIGNAL DOUT15 : STD_LOGIC;
SIGNAL INSOUT : STD_LOGIC_VECTOR(15 DOWNTO 12);
SIGNAL JOUT : STD_LOGIC_VECTOR(15 DOWNTO 0);
SIGNAL Jump : STD_LOGIC;
SIGNAL JUMPMUX_OUT : STD_LOGIC_VECTOR(15 DOWNTO 0);
SIGNAL MemRead : STD_LOGIC;
SIGNAL MemtoReg : STD_LOGIC;
SIGNAL MemWrite : STD_LOGIC;
SIGNAL PCEN : STD_LOGIC;
SIGNAL PCP2 : STD_LOGIC_VECTOR(15 DOWNTO 0);
SIGNAL REG1OUT : STD_LOGIC_VECTOR(15 DOWNTO 0);
SIGNAL REG2_OUT : STD_LOGIC_VECTOR(15 DOWNTO 0);
SIGNAL RegDst : STD_LOGIC;
SIGNAL RegWrite : STD_LOGIC;
SIGNAL RST : STD_LOGIC;
SIGNAL W_REG : STD_LOGIC_VECTOR(15 DOWNTO 0);
COMPONENT m16dp
	PORT (
	ALUCon : OUT STD_LOGIC;
	ALUOp : OUT STD_LOGIC_VECTOR(2 DOWNTO 0);
	ALUOUT : OUT STD_LOGIC_VECTOR(15 DOWNTO 0);
	ALUSrc : OUT STD_LOGIC;
	Branch : OUT STD_LOGIC;
	CLK : IN STD_LOGIC;
	DOUT0 : OUT STD_LOGIC;
	DOUT1 : OUT STD_LOGIC;
	DOUT2 : OUT STD_LOGIC;
	DOUT3 : OUT STD_LOGIC;
	DOUT4 : OUT STD_LOGIC;
	DOUT5 : OUT STD_LOGIC;
	DOUT6 : OUT STD_LOGIC;
	DOUT7 : OUT STD_LOGIC;
	DOUT8 : OUT STD_LOGIC;
	DOUT9 : OUT STD_LOGIC;
	DOUT10 : OUT STD_LOGIC;
	DOUT11 : OUT STD_LOGIC;
	DOUT12 : OUT STD_LOGIC;
	DOUT13 : OUT STD_LOGIC;
	DOUT14 : OUT STD_LOGIC;
	DOUT15 : OUT STD_LOGIC;
	INSOUT : OUT STD_LOGIC_VECTOR(15 DOWNTO 12);
	JOUT : OUT STD_LOGIC_VECTOR(15 DOWNTO 0);
	Jump : OUT STD_LOGIC;
	JUMPMUX_OUT : OUT STD_LOGIC_VECTOR(15 DOWNTO 0);
	MemRead : OUT STD_LOGIC;
	MemtoReg : OUT STD_LOGIC;
	MemWrite : OUT STD_LOGIC;
	PCEN : IN STD_LOGIC;
	PCP2 : OUT STD_LOGIC_VECTOR(15 DOWNTO 0);
	REG1OUT : OUT STD_LOGIC_VECTOR(15 DOWNTO 0);
	REG2_OUT : OUT STD_LOGIC_VECTOR(15 DOWNTO 0);
	RegDst : OUT STD_LOGIC;
	RegWrite : OUT STD_LOGIC;
	RST : IN STD_LOGIC;
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
	Branch => Branch,
	CLK => CLK,
	DOUT0 => DOUT0,
	DOUT1 => DOUT1,
	DOUT2 => DOUT2,
	DOUT3 => DOUT3,
	DOUT4 => DOUT4,
	DOUT5 => DOUT5,
	DOUT6 => DOUT6,
	DOUT7 => DOUT7,
	DOUT8 => DOUT8,
	DOUT9 => DOUT9,
	DOUT10 => DOUT10,
	DOUT11 => DOUT11,
	DOUT12 => DOUT12,
	DOUT13 => DOUT13,
	DOUT14 => DOUT14,
	DOUT15 => DOUT15,
	INSOUT => INSOUT,
	JOUT => JOUT,
	Jump => Jump,
	JUMPMUX_OUT => JUMPMUX_OUT,
	MemRead => MemRead,
	MemtoReg => MemtoReg,
	MemWrite => MemWrite,
	PCEN => PCEN,
	PCP2 => PCP2,
	REG1OUT => REG1OUT,
	REG2_OUT => REG2_OUT,
	RegDst => RegDst,
	RegWrite => RegWrite,
	RST => RST,
	W_REG => W_REG
	);

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

-- PCEN
t_prcs_PCEN: PROCESS
BEGIN
	PCEN <= '1';
WAIT;
END PROCESS t_prcs_PCEN;

-- RST
t_prcs_RST: PROCESS
BEGIN
	RST <= '0';
WAIT;
END PROCESS t_prcs_RST;
END m16dp_arch;
