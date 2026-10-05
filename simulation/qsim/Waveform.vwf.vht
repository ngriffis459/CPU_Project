-- Copyright (C) 2025  Altera Corporation. All rights reserved.
-- Your use of Altera Corporation's design tools, logic functions 
-- and other software and tools, and any partner logic 
-- functions, and any output files from any of the foregoing 
-- (including device programming or simulation files), and any 
-- associated documentation or information are expressly subject 
-- to the terms and conditions of the Altera Program License 
-- Subscription Agreement, the Altera Quartus Prime License Agreement,
-- the Altera IP License Agreement, or other applicable license
-- agreement, including, without limitation, that your use is for
-- the sole purpose of programming logic devices manufactured by
-- Altera and sold by Altera or its authorized distributors.  Please
-- refer to the Altera Software License Subscription Agreements 
-- on the Quartus Prime software download page.

-- *****************************************************************************
-- This file contains a Vhdl test bench with test vectors .The test vectors     
-- are exported from a vector file in the Quartus Waveform Editor and apply to  
-- the top level entity of the current Quartus project .The user can use this   
-- testbench to simulate his design using a third-party simulation tool .       
-- *****************************************************************************
-- Generated on "10/05/2026 13:16:53"
                                                             
-- Vhdl Test Bench(with test vectors) for design  :          DE10_TOP
-- 
-- Simulation tool : 3rd Party
-- 

LIBRARY ieee;                                               
USE ieee.std_logic_1164.all;                                

ENTITY DE10_TOP_vhd_vec_tst IS
END DE10_TOP_vhd_vec_tst;
ARCHITECTURE DE10_TOP_arch OF DE10_TOP_vhd_vec_tst IS
-- constants                                                 
-- signals                                                   
SIGNAL HEX0 : STD_LOGIC_VECTOR(0 TO 6);
SIGNAL HEX1 : STD_LOGIC_VECTOR(0 TO 6);
SIGNAL HEX2 : STD_LOGIC_VECTOR(0 TO 6);
SIGNAL HEX3 : STD_LOGIC_VECTOR(0 TO 6);
SIGNAL HEX4 : STD_LOGIC_VECTOR(0 TO 6);
SIGNAL HEX5 : STD_LOGIC_VECTOR(0 TO 6);
SIGNAL KEY : STD_LOGIC_VECTOR(1 DOWNTO 0);
SIGNAL MAX10CLK : STD_LOGIC;
SIGNAL SW : STD_LOGIC_VECTOR(4 DOWNTO 0);
COMPONENT DE10_TOP
	PORT (
	HEX0 : OUT STD_LOGIC_VECTOR(0 TO 6);
	HEX1 : OUT STD_LOGIC_VECTOR(0 TO 6);
	HEX2 : OUT STD_LOGIC_VECTOR(0 TO 6);
	HEX3 : OUT STD_LOGIC_VECTOR(0 TO 6);
	HEX4 : OUT STD_LOGIC_VECTOR(0 TO 6);
	HEX5 : OUT STD_LOGIC_VECTOR(0 TO 6);
	KEY : IN STD_LOGIC_VECTOR(1 DOWNTO 0);
	MAX10CLK : IN STD_LOGIC;
	SW : IN STD_LOGIC_VECTOR(4 DOWNTO 0)
	);
END COMPONENT;
BEGIN
	i1 : DE10_TOP
	PORT MAP (
-- list connections between master ports and signals
	HEX0 => HEX0,
	HEX1 => HEX1,
	HEX2 => HEX2,
	HEX3 => HEX3,
	HEX4 => HEX4,
	HEX5 => HEX5,
	KEY => KEY,
	MAX10CLK => MAX10CLK,
	SW => SW
	);
-- KEY[1]
t_prcs_KEY_1: PROCESS
BEGIN
	KEY(1) <= '0';
	WAIT FOR 40000 ps;
	KEY(1) <= '1';
WAIT;
END PROCESS t_prcs_KEY_1;
-- KEY[0]
t_prcs_KEY_0: PROCESS
BEGIN
	KEY(0) <= '0';
	WAIT FOR 40000 ps;
	KEY(0) <= '1';
WAIT;
END PROCESS t_prcs_KEY_0;

-- MAX10CLK
t_prcs_MAX10CLK: PROCESS
BEGIN
	MAX10CLK <= '0';
WAIT;
END PROCESS t_prcs_MAX10CLK;
-- SW[4]
t_prcs_SW_4: PROCESS
BEGIN
	SW(4) <= '0';
WAIT;
END PROCESS t_prcs_SW_4;
-- SW[3]
t_prcs_SW_3: PROCESS
BEGIN
	SW(3) <= '0';
WAIT;
END PROCESS t_prcs_SW_3;
-- SW[2]
t_prcs_SW_2: PROCESS
BEGIN
	SW(2) <= '0';
WAIT;
END PROCESS t_prcs_SW_2;
-- SW[1]
t_prcs_SW_1: PROCESS
BEGIN
	SW(1) <= '0';
WAIT;
END PROCESS t_prcs_SW_1;
-- SW[0]
t_prcs_SW_0: PROCESS
BEGIN
	SW(0) <= '1';
WAIT;
END PROCESS t_prcs_SW_0;
END DE10_TOP_arch;
