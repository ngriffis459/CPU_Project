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

-- VENDOR "Altera"
-- PROGRAM "Quartus Prime"
-- VERSION "Version 25.1std.0 Build 1129 10/21/2025 SC Lite Edition"

-- DATE "10/05/2026 13:22:36"

-- 
-- Device: Altera 10M50DAF484C6GES Package FBGA484
-- 

-- 
-- This VHDL file should be used for Questa Altera FPGA (VHDL) only
-- 

LIBRARY FIFTYFIVENM;
LIBRARY IEEE;
USE FIFTYFIVENM.FIFTYFIVENM_COMPONENTS.ALL;
USE IEEE.STD_LOGIC_1164.ALL;

ENTITY 	hard_block IS
    PORT (
	devoe : IN std_logic;
	devclrn : IN std_logic;
	devpor : IN std_logic
	);
END hard_block;

-- Design Ports Information
-- ~ALTERA_TMS~	=>  Location: PIN_H2,	 I/O Standard: 2.5 V Schmitt Trigger,	 Current Strength: Default
-- ~ALTERA_TCK~	=>  Location: PIN_G2,	 I/O Standard: 2.5 V Schmitt Trigger,	 Current Strength: Default
-- ~ALTERA_TDI~	=>  Location: PIN_L4,	 I/O Standard: 2.5 V Schmitt Trigger,	 Current Strength: Default
-- ~ALTERA_TDO~	=>  Location: PIN_M5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ~ALTERA_CONFIG_SEL~	=>  Location: PIN_H10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ~ALTERA_nCONFIG~	=>  Location: PIN_H9,	 I/O Standard: 2.5 V Schmitt Trigger,	 Current Strength: Default
-- ~ALTERA_nSTATUS~	=>  Location: PIN_G9,	 I/O Standard: 2.5 V Schmitt Trigger,	 Current Strength: Default
-- ~ALTERA_CONF_DONE~	=>  Location: PIN_F8,	 I/O Standard: 2.5 V Schmitt Trigger,	 Current Strength: Default


ARCHITECTURE structure OF hard_block IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL \~ALTERA_TMS~~padout\ : std_logic;
SIGNAL \~ALTERA_TCK~~padout\ : std_logic;
SIGNAL \~ALTERA_TDI~~padout\ : std_logic;
SIGNAL \~ALTERA_CONFIG_SEL~~padout\ : std_logic;
SIGNAL \~ALTERA_nCONFIG~~padout\ : std_logic;
SIGNAL \~ALTERA_nSTATUS~~padout\ : std_logic;
SIGNAL \~ALTERA_CONF_DONE~~padout\ : std_logic;
SIGNAL \~ALTERA_TMS~~ibuf_o\ : std_logic;
SIGNAL \~ALTERA_TCK~~ibuf_o\ : std_logic;
SIGNAL \~ALTERA_TDI~~ibuf_o\ : std_logic;
SIGNAL \~ALTERA_CONFIG_SEL~~ibuf_o\ : std_logic;
SIGNAL \~ALTERA_nCONFIG~~ibuf_o\ : std_logic;
SIGNAL \~ALTERA_nSTATUS~~ibuf_o\ : std_logic;
SIGNAL \~ALTERA_CONF_DONE~~ibuf_o\ : std_logic;

BEGIN

ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;
END structure;


LIBRARY ALTERA;
LIBRARY FIFTYFIVENM;
LIBRARY IEEE;
USE ALTERA.ALTERA_PRIMITIVES_COMPONENTS.ALL;
USE FIFTYFIVENM.FIFTYFIVENM_COMPONENTS.ALL;
USE IEEE.STD_LOGIC_1164.ALL;

ENTITY 	DE10_TOP IS
    PORT (
	HEX0 : OUT std_logic_vector(0 TO 6);
	MAX10CLK : IN std_logic;
	KEY : IN std_logic_vector(1 DOWNTO 0);
	SW : IN std_logic_vector(4 DOWNTO 0);
	HEX1 : OUT std_logic_vector(0 TO 6);
	HEX2 : OUT std_logic_vector(0 TO 6);
	HEX3 : OUT std_logic_vector(0 TO 6);
	HEX4 : OUT std_logic_vector(0 TO 6);
	HEX5 : OUT std_logic_vector(0 TO 6)
	);
END DE10_TOP;

-- Design Ports Information
-- HEX0[0]	=>  Location: PIN_C14,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- HEX0[1]	=>  Location: PIN_E15,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- HEX0[2]	=>  Location: PIN_C15,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- HEX0[3]	=>  Location: PIN_C16,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- HEX0[4]	=>  Location: PIN_E16,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- HEX0[5]	=>  Location: PIN_D17,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- HEX0[6]	=>  Location: PIN_C17,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- HEX1[0]	=>  Location: PIN_C18,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- HEX1[1]	=>  Location: PIN_D18,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- HEX1[2]	=>  Location: PIN_E18,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- HEX1[3]	=>  Location: PIN_B16,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- HEX1[4]	=>  Location: PIN_A17,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- HEX1[5]	=>  Location: PIN_A18,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- HEX1[6]	=>  Location: PIN_B17,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- HEX2[0]	=>  Location: PIN_B20,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- HEX2[1]	=>  Location: PIN_A20,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- HEX2[2]	=>  Location: PIN_B19,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- HEX2[3]	=>  Location: PIN_A21,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- HEX2[4]	=>  Location: PIN_B21,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- HEX2[5]	=>  Location: PIN_C22,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- HEX2[6]	=>  Location: PIN_B22,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- HEX3[0]	=>  Location: PIN_F21,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- HEX3[1]	=>  Location: PIN_E22,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- HEX3[2]	=>  Location: PIN_E21,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- HEX3[3]	=>  Location: PIN_C19,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- HEX3[4]	=>  Location: PIN_C20,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- HEX3[5]	=>  Location: PIN_D19,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- HEX3[6]	=>  Location: PIN_E17,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- HEX4[0]	=>  Location: PIN_F18,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- HEX4[1]	=>  Location: PIN_E20,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- HEX4[2]	=>  Location: PIN_E19,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- HEX4[3]	=>  Location: PIN_J18,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- HEX4[4]	=>  Location: PIN_H19,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- HEX4[5]	=>  Location: PIN_F19,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- HEX4[6]	=>  Location: PIN_F20,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- HEX5[0]	=>  Location: PIN_J20,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- HEX5[1]	=>  Location: PIN_K20,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- HEX5[2]	=>  Location: PIN_L18,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- HEX5[3]	=>  Location: PIN_N18,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- HEX5[4]	=>  Location: PIN_M20,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- HEX5[5]	=>  Location: PIN_N19,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- HEX5[6]	=>  Location: PIN_N20,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- KEY[0]	=>  Location: PIN_B8,	 I/O Standard: 3.3 V Schmitt Trigger,	 Current Strength: Default
-- SW[0]	=>  Location: PIN_C10,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- SW[1]	=>  Location: PIN_C11,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- SW[2]	=>  Location: PIN_D12,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- SW[3]	=>  Location: PIN_C12,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- SW[4]	=>  Location: PIN_A12,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- MAX10CLK	=>  Location: PIN_P11,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- KEY[1]	=>  Location: PIN_A7,	 I/O Standard: 3.3 V Schmitt Trigger,	 Current Strength: Default


ARCHITECTURE structure OF DE10_TOP IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_HEX0 : std_logic_vector(0 TO 6);
SIGNAL ww_MAX10CLK : std_logic;
SIGNAL ww_KEY : std_logic_vector(1 DOWNTO 0);
SIGNAL ww_SW : std_logic_vector(4 DOWNTO 0);
SIGNAL ww_HEX1 : std_logic_vector(0 TO 6);
SIGNAL ww_HEX2 : std_logic_vector(0 TO 6);
SIGNAL ww_HEX3 : std_logic_vector(0 TO 6);
SIGNAL ww_HEX4 : std_logic_vector(0 TO 6);
SIGNAL ww_HEX5 : std_logic_vector(0 TO 6);
SIGNAL \~QUARTUS_CREATED_ADC1~_CHSEL_bus\ : std_logic_vector(4 DOWNTO 0);
SIGNAL \~QUARTUS_CREATED_ADC2~_CHSEL_bus\ : std_logic_vector(4 DOWNTO 0);
SIGNAL \GDGERGD|cpu_pulse~clkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \MAX10CLK~inputclkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \~QUARTUS_CREATED_GND~I_combout\ : std_logic;
SIGNAL \~QUARTUS_CREATED_UNVM~~busy\ : std_logic;
SIGNAL \~QUARTUS_CREATED_ADC1~~eoc\ : std_logic;
SIGNAL \~QUARTUS_CREATED_ADC2~~eoc\ : std_logic;
SIGNAL \HEX0[0]~output_o\ : std_logic;
SIGNAL \HEX0[1]~output_o\ : std_logic;
SIGNAL \HEX0[2]~output_o\ : std_logic;
SIGNAL \HEX0[3]~output_o\ : std_logic;
SIGNAL \HEX0[4]~output_o\ : std_logic;
SIGNAL \HEX0[5]~output_o\ : std_logic;
SIGNAL \HEX0[6]~output_o\ : std_logic;
SIGNAL \HEX1[0]~output_o\ : std_logic;
SIGNAL \HEX1[1]~output_o\ : std_logic;
SIGNAL \HEX1[2]~output_o\ : std_logic;
SIGNAL \HEX1[3]~output_o\ : std_logic;
SIGNAL \HEX1[4]~output_o\ : std_logic;
SIGNAL \HEX1[5]~output_o\ : std_logic;
SIGNAL \HEX1[6]~output_o\ : std_logic;
SIGNAL \HEX2[0]~output_o\ : std_logic;
SIGNAL \HEX2[1]~output_o\ : std_logic;
SIGNAL \HEX2[2]~output_o\ : std_logic;
SIGNAL \HEX2[3]~output_o\ : std_logic;
SIGNAL \HEX2[4]~output_o\ : std_logic;
SIGNAL \HEX2[5]~output_o\ : std_logic;
SIGNAL \HEX2[6]~output_o\ : std_logic;
SIGNAL \HEX3[0]~output_o\ : std_logic;
SIGNAL \HEX3[1]~output_o\ : std_logic;
SIGNAL \HEX3[2]~output_o\ : std_logic;
SIGNAL \HEX3[3]~output_o\ : std_logic;
SIGNAL \HEX3[4]~output_o\ : std_logic;
SIGNAL \HEX3[5]~output_o\ : std_logic;
SIGNAL \HEX3[6]~output_o\ : std_logic;
SIGNAL \HEX4[0]~output_o\ : std_logic;
SIGNAL \HEX4[1]~output_o\ : std_logic;
SIGNAL \HEX4[2]~output_o\ : std_logic;
SIGNAL \HEX4[3]~output_o\ : std_logic;
SIGNAL \HEX4[4]~output_o\ : std_logic;
SIGNAL \HEX4[5]~output_o\ : std_logic;
SIGNAL \HEX4[6]~output_o\ : std_logic;
SIGNAL \HEX5[0]~output_o\ : std_logic;
SIGNAL \HEX5[1]~output_o\ : std_logic;
SIGNAL \HEX5[2]~output_o\ : std_logic;
SIGNAL \HEX5[3]~output_o\ : std_logic;
SIGNAL \HEX5[4]~output_o\ : std_logic;
SIGNAL \HEX5[5]~output_o\ : std_logic;
SIGNAL \HEX5[6]~output_o\ : std_logic;
SIGNAL \MAX10CLK~input_o\ : std_logic;
SIGNAL \MAX10CLK~inputclkctrl_outclk\ : std_logic;
SIGNAL \KEY[1]~input_o\ : std_logic;
SIGNAL \GDGERGD|key_sync1~0_combout\ : std_logic;
SIGNAL \KEY[0]~input_o\ : std_logic;
SIGNAL \GDGERGD|key_sync1~q\ : std_logic;
SIGNAL \GDGERGD|key_sync2~feeder_combout\ : std_logic;
SIGNAL \GDGERGD|key_sync2~q\ : std_logic;
SIGNAL \GDGERGD|key_old~feeder_combout\ : std_logic;
SIGNAL \GDGERGD|key_old~q\ : std_logic;
SIGNAL \SW[4]~input_o\ : std_logic;
SIGNAL \GDGERGD|count[0]~25_combout\ : std_logic;
SIGNAL \GDGERGD|count[7]~27_combout\ : std_logic;
SIGNAL \GDGERGD|count[0]~26\ : std_logic;
SIGNAL \GDGERGD|count[1]~28_combout\ : std_logic;
SIGNAL \GDGERGD|count[1]~29\ : std_logic;
SIGNAL \GDGERGD|count[2]~30_combout\ : std_logic;
SIGNAL \GDGERGD|count[2]~31\ : std_logic;
SIGNAL \GDGERGD|count[3]~32_combout\ : std_logic;
SIGNAL \GDGERGD|count[3]~33\ : std_logic;
SIGNAL \GDGERGD|count[4]~34_combout\ : std_logic;
SIGNAL \GDGERGD|count[4]~35\ : std_logic;
SIGNAL \GDGERGD|count[5]~36_combout\ : std_logic;
SIGNAL \GDGERGD|count[5]~37\ : std_logic;
SIGNAL \GDGERGD|count[6]~38_combout\ : std_logic;
SIGNAL \GDGERGD|count[6]~39\ : std_logic;
SIGNAL \GDGERGD|count[7]~40_combout\ : std_logic;
SIGNAL \GDGERGD|count[7]~41\ : std_logic;
SIGNAL \GDGERGD|count[8]~42_combout\ : std_logic;
SIGNAL \GDGERGD|count[8]~43\ : std_logic;
SIGNAL \GDGERGD|count[9]~44_combout\ : std_logic;
SIGNAL \GDGERGD|count[9]~45\ : std_logic;
SIGNAL \GDGERGD|count[10]~46_combout\ : std_logic;
SIGNAL \GDGERGD|count[10]~47\ : std_logic;
SIGNAL \GDGERGD|count[11]~48_combout\ : std_logic;
SIGNAL \GDGERGD|count[11]~49\ : std_logic;
SIGNAL \GDGERGD|count[12]~50_combout\ : std_logic;
SIGNAL \GDGERGD|count[12]~51\ : std_logic;
SIGNAL \GDGERGD|count[13]~52_combout\ : std_logic;
SIGNAL \GDGERGD|count[13]~53\ : std_logic;
SIGNAL \GDGERGD|count[14]~54_combout\ : std_logic;
SIGNAL \GDGERGD|count[14]~55\ : std_logic;
SIGNAL \GDGERGD|count[15]~56_combout\ : std_logic;
SIGNAL \GDGERGD|count[15]~57\ : std_logic;
SIGNAL \GDGERGD|count[16]~58_combout\ : std_logic;
SIGNAL \GDGERGD|count[16]~59\ : std_logic;
SIGNAL \GDGERGD|count[17]~60_combout\ : std_logic;
SIGNAL \GDGERGD|count[17]~61\ : std_logic;
SIGNAL \GDGERGD|count[18]~62_combout\ : std_logic;
SIGNAL \GDGERGD|count[18]~63\ : std_logic;
SIGNAL \GDGERGD|count[19]~64_combout\ : std_logic;
SIGNAL \GDGERGD|count[19]~65\ : std_logic;
SIGNAL \GDGERGD|count[20]~66_combout\ : std_logic;
SIGNAL \GDGERGD|count[20]~67\ : std_logic;
SIGNAL \GDGERGD|count[21]~68_combout\ : std_logic;
SIGNAL \GDGERGD|count[21]~69\ : std_logic;
SIGNAL \GDGERGD|count[22]~70_combout\ : std_logic;
SIGNAL \GDGERGD|count[22]~71\ : std_logic;
SIGNAL \GDGERGD|count[23]~72_combout\ : std_logic;
SIGNAL \GDGERGD|count[23]~73\ : std_logic;
SIGNAL \GDGERGD|count[24]~74_combout\ : std_logic;
SIGNAL \GDGERGD|Equal0~6_combout\ : std_logic;
SIGNAL \GDGERGD|Equal0~5_combout\ : std_logic;
SIGNAL \GDGERGD|Equal0~1_combout\ : std_logic;
SIGNAL \GDGERGD|Equal0~2_combout\ : std_logic;
SIGNAL \GDGERGD|Equal0~0_combout\ : std_logic;
SIGNAL \GDGERGD|Equal0~3_combout\ : std_logic;
SIGNAL \GDGERGD|Equal0~4_combout\ : std_logic;
SIGNAL \GDGERGD|Equal0~7_combout\ : std_logic;
SIGNAL \GDGERGD|cpu_pulse~0_combout\ : std_logic;
SIGNAL \GDGERGD|cpu_pulse~q\ : std_logic;
SIGNAL \GDGERGD|cpu_pulse~clkctrl_outclk\ : std_logic;
SIGNAL \inst|UIGF74F|Mux5~0_combout\ : std_logic;
SIGNAL \inst|inst97~0_combout\ : std_logic;
SIGNAL \inst|inst97~q\ : std_logic;
SIGNAL \inst|Y7F83DF~q\ : std_logic;
SIGNAL \inst|inst92|y[1]~1_combout\ : std_logic;
SIGNAL \inst|UIGF74F|Mux0~0_combout\ : std_logic;
SIGNAL \inst|FHU834OJKF3~q\ : std_logic;
SIGNAL \inst|UIGF74F|Mux2~0_combout\ : std_logic;
SIGNAL \inst|inst86~q\ : std_logic;
SIGNAL \inst|SFSYHBH~0_combout\ : std_logic;
SIGNAL \inst|UOOOYFY~q\ : std_logic;
SIGNAL \inst|inst75|inst2|inst4~combout\ : std_logic;
SIGNAL \inst|inst92|y[3]~3_combout\ : std_logic;
SIGNAL \inst|inst73~q\ : std_logic;
SIGNAL \inst|UIGF74F|Mux1~0_combout\ : std_logic;
SIGNAL \inst|inst88~q\ : std_logic;
SIGNAL \inst|inst55|PC_LOAD~0_combout\ : std_logic;
SIGNAL \inst|inst75|inst4|inst4~combout\ : std_logic;
SIGNAL \inst|UIGF74F|Mux4~0_combout\ : std_logic;
SIGNAL \inst|inst80~q\ : std_logic;
SIGNAL \inst|inst92|y[2]~2_combout\ : std_logic;
SIGNAL \inst|inst71~q\ : std_logic;
SIGNAL \inst|UIGF74F|Mux6~0_combout\ : std_logic;
SIGNAL \inst|inst67~q\ : std_logic;
SIGNAL \inst|inst92|y[0]~0_combout\ : std_logic;
SIGNAL \inst|SFSYHBH~q\ : std_logic;
SIGNAL \PCDECODE|Mux0~0_combout\ : std_logic;
SIGNAL \PCDECODE|Mux1~0_combout\ : std_logic;
SIGNAL \PCDECODE|Mux2~0_combout\ : std_logic;
SIGNAL \PCDECODE|Mux3~0_combout\ : std_logic;
SIGNAL \PCDECODE|Mux4~0_combout\ : std_logic;
SIGNAL \PCDECODE|Mux5~0_combout\ : std_logic;
SIGNAL \PCDECODE|Mux6~0_combout\ : std_logic;
SIGNAL \inst|UIGF74F|Mux3~0_combout\ : std_logic;
SIGNAL \inst|inst84~q\ : std_logic;
SIGNAL \OPCODE|Mux0~0_combout\ : std_logic;
SIGNAL \OPCODE|Mux1~0_combout\ : std_logic;
SIGNAL \OPCODE|Mux2~0_combout\ : std_logic;
SIGNAL \OPCODE|Mux3~0_combout\ : std_logic;
SIGNAL \OPCODE|Mux4~0_combout\ : std_logic;
SIGNAL \OPCODE|Mux5~0_combout\ : std_logic;
SIGNAL \OPCODE|Mux6~0_combout\ : std_logic;
SIGNAL \OPERAND|Mux0~0_combout\ : std_logic;
SIGNAL \OPERAND|Mux1~0_combout\ : std_logic;
SIGNAL \OPERAND|Mux2~0_combout\ : std_logic;
SIGNAL \OPERAND|Mux3~0_combout\ : std_logic;
SIGNAL \OPERAND|Mux4~0_combout\ : std_logic;
SIGNAL \OPERAND|Mux5~0_combout\ : std_logic;
SIGNAL \OPERAND|Mux6~0_combout\ : std_logic;
SIGNAL \inst|inst55|Mux4~0_combout\ : std_logic;
SIGNAL \SW[1]~input_o\ : std_logic;
SIGNAL \inst|SYI982F|y[1]~1_combout\ : std_logic;
SIGNAL \inst|inst55|Mux1~0_combout\ : std_logic;
SIGNAL \inst|inst55|Mux1~1_combout\ : std_logic;
SIGNAL \inst|inst55|Mux5~0_combout\ : std_logic;
SIGNAL \inst|inst55|Mux5~1_combout\ : std_logic;
SIGNAL \inst|inst55|Mux3~0_combout\ : std_logic;
SIGNAL \inst|inst55|Mux3~1_combout\ : std_logic;
SIGNAL \SW[0]~input_o\ : std_logic;
SIGNAL \inst|SYI982F|y[0]~0_combout\ : std_logic;
SIGNAL \inst|inst37~0_combout\ : std_logic;
SIGNAL \inst|inst55|Mux0~0_combout\ : std_logic;
SIGNAL \inst|inst55|Mux0~1_combout\ : std_logic;
SIGNAL \inst|inst43~1_combout\ : std_logic;
SIGNAL \inst|inst37~q\ : std_logic;
SIGNAL \inst|inst55|Mux6~0_combout\ : std_logic;
SIGNAL \inst|inst5|Mux3~4_combout\ : std_logic;
SIGNAL \inst|inst55|Mux7~0_combout\ : std_logic;
SIGNAL \inst|inst55|Mux7~1_combout\ : std_logic;
SIGNAL \inst|inst5|Mux3~1_combout\ : std_logic;
SIGNAL \inst|inst5|Mux3~2_combout\ : std_logic;
SIGNAL \inst|inst5|Mux3~3_combout\ : std_logic;
SIGNAL \inst|inst55|Mux6~1_combout\ : std_logic;
SIGNAL \inst|inst5|Mux3~0_combout\ : std_logic;
SIGNAL \inst|inst5|Mux0~24_combout\ : std_logic;
SIGNAL \inst|inst5|Mux3~5_combout\ : std_logic;
SIGNAL \inst|inst33~0_combout\ : std_logic;
SIGNAL \inst|inst55|Mux2~0_combout\ : std_logic;
SIGNAL \inst|inst55|Mux2~1_combout\ : std_logic;
SIGNAL \inst|inst35~1_combout\ : std_logic;
SIGNAL \inst|inst33~q\ : std_logic;
SIGNAL \inst|inst9~0_combout\ : std_logic;
SIGNAL \inst|inst9~q\ : std_logic;
SIGNAL \inst|inst|inst1|inst4~0_combout\ : std_logic;
SIGNAL \inst|inst5|Mux2~4_combout\ : std_logic;
SIGNAL \inst|inst5|Mux2~5_combout\ : std_logic;
SIGNAL \SW[2]~input_o\ : std_logic;
SIGNAL \inst|SYI982F|y[2]~2_combout\ : std_logic;
SIGNAL \inst|inst32~11_combout\ : std_logic;
SIGNAL \inst|inst5|Mux1~3_combout\ : std_logic;
SIGNAL \SW[3]~input_o\ : std_logic;
SIGNAL \inst|SYI982F|y[3]~3_combout\ : std_logic;
SIGNAL \inst|inst35~0_combout\ : std_logic;
SIGNAL \inst|inst35~q\ : std_logic;
SIGNAL \inst|inst5|Mux0~28_combout\ : std_logic;
SIGNAL \inst|inst5|Mux0~32_combout\ : std_logic;
SIGNAL \inst|inst5|Mux0~25_combout\ : std_logic;
SIGNAL \inst|inst5|Mux0~30_combout\ : std_logic;
SIGNAL \inst|inst5|Mux0~26_combout\ : std_logic;
SIGNAL \inst|inst5|Mux0~31_combout\ : std_logic;
SIGNAL \inst|inst|inst1|inst7~0_combout\ : std_logic;
SIGNAL \inst|inst|inst2|inst4~0_combout\ : std_logic;
SIGNAL \inst|inst5|Mux0~27_combout\ : std_logic;
SIGNAL \inst|inst5|Mux0~29_combout\ : std_logic;
SIGNAL \inst|inst43~0_combout\ : std_logic;
SIGNAL \inst|inst43~q\ : std_logic;
SIGNAL \inst|inst5|Mux1~0_combout\ : std_logic;
SIGNAL \inst|inst5|Mux1~1_combout\ : std_logic;
SIGNAL \inst|inst32~12_combout\ : std_logic;
SIGNAL \inst|inst32~0_combout\ : std_logic;
SIGNAL \inst|inst32~feeder_combout\ : std_logic;
SIGNAL \inst|inst32~q\ : std_logic;
SIGNAL \inst|inst|inst4|inst4~0_combout\ : std_logic;
SIGNAL \inst|inst5|Mux1~2_combout\ : std_logic;
SIGNAL \inst|inst41~11_combout\ : std_logic;
SIGNAL \inst|inst41~12_combout\ : std_logic;
SIGNAL \inst|inst41~0_combout\ : std_logic;
SIGNAL \inst|inst41~feeder_combout\ : std_logic;
SIGNAL \inst|inst41~q\ : std_logic;
SIGNAL \inst|inst5|Mux2~2_combout\ : std_logic;
SIGNAL \inst|inst5|Mux2~3_combout\ : std_logic;
SIGNAL \inst|inst5|Mux2~7_combout\ : std_logic;
SIGNAL \inst|inst5|Mux2~6_combout\ : std_logic;
SIGNAL \inst|inst39~0_combout\ : std_logic;
SIGNAL \inst|inst39~q\ : std_logic;
SIGNAL \REG_A|Mux0~0_combout\ : std_logic;
SIGNAL \REG_A|Mux1~0_combout\ : std_logic;
SIGNAL \REG_A|Mux2~0_combout\ : std_logic;
SIGNAL \REG_A|Mux3~0_combout\ : std_logic;
SIGNAL \REG_A|Mux4~0_combout\ : std_logic;
SIGNAL \REG_A|Mux5~0_combout\ : std_logic;
SIGNAL \REG_A|Mux6~0_combout\ : std_logic;
SIGNAL \REG_B|Mux0~0_combout\ : std_logic;
SIGNAL \REG_B|Mux1~0_combout\ : std_logic;
SIGNAL \REG_B|Mux2~0_combout\ : std_logic;
SIGNAL \REG_B|Mux3~0_combout\ : std_logic;
SIGNAL \REG_B|Mux4~0_combout\ : std_logic;
SIGNAL \REG_B|Mux5~0_combout\ : std_logic;
SIGNAL \REG_B|Mux6~0_combout\ : std_logic;
SIGNAL \inst|inst5|Mux1~4_combout\ : std_logic;
SIGNAL \ALUDECODE|Mux0~0_combout\ : std_logic;
SIGNAL \ALUDECODE|Mux1~0_combout\ : std_logic;
SIGNAL \ALUDECODE|Mux2~0_combout\ : std_logic;
SIGNAL \ALUDECODE|Mux3~0_combout\ : std_logic;
SIGNAL \ALUDECODE|Mux4~0_combout\ : std_logic;
SIGNAL \ALUDECODE|Mux5~0_combout\ : std_logic;
SIGNAL \ALUDECODE|Mux6~0_combout\ : std_logic;
SIGNAL \GDGERGD|count\ : std_logic_vector(24 DOWNTO 0);
SIGNAL \ALUDECODE|ALT_INV_Mux6~0_combout\ : std_logic;
SIGNAL \REG_A|ALT_INV_Mux6~0_combout\ : std_logic;
SIGNAL \OPERAND|ALT_INV_Mux6~0_combout\ : std_logic;
SIGNAL \REG_B|ALT_INV_Mux6~0_combout\ : std_logic;
SIGNAL \OPCODE|ALT_INV_Mux6~0_combout\ : std_logic;
SIGNAL \OPERAND|ALT_INV_Mux1~0_combout\ : std_logic;
SIGNAL \PCDECODE|ALT_INV_Mux6~0_combout\ : std_logic;
SIGNAL \OPERAND|ALT_INV_Mux0~0_combout\ : std_logic;

COMPONENT hard_block
    PORT (
	devoe : IN std_logic;
	devclrn : IN std_logic;
	devpor : IN std_logic);
END COMPONENT;

BEGIN

HEX0 <= ww_HEX0;
ww_MAX10CLK <= MAX10CLK;
ww_KEY <= KEY;
ww_SW <= SW;
HEX1 <= ww_HEX1;
HEX2 <= ww_HEX2;
HEX3 <= ww_HEX3;
HEX4 <= ww_HEX4;
HEX5 <= ww_HEX5;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

\~QUARTUS_CREATED_ADC1~_CHSEL_bus\ <= (\~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\);

\~QUARTUS_CREATED_ADC2~_CHSEL_bus\ <= (\~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\);

\GDGERGD|cpu_pulse~clkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \GDGERGD|cpu_pulse~q\);

\MAX10CLK~inputclkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \MAX10CLK~input_o\);
\ALUDECODE|ALT_INV_Mux6~0_combout\ <= NOT \ALUDECODE|Mux6~0_combout\;
\REG_A|ALT_INV_Mux6~0_combout\ <= NOT \REG_A|Mux6~0_combout\;
\OPERAND|ALT_INV_Mux6~0_combout\ <= NOT \OPERAND|Mux6~0_combout\;
\REG_B|ALT_INV_Mux6~0_combout\ <= NOT \REG_B|Mux6~0_combout\;
\OPCODE|ALT_INV_Mux6~0_combout\ <= NOT \OPCODE|Mux6~0_combout\;
\OPERAND|ALT_INV_Mux1~0_combout\ <= NOT \OPERAND|Mux1~0_combout\;
\PCDECODE|ALT_INV_Mux6~0_combout\ <= NOT \PCDECODE|Mux6~0_combout\;
\OPERAND|ALT_INV_Mux0~0_combout\ <= NOT \OPERAND|Mux0~0_combout\;
auto_generated_inst : hard_block
PORT MAP (
	devoe => ww_devoe,
	devclrn => ww_devclrn,
	devpor => ww_devpor);

-- Location: LCCOMB_X44_Y41_N16
\~QUARTUS_CREATED_GND~I\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \~QUARTUS_CREATED_GND~I_combout\ = GND

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	combout => \~QUARTUS_CREATED_GND~I_combout\);

-- Location: IOOBUF_X58_Y54_N16
\HEX0[0]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \PCDECODE|Mux0~0_combout\,
	devoe => ww_devoe,
	o => \HEX0[0]~output_o\);

-- Location: IOOBUF_X74_Y54_N9
\HEX0[1]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \PCDECODE|Mux1~0_combout\,
	devoe => ww_devoe,
	o => \HEX0[1]~output_o\);

-- Location: IOOBUF_X60_Y54_N2
\HEX0[2]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \PCDECODE|Mux2~0_combout\,
	devoe => ww_devoe,
	o => \HEX0[2]~output_o\);

-- Location: IOOBUF_X62_Y54_N30
\HEX0[3]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \PCDECODE|Mux3~0_combout\,
	devoe => ww_devoe,
	o => \HEX0[3]~output_o\);

-- Location: IOOBUF_X74_Y54_N2
\HEX0[4]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \PCDECODE|Mux4~0_combout\,
	devoe => ww_devoe,
	o => \HEX0[4]~output_o\);

-- Location: IOOBUF_X74_Y54_N16
\HEX0[5]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \PCDECODE|Mux5~0_combout\,
	devoe => ww_devoe,
	o => \HEX0[5]~output_o\);

-- Location: IOOBUF_X74_Y54_N23
\HEX0[6]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \PCDECODE|ALT_INV_Mux6~0_combout\,
	devoe => ww_devoe,
	o => \HEX0[6]~output_o\);

-- Location: IOOBUF_X69_Y54_N23
\HEX1[0]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \OPCODE|Mux0~0_combout\,
	devoe => ww_devoe,
	o => \HEX1[0]~output_o\);

-- Location: IOOBUF_X78_Y49_N9
\HEX1[1]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \OPCODE|Mux1~0_combout\,
	devoe => ww_devoe,
	o => \HEX1[1]~output_o\);

-- Location: IOOBUF_X78_Y49_N2
\HEX1[2]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \OPCODE|Mux2~0_combout\,
	devoe => ww_devoe,
	o => \HEX1[2]~output_o\);

-- Location: IOOBUF_X60_Y54_N9
\HEX1[3]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \OPCODE|Mux3~0_combout\,
	devoe => ww_devoe,
	o => \HEX1[3]~output_o\);

-- Location: IOOBUF_X64_Y54_N2
\HEX1[4]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \OPCODE|Mux4~0_combout\,
	devoe => ww_devoe,
	o => \HEX1[4]~output_o\);

-- Location: IOOBUF_X66_Y54_N30
\HEX1[5]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \OPCODE|Mux5~0_combout\,
	devoe => ww_devoe,
	o => \HEX1[5]~output_o\);

-- Location: IOOBUF_X69_Y54_N30
\HEX1[6]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \OPCODE|ALT_INV_Mux6~0_combout\,
	devoe => ww_devoe,
	o => \HEX1[6]~output_o\);

-- Location: IOOBUF_X78_Y44_N9
\HEX2[0]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \OPERAND|ALT_INV_Mux0~0_combout\,
	devoe => ww_devoe,
	o => \HEX2[0]~output_o\);

-- Location: IOOBUF_X66_Y54_N2
\HEX2[1]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \OPERAND|ALT_INV_Mux1~0_combout\,
	devoe => ww_devoe,
	o => \HEX2[1]~output_o\);

-- Location: IOOBUF_X69_Y54_N16
\HEX2[2]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \OPERAND|Mux2~0_combout\,
	devoe => ww_devoe,
	o => \HEX2[2]~output_o\);

-- Location: IOOBUF_X78_Y44_N2
\HEX2[3]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \OPERAND|Mux3~0_combout\,
	devoe => ww_devoe,
	o => \HEX2[3]~output_o\);

-- Location: IOOBUF_X78_Y43_N2
\HEX2[4]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \OPERAND|Mux4~0_combout\,
	devoe => ww_devoe,
	o => \HEX2[4]~output_o\);

-- Location: IOOBUF_X78_Y35_N2
\HEX2[5]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \OPERAND|Mux5~0_combout\,
	devoe => ww_devoe,
	o => \HEX2[5]~output_o\);

-- Location: IOOBUF_X78_Y43_N9
\HEX2[6]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \OPERAND|ALT_INV_Mux6~0_combout\,
	devoe => ww_devoe,
	o => \HEX2[6]~output_o\);

-- Location: IOOBUF_X78_Y35_N23
\HEX3[0]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \REG_A|Mux0~0_combout\,
	devoe => ww_devoe,
	o => \HEX3[0]~output_o\);

-- Location: IOOBUF_X78_Y33_N9
\HEX3[1]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \REG_A|Mux1~0_combout\,
	devoe => ww_devoe,
	o => \HEX3[1]~output_o\);

-- Location: IOOBUF_X78_Y33_N2
\HEX3[2]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \REG_A|Mux2~0_combout\,
	devoe => ww_devoe,
	o => \HEX3[2]~output_o\);

-- Location: IOOBUF_X69_Y54_N9
\HEX3[3]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \REG_A|Mux3~0_combout\,
	devoe => ww_devoe,
	o => \HEX3[3]~output_o\);

-- Location: IOOBUF_X78_Y41_N9
\HEX3[4]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \REG_A|Mux4~0_combout\,
	devoe => ww_devoe,
	o => \HEX3[4]~output_o\);

-- Location: IOOBUF_X78_Y41_N2
\HEX3[5]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \REG_A|Mux5~0_combout\,
	devoe => ww_devoe,
	o => \HEX3[5]~output_o\);

-- Location: IOOBUF_X78_Y43_N16
\HEX3[6]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \REG_A|ALT_INV_Mux6~0_combout\,
	devoe => ww_devoe,
	o => \HEX3[6]~output_o\);

-- Location: IOOBUF_X78_Y40_N16
\HEX4[0]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \REG_B|Mux0~0_combout\,
	devoe => ww_devoe,
	o => \HEX4[0]~output_o\);

-- Location: IOOBUF_X78_Y40_N2
\HEX4[1]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \REG_B|Mux1~0_combout\,
	devoe => ww_devoe,
	o => \HEX4[1]~output_o\);

-- Location: IOOBUF_X78_Y40_N23
\HEX4[2]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \REG_B|Mux2~0_combout\,
	devoe => ww_devoe,
	o => \HEX4[2]~output_o\);

-- Location: IOOBUF_X78_Y42_N16
\HEX4[3]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \REG_B|Mux3~0_combout\,
	devoe => ww_devoe,
	o => \HEX4[3]~output_o\);

-- Location: IOOBUF_X78_Y45_N23
\HEX4[4]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \REG_B|Mux4~0_combout\,
	devoe => ww_devoe,
	o => \HEX4[4]~output_o\);

-- Location: IOOBUF_X78_Y40_N9
\HEX4[5]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \REG_B|Mux5~0_combout\,
	devoe => ww_devoe,
	o => \HEX4[5]~output_o\);

-- Location: IOOBUF_X78_Y35_N16
\HEX4[6]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \REG_B|ALT_INV_Mux6~0_combout\,
	devoe => ww_devoe,
	o => \HEX4[6]~output_o\);

-- Location: IOOBUF_X78_Y45_N9
\HEX5[0]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \ALUDECODE|Mux0~0_combout\,
	devoe => ww_devoe,
	o => \HEX5[0]~output_o\);

-- Location: IOOBUF_X78_Y42_N2
\HEX5[1]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \ALUDECODE|Mux1~0_combout\,
	devoe => ww_devoe,
	o => \HEX5[1]~output_o\);

-- Location: IOOBUF_X78_Y37_N16
\HEX5[2]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \ALUDECODE|Mux2~0_combout\,
	devoe => ww_devoe,
	o => \HEX5[2]~output_o\);

-- Location: IOOBUF_X78_Y34_N24
\HEX5[3]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \ALUDECODE|Mux3~0_combout\,
	devoe => ww_devoe,
	o => \HEX5[3]~output_o\);

-- Location: IOOBUF_X78_Y34_N9
\HEX5[4]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \ALUDECODE|Mux4~0_combout\,
	devoe => ww_devoe,
	o => \HEX5[4]~output_o\);

-- Location: IOOBUF_X78_Y34_N16
\HEX5[5]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \ALUDECODE|Mux5~0_combout\,
	devoe => ww_devoe,
	o => \HEX5[5]~output_o\);

-- Location: IOOBUF_X78_Y34_N2
\HEX5[6]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \ALUDECODE|ALT_INV_Mux6~0_combout\,
	devoe => ww_devoe,
	o => \HEX5[6]~output_o\);

-- Location: IOIBUF_X34_Y0_N29
\MAX10CLK~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_MAX10CLK,
	o => \MAX10CLK~input_o\);

-- Location: CLKCTRL_G19
\MAX10CLK~inputclkctrl\ : fiftyfivenm_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \MAX10CLK~inputclkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \MAX10CLK~inputclkctrl_outclk\);

-- Location: IOIBUF_X49_Y54_N29
\KEY[1]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_KEY(1),
	o => \KEY[1]~input_o\);

-- Location: LCCOMB_X57_Y52_N4
\GDGERGD|key_sync1~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \GDGERGD|key_sync1~0_combout\ = !\KEY[1]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \KEY[1]~input_o\,
	combout => \GDGERGD|key_sync1~0_combout\);

-- Location: IOIBUF_X46_Y54_N29
\KEY[0]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_KEY(0),
	o => \KEY[0]~input_o\);

-- Location: FF_X57_Y52_N5
\GDGERGD|key_sync1\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \MAX10CLK~inputclkctrl_outclk\,
	d => \GDGERGD|key_sync1~0_combout\,
	clrn => \KEY[0]~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \GDGERGD|key_sync1~q\);

-- Location: LCCOMB_X57_Y52_N18
\GDGERGD|key_sync2~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \GDGERGD|key_sync2~feeder_combout\ = \GDGERGD|key_sync1~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \GDGERGD|key_sync1~q\,
	combout => \GDGERGD|key_sync2~feeder_combout\);

-- Location: FF_X57_Y52_N19
\GDGERGD|key_sync2\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \MAX10CLK~inputclkctrl_outclk\,
	d => \GDGERGD|key_sync2~feeder_combout\,
	clrn => \KEY[0]~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \GDGERGD|key_sync2~q\);

-- Location: LCCOMB_X57_Y52_N12
\GDGERGD|key_old~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \GDGERGD|key_old~feeder_combout\ = \GDGERGD|key_sync2~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \GDGERGD|key_sync2~q\,
	combout => \GDGERGD|key_old~feeder_combout\);

-- Location: FF_X57_Y52_N13
\GDGERGD|key_old\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \MAX10CLK~inputclkctrl_outclk\,
	d => \GDGERGD|key_old~feeder_combout\,
	clrn => \KEY[0]~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \GDGERGD|key_old~q\);

-- Location: IOIBUF_X54_Y54_N22
\SW[4]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SW(4),
	o => \SW[4]~input_o\);

-- Location: LCCOMB_X58_Y52_N8
\GDGERGD|count[0]~25\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \GDGERGD|count[0]~25_combout\ = \GDGERGD|count\(0) $ (VCC)
-- \GDGERGD|count[0]~26\ = CARRY(\GDGERGD|count\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \GDGERGD|count\(0),
	datad => VCC,
	combout => \GDGERGD|count[0]~25_combout\,
	cout => \GDGERGD|count[0]~26\);

-- Location: LCCOMB_X58_Y52_N6
\GDGERGD|count[7]~27\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \GDGERGD|count[7]~27_combout\ = (!\GDGERGD|Equal0~7_combout\) # (!\SW[4]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW[4]~input_o\,
	datad => \GDGERGD|Equal0~7_combout\,
	combout => \GDGERGD|count[7]~27_combout\);

-- Location: FF_X58_Y52_N9
\GDGERGD|count[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \MAX10CLK~inputclkctrl_outclk\,
	d => \GDGERGD|count[0]~25_combout\,
	clrn => \KEY[0]~input_o\,
	sclr => \GDGERGD|count[7]~27_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \GDGERGD|count\(0));

-- Location: LCCOMB_X58_Y52_N10
\GDGERGD|count[1]~28\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \GDGERGD|count[1]~28_combout\ = (\GDGERGD|count\(1) & (!\GDGERGD|count[0]~26\)) # (!\GDGERGD|count\(1) & ((\GDGERGD|count[0]~26\) # (GND)))
-- \GDGERGD|count[1]~29\ = CARRY((!\GDGERGD|count[0]~26\) # (!\GDGERGD|count\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \GDGERGD|count\(1),
	datad => VCC,
	cin => \GDGERGD|count[0]~26\,
	combout => \GDGERGD|count[1]~28_combout\,
	cout => \GDGERGD|count[1]~29\);

-- Location: FF_X58_Y52_N11
\GDGERGD|count[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \MAX10CLK~inputclkctrl_outclk\,
	d => \GDGERGD|count[1]~28_combout\,
	clrn => \KEY[0]~input_o\,
	sclr => \GDGERGD|count[7]~27_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \GDGERGD|count\(1));

-- Location: LCCOMB_X58_Y52_N12
\GDGERGD|count[2]~30\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \GDGERGD|count[2]~30_combout\ = (\GDGERGD|count\(2) & (\GDGERGD|count[1]~29\ $ (GND))) # (!\GDGERGD|count\(2) & (!\GDGERGD|count[1]~29\ & VCC))
-- \GDGERGD|count[2]~31\ = CARRY((\GDGERGD|count\(2) & !\GDGERGD|count[1]~29\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \GDGERGD|count\(2),
	datad => VCC,
	cin => \GDGERGD|count[1]~29\,
	combout => \GDGERGD|count[2]~30_combout\,
	cout => \GDGERGD|count[2]~31\);

-- Location: FF_X58_Y52_N13
\GDGERGD|count[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \MAX10CLK~inputclkctrl_outclk\,
	d => \GDGERGD|count[2]~30_combout\,
	clrn => \KEY[0]~input_o\,
	sclr => \GDGERGD|count[7]~27_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \GDGERGD|count\(2));

-- Location: LCCOMB_X58_Y52_N14
\GDGERGD|count[3]~32\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \GDGERGD|count[3]~32_combout\ = (\GDGERGD|count\(3) & (!\GDGERGD|count[2]~31\)) # (!\GDGERGD|count\(3) & ((\GDGERGD|count[2]~31\) # (GND)))
-- \GDGERGD|count[3]~33\ = CARRY((!\GDGERGD|count[2]~31\) # (!\GDGERGD|count\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \GDGERGD|count\(3),
	datad => VCC,
	cin => \GDGERGD|count[2]~31\,
	combout => \GDGERGD|count[3]~32_combout\,
	cout => \GDGERGD|count[3]~33\);

-- Location: FF_X58_Y52_N15
\GDGERGD|count[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \MAX10CLK~inputclkctrl_outclk\,
	d => \GDGERGD|count[3]~32_combout\,
	clrn => \KEY[0]~input_o\,
	sclr => \GDGERGD|count[7]~27_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \GDGERGD|count\(3));

-- Location: LCCOMB_X58_Y52_N16
\GDGERGD|count[4]~34\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \GDGERGD|count[4]~34_combout\ = (\GDGERGD|count\(4) & (\GDGERGD|count[3]~33\ $ (GND))) # (!\GDGERGD|count\(4) & (!\GDGERGD|count[3]~33\ & VCC))
-- \GDGERGD|count[4]~35\ = CARRY((\GDGERGD|count\(4) & !\GDGERGD|count[3]~33\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \GDGERGD|count\(4),
	datad => VCC,
	cin => \GDGERGD|count[3]~33\,
	combout => \GDGERGD|count[4]~34_combout\,
	cout => \GDGERGD|count[4]~35\);

-- Location: FF_X58_Y52_N17
\GDGERGD|count[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \MAX10CLK~inputclkctrl_outclk\,
	d => \GDGERGD|count[4]~34_combout\,
	clrn => \KEY[0]~input_o\,
	sclr => \GDGERGD|count[7]~27_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \GDGERGD|count\(4));

-- Location: LCCOMB_X58_Y52_N18
\GDGERGD|count[5]~36\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \GDGERGD|count[5]~36_combout\ = (\GDGERGD|count\(5) & (!\GDGERGD|count[4]~35\)) # (!\GDGERGD|count\(5) & ((\GDGERGD|count[4]~35\) # (GND)))
-- \GDGERGD|count[5]~37\ = CARRY((!\GDGERGD|count[4]~35\) # (!\GDGERGD|count\(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \GDGERGD|count\(5),
	datad => VCC,
	cin => \GDGERGD|count[4]~35\,
	combout => \GDGERGD|count[5]~36_combout\,
	cout => \GDGERGD|count[5]~37\);

-- Location: FF_X58_Y52_N19
\GDGERGD|count[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \MAX10CLK~inputclkctrl_outclk\,
	d => \GDGERGD|count[5]~36_combout\,
	clrn => \KEY[0]~input_o\,
	sclr => \GDGERGD|count[7]~27_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \GDGERGD|count\(5));

-- Location: LCCOMB_X58_Y52_N20
\GDGERGD|count[6]~38\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \GDGERGD|count[6]~38_combout\ = (\GDGERGD|count\(6) & (\GDGERGD|count[5]~37\ $ (GND))) # (!\GDGERGD|count\(6) & (!\GDGERGD|count[5]~37\ & VCC))
-- \GDGERGD|count[6]~39\ = CARRY((\GDGERGD|count\(6) & !\GDGERGD|count[5]~37\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \GDGERGD|count\(6),
	datad => VCC,
	cin => \GDGERGD|count[5]~37\,
	combout => \GDGERGD|count[6]~38_combout\,
	cout => \GDGERGD|count[6]~39\);

-- Location: FF_X58_Y52_N21
\GDGERGD|count[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \MAX10CLK~inputclkctrl_outclk\,
	d => \GDGERGD|count[6]~38_combout\,
	clrn => \KEY[0]~input_o\,
	sclr => \GDGERGD|count[7]~27_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \GDGERGD|count\(6));

-- Location: LCCOMB_X58_Y52_N22
\GDGERGD|count[7]~40\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \GDGERGD|count[7]~40_combout\ = (\GDGERGD|count\(7) & (!\GDGERGD|count[6]~39\)) # (!\GDGERGD|count\(7) & ((\GDGERGD|count[6]~39\) # (GND)))
-- \GDGERGD|count[7]~41\ = CARRY((!\GDGERGD|count[6]~39\) # (!\GDGERGD|count\(7)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \GDGERGD|count\(7),
	datad => VCC,
	cin => \GDGERGD|count[6]~39\,
	combout => \GDGERGD|count[7]~40_combout\,
	cout => \GDGERGD|count[7]~41\);

-- Location: FF_X58_Y52_N23
\GDGERGD|count[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \MAX10CLK~inputclkctrl_outclk\,
	d => \GDGERGD|count[7]~40_combout\,
	clrn => \KEY[0]~input_o\,
	sclr => \GDGERGD|count[7]~27_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \GDGERGD|count\(7));

-- Location: LCCOMB_X58_Y52_N24
\GDGERGD|count[8]~42\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \GDGERGD|count[8]~42_combout\ = (\GDGERGD|count\(8) & (\GDGERGD|count[7]~41\ $ (GND))) # (!\GDGERGD|count\(8) & (!\GDGERGD|count[7]~41\ & VCC))
-- \GDGERGD|count[8]~43\ = CARRY((\GDGERGD|count\(8) & !\GDGERGD|count[7]~41\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \GDGERGD|count\(8),
	datad => VCC,
	cin => \GDGERGD|count[7]~41\,
	combout => \GDGERGD|count[8]~42_combout\,
	cout => \GDGERGD|count[8]~43\);

-- Location: FF_X58_Y52_N25
\GDGERGD|count[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \MAX10CLK~inputclkctrl_outclk\,
	d => \GDGERGD|count[8]~42_combout\,
	clrn => \KEY[0]~input_o\,
	sclr => \GDGERGD|count[7]~27_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \GDGERGD|count\(8));

-- Location: LCCOMB_X58_Y52_N26
\GDGERGD|count[9]~44\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \GDGERGD|count[9]~44_combout\ = (\GDGERGD|count\(9) & (!\GDGERGD|count[8]~43\)) # (!\GDGERGD|count\(9) & ((\GDGERGD|count[8]~43\) # (GND)))
-- \GDGERGD|count[9]~45\ = CARRY((!\GDGERGD|count[8]~43\) # (!\GDGERGD|count\(9)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \GDGERGD|count\(9),
	datad => VCC,
	cin => \GDGERGD|count[8]~43\,
	combout => \GDGERGD|count[9]~44_combout\,
	cout => \GDGERGD|count[9]~45\);

-- Location: FF_X58_Y52_N27
\GDGERGD|count[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \MAX10CLK~inputclkctrl_outclk\,
	d => \GDGERGD|count[9]~44_combout\,
	clrn => \KEY[0]~input_o\,
	sclr => \GDGERGD|count[7]~27_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \GDGERGD|count\(9));

-- Location: LCCOMB_X58_Y52_N28
\GDGERGD|count[10]~46\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \GDGERGD|count[10]~46_combout\ = (\GDGERGD|count\(10) & (\GDGERGD|count[9]~45\ $ (GND))) # (!\GDGERGD|count\(10) & (!\GDGERGD|count[9]~45\ & VCC))
-- \GDGERGD|count[10]~47\ = CARRY((\GDGERGD|count\(10) & !\GDGERGD|count[9]~45\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \GDGERGD|count\(10),
	datad => VCC,
	cin => \GDGERGD|count[9]~45\,
	combout => \GDGERGD|count[10]~46_combout\,
	cout => \GDGERGD|count[10]~47\);

-- Location: FF_X58_Y52_N29
\GDGERGD|count[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \MAX10CLK~inputclkctrl_outclk\,
	d => \GDGERGD|count[10]~46_combout\,
	clrn => \KEY[0]~input_o\,
	sclr => \GDGERGD|count[7]~27_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \GDGERGD|count\(10));

-- Location: LCCOMB_X58_Y52_N30
\GDGERGD|count[11]~48\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \GDGERGD|count[11]~48_combout\ = (\GDGERGD|count\(11) & (!\GDGERGD|count[10]~47\)) # (!\GDGERGD|count\(11) & ((\GDGERGD|count[10]~47\) # (GND)))
-- \GDGERGD|count[11]~49\ = CARRY((!\GDGERGD|count[10]~47\) # (!\GDGERGD|count\(11)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \GDGERGD|count\(11),
	datad => VCC,
	cin => \GDGERGD|count[10]~47\,
	combout => \GDGERGD|count[11]~48_combout\,
	cout => \GDGERGD|count[11]~49\);

-- Location: FF_X58_Y52_N31
\GDGERGD|count[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \MAX10CLK~inputclkctrl_outclk\,
	d => \GDGERGD|count[11]~48_combout\,
	clrn => \KEY[0]~input_o\,
	sclr => \GDGERGD|count[7]~27_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \GDGERGD|count\(11));

-- Location: LCCOMB_X58_Y51_N0
\GDGERGD|count[12]~50\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \GDGERGD|count[12]~50_combout\ = (\GDGERGD|count\(12) & (\GDGERGD|count[11]~49\ $ (GND))) # (!\GDGERGD|count\(12) & (!\GDGERGD|count[11]~49\ & VCC))
-- \GDGERGD|count[12]~51\ = CARRY((\GDGERGD|count\(12) & !\GDGERGD|count[11]~49\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \GDGERGD|count\(12),
	datad => VCC,
	cin => \GDGERGD|count[11]~49\,
	combout => \GDGERGD|count[12]~50_combout\,
	cout => \GDGERGD|count[12]~51\);

-- Location: FF_X58_Y51_N1
\GDGERGD|count[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \MAX10CLK~inputclkctrl_outclk\,
	d => \GDGERGD|count[12]~50_combout\,
	clrn => \KEY[0]~input_o\,
	sclr => \GDGERGD|count[7]~27_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \GDGERGD|count\(12));

-- Location: LCCOMB_X58_Y51_N2
\GDGERGD|count[13]~52\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \GDGERGD|count[13]~52_combout\ = (\GDGERGD|count\(13) & (!\GDGERGD|count[12]~51\)) # (!\GDGERGD|count\(13) & ((\GDGERGD|count[12]~51\) # (GND)))
-- \GDGERGD|count[13]~53\ = CARRY((!\GDGERGD|count[12]~51\) # (!\GDGERGD|count\(13)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \GDGERGD|count\(13),
	datad => VCC,
	cin => \GDGERGD|count[12]~51\,
	combout => \GDGERGD|count[13]~52_combout\,
	cout => \GDGERGD|count[13]~53\);

-- Location: FF_X58_Y51_N3
\GDGERGD|count[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \MAX10CLK~inputclkctrl_outclk\,
	d => \GDGERGD|count[13]~52_combout\,
	clrn => \KEY[0]~input_o\,
	sclr => \GDGERGD|count[7]~27_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \GDGERGD|count\(13));

-- Location: LCCOMB_X58_Y51_N4
\GDGERGD|count[14]~54\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \GDGERGD|count[14]~54_combout\ = (\GDGERGD|count\(14) & (\GDGERGD|count[13]~53\ $ (GND))) # (!\GDGERGD|count\(14) & (!\GDGERGD|count[13]~53\ & VCC))
-- \GDGERGD|count[14]~55\ = CARRY((\GDGERGD|count\(14) & !\GDGERGD|count[13]~53\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \GDGERGD|count\(14),
	datad => VCC,
	cin => \GDGERGD|count[13]~53\,
	combout => \GDGERGD|count[14]~54_combout\,
	cout => \GDGERGD|count[14]~55\);

-- Location: FF_X58_Y51_N5
\GDGERGD|count[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \MAX10CLK~inputclkctrl_outclk\,
	d => \GDGERGD|count[14]~54_combout\,
	clrn => \KEY[0]~input_o\,
	sclr => \GDGERGD|count[7]~27_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \GDGERGD|count\(14));

-- Location: LCCOMB_X58_Y51_N6
\GDGERGD|count[15]~56\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \GDGERGD|count[15]~56_combout\ = (\GDGERGD|count\(15) & (!\GDGERGD|count[14]~55\)) # (!\GDGERGD|count\(15) & ((\GDGERGD|count[14]~55\) # (GND)))
-- \GDGERGD|count[15]~57\ = CARRY((!\GDGERGD|count[14]~55\) # (!\GDGERGD|count\(15)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \GDGERGD|count\(15),
	datad => VCC,
	cin => \GDGERGD|count[14]~55\,
	combout => \GDGERGD|count[15]~56_combout\,
	cout => \GDGERGD|count[15]~57\);

-- Location: FF_X58_Y51_N7
\GDGERGD|count[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \MAX10CLK~inputclkctrl_outclk\,
	d => \GDGERGD|count[15]~56_combout\,
	clrn => \KEY[0]~input_o\,
	sclr => \GDGERGD|count[7]~27_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \GDGERGD|count\(15));

-- Location: LCCOMB_X58_Y51_N8
\GDGERGD|count[16]~58\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \GDGERGD|count[16]~58_combout\ = (\GDGERGD|count\(16) & (\GDGERGD|count[15]~57\ $ (GND))) # (!\GDGERGD|count\(16) & (!\GDGERGD|count[15]~57\ & VCC))
-- \GDGERGD|count[16]~59\ = CARRY((\GDGERGD|count\(16) & !\GDGERGD|count[15]~57\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \GDGERGD|count\(16),
	datad => VCC,
	cin => \GDGERGD|count[15]~57\,
	combout => \GDGERGD|count[16]~58_combout\,
	cout => \GDGERGD|count[16]~59\);

-- Location: FF_X58_Y51_N9
\GDGERGD|count[16]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \MAX10CLK~inputclkctrl_outclk\,
	d => \GDGERGD|count[16]~58_combout\,
	clrn => \KEY[0]~input_o\,
	sclr => \GDGERGD|count[7]~27_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \GDGERGD|count\(16));

-- Location: LCCOMB_X58_Y51_N10
\GDGERGD|count[17]~60\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \GDGERGD|count[17]~60_combout\ = (\GDGERGD|count\(17) & (!\GDGERGD|count[16]~59\)) # (!\GDGERGD|count\(17) & ((\GDGERGD|count[16]~59\) # (GND)))
-- \GDGERGD|count[17]~61\ = CARRY((!\GDGERGD|count[16]~59\) # (!\GDGERGD|count\(17)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \GDGERGD|count\(17),
	datad => VCC,
	cin => \GDGERGD|count[16]~59\,
	combout => \GDGERGD|count[17]~60_combout\,
	cout => \GDGERGD|count[17]~61\);

-- Location: FF_X58_Y51_N11
\GDGERGD|count[17]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \MAX10CLK~inputclkctrl_outclk\,
	d => \GDGERGD|count[17]~60_combout\,
	clrn => \KEY[0]~input_o\,
	sclr => \GDGERGD|count[7]~27_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \GDGERGD|count\(17));

-- Location: LCCOMB_X58_Y51_N12
\GDGERGD|count[18]~62\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \GDGERGD|count[18]~62_combout\ = (\GDGERGD|count\(18) & (\GDGERGD|count[17]~61\ $ (GND))) # (!\GDGERGD|count\(18) & (!\GDGERGD|count[17]~61\ & VCC))
-- \GDGERGD|count[18]~63\ = CARRY((\GDGERGD|count\(18) & !\GDGERGD|count[17]~61\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \GDGERGD|count\(18),
	datad => VCC,
	cin => \GDGERGD|count[17]~61\,
	combout => \GDGERGD|count[18]~62_combout\,
	cout => \GDGERGD|count[18]~63\);

-- Location: FF_X58_Y51_N13
\GDGERGD|count[18]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \MAX10CLK~inputclkctrl_outclk\,
	d => \GDGERGD|count[18]~62_combout\,
	clrn => \KEY[0]~input_o\,
	sclr => \GDGERGD|count[7]~27_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \GDGERGD|count\(18));

-- Location: LCCOMB_X58_Y51_N14
\GDGERGD|count[19]~64\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \GDGERGD|count[19]~64_combout\ = (\GDGERGD|count\(19) & (!\GDGERGD|count[18]~63\)) # (!\GDGERGD|count\(19) & ((\GDGERGD|count[18]~63\) # (GND)))
-- \GDGERGD|count[19]~65\ = CARRY((!\GDGERGD|count[18]~63\) # (!\GDGERGD|count\(19)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \GDGERGD|count\(19),
	datad => VCC,
	cin => \GDGERGD|count[18]~63\,
	combout => \GDGERGD|count[19]~64_combout\,
	cout => \GDGERGD|count[19]~65\);

-- Location: FF_X58_Y51_N15
\GDGERGD|count[19]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \MAX10CLK~inputclkctrl_outclk\,
	d => \GDGERGD|count[19]~64_combout\,
	clrn => \KEY[0]~input_o\,
	sclr => \GDGERGD|count[7]~27_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \GDGERGD|count\(19));

-- Location: LCCOMB_X58_Y51_N16
\GDGERGD|count[20]~66\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \GDGERGD|count[20]~66_combout\ = (\GDGERGD|count\(20) & (\GDGERGD|count[19]~65\ $ (GND))) # (!\GDGERGD|count\(20) & (!\GDGERGD|count[19]~65\ & VCC))
-- \GDGERGD|count[20]~67\ = CARRY((\GDGERGD|count\(20) & !\GDGERGD|count[19]~65\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \GDGERGD|count\(20),
	datad => VCC,
	cin => \GDGERGD|count[19]~65\,
	combout => \GDGERGD|count[20]~66_combout\,
	cout => \GDGERGD|count[20]~67\);

-- Location: FF_X58_Y51_N17
\GDGERGD|count[20]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \MAX10CLK~inputclkctrl_outclk\,
	d => \GDGERGD|count[20]~66_combout\,
	clrn => \KEY[0]~input_o\,
	sclr => \GDGERGD|count[7]~27_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \GDGERGD|count\(20));

-- Location: LCCOMB_X58_Y51_N18
\GDGERGD|count[21]~68\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \GDGERGD|count[21]~68_combout\ = (\GDGERGD|count\(21) & (!\GDGERGD|count[20]~67\)) # (!\GDGERGD|count\(21) & ((\GDGERGD|count[20]~67\) # (GND)))
-- \GDGERGD|count[21]~69\ = CARRY((!\GDGERGD|count[20]~67\) # (!\GDGERGD|count\(21)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \GDGERGD|count\(21),
	datad => VCC,
	cin => \GDGERGD|count[20]~67\,
	combout => \GDGERGD|count[21]~68_combout\,
	cout => \GDGERGD|count[21]~69\);

-- Location: FF_X58_Y51_N19
\GDGERGD|count[21]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \MAX10CLK~inputclkctrl_outclk\,
	d => \GDGERGD|count[21]~68_combout\,
	clrn => \KEY[0]~input_o\,
	sclr => \GDGERGD|count[7]~27_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \GDGERGD|count\(21));

-- Location: LCCOMB_X58_Y51_N20
\GDGERGD|count[22]~70\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \GDGERGD|count[22]~70_combout\ = (\GDGERGD|count\(22) & (\GDGERGD|count[21]~69\ $ (GND))) # (!\GDGERGD|count\(22) & (!\GDGERGD|count[21]~69\ & VCC))
-- \GDGERGD|count[22]~71\ = CARRY((\GDGERGD|count\(22) & !\GDGERGD|count[21]~69\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \GDGERGD|count\(22),
	datad => VCC,
	cin => \GDGERGD|count[21]~69\,
	combout => \GDGERGD|count[22]~70_combout\,
	cout => \GDGERGD|count[22]~71\);

-- Location: FF_X58_Y51_N21
\GDGERGD|count[22]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \MAX10CLK~inputclkctrl_outclk\,
	d => \GDGERGD|count[22]~70_combout\,
	clrn => \KEY[0]~input_o\,
	sclr => \GDGERGD|count[7]~27_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \GDGERGD|count\(22));

-- Location: LCCOMB_X58_Y51_N22
\GDGERGD|count[23]~72\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \GDGERGD|count[23]~72_combout\ = (\GDGERGD|count\(23) & (!\GDGERGD|count[22]~71\)) # (!\GDGERGD|count\(23) & ((\GDGERGD|count[22]~71\) # (GND)))
-- \GDGERGD|count[23]~73\ = CARRY((!\GDGERGD|count[22]~71\) # (!\GDGERGD|count\(23)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \GDGERGD|count\(23),
	datad => VCC,
	cin => \GDGERGD|count[22]~71\,
	combout => \GDGERGD|count[23]~72_combout\,
	cout => \GDGERGD|count[23]~73\);

-- Location: FF_X58_Y51_N23
\GDGERGD|count[23]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \MAX10CLK~inputclkctrl_outclk\,
	d => \GDGERGD|count[23]~72_combout\,
	clrn => \KEY[0]~input_o\,
	sclr => \GDGERGD|count[7]~27_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \GDGERGD|count\(23));

-- Location: LCCOMB_X58_Y51_N24
\GDGERGD|count[24]~74\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \GDGERGD|count[24]~74_combout\ = \GDGERGD|count[23]~73\ $ (!\GDGERGD|count\(24))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => \GDGERGD|count\(24),
	cin => \GDGERGD|count[23]~73\,
	combout => \GDGERGD|count[24]~74_combout\);

-- Location: FF_X58_Y51_N25
\GDGERGD|count[24]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \MAX10CLK~inputclkctrl_outclk\,
	d => \GDGERGD|count[24]~74_combout\,
	clrn => \KEY[0]~input_o\,
	sclr => \GDGERGD|count[7]~27_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \GDGERGD|count\(24));

-- Location: LCCOMB_X58_Y51_N26
\GDGERGD|Equal0~6\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \GDGERGD|Equal0~6_combout\ = (\GDGERGD|count\(23)) # (((!\GDGERGD|count\(21)) # (!\GDGERGD|count\(22))) # (!\GDGERGD|count\(20)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \GDGERGD|count\(23),
	datab => \GDGERGD|count\(20),
	datac => \GDGERGD|count\(22),
	datad => \GDGERGD|count\(21),
	combout => \GDGERGD|Equal0~6_combout\);

-- Location: LCCOMB_X58_Y51_N28
\GDGERGD|Equal0~5\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \GDGERGD|Equal0~5_combout\ = (\GDGERGD|count\(17)) # (((!\GDGERGD|count\(18)) # (!\GDGERGD|count\(16))) # (!\GDGERGD|count\(19)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \GDGERGD|count\(17),
	datab => \GDGERGD|count\(19),
	datac => \GDGERGD|count\(16),
	datad => \GDGERGD|count\(18),
	combout => \GDGERGD|Equal0~5_combout\);

-- Location: LCCOMB_X57_Y52_N14
\GDGERGD|Equal0~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \GDGERGD|Equal0~1_combout\ = (\GDGERGD|count\(6)) # (((\GDGERGD|count\(7)) # (!\GDGERGD|count\(4))) # (!\GDGERGD|count\(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \GDGERGD|count\(6),
	datab => \GDGERGD|count\(5),
	datac => \GDGERGD|count\(7),
	datad => \GDGERGD|count\(4),
	combout => \GDGERGD|Equal0~1_combout\);

-- Location: LCCOMB_X58_Y52_N4
\GDGERGD|Equal0~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \GDGERGD|Equal0~2_combout\ = (\GDGERGD|count\(9)) # ((\GDGERGD|count\(8)) # ((\GDGERGD|count\(10)) # (!\GDGERGD|count\(11))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111101111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \GDGERGD|count\(9),
	datab => \GDGERGD|count\(8),
	datac => \GDGERGD|count\(11),
	datad => \GDGERGD|count\(10),
	combout => \GDGERGD|Equal0~2_combout\);

-- Location: LCCOMB_X57_Y52_N6
\GDGERGD|Equal0~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \GDGERGD|Equal0~0_combout\ = (((!\GDGERGD|count\(3)) # (!\GDGERGD|count\(2))) # (!\GDGERGD|count\(0))) # (!\GDGERGD|count\(1))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \GDGERGD|count\(1),
	datab => \GDGERGD|count\(0),
	datac => \GDGERGD|count\(2),
	datad => \GDGERGD|count\(3),
	combout => \GDGERGD|Equal0~0_combout\);

-- Location: LCCOMB_X58_Y51_N30
\GDGERGD|Equal0~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \GDGERGD|Equal0~3_combout\ = (((\GDGERGD|count\(15)) # (!\GDGERGD|count\(14))) # (!\GDGERGD|count\(12))) # (!\GDGERGD|count\(13))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111101111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \GDGERGD|count\(13),
	datab => \GDGERGD|count\(12),
	datac => \GDGERGD|count\(14),
	datad => \GDGERGD|count\(15),
	combout => \GDGERGD|Equal0~3_combout\);

-- Location: LCCOMB_X58_Y52_N2
\GDGERGD|Equal0~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \GDGERGD|Equal0~4_combout\ = (\GDGERGD|Equal0~1_combout\) # ((\GDGERGD|Equal0~2_combout\) # ((\GDGERGD|Equal0~0_combout\) # (\GDGERGD|Equal0~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \GDGERGD|Equal0~1_combout\,
	datab => \GDGERGD|Equal0~2_combout\,
	datac => \GDGERGD|Equal0~0_combout\,
	datad => \GDGERGD|Equal0~3_combout\,
	combout => \GDGERGD|Equal0~4_combout\);

-- Location: LCCOMB_X58_Y52_N0
\GDGERGD|Equal0~7\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \GDGERGD|Equal0~7_combout\ = ((\GDGERGD|Equal0~6_combout\) # ((\GDGERGD|Equal0~5_combout\) # (\GDGERGD|Equal0~4_combout\))) # (!\GDGERGD|count\(24))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \GDGERGD|count\(24),
	datab => \GDGERGD|Equal0~6_combout\,
	datac => \GDGERGD|Equal0~5_combout\,
	datad => \GDGERGD|Equal0~4_combout\,
	combout => \GDGERGD|Equal0~7_combout\);

-- Location: LCCOMB_X57_Y52_N10
\GDGERGD|cpu_pulse~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \GDGERGD|cpu_pulse~0_combout\ = (\SW[4]~input_o\ & (((!\GDGERGD|Equal0~7_combout\)))) # (!\SW[4]~input_o\ & (!\GDGERGD|key_old~q\ & ((\GDGERGD|key_sync2~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001110100001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \GDGERGD|key_old~q\,
	datab => \SW[4]~input_o\,
	datac => \GDGERGD|Equal0~7_combout\,
	datad => \GDGERGD|key_sync2~q\,
	combout => \GDGERGD|cpu_pulse~0_combout\);

-- Location: FF_X57_Y52_N11
\GDGERGD|cpu_pulse\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \MAX10CLK~inputclkctrl_outclk\,
	d => \GDGERGD|cpu_pulse~0_combout\,
	clrn => \KEY[0]~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \GDGERGD|cpu_pulse~q\);

-- Location: CLKCTRL_G11
\GDGERGD|cpu_pulse~clkctrl\ : fiftyfivenm_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \GDGERGD|cpu_pulse~clkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \GDGERGD|cpu_pulse~clkctrl_outclk\);

-- Location: LCCOMB_X74_Y47_N30
\inst|UIGF74F|Mux5~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|UIGF74F|Mux5~0_combout\ = (!\inst|inst73~q\ & ((\inst|inst71~q\ & (\inst|SFSYHBH~q\ $ (!\inst|UOOOYFY~q\))) # (!\inst|inst71~q\ & (\inst|SFSYHBH~q\ & !\inst|UOOOYFY~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100000000110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|inst71~q\,
	datab => \inst|SFSYHBH~q\,
	datac => \inst|inst73~q\,
	datad => \inst|UOOOYFY~q\,
	combout => \inst|UIGF74F|Mux5~0_combout\);

-- Location: LCCOMB_X71_Y47_N4
\inst|inst97~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|inst97~0_combout\ = !\inst|inst97~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst|inst97~q\,
	combout => \inst|inst97~0_combout\);

-- Location: FF_X71_Y47_N5
\inst|inst97\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \GDGERGD|cpu_pulse~clkctrl_outclk\,
	d => \inst|inst97~0_combout\,
	clrn => \KEY[0]~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|inst97~q\);

-- Location: FF_X74_Y47_N31
\inst|Y7F83DF\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \GDGERGD|cpu_pulse~clkctrl_outclk\,
	d => \inst|UIGF74F|Mux5~0_combout\,
	clrn => \KEY[0]~input_o\,
	ena => \inst|inst97~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|Y7F83DF~q\);

-- Location: LCCOMB_X71_Y48_N30
\inst|inst92|y[1]~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|inst92|y[1]~1_combout\ = (\inst|inst55|PC_LOAD~0_combout\ & (\inst|Y7F83DF~q\)) # (!\inst|inst55|PC_LOAD~0_combout\ & ((\inst|SFSYHBH~q\ $ (\inst|UOOOYFY~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Y7F83DF~q\,
	datab => \inst|SFSYHBH~q\,
	datac => \inst|UOOOYFY~q\,
	datad => \inst|inst55|PC_LOAD~0_combout\,
	combout => \inst|inst92|y[1]~1_combout\);

-- Location: LCCOMB_X72_Y47_N10
\inst|UIGF74F|Mux0~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|UIGF74F|Mux0~0_combout\ = (!\inst|inst73~q\ & (\inst|UOOOYFY~q\ & (\inst|inst71~q\ $ (\inst|SFSYHBH~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001001000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|inst71~q\,
	datab => \inst|inst73~q\,
	datac => \inst|SFSYHBH~q\,
	datad => \inst|UOOOYFY~q\,
	combout => \inst|UIGF74F|Mux0~0_combout\);

-- Location: FF_X71_Y47_N23
\inst|FHU834OJKF3\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \GDGERGD|cpu_pulse~clkctrl_outclk\,
	asdata => \inst|UIGF74F|Mux0~0_combout\,
	clrn => \KEY[0]~input_o\,
	sload => VCC,
	ena => \inst|inst97~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|FHU834OJKF3~q\);

-- Location: LCCOMB_X71_Y47_N14
\inst|UIGF74F|Mux2~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|UIGF74F|Mux2~0_combout\ = (!\inst|inst73~q\ & (\inst|SFSYHBH~q\ $ (((!\inst|UOOOYFY~q\ & \inst|inst71~q\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010001100010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|UOOOYFY~q\,
	datab => \inst|inst73~q\,
	datac => \inst|inst71~q\,
	datad => \inst|SFSYHBH~q\,
	combout => \inst|UIGF74F|Mux2~0_combout\);

-- Location: FF_X71_Y47_N15
\inst|inst86\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \GDGERGD|cpu_pulse~clkctrl_outclk\,
	d => \inst|UIGF74F|Mux2~0_combout\,
	clrn => \KEY[0]~input_o\,
	ena => \inst|inst97~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|inst86~q\);

-- Location: LCCOMB_X71_Y48_N16
\inst|SFSYHBH~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|SFSYHBH~0_combout\ = (\inst|inst97~q\) # ((\inst|inst88~q\ & (\inst|FHU834OJKF3~q\ & !\inst|inst86~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|inst88~q\,
	datab => \inst|FHU834OJKF3~q\,
	datac => \inst|inst86~q\,
	datad => \inst|inst97~q\,
	combout => \inst|SFSYHBH~0_combout\);

-- Location: FF_X71_Y48_N31
\inst|UOOOYFY\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \GDGERGD|cpu_pulse~clkctrl_outclk\,
	d => \inst|inst92|y[1]~1_combout\,
	clrn => \KEY[0]~input_o\,
	ena => \inst|SFSYHBH~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|UOOOYFY~q\);

-- Location: LCCOMB_X71_Y48_N20
\inst|inst75|inst2|inst4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|inst75|inst2|inst4~combout\ = \inst|inst73~q\ $ (((\inst|SFSYHBH~q\ & (\inst|UOOOYFY~q\ & \inst|inst71~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110110011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|SFSYHBH~q\,
	datab => \inst|inst73~q\,
	datac => \inst|UOOOYFY~q\,
	datad => \inst|inst71~q\,
	combout => \inst|inst75|inst2|inst4~combout\);

-- Location: LCCOMB_X71_Y48_N2
\inst|inst92|y[3]~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|inst92|y[3]~3_combout\ = (!\inst|inst55|PC_LOAD~0_combout\ & ((\inst|inst97~q\ & (\inst|inst75|inst2|inst4~combout\)) # (!\inst|inst97~q\ & ((\inst|inst73~q\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100010001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|inst55|PC_LOAD~0_combout\,
	datab => \inst|inst75|inst2|inst4~combout\,
	datac => \inst|inst73~q\,
	datad => \inst|inst97~q\,
	combout => \inst|inst92|y[3]~3_combout\);

-- Location: FF_X71_Y48_N3
\inst|inst73\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \GDGERGD|cpu_pulse~clkctrl_outclk\,
	d => \inst|inst92|y[3]~3_combout\,
	clrn => \KEY[0]~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|inst73~q\);

-- Location: LCCOMB_X72_Y47_N12
\inst|UIGF74F|Mux1~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|UIGF74F|Mux1~0_combout\ = (!\inst|inst73~q\ & ((\inst|inst71~q\ & (\inst|SFSYHBH~q\ & !\inst|UOOOYFY~q\)) # (!\inst|inst71~q\ & (!\inst|SFSYHBH~q\ & \inst|UOOOYFY~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000100100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|inst71~q\,
	datab => \inst|inst73~q\,
	datac => \inst|SFSYHBH~q\,
	datad => \inst|UOOOYFY~q\,
	combout => \inst|UIGF74F|Mux1~0_combout\);

-- Location: FF_X71_Y47_N17
\inst|inst88\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \GDGERGD|cpu_pulse~clkctrl_outclk\,
	asdata => \inst|UIGF74F|Mux1~0_combout\,
	clrn => \KEY[0]~input_o\,
	sload => VCC,
	ena => \inst|inst97~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|inst88~q\);

-- Location: LCCOMB_X71_Y48_N6
\inst|inst55|PC_LOAD~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|inst55|PC_LOAD~0_combout\ = (\inst|inst88~q\ & (\inst|FHU834OJKF3~q\ & (!\inst|inst86~q\ & !\inst|inst97~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|inst88~q\,
	datab => \inst|FHU834OJKF3~q\,
	datac => \inst|inst86~q\,
	datad => \inst|inst97~q\,
	combout => \inst|inst55|PC_LOAD~0_combout\);

-- Location: LCCOMB_X71_Y48_N18
\inst|inst75|inst4|inst4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|inst75|inst4|inst4~combout\ = \inst|inst71~q\ $ (((\inst|UOOOYFY~q\ & \inst|SFSYHBH~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst|inst71~q\,
	datac => \inst|UOOOYFY~q\,
	datad => \inst|SFSYHBH~q\,
	combout => \inst|inst75|inst4|inst4~combout\);

-- Location: LCCOMB_X72_Y47_N20
\inst|UIGF74F|Mux4~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|UIGF74F|Mux4~0_combout\ = (!\inst|inst73~q\ & ((\inst|inst71~q\ & (\inst|SFSYHBH~q\ & \inst|UOOOYFY~q\)) # (!\inst|inst71~q\ & (!\inst|SFSYHBH~q\ & !\inst|UOOOYFY~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|inst71~q\,
	datab => \inst|inst73~q\,
	datac => \inst|SFSYHBH~q\,
	datad => \inst|UOOOYFY~q\,
	combout => \inst|UIGF74F|Mux4~0_combout\);

-- Location: FF_X71_Y47_N29
\inst|inst80\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \GDGERGD|cpu_pulse~clkctrl_outclk\,
	asdata => \inst|UIGF74F|Mux4~0_combout\,
	clrn => \KEY[0]~input_o\,
	sload => VCC,
	ena => \inst|inst97~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|inst80~q\);

-- Location: LCCOMB_X71_Y48_N28
\inst|inst92|y[2]~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|inst92|y[2]~2_combout\ = (\inst|inst55|PC_LOAD~0_combout\ & ((\inst|inst80~q\))) # (!\inst|inst55|PC_LOAD~0_combout\ & (\inst|inst75|inst4|inst4~combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|inst55|PC_LOAD~0_combout\,
	datab => \inst|inst75|inst4|inst4~combout\,
	datad => \inst|inst80~q\,
	combout => \inst|inst92|y[2]~2_combout\);

-- Location: FF_X71_Y48_N29
\inst|inst71\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \GDGERGD|cpu_pulse~clkctrl_outclk\,
	d => \inst|inst92|y[2]~2_combout\,
	clrn => \KEY[0]~input_o\,
	ena => \inst|SFSYHBH~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|inst71~q\);

-- Location: LCCOMB_X74_Y47_N16
\inst|UIGF74F|Mux6~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|UIGF74F|Mux6~0_combout\ = (\inst|inst71~q\ & (\inst|SFSYHBH~q\ & (!\inst|inst73~q\ & \inst|UOOOYFY~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|inst71~q\,
	datab => \inst|SFSYHBH~q\,
	datac => \inst|inst73~q\,
	datad => \inst|UOOOYFY~q\,
	combout => \inst|UIGF74F|Mux6~0_combout\);

-- Location: FF_X74_Y47_N17
\inst|inst67\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \GDGERGD|cpu_pulse~clkctrl_outclk\,
	d => \inst|UIGF74F|Mux6~0_combout\,
	clrn => \KEY[0]~input_o\,
	ena => \inst|inst97~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|inst67~q\);

-- Location: LCCOMB_X71_Y48_N12
\inst|inst92|y[0]~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|inst92|y[0]~0_combout\ = (\inst|inst55|PC_LOAD~0_combout\ & (\inst|inst67~q\)) # (!\inst|inst55|PC_LOAD~0_combout\ & ((!\inst|SFSYHBH~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|inst67~q\,
	datac => \inst|SFSYHBH~q\,
	datad => \inst|inst55|PC_LOAD~0_combout\,
	combout => \inst|inst92|y[0]~0_combout\);

-- Location: FF_X71_Y48_N13
\inst|SFSYHBH\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \GDGERGD|cpu_pulse~clkctrl_outclk\,
	d => \inst|inst92|y[0]~0_combout\,
	clrn => \KEY[0]~input_o\,
	ena => \inst|SFSYHBH~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|SFSYHBH~q\);

-- Location: LCCOMB_X71_Y48_N24
\PCDECODE|Mux0~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \PCDECODE|Mux0~0_combout\ = (\inst|inst73~q\ & (\inst|SFSYHBH~q\ & (\inst|UOOOYFY~q\ $ (\inst|inst71~q\)))) # (!\inst|inst73~q\ & (!\inst|UOOOYFY~q\ & (\inst|SFSYHBH~q\ $ (\inst|inst71~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100110000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|SFSYHBH~q\,
	datab => \inst|inst73~q\,
	datac => \inst|UOOOYFY~q\,
	datad => \inst|inst71~q\,
	combout => \PCDECODE|Mux0~0_combout\);

-- Location: LCCOMB_X74_Y48_N16
\PCDECODE|Mux1~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \PCDECODE|Mux1~0_combout\ = (\inst|UOOOYFY~q\ & ((\inst|SFSYHBH~q\ & (\inst|inst73~q\)) # (!\inst|SFSYHBH~q\ & ((\inst|inst71~q\))))) # (!\inst|UOOOYFY~q\ & (\inst|inst71~q\ & (\inst|inst73~q\ $ (\inst|SFSYHBH~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001100011100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|UOOOYFY~q\,
	datab => \inst|inst73~q\,
	datac => \inst|inst71~q\,
	datad => \inst|SFSYHBH~q\,
	combout => \PCDECODE|Mux1~0_combout\);

-- Location: LCCOMB_X72_Y47_N24
\PCDECODE|Mux2~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \PCDECODE|Mux2~0_combout\ = (\inst|inst71~q\ & (\inst|inst73~q\ & ((\inst|UOOOYFY~q\) # (!\inst|SFSYHBH~q\)))) # (!\inst|inst71~q\ & (\inst|UOOOYFY~q\ & (!\inst|SFSYHBH~q\ & !\inst|inst73~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011000000000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|UOOOYFY~q\,
	datab => \inst|SFSYHBH~q\,
	datac => \inst|inst71~q\,
	datad => \inst|inst73~q\,
	combout => \PCDECODE|Mux2~0_combout\);

-- Location: LCCOMB_X71_Y48_N10
\PCDECODE|Mux3~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \PCDECODE|Mux3~0_combout\ = (\inst|SFSYHBH~q\ & ((\inst|UOOOYFY~q\ $ (!\inst|inst71~q\)))) # (!\inst|SFSYHBH~q\ & ((\inst|inst73~q\ & (\inst|UOOOYFY~q\ & !\inst|inst71~q\)) # (!\inst|inst73~q\ & (!\inst|UOOOYFY~q\ & \inst|inst71~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000101001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|SFSYHBH~q\,
	datab => \inst|inst73~q\,
	datac => \inst|UOOOYFY~q\,
	datad => \inst|inst71~q\,
	combout => \PCDECODE|Mux3~0_combout\);

-- Location: LCCOMB_X74_Y47_N10
\PCDECODE|Mux4~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \PCDECODE|Mux4~0_combout\ = (\inst|UOOOYFY~q\ & (!\inst|inst73~q\ & (\inst|SFSYHBH~q\))) # (!\inst|UOOOYFY~q\ & ((\inst|inst71~q\ & (!\inst|inst73~q\)) # (!\inst|inst71~q\ & ((\inst|SFSYHBH~q\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100010001011100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|inst73~q\,
	datab => \inst|SFSYHBH~q\,
	datac => \inst|inst71~q\,
	datad => \inst|UOOOYFY~q\,
	combout => \PCDECODE|Mux4~0_combout\);

-- Location: LCCOMB_X74_Y48_N14
\PCDECODE|Mux5~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \PCDECODE|Mux5~0_combout\ = (\inst|UOOOYFY~q\ & (!\inst|inst73~q\ & ((\inst|SFSYHBH~q\) # (!\inst|inst71~q\)))) # (!\inst|UOOOYFY~q\ & (\inst|SFSYHBH~q\ & (\inst|inst73~q\ $ (!\inst|inst71~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110001100000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|UOOOYFY~q\,
	datab => \inst|inst73~q\,
	datac => \inst|inst71~q\,
	datad => \inst|SFSYHBH~q\,
	combout => \PCDECODE|Mux5~0_combout\);

-- Location: LCCOMB_X74_Y47_N24
\PCDECODE|Mux6~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \PCDECODE|Mux6~0_combout\ = (\inst|SFSYHBH~q\ & ((\inst|inst73~q\) # (\inst|inst71~q\ $ (\inst|UOOOYFY~q\)))) # (!\inst|SFSYHBH~q\ & ((\inst|UOOOYFY~q\) # (\inst|inst73~q\ $ (\inst|inst71~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011111111011010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|inst73~q\,
	datab => \inst|SFSYHBH~q\,
	datac => \inst|inst71~q\,
	datad => \inst|UOOOYFY~q\,
	combout => \PCDECODE|Mux6~0_combout\);

-- Location: LCCOMB_X72_Y47_N30
\inst|UIGF74F|Mux3~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|UIGF74F|Mux3~0_combout\ = (!\inst|inst73~q\ & (\inst|SFSYHBH~q\ $ (((\inst|UOOOYFY~q\) # (!\inst|inst71~q\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001100100001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|inst71~q\,
	datab => \inst|inst73~q\,
	datac => \inst|SFSYHBH~q\,
	datad => \inst|UOOOYFY~q\,
	combout => \inst|UIGF74F|Mux3~0_combout\);

-- Location: FF_X71_Y47_N9
\inst|inst84\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \GDGERGD|cpu_pulse~clkctrl_outclk\,
	asdata => \inst|UIGF74F|Mux3~0_combout\,
	clrn => \KEY[0]~input_o\,
	sload => VCC,
	ena => \inst|inst97~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|inst84~q\);

-- Location: LCCOMB_X71_Y51_N12
\OPCODE|Mux0~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \OPCODE|Mux0~0_combout\ = (\inst|FHU834OJKF3~q\ & (\inst|inst84~q\ & (\inst|inst86~q\ $ (\inst|inst88~q\)))) # (!\inst|FHU834OJKF3~q\ & (!\inst|inst86~q\ & (\inst|inst84~q\ $ (\inst|inst88~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100110000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|inst84~q\,
	datab => \inst|FHU834OJKF3~q\,
	datac => \inst|inst86~q\,
	datad => \inst|inst88~q\,
	combout => \OPCODE|Mux0~0_combout\);

-- Location: LCCOMB_X71_Y50_N20
\OPCODE|Mux1~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \OPCODE|Mux1~0_combout\ = (\inst|FHU834OJKF3~q\ & ((\inst|inst84~q\ & (\inst|inst86~q\)) # (!\inst|inst84~q\ & ((\inst|inst88~q\))))) # (!\inst|FHU834OJKF3~q\ & (\inst|inst88~q\ & (\inst|inst84~q\ $ (\inst|inst86~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101011010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|inst84~q\,
	datab => \inst|FHU834OJKF3~q\,
	datac => \inst|inst86~q\,
	datad => \inst|inst88~q\,
	combout => \OPCODE|Mux1~0_combout\);

-- Location: LCCOMB_X71_Y50_N30
\OPCODE|Mux2~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \OPCODE|Mux2~0_combout\ = (\inst|FHU834OJKF3~q\ & (\inst|inst88~q\ & ((\inst|inst86~q\) # (!\inst|inst84~q\)))) # (!\inst|FHU834OJKF3~q\ & (!\inst|inst84~q\ & (\inst|inst86~q\ & !\inst|inst88~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100010000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|inst84~q\,
	datab => \inst|FHU834OJKF3~q\,
	datac => \inst|inst86~q\,
	datad => \inst|inst88~q\,
	combout => \OPCODE|Mux2~0_combout\);

-- Location: LCCOMB_X71_Y50_N0
\OPCODE|Mux3~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \OPCODE|Mux3~0_combout\ = (\inst|inst84~q\ & ((\inst|inst86~q\ $ (!\inst|inst88~q\)))) # (!\inst|inst84~q\ & ((\inst|FHU834OJKF3~q\ & (\inst|inst86~q\ & !\inst|inst88~q\)) # (!\inst|FHU834OJKF3~q\ & (!\inst|inst86~q\ & \inst|inst88~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000101001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|inst84~q\,
	datab => \inst|FHU834OJKF3~q\,
	datac => \inst|inst86~q\,
	datad => \inst|inst88~q\,
	combout => \OPCODE|Mux3~0_combout\);

-- Location: LCCOMB_X71_Y51_N14
\OPCODE|Mux4~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \OPCODE|Mux4~0_combout\ = (\inst|inst86~q\ & (\inst|inst84~q\ & (!\inst|FHU834OJKF3~q\))) # (!\inst|inst86~q\ & ((\inst|inst88~q\ & ((!\inst|FHU834OJKF3~q\))) # (!\inst|inst88~q\ & (\inst|inst84~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010001100101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|inst84~q\,
	datab => \inst|FHU834OJKF3~q\,
	datac => \inst|inst86~q\,
	datad => \inst|inst88~q\,
	combout => \OPCODE|Mux4~0_combout\);

-- Location: LCCOMB_X71_Y51_N24
\OPCODE|Mux5~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \OPCODE|Mux5~0_combout\ = (\inst|inst84~q\ & (\inst|FHU834OJKF3~q\ $ (((\inst|inst86~q\) # (!\inst|inst88~q\))))) # (!\inst|inst84~q\ & (!\inst|FHU834OJKF3~q\ & (\inst|inst86~q\ & !\inst|inst88~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010100000110010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|inst84~q\,
	datab => \inst|FHU834OJKF3~q\,
	datac => \inst|inst86~q\,
	datad => \inst|inst88~q\,
	combout => \OPCODE|Mux5~0_combout\);

-- Location: LCCOMB_X71_Y51_N10
\OPCODE|Mux6~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \OPCODE|Mux6~0_combout\ = (\inst|inst84~q\ & ((\inst|FHU834OJKF3~q\) # (\inst|inst86~q\ $ (\inst|inst88~q\)))) # (!\inst|inst84~q\ & ((\inst|inst86~q\) # (\inst|FHU834OJKF3~q\ $ (\inst|inst88~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101101111111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|inst84~q\,
	datab => \inst|FHU834OJKF3~q\,
	datac => \inst|inst86~q\,
	datad => \inst|inst88~q\,
	combout => \OPCODE|Mux6~0_combout\);

-- Location: LCCOMB_X77_Y46_N8
\OPERAND|Mux0~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \OPERAND|Mux0~0_combout\ = (\inst|Y7F83DF~q\) # (\inst|inst80~q\ $ (!\inst|inst67~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111000011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst|inst80~q\,
	datac => \inst|inst67~q\,
	datad => \inst|Y7F83DF~q\,
	combout => \OPERAND|Mux0~0_combout\);

-- Location: LCCOMB_X71_Y48_N4
\OPERAND|Mux1~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \OPERAND|Mux1~0_combout\ = (\inst|Y7F83DF~q\ $ (!\inst|inst67~q\)) # (!\inst|inst80~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010101011111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|inst80~q\,
	datac => \inst|Y7F83DF~q\,
	datad => \inst|inst67~q\,
	combout => \OPERAND|Mux1~0_combout\);

-- Location: LCCOMB_X71_Y46_N16
\OPERAND|Mux2~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \OPERAND|Mux2~0_combout\ = (!\inst|inst80~q\ & (!\inst|inst67~q\ & \inst|Y7F83DF~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst|inst80~q\,
	datac => \inst|inst67~q\,
	datad => \inst|Y7F83DF~q\,
	combout => \OPERAND|Mux2~0_combout\);

-- Location: LCCOMB_X77_Y46_N6
\OPERAND|Mux3~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \OPERAND|Mux3~0_combout\ = (\inst|inst80~q\ & (\inst|inst67~q\ $ (!\inst|Y7F83DF~q\))) # (!\inst|inst80~q\ & (\inst|inst67~q\ & !\inst|Y7F83DF~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000000111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst|inst80~q\,
	datac => \inst|inst67~q\,
	datad => \inst|Y7F83DF~q\,
	combout => \OPERAND|Mux3~0_combout\);

-- Location: LCCOMB_X77_Y46_N4
\OPERAND|Mux4~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \OPERAND|Mux4~0_combout\ = (\inst|inst67~q\) # ((\inst|inst80~q\ & !\inst|Y7F83DF~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst|inst80~q\,
	datac => \inst|inst67~q\,
	datad => \inst|Y7F83DF~q\,
	combout => \OPERAND|Mux4~0_combout\);

-- Location: LCCOMB_X77_Y46_N10
\OPERAND|Mux5~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \OPERAND|Mux5~0_combout\ = (\inst|inst80~q\ & (\inst|inst67~q\ & \inst|Y7F83DF~q\)) # (!\inst|inst80~q\ & ((\inst|inst67~q\) # (\inst|Y7F83DF~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001100110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst|inst80~q\,
	datac => \inst|inst67~q\,
	datad => \inst|Y7F83DF~q\,
	combout => \OPERAND|Mux5~0_combout\);

-- Location: LCCOMB_X77_Y46_N12
\OPERAND|Mux6~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \OPERAND|Mux6~0_combout\ = (\inst|inst80~q\ & ((!\inst|Y7F83DF~q\) # (!\inst|inst67~q\))) # (!\inst|inst80~q\ & ((\inst|Y7F83DF~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011111111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst|inst80~q\,
	datac => \inst|inst67~q\,
	datad => \inst|Y7F83DF~q\,
	combout => \OPERAND|Mux6~0_combout\);

-- Location: LCCOMB_X71_Y47_N26
\inst|inst55|Mux4~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|inst55|Mux4~0_combout\ = (!\inst|FHU834OJKF3~q\ & ((\inst|inst84~q\ & (\inst|inst86~q\ & !\inst|inst88~q\)) # (!\inst|inst84~q\ & (!\inst|inst86~q\ & \inst|inst88~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000101000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|FHU834OJKF3~q\,
	datab => \inst|inst84~q\,
	datac => \inst|inst86~q\,
	datad => \inst|inst88~q\,
	combout => \inst|inst55|Mux4~0_combout\);

-- Location: IOIBUF_X51_Y54_N22
\SW[1]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SW(1),
	o => \SW[1]~input_o\);

-- Location: LCCOMB_X72_Y47_N22
\inst|SYI982F|y[1]~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|SYI982F|y[1]~1_combout\ = (\inst|inst55|Mux4~0_combout\ & ((\inst|inst97~q\ & (\inst|Y7F83DF~q\)) # (!\inst|inst97~q\ & ((\SW[1]~input_o\))))) # (!\inst|inst55|Mux4~0_combout\ & (((\inst|Y7F83DF~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001011010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|inst55|Mux4~0_combout\,
	datab => \inst|inst97~q\,
	datac => \inst|Y7F83DF~q\,
	datad => \SW[1]~input_o\,
	combout => \inst|SYI982F|y[1]~1_combout\);

-- Location: LCCOMB_X71_Y47_N8
\inst|inst55|Mux1~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|inst55|Mux1~0_combout\ = (\inst|inst88~q\ & (!\inst|FHU834OJKF3~q\ & ((\inst|inst86~q\) # (\inst|inst84~q\)))) # (!\inst|inst88~q\ & (\inst|FHU834OJKF3~q\ & ((!\inst|inst84~q\) # (!\inst|inst86~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001001111001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|inst86~q\,
	datab => \inst|inst88~q\,
	datac => \inst|inst84~q\,
	datad => \inst|FHU834OJKF3~q\,
	combout => \inst|inst55|Mux1~0_combout\);

-- Location: LCCOMB_X70_Y47_N24
\inst|inst55|Mux1~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|inst55|Mux1~1_combout\ = (\inst|inst97~q\) # (!\inst|inst55|Mux1~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111111001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst|inst97~q\,
	datac => \inst|inst55|Mux1~0_combout\,
	combout => \inst|inst55|Mux1~1_combout\);

-- Location: LCCOMB_X71_Y47_N20
\inst|inst55|Mux5~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|inst55|Mux5~0_combout\ = (\inst|FHU834OJKF3~q\ & (!\inst|inst88~q\ & (\inst|inst84~q\ $ (\inst|inst86~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|FHU834OJKF3~q\,
	datab => \inst|inst84~q\,
	datac => \inst|inst86~q\,
	datad => \inst|inst88~q\,
	combout => \inst|inst55|Mux5~0_combout\);

-- Location: LCCOMB_X71_Y47_N10
\inst|inst55|Mux5~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|inst55|Mux5~1_combout\ = (!\inst|inst97~q\ & \inst|inst55|Mux5~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst|inst97~q\,
	datad => \inst|inst55|Mux5~0_combout\,
	combout => \inst|inst55|Mux5~1_combout\);

-- Location: LCCOMB_X71_Y47_N24
\inst|inst55|Mux3~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|inst55|Mux3~0_combout\ = (\inst|FHU834OJKF3~q\ & (\inst|inst84~q\ & (\inst|inst86~q\ & !\inst|inst88~q\))) # (!\inst|FHU834OJKF3~q\ & (!\inst|inst84~q\ & (\inst|inst86~q\ $ (\inst|inst88~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000110010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|FHU834OJKF3~q\,
	datab => \inst|inst84~q\,
	datac => \inst|inst86~q\,
	datad => \inst|inst88~q\,
	combout => \inst|inst55|Mux3~0_combout\);

-- Location: LCCOMB_X71_Y47_N30
\inst|inst55|Mux3~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|inst55|Mux3~1_combout\ = (\inst|inst97~q\) # (!\inst|inst55|Mux3~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst|inst97~q\,
	datad => \inst|inst55|Mux3~0_combout\,
	combout => \inst|inst55|Mux3~1_combout\);

-- Location: IOIBUF_X51_Y54_N29
\SW[0]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SW(0),
	o => \SW[0]~input_o\);

-- Location: LCCOMB_X69_Y47_N0
\inst|SYI982F|y[0]~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|SYI982F|y[0]~0_combout\ = (\inst|inst97~q\ & (\inst|inst67~q\)) # (!\inst|inst97~q\ & ((\inst|inst55|Mux4~0_combout\ & ((\SW[0]~input_o\))) # (!\inst|inst55|Mux4~0_combout\ & (\inst|inst67~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110010001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|inst97~q\,
	datab => \inst|inst67~q\,
	datac => \inst|inst55|Mux4~0_combout\,
	datad => \SW[0]~input_o\,
	combout => \inst|SYI982F|y[0]~0_combout\);

-- Location: LCCOMB_X70_Y47_N0
\inst|inst37~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|inst37~0_combout\ = (\inst|inst55|Mux1~1_combout\ & (\inst|SYI982F|y[0]~0_combout\)) # (!\inst|inst55|Mux1~1_combout\ & ((\inst|inst5|Mux3~5_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|SYI982F|y[0]~0_combout\,
	datab => \inst|inst55|Mux1~1_combout\,
	datad => \inst|inst5|Mux3~5_combout\,
	combout => \inst|inst37~0_combout\);

-- Location: LCCOMB_X71_Y47_N16
\inst|inst55|Mux0~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|inst55|Mux0~0_combout\ = (\inst|inst86~q\ & (\inst|FHU834OJKF3~q\ $ (((\inst|inst84~q\) # (\inst|inst88~q\))))) # (!\inst|inst86~q\ & ((\inst|FHU834OJKF3~q\ & ((!\inst|inst88~q\))) # (!\inst|FHU834OJKF3~q\ & (\inst|inst84~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000011111101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|inst86~q\,
	datab => \inst|inst84~q\,
	datac => \inst|inst88~q\,
	datad => \inst|FHU834OJKF3~q\,
	combout => \inst|inst55|Mux0~0_combout\);

-- Location: LCCOMB_X71_Y47_N22
\inst|inst55|Mux0~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|inst55|Mux0~1_combout\ = (\inst|inst97~q\) # (!\inst|inst55|Mux0~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110111011101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|inst55|Mux0~0_combout\,
	datab => \inst|inst97~q\,
	combout => \inst|inst55|Mux0~1_combout\);

-- Location: LCCOMB_X71_Y47_N28
\inst|inst43~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|inst43~1_combout\ = (!\inst|inst97~q\ & ((\inst|inst55|Mux0~0_combout\) # (\inst|inst55|Mux1~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|inst55|Mux0~0_combout\,
	datab => \inst|inst97~q\,
	datad => \inst|inst55|Mux1~0_combout\,
	combout => \inst|inst43~1_combout\);

-- Location: FF_X70_Y47_N1
\inst|inst37\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \GDGERGD|cpu_pulse~clkctrl_outclk\,
	d => \inst|inst37~0_combout\,
	asdata => \inst|inst33~q\,
	clrn => \KEY[0]~input_o\,
	sload => \inst|inst55|Mux0~1_combout\,
	ena => \inst|inst43~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|inst37~q\);

-- Location: LCCOMB_X71_Y47_N18
\inst|inst55|Mux6~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|inst55|Mux6~0_combout\ = (!\inst|inst86~q\ & ((\inst|FHU834OJKF3~q\ & (!\inst|inst84~q\ & !\inst|inst88~q\)) # (!\inst|FHU834OJKF3~q\ & (\inst|inst84~q\ & \inst|inst88~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010000000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|FHU834OJKF3~q\,
	datab => \inst|inst84~q\,
	datac => \inst|inst86~q\,
	datad => \inst|inst88~q\,
	combout => \inst|inst55|Mux6~0_combout\);

-- Location: LCCOMB_X69_Y47_N8
\inst|inst5|Mux3~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|inst5|Mux3~4_combout\ = (\inst|inst33~q\ & (\inst|inst37~q\ $ (((\inst|inst55|Mux6~0_combout\ & !\inst|inst97~q\))))) # (!\inst|inst33~q\ & (\inst|inst37~q\ & (\inst|inst55|Mux6~0_combout\ & !\inst|inst97~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100001101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|inst33~q\,
	datab => \inst|inst37~q\,
	datac => \inst|inst55|Mux6~0_combout\,
	datad => \inst|inst97~q\,
	combout => \inst|inst5|Mux3~4_combout\);

-- Location: LCCOMB_X71_Y47_N0
\inst|inst55|Mux7~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|inst55|Mux7~0_combout\ = (\inst|FHU834OJKF3~q\ & (((!\inst|inst84~q\ & !\inst|inst88~q\)))) # (!\inst|FHU834OJKF3~q\ & (\inst|inst86~q\ & (\inst|inst84~q\ & \inst|inst88~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|FHU834OJKF3~q\,
	datab => \inst|inst86~q\,
	datac => \inst|inst84~q\,
	datad => \inst|inst88~q\,
	combout => \inst|inst55|Mux7~0_combout\);

-- Location: LCCOMB_X71_Y47_N6
\inst|inst55|Mux7~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|inst55|Mux7~1_combout\ = (!\inst|inst97~q\ & \inst|inst55|Mux7~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst|inst97~q\,
	datad => \inst|inst55|Mux7~0_combout\,
	combout => \inst|inst55|Mux7~1_combout\);

-- Location: LCCOMB_X70_Y47_N28
\inst|inst5|Mux3~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|inst5|Mux3~1_combout\ = (\inst|inst97~q\ & (((\inst|inst39~q\)))) # (!\inst|inst97~q\ & ((\inst|inst55|Mux6~0_combout\ & (\inst|inst33~q\)) # (!\inst|inst55|Mux6~0_combout\ & ((\inst|inst39~q\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100101011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|inst33~q\,
	datab => \inst|inst39~q\,
	datac => \inst|inst97~q\,
	datad => \inst|inst55|Mux6~0_combout\,
	combout => \inst|inst5|Mux3~1_combout\);

-- Location: LCCOMB_X70_Y47_N30
\inst|inst5|Mux3~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|inst5|Mux3~2_combout\ = (\inst|inst37~q\ & (((\inst|inst97~q\) # (!\inst|inst55|Mux6~0_combout\)))) # (!\inst|inst37~q\ & ((\inst|inst33~q\) # ((!\inst|inst97~q\ & \inst|inst55|Mux6~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110001111101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|inst33~q\,
	datab => \inst|inst37~q\,
	datac => \inst|inst97~q\,
	datad => \inst|inst55|Mux6~0_combout\,
	combout => \inst|inst5|Mux3~2_combout\);

-- Location: LCCOMB_X70_Y47_N16
\inst|inst5|Mux3~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|inst5|Mux3~3_combout\ = (\inst|inst55|Mux7~1_combout\ & ((\inst|inst55|Mux5~1_combout\ & (\inst|inst5|Mux3~1_combout\)) # (!\inst|inst55|Mux5~1_combout\ & ((\inst|inst5|Mux3~2_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|inst55|Mux7~1_combout\,
	datab => \inst|inst5|Mux3~1_combout\,
	datac => \inst|inst5|Mux3~2_combout\,
	datad => \inst|inst55|Mux5~1_combout\,
	combout => \inst|inst5|Mux3~3_combout\);

-- Location: LCCOMB_X71_Y47_N2
\inst|inst55|Mux6~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|inst55|Mux6~1_combout\ = (!\inst|inst97~q\ & \inst|inst55|Mux6~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst|inst97~q\,
	datad => \inst|inst55|Mux6~0_combout\,
	combout => \inst|inst55|Mux6~1_combout\);

-- Location: LCCOMB_X71_Y47_N12
\inst|inst5|Mux3~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|inst5|Mux3~0_combout\ = (\inst|inst37~q\ & (\inst|inst55|Mux6~1_combout\ & (!\inst|inst55|Mux7~1_combout\ & \inst|inst55|Mux5~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|inst37~q\,
	datab => \inst|inst55|Mux6~1_combout\,
	datac => \inst|inst55|Mux7~1_combout\,
	datad => \inst|inst55|Mux5~1_combout\,
	combout => \inst|inst5|Mux3~0_combout\);

-- Location: LCCOMB_X74_Y47_N14
\inst|inst5|Mux0~24\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|inst5|Mux0~24_combout\ = (\inst|inst97~q\) # ((!\inst|inst55|Mux7~0_combout\ & !\inst|inst55|Mux5~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst|inst97~q\,
	datac => \inst|inst55|Mux7~0_combout\,
	datad => \inst|inst55|Mux5~0_combout\,
	combout => \inst|inst5|Mux0~24_combout\);

-- Location: LCCOMB_X70_Y47_N18
\inst|inst5|Mux3~5\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|inst5|Mux3~5_combout\ = (\inst|inst5|Mux3~3_combout\) # ((\inst|inst5|Mux3~0_combout\) # ((\inst|inst5|Mux3~4_combout\ & \inst|inst5|Mux0~24_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111011111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|inst5|Mux3~4_combout\,
	datab => \inst|inst5|Mux3~3_combout\,
	datac => \inst|inst5|Mux3~0_combout\,
	datad => \inst|inst5|Mux0~24_combout\,
	combout => \inst|inst5|Mux3~5_combout\);

-- Location: LCCOMB_X69_Y47_N12
\inst|inst33~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|inst33~0_combout\ = (\inst|inst55|Mux3~1_combout\ & ((\inst|inst5|Mux3~5_combout\))) # (!\inst|inst55|Mux3~1_combout\ & (\inst|SYI982F|y[0]~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|inst55|Mux3~1_combout\,
	datab => \inst|SYI982F|y[0]~0_combout\,
	datad => \inst|inst5|Mux3~5_combout\,
	combout => \inst|inst33~0_combout\);

-- Location: LCCOMB_X72_Y47_N2
\inst|inst55|Mux2~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|inst55|Mux2~0_combout\ = (!\inst|FHU834OJKF3~q\ & (!\inst|inst84~q\ & (\inst|inst86~q\ $ (\inst|inst88~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|inst86~q\,
	datab => \inst|inst88~q\,
	datac => \inst|FHU834OJKF3~q\,
	datad => \inst|inst84~q\,
	combout => \inst|inst55|Mux2~0_combout\);

-- Location: LCCOMB_X72_Y47_N0
\inst|inst55|Mux2~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|inst55|Mux2~1_combout\ = (\inst|inst97~q\) # (!\inst|inst55|Mux2~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst|inst97~q\,
	datad => \inst|inst55|Mux2~0_combout\,
	combout => \inst|inst55|Mux2~1_combout\);

-- Location: LCCOMB_X72_Y47_N18
\inst|inst35~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|inst35~1_combout\ = (!\inst|inst97~q\ & ((\inst|inst55|Mux3~0_combout\) # (\inst|inst55|Mux2~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst|inst55|Mux3~0_combout\,
	datac => \inst|inst97~q\,
	datad => \inst|inst55|Mux2~0_combout\,
	combout => \inst|inst35~1_combout\);

-- Location: FF_X69_Y47_N13
\inst|inst33\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \GDGERGD|cpu_pulse~clkctrl_outclk\,
	d => \inst|inst33~0_combout\,
	asdata => \inst|inst37~q\,
	clrn => \KEY[0]~input_o\,
	sload => \inst|inst55|Mux2~1_combout\,
	ena => \inst|inst35~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|inst33~q\);

-- Location: LCCOMB_X69_Y47_N6
\inst|inst9~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|inst9~0_combout\ = (\inst|inst55|Mux3~1_combout\ & ((\inst|inst5|Mux2~6_combout\))) # (!\inst|inst55|Mux3~1_combout\ & (\inst|SYI982F|y[1]~1_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|inst55|Mux3~1_combout\,
	datab => \inst|SYI982F|y[1]~1_combout\,
	datad => \inst|inst5|Mux2~6_combout\,
	combout => \inst|inst9~0_combout\);

-- Location: FF_X69_Y47_N7
\inst|inst9\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \GDGERGD|cpu_pulse~clkctrl_outclk\,
	d => \inst|inst9~0_combout\,
	asdata => \inst|inst39~q\,
	clrn => \KEY[0]~input_o\,
	sload => \inst|inst55|Mux2~1_combout\,
	ena => \inst|inst35~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|inst9~q\);

-- Location: LCCOMB_X69_Y47_N26
\inst|inst|inst1|inst4~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|inst|inst1|inst4~0_combout\ = \inst|inst39~q\ $ (\inst|inst9~q\ $ (((\inst|inst33~q\ & \inst|inst37~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001001101101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|inst33~q\,
	datab => \inst|inst39~q\,
	datac => \inst|inst37~q\,
	datad => \inst|inst9~q\,
	combout => \inst|inst|inst1|inst4~0_combout\);

-- Location: LCCOMB_X70_Y47_N20
\inst|inst5|Mux2~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|inst5|Mux2~4_combout\ = (!\inst|inst55|Mux5~1_combout\ & ((\inst|inst55|Mux7~1_combout\ & (!\inst|inst39~q\)) # (!\inst|inst55|Mux7~1_combout\ & ((\inst|inst|inst1|inst4~0_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000100110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|inst39~q\,
	datab => \inst|inst55|Mux5~1_combout\,
	datac => \inst|inst|inst1|inst4~0_combout\,
	datad => \inst|inst55|Mux7~1_combout\,
	combout => \inst|inst5|Mux2~4_combout\);

-- Location: LCCOMB_X69_Y47_N4
\inst|inst5|Mux2~5\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|inst5|Mux2~5_combout\ = (\inst|inst55|Mux5~1_combout\ & ((\inst|inst55|Mux7~1_combout\ & (\inst|inst9~q\)) # (!\inst|inst55|Mux7~1_combout\ & ((\inst|inst39~q\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|inst9~q\,
	datab => \inst|inst55|Mux5~1_combout\,
	datac => \inst|inst39~q\,
	datad => \inst|inst55|Mux7~1_combout\,
	combout => \inst|inst5|Mux2~5_combout\);

-- Location: IOIBUF_X51_Y54_N1
\SW[2]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SW(2),
	o => \SW[2]~input_o\);

-- Location: LCCOMB_X70_Y47_N14
\inst|SYI982F|y[2]~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|SYI982F|y[2]~2_combout\ = (\inst|inst97~q\ & (((\inst|inst80~q\)))) # (!\inst|inst97~q\ & ((\inst|inst55|Mux4~0_combout\ & (\SW[2]~input_o\)) # (!\inst|inst55|Mux4~0_combout\ & ((\inst|inst80~q\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100101011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW[2]~input_o\,
	datab => \inst|inst80~q\,
	datac => \inst|inst97~q\,
	datad => \inst|inst55|Mux4~0_combout\,
	combout => \inst|SYI982F|y[2]~2_combout\);

-- Location: LCCOMB_X69_Y47_N10
\inst|inst32~11\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|inst32~11_combout\ = (\inst|inst55|Mux3~1_combout\ & (((\inst|inst5|Mux1~2_combout\)) # (!\inst|inst55|Mux6~1_combout\))) # (!\inst|inst55|Mux3~1_combout\ & (((\inst|SYI982F|y[2]~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101001110010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|inst55|Mux3~1_combout\,
	datab => \inst|inst55|Mux6~1_combout\,
	datac => \inst|SYI982F|y[2]~2_combout\,
	datad => \inst|inst5|Mux1~2_combout\,
	combout => \inst|inst32~11_combout\);

-- Location: LCCOMB_X69_Y47_N24
\inst|inst5|Mux1~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|inst5|Mux1~3_combout\ = (\inst|inst55|Mux5~1_combout\ & ((\inst|inst55|Mux7~1_combout\ & (\inst|inst32~q\)) # (!\inst|inst55|Mux7~1_combout\ & ((\inst|inst41~q\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|inst55|Mux7~1_combout\,
	datab => \inst|inst32~q\,
	datac => \inst|inst41~q\,
	datad => \inst|inst55|Mux5~1_combout\,
	combout => \inst|inst5|Mux1~3_combout\);

-- Location: IOIBUF_X54_Y54_N29
\SW[3]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SW(3),
	o => \SW[3]~input_o\);

-- Location: LCCOMB_X72_Y47_N28
\inst|SYI982F|y[3]~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|SYI982F|y[3]~3_combout\ = (\inst|inst55|Mux4~0_combout\ & (!\inst|inst97~q\ & \SW[3]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|inst55|Mux4~0_combout\,
	datab => \inst|inst97~q\,
	datac => \SW[3]~input_o\,
	combout => \inst|SYI982F|y[3]~3_combout\);

-- Location: LCCOMB_X75_Y47_N8
\inst|inst35~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|inst35~0_combout\ = (\inst|inst55|Mux3~1_combout\ & ((\inst|inst5|Mux0~29_combout\))) # (!\inst|inst55|Mux3~1_combout\ & (\inst|SYI982F|y[3]~3_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|inst55|Mux3~1_combout\,
	datab => \inst|SYI982F|y[3]~3_combout\,
	datad => \inst|inst5|Mux0~29_combout\,
	combout => \inst|inst35~0_combout\);

-- Location: FF_X75_Y47_N9
\inst|inst35\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \GDGERGD|cpu_pulse~clkctrl_outclk\,
	d => \inst|inst35~0_combout\,
	asdata => \inst|inst43~q\,
	clrn => \KEY[0]~input_o\,
	sload => \inst|inst55|Mux2~1_combout\,
	ena => \inst|inst35~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|inst35~q\);

-- Location: LCCOMB_X74_Y47_N8
\inst|inst5|Mux0~28\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|inst5|Mux0~28_combout\ = (\inst|inst97~q\ & (((!\inst|inst43~q\)))) # (!\inst|inst97~q\ & ((\inst|inst55|Mux5~0_combout\ & (\inst|inst35~q\)) # (!\inst|inst55|Mux5~0_combout\ & ((!\inst|inst43~q\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011101000110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|inst35~q\,
	datab => \inst|inst43~q\,
	datac => \inst|inst97~q\,
	datad => \inst|inst55|Mux5~0_combout\,
	combout => \inst|inst5|Mux0~28_combout\);

-- Location: LCCOMB_X74_Y47_N12
\inst|inst5|Mux0~32\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|inst5|Mux0~32_combout\ = (\inst|inst55|Mux7~0_combout\ & (!\inst|inst97~q\ & (\inst|inst5|Mux0~28_combout\ & \inst|inst55|Mux6~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|inst55|Mux7~0_combout\,
	datab => \inst|inst97~q\,
	datac => \inst|inst5|Mux0~28_combout\,
	datad => \inst|inst55|Mux6~0_combout\,
	combout => \inst|inst5|Mux0~32_combout\);

-- Location: LCCOMB_X74_Y47_N20
\inst|inst5|Mux0~25\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|inst5|Mux0~25_combout\ = (\inst|inst97~q\ & (\inst|inst41~q\)) # (!\inst|inst97~q\ & ((\inst|inst55|Mux6~0_combout\ & ((\inst|inst43~q\))) # (!\inst|inst55|Mux6~0_combout\ & (\inst|inst41~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010110010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|inst41~q\,
	datab => \inst|inst43~q\,
	datac => \inst|inst97~q\,
	datad => \inst|inst55|Mux6~0_combout\,
	combout => \inst|inst5|Mux0~25_combout\);

-- Location: LCCOMB_X74_Y47_N0
\inst|inst5|Mux0~30\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|inst5|Mux0~30_combout\ = (\inst|inst55|Mux5~0_combout\ & (!\inst|inst55|Mux7~0_combout\ & (!\inst|inst97~q\ & \inst|inst5|Mux0~25_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|inst55|Mux5~0_combout\,
	datab => \inst|inst55|Mux7~0_combout\,
	datac => \inst|inst97~q\,
	datad => \inst|inst5|Mux0~25_combout\,
	combout => \inst|inst5|Mux0~30_combout\);

-- Location: LCCOMB_X74_Y47_N18
\inst|inst5|Mux0~26\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|inst5|Mux0~26_combout\ = (\inst|inst35~q\ & ((\inst|inst43~q\) # ((!\inst|inst97~q\ & \inst|inst55|Mux7~0_combout\)))) # (!\inst|inst35~q\ & (!\inst|inst97~q\ & (\inst|inst43~q\ & \inst|inst55|Mux7~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011001010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|inst35~q\,
	datab => \inst|inst97~q\,
	datac => \inst|inst43~q\,
	datad => \inst|inst55|Mux7~0_combout\,
	combout => \inst|inst5|Mux0~26_combout\);

-- Location: LCCOMB_X74_Y47_N26
\inst|inst5|Mux0~31\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|inst5|Mux0~31_combout\ = (\inst|inst5|Mux0~26_combout\ & ((\inst|inst97~q\) # ((!\inst|inst55|Mux5~0_combout\ & !\inst|inst55|Mux6~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|inst55|Mux5~0_combout\,
	datab => \inst|inst55|Mux6~0_combout\,
	datac => \inst|inst97~q\,
	datad => \inst|inst5|Mux0~26_combout\,
	combout => \inst|inst5|Mux0~31_combout\);

-- Location: LCCOMB_X70_Y47_N10
\inst|inst|inst1|inst7~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|inst|inst1|inst7~0_combout\ = (\inst|inst39~q\ & ((\inst|inst9~q\) # ((\inst|inst37~q\ & \inst|inst33~q\)))) # (!\inst|inst39~q\ & (\inst|inst37~q\ & (\inst|inst9~q\ & \inst|inst33~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110100010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|inst39~q\,
	datab => \inst|inst37~q\,
	datac => \inst|inst9~q\,
	datad => \inst|inst33~q\,
	combout => \inst|inst|inst1|inst7~0_combout\);

-- Location: LCCOMB_X74_Y47_N28
\inst|inst|inst2|inst4~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|inst|inst2|inst4~0_combout\ = \inst|inst43~q\ $ (((\inst|inst41~q\ & ((\inst|inst32~q\) # (\inst|inst|inst1|inst7~0_combout\))) # (!\inst|inst41~q\ & (\inst|inst32~q\ & \inst|inst|inst1|inst7~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011011001101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|inst41~q\,
	datab => \inst|inst43~q\,
	datac => \inst|inst32~q\,
	datad => \inst|inst|inst1|inst7~0_combout\,
	combout => \inst|inst|inst2|inst4~0_combout\);

-- Location: LCCOMB_X74_Y47_N6
\inst|inst5|Mux0~27\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|inst5|Mux0~27_combout\ = (\inst|inst5|Mux0~24_combout\ & (\inst|inst55|Mux6~1_combout\ & (\inst|inst35~q\ $ (\inst|inst|inst2|inst4~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|inst35~q\,
	datab => \inst|inst5|Mux0~24_combout\,
	datac => \inst|inst55|Mux6~1_combout\,
	datad => \inst|inst|inst2|inst4~0_combout\,
	combout => \inst|inst5|Mux0~27_combout\);

-- Location: LCCOMB_X74_Y47_N2
\inst|inst5|Mux0~29\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|inst5|Mux0~29_combout\ = (\inst|inst5|Mux0~32_combout\) # ((\inst|inst5|Mux0~30_combout\) # ((\inst|inst5|Mux0~31_combout\) # (\inst|inst5|Mux0~27_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|inst5|Mux0~32_combout\,
	datab => \inst|inst5|Mux0~30_combout\,
	datac => \inst|inst5|Mux0~31_combout\,
	datad => \inst|inst5|Mux0~27_combout\,
	combout => \inst|inst5|Mux0~29_combout\);

-- Location: LCCOMB_X74_Y47_N4
\inst|inst43~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|inst43~0_combout\ = (\inst|inst55|Mux1~1_combout\ & (\inst|SYI982F|y[3]~3_combout\)) # (!\inst|inst55|Mux1~1_combout\ & ((\inst|inst5|Mux0~29_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|inst55|Mux1~1_combout\,
	datab => \inst|SYI982F|y[3]~3_combout\,
	datad => \inst|inst5|Mux0~29_combout\,
	combout => \inst|inst43~0_combout\);

-- Location: FF_X74_Y47_N5
\inst|inst43\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \GDGERGD|cpu_pulse~clkctrl_outclk\,
	d => \inst|inst43~0_combout\,
	asdata => \inst|inst35~q\,
	clrn => \KEY[0]~input_o\,
	sload => \inst|inst55|Mux0~1_combout\,
	ena => \inst|inst43~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|inst43~q\);

-- Location: LCCOMB_X72_Y47_N6
\inst|inst5|Mux1~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|inst5|Mux1~0_combout\ = (\inst|inst32~q\ & ((\inst|inst55|Mux7~1_combout\) # ((\inst|inst41~q\ & !\inst|inst55|Mux5~1_combout\)))) # (!\inst|inst32~q\ & (\inst|inst55|Mux7~1_combout\ & ((\inst|inst41~q\) # (\inst|inst55|Mux5~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|inst32~q\,
	datab => \inst|inst41~q\,
	datac => \inst|inst55|Mux7~1_combout\,
	datad => \inst|inst55|Mux5~1_combout\,
	combout => \inst|inst5|Mux1~0_combout\);

-- Location: LCCOMB_X72_Y47_N8
\inst|inst5|Mux1~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|inst5|Mux1~1_combout\ = (\inst|inst55|Mux5~1_combout\ & ((\inst|inst5|Mux1~0_combout\ & (\inst|inst43~q\)) # (!\inst|inst5|Mux1~0_combout\ & ((\inst|inst39~q\))))) # (!\inst|inst55|Mux5~1_combout\ & (((\inst|inst5|Mux1~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|inst55|Mux5~1_combout\,
	datab => \inst|inst43~q\,
	datac => \inst|inst39~q\,
	datad => \inst|inst5|Mux1~0_combout\,
	combout => \inst|inst5|Mux1~1_combout\);

-- Location: LCCOMB_X69_Y47_N2
\inst|inst32~12\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|inst32~12_combout\ = (!\inst|inst97~q\ & ((\inst|inst55|Mux3~0_combout\ & ((\inst|inst32~11_combout\))) # (!\inst|inst55|Mux3~0_combout\ & (\inst|inst55|Mux6~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|inst97~q\,
	datab => \inst|inst55|Mux3~0_combout\,
	datac => \inst|inst55|Mux6~0_combout\,
	datad => \inst|inst32~11_combout\,
	combout => \inst|inst32~12_combout\);

-- Location: LCCOMB_X69_Y47_N18
\inst|inst32~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|inst32~0_combout\ = (\inst|inst32~11_combout\ & (((\inst|inst5|Mux1~1_combout\) # (\inst|inst32~12_combout\)))) # (!\inst|inst32~11_combout\ & (\inst|inst5|Mux1~3_combout\ & ((\inst|inst32~12_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|inst32~11_combout\,
	datab => \inst|inst5|Mux1~3_combout\,
	datac => \inst|inst5|Mux1~1_combout\,
	datad => \inst|inst32~12_combout\,
	combout => \inst|inst32~0_combout\);

-- Location: LCCOMB_X69_Y47_N16
\inst|inst32~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|inst32~feeder_combout\ = \inst|inst32~0_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst|inst32~0_combout\,
	combout => \inst|inst32~feeder_combout\);

-- Location: FF_X69_Y47_N17
\inst|inst32\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \GDGERGD|cpu_pulse~clkctrl_outclk\,
	d => \inst|inst32~feeder_combout\,
	asdata => \inst|inst41~q\,
	clrn => \KEY[0]~input_o\,
	sload => \inst|inst55|Mux2~1_combout\,
	ena => \inst|inst35~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|inst32~q\);

-- Location: LCCOMB_X70_Y47_N4
\inst|inst|inst4|inst4~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|inst|inst4|inst4~0_combout\ = \inst|inst32~q\ $ (\inst|inst41~q\ $ (\inst|inst|inst1|inst7~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010101011010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|inst32~q\,
	datac => \inst|inst41~q\,
	datad => \inst|inst|inst1|inst7~0_combout\,
	combout => \inst|inst|inst4|inst4~0_combout\);

-- Location: LCCOMB_X70_Y47_N26
\inst|inst5|Mux1~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|inst5|Mux1~2_combout\ = (!\inst|inst55|Mux5~1_combout\ & ((\inst|inst55|Mux7~1_combout\ & (!\inst|inst41~q\)) # (!\inst|inst55|Mux7~1_combout\ & ((\inst|inst|inst4|inst4~0_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010100001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|inst41~q\,
	datab => \inst|inst|inst4|inst4~0_combout\,
	datac => \inst|inst55|Mux5~1_combout\,
	datad => \inst|inst55|Mux7~1_combout\,
	combout => \inst|inst5|Mux1~2_combout\);

-- Location: LCCOMB_X70_Y47_N12
\inst|inst41~11\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|inst41~11_combout\ = (\inst|inst55|Mux1~1_combout\ & (((\inst|SYI982F|y[2]~2_combout\)))) # (!\inst|inst55|Mux1~1_combout\ & (((\inst|inst5|Mux1~2_combout\)) # (!\inst|inst55|Mux6~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|inst55|Mux6~1_combout\,
	datab => \inst|SYI982F|y[2]~2_combout\,
	datac => \inst|inst5|Mux1~2_combout\,
	datad => \inst|inst55|Mux1~1_combout\,
	combout => \inst|inst41~11_combout\);

-- Location: LCCOMB_X70_Y47_N2
\inst|inst41~12\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|inst41~12_combout\ = (\inst|inst97~q\ & (((\inst|inst41~11_combout\)))) # (!\inst|inst97~q\ & ((\inst|inst55|Mux1~0_combout\ & (\inst|inst55|Mux6~0_combout\)) # (!\inst|inst55|Mux1~0_combout\ & ((\inst|inst41~11_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111100100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|inst55|Mux6~0_combout\,
	datab => \inst|inst97~q\,
	datac => \inst|inst55|Mux1~0_combout\,
	datad => \inst|inst41~11_combout\,
	combout => \inst|inst41~12_combout\);

-- Location: LCCOMB_X70_Y47_N6
\inst|inst41~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|inst41~0_combout\ = (\inst|inst41~11_combout\ & (((\inst|inst5|Mux1~1_combout\) # (\inst|inst41~12_combout\)))) # (!\inst|inst41~11_combout\ & (\inst|inst5|Mux1~3_combout\ & ((\inst|inst41~12_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|inst41~11_combout\,
	datab => \inst|inst5|Mux1~3_combout\,
	datac => \inst|inst5|Mux1~1_combout\,
	datad => \inst|inst41~12_combout\,
	combout => \inst|inst41~0_combout\);

-- Location: LCCOMB_X70_Y47_N8
\inst|inst41~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|inst41~feeder_combout\ = \inst|inst41~0_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst|inst41~0_combout\,
	combout => \inst|inst41~feeder_combout\);

-- Location: FF_X70_Y47_N9
\inst|inst41\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \GDGERGD|cpu_pulse~clkctrl_outclk\,
	d => \inst|inst41~feeder_combout\,
	asdata => \inst|inst32~q\,
	clrn => \KEY[0]~input_o\,
	sload => \inst|inst55|Mux0~1_combout\,
	ena => \inst|inst43~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|inst41~q\);

-- Location: LCCOMB_X69_Y47_N22
\inst|inst5|Mux2~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|inst5|Mux2~2_combout\ = (\inst|inst55|Mux5~1_combout\ & (((\inst|inst41~q\)))) # (!\inst|inst55|Mux5~1_combout\ & ((\inst|inst9~q\) # ((\inst|inst39~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|inst9~q\,
	datab => \inst|inst39~q\,
	datac => \inst|inst41~q\,
	datad => \inst|inst55|Mux5~1_combout\,
	combout => \inst|inst5|Mux2~2_combout\);

-- Location: LCCOMB_X69_Y47_N28
\inst|inst5|Mux2~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|inst5|Mux2~3_combout\ = (\inst|inst55|Mux5~1_combout\ & (((\inst|inst37~q\)))) # (!\inst|inst55|Mux5~1_combout\ & (\inst|inst9~q\ & (\inst|inst39~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|inst9~q\,
	datab => \inst|inst39~q\,
	datac => \inst|inst37~q\,
	datad => \inst|inst55|Mux5~1_combout\,
	combout => \inst|inst5|Mux2~3_combout\);

-- Location: LCCOMB_X69_Y47_N20
\inst|inst5|Mux2~7\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|inst5|Mux2~7_combout\ = (\inst|inst97~q\ & (((\inst|inst5|Mux2~3_combout\)))) # (!\inst|inst97~q\ & ((\inst|inst55|Mux7~0_combout\ & (\inst|inst5|Mux2~2_combout\)) # (!\inst|inst55|Mux7~0_combout\ & ((\inst|inst5|Mux2~3_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101101000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|inst97~q\,
	datab => \inst|inst55|Mux7~0_combout\,
	datac => \inst|inst5|Mux2~2_combout\,
	datad => \inst|inst5|Mux2~3_combout\,
	combout => \inst|inst5|Mux2~7_combout\);

-- Location: LCCOMB_X69_Y47_N14
\inst|inst5|Mux2~6\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|inst5|Mux2~6_combout\ = (\inst|inst55|Mux6~1_combout\ & ((\inst|inst5|Mux2~4_combout\) # ((\inst|inst5|Mux2~5_combout\)))) # (!\inst|inst55|Mux6~1_combout\ & (((\inst|inst5|Mux2~7_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101111001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|inst5|Mux2~4_combout\,
	datab => \inst|inst55|Mux6~1_combout\,
	datac => \inst|inst5|Mux2~5_combout\,
	datad => \inst|inst5|Mux2~7_combout\,
	combout => \inst|inst5|Mux2~6_combout\);

-- Location: LCCOMB_X70_Y47_N22
\inst|inst39~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|inst39~0_combout\ = (\inst|inst55|Mux1~1_combout\ & (\inst|SYI982F|y[1]~1_combout\)) # (!\inst|inst55|Mux1~1_combout\ & ((\inst|inst5|Mux2~6_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|SYI982F|y[1]~1_combout\,
	datab => \inst|inst55|Mux1~1_combout\,
	datad => \inst|inst5|Mux2~6_combout\,
	combout => \inst|inst39~0_combout\);

-- Location: FF_X70_Y47_N23
\inst|inst39\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \GDGERGD|cpu_pulse~clkctrl_outclk\,
	d => \inst|inst39~0_combout\,
	asdata => \inst|inst9~q\,
	clrn => \KEY[0]~input_o\,
	sload => \inst|inst55|Mux0~1_combout\,
	ena => \inst|inst43~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|inst39~q\);

-- Location: LCCOMB_X67_Y47_N4
\REG_A|Mux0~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \REG_A|Mux0~0_combout\ = (\inst|inst43~q\ & (\inst|inst37~q\ & (\inst|inst39~q\ $ (\inst|inst41~q\)))) # (!\inst|inst43~q\ & (!\inst|inst39~q\ & (\inst|inst37~q\ $ (\inst|inst41~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000110010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|inst39~q\,
	datab => \inst|inst43~q\,
	datac => \inst|inst37~q\,
	datad => \inst|inst41~q\,
	combout => \REG_A|Mux0~0_combout\);

-- Location: LCCOMB_X67_Y47_N30
\REG_A|Mux1~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \REG_A|Mux1~0_combout\ = (\inst|inst39~q\ & ((\inst|inst37~q\ & (\inst|inst43~q\)) # (!\inst|inst37~q\ & ((\inst|inst41~q\))))) # (!\inst|inst39~q\ & (\inst|inst41~q\ & (\inst|inst43~q\ $ (\inst|inst37~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001111010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|inst39~q\,
	datab => \inst|inst43~q\,
	datac => \inst|inst37~q\,
	datad => \inst|inst41~q\,
	combout => \REG_A|Mux1~0_combout\);

-- Location: LCCOMB_X67_Y47_N16
\REG_A|Mux2~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \REG_A|Mux2~0_combout\ = (\inst|inst43~q\ & (\inst|inst41~q\ & ((\inst|inst39~q\) # (!\inst|inst37~q\)))) # (!\inst|inst43~q\ & (\inst|inst39~q\ & (!\inst|inst37~q\ & !\inst|inst41~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000110000000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|inst39~q\,
	datab => \inst|inst43~q\,
	datac => \inst|inst37~q\,
	datad => \inst|inst41~q\,
	combout => \REG_A|Mux2~0_combout\);

-- Location: LCCOMB_X67_Y47_N14
\REG_A|Mux3~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \REG_A|Mux3~0_combout\ = (\inst|inst37~q\ & (\inst|inst39~q\ $ (((!\inst|inst41~q\))))) # (!\inst|inst37~q\ & ((\inst|inst39~q\ & (\inst|inst43~q\ & !\inst|inst41~q\)) # (!\inst|inst39~q\ & (!\inst|inst43~q\ & \inst|inst41~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000101011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|inst39~q\,
	datab => \inst|inst43~q\,
	datac => \inst|inst37~q\,
	datad => \inst|inst41~q\,
	combout => \REG_A|Mux3~0_combout\);

-- Location: LCCOMB_X67_Y47_N20
\REG_A|Mux4~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \REG_A|Mux4~0_combout\ = (\inst|inst39~q\ & (!\inst|inst43~q\ & (\inst|inst37~q\))) # (!\inst|inst39~q\ & ((\inst|inst41~q\ & (!\inst|inst43~q\)) # (!\inst|inst41~q\ & ((\inst|inst37~q\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000101110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|inst39~q\,
	datab => \inst|inst43~q\,
	datac => \inst|inst37~q\,
	datad => \inst|inst41~q\,
	combout => \REG_A|Mux4~0_combout\);

-- Location: LCCOMB_X67_Y47_N6
\REG_A|Mux5~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \REG_A|Mux5~0_combout\ = (\inst|inst39~q\ & (!\inst|inst43~q\ & ((\inst|inst37~q\) # (!\inst|inst41~q\)))) # (!\inst|inst39~q\ & (\inst|inst37~q\ & (\inst|inst43~q\ $ (!\inst|inst41~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110000000110010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|inst39~q\,
	datab => \inst|inst43~q\,
	datac => \inst|inst37~q\,
	datad => \inst|inst41~q\,
	combout => \REG_A|Mux5~0_combout\);

-- Location: LCCOMB_X67_Y47_N0
\REG_A|Mux6~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \REG_A|Mux6~0_combout\ = (\inst|inst37~q\ & ((\inst|inst43~q\) # (\inst|inst39~q\ $ (\inst|inst41~q\)))) # (!\inst|inst37~q\ & ((\inst|inst39~q\) # (\inst|inst43~q\ $ (\inst|inst41~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101101111101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|inst39~q\,
	datab => \inst|inst43~q\,
	datac => \inst|inst37~q\,
	datad => \inst|inst41~q\,
	combout => \REG_A|Mux6~0_combout\);

-- Location: LCCOMB_X77_Y43_N20
\REG_B|Mux0~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \REG_B|Mux0~0_combout\ = (\inst|inst32~q\ & (!\inst|inst9~q\ & (\inst|inst33~q\ $ (!\inst|inst35~q\)))) # (!\inst|inst32~q\ & (\inst|inst33~q\ & (\inst|inst9~q\ $ (!\inst|inst35~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010100000010010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|inst33~q\,
	datab => \inst|inst9~q\,
	datac => \inst|inst32~q\,
	datad => \inst|inst35~q\,
	combout => \REG_B|Mux0~0_combout\);

-- Location: LCCOMB_X77_Y43_N10
\REG_B|Mux1~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \REG_B|Mux1~0_combout\ = (\inst|inst9~q\ & ((\inst|inst33~q\ & ((\inst|inst35~q\))) # (!\inst|inst33~q\ & (\inst|inst32~q\)))) # (!\inst|inst9~q\ & (\inst|inst32~q\ & (\inst|inst33~q\ $ (\inst|inst35~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100001100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|inst33~q\,
	datab => \inst|inst9~q\,
	datac => \inst|inst32~q\,
	datad => \inst|inst35~q\,
	combout => \REG_B|Mux1~0_combout\);

-- Location: LCCOMB_X77_Y43_N28
\REG_B|Mux2~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \REG_B|Mux2~0_combout\ = (\inst|inst32~q\ & (\inst|inst35~q\ & ((\inst|inst9~q\) # (!\inst|inst33~q\)))) # (!\inst|inst32~q\ & (!\inst|inst33~q\ & (\inst|inst9~q\ & !\inst|inst35~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101000000000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|inst33~q\,
	datab => \inst|inst9~q\,
	datac => \inst|inst32~q\,
	datad => \inst|inst35~q\,
	combout => \REG_B|Mux2~0_combout\);

-- Location: LCCOMB_X77_Y43_N30
\REG_B|Mux3~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \REG_B|Mux3~0_combout\ = (\inst|inst33~q\ & (\inst|inst9~q\ $ ((!\inst|inst32~q\)))) # (!\inst|inst33~q\ & ((\inst|inst9~q\ & (!\inst|inst32~q\ & \inst|inst35~q\)) # (!\inst|inst9~q\ & (\inst|inst32~q\ & !\inst|inst35~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000011010010010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|inst33~q\,
	datab => \inst|inst9~q\,
	datac => \inst|inst32~q\,
	datad => \inst|inst35~q\,
	combout => \REG_B|Mux3~0_combout\);

-- Location: LCCOMB_X77_Y43_N4
\REG_B|Mux4~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \REG_B|Mux4~0_combout\ = (\inst|inst9~q\ & (\inst|inst33~q\ & ((!\inst|inst35~q\)))) # (!\inst|inst9~q\ & ((\inst|inst32~q\ & ((!\inst|inst35~q\))) # (!\inst|inst32~q\ & (\inst|inst33~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001010111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|inst33~q\,
	datab => \inst|inst9~q\,
	datac => \inst|inst32~q\,
	datad => \inst|inst35~q\,
	combout => \REG_B|Mux4~0_combout\);

-- Location: LCCOMB_X77_Y43_N22
\REG_B|Mux5~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \REG_B|Mux5~0_combout\ = (\inst|inst33~q\ & (\inst|inst35~q\ $ (((\inst|inst9~q\) # (!\inst|inst32~q\))))) # (!\inst|inst33~q\ & (\inst|inst9~q\ & (!\inst|inst32~q\ & !\inst|inst35~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000010001110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|inst33~q\,
	datab => \inst|inst9~q\,
	datac => \inst|inst32~q\,
	datad => \inst|inst35~q\,
	combout => \REG_B|Mux5~0_combout\);

-- Location: LCCOMB_X77_Y43_N12
\REG_B|Mux6~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \REG_B|Mux6~0_combout\ = (\inst|inst33~q\ & ((\inst|inst35~q\) # (\inst|inst9~q\ $ (\inst|inst32~q\)))) # (!\inst|inst33~q\ & ((\inst|inst9~q\) # (\inst|inst32~q\ $ (\inst|inst35~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111101111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|inst33~q\,
	datab => \inst|inst9~q\,
	datac => \inst|inst32~q\,
	datad => \inst|inst35~q\,
	combout => \REG_B|Mux6~0_combout\);

-- Location: LCCOMB_X69_Y47_N30
\inst|inst5|Mux1~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|inst5|Mux1~4_combout\ = (\inst|inst55|Mux6~1_combout\ & ((\inst|inst5|Mux1~3_combout\) # ((\inst|inst5|Mux1~2_combout\)))) # (!\inst|inst55|Mux6~1_combout\ & (((\inst|inst5|Mux1~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110010101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|inst5|Mux1~3_combout\,
	datab => \inst|inst5|Mux1~1_combout\,
	datac => \inst|inst55|Mux6~1_combout\,
	datad => \inst|inst5|Mux1~2_combout\,
	combout => \inst|inst5|Mux1~4_combout\);

-- Location: LCCOMB_X70_Y45_N20
\ALUDECODE|Mux0~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \ALUDECODE|Mux0~0_combout\ = (\inst|inst5|Mux0~29_combout\ & (\inst|inst5|Mux3~5_combout\ & (\inst|inst5|Mux2~6_combout\ $ (\inst|inst5|Mux1~4_combout\)))) # (!\inst|inst5|Mux0~29_combout\ & (!\inst|inst5|Mux2~6_combout\ & (\inst|inst5|Mux3~5_combout\ $ 
-- (\inst|inst5|Mux1~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100110000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|inst5|Mux0~29_combout\,
	datab => \inst|inst5|Mux3~5_combout\,
	datac => \inst|inst5|Mux2~6_combout\,
	datad => \inst|inst5|Mux1~4_combout\,
	combout => \ALUDECODE|Mux0~0_combout\);

-- Location: LCCOMB_X70_Y45_N6
\ALUDECODE|Mux1~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \ALUDECODE|Mux1~0_combout\ = (\inst|inst5|Mux0~29_combout\ & ((\inst|inst5|Mux3~5_combout\ & (\inst|inst5|Mux2~6_combout\)) # (!\inst|inst5|Mux3~5_combout\ & ((\inst|inst5|Mux1~4_combout\))))) # (!\inst|inst5|Mux0~29_combout\ & 
-- (\inst|inst5|Mux1~4_combout\ & (\inst|inst5|Mux3~5_combout\ $ (\inst|inst5|Mux2~6_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011011010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|inst5|Mux0~29_combout\,
	datab => \inst|inst5|Mux3~5_combout\,
	datac => \inst|inst5|Mux2~6_combout\,
	datad => \inst|inst5|Mux1~4_combout\,
	combout => \ALUDECODE|Mux1~0_combout\);

-- Location: LCCOMB_X70_Y45_N16
\ALUDECODE|Mux2~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \ALUDECODE|Mux2~0_combout\ = (\inst|inst5|Mux0~29_combout\ & (\inst|inst5|Mux1~4_combout\ & ((\inst|inst5|Mux2~6_combout\) # (!\inst|inst5|Mux3~5_combout\)))) # (!\inst|inst5|Mux0~29_combout\ & (!\inst|inst5|Mux3~5_combout\ & (\inst|inst5|Mux2~6_combout\ 
-- & !\inst|inst5|Mux1~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010001000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|inst5|Mux0~29_combout\,
	datab => \inst|inst5|Mux3~5_combout\,
	datac => \inst|inst5|Mux2~6_combout\,
	datad => \inst|inst5|Mux1~4_combout\,
	combout => \ALUDECODE|Mux2~0_combout\);

-- Location: LCCOMB_X70_Y45_N10
\ALUDECODE|Mux3~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \ALUDECODE|Mux3~0_combout\ = (\inst|inst5|Mux3~5_combout\ & ((\inst|inst5|Mux2~6_combout\ $ (!\inst|inst5|Mux1~4_combout\)))) # (!\inst|inst5|Mux3~5_combout\ & ((\inst|inst5|Mux0~29_combout\ & (\inst|inst5|Mux2~6_combout\ & !\inst|inst5|Mux1~4_combout\)) 
-- # (!\inst|inst5|Mux0~29_combout\ & (!\inst|inst5|Mux2~6_combout\ & \inst|inst5|Mux1~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000100101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|inst5|Mux0~29_combout\,
	datab => \inst|inst5|Mux3~5_combout\,
	datac => \inst|inst5|Mux2~6_combout\,
	datad => \inst|inst5|Mux1~4_combout\,
	combout => \ALUDECODE|Mux3~0_combout\);

-- Location: LCCOMB_X70_Y45_N0
\ALUDECODE|Mux4~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \ALUDECODE|Mux4~0_combout\ = (\inst|inst5|Mux2~6_combout\ & (!\inst|inst5|Mux0~29_combout\ & (\inst|inst5|Mux3~5_combout\))) # (!\inst|inst5|Mux2~6_combout\ & ((\inst|inst5|Mux1~4_combout\ & (!\inst|inst5|Mux0~29_combout\)) # (!\inst|inst5|Mux1~4_combout\ 
-- & ((\inst|inst5|Mux3~5_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100010101001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|inst5|Mux0~29_combout\,
	datab => \inst|inst5|Mux3~5_combout\,
	datac => \inst|inst5|Mux2~6_combout\,
	datad => \inst|inst5|Mux1~4_combout\,
	combout => \ALUDECODE|Mux4~0_combout\);

-- Location: LCCOMB_X70_Y45_N14
\ALUDECODE|Mux5~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \ALUDECODE|Mux5~0_combout\ = (\inst|inst5|Mux3~5_combout\ & (\inst|inst5|Mux0~29_combout\ $ (((\inst|inst5|Mux2~6_combout\) # (!\inst|inst5|Mux1~4_combout\))))) # (!\inst|inst5|Mux3~5_combout\ & (!\inst|inst5|Mux0~29_combout\ & 
-- (\inst|inst5|Mux2~6_combout\ & !\inst|inst5|Mux1~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100100001010100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|inst5|Mux0~29_combout\,
	datab => \inst|inst5|Mux3~5_combout\,
	datac => \inst|inst5|Mux2~6_combout\,
	datad => \inst|inst5|Mux1~4_combout\,
	combout => \ALUDECODE|Mux5~0_combout\);

-- Location: LCCOMB_X70_Y45_N28
\ALUDECODE|Mux6~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \ALUDECODE|Mux6~0_combout\ = (\inst|inst5|Mux3~5_combout\ & ((\inst|inst5|Mux0~29_combout\) # (\inst|inst5|Mux2~6_combout\ $ (\inst|inst5|Mux1~4_combout\)))) # (!\inst|inst5|Mux3~5_combout\ & ((\inst|inst5|Mux2~6_combout\) # (\inst|inst5|Mux0~29_combout\ 
-- $ (\inst|inst5|Mux1~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011110111111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|inst5|Mux0~29_combout\,
	datab => \inst|inst5|Mux3~5_combout\,
	datac => \inst|inst5|Mux2~6_combout\,
	datad => \inst|inst5|Mux1~4_combout\,
	combout => \ALUDECODE|Mux6~0_combout\);

-- Location: UNVM_X0_Y40_N40
\~QUARTUS_CREATED_UNVM~\ : fiftyfivenm_unvm
-- pragma translate_off
GENERIC MAP (
	addr_range1_end_addr => -1,
	addr_range1_offset => -1,
	addr_range2_end_addr => -1,
	addr_range2_offset => -1,
	addr_range3_offset => -1,
	is_compressed_image => "false",
	is_dual_boot => "false",
	is_eram_skip => "false",
	max_ufm_valid_addr => -1,
	max_valid_addr => -1,
	min_ufm_valid_addr => -1,
	min_valid_addr => -1,
	part_name => "quartus_created_unvm",
	reserve_block => "true")
-- pragma translate_on
PORT MAP (
	nosc_ena => \~QUARTUS_CREATED_GND~I_combout\,
	xe_ye => \~QUARTUS_CREATED_GND~I_combout\,
	se => \~QUARTUS_CREATED_GND~I_combout\,
	busy => \~QUARTUS_CREATED_UNVM~~busy\);

-- Location: ADCBLOCK_X43_Y52_N0
\~QUARTUS_CREATED_ADC1~\ : fiftyfivenm_adcblock
-- pragma translate_off
GENERIC MAP (
	analog_input_pin_mask => 0,
	clkdiv => 1,
	device_partname_fivechar_prefix => "none",
	is_this_first_or_second_adc => 1,
	prescalar => 0,
	pwd => 1,
	refsel => 0,
	reserve_block => "true",
	testbits => 66,
	tsclkdiv => 1,
	tsclksel => 0)
-- pragma translate_on
PORT MAP (
	soc => \~QUARTUS_CREATED_GND~I_combout\,
	usr_pwd => VCC,
	tsen => \~QUARTUS_CREATED_GND~I_combout\,
	chsel => \~QUARTUS_CREATED_ADC1~_CHSEL_bus\,
	eoc => \~QUARTUS_CREATED_ADC1~~eoc\);

-- Location: ADCBLOCK_X43_Y51_N0
\~QUARTUS_CREATED_ADC2~\ : fiftyfivenm_adcblock
-- pragma translate_off
GENERIC MAP (
	analog_input_pin_mask => 0,
	clkdiv => 1,
	device_partname_fivechar_prefix => "none",
	is_this_first_or_second_adc => 2,
	prescalar => 0,
	pwd => 1,
	refsel => 0,
	reserve_block => "true",
	testbits => 66,
	tsclkdiv => 1,
	tsclksel => 0)
-- pragma translate_on
PORT MAP (
	soc => \~QUARTUS_CREATED_GND~I_combout\,
	usr_pwd => VCC,
	tsen => \~QUARTUS_CREATED_GND~I_combout\,
	chsel => \~QUARTUS_CREATED_ADC2~_CHSEL_bus\,
	eoc => \~QUARTUS_CREATED_ADC2~~eoc\);

ww_HEX0(0) <= \HEX0[0]~output_o\;

ww_HEX0(1) <= \HEX0[1]~output_o\;

ww_HEX0(2) <= \HEX0[2]~output_o\;

ww_HEX0(3) <= \HEX0[3]~output_o\;

ww_HEX0(4) <= \HEX0[4]~output_o\;

ww_HEX0(5) <= \HEX0[5]~output_o\;

ww_HEX0(6) <= \HEX0[6]~output_o\;

ww_HEX1(0) <= \HEX1[0]~output_o\;

ww_HEX1(1) <= \HEX1[1]~output_o\;

ww_HEX1(2) <= \HEX1[2]~output_o\;

ww_HEX1(3) <= \HEX1[3]~output_o\;

ww_HEX1(4) <= \HEX1[4]~output_o\;

ww_HEX1(5) <= \HEX1[5]~output_o\;

ww_HEX1(6) <= \HEX1[6]~output_o\;

ww_HEX2(0) <= \HEX2[0]~output_o\;

ww_HEX2(1) <= \HEX2[1]~output_o\;

ww_HEX2(2) <= \HEX2[2]~output_o\;

ww_HEX2(3) <= \HEX2[3]~output_o\;

ww_HEX2(4) <= \HEX2[4]~output_o\;

ww_HEX2(5) <= \HEX2[5]~output_o\;

ww_HEX2(6) <= \HEX2[6]~output_o\;

ww_HEX3(0) <= \HEX3[0]~output_o\;

ww_HEX3(1) <= \HEX3[1]~output_o\;

ww_HEX3(2) <= \HEX3[2]~output_o\;

ww_HEX3(3) <= \HEX3[3]~output_o\;

ww_HEX3(4) <= \HEX3[4]~output_o\;

ww_HEX3(5) <= \HEX3[5]~output_o\;

ww_HEX3(6) <= \HEX3[6]~output_o\;

ww_HEX4(0) <= \HEX4[0]~output_o\;

ww_HEX4(1) <= \HEX4[1]~output_o\;

ww_HEX4(2) <= \HEX4[2]~output_o\;

ww_HEX4(3) <= \HEX4[3]~output_o\;

ww_HEX4(4) <= \HEX4[4]~output_o\;

ww_HEX4(5) <= \HEX4[5]~output_o\;

ww_HEX4(6) <= \HEX4[6]~output_o\;

ww_HEX5(0) <= \HEX5[0]~output_o\;

ww_HEX5(1) <= \HEX5[1]~output_o\;

ww_HEX5(2) <= \HEX5[2]~output_o\;

ww_HEX5(3) <= \HEX5[3]~output_o\;

ww_HEX5(4) <= \HEX5[4]~output_o\;

ww_HEX5(5) <= \HEX5[5]~output_o\;

ww_HEX5(6) <= \HEX5[6]~output_o\;
END structure;


