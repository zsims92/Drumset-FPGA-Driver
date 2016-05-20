-- Copyright (C) 1991-2013 Altera Corporation
-- Your use of Altera Corporation's design tools, logic functions 
-- and other software and tools, and its AMPP partner logic 
-- functions, and any output files from any of the foregoing 
-- (including device programming or simulation files), and any 
-- associated documentation or information are expressly subject 
-- to the terms and conditions of the Altera Program License 
-- Subscription Agreement, Altera MegaCore Function License 
-- Agreement, or other applicable license agreement, including, 
-- without limitation, that your use is for the sole purpose of 
-- programming logic devices manufactured by Altera and sold by 
-- Altera or its authorized distributors.  Please refer to the 
-- applicable agreement for further details.

-- VENDOR "Altera"
-- PROGRAM "Quartus II 64-Bit"
-- VERSION "Version 13.0.0 Build 156 04/24/2013 SJ Web Edition"

-- DATE "04/27/2016 06:49:05"

-- 
-- Device: Altera EP2C35U484C7 Package UFBGA484
-- 

-- 
-- This VHDL file should be used for ModelSim-Altera (VHDL) only
-- 

LIBRARY CYCLONEII;
LIBRARY IEEE;
USE CYCLONEII.CYCLONEII_COMPONENTS.ALL;
USE IEEE.STD_LOGIC_1164.ALL;

ENTITY 	IO_MemoryInterface IS
    PORT (
	stickHitHigh : OUT std_logic;
	reset : IN std_logic;
	clock : IN std_logic;
	mem_addr : IN std_logic_vector(3 DOWNTO 0);
	mem_write : IN std_logic;
	mem_data : IN std_logic_vector(15 DOWNTO 0);
	stickHitLow : OUT std_logic;
	restart : OUT std_logic;
	currM : OUT std_logic_vector(15 DOWNTO 0);
	data_out : OUT std_logic_vector(15 DOWNTO 0);
	KEY : IN std_logic_vector(3 DOWNTO 0);
	SW : IN std_logic_vector(9 DOWNTO 0);
	HEX0 : OUT std_logic_vector(6 DOWNTO 0);
	LEDG : OUT std_logic_vector(7 DOWNTO 0);
	Measure : OUT std_logic_vector(15 DOWNTO 0);
	nextM : OUT std_logic_vector(15 DOWNTO 0)
	);
END IO_MemoryInterface;

-- Design Ports Information
-- stickHitHigh	=>  Location: PIN_A16,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- stickHitLow	=>  Location: PIN_A13,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- restart	=>  Location: PIN_B15,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- currM[15]	=>  Location: PIN_D15,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- currM[14]	=>  Location: PIN_K20,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- currM[13]	=>  Location: PIN_J17,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- currM[12]	=>  Location: PIN_A17,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- currM[11]	=>  Location: PIN_D14,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- currM[10]	=>  Location: PIN_H18,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- currM[9]	=>  Location: PIN_C14,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- currM[8]	=>  Location: PIN_H19,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- currM[7]	=>  Location: PIN_B13,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- currM[6]	=>  Location: PIN_K21,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- currM[5]	=>  Location: PIN_F10,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- currM[4]	=>  Location: PIN_B14,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- currM[3]	=>  Location: PIN_B16,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- currM[2]	=>  Location: PIN_A14,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- currM[1]	=>  Location: PIN_G11,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- currM[0]	=>  Location: PIN_H11,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- data_out[15]	=>  Location: PIN_E1,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- data_out[14]	=>  Location: PIN_J1,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- data_out[13]	=>  Location: PIN_AA17,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- data_out[12]	=>  Location: PIN_J4,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- data_out[11]	=>  Location: PIN_AA20,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- data_out[10]	=>  Location: PIN_H5,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- data_out[9]	=>  Location: PIN_R7,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- data_out[8]	=>  Location: PIN_P4,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- data_out[7]	=>  Location: PIN_P6,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- data_out[6]	=>  Location: PIN_R4,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- data_out[5]	=>  Location: PIN_N3,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- data_out[4]	=>  Location: PIN_T2,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- data_out[3]	=>  Location: PIN_V2,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- data_out[2]	=>  Location: PIN_R1,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- data_out[1]	=>  Location: PIN_U1,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- data_out[0]	=>  Location: PIN_T1,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- HEX0[6]	=>  Location: PIN_M19,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- HEX0[5]	=>  Location: PIN_E18,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- HEX0[4]	=>  Location: PIN_K17,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- HEX0[3]	=>  Location: PIN_J21,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- HEX0[2]	=>  Location: PIN_H15,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- HEX0[1]	=>  Location: PIN_L17,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- HEX0[0]	=>  Location: PIN_A19,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- LEDG[7]	=>  Location: PIN_A20,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- LEDG[6]	=>  Location: PIN_M18,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- LEDG[5]	=>  Location: PIN_E19,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- LEDG[4]	=>  Location: PIN_N22,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- LEDG[3]	=>  Location: PIN_B20,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- LEDG[2]	=>  Location: PIN_B18,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- LEDG[1]	=>  Location: PIN_N21,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- LEDG[0]	=>  Location: PIN_B19,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- Measure[15]	=>  Location: PIN_L18,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- Measure[14]	=>  Location: PIN_C16,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- Measure[13]	=>  Location: PIN_D16,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- Measure[12]	=>  Location: PIN_J22,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- Measure[11]	=>  Location: PIN_K18,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- Measure[10]	=>  Location: PIN_F12,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- Measure[9]	=>  Location: PIN_G20,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- Measure[8]	=>  Location: PIN_L19,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- Measure[7]	=>  Location: PIN_K22,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- Measure[6]	=>  Location: PIN_F20,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- Measure[5]	=>  Location: PIN_J20,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- Measure[4]	=>  Location: PIN_J19,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- Measure[3]	=>  Location: PIN_E15,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- Measure[2]	=>  Location: PIN_D21,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- Measure[1]	=>  Location: PIN_G17,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- Measure[0]	=>  Location: PIN_E14,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- nextM[15]	=>  Location: PIN_C21,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- nextM[14]	=>  Location: PIN_J15,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- nextM[13]	=>  Location: PIN_H21,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- nextM[12]	=>  Location: PIN_J18,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- nextM[11]	=>  Location: PIN_H17,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- nextM[10]	=>  Location: PIN_E20,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- nextM[9]	=>  Location: PIN_E22,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- nextM[8]	=>  Location: PIN_G22,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- nextM[7]	=>  Location: PIN_F22,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- nextM[6]	=>  Location: PIN_F21,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- nextM[5]	=>  Location: PIN_A15,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- nextM[4]	=>  Location: PIN_G21,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- nextM[3]	=>  Location: PIN_H22,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- nextM[2]	=>  Location: PIN_F14,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- nextM[1]	=>  Location: PIN_B11,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- nextM[0]	=>  Location: PIN_C13,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- mem_addr[3]	=>  Location: PIN_E11,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- mem_addr[1]	=>  Location: PIN_D11,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- mem_addr[0]	=>  Location: PIN_A11,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- mem_addr[2]	=>  Location: PIN_B10,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- reset	=>  Location: PIN_D12,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- mem_data[1]	=>  Location: PIN_H16,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- clock	=>  Location: PIN_M1,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- mem_write	=>  Location: PIN_A10,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- SW[9]	=>  Location: PIN_M8,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- SW[8]	=>  Location: PIN_M7,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- SW[7]	=>  Location: PIN_N4,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- SW[6]	=>  Location: PIN_N5,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- SW[5]	=>  Location: PIN_P1,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- SW[4]	=>  Location: PIN_R6,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- SW[3]	=>  Location: PIN_V1,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- KEY[3]	=>  Location: PIN_U2,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- SW[2]	=>  Location: PIN_R2,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- KEY[2]	=>  Location: PIN_P3,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- SW[1]	=>  Location: PIN_P5,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- KEY[1]	=>  Location: PIN_R8,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- KEY[0]	=>  Location: PIN_R5,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- SW[0]	=>  Location: PIN_N6,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- mem_data[6]	=>  Location: PIN_D22,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- mem_data[5]	=>  Location: PIN_C19,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- mem_data[4]	=>  Location: PIN_G18,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- mem_data[3]	=>  Location: PIN_D20,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- mem_data[2]	=>  Location: PIN_G16,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- mem_data[0]	=>  Location: PIN_A18,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- mem_data[7]	=>  Location: PIN_C17,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- mem_data[15]	=>  Location: PIN_F15,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- mem_data[14]	=>  Location: PIN_J14,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- mem_data[13]	=>  Location: PIN_E21,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- mem_data[12]	=>  Location: PIN_H14,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- mem_data[11]	=>  Location: PIN_B17,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- mem_data[10]	=>  Location: PIN_F13,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- mem_data[9]	=>  Location: PIN_L1,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- mem_data[8]	=>  Location: PIN_L2,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default


ARCHITECTURE structure OF IO_MemoryInterface IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_stickHitHigh : std_logic;
SIGNAL ww_reset : std_logic;
SIGNAL ww_clock : std_logic;
SIGNAL ww_mem_addr : std_logic_vector(3 DOWNTO 0);
SIGNAL ww_mem_write : std_logic;
SIGNAL ww_mem_data : std_logic_vector(15 DOWNTO 0);
SIGNAL ww_stickHitLow : std_logic;
SIGNAL ww_restart : std_logic;
SIGNAL ww_currM : std_logic_vector(15 DOWNTO 0);
SIGNAL ww_data_out : std_logic_vector(15 DOWNTO 0);
SIGNAL ww_KEY : std_logic_vector(3 DOWNTO 0);
SIGNAL ww_SW : std_logic_vector(9 DOWNTO 0);
SIGNAL ww_HEX0 : std_logic_vector(6 DOWNTO 0);
SIGNAL ww_LEDG : std_logic_vector(7 DOWNTO 0);
SIGNAL ww_Measure : std_logic_vector(15 DOWNTO 0);
SIGNAL ww_nextM : std_logic_vector(15 DOWNTO 0);
SIGNAL \clock~clkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \inst14~clkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \inst2|sixteenthCLK~clkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \inst12~clkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \inst13~clkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \reset~clkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \inst2|sixteenthCLKCount[1]~26_combout\ : std_logic;
SIGNAL \inst2|sixteenthCLKCount[2]~28_combout\ : std_logic;
SIGNAL \inst2|sixteenthCLKCount[4]~32_combout\ : std_logic;
SIGNAL \inst2|sixteenthCLKCount[14]~52_combout\ : std_logic;
SIGNAL \inst2|sixteenthCLKCount[17]~58_combout\ : std_logic;
SIGNAL \inst2|sixteenthCLKCount[22]~68_combout\ : std_logic;
SIGNAL \inst2|state.PLAY12SIXTEENTH~regout\ : std_logic;
SIGNAL \inst2|state.PLAY11SIXTEENTH~regout\ : std_logic;
SIGNAL \inst2|Selector16~2_combout\ : std_logic;
SIGNAL \inst2|state.PLAY9SIXTEENTH~regout\ : std_logic;
SIGNAL \inst2|state.PLAY7SIXTEENTH~regout\ : std_logic;
SIGNAL \inst2|Selector16~8_combout\ : std_logic;
SIGNAL \inst4|LowClcok|lab7_task2Sim|sim30|Cout~1_combout\ : std_logic;
SIGNAL \inst4|LowClcok|lab7_task2Sim|sim27|Cout~0_combout\ : std_logic;
SIGNAL \inst4|LowClcok|lab7_task2Sim|sim24|Cout~0_combout\ : std_logic;
SIGNAL \inst4|LowClcok|lab7_task2Sim|sim24|Cout~1_combout\ : std_logic;
SIGNAL \inst4|LowClcok|lab7_task2Sim|sim15|Cout~0_combout\ : std_logic;
SIGNAL \inst4|LowClcok|lab7_task2Sim|sim15|Cout~1_combout\ : std_logic;
SIGNAL \inst4|LowClcok|lab7_task2Sim|sim12|Cout~0_combout\ : std_logic;
SIGNAL \inst4|LowClcok|lab7_task2Sim|sim12|Cout~1_combout\ : std_logic;
SIGNAL \inst4|LowClcok|lab7_task2Sim|sim9|Cout~1_combout\ : std_logic;
SIGNAL \inst4|countersim|Mux15~1_combout\ : std_logic;
SIGNAL \inst4|LowClcok|lab7_task2Sim|sim22|Cout~1_combout\ : std_logic;
SIGNAL \inst4|LowClcok|lab7_task2Sim|sim22|Cout~2_combout\ : std_logic;
SIGNAL \inst4|LowClcok|lab7_task2Sim|sim22|Cout~4_combout\ : std_logic;
SIGNAL \inst2|next_state.PLAY12SIXTEENTH~regout\ : std_logic;
SIGNAL \inst2|state~43_combout\ : std_logic;
SIGNAL \inst2|next_state.PLAY11SIXTEENTH~regout\ : std_logic;
SIGNAL \inst2|state~44_combout\ : std_logic;
SIGNAL \inst2|next_state.PLAY9SIXTEENTH~regout\ : std_logic;
SIGNAL \inst2|state~46_combout\ : std_logic;
SIGNAL \inst2|next_state.PLAY7SIXTEENTH~regout\ : std_logic;
SIGNAL \inst2|state~48_combout\ : std_logic;
SIGNAL \inst14~combout\ : std_logic;
SIGNAL \inst2|Selector31~0_combout\ : std_logic;
SIGNAL \inst2|Selector30~0_combout\ : std_logic;
SIGNAL \inst2|Selector28~0_combout\ : std_logic;
SIGNAL \inst2|Selector26~0_combout\ : std_logic;
SIGNAL \inst14~clkctrl_outclk\ : std_logic;
SIGNAL \inst5|output[8]~feeder_combout\ : std_logic;
SIGNAL \reset~combout\ : std_logic;
SIGNAL \inst2|sixteenthCLKCount[0]~24_combout\ : std_logic;
SIGNAL \inst2|sixteenthCLKCount[0]~25\ : std_logic;
SIGNAL \inst2|sixteenthCLKCount[1]~27\ : std_logic;
SIGNAL \inst2|sixteenthCLKCount[2]~29\ : std_logic;
SIGNAL \inst2|sixteenthCLKCount[3]~30_combout\ : std_logic;
SIGNAL \inst2|sixteenthCLKCount[3]~31\ : std_logic;
SIGNAL \inst2|sixteenthCLKCount[4]~33\ : std_logic;
SIGNAL \inst2|sixteenthCLKCount[5]~34_combout\ : std_logic;
SIGNAL \inst2|sixteenthCLKCount[5]~35\ : std_logic;
SIGNAL \inst2|sixteenthCLKCount[6]~37\ : std_logic;
SIGNAL \inst2|sixteenthCLKCount[7]~38_combout\ : std_logic;
SIGNAL \inst2|sixteenthCLKCount[7]~39\ : std_logic;
SIGNAL \inst2|sixteenthCLKCount[8]~41\ : std_logic;
SIGNAL \inst2|sixteenthCLKCount[9]~42_combout\ : std_logic;
SIGNAL \inst2|sixteenthCLKCount[9]~43\ : std_logic;
SIGNAL \inst2|sixteenthCLKCount[10]~44_combout\ : std_logic;
SIGNAL \inst2|sixteenthCLKCount[10]~45\ : std_logic;
SIGNAL \inst2|sixteenthCLKCount[11]~46_combout\ : std_logic;
SIGNAL \inst2|sixteenthCLKCount[11]~47\ : std_logic;
SIGNAL \inst2|sixteenthCLKCount[12]~48_combout\ : std_logic;
SIGNAL \inst2|sixteenthCLKCount[12]~49\ : std_logic;
SIGNAL \inst2|sixteenthCLKCount[13]~50_combout\ : std_logic;
SIGNAL \inst2|sixteenthCLKCount[13]~51\ : std_logic;
SIGNAL \inst2|sixteenthCLKCount[14]~53\ : std_logic;
SIGNAL \inst2|sixteenthCLKCount[15]~55\ : std_logic;
SIGNAL \inst2|sixteenthCLKCount[16]~56_combout\ : std_logic;
SIGNAL \inst2|sixteenthCLKCount[16]~57\ : std_logic;
SIGNAL \inst2|sixteenthCLKCount[17]~59\ : std_logic;
SIGNAL \inst2|sixteenthCLKCount[18]~61\ : std_logic;
SIGNAL \inst2|sixteenthCLKCount[19]~62_combout\ : std_logic;
SIGNAL \inst2|sixteenthCLKCount[19]~63\ : std_logic;
SIGNAL \inst2|sixteenthCLKCount[20]~65\ : std_logic;
SIGNAL \inst2|sixteenthCLKCount[21]~66_combout\ : std_logic;
SIGNAL \inst2|sixteenthCLKCount[21]~67\ : std_logic;
SIGNAL \inst2|sixteenthCLKCount[22]~69\ : std_logic;
SIGNAL \inst2|sixteenthCLKCount[23]~70_combout\ : std_logic;
SIGNAL \inst2|sixteenthCLKCount[20]~64_combout\ : std_logic;
SIGNAL \inst2|sixteenthCLKCount[18]~60_combout\ : std_logic;
SIGNAL \inst2|sixteenthCLKCount[15]~54_combout\ : std_logic;
SIGNAL \inst2|LessThan0~0_combout\ : std_logic;
SIGNAL \inst2|sixteenthCLKCount[8]~40_combout\ : std_logic;
SIGNAL \inst2|LessThan0~1_combout\ : std_logic;
SIGNAL \inst2|sixteenthCLKCount[6]~36_combout\ : std_logic;
SIGNAL \inst2|LessThan0~2_combout\ : std_logic;
SIGNAL \inst2|LessThan0~3_combout\ : std_logic;
SIGNAL \inst2|LessThan0~4_combout\ : std_logic;
SIGNAL \inst2|LessThan0~5_combout\ : std_logic;
SIGNAL \inst2|LessThan0~6_combout\ : std_logic;
SIGNAL \inst2|sixteenthCLK~0_combout\ : std_logic;
SIGNAL \inst2|sixteenthCLK~regout\ : std_logic;
SIGNAL \inst2|sixteenthCLK~clkctrl_outclk\ : std_logic;
SIGNAL \inst2|state.RESETSTICKS~feeder_combout\ : std_logic;
SIGNAL \reset~clkctrl_outclk\ : std_logic;
SIGNAL \inst2|state.RESETSTICKS~regout\ : std_logic;
SIGNAL \inst2|Selector35~0_combout\ : std_logic;
SIGNAL \inst2|next_state.PLAY16SIXTEENTH~regout\ : std_logic;
SIGNAL \inst2|state~39_combout\ : std_logic;
SIGNAL \inst2|state.PLAY16SIXTEENTH~regout\ : std_logic;
SIGNAL \inst2|state.LOAD_NEXT_MEASURE~regout\ : std_logic;
SIGNAL \inst2|WideOr21~1_combout\ : std_logic;
SIGNAL \inst2|next_state.RESET1~0_combout\ : std_logic;
SIGNAL \inst2|next_state.RESET1~regout\ : std_logic;
SIGNAL \inst2|state~54_combout\ : std_logic;
SIGNAL \inst2|state.RESET1~regout\ : std_logic;
SIGNAL \inst2|Selector1~0_combout\ : std_logic;
SIGNAL \SWITCHES4|lpm_ff_component|dffs[14]~feeder_combout\ : std_logic;
SIGNAL \inst2|nextMeasure[14]~feeder_combout\ : std_logic;
SIGNAL \inst2|WideOr21~0_combout\ : std_logic;
SIGNAL \inst2|state.PLAY1SIXTEENTH~regout\ : std_logic;
SIGNAL \inst2|Selector21~0_combout\ : std_logic;
SIGNAL \inst2|next_state.PLAY2SIXTEENTH~regout\ : std_logic;
SIGNAL \inst2|state~53_combout\ : std_logic;
SIGNAL \inst2|state.PLAY2SIXTEENTH~regout\ : std_logic;
SIGNAL \inst2|Selector16~9_combout\ : std_logic;
SIGNAL \inst2|Selector12~0_combout\ : std_logic;
SIGNAL \SWITCHES4|lpm_ff_component|dffs[3]~feeder_combout\ : std_logic;
SIGNAL \inst2|nextMeasure[3]~feeder_combout\ : std_logic;
SIGNAL \inst2|Selector32~0_combout\ : std_logic;
SIGNAL \inst2|next_state.PLAY13SIXTEENTH~regout\ : std_logic;
SIGNAL \inst2|state~42_combout\ : std_logic;
SIGNAL \inst2|state.PLAY13SIXTEENTH~regout\ : std_logic;
SIGNAL \inst2|Selector33~0_combout\ : std_logic;
SIGNAL \inst2|next_state.PLAY14SIXTEENTH~regout\ : std_logic;
SIGNAL \inst2|state~41_combout\ : std_logic;
SIGNAL \inst2|state.PLAY14SIXTEENTH~regout\ : std_logic;
SIGNAL \inst2|Selector16~1_combout\ : std_logic;
SIGNAL \inst2|Selector9~0_combout\ : std_logic;
SIGNAL \SWITCHES4|lpm_ff_component|dffs[6]~feeder_combout\ : std_logic;
SIGNAL \inst2|nextMeasure[6]~feeder_combout\ : std_logic;
SIGNAL \inst2|Selector8~0_combout\ : std_logic;
SIGNAL \inst2|nextMeasure[7]~feeder_combout\ : std_logic;
SIGNAL \inst2|Selector29~0_combout\ : std_logic;
SIGNAL \inst2|next_state.PLAY10SIXTEENTH~regout\ : std_logic;
SIGNAL \inst2|state~45_combout\ : std_logic;
SIGNAL \inst2|state.PLAY10SIXTEENTH~regout\ : std_logic;
SIGNAL \inst2|Selector16~3_combout\ : std_logic;
SIGNAL \inst2|Selector34~0_combout\ : std_logic;
SIGNAL \inst2|next_state.PLAY15SIXTEENTH~regout\ : std_logic;
SIGNAL \inst2|state~40_combout\ : std_logic;
SIGNAL \inst2|state.PLAY15SIXTEENTH~regout\ : std_logic;
SIGNAL \inst2|Selector15~0_combout\ : std_logic;
SIGNAL \SWITCHES4|lpm_ff_component|dffs[0]~feeder_combout\ : std_logic;
SIGNAL \inst2|nextMeasure[0]~feeder_combout\ : std_logic;
SIGNAL \inst2|Selector14~0_combout\ : std_logic;
SIGNAL \inst2|nextMeasure[1]~feeder_combout\ : std_logic;
SIGNAL \inst2|Selector16~0_combout\ : std_logic;
SIGNAL \inst2|Selector16~4_combout\ : std_logic;
SIGNAL \inst2|Selector22~0_combout\ : std_logic;
SIGNAL \inst2|next_state.PLAY3SIXTEENTH~regout\ : std_logic;
SIGNAL \inst2|state~52_combout\ : std_logic;
SIGNAL \inst2|state.PLAY3SIXTEENTH~regout\ : std_logic;
SIGNAL \inst2|Selector23~0_combout\ : std_logic;
SIGNAL \inst2|next_state.PLAY4SIXTEENTH~regout\ : std_logic;
SIGNAL \inst2|state~51_combout\ : std_logic;
SIGNAL \inst2|state.PLAY4SIXTEENTH~regout\ : std_logic;
SIGNAL \inst2|Selector24~0_combout\ : std_logic;
SIGNAL \inst2|next_state.PLAY5SIXTEENTH~regout\ : std_logic;
SIGNAL \inst2|state~49_combout\ : std_logic;
SIGNAL \inst2|state.PLAY5SIXTEENTH~regout\ : std_logic;
SIGNAL \inst2|Selector25~0_combout\ : std_logic;
SIGNAL \inst2|next_state.PLAY6SIXTEENTH~regout\ : std_logic;
SIGNAL \inst2|state~50_combout\ : std_logic;
SIGNAL \inst2|state.PLAY6SIXTEENTH~regout\ : std_logic;
SIGNAL \inst2|Selector4~0_combout\ : std_logic;
SIGNAL \inst2|nextMeasure[11]~feeder_combout\ : std_logic;
SIGNAL \inst2|Selector16~6_combout\ : std_logic;
SIGNAL \inst2|Selector27~0_combout\ : std_logic;
SIGNAL \inst2|next_state.PLAY8SIXTEENTH~regout\ : std_logic;
SIGNAL \inst2|state~47_combout\ : std_logic;
SIGNAL \inst2|state.PLAY8SIXTEENTH~regout\ : std_logic;
SIGNAL \inst2|Selector6~0_combout\ : std_logic;
SIGNAL \SWITCHES4|lpm_ff_component|dffs[9]~feeder_combout\ : std_logic;
SIGNAL \inst2|nextMeasure[9]~feeder_combout\ : std_logic;
SIGNAL \inst2|Selector7~0_combout\ : std_logic;
SIGNAL \SWITCHES4|lpm_ff_component|dffs[8]~feeder_combout\ : std_logic;
SIGNAL \inst2|nextMeasure[8]~feeder_combout\ : std_logic;
SIGNAL \inst2|Selector16~5_combout\ : std_logic;
SIGNAL \inst2|Selector16~7_combout\ : std_logic;
SIGNAL \inst2|Selector16~10_combout\ : std_logic;
SIGNAL \inst2|piece1Hit~regout\ : std_logic;
SIGNAL \inst2|piece1Polar~0_combout\ : std_logic;
SIGNAL \inst2|piece1Polar~regout\ : std_logic;
SIGNAL \clock~combout\ : std_logic;
SIGNAL \clock~clkctrl_outclk\ : std_logic;
SIGNAL \inst20~0_combout\ : std_logic;
SIGNAL \inst20~combout\ : std_logic;
SIGNAL \mem_write~combout\ : std_logic;
SIGNAL \inst18~0_combout\ : std_logic;
SIGNAL \inst16~0_combout\ : std_logic;
SIGNAL \inst11|output~regout\ : std_logic;
SIGNAL \inst2|Selector0~0_combout\ : std_logic;
SIGNAL \SWITCHES4|lpm_ff_component|dffs[15]~feeder_combout\ : std_logic;
SIGNAL \inst2|nextMeasure[15]~feeder_combout\ : std_logic;
SIGNAL \inst2|Selector2~0_combout\ : std_logic;
SIGNAL \inst2|nextMeasure[13]~feeder_combout\ : std_logic;
SIGNAL \inst2|Selector3~0_combout\ : std_logic;
SIGNAL \SWITCHES4|lpm_ff_component|dffs[12]~feeder_combout\ : std_logic;
SIGNAL \inst2|nextMeasure[12]~feeder_combout\ : std_logic;
SIGNAL \inst2|Selector5~0_combout\ : std_logic;
SIGNAL \SWITCHES4|lpm_ff_component|dffs[10]~feeder_combout\ : std_logic;
SIGNAL \inst2|nextMeasure[10]~feeder_combout\ : std_logic;
SIGNAL \inst2|Selector10~0_combout\ : std_logic;
SIGNAL \SWITCHES4|lpm_ff_component|dffs[5]~feeder_combout\ : std_logic;
SIGNAL \inst2|Selector11~0_combout\ : std_logic;
SIGNAL \SWITCHES4|lpm_ff_component|dffs[4]~feeder_combout\ : std_logic;
SIGNAL \inst2|nextMeasure[4]~feeder_combout\ : std_logic;
SIGNAL \inst2|Selector13~0_combout\ : std_logic;
SIGNAL \inst21|Mux6~0_combout\ : std_logic;
SIGNAL \inst21|Mux6~1_combout\ : std_logic;
SIGNAL \inst21|Mux7~0_combout\ : std_logic;
SIGNAL \inst21|Mux8~0_combout\ : std_logic;
SIGNAL \inst21|Mux9~0_combout\ : std_logic;
SIGNAL \inst21|Mux10~0_combout\ : std_logic;
SIGNAL \inst21|Mux11~0_combout\ : std_logic;
SIGNAL \inst3|LPM_DECODE_component|auto_generated|w_anode51w[3]~0_combout\ : std_logic;
SIGNAL \inst21|Mux12~0_combout\ : std_logic;
SIGNAL \inst3|LPM_DECODE_component|auto_generated|w_anode122w[3]~0_combout\ : std_logic;
SIGNAL \inst21|Mux12~1_combout\ : std_logic;
SIGNAL \inst21|Mux13~0_combout\ : std_logic;
SIGNAL \inst21|Mux13~1_combout\ : std_logic;
SIGNAL \SWITCHS|lpm_ff_component|dffs[1]~feeder_combout\ : std_logic;
SIGNAL \inst21|Mux14~0_combout\ : std_logic;
SIGNAL \inst21|Mux14~1_combout\ : std_logic;
SIGNAL \inst10|output~regout\ : std_logic;
SIGNAL \inst4|counter_0_sel[1]~0_combout\ : std_logic;
SIGNAL \inst4|counter_0_sel[1]~1_combout\ : std_logic;
SIGNAL \inst4|datab[0]~feeder_combout\ : std_logic;
SIGNAL \inst4|process_0~0_combout\ : std_logic;
SIGNAL \inst4|ti0~2_combout\ : std_logic;
SIGNAL \inst4|countersim|Mux31~1_combout\ : std_logic;
SIGNAL \inst4|countersim|Mux32~1_combout\ : std_logic;
SIGNAL \inst4|HighClock|lab7_task2Sim|sim1|Cout~0_combout\ : std_logic;
SIGNAL \inst4|countersim|Mux30~1_combout\ : std_logic;
SIGNAL \inst4|HighClock|lab7_task2Sim|sim2|Cout~0_combout\ : std_logic;
SIGNAL \inst4|countersim|Mux29~1_combout\ : std_logic;
SIGNAL \inst4|countersim|Mux28~1_combout\ : std_logic;
SIGNAL \inst4|countersim|Mux28~2_combout\ : std_logic;
SIGNAL \inst4|HighClock|lab7_task2Sim|sim4|Cout~0_combout\ : std_logic;
SIGNAL \inst4|countersim|Mux27~1_combout\ : std_logic;
SIGNAL \inst4|HighClock|lab7_task2Sim|sim0|Cout~0_combout\ : std_logic;
SIGNAL \inst4|HighClock|lab7_task2Sim|sim3|Cout~0_combout\ : std_logic;
SIGNAL \inst4|HighClock|lab7_task2Sim|sim6|Cout~0_combout\ : std_logic;
SIGNAL \inst4|countersim|Mux25~1_combout\ : std_logic;
SIGNAL \inst4|countersim|Mux23~1_combout\ : std_logic;
SIGNAL \inst4|HighClock|lab7_task2Sim|sim9|Cout~0_combout\ : std_logic;
SIGNAL \inst4|countersim|Mux22~1_combout\ : std_logic;
SIGNAL \inst4|HighClock|lab7_task2Sim|sim5|Cout~0_combout\ : std_logic;
SIGNAL \inst4|countersim|Mux26~1_combout\ : std_logic;
SIGNAL \inst4|HighClock|lab7_task2Sim|sim7|Cout~0_combout\ : std_logic;
SIGNAL \inst4|HighClock|lab7_task2Sim|sim10|Cout~0_combout\ : std_logic;
SIGNAL \inst4|countersim|Mux21~1_combout\ : std_logic;
SIGNAL \inst4|HighClock|lab7_task2Sim|sim8|Cout~0_combout\ : std_logic;
SIGNAL \inst4|HighClock|lab7_task2Sim|sim11|Cout~0_combout\ : std_logic;
SIGNAL \inst4|countersim|Mux20~1_combout\ : std_logic;
SIGNAL \inst4|HighClock|lab7_task2Sim|sim12|Cout~0_combout\ : std_logic;
SIGNAL \inst4|countersim|Mux19~1_combout\ : std_logic;
SIGNAL \inst4|HighClock|lab7_task2Sim|sim13|Cout~0_combout\ : std_logic;
SIGNAL \inst4|countersim|Mux18~1_combout\ : std_logic;
SIGNAL \inst4|HighClock|lab7_task2Sim|sim15|Cout~0_combout\ : std_logic;
SIGNAL \inst4|countersim|Mux16~1_combout\ : std_logic;
SIGNAL \inst4|HighClock|lab7_task2Sim|sim14|Cout~0_combout\ : std_logic;
SIGNAL \inst4|countersim|Mux17~1_combout\ : std_logic;
SIGNAL \inst4|HighClock|lab7_task2Sim|sim17|Cout~0_combout\ : std_logic;
SIGNAL \inst4|countersim|Mux14~1_combout\ : std_logic;
SIGNAL \inst4|HighClock|lab7_task2Sim|sim18|Cout~0_combout\ : std_logic;
SIGNAL \inst4|countersim|Mux13~1_combout\ : std_logic;
SIGNAL \inst4|HighClock|lab7_task2Sim|sim20|Cout~0_combout\ : std_logic;
SIGNAL \inst4|countersim|Mux11~1_combout\ : std_logic;
SIGNAL \inst4|HighClock|lab7_task2Sim|sim21|Cout~0_combout\ : std_logic;
SIGNAL \inst4|countersim|Mux10~1_combout\ : std_logic;
SIGNAL \inst4|HighClock|lab7_task2Sim|sim23|Cout~0_combout\ : std_logic;
SIGNAL \inst4|countersim|Mux8~1_combout\ : std_logic;
SIGNAL \inst4|HighClock|lab7_task2Sim|sim24|Cout~0_combout\ : std_logic;
SIGNAL \inst4|countersim|Mux7~1_combout\ : std_logic;
SIGNAL \inst4|HighClock|lab7_task2Sim|sim16|Cout~0_combout\ : std_logic;
SIGNAL \inst4|HighClock|lab7_task2Sim|sim19|Cout~0_combout\ : std_logic;
SIGNAL \inst4|HighClock|lab7_task2Sim|sim22|Cout~0_combout\ : std_logic;
SIGNAL \inst4|HighClock|lab7_task2Sim|sim25|Cout~0_combout\ : std_logic;
SIGNAL \inst4|countersim|Mux6~1_combout\ : std_logic;
SIGNAL \inst4|HighClock|lab7_task2Sim|sim26|Cout~0_combout\ : std_logic;
SIGNAL \inst4|countersim|Mux5~1_combout\ : std_logic;
SIGNAL \inst4|HighClock|lab7_task2Sim|sim27|Cout~0_combout\ : std_logic;
SIGNAL \inst4|countersim|Mux4~1_combout\ : std_logic;
SIGNAL \inst4|HighClock|lab7_task2Sim|sim28|Cout~0_combout\ : std_logic;
SIGNAL \inst4|countersim|Mux3~1_combout\ : std_logic;
SIGNAL \inst4|HighClock|lab7_task2Sim|sim30|Cout~0_combout\ : std_logic;
SIGNAL \inst4|countersim|Mux1~1_combout\ : std_logic;
SIGNAL \inst4|HighClock|lab7_task2Sim|sim31|Cout~0_combout\ : std_logic;
SIGNAL \inst4|countersim|Mux0~0_combout\ : std_logic;
SIGNAL \inst4|HighClock|lab7_task2Sim|sim29|Cout~0_combout\ : std_logic;
SIGNAL \inst4|countersim|Mux2~1_combout\ : std_logic;
SIGNAL \inst4|LowClcok|lab7_task2Sim|sim30|Cout~0_combout\ : std_logic;
SIGNAL \inst17~0_combout\ : std_logic;
SIGNAL \inst4|LowClcok|lab7_task2Sim|sim27|Cout~1_combout\ : std_logic;
SIGNAL \inst4|countersim|Mux9~1_combout\ : std_logic;
SIGNAL \inst4|LowClcok|lab7_task2Sim|sim18|Cout~1_combout\ : std_logic;
SIGNAL \inst4|LowClcok|lab7_task2Sim|sim22|Cout~7_combout\ : std_logic;
SIGNAL \inst18~1_combout\ : std_logic;
SIGNAL \inst4|LowClcok|lab7_task2Sim|sim9|Cout~0_combout\ : std_logic;
SIGNAL \inst4|countersim|Mux24~1_combout\ : std_logic;
SIGNAL \inst4|LowClcok|lab7_task2Sim|sim6|Cout~0_combout\ : std_logic;
SIGNAL \inst4|LowClcok|lab7_task2Sim|sim6|Cout~1_combout\ : std_logic;
SIGNAL \inst4|LowClcok|lab7_task2Sim|sim3|Cout~3_combout\ : std_logic;
SIGNAL \inst4|LowClcok|lab7_task2Sim|sim3|Cout~0_combout\ : std_logic;
SIGNAL \inst4|LowClcok|lab7_task2Sim|sim3|Cout~1_combout\ : std_logic;
SIGNAL \inst4|LowClcok|lab7_task2Sim|sim3|Cout~2_combout\ : std_logic;
SIGNAL \inst4|LowClcok|lab7_task2Sim|sim4|Cout~0_combout\ : std_logic;
SIGNAL \inst4|LowClcok|lab7_task2Sim|sim6|Cout~2_combout\ : std_logic;
SIGNAL \inst4|LowClcok|lab7_task2Sim|sim7|Cout~0_combout\ : std_logic;
SIGNAL \inst4|LowClcok|lab7_task2Sim|sim9|Cout~2_combout\ : std_logic;
SIGNAL \inst4|LowClcok|lab7_task2Sim|sim10|Cout~0_combout\ : std_logic;
SIGNAL \inst4|LowClcok|lab7_task2Sim|sim12|Cout~2_combout\ : std_logic;
SIGNAL \inst4|LowClcok|lab7_task2Sim|sim13|Cout~0_combout\ : std_logic;
SIGNAL \inst4|LowClcok|lab7_task2Sim|sim15|Cout~2_combout\ : std_logic;
SIGNAL \inst4|LowClcok|lab7_task2Sim|sim16|Cout~0_combout\ : std_logic;
SIGNAL \inst4|LowClcok|lab7_task2Sim|sim22|Cout~0_combout\ : std_logic;
SIGNAL \inst4|countersim|Mux12~1_combout\ : std_logic;
SIGNAL \inst4|LowClcok|lab7_task2Sim|sim21|Cout~0_combout\ : std_logic;
SIGNAL \inst4|LowClcok|lab7_task2Sim|sim22|Cout~3_combout\ : std_logic;
SIGNAL \inst4|LowClcok|lab7_task2Sim|sim22|Cout~5_combout\ : std_logic;
SIGNAL \inst4|LowClcok|lab7_task2Sim|sim18|Cout~0_combout\ : std_logic;
SIGNAL \inst4|LowClcok|lab7_task2Sim|sim22|Cout~6_combout\ : std_logic;
SIGNAL \inst4|LowClcok|lab7_task2Sim|sim22|Cout~8_combout\ : std_logic;
SIGNAL \inst4|LowClcok|lab7_task2Sim|sim24|Cout~2_combout\ : std_logic;
SIGNAL \inst4|LowClcok|lab7_task2Sim|sim25|Cout~0_combout\ : std_logic;
SIGNAL \inst4|LowClcok|lab7_task2Sim|sim27|Cout~2_combout\ : std_logic;
SIGNAL \inst4|LowClcok|lab7_task2Sim|sim28|Cout~0_combout\ : std_logic;
SIGNAL \inst4|LowClcok|lab7_task2Sim|sim30|Cout~2_combout\ : std_logic;
SIGNAL \inst4|ti0~0_combout\ : std_logic;
SIGNAL \inst4|ti0~1_combout\ : std_logic;
SIGNAL \inst4|ti0~regout\ : std_logic;
SIGNAL \inst21|Mux15~0_combout\ : std_logic;
SIGNAL \inst21|Mux15~1_combout\ : std_logic;
SIGNAL \inst12~0_combout\ : std_logic;
SIGNAL \inst13~combout\ : std_logic;
SIGNAL \inst13~clkctrl_outclk\ : std_logic;
SIGNAL \HEX_DISPLAY|lpm_ff_component|dffs[6]~feeder_combout\ : std_logic;
SIGNAL \HEX_DISPLAY|lpm_ff_component|dffs[5]~feeder_combout\ : std_logic;
SIGNAL \HEX_DISPLAY|lpm_ff_component|dffs[4]~feeder_combout\ : std_logic;
SIGNAL \HEX_DISPLAY|lpm_ff_component|dffs[3]~feeder_combout\ : std_logic;
SIGNAL \HEX_DISPLAY|lpm_ff_component|dffs[2]~feeder_combout\ : std_logic;
SIGNAL \HEX_DISPLAY|lpm_ff_component|dffs[1]~feeder_combout\ : std_logic;
SIGNAL \HEX_DISPLAY|lpm_ff_component|dffs[0]~feeder_combout\ : std_logic;
SIGNAL \inst12~combout\ : std_logic;
SIGNAL \inst12~clkctrl_outclk\ : std_logic;
SIGNAL \LED|lpm_ff_component|dffs[7]~feeder_combout\ : std_logic;
SIGNAL \LED|lpm_ff_component|dffs[6]~feeder_combout\ : std_logic;
SIGNAL \LED|lpm_ff_component|dffs[5]~feeder_combout\ : std_logic;
SIGNAL \LED|lpm_ff_component|dffs[4]~feeder_combout\ : std_logic;
SIGNAL \LED|lpm_ff_component|dffs[2]~feeder_combout\ : std_logic;
SIGNAL \LED|lpm_ff_component|dffs[1]~feeder_combout\ : std_logic;
SIGNAL \LED|lpm_ff_component|dffs[0]~feeder_combout\ : std_logic;
SIGNAL \inst9|output\ : std_logic_vector(15 DOWNTO 0);
SIGNAL \PUSH_BUTTON|lpm_ff_component|dffs\ : std_logic_vector(15 DOWNTO 0);
SIGNAL \SWITCHS|lpm_ff_component|dffs\ : std_logic_vector(15 DOWNTO 0);
SIGNAL \HEX_DISPLAY|lpm_ff_component|dffs\ : std_logic_vector(15 DOWNTO 0);
SIGNAL \LED|lpm_ff_component|dffs\ : std_logic_vector(15 DOWNTO 0);
SIGNAL \inst2|sixteenthCLKCount\ : std_logic_vector(23 DOWNTO 0);
SIGNAL \inst2|nextMeasure\ : std_logic_vector(15 DOWNTO 0);
SIGNAL \inst2|currMeasure\ : std_logic_vector(15 DOWNTO 0);
SIGNAL \SWITCHES4|lpm_ff_component|dffs\ : std_logic_vector(15 DOWNTO 0);
SIGNAL \inst4|datab\ : std_logic_vector(32 DOWNTO 0);
SIGNAL \inst4|dataa\ : std_logic_vector(32 DOWNTO 0);
SIGNAL \inst4|counter_0_sel\ : std_logic_vector(1 DOWNTO 0);
SIGNAL \mem_addr~combout\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \KEY~combout\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \SW~combout\ : std_logic_vector(9 DOWNTO 0);
SIGNAL \mem_data~combout\ : std_logic_vector(15 DOWNTO 0);
SIGNAL \inst5|output\ : std_logic_vector(15 DOWNTO 0);
SIGNAL \ALT_INV_clock~clkctrl_outclk\ : std_logic;
SIGNAL \ALT_INV_reset~combout\ : std_logic;

BEGIN

stickHitHigh <= ww_stickHitHigh;
ww_reset <= reset;
ww_clock <= clock;
ww_mem_addr <= mem_addr;
ww_mem_write <= mem_write;
ww_mem_data <= mem_data;
stickHitLow <= ww_stickHitLow;
restart <= ww_restart;
currM <= ww_currM;
data_out <= ww_data_out;
ww_KEY <= KEY;
ww_SW <= SW;
HEX0 <= ww_HEX0;
LEDG <= ww_LEDG;
Measure <= ww_Measure;
nextM <= ww_nextM;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

\clock~clkctrl_INCLK_bus\ <= (gnd & gnd & gnd & \clock~combout\);

\inst14~clkctrl_INCLK_bus\ <= (gnd & gnd & gnd & \inst14~combout\);

\inst2|sixteenthCLK~clkctrl_INCLK_bus\ <= (gnd & gnd & gnd & \inst2|sixteenthCLK~regout\);

\inst12~clkctrl_INCLK_bus\ <= (gnd & gnd & gnd & \inst12~combout\);

\inst13~clkctrl_INCLK_bus\ <= (gnd & gnd & gnd & \inst13~combout\);

\reset~clkctrl_INCLK_bus\ <= (gnd & gnd & gnd & \reset~combout\);
\ALT_INV_clock~clkctrl_outclk\ <= NOT \clock~clkctrl_outclk\;
\ALT_INV_reset~combout\ <= NOT \reset~combout\;

-- Location: LCFF_X36_Y27_N21
\inst2|sixteenthCLKCount[22]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ALT_INV_clock~clkctrl_outclk\,
	datain => \inst2|sixteenthCLKCount[22]~68_combout\,
	sclr => \inst2|LessThan0~6_combout\,
	ena => \ALT_INV_reset~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst2|sixteenthCLKCount\(22));

-- Location: LCFF_X36_Y27_N11
\inst2|sixteenthCLKCount[17]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ALT_INV_clock~clkctrl_outclk\,
	datain => \inst2|sixteenthCLKCount[17]~58_combout\,
	sclr => \inst2|LessThan0~6_combout\,
	ena => \ALT_INV_reset~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst2|sixteenthCLKCount\(17));

-- Location: LCFF_X36_Y28_N17
\inst2|sixteenthCLKCount[4]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ALT_INV_clock~clkctrl_outclk\,
	datain => \inst2|sixteenthCLKCount[4]~32_combout\,
	sclr => \inst2|LessThan0~6_combout\,
	ena => \ALT_INV_reset~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst2|sixteenthCLKCount\(4));

-- Location: LCFF_X35_Y28_N13
\inst2|sixteenthCLKCount[14]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ALT_INV_clock~clkctrl_outclk\,
	sdata => \inst2|sixteenthCLKCount[14]~52_combout\,
	sclr => \inst2|LessThan0~6_combout\,
	sload => VCC,
	ena => \ALT_INV_reset~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst2|sixteenthCLKCount\(14));

-- Location: LCFF_X36_Y28_N13
\inst2|sixteenthCLKCount[2]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ALT_INV_clock~clkctrl_outclk\,
	datain => \inst2|sixteenthCLKCount[2]~28_combout\,
	sclr => \inst2|LessThan0~6_combout\,
	ena => \ALT_INV_reset~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst2|sixteenthCLKCount\(2));

-- Location: LCFF_X36_Y28_N11
\inst2|sixteenthCLKCount[1]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ALT_INV_clock~clkctrl_outclk\,
	datain => \inst2|sixteenthCLKCount[1]~26_combout\,
	sclr => \inst2|LessThan0~6_combout\,
	ena => \ALT_INV_reset~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst2|sixteenthCLKCount\(1));

-- Location: LCCOMB_X36_Y28_N10
\inst2|sixteenthCLKCount[1]~26\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst2|sixteenthCLKCount[1]~26_combout\ = (\inst2|sixteenthCLKCount\(1) & (!\inst2|sixteenthCLKCount[0]~25\)) # (!\inst2|sixteenthCLKCount\(1) & ((\inst2|sixteenthCLKCount[0]~25\) # (GND)))
-- \inst2|sixteenthCLKCount[1]~27\ = CARRY((!\inst2|sixteenthCLKCount[0]~25\) # (!\inst2|sixteenthCLKCount\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|sixteenthCLKCount\(1),
	datad => VCC,
	cin => \inst2|sixteenthCLKCount[0]~25\,
	combout => \inst2|sixteenthCLKCount[1]~26_combout\,
	cout => \inst2|sixteenthCLKCount[1]~27\);

-- Location: LCCOMB_X36_Y28_N12
\inst2|sixteenthCLKCount[2]~28\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst2|sixteenthCLKCount[2]~28_combout\ = (\inst2|sixteenthCLKCount\(2) & (\inst2|sixteenthCLKCount[1]~27\ $ (GND))) # (!\inst2|sixteenthCLKCount\(2) & (!\inst2|sixteenthCLKCount[1]~27\ & VCC))
-- \inst2|sixteenthCLKCount[2]~29\ = CARRY((\inst2|sixteenthCLKCount\(2) & !\inst2|sixteenthCLKCount[1]~27\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|sixteenthCLKCount\(2),
	datad => VCC,
	cin => \inst2|sixteenthCLKCount[1]~27\,
	combout => \inst2|sixteenthCLKCount[2]~28_combout\,
	cout => \inst2|sixteenthCLKCount[2]~29\);

-- Location: LCCOMB_X36_Y28_N16
\inst2|sixteenthCLKCount[4]~32\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst2|sixteenthCLKCount[4]~32_combout\ = (\inst2|sixteenthCLKCount\(4) & (\inst2|sixteenthCLKCount[3]~31\ $ (GND))) # (!\inst2|sixteenthCLKCount\(4) & (!\inst2|sixteenthCLKCount[3]~31\ & VCC))
-- \inst2|sixteenthCLKCount[4]~33\ = CARRY((\inst2|sixteenthCLKCount\(4) & !\inst2|sixteenthCLKCount[3]~31\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|sixteenthCLKCount\(4),
	datad => VCC,
	cin => \inst2|sixteenthCLKCount[3]~31\,
	combout => \inst2|sixteenthCLKCount[4]~32_combout\,
	cout => \inst2|sixteenthCLKCount[4]~33\);

-- Location: LCCOMB_X36_Y27_N4
\inst2|sixteenthCLKCount[14]~52\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst2|sixteenthCLKCount[14]~52_combout\ = (\inst2|sixteenthCLKCount\(14) & (\inst2|sixteenthCLKCount[13]~51\ $ (GND))) # (!\inst2|sixteenthCLKCount\(14) & (!\inst2|sixteenthCLKCount[13]~51\ & VCC))
-- \inst2|sixteenthCLKCount[14]~53\ = CARRY((\inst2|sixteenthCLKCount\(14) & !\inst2|sixteenthCLKCount[13]~51\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|sixteenthCLKCount\(14),
	datad => VCC,
	cin => \inst2|sixteenthCLKCount[13]~51\,
	combout => \inst2|sixteenthCLKCount[14]~52_combout\,
	cout => \inst2|sixteenthCLKCount[14]~53\);

-- Location: LCCOMB_X36_Y27_N10
\inst2|sixteenthCLKCount[17]~58\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst2|sixteenthCLKCount[17]~58_combout\ = (\inst2|sixteenthCLKCount\(17) & (!\inst2|sixteenthCLKCount[16]~57\)) # (!\inst2|sixteenthCLKCount\(17) & ((\inst2|sixteenthCLKCount[16]~57\) # (GND)))
-- \inst2|sixteenthCLKCount[17]~59\ = CARRY((!\inst2|sixteenthCLKCount[16]~57\) # (!\inst2|sixteenthCLKCount\(17)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|sixteenthCLKCount\(17),
	datad => VCC,
	cin => \inst2|sixteenthCLKCount[16]~57\,
	combout => \inst2|sixteenthCLKCount[17]~58_combout\,
	cout => \inst2|sixteenthCLKCount[17]~59\);

-- Location: LCCOMB_X36_Y27_N20
\inst2|sixteenthCLKCount[22]~68\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst2|sixteenthCLKCount[22]~68_combout\ = (\inst2|sixteenthCLKCount\(22) & (\inst2|sixteenthCLKCount[21]~67\ $ (GND))) # (!\inst2|sixteenthCLKCount\(22) & (!\inst2|sixteenthCLKCount[21]~67\ & VCC))
-- \inst2|sixteenthCLKCount[22]~69\ = CARRY((\inst2|sixteenthCLKCount\(22) & !\inst2|sixteenthCLKCount[21]~67\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|sixteenthCLKCount\(22),
	datad => VCC,
	cin => \inst2|sixteenthCLKCount[21]~67\,
	combout => \inst2|sixteenthCLKCount[22]~68_combout\,
	cout => \inst2|sixteenthCLKCount[22]~69\);

-- Location: LCFF_X1_Y12_N17
\SWITCHS|lpm_ff_component|dffs[3]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ALT_INV_clock~clkctrl_outclk\,
	sdata => \SW~combout\(3),
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \SWITCHS|lpm_ff_component|dffs\(3));

-- Location: LCFF_X43_Y27_N17
\inst2|state.PLAY12SIXTEENTH\ : cycloneii_lcell_ff
PORT MAP (
	clk => \inst2|sixteenthCLK~clkctrl_outclk\,
	datain => \inst2|state~43_combout\,
	aclr => \reset~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst2|state.PLAY12SIXTEENTH~regout\);

-- Location: LCFF_X44_Y27_N25
\inst2|state.PLAY11SIXTEENTH\ : cycloneii_lcell_ff
PORT MAP (
	clk => \inst2|sixteenthCLK~clkctrl_outclk\,
	datain => \inst2|state~44_combout\,
	aclr => \reset~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst2|state.PLAY11SIXTEENTH~regout\);

-- Location: LCCOMB_X44_Y27_N6
\inst2|Selector16~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst2|Selector16~2_combout\ = (\inst2|state.PLAY11SIXTEENTH~regout\ & ((\inst2|currMeasure\(5)) # ((\inst2|currMeasure\(4) & \inst2|state.PLAY12SIXTEENTH~regout\)))) # (!\inst2|state.PLAY11SIXTEENTH~regout\ & (\inst2|currMeasure\(4) & 
-- ((\inst2|state.PLAY12SIXTEENTH~regout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|state.PLAY11SIXTEENTH~regout\,
	datab => \inst2|currMeasure\(4),
	datac => \inst2|currMeasure\(5),
	datad => \inst2|state.PLAY12SIXTEENTH~regout\,
	combout => \inst2|Selector16~2_combout\);

-- Location: LCFF_X44_Y27_N17
\inst2|state.PLAY9SIXTEENTH\ : cycloneii_lcell_ff
PORT MAP (
	clk => \inst2|sixteenthCLK~clkctrl_outclk\,
	datain => \inst2|state~46_combout\,
	aclr => \reset~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst2|state.PLAY9SIXTEENTH~regout\);

-- Location: LCFF_X46_Y27_N11
\inst2|state.PLAY7SIXTEENTH\ : cycloneii_lcell_ff
PORT MAP (
	clk => \inst2|sixteenthCLK~clkctrl_outclk\,
	datain => \inst2|state~48_combout\,
	aclr => \reset~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst2|state.PLAY7SIXTEENTH~regout\);

-- Location: LCCOMB_X43_Y27_N30
\inst2|Selector16~8\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst2|Selector16~8_combout\ = (\inst2|state.PLAY3SIXTEENTH~regout\ & ((\inst2|currMeasure\(13)) # ((\inst2|state.PLAY4SIXTEENTH~regout\ & \inst2|currMeasure\(12))))) # (!\inst2|state.PLAY3SIXTEENTH~regout\ & (\inst2|state.PLAY4SIXTEENTH~regout\ & 
-- (\inst2|currMeasure\(12))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|state.PLAY3SIXTEENTH~regout\,
	datab => \inst2|state.PLAY4SIXTEENTH~regout\,
	datac => \inst2|currMeasure\(12),
	datad => \inst2|currMeasure\(13),
	combout => \inst2|Selector16~8_combout\);

-- Location: LCFF_X46_Y29_N17
\inst4|dataa[8]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ALT_INV_clock~clkctrl_outclk\,
	sdata => \inst4|countersim|Mux24~1_combout\,
	aclr => \inst4|process_0~0_combout\,
	sload => VCC,
	ena => \inst4|ti0~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst4|dataa\(8));

-- Location: LCFF_X47_Y30_N13
\inst4|dataa[17]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ALT_INV_clock~clkctrl_outclk\,
	sdata => \inst4|countersim|Mux15~1_combout\,
	aclr => \inst4|process_0~0_combout\,
	sload => VCC,
	ena => \inst4|ti0~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst4|dataa\(17));

-- Location: LCFF_X45_Y29_N5
\inst5|output[14]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ALT_INV_clock~clkctrl_outclk\,
	sdata => \mem_data~combout\(14),
	aclr => \reset~clkctrl_outclk\,
	sload => VCC,
	ena => \inst17~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst5|output\(14));

-- Location: LCCOMB_X44_Y29_N24
\inst4|LowClcok|lab7_task2Sim|sim30|Cout~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst4|LowClcok|lab7_task2Sim|sim30|Cout~1_combout\ = (\inst5|output\(14)) # ((\inst4|counter_0_sel\(1)) # (\inst4|dataa\(30) $ (!\inst4|HighClock|lab7_task2Sim|sim29|Cout~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111011111011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst5|output\(14),
	datab => \inst4|dataa\(30),
	datac => \inst4|counter_0_sel\(1),
	datad => \inst4|HighClock|lab7_task2Sim|sim29|Cout~0_combout\,
	combout => \inst4|LowClcok|lab7_task2Sim|sim30|Cout~1_combout\);

-- Location: LCFF_X45_Y29_N27
\inst5|output[11]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ALT_INV_clock~clkctrl_outclk\,
	sdata => \mem_data~combout\(11),
	aclr => \reset~clkctrl_outclk\,
	sload => VCC,
	ena => \inst17~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst5|output\(11));

-- Location: LCCOMB_X44_Y29_N10
\inst4|LowClcok|lab7_task2Sim|sim27|Cout~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst4|LowClcok|lab7_task2Sim|sim27|Cout~0_combout\ = (\inst5|output\(11) & ((\inst4|counter_0_sel\(1)) # (\inst4|dataa\(27) $ (!\inst4|HighClock|lab7_task2Sim|sim26|Cout~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010100010100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst5|output\(11),
	datab => \inst4|dataa\(27),
	datac => \inst4|counter_0_sel\(1),
	datad => \inst4|HighClock|lab7_task2Sim|sim26|Cout~0_combout\,
	combout => \inst4|LowClcok|lab7_task2Sim|sim27|Cout~0_combout\);

-- Location: LCFF_X44_Y29_N29
\inst5|output[8]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ALT_INV_clock~clkctrl_outclk\,
	datain => \inst5|output[8]~feeder_combout\,
	aclr => \reset~clkctrl_outclk\,
	ena => \inst17~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst5|output\(8));

-- Location: LCCOMB_X44_Y29_N14
\inst4|LowClcok|lab7_task2Sim|sim24|Cout~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst4|LowClcok|lab7_task2Sim|sim24|Cout~0_combout\ = (\inst5|output\(8) & ((\inst4|counter_0_sel\(1)) # (\inst4|dataa\(24) $ (!\inst4|HighClock|lab7_task2Sim|sim23|Cout~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100100011000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|dataa\(24),
	datab => \inst5|output\(8),
	datac => \inst4|counter_0_sel\(1),
	datad => \inst4|HighClock|lab7_task2Sim|sim23|Cout~0_combout\,
	combout => \inst4|LowClcok|lab7_task2Sim|sim24|Cout~0_combout\);

-- Location: LCCOMB_X44_Y29_N8
\inst4|LowClcok|lab7_task2Sim|sim24|Cout~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst4|LowClcok|lab7_task2Sim|sim24|Cout~1_combout\ = (\inst5|output\(8)) # ((\inst4|counter_0_sel\(1)) # (\inst4|dataa\(24) $ (!\inst4|HighClock|lab7_task2Sim|sim23|Cout~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111011111101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|dataa\(24),
	datab => \inst5|output\(8),
	datac => \inst4|counter_0_sel\(1),
	datad => \inst4|HighClock|lab7_task2Sim|sim23|Cout~0_combout\,
	combout => \inst4|LowClcok|lab7_task2Sim|sim24|Cout~1_combout\);

-- Location: LCFF_X46_Y30_N5
\inst9|output[15]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ALT_INV_clock~clkctrl_outclk\,
	sdata => \mem_data~combout\(15),
	aclr => \reset~clkctrl_outclk\,
	sload => VCC,
	ena => \inst18~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst9|output\(15));

-- Location: LCCOMB_X47_Y30_N22
\inst4|LowClcok|lab7_task2Sim|sim15|Cout~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst4|LowClcok|lab7_task2Sim|sim15|Cout~0_combout\ = (\inst9|output\(15) & ((\inst4|counter_0_sel\(1)) # (\inst4|dataa\(15) $ (!\inst4|HighClock|lab7_task2Sim|sim14|Cout~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100100011000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|dataa\(15),
	datab => \inst9|output\(15),
	datac => \inst4|counter_0_sel\(1),
	datad => \inst4|HighClock|lab7_task2Sim|sim14|Cout~0_combout\,
	combout => \inst4|LowClcok|lab7_task2Sim|sim15|Cout~0_combout\);

-- Location: LCCOMB_X46_Y30_N4
\inst4|LowClcok|lab7_task2Sim|sim15|Cout~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst4|LowClcok|lab7_task2Sim|sim15|Cout~1_combout\ = (\inst4|counter_0_sel\(1)) # ((\inst9|output\(15)) # (\inst4|dataa\(15) $ (!\inst4|HighClock|lab7_task2Sim|sim14|Cout~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111011111101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|dataa\(15),
	datab => \inst4|counter_0_sel\(1),
	datac => \inst9|output\(15),
	datad => \inst4|HighClock|lab7_task2Sim|sim14|Cout~0_combout\,
	combout => \inst4|LowClcok|lab7_task2Sim|sim15|Cout~1_combout\);

-- Location: LCFF_X46_Y30_N15
\inst9|output[12]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ALT_INV_clock~clkctrl_outclk\,
	sdata => \mem_data~combout\(12),
	aclr => \reset~clkctrl_outclk\,
	sload => VCC,
	ena => \inst18~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst9|output\(12));

-- Location: LCCOMB_X45_Y30_N6
\inst4|LowClcok|lab7_task2Sim|sim12|Cout~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst4|LowClcok|lab7_task2Sim|sim12|Cout~0_combout\ = (\inst9|output\(12) & ((\inst4|counter_0_sel\(1)) # (\inst4|dataa\(12) $ (!\inst4|HighClock|lab7_task2Sim|sim11|Cout~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000011010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|dataa\(12),
	datab => \inst4|counter_0_sel\(1),
	datac => \inst9|output\(12),
	datad => \inst4|HighClock|lab7_task2Sim|sim11|Cout~0_combout\,
	combout => \inst4|LowClcok|lab7_task2Sim|sim12|Cout~0_combout\);

-- Location: LCCOMB_X46_Y30_N14
\inst4|LowClcok|lab7_task2Sim|sim12|Cout~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst4|LowClcok|lab7_task2Sim|sim12|Cout~1_combout\ = (\inst4|counter_0_sel\(1)) # ((\inst9|output\(12)) # (\inst4|dataa\(12) $ (!\inst4|HighClock|lab7_task2Sim|sim11|Cout~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111011111101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|dataa\(12),
	datab => \inst4|counter_0_sel\(1),
	datac => \inst9|output\(12),
	datad => \inst4|HighClock|lab7_task2Sim|sim11|Cout~0_combout\,
	combout => \inst4|LowClcok|lab7_task2Sim|sim12|Cout~1_combout\);

-- Location: LCCOMB_X46_Y29_N20
\inst4|LowClcok|lab7_task2Sim|sim9|Cout~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst4|LowClcok|lab7_task2Sim|sim9|Cout~1_combout\ = (\inst4|counter_0_sel\(1)) # ((\inst9|output\(9)) # (\inst4|dataa\(9) $ (!\inst4|HighClock|lab7_task2Sim|sim8|Cout~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111011111011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|counter_0_sel\(1),
	datab => \inst4|dataa\(9),
	datac => \inst9|output\(9),
	datad => \inst4|HighClock|lab7_task2Sim|sim8|Cout~0_combout\,
	combout => \inst4|LowClcok|lab7_task2Sim|sim9|Cout~1_combout\);

-- Location: LCFF_X47_Y29_N27
\inst9|output[0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ALT_INV_clock~clkctrl_outclk\,
	sdata => \mem_data~combout\(0),
	aclr => \reset~clkctrl_outclk\,
	sload => VCC,
	ena => \inst18~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst9|output\(0));

-- Location: LCCOMB_X47_Y30_N16
\inst4|countersim|Mux15~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst4|countersim|Mux15~1_combout\ = (!\inst4|counter_0_sel\(1) & (\inst4|dataa\(17) $ (\inst4|HighClock|lab7_task2Sim|sim16|Cout~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010100001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|dataa\(17),
	datac => \inst4|counter_0_sel\(1),
	datad => \inst4|HighClock|lab7_task2Sim|sim16|Cout~0_combout\,
	combout => \inst4|countersim|Mux15~1_combout\);

-- Location: LCCOMB_X45_Y30_N4
\inst4|LowClcok|lab7_task2Sim|sim22|Cout~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst4|LowClcok|lab7_task2Sim|sim22|Cout~1_combout\ = (!\inst5|output\(5) & (\inst4|dataa\(21) $ (\inst4|HighClock|lab7_task2Sim|sim20|Cout~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000101000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst5|output\(5),
	datab => \inst4|dataa\(21),
	datad => \inst4|HighClock|lab7_task2Sim|sim20|Cout~0_combout\,
	combout => \inst4|LowClcok|lab7_task2Sim|sim22|Cout~1_combout\);

-- Location: LCCOMB_X45_Y30_N14
\inst4|LowClcok|lab7_task2Sim|sim22|Cout~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst4|LowClcok|lab7_task2Sim|sim22|Cout~2_combout\ = (\inst5|output\(6) & ((\inst4|counter_0_sel\(1)) # ((!\inst4|countersim|Mux10~1_combout\) # (!\inst4|LowClcok|lab7_task2Sim|sim22|Cout~1_combout\)))) # (!\inst5|output\(6) & 
-- (!\inst4|countersim|Mux10~1_combout\ & ((\inst4|counter_0_sel\(1)) # (!\inst4|LowClcok|lab7_task2Sim|sim22|Cout~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000110011101111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|counter_0_sel\(1),
	datab => \inst5|output\(6),
	datac => \inst4|LowClcok|lab7_task2Sim|sim22|Cout~1_combout\,
	datad => \inst4|countersim|Mux10~1_combout\,
	combout => \inst4|LowClcok|lab7_task2Sim|sim22|Cout~2_combout\);

-- Location: LCCOMB_X45_Y30_N16
\inst4|LowClcok|lab7_task2Sim|sim22|Cout~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst4|LowClcok|lab7_task2Sim|sim22|Cout~4_combout\ = (\inst4|LowClcok|lab7_task2Sim|sim22|Cout~2_combout\ & ((\inst5|output\(4)) # ((\inst4|LowClcok|lab7_task2Sim|sim22|Cout~3_combout\) # (!\inst4|countersim|Mux12~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst5|output\(4),
	datab => \inst4|countersim|Mux12~1_combout\,
	datac => \inst4|LowClcok|lab7_task2Sim|sim22|Cout~2_combout\,
	datad => \inst4|LowClcok|lab7_task2Sim|sim22|Cout~3_combout\,
	combout => \inst4|LowClcok|lab7_task2Sim|sim22|Cout~4_combout\);

-- Location: LCFF_X43_Y27_N9
\inst2|next_state.PLAY12SIXTEENTH\ : cycloneii_lcell_ff
PORT MAP (
	clk => \inst2|sixteenthCLK~clkctrl_outclk\,
	datain => \inst2|Selector31~0_combout\,
	ena => \ALT_INV_reset~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst2|next_state.PLAY12SIXTEENTH~regout\);

-- Location: LCCOMB_X43_Y27_N16
\inst2|state~43\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst2|state~43_combout\ = (\inst2|next_state.PLAY12SIXTEENTH~regout\ & \inst2|state.RESETSTICKS~regout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst2|next_state.PLAY12SIXTEENTH~regout\,
	datad => \inst2|state.RESETSTICKS~regout\,
	combout => \inst2|state~43_combout\);

-- Location: LCFF_X43_Y27_N19
\inst2|next_state.PLAY11SIXTEENTH\ : cycloneii_lcell_ff
PORT MAP (
	clk => \inst2|sixteenthCLK~clkctrl_outclk\,
	datain => \inst2|Selector30~0_combout\,
	ena => \ALT_INV_reset~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst2|next_state.PLAY11SIXTEENTH~regout\);

-- Location: LCCOMB_X44_Y27_N24
\inst2|state~44\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst2|state~44_combout\ = (\inst2|state.RESETSTICKS~regout\ & \inst2|next_state.PLAY11SIXTEENTH~regout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst2|state.RESETSTICKS~regout\,
	datad => \inst2|next_state.PLAY11SIXTEENTH~regout\,
	combout => \inst2|state~44_combout\);

-- Location: LCFF_X43_Y27_N3
\inst2|next_state.PLAY9SIXTEENTH\ : cycloneii_lcell_ff
PORT MAP (
	clk => \inst2|sixteenthCLK~clkctrl_outclk\,
	datain => \inst2|Selector28~0_combout\,
	ena => \ALT_INV_reset~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst2|next_state.PLAY9SIXTEENTH~regout\);

-- Location: LCCOMB_X44_Y27_N16
\inst2|state~46\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst2|state~46_combout\ = (\inst2|state.RESETSTICKS~regout\ & \inst2|next_state.PLAY9SIXTEENTH~regout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst2|state.RESETSTICKS~regout\,
	datad => \inst2|next_state.PLAY9SIXTEENTH~regout\,
	combout => \inst2|state~46_combout\);

-- Location: LCFF_X46_Y27_N17
\inst2|next_state.PLAY7SIXTEENTH\ : cycloneii_lcell_ff
PORT MAP (
	clk => \inst2|sixteenthCLK~clkctrl_outclk\,
	datain => \inst2|Selector26~0_combout\,
	ena => \ALT_INV_reset~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst2|next_state.PLAY7SIXTEENTH~regout\);

-- Location: LCCOMB_X46_Y27_N10
\inst2|state~48\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst2|state~48_combout\ = (\inst2|next_state.PLAY7SIXTEENTH~regout\ & \inst2|state.RESETSTICKS~regout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|next_state.PLAY7SIXTEENTH~regout\,
	datac => \inst2|state.RESETSTICKS~regout\,
	combout => \inst2|state~48_combout\);

-- Location: LCCOMB_X30_Y32_N20
inst14 : cycloneii_lcell_comb
-- Equation(s):
-- \inst14~combout\ = LCELL((\inst18~0_combout\ & (!\mem_addr~combout\(1) & (!\mem_addr~combout\(0) & !\clock~combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst18~0_combout\,
	datab => \mem_addr~combout\(1),
	datac => \mem_addr~combout\(0),
	datad => \clock~combout\,
	combout => \inst14~combout\);

-- Location: LCCOMB_X43_Y27_N8
\inst2|Selector31~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst2|Selector31~0_combout\ = (\inst2|state.PLAY11SIXTEENTH~regout\) # ((\inst2|next_state.PLAY12SIXTEENTH~regout\ & !\inst2|WideOr21~1_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst2|state.PLAY11SIXTEENTH~regout\,
	datac => \inst2|next_state.PLAY12SIXTEENTH~regout\,
	datad => \inst2|WideOr21~1_combout\,
	combout => \inst2|Selector31~0_combout\);

-- Location: LCCOMB_X43_Y27_N18
\inst2|Selector30~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst2|Selector30~0_combout\ = (\inst2|state.PLAY10SIXTEENTH~regout\) # ((\inst2|next_state.PLAY11SIXTEENTH~regout\ & !\inst2|WideOr21~1_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst2|state.PLAY10SIXTEENTH~regout\,
	datac => \inst2|next_state.PLAY11SIXTEENTH~regout\,
	datad => \inst2|WideOr21~1_combout\,
	combout => \inst2|Selector30~0_combout\);

-- Location: LCCOMB_X43_Y27_N2
\inst2|Selector28~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst2|Selector28~0_combout\ = (\inst2|state.PLAY8SIXTEENTH~regout\) # ((\inst2|next_state.PLAY9SIXTEENTH~regout\ & !\inst2|WideOr21~1_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst2|state.PLAY8SIXTEENTH~regout\,
	datac => \inst2|next_state.PLAY9SIXTEENTH~regout\,
	datad => \inst2|WideOr21~1_combout\,
	combout => \inst2|Selector28~0_combout\);

-- Location: LCCOMB_X46_Y27_N16
\inst2|Selector26~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst2|Selector26~0_combout\ = (\inst2|state.PLAY6SIXTEENTH~regout\) # ((\inst2|next_state.PLAY7SIXTEENTH~regout\ & !\inst2|WideOr21~1_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst2|state.PLAY6SIXTEENTH~regout\,
	datac => \inst2|next_state.PLAY7SIXTEENTH~regout\,
	datad => \inst2|WideOr21~1_combout\,
	combout => \inst2|Selector26~0_combout\);

-- Location: PIN_V1,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\SW[3]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_SW(3),
	combout => \SW~combout\(3));

-- Location: CLKCTRL_G9
\inst14~clkctrl\ : cycloneii_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \inst14~clkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \inst14~clkctrl_outclk\);

-- Location: LCCOMB_X44_Y29_N28
\inst5|output[8]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst5|output[8]~feeder_combout\ = \mem_data~combout\(8)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \mem_data~combout\(8),
	combout => \inst5|output[8]~feeder_combout\);

-- Location: PIN_D12,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\reset~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_reset,
	combout => \reset~combout\);

-- Location: LCCOMB_X36_Y28_N8
\inst2|sixteenthCLKCount[0]~24\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst2|sixteenthCLKCount[0]~24_combout\ = \inst2|sixteenthCLKCount\(0) $ (VCC)
-- \inst2|sixteenthCLKCount[0]~25\ = CARRY(\inst2|sixteenthCLKCount\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst2|sixteenthCLKCount\(0),
	datad => VCC,
	combout => \inst2|sixteenthCLKCount[0]~24_combout\,
	cout => \inst2|sixteenthCLKCount[0]~25\);

-- Location: LCFF_X36_Y28_N9
\inst2|sixteenthCLKCount[0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ALT_INV_clock~clkctrl_outclk\,
	datain => \inst2|sixteenthCLKCount[0]~24_combout\,
	sclr => \inst2|LessThan0~6_combout\,
	ena => \ALT_INV_reset~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst2|sixteenthCLKCount\(0));

-- Location: LCCOMB_X36_Y28_N14
\inst2|sixteenthCLKCount[3]~30\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst2|sixteenthCLKCount[3]~30_combout\ = (\inst2|sixteenthCLKCount\(3) & (!\inst2|sixteenthCLKCount[2]~29\)) # (!\inst2|sixteenthCLKCount\(3) & ((\inst2|sixteenthCLKCount[2]~29\) # (GND)))
-- \inst2|sixteenthCLKCount[3]~31\ = CARRY((!\inst2|sixteenthCLKCount[2]~29\) # (!\inst2|sixteenthCLKCount\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst2|sixteenthCLKCount\(3),
	datad => VCC,
	cin => \inst2|sixteenthCLKCount[2]~29\,
	combout => \inst2|sixteenthCLKCount[3]~30_combout\,
	cout => \inst2|sixteenthCLKCount[3]~31\);

-- Location: LCFF_X36_Y28_N15
\inst2|sixteenthCLKCount[3]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ALT_INV_clock~clkctrl_outclk\,
	datain => \inst2|sixteenthCLKCount[3]~30_combout\,
	sclr => \inst2|LessThan0~6_combout\,
	ena => \ALT_INV_reset~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst2|sixteenthCLKCount\(3));

-- Location: LCCOMB_X36_Y28_N18
\inst2|sixteenthCLKCount[5]~34\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst2|sixteenthCLKCount[5]~34_combout\ = (\inst2|sixteenthCLKCount\(5) & (!\inst2|sixteenthCLKCount[4]~33\)) # (!\inst2|sixteenthCLKCount\(5) & ((\inst2|sixteenthCLKCount[4]~33\) # (GND)))
-- \inst2|sixteenthCLKCount[5]~35\ = CARRY((!\inst2|sixteenthCLKCount[4]~33\) # (!\inst2|sixteenthCLKCount\(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst2|sixteenthCLKCount\(5),
	datad => VCC,
	cin => \inst2|sixteenthCLKCount[4]~33\,
	combout => \inst2|sixteenthCLKCount[5]~34_combout\,
	cout => \inst2|sixteenthCLKCount[5]~35\);

-- Location: LCFF_X36_Y28_N19
\inst2|sixteenthCLKCount[5]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ALT_INV_clock~clkctrl_outclk\,
	datain => \inst2|sixteenthCLKCount[5]~34_combout\,
	sclr => \inst2|LessThan0~6_combout\,
	ena => \ALT_INV_reset~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst2|sixteenthCLKCount\(5));

-- Location: LCCOMB_X36_Y28_N20
\inst2|sixteenthCLKCount[6]~36\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst2|sixteenthCLKCount[6]~36_combout\ = (\inst2|sixteenthCLKCount\(6) & (\inst2|sixteenthCLKCount[5]~35\ $ (GND))) # (!\inst2|sixteenthCLKCount\(6) & (!\inst2|sixteenthCLKCount[5]~35\ & VCC))
-- \inst2|sixteenthCLKCount[6]~37\ = CARRY((\inst2|sixteenthCLKCount\(6) & !\inst2|sixteenthCLKCount[5]~35\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|sixteenthCLKCount\(6),
	datad => VCC,
	cin => \inst2|sixteenthCLKCount[5]~35\,
	combout => \inst2|sixteenthCLKCount[6]~36_combout\,
	cout => \inst2|sixteenthCLKCount[6]~37\);

-- Location: LCCOMB_X36_Y28_N22
\inst2|sixteenthCLKCount[7]~38\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst2|sixteenthCLKCount[7]~38_combout\ = (\inst2|sixteenthCLKCount\(7) & (!\inst2|sixteenthCLKCount[6]~37\)) # (!\inst2|sixteenthCLKCount\(7) & ((\inst2|sixteenthCLKCount[6]~37\) # (GND)))
-- \inst2|sixteenthCLKCount[7]~39\ = CARRY((!\inst2|sixteenthCLKCount[6]~37\) # (!\inst2|sixteenthCLKCount\(7)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst2|sixteenthCLKCount\(7),
	datad => VCC,
	cin => \inst2|sixteenthCLKCount[6]~37\,
	combout => \inst2|sixteenthCLKCount[7]~38_combout\,
	cout => \inst2|sixteenthCLKCount[7]~39\);

-- Location: LCFF_X36_Y28_N23
\inst2|sixteenthCLKCount[7]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ALT_INV_clock~clkctrl_outclk\,
	datain => \inst2|sixteenthCLKCount[7]~38_combout\,
	sclr => \inst2|LessThan0~6_combout\,
	ena => \ALT_INV_reset~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst2|sixteenthCLKCount\(7));

-- Location: LCCOMB_X36_Y28_N24
\inst2|sixteenthCLKCount[8]~40\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst2|sixteenthCLKCount[8]~40_combout\ = (\inst2|sixteenthCLKCount\(8) & (\inst2|sixteenthCLKCount[7]~39\ $ (GND))) # (!\inst2|sixteenthCLKCount\(8) & (!\inst2|sixteenthCLKCount[7]~39\ & VCC))
-- \inst2|sixteenthCLKCount[8]~41\ = CARRY((\inst2|sixteenthCLKCount\(8) & !\inst2|sixteenthCLKCount[7]~39\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|sixteenthCLKCount\(8),
	datad => VCC,
	cin => \inst2|sixteenthCLKCount[7]~39\,
	combout => \inst2|sixteenthCLKCount[8]~40_combout\,
	cout => \inst2|sixteenthCLKCount[8]~41\);

-- Location: LCCOMB_X36_Y28_N26
\inst2|sixteenthCLKCount[9]~42\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst2|sixteenthCLKCount[9]~42_combout\ = (\inst2|sixteenthCLKCount\(9) & (!\inst2|sixteenthCLKCount[8]~41\)) # (!\inst2|sixteenthCLKCount\(9) & ((\inst2|sixteenthCLKCount[8]~41\) # (GND)))
-- \inst2|sixteenthCLKCount[9]~43\ = CARRY((!\inst2|sixteenthCLKCount[8]~41\) # (!\inst2|sixteenthCLKCount\(9)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst2|sixteenthCLKCount\(9),
	datad => VCC,
	cin => \inst2|sixteenthCLKCount[8]~41\,
	combout => \inst2|sixteenthCLKCount[9]~42_combout\,
	cout => \inst2|sixteenthCLKCount[9]~43\);

-- Location: LCFF_X36_Y28_N27
\inst2|sixteenthCLKCount[9]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ALT_INV_clock~clkctrl_outclk\,
	datain => \inst2|sixteenthCLKCount[9]~42_combout\,
	sclr => \inst2|LessThan0~6_combout\,
	ena => \ALT_INV_reset~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst2|sixteenthCLKCount\(9));

-- Location: LCCOMB_X36_Y28_N28
\inst2|sixteenthCLKCount[10]~44\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst2|sixteenthCLKCount[10]~44_combout\ = (\inst2|sixteenthCLKCount\(10) & (\inst2|sixteenthCLKCount[9]~43\ $ (GND))) # (!\inst2|sixteenthCLKCount\(10) & (!\inst2|sixteenthCLKCount[9]~43\ & VCC))
-- \inst2|sixteenthCLKCount[10]~45\ = CARRY((\inst2|sixteenthCLKCount\(10) & !\inst2|sixteenthCLKCount[9]~43\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst2|sixteenthCLKCount\(10),
	datad => VCC,
	cin => \inst2|sixteenthCLKCount[9]~43\,
	combout => \inst2|sixteenthCLKCount[10]~44_combout\,
	cout => \inst2|sixteenthCLKCount[10]~45\);

-- Location: LCFF_X36_Y28_N29
\inst2|sixteenthCLKCount[10]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ALT_INV_clock~clkctrl_outclk\,
	datain => \inst2|sixteenthCLKCount[10]~44_combout\,
	sclr => \inst2|LessThan0~6_combout\,
	ena => \ALT_INV_reset~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst2|sixteenthCLKCount\(10));

-- Location: LCCOMB_X36_Y28_N30
\inst2|sixteenthCLKCount[11]~46\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst2|sixteenthCLKCount[11]~46_combout\ = (\inst2|sixteenthCLKCount\(11) & (!\inst2|sixteenthCLKCount[10]~45\)) # (!\inst2|sixteenthCLKCount\(11) & ((\inst2|sixteenthCLKCount[10]~45\) # (GND)))
-- \inst2|sixteenthCLKCount[11]~47\ = CARRY((!\inst2|sixteenthCLKCount[10]~45\) # (!\inst2|sixteenthCLKCount\(11)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst2|sixteenthCLKCount\(11),
	datad => VCC,
	cin => \inst2|sixteenthCLKCount[10]~45\,
	combout => \inst2|sixteenthCLKCount[11]~46_combout\,
	cout => \inst2|sixteenthCLKCount[11]~47\);

-- Location: LCFF_X36_Y28_N31
\inst2|sixteenthCLKCount[11]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ALT_INV_clock~clkctrl_outclk\,
	datain => \inst2|sixteenthCLKCount[11]~46_combout\,
	sclr => \inst2|LessThan0~6_combout\,
	ena => \ALT_INV_reset~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst2|sixteenthCLKCount\(11));

-- Location: LCCOMB_X36_Y27_N0
\inst2|sixteenthCLKCount[12]~48\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst2|sixteenthCLKCount[12]~48_combout\ = (\inst2|sixteenthCLKCount\(12) & (\inst2|sixteenthCLKCount[11]~47\ $ (GND))) # (!\inst2|sixteenthCLKCount\(12) & (!\inst2|sixteenthCLKCount[11]~47\ & VCC))
-- \inst2|sixteenthCLKCount[12]~49\ = CARRY((\inst2|sixteenthCLKCount\(12) & !\inst2|sixteenthCLKCount[11]~47\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst2|sixteenthCLKCount\(12),
	datad => VCC,
	cin => \inst2|sixteenthCLKCount[11]~47\,
	combout => \inst2|sixteenthCLKCount[12]~48_combout\,
	cout => \inst2|sixteenthCLKCount[12]~49\);

-- Location: LCFF_X35_Y28_N21
\inst2|sixteenthCLKCount[12]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ALT_INV_clock~clkctrl_outclk\,
	sdata => \inst2|sixteenthCLKCount[12]~48_combout\,
	sclr => \inst2|LessThan0~6_combout\,
	sload => VCC,
	ena => \ALT_INV_reset~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst2|sixteenthCLKCount\(12));

-- Location: LCCOMB_X36_Y27_N2
\inst2|sixteenthCLKCount[13]~50\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst2|sixteenthCLKCount[13]~50_combout\ = (\inst2|sixteenthCLKCount\(13) & (!\inst2|sixteenthCLKCount[12]~49\)) # (!\inst2|sixteenthCLKCount\(13) & ((\inst2|sixteenthCLKCount[12]~49\) # (GND)))
-- \inst2|sixteenthCLKCount[13]~51\ = CARRY((!\inst2|sixteenthCLKCount[12]~49\) # (!\inst2|sixteenthCLKCount\(13)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst2|sixteenthCLKCount\(13),
	datad => VCC,
	cin => \inst2|sixteenthCLKCount[12]~49\,
	combout => \inst2|sixteenthCLKCount[13]~50_combout\,
	cout => \inst2|sixteenthCLKCount[13]~51\);

-- Location: LCFF_X35_Y28_N23
\inst2|sixteenthCLKCount[13]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ALT_INV_clock~clkctrl_outclk\,
	sdata => \inst2|sixteenthCLKCount[13]~50_combout\,
	sclr => \inst2|LessThan0~6_combout\,
	sload => VCC,
	ena => \ALT_INV_reset~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst2|sixteenthCLKCount\(13));

-- Location: LCCOMB_X36_Y27_N6
\inst2|sixteenthCLKCount[15]~54\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst2|sixteenthCLKCount[15]~54_combout\ = (\inst2|sixteenthCLKCount\(15) & (!\inst2|sixteenthCLKCount[14]~53\)) # (!\inst2|sixteenthCLKCount\(15) & ((\inst2|sixteenthCLKCount[14]~53\) # (GND)))
-- \inst2|sixteenthCLKCount[15]~55\ = CARRY((!\inst2|sixteenthCLKCount[14]~53\) # (!\inst2|sixteenthCLKCount\(15)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|sixteenthCLKCount\(15),
	datad => VCC,
	cin => \inst2|sixteenthCLKCount[14]~53\,
	combout => \inst2|sixteenthCLKCount[15]~54_combout\,
	cout => \inst2|sixteenthCLKCount[15]~55\);

-- Location: LCCOMB_X36_Y27_N8
\inst2|sixteenthCLKCount[16]~56\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst2|sixteenthCLKCount[16]~56_combout\ = (\inst2|sixteenthCLKCount\(16) & (\inst2|sixteenthCLKCount[15]~55\ $ (GND))) # (!\inst2|sixteenthCLKCount\(16) & (!\inst2|sixteenthCLKCount[15]~55\ & VCC))
-- \inst2|sixteenthCLKCount[16]~57\ = CARRY((\inst2|sixteenthCLKCount\(16) & !\inst2|sixteenthCLKCount[15]~55\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst2|sixteenthCLKCount\(16),
	datad => VCC,
	cin => \inst2|sixteenthCLKCount[15]~55\,
	combout => \inst2|sixteenthCLKCount[16]~56_combout\,
	cout => \inst2|sixteenthCLKCount[16]~57\);

-- Location: LCFF_X36_Y27_N9
\inst2|sixteenthCLKCount[16]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ALT_INV_clock~clkctrl_outclk\,
	datain => \inst2|sixteenthCLKCount[16]~56_combout\,
	sclr => \inst2|LessThan0~6_combout\,
	ena => \ALT_INV_reset~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst2|sixteenthCLKCount\(16));

-- Location: LCCOMB_X36_Y27_N12
\inst2|sixteenthCLKCount[18]~60\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst2|sixteenthCLKCount[18]~60_combout\ = (\inst2|sixteenthCLKCount\(18) & (\inst2|sixteenthCLKCount[17]~59\ $ (GND))) # (!\inst2|sixteenthCLKCount\(18) & (!\inst2|sixteenthCLKCount[17]~59\ & VCC))
-- \inst2|sixteenthCLKCount[18]~61\ = CARRY((\inst2|sixteenthCLKCount\(18) & !\inst2|sixteenthCLKCount[17]~59\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|sixteenthCLKCount\(18),
	datad => VCC,
	cin => \inst2|sixteenthCLKCount[17]~59\,
	combout => \inst2|sixteenthCLKCount[18]~60_combout\,
	cout => \inst2|sixteenthCLKCount[18]~61\);

-- Location: LCCOMB_X36_Y27_N14
\inst2|sixteenthCLKCount[19]~62\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst2|sixteenthCLKCount[19]~62_combout\ = (\inst2|sixteenthCLKCount\(19) & (!\inst2|sixteenthCLKCount[18]~61\)) # (!\inst2|sixteenthCLKCount\(19) & ((\inst2|sixteenthCLKCount[18]~61\) # (GND)))
-- \inst2|sixteenthCLKCount[19]~63\ = CARRY((!\inst2|sixteenthCLKCount[18]~61\) # (!\inst2|sixteenthCLKCount\(19)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst2|sixteenthCLKCount\(19),
	datad => VCC,
	cin => \inst2|sixteenthCLKCount[18]~61\,
	combout => \inst2|sixteenthCLKCount[19]~62_combout\,
	cout => \inst2|sixteenthCLKCount[19]~63\);

-- Location: LCFF_X36_Y27_N15
\inst2|sixteenthCLKCount[19]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ALT_INV_clock~clkctrl_outclk\,
	datain => \inst2|sixteenthCLKCount[19]~62_combout\,
	sclr => \inst2|LessThan0~6_combout\,
	ena => \ALT_INV_reset~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst2|sixteenthCLKCount\(19));

-- Location: LCCOMB_X36_Y27_N16
\inst2|sixteenthCLKCount[20]~64\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst2|sixteenthCLKCount[20]~64_combout\ = (\inst2|sixteenthCLKCount\(20) & (\inst2|sixteenthCLKCount[19]~63\ $ (GND))) # (!\inst2|sixteenthCLKCount\(20) & (!\inst2|sixteenthCLKCount[19]~63\ & VCC))
-- \inst2|sixteenthCLKCount[20]~65\ = CARRY((\inst2|sixteenthCLKCount\(20) & !\inst2|sixteenthCLKCount[19]~63\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|sixteenthCLKCount\(20),
	datad => VCC,
	cin => \inst2|sixteenthCLKCount[19]~63\,
	combout => \inst2|sixteenthCLKCount[20]~64_combout\,
	cout => \inst2|sixteenthCLKCount[20]~65\);

-- Location: LCCOMB_X36_Y27_N18
\inst2|sixteenthCLKCount[21]~66\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst2|sixteenthCLKCount[21]~66_combout\ = (\inst2|sixteenthCLKCount\(21) & (!\inst2|sixteenthCLKCount[20]~65\)) # (!\inst2|sixteenthCLKCount\(21) & ((\inst2|sixteenthCLKCount[20]~65\) # (GND)))
-- \inst2|sixteenthCLKCount[21]~67\ = CARRY((!\inst2|sixteenthCLKCount[20]~65\) # (!\inst2|sixteenthCLKCount\(21)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst2|sixteenthCLKCount\(21),
	datad => VCC,
	cin => \inst2|sixteenthCLKCount[20]~65\,
	combout => \inst2|sixteenthCLKCount[21]~66_combout\,
	cout => \inst2|sixteenthCLKCount[21]~67\);

-- Location: LCFF_X36_Y27_N19
\inst2|sixteenthCLKCount[21]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ALT_INV_clock~clkctrl_outclk\,
	datain => \inst2|sixteenthCLKCount[21]~66_combout\,
	sclr => \inst2|LessThan0~6_combout\,
	ena => \ALT_INV_reset~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst2|sixteenthCLKCount\(21));

-- Location: LCCOMB_X36_Y27_N22
\inst2|sixteenthCLKCount[23]~70\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst2|sixteenthCLKCount[23]~70_combout\ = \inst2|sixteenthCLKCount[22]~69\ $ (\inst2|sixteenthCLKCount\(23))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => \inst2|sixteenthCLKCount\(23),
	cin => \inst2|sixteenthCLKCount[22]~69\,
	combout => \inst2|sixteenthCLKCount[23]~70_combout\);

-- Location: LCFF_X36_Y27_N23
\inst2|sixteenthCLKCount[23]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ALT_INV_clock~clkctrl_outclk\,
	datain => \inst2|sixteenthCLKCount[23]~70_combout\,
	sclr => \inst2|LessThan0~6_combout\,
	ena => \ALT_INV_reset~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst2|sixteenthCLKCount\(23));

-- Location: LCFF_X36_Y27_N17
\inst2|sixteenthCLKCount[20]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ALT_INV_clock~clkctrl_outclk\,
	datain => \inst2|sixteenthCLKCount[20]~64_combout\,
	sclr => \inst2|LessThan0~6_combout\,
	ena => \ALT_INV_reset~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst2|sixteenthCLKCount\(20));

-- Location: LCFF_X36_Y27_N13
\inst2|sixteenthCLKCount[18]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ALT_INV_clock~clkctrl_outclk\,
	datain => \inst2|sixteenthCLKCount[18]~60_combout\,
	sclr => \inst2|LessThan0~6_combout\,
	ena => \ALT_INV_reset~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst2|sixteenthCLKCount\(18));

-- Location: LCFF_X36_Y27_N7
\inst2|sixteenthCLKCount[15]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ALT_INV_clock~clkctrl_outclk\,
	datain => \inst2|sixteenthCLKCount[15]~54_combout\,
	sclr => \inst2|LessThan0~6_combout\,
	ena => \ALT_INV_reset~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst2|sixteenthCLKCount\(15));

-- Location: LCCOMB_X36_Y27_N28
\inst2|LessThan0~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst2|LessThan0~0_combout\ = (((!\inst2|sixteenthCLKCount\(15)) # (!\inst2|sixteenthCLKCount\(16))) # (!\inst2|sixteenthCLKCount\(18))) # (!\inst2|sixteenthCLKCount\(17))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|sixteenthCLKCount\(17),
	datab => \inst2|sixteenthCLKCount\(18),
	datac => \inst2|sixteenthCLKCount\(16),
	datad => \inst2|sixteenthCLKCount\(15),
	combout => \inst2|LessThan0~0_combout\);

-- Location: LCFF_X36_Y28_N25
\inst2|sixteenthCLKCount[8]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ALT_INV_clock~clkctrl_outclk\,
	datain => \inst2|sixteenthCLKCount[8]~40_combout\,
	sclr => \inst2|LessThan0~6_combout\,
	ena => \ALT_INV_reset~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst2|sixteenthCLKCount\(8));

-- Location: LCCOMB_X36_Y28_N0
\inst2|LessThan0~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst2|LessThan0~1_combout\ = (((!\inst2|sixteenthCLKCount\(11)) # (!\inst2|sixteenthCLKCount\(8))) # (!\inst2|sixteenthCLKCount\(10))) # (!\inst2|sixteenthCLKCount\(9))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|sixteenthCLKCount\(9),
	datab => \inst2|sixteenthCLKCount\(10),
	datac => \inst2|sixteenthCLKCount\(8),
	datad => \inst2|sixteenthCLKCount\(11),
	combout => \inst2|LessThan0~1_combout\);

-- Location: LCFF_X36_Y28_N21
\inst2|sixteenthCLKCount[6]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ALT_INV_clock~clkctrl_outclk\,
	datain => \inst2|sixteenthCLKCount[6]~36_combout\,
	sclr => \inst2|LessThan0~6_combout\,
	ena => \ALT_INV_reset~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst2|sixteenthCLKCount\(6));

-- Location: LCCOMB_X36_Y28_N6
\inst2|LessThan0~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst2|LessThan0~2_combout\ = (!\inst2|sixteenthCLKCount\(4) & (!\inst2|sixteenthCLKCount\(3) & (!\inst2|sixteenthCLKCount\(6) & !\inst2|sixteenthCLKCount\(5))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|sixteenthCLKCount\(4),
	datab => \inst2|sixteenthCLKCount\(3),
	datac => \inst2|sixteenthCLKCount\(6),
	datad => \inst2|sixteenthCLKCount\(5),
	combout => \inst2|LessThan0~2_combout\);

-- Location: LCCOMB_X35_Y28_N2
\inst2|LessThan0~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst2|LessThan0~3_combout\ = (!\inst2|sixteenthCLKCount\(12) & ((\inst2|LessThan0~1_combout\) # ((!\inst2|sixteenthCLKCount\(7) & \inst2|LessThan0~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000101010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|sixteenthCLKCount\(12),
	datab => \inst2|sixteenthCLKCount\(7),
	datac => \inst2|LessThan0~1_combout\,
	datad => \inst2|LessThan0~2_combout\,
	combout => \inst2|LessThan0~3_combout\);

-- Location: LCCOMB_X35_Y28_N0
\inst2|LessThan0~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst2|LessThan0~4_combout\ = (\inst2|sixteenthCLKCount\(14)) # ((\inst2|sixteenthCLKCount\(13) & !\inst2|LessThan0~3_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|sixteenthCLKCount\(14),
	datab => \inst2|sixteenthCLKCount\(13),
	datad => \inst2|LessThan0~3_combout\,
	combout => \inst2|LessThan0~4_combout\);

-- Location: LCCOMB_X35_Y28_N18
\inst2|LessThan0~5\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst2|LessThan0~5_combout\ = (\inst2|sixteenthCLKCount\(20)) # ((\inst2|sixteenthCLKCount\(19) & (!\inst2|LessThan0~0_combout\ & \inst2|LessThan0~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|sixteenthCLKCount\(19),
	datab => \inst2|sixteenthCLKCount\(20),
	datac => \inst2|LessThan0~0_combout\,
	datad => \inst2|LessThan0~4_combout\,
	combout => \inst2|LessThan0~5_combout\);

-- Location: LCCOMB_X35_Y28_N24
\inst2|LessThan0~6\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst2|LessThan0~6_combout\ = (\inst2|sixteenthCLKCount\(22)) # ((\inst2|sixteenthCLKCount\(23)) # ((\inst2|sixteenthCLKCount\(21) & \inst2|LessThan0~5_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111011111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|sixteenthCLKCount\(22),
	datab => \inst2|sixteenthCLKCount\(21),
	datac => \inst2|sixteenthCLKCount\(23),
	datad => \inst2|LessThan0~5_combout\,
	combout => \inst2|LessThan0~6_combout\);

-- Location: LCCOMB_X34_Y28_N20
\inst2|sixteenthCLK~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst2|sixteenthCLK~0_combout\ = \inst2|sixteenthCLK~regout\ $ (((!\reset~combout\ & \inst2|LessThan0~6_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \reset~combout\,
	datac => \inst2|sixteenthCLK~regout\,
	datad => \inst2|LessThan0~6_combout\,
	combout => \inst2|sixteenthCLK~0_combout\);

-- Location: LCFF_X34_Y28_N21
\inst2|sixteenthCLK\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ALT_INV_clock~clkctrl_outclk\,
	datain => \inst2|sixteenthCLK~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst2|sixteenthCLK~regout\);

-- Location: CLKCTRL_G13
\inst2|sixteenthCLK~clkctrl\ : cycloneii_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \inst2|sixteenthCLK~clkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \inst2|sixteenthCLK~clkctrl_outclk\);

-- Location: LCCOMB_X42_Y27_N28
\inst2|state.RESETSTICKS~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst2|state.RESETSTICKS~feeder_combout\ = \inst2|WideOr21~1_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst2|WideOr21~1_combout\,
	combout => \inst2|state.RESETSTICKS~feeder_combout\);

-- Location: CLKCTRL_G11
\reset~clkctrl\ : cycloneii_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \reset~clkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \reset~clkctrl_outclk\);

-- Location: LCFF_X42_Y27_N29
\inst2|state.RESETSTICKS\ : cycloneii_lcell_ff
PORT MAP (
	clk => \inst2|sixteenthCLK~clkctrl_outclk\,
	datain => \inst2|state.RESETSTICKS~feeder_combout\,
	aclr => \reset~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst2|state.RESETSTICKS~regout\);

-- Location: LCCOMB_X42_Y27_N22
\inst2|Selector35~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst2|Selector35~0_combout\ = (\inst2|state.PLAY15SIXTEENTH~regout\) # ((\inst2|next_state.PLAY16SIXTEENTH~regout\ & !\inst2|WideOr21~1_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|state.PLAY15SIXTEENTH~regout\,
	datac => \inst2|next_state.PLAY16SIXTEENTH~regout\,
	datad => \inst2|WideOr21~1_combout\,
	combout => \inst2|Selector35~0_combout\);

-- Location: LCFF_X42_Y27_N23
\inst2|next_state.PLAY16SIXTEENTH\ : cycloneii_lcell_ff
PORT MAP (
	clk => \inst2|sixteenthCLK~clkctrl_outclk\,
	datain => \inst2|Selector35~0_combout\,
	ena => \ALT_INV_reset~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst2|next_state.PLAY16SIXTEENTH~regout\);

-- Location: LCCOMB_X43_Y27_N20
\inst2|state~39\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst2|state~39_combout\ = (\inst2|state.RESETSTICKS~regout\ & \inst2|next_state.PLAY16SIXTEENTH~regout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst2|state.RESETSTICKS~regout\,
	datad => \inst2|next_state.PLAY16SIXTEENTH~regout\,
	combout => \inst2|state~39_combout\);

-- Location: LCFF_X43_Y27_N21
\inst2|state.PLAY16SIXTEENTH\ : cycloneii_lcell_ff
PORT MAP (
	clk => \inst2|sixteenthCLK~clkctrl_outclk\,
	datain => \inst2|state~39_combout\,
	aclr => \reset~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst2|state.PLAY16SIXTEENTH~regout\);

-- Location: LCFF_X43_Y27_N7
\inst2|state.LOAD_NEXT_MEASURE\ : cycloneii_lcell_ff
PORT MAP (
	clk => \inst2|sixteenthCLK~clkctrl_outclk\,
	sdata => \inst2|state.PLAY16SIXTEENTH~regout\,
	aclr => \reset~clkctrl_outclk\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst2|state.LOAD_NEXT_MEASURE~regout\);

-- Location: LCCOMB_X43_Y27_N6
\inst2|WideOr21~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst2|WideOr21~1_combout\ = (!\inst2|state.PLAY16SIXTEENTH~regout\ & (!\inst2|state.RESETSTICKS~regout\ & (!\inst2|state.LOAD_NEXT_MEASURE~regout\ & \inst2|state.RESET1~regout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|state.PLAY16SIXTEENTH~regout\,
	datab => \inst2|state.RESETSTICKS~regout\,
	datac => \inst2|state.LOAD_NEXT_MEASURE~regout\,
	datad => \inst2|state.RESET1~regout\,
	combout => \inst2|WideOr21~1_combout\);

-- Location: LCCOMB_X42_Y27_N24
\inst2|next_state.RESET1~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst2|next_state.RESET1~0_combout\ = (\inst2|next_state.RESET1~regout\) # ((!\reset~combout\ & \inst2|WideOr21~1_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \reset~combout\,
	datac => \inst2|next_state.RESET1~regout\,
	datad => \inst2|WideOr21~1_combout\,
	combout => \inst2|next_state.RESET1~0_combout\);

-- Location: LCFF_X42_Y27_N25
\inst2|next_state.RESET1\ : cycloneii_lcell_ff
PORT MAP (
	clk => \inst2|sixteenthCLK~clkctrl_outclk\,
	datain => \inst2|next_state.RESET1~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst2|next_state.RESET1~regout\);

-- Location: LCCOMB_X42_Y27_N12
\inst2|state~54\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst2|state~54_combout\ = (\inst2|next_state.RESET1~regout\) # (!\inst2|state.RESETSTICKS~regout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst2|next_state.RESET1~regout\,
	datad => \inst2|state.RESETSTICKS~regout\,
	combout => \inst2|state~54_combout\);

-- Location: LCFF_X42_Y27_N13
\inst2|state.RESET1\ : cycloneii_lcell_ff
PORT MAP (
	clk => \inst2|sixteenthCLK~clkctrl_outclk\,
	datain => \inst2|state~54_combout\,
	aclr => \reset~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst2|state.RESET1~regout\);

-- Location: LCCOMB_X46_Y27_N2
\inst2|Selector1~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst2|Selector1~0_combout\ = (\inst2|currMeasure\(14) & \inst2|state.RESET1~regout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst2|currMeasure\(14),
	datad => \inst2|state.RESET1~regout\,
	combout => \inst2|Selector1~0_combout\);

-- Location: PIN_J14,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\mem_data[14]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_mem_data(14),
	combout => \mem_data~combout\(14));

-- Location: LCCOMB_X49_Y27_N30
\SWITCHES4|lpm_ff_component|dffs[14]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \SWITCHES4|lpm_ff_component|dffs[14]~feeder_combout\ = \mem_data~combout\(14)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \mem_data~combout\(14),
	combout => \SWITCHES4|lpm_ff_component|dffs[14]~feeder_combout\);

-- Location: LCFF_X49_Y27_N31
\SWITCHES4|lpm_ff_component|dffs[14]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \inst14~clkctrl_outclk\,
	datain => \SWITCHES4|lpm_ff_component|dffs[14]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \SWITCHES4|lpm_ff_component|dffs\(14));

-- Location: LCCOMB_X49_Y27_N10
\inst2|nextMeasure[14]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst2|nextMeasure[14]~feeder_combout\ = \SWITCHES4|lpm_ff_component|dffs\(14)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \SWITCHES4|lpm_ff_component|dffs\(14),
	combout => \inst2|nextMeasure[14]~feeder_combout\);

-- Location: LCFF_X49_Y27_N11
\inst2|nextMeasure[14]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ALT_INV_clock~clkctrl_outclk\,
	datain => \inst2|nextMeasure[14]~feeder_combout\,
	aclr => \reset~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst2|nextMeasure\(14));

-- Location: LCFF_X46_Y27_N3
\inst2|currMeasure[14]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \inst2|sixteenthCLK~clkctrl_outclk\,
	datain => \inst2|Selector1~0_combout\,
	sdata => \inst2|nextMeasure\(14),
	sload => \inst2|state.LOAD_NEXT_MEASURE~regout\,
	ena => \ALT_INV_reset~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst2|currMeasure\(14));

-- Location: LCCOMB_X46_Y27_N26
\inst2|WideOr21~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst2|WideOr21~0_combout\ = (\inst2|state.LOAD_NEXT_MEASURE~regout\) # (!\inst2|state.RESET1~regout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010111110101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|state.RESET1~regout\,
	datac => \inst2|state.LOAD_NEXT_MEASURE~regout\,
	combout => \inst2|WideOr21~0_combout\);

-- Location: LCFF_X46_Y27_N27
\inst2|state.PLAY1SIXTEENTH\ : cycloneii_lcell_ff
PORT MAP (
	clk => \inst2|sixteenthCLK~clkctrl_outclk\,
	datain => \inst2|WideOr21~0_combout\,
	aclr => \reset~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst2|state.PLAY1SIXTEENTH~regout\);

-- Location: LCCOMB_X46_Y27_N18
\inst2|Selector21~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst2|Selector21~0_combout\ = (\inst2|state.PLAY1SIXTEENTH~regout\) # ((\inst2|next_state.PLAY2SIXTEENTH~regout\ & !\inst2|WideOr21~1_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst2|state.PLAY1SIXTEENTH~regout\,
	datac => \inst2|next_state.PLAY2SIXTEENTH~regout\,
	datad => \inst2|WideOr21~1_combout\,
	combout => \inst2|Selector21~0_combout\);

-- Location: LCFF_X46_Y27_N19
\inst2|next_state.PLAY2SIXTEENTH\ : cycloneii_lcell_ff
PORT MAP (
	clk => \inst2|sixteenthCLK~clkctrl_outclk\,
	datain => \inst2|Selector21~0_combout\,
	ena => \ALT_INV_reset~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst2|next_state.PLAY2SIXTEENTH~regout\);

-- Location: LCCOMB_X46_Y27_N20
\inst2|state~53\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst2|state~53_combout\ = (\inst2|state.RESETSTICKS~regout\ & \inst2|next_state.PLAY2SIXTEENTH~regout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst2|state.RESETSTICKS~regout\,
	datad => \inst2|next_state.PLAY2SIXTEENTH~regout\,
	combout => \inst2|state~53_combout\);

-- Location: LCFF_X46_Y27_N21
\inst2|state.PLAY2SIXTEENTH\ : cycloneii_lcell_ff
PORT MAP (
	clk => \inst2|sixteenthCLK~clkctrl_outclk\,
	datain => \inst2|state~53_combout\,
	aclr => \reset~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst2|state.PLAY2SIXTEENTH~regout\);

-- Location: LCCOMB_X46_Y27_N0
\inst2|Selector16~9\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst2|Selector16~9_combout\ = (\inst2|currMeasure\(15) & ((\inst2|state.PLAY1SIXTEENTH~regout\) # ((\inst2|currMeasure\(14) & \inst2|state.PLAY2SIXTEENTH~regout\)))) # (!\inst2|currMeasure\(15) & (\inst2|currMeasure\(14) & 
-- (\inst2|state.PLAY2SIXTEENTH~regout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|currMeasure\(15),
	datab => \inst2|currMeasure\(14),
	datac => \inst2|state.PLAY2SIXTEENTH~regout\,
	datad => \inst2|state.PLAY1SIXTEENTH~regout\,
	combout => \inst2|Selector16~9_combout\);

-- Location: LCCOMB_X44_Y27_N0
\inst2|Selector12~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst2|Selector12~0_combout\ = (\inst2|currMeasure\(3) & \inst2|state.RESET1~regout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst2|currMeasure\(3),
	datad => \inst2|state.RESET1~regout\,
	combout => \inst2|Selector12~0_combout\);

-- Location: PIN_D20,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\mem_data[3]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_mem_data(3),
	combout => \mem_data~combout\(3));

-- Location: LCCOMB_X48_Y27_N0
\SWITCHES4|lpm_ff_component|dffs[3]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \SWITCHES4|lpm_ff_component|dffs[3]~feeder_combout\ = \mem_data~combout\(3)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \mem_data~combout\(3),
	combout => \SWITCHES4|lpm_ff_component|dffs[3]~feeder_combout\);

-- Location: LCFF_X48_Y27_N1
\SWITCHES4|lpm_ff_component|dffs[3]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \inst14~clkctrl_outclk\,
	datain => \SWITCHES4|lpm_ff_component|dffs[3]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \SWITCHES4|lpm_ff_component|dffs\(3));

-- Location: LCCOMB_X48_Y27_N18
\inst2|nextMeasure[3]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst2|nextMeasure[3]~feeder_combout\ = \SWITCHES4|lpm_ff_component|dffs\(3)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \SWITCHES4|lpm_ff_component|dffs\(3),
	combout => \inst2|nextMeasure[3]~feeder_combout\);

-- Location: LCFF_X48_Y27_N19
\inst2|nextMeasure[3]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ALT_INV_clock~clkctrl_outclk\,
	datain => \inst2|nextMeasure[3]~feeder_combout\,
	aclr => \reset~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst2|nextMeasure\(3));

-- Location: LCFF_X44_Y27_N1
\inst2|currMeasure[3]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \inst2|sixteenthCLK~clkctrl_outclk\,
	datain => \inst2|Selector12~0_combout\,
	sdata => \inst2|nextMeasure\(3),
	sload => \inst2|state.LOAD_NEXT_MEASURE~regout\,
	ena => \ALT_INV_reset~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst2|currMeasure\(3));

-- Location: LCCOMB_X43_Y27_N24
\inst2|Selector32~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst2|Selector32~0_combout\ = (\inst2|state.PLAY12SIXTEENTH~regout\) # ((\inst2|next_state.PLAY13SIXTEENTH~regout\ & !\inst2|WideOr21~1_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|state.PLAY12SIXTEENTH~regout\,
	datac => \inst2|next_state.PLAY13SIXTEENTH~regout\,
	datad => \inst2|WideOr21~1_combout\,
	combout => \inst2|Selector32~0_combout\);

-- Location: LCFF_X43_Y27_N25
\inst2|next_state.PLAY13SIXTEENTH\ : cycloneii_lcell_ff
PORT MAP (
	clk => \inst2|sixteenthCLK~clkctrl_outclk\,
	datain => \inst2|Selector32~0_combout\,
	ena => \ALT_INV_reset~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst2|next_state.PLAY13SIXTEENTH~regout\);

-- Location: LCCOMB_X43_Y27_N28
\inst2|state~42\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst2|state~42_combout\ = (\inst2|next_state.PLAY13SIXTEENTH~regout\ & \inst2|state.RESETSTICKS~regout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst2|next_state.PLAY13SIXTEENTH~regout\,
	datad => \inst2|state.RESETSTICKS~regout\,
	combout => \inst2|state~42_combout\);

-- Location: LCFF_X43_Y27_N29
\inst2|state.PLAY13SIXTEENTH\ : cycloneii_lcell_ff
PORT MAP (
	clk => \inst2|sixteenthCLK~clkctrl_outclk\,
	datain => \inst2|state~42_combout\,
	aclr => \reset~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst2|state.PLAY13SIXTEENTH~regout\);

-- Location: LCCOMB_X43_Y27_N12
\inst2|Selector33~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst2|Selector33~0_combout\ = (\inst2|state.PLAY13SIXTEENTH~regout\) # ((\inst2|next_state.PLAY14SIXTEENTH~regout\ & !\inst2|WideOr21~1_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst2|state.PLAY13SIXTEENTH~regout\,
	datac => \inst2|next_state.PLAY14SIXTEENTH~regout\,
	datad => \inst2|WideOr21~1_combout\,
	combout => \inst2|Selector33~0_combout\);

-- Location: LCFF_X43_Y27_N13
\inst2|next_state.PLAY14SIXTEENTH\ : cycloneii_lcell_ff
PORT MAP (
	clk => \inst2|sixteenthCLK~clkctrl_outclk\,
	datain => \inst2|Selector33~0_combout\,
	ena => \ALT_INV_reset~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst2|next_state.PLAY14SIXTEENTH~regout\);

-- Location: LCCOMB_X44_Y27_N4
\inst2|state~41\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst2|state~41_combout\ = (\inst2|state.RESETSTICKS~regout\ & \inst2|next_state.PLAY14SIXTEENTH~regout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst2|state.RESETSTICKS~regout\,
	datad => \inst2|next_state.PLAY14SIXTEENTH~regout\,
	combout => \inst2|state~41_combout\);

-- Location: LCFF_X44_Y27_N5
\inst2|state.PLAY14SIXTEENTH\ : cycloneii_lcell_ff
PORT MAP (
	clk => \inst2|sixteenthCLK~clkctrl_outclk\,
	datain => \inst2|state~41_combout\,
	aclr => \reset~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst2|state.PLAY14SIXTEENTH~regout\);

-- Location: LCCOMB_X44_Y27_N22
\inst2|Selector16~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst2|Selector16~1_combout\ = (\inst2|currMeasure\(2) & ((\inst2|state.PLAY14SIXTEENTH~regout\) # ((\inst2|currMeasure\(3) & \inst2|state.PLAY13SIXTEENTH~regout\)))) # (!\inst2|currMeasure\(2) & (\inst2|currMeasure\(3) & 
-- ((\inst2|state.PLAY13SIXTEENTH~regout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|currMeasure\(2),
	datab => \inst2|currMeasure\(3),
	datac => \inst2|state.PLAY14SIXTEENTH~regout\,
	datad => \inst2|state.PLAY13SIXTEENTH~regout\,
	combout => \inst2|Selector16~1_combout\);

-- Location: LCCOMB_X44_Y27_N18
\inst2|Selector9~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst2|Selector9~0_combout\ = (\inst2|currMeasure\(6) & \inst2|state.RESET1~regout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst2|currMeasure\(6),
	datad => \inst2|state.RESET1~regout\,
	combout => \inst2|Selector9~0_combout\);

-- Location: PIN_D22,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\mem_data[6]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_mem_data(6),
	combout => \mem_data~combout\(6));

-- Location: LCCOMB_X49_Y27_N6
\SWITCHES4|lpm_ff_component|dffs[6]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \SWITCHES4|lpm_ff_component|dffs[6]~feeder_combout\ = \mem_data~combout\(6)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \mem_data~combout\(6),
	combout => \SWITCHES4|lpm_ff_component|dffs[6]~feeder_combout\);

-- Location: LCFF_X49_Y27_N7
\SWITCHES4|lpm_ff_component|dffs[6]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \inst14~clkctrl_outclk\,
	datain => \SWITCHES4|lpm_ff_component|dffs[6]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \SWITCHES4|lpm_ff_component|dffs\(6));

-- Location: LCCOMB_X49_Y27_N22
\inst2|nextMeasure[6]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst2|nextMeasure[6]~feeder_combout\ = \SWITCHES4|lpm_ff_component|dffs\(6)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \SWITCHES4|lpm_ff_component|dffs\(6),
	combout => \inst2|nextMeasure[6]~feeder_combout\);

-- Location: LCFF_X49_Y27_N23
\inst2|nextMeasure[6]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ALT_INV_clock~clkctrl_outclk\,
	datain => \inst2|nextMeasure[6]~feeder_combout\,
	aclr => \reset~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst2|nextMeasure\(6));

-- Location: LCFF_X44_Y27_N19
\inst2|currMeasure[6]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \inst2|sixteenthCLK~clkctrl_outclk\,
	datain => \inst2|Selector9~0_combout\,
	sdata => \inst2|nextMeasure\(6),
	sload => \inst2|state.LOAD_NEXT_MEASURE~regout\,
	ena => \ALT_INV_reset~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst2|currMeasure\(6));

-- Location: LCCOMB_X44_Y27_N12
\inst2|Selector8~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst2|Selector8~0_combout\ = (\inst2|currMeasure\(7) & \inst2|state.RESET1~regout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst2|currMeasure\(7),
	datad => \inst2|state.RESET1~regout\,
	combout => \inst2|Selector8~0_combout\);

-- Location: PIN_C17,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\mem_data[7]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_mem_data(7),
	combout => \mem_data~combout\(7));

-- Location: LCFF_X49_Y27_N13
\SWITCHES4|lpm_ff_component|dffs[7]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \inst14~clkctrl_outclk\,
	sdata => \mem_data~combout\(7),
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \SWITCHES4|lpm_ff_component|dffs\(7));

-- Location: LCCOMB_X49_Y27_N24
\inst2|nextMeasure[7]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst2|nextMeasure[7]~feeder_combout\ = \SWITCHES4|lpm_ff_component|dffs\(7)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \SWITCHES4|lpm_ff_component|dffs\(7),
	combout => \inst2|nextMeasure[7]~feeder_combout\);

-- Location: LCFF_X49_Y27_N25
\inst2|nextMeasure[7]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ALT_INV_clock~clkctrl_outclk\,
	datain => \inst2|nextMeasure[7]~feeder_combout\,
	aclr => \reset~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst2|nextMeasure\(7));

-- Location: LCFF_X44_Y27_N13
\inst2|currMeasure[7]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \inst2|sixteenthCLK~clkctrl_outclk\,
	datain => \inst2|Selector8~0_combout\,
	sdata => \inst2|nextMeasure\(7),
	sload => \inst2|state.LOAD_NEXT_MEASURE~regout\,
	ena => \ALT_INV_reset~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst2|currMeasure\(7));

-- Location: LCCOMB_X43_Y27_N4
\inst2|Selector29~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst2|Selector29~0_combout\ = (\inst2|state.PLAY9SIXTEENTH~regout\) # ((\inst2|next_state.PLAY10SIXTEENTH~regout\ & !\inst2|WideOr21~1_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|state.PLAY9SIXTEENTH~regout\,
	datac => \inst2|next_state.PLAY10SIXTEENTH~regout\,
	datad => \inst2|WideOr21~1_combout\,
	combout => \inst2|Selector29~0_combout\);

-- Location: LCFF_X43_Y27_N5
\inst2|next_state.PLAY10SIXTEENTH\ : cycloneii_lcell_ff
PORT MAP (
	clk => \inst2|sixteenthCLK~clkctrl_outclk\,
	datain => \inst2|Selector29~0_combout\,
	ena => \ALT_INV_reset~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst2|next_state.PLAY10SIXTEENTH~regout\);

-- Location: LCCOMB_X43_Y27_N22
\inst2|state~45\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst2|state~45_combout\ = (\inst2|next_state.PLAY10SIXTEENTH~regout\ & \inst2|state.RESETSTICKS~regout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst2|next_state.PLAY10SIXTEENTH~regout\,
	datad => \inst2|state.RESETSTICKS~regout\,
	combout => \inst2|state~45_combout\);

-- Location: LCFF_X43_Y27_N23
\inst2|state.PLAY10SIXTEENTH\ : cycloneii_lcell_ff
PORT MAP (
	clk => \inst2|sixteenthCLK~clkctrl_outclk\,
	datain => \inst2|state~45_combout\,
	aclr => \reset~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst2|state.PLAY10SIXTEENTH~regout\);

-- Location: LCCOMB_X44_Y27_N14
\inst2|Selector16~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst2|Selector16~3_combout\ = (\inst2|state.PLAY9SIXTEENTH~regout\ & ((\inst2|currMeasure\(7)) # ((\inst2|currMeasure\(6) & \inst2|state.PLAY10SIXTEENTH~regout\)))) # (!\inst2|state.PLAY9SIXTEENTH~regout\ & (\inst2|currMeasure\(6) & 
-- ((\inst2|state.PLAY10SIXTEENTH~regout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|state.PLAY9SIXTEENTH~regout\,
	datab => \inst2|currMeasure\(6),
	datac => \inst2|currMeasure\(7),
	datad => \inst2|state.PLAY10SIXTEENTH~regout\,
	combout => \inst2|Selector16~3_combout\);

-- Location: LCCOMB_X43_Y27_N26
\inst2|Selector34~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst2|Selector34~0_combout\ = (\inst2|state.PLAY14SIXTEENTH~regout\) # ((\inst2|next_state.PLAY15SIXTEENTH~regout\ & !\inst2|WideOr21~1_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|state.PLAY14SIXTEENTH~regout\,
	datac => \inst2|next_state.PLAY15SIXTEENTH~regout\,
	datad => \inst2|WideOr21~1_combout\,
	combout => \inst2|Selector34~0_combout\);

-- Location: LCFF_X43_Y27_N27
\inst2|next_state.PLAY15SIXTEENTH\ : cycloneii_lcell_ff
PORT MAP (
	clk => \inst2|sixteenthCLK~clkctrl_outclk\,
	datain => \inst2|Selector34~0_combout\,
	ena => \ALT_INV_reset~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst2|next_state.PLAY15SIXTEENTH~regout\);

-- Location: LCCOMB_X43_Y27_N0
\inst2|state~40\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst2|state~40_combout\ = (\inst2|next_state.PLAY15SIXTEENTH~regout\ & \inst2|state.RESETSTICKS~regout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst2|next_state.PLAY15SIXTEENTH~regout\,
	datad => \inst2|state.RESETSTICKS~regout\,
	combout => \inst2|state~40_combout\);

-- Location: LCFF_X43_Y27_N1
\inst2|state.PLAY15SIXTEENTH\ : cycloneii_lcell_ff
PORT MAP (
	clk => \inst2|sixteenthCLK~clkctrl_outclk\,
	datain => \inst2|state~40_combout\,
	aclr => \reset~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst2|state.PLAY15SIXTEENTH~regout\);

-- Location: LCCOMB_X42_Y27_N30
\inst2|Selector15~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst2|Selector15~0_combout\ = (\inst2|currMeasure\(0) & \inst2|state.RESET1~regout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst2|currMeasure\(0),
	datad => \inst2|state.RESET1~regout\,
	combout => \inst2|Selector15~0_combout\);

-- Location: PIN_A18,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\mem_data[0]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_mem_data(0),
	combout => \mem_data~combout\(0));

-- Location: LCCOMB_X45_Y27_N12
\SWITCHES4|lpm_ff_component|dffs[0]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \SWITCHES4|lpm_ff_component|dffs[0]~feeder_combout\ = \mem_data~combout\(0)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \mem_data~combout\(0),
	combout => \SWITCHES4|lpm_ff_component|dffs[0]~feeder_combout\);

-- Location: LCFF_X45_Y27_N13
\SWITCHES4|lpm_ff_component|dffs[0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \inst14~clkctrl_outclk\,
	datain => \SWITCHES4|lpm_ff_component|dffs[0]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \SWITCHES4|lpm_ff_component|dffs\(0));

-- Location: LCCOMB_X45_Y27_N2
\inst2|nextMeasure[0]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst2|nextMeasure[0]~feeder_combout\ = \SWITCHES4|lpm_ff_component|dffs\(0)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \SWITCHES4|lpm_ff_component|dffs\(0),
	combout => \inst2|nextMeasure[0]~feeder_combout\);

-- Location: LCFF_X45_Y27_N3
\inst2|nextMeasure[0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ALT_INV_clock~clkctrl_outclk\,
	datain => \inst2|nextMeasure[0]~feeder_combout\,
	aclr => \reset~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst2|nextMeasure\(0));

-- Location: LCFF_X42_Y27_N31
\inst2|currMeasure[0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \inst2|sixteenthCLK~clkctrl_outclk\,
	datain => \inst2|Selector15~0_combout\,
	sdata => \inst2|nextMeasure\(0),
	sload => \inst2|state.LOAD_NEXT_MEASURE~regout\,
	ena => \ALT_INV_reset~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst2|currMeasure\(0));

-- Location: LCCOMB_X42_Y27_N16
\inst2|Selector14~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst2|Selector14~0_combout\ = (\inst2|currMeasure\(1) & \inst2|state.RESET1~regout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst2|currMeasure\(1),
	datad => \inst2|state.RESET1~regout\,
	combout => \inst2|Selector14~0_combout\);

-- Location: PIN_H16,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\mem_data[1]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_mem_data(1),
	combout => \mem_data~combout\(1));

-- Location: LCFF_X45_Y27_N19
\SWITCHES4|lpm_ff_component|dffs[1]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \inst14~clkctrl_outclk\,
	sdata => \mem_data~combout\(1),
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \SWITCHES4|lpm_ff_component|dffs\(1));

-- Location: LCCOMB_X45_Y27_N28
\inst2|nextMeasure[1]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst2|nextMeasure[1]~feeder_combout\ = \SWITCHES4|lpm_ff_component|dffs\(1)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \SWITCHES4|lpm_ff_component|dffs\(1),
	combout => \inst2|nextMeasure[1]~feeder_combout\);

-- Location: LCFF_X45_Y27_N29
\inst2|nextMeasure[1]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ALT_INV_clock~clkctrl_outclk\,
	datain => \inst2|nextMeasure[1]~feeder_combout\,
	aclr => \reset~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst2|nextMeasure\(1));

-- Location: LCFF_X42_Y27_N17
\inst2|currMeasure[1]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \inst2|sixteenthCLK~clkctrl_outclk\,
	datain => \inst2|Selector14~0_combout\,
	sdata => \inst2|nextMeasure\(1),
	sload => \inst2|state.LOAD_NEXT_MEASURE~regout\,
	ena => \ALT_INV_reset~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst2|currMeasure\(1));

-- Location: LCCOMB_X43_Y27_N14
\inst2|Selector16~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst2|Selector16~0_combout\ = (\inst2|state.PLAY16SIXTEENTH~regout\ & ((\inst2|currMeasure\(0)) # ((\inst2|state.PLAY15SIXTEENTH~regout\ & \inst2|currMeasure\(1))))) # (!\inst2|state.PLAY16SIXTEENTH~regout\ & (\inst2|state.PLAY15SIXTEENTH~regout\ & 
-- ((\inst2|currMeasure\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|state.PLAY16SIXTEENTH~regout\,
	datab => \inst2|state.PLAY15SIXTEENTH~regout\,
	datac => \inst2|currMeasure\(0),
	datad => \inst2|currMeasure\(1),
	combout => \inst2|Selector16~0_combout\);

-- Location: LCCOMB_X44_Y27_N20
\inst2|Selector16~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst2|Selector16~4_combout\ = (\inst2|Selector16~2_combout\) # ((\inst2|Selector16~1_combout\) # ((\inst2|Selector16~3_combout\) # (\inst2|Selector16~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|Selector16~2_combout\,
	datab => \inst2|Selector16~1_combout\,
	datac => \inst2|Selector16~3_combout\,
	datad => \inst2|Selector16~0_combout\,
	combout => \inst2|Selector16~4_combout\);

-- Location: LCCOMB_X42_Y27_N26
\inst2|Selector22~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst2|Selector22~0_combout\ = (\inst2|state.PLAY2SIXTEENTH~regout\) # ((\inst2|next_state.PLAY3SIXTEENTH~regout\ & !\inst2|WideOr21~1_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst2|state.PLAY2SIXTEENTH~regout\,
	datac => \inst2|next_state.PLAY3SIXTEENTH~regout\,
	datad => \inst2|WideOr21~1_combout\,
	combout => \inst2|Selector22~0_combout\);

-- Location: LCFF_X42_Y27_N27
\inst2|next_state.PLAY3SIXTEENTH\ : cycloneii_lcell_ff
PORT MAP (
	clk => \inst2|sixteenthCLK~clkctrl_outclk\,
	datain => \inst2|Selector22~0_combout\,
	ena => \ALT_INV_reset~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst2|next_state.PLAY3SIXTEENTH~regout\);

-- Location: LCCOMB_X42_Y27_N2
\inst2|state~52\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst2|state~52_combout\ = (\inst2|next_state.PLAY3SIXTEENTH~regout\ & \inst2|state.RESETSTICKS~regout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst2|next_state.PLAY3SIXTEENTH~regout\,
	datad => \inst2|state.RESETSTICKS~regout\,
	combout => \inst2|state~52_combout\);

-- Location: LCFF_X42_Y27_N3
\inst2|state.PLAY3SIXTEENTH\ : cycloneii_lcell_ff
PORT MAP (
	clk => \inst2|sixteenthCLK~clkctrl_outclk\,
	datain => \inst2|state~52_combout\,
	aclr => \reset~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst2|state.PLAY3SIXTEENTH~regout\);

-- Location: LCCOMB_X42_Y27_N20
\inst2|Selector23~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst2|Selector23~0_combout\ = (\inst2|state.PLAY3SIXTEENTH~regout\) # ((\inst2|next_state.PLAY4SIXTEENTH~regout\ & !\inst2|WideOr21~1_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst2|state.PLAY3SIXTEENTH~regout\,
	datac => \inst2|next_state.PLAY4SIXTEENTH~regout\,
	datad => \inst2|WideOr21~1_combout\,
	combout => \inst2|Selector23~0_combout\);

-- Location: LCFF_X42_Y27_N21
\inst2|next_state.PLAY4SIXTEENTH\ : cycloneii_lcell_ff
PORT MAP (
	clk => \inst2|sixteenthCLK~clkctrl_outclk\,
	datain => \inst2|Selector23~0_combout\,
	ena => \ALT_INV_reset~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst2|next_state.PLAY4SIXTEENTH~regout\);

-- Location: LCCOMB_X42_Y27_N4
\inst2|state~51\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst2|state~51_combout\ = (\inst2|next_state.PLAY4SIXTEENTH~regout\ & \inst2|state.RESETSTICKS~regout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst2|next_state.PLAY4SIXTEENTH~regout\,
	datad => \inst2|state.RESETSTICKS~regout\,
	combout => \inst2|state~51_combout\);

-- Location: LCFF_X42_Y27_N5
\inst2|state.PLAY4SIXTEENTH\ : cycloneii_lcell_ff
PORT MAP (
	clk => \inst2|sixteenthCLK~clkctrl_outclk\,
	datain => \inst2|state~51_combout\,
	aclr => \reset~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst2|state.PLAY4SIXTEENTH~regout\);

-- Location: LCCOMB_X43_Y27_N10
\inst2|Selector24~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst2|Selector24~0_combout\ = (\inst2|state.PLAY4SIXTEENTH~regout\) # ((\inst2|next_state.PLAY5SIXTEENTH~regout\ & !\inst2|WideOr21~1_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst2|state.PLAY4SIXTEENTH~regout\,
	datac => \inst2|next_state.PLAY5SIXTEENTH~regout\,
	datad => \inst2|WideOr21~1_combout\,
	combout => \inst2|Selector24~0_combout\);

-- Location: LCFF_X43_Y27_N11
\inst2|next_state.PLAY5SIXTEENTH\ : cycloneii_lcell_ff
PORT MAP (
	clk => \inst2|sixteenthCLK~clkctrl_outclk\,
	datain => \inst2|Selector24~0_combout\,
	ena => \ALT_INV_reset~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst2|next_state.PLAY5SIXTEENTH~regout\);

-- Location: LCCOMB_X44_Y27_N30
\inst2|state~49\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst2|state~49_combout\ = (\inst2|state.RESETSTICKS~regout\ & \inst2|next_state.PLAY5SIXTEENTH~regout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst2|state.RESETSTICKS~regout\,
	datad => \inst2|next_state.PLAY5SIXTEENTH~regout\,
	combout => \inst2|state~49_combout\);

-- Location: LCFF_X44_Y27_N31
\inst2|state.PLAY5SIXTEENTH\ : cycloneii_lcell_ff
PORT MAP (
	clk => \inst2|sixteenthCLK~clkctrl_outclk\,
	datain => \inst2|state~49_combout\,
	aclr => \reset~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst2|state.PLAY5SIXTEENTH~regout\);

-- Location: LCCOMB_X42_Y27_N18
\inst2|Selector25~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst2|Selector25~0_combout\ = (\inst2|state.PLAY5SIXTEENTH~regout\) # ((\inst2|next_state.PLAY6SIXTEENTH~regout\ & !\inst2|WideOr21~1_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst2|state.PLAY5SIXTEENTH~regout\,
	datac => \inst2|next_state.PLAY6SIXTEENTH~regout\,
	datad => \inst2|WideOr21~1_combout\,
	combout => \inst2|Selector25~0_combout\);

-- Location: LCFF_X42_Y27_N19
\inst2|next_state.PLAY6SIXTEENTH\ : cycloneii_lcell_ff
PORT MAP (
	clk => \inst2|sixteenthCLK~clkctrl_outclk\,
	datain => \inst2|Selector25~0_combout\,
	ena => \ALT_INV_reset~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst2|next_state.PLAY6SIXTEENTH~regout\);

-- Location: LCCOMB_X46_Y27_N30
\inst2|state~50\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst2|state~50_combout\ = (\inst2|state.RESETSTICKS~regout\ & \inst2|next_state.PLAY6SIXTEENTH~regout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst2|state.RESETSTICKS~regout\,
	datad => \inst2|next_state.PLAY6SIXTEENTH~regout\,
	combout => \inst2|state~50_combout\);

-- Location: LCFF_X46_Y27_N31
\inst2|state.PLAY6SIXTEENTH\ : cycloneii_lcell_ff
PORT MAP (
	clk => \inst2|sixteenthCLK~clkctrl_outclk\,
	datain => \inst2|state~50_combout\,
	aclr => \reset~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst2|state.PLAY6SIXTEENTH~regout\);

-- Location: LCCOMB_X46_Y27_N4
\inst2|Selector4~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst2|Selector4~0_combout\ = (\inst2|currMeasure\(11) & \inst2|state.RESET1~regout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst2|currMeasure\(11),
	datad => \inst2|state.RESET1~regout\,
	combout => \inst2|Selector4~0_combout\);

-- Location: PIN_B17,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\mem_data[11]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_mem_data(11),
	combout => \mem_data~combout\(11));

-- Location: LCFF_X45_Y27_N1
\SWITCHES4|lpm_ff_component|dffs[11]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \inst14~clkctrl_outclk\,
	sdata => \mem_data~combout\(11),
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \SWITCHES4|lpm_ff_component|dffs\(11));

-- Location: LCCOMB_X45_Y27_N6
\inst2|nextMeasure[11]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst2|nextMeasure[11]~feeder_combout\ = \SWITCHES4|lpm_ff_component|dffs\(11)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \SWITCHES4|lpm_ff_component|dffs\(11),
	combout => \inst2|nextMeasure[11]~feeder_combout\);

-- Location: LCFF_X45_Y27_N7
\inst2|nextMeasure[11]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ALT_INV_clock~clkctrl_outclk\,
	datain => \inst2|nextMeasure[11]~feeder_combout\,
	aclr => \reset~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst2|nextMeasure\(11));

-- Location: LCFF_X46_Y27_N5
\inst2|currMeasure[11]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \inst2|sixteenthCLK~clkctrl_outclk\,
	datain => \inst2|Selector4~0_combout\,
	sdata => \inst2|nextMeasure\(11),
	sload => \inst2|state.LOAD_NEXT_MEASURE~regout\,
	ena => \ALT_INV_reset~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst2|currMeasure\(11));

-- Location: LCCOMB_X45_Y27_N20
\inst2|Selector16~6\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst2|Selector16~6_combout\ = (\inst2|state.PLAY5SIXTEENTH~regout\ & \inst2|currMeasure\(11))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst2|state.PLAY5SIXTEENTH~regout\,
	datad => \inst2|currMeasure\(11),
	combout => \inst2|Selector16~6_combout\);

-- Location: LCCOMB_X46_Y27_N14
\inst2|Selector27~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst2|Selector27~0_combout\ = (\inst2|state.PLAY7SIXTEENTH~regout\) # ((\inst2|next_state.PLAY8SIXTEENTH~regout\ & !\inst2|WideOr21~1_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|state.PLAY7SIXTEENTH~regout\,
	datac => \inst2|next_state.PLAY8SIXTEENTH~regout\,
	datad => \inst2|WideOr21~1_combout\,
	combout => \inst2|Selector27~0_combout\);

-- Location: LCFF_X46_Y27_N15
\inst2|next_state.PLAY8SIXTEENTH\ : cycloneii_lcell_ff
PORT MAP (
	clk => \inst2|sixteenthCLK~clkctrl_outclk\,
	datain => \inst2|Selector27~0_combout\,
	ena => \ALT_INV_reset~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst2|next_state.PLAY8SIXTEENTH~regout\);

-- Location: LCCOMB_X46_Y27_N28
\inst2|state~47\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst2|state~47_combout\ = (\inst2|next_state.PLAY8SIXTEENTH~regout\ & \inst2|state.RESETSTICKS~regout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst2|next_state.PLAY8SIXTEENTH~regout\,
	datac => \inst2|state.RESETSTICKS~regout\,
	combout => \inst2|state~47_combout\);

-- Location: LCFF_X46_Y27_N29
\inst2|state.PLAY8SIXTEENTH\ : cycloneii_lcell_ff
PORT MAP (
	clk => \inst2|sixteenthCLK~clkctrl_outclk\,
	datain => \inst2|state~47_combout\,
	aclr => \reset~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst2|state.PLAY8SIXTEENTH~regout\);

-- Location: LCCOMB_X46_Y27_N8
\inst2|Selector6~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst2|Selector6~0_combout\ = (\inst2|currMeasure\(9) & \inst2|state.RESET1~regout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst2|currMeasure\(9),
	datad => \inst2|state.RESET1~regout\,
	combout => \inst2|Selector6~0_combout\);

-- Location: PIN_L1,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\mem_data[9]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_mem_data(9),
	combout => \mem_data~combout\(9));

-- Location: LCCOMB_X49_Y27_N28
\SWITCHES4|lpm_ff_component|dffs[9]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \SWITCHES4|lpm_ff_component|dffs[9]~feeder_combout\ = \mem_data~combout\(9)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \mem_data~combout\(9),
	combout => \SWITCHES4|lpm_ff_component|dffs[9]~feeder_combout\);

-- Location: LCFF_X49_Y27_N29
\SWITCHES4|lpm_ff_component|dffs[9]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \inst14~clkctrl_outclk\,
	datain => \SWITCHES4|lpm_ff_component|dffs[9]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \SWITCHES4|lpm_ff_component|dffs\(9));

-- Location: LCCOMB_X49_Y27_N8
\inst2|nextMeasure[9]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst2|nextMeasure[9]~feeder_combout\ = \SWITCHES4|lpm_ff_component|dffs\(9)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \SWITCHES4|lpm_ff_component|dffs\(9),
	combout => \inst2|nextMeasure[9]~feeder_combout\);

-- Location: LCFF_X49_Y27_N9
\inst2|nextMeasure[9]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ALT_INV_clock~clkctrl_outclk\,
	datain => \inst2|nextMeasure[9]~feeder_combout\,
	aclr => \reset~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst2|nextMeasure\(9));

-- Location: LCFF_X46_Y27_N9
\inst2|currMeasure[9]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \inst2|sixteenthCLK~clkctrl_outclk\,
	datain => \inst2|Selector6~0_combout\,
	sdata => \inst2|nextMeasure\(9),
	sload => \inst2|state.LOAD_NEXT_MEASURE~regout\,
	ena => \ALT_INV_reset~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst2|currMeasure\(9));

-- Location: LCCOMB_X46_Y27_N22
\inst2|Selector7~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst2|Selector7~0_combout\ = (\inst2|currMeasure\(8) & \inst2|state.RESET1~regout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst2|currMeasure\(8),
	datad => \inst2|state.RESET1~regout\,
	combout => \inst2|Selector7~0_combout\);

-- Location: PIN_L2,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\mem_data[8]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_mem_data(8),
	combout => \mem_data~combout\(8));

-- Location: LCCOMB_X49_Y27_N18
\SWITCHES4|lpm_ff_component|dffs[8]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \SWITCHES4|lpm_ff_component|dffs[8]~feeder_combout\ = \mem_data~combout\(8)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \mem_data~combout\(8),
	combout => \SWITCHES4|lpm_ff_component|dffs[8]~feeder_combout\);

-- Location: LCFF_X49_Y27_N19
\SWITCHES4|lpm_ff_component|dffs[8]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \inst14~clkctrl_outclk\,
	datain => \SWITCHES4|lpm_ff_component|dffs[8]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \SWITCHES4|lpm_ff_component|dffs\(8));

-- Location: LCCOMB_X49_Y27_N26
\inst2|nextMeasure[8]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst2|nextMeasure[8]~feeder_combout\ = \SWITCHES4|lpm_ff_component|dffs\(8)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \SWITCHES4|lpm_ff_component|dffs\(8),
	combout => \inst2|nextMeasure[8]~feeder_combout\);

-- Location: LCFF_X49_Y27_N27
\inst2|nextMeasure[8]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ALT_INV_clock~clkctrl_outclk\,
	datain => \inst2|nextMeasure[8]~feeder_combout\,
	aclr => \reset~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst2|nextMeasure\(8));

-- Location: LCFF_X46_Y27_N23
\inst2|currMeasure[8]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \inst2|sixteenthCLK~clkctrl_outclk\,
	datain => \inst2|Selector7~0_combout\,
	sdata => \inst2|nextMeasure\(8),
	sload => \inst2|state.LOAD_NEXT_MEASURE~regout\,
	ena => \ALT_INV_reset~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst2|currMeasure\(8));

-- Location: LCCOMB_X46_Y27_N24
\inst2|Selector16~5\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst2|Selector16~5_combout\ = (\inst2|state.PLAY7SIXTEENTH~regout\ & ((\inst2|currMeasure\(9)) # ((\inst2|state.PLAY8SIXTEENTH~regout\ & \inst2|currMeasure\(8))))) # (!\inst2|state.PLAY7SIXTEENTH~regout\ & (\inst2|state.PLAY8SIXTEENTH~regout\ & 
-- ((\inst2|currMeasure\(8)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|state.PLAY7SIXTEENTH~regout\,
	datab => \inst2|state.PLAY8SIXTEENTH~regout\,
	datac => \inst2|currMeasure\(9),
	datad => \inst2|currMeasure\(8),
	combout => \inst2|Selector16~5_combout\);

-- Location: LCCOMB_X45_Y27_N30
\inst2|Selector16~7\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst2|Selector16~7_combout\ = (\inst2|Selector16~6_combout\) # ((\inst2|Selector16~5_combout\) # ((\inst2|currMeasure\(10) & \inst2|state.PLAY6SIXTEENTH~regout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|currMeasure\(10),
	datab => \inst2|state.PLAY6SIXTEENTH~regout\,
	datac => \inst2|Selector16~6_combout\,
	datad => \inst2|Selector16~5_combout\,
	combout => \inst2|Selector16~7_combout\);

-- Location: LCCOMB_X44_Y27_N28
\inst2|Selector16~10\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst2|Selector16~10_combout\ = (\inst2|Selector16~8_combout\) # ((\inst2|Selector16~9_combout\) # ((\inst2|Selector16~4_combout\) # (\inst2|Selector16~7_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|Selector16~8_combout\,
	datab => \inst2|Selector16~9_combout\,
	datac => \inst2|Selector16~4_combout\,
	datad => \inst2|Selector16~7_combout\,
	combout => \inst2|Selector16~10_combout\);

-- Location: LCFF_X44_Y27_N29
\inst2|piece1Hit\ : cycloneii_lcell_ff
PORT MAP (
	clk => \inst2|sixteenthCLK~clkctrl_outclk\,
	datain => \inst2|Selector16~10_combout\,
	ena => \ALT_INV_reset~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst2|piece1Hit~regout\);

-- Location: LCCOMB_X44_Y27_N26
\inst2|piece1Polar~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst2|piece1Polar~0_combout\ = !\inst2|Selector16~10_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst2|Selector16~10_combout\,
	combout => \inst2|piece1Polar~0_combout\);

-- Location: LCFF_X44_Y27_N27
\inst2|piece1Polar\ : cycloneii_lcell_ff
PORT MAP (
	clk => \inst2|sixteenthCLK~clkctrl_outclk\,
	datain => \inst2|piece1Polar~0_combout\,
	ena => \ALT_INV_reset~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst2|piece1Polar~regout\);

-- Location: PIN_M1,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\clock~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_clock,
	combout => \clock~combout\);

-- Location: CLKCTRL_G3
\clock~clkctrl\ : cycloneii_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \clock~clkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \clock~clkctrl_outclk\);

-- Location: PIN_B10,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\mem_addr[2]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_mem_addr(2),
	combout => \mem_addr~combout\(2));

-- Location: PIN_A11,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\mem_addr[0]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_mem_addr(0),
	combout => \mem_addr~combout\(0));

-- Location: PIN_E11,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\mem_addr[3]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_mem_addr(3),
	combout => \mem_addr~combout\(3));

-- Location: LCCOMB_X43_Y29_N22
\inst20~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst20~0_combout\ = (((\reset~combout\) # (!\mem_addr~combout\(3))) # (!\mem_addr~combout\(0))) # (!\mem_addr~combout\(1))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111011111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mem_addr~combout\(1),
	datab => \mem_addr~combout\(0),
	datac => \reset~combout\,
	datad => \mem_addr~combout\(3),
	combout => \inst20~0_combout\);

-- Location: LCCOMB_X43_Y29_N12
inst20 : cycloneii_lcell_comb
-- Equation(s):
-- \inst20~combout\ = (\inst20~0_combout\) # (!\mem_addr~combout\(2))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \mem_addr~combout\(2),
	datad => \inst20~0_combout\,
	combout => \inst20~combout\);

-- Location: PIN_A10,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\mem_write~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_mem_write,
	combout => \mem_write~combout\);

-- Location: LCCOMB_X30_Y32_N12
\inst18~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst18~0_combout\ = (\mem_write~combout\ & (\mem_addr~combout\(2) & \mem_addr~combout\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \mem_write~combout\,
	datac => \mem_addr~combout\(2),
	datad => \mem_addr~combout\(3),
	combout => \inst18~0_combout\);

-- Location: LCCOMB_X43_Y29_N24
\inst16~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst16~0_combout\ = (\mem_addr~combout\(1) & (\mem_addr~combout\(0) & \inst18~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mem_addr~combout\(1),
	datac => \mem_addr~combout\(0),
	datad => \inst18~0_combout\,
	combout => \inst16~0_combout\);

-- Location: LCFF_X43_Y29_N13
\inst11|output\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ALT_INV_clock~clkctrl_outclk\,
	sdata => \mem_data~combout\(1),
	aclr => \inst20~combout\,
	sload => VCC,
	ena => \inst16~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst11|output~regout\);

-- Location: LCCOMB_X46_Y27_N12
\inst2|Selector0~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst2|Selector0~0_combout\ = (\inst2|currMeasure\(15) & \inst2|state.RESET1~regout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst2|currMeasure\(15),
	datad => \inst2|state.RESET1~regout\,
	combout => \inst2|Selector0~0_combout\);

-- Location: PIN_F15,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\mem_data[15]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_mem_data(15),
	combout => \mem_data~combout\(15));

-- Location: LCCOMB_X49_Y27_N0
\SWITCHES4|lpm_ff_component|dffs[15]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \SWITCHES4|lpm_ff_component|dffs[15]~feeder_combout\ = \mem_data~combout\(15)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \mem_data~combout\(15),
	combout => \SWITCHES4|lpm_ff_component|dffs[15]~feeder_combout\);

-- Location: LCFF_X49_Y27_N1
\SWITCHES4|lpm_ff_component|dffs[15]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \inst14~clkctrl_outclk\,
	datain => \SWITCHES4|lpm_ff_component|dffs[15]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \SWITCHES4|lpm_ff_component|dffs\(15));

-- Location: LCCOMB_X49_Y27_N16
\inst2|nextMeasure[15]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst2|nextMeasure[15]~feeder_combout\ = \SWITCHES4|lpm_ff_component|dffs\(15)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \SWITCHES4|lpm_ff_component|dffs\(15),
	combout => \inst2|nextMeasure[15]~feeder_combout\);

-- Location: LCFF_X49_Y27_N17
\inst2|nextMeasure[15]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ALT_INV_clock~clkctrl_outclk\,
	datain => \inst2|nextMeasure[15]~feeder_combout\,
	aclr => \reset~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst2|nextMeasure\(15));

-- Location: LCFF_X46_Y27_N13
\inst2|currMeasure[15]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \inst2|sixteenthCLK~clkctrl_outclk\,
	datain => \inst2|Selector0~0_combout\,
	sdata => \inst2|nextMeasure\(15),
	sload => \inst2|state.LOAD_NEXT_MEASURE~regout\,
	ena => \ALT_INV_reset~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst2|currMeasure\(15));

-- Location: LCCOMB_X47_Y27_N8
\inst2|Selector2~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst2|Selector2~0_combout\ = (\inst2|currMeasure\(13) & \inst2|state.RESET1~regout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst2|currMeasure\(13),
	datad => \inst2|state.RESET1~regout\,
	combout => \inst2|Selector2~0_combout\);

-- Location: PIN_E21,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\mem_data[13]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_mem_data(13),
	combout => \mem_data~combout\(13));

-- Location: LCFF_X48_Y27_N29
\SWITCHES4|lpm_ff_component|dffs[13]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \inst14~clkctrl_outclk\,
	sdata => \mem_data~combout\(13),
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \SWITCHES4|lpm_ff_component|dffs\(13));

-- Location: LCCOMB_X48_Y27_N14
\inst2|nextMeasure[13]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst2|nextMeasure[13]~feeder_combout\ = \SWITCHES4|lpm_ff_component|dffs\(13)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \SWITCHES4|lpm_ff_component|dffs\(13),
	combout => \inst2|nextMeasure[13]~feeder_combout\);

-- Location: LCFF_X48_Y27_N15
\inst2|nextMeasure[13]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ALT_INV_clock~clkctrl_outclk\,
	datain => \inst2|nextMeasure[13]~feeder_combout\,
	aclr => \reset~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst2|nextMeasure\(13));

-- Location: LCFF_X47_Y27_N9
\inst2|currMeasure[13]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \inst2|sixteenthCLK~clkctrl_outclk\,
	datain => \inst2|Selector2~0_combout\,
	sdata => \inst2|nextMeasure\(13),
	sload => \inst2|state.LOAD_NEXT_MEASURE~regout\,
	ena => \ALT_INV_reset~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst2|currMeasure\(13));

-- Location: LCCOMB_X47_Y27_N26
\inst2|Selector3~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst2|Selector3~0_combout\ = (\inst2|currMeasure\(12) & \inst2|state.RESET1~regout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst2|currMeasure\(12),
	datad => \inst2|state.RESET1~regout\,
	combout => \inst2|Selector3~0_combout\);

-- Location: PIN_H14,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\mem_data[12]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_mem_data(12),
	combout => \mem_data~combout\(12));

-- Location: LCCOMB_X48_Y27_N2
\SWITCHES4|lpm_ff_component|dffs[12]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \SWITCHES4|lpm_ff_component|dffs[12]~feeder_combout\ = \mem_data~combout\(12)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \mem_data~combout\(12),
	combout => \SWITCHES4|lpm_ff_component|dffs[12]~feeder_combout\);

-- Location: LCFF_X48_Y27_N3
\SWITCHES4|lpm_ff_component|dffs[12]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \inst14~clkctrl_outclk\,
	datain => \SWITCHES4|lpm_ff_component|dffs[12]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \SWITCHES4|lpm_ff_component|dffs\(12));

-- Location: LCCOMB_X48_Y27_N16
\inst2|nextMeasure[12]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst2|nextMeasure[12]~feeder_combout\ = \SWITCHES4|lpm_ff_component|dffs\(12)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \SWITCHES4|lpm_ff_component|dffs\(12),
	combout => \inst2|nextMeasure[12]~feeder_combout\);

-- Location: LCFF_X48_Y27_N17
\inst2|nextMeasure[12]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ALT_INV_clock~clkctrl_outclk\,
	datain => \inst2|nextMeasure[12]~feeder_combout\,
	aclr => \reset~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst2|nextMeasure\(12));

-- Location: LCFF_X47_Y27_N27
\inst2|currMeasure[12]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \inst2|sixteenthCLK~clkctrl_outclk\,
	datain => \inst2|Selector3~0_combout\,
	sdata => \inst2|nextMeasure\(12),
	sload => \inst2|state.LOAD_NEXT_MEASURE~regout\,
	ena => \ALT_INV_reset~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst2|currMeasure\(12));

-- Location: LCCOMB_X46_Y27_N6
\inst2|Selector5~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst2|Selector5~0_combout\ = (\inst2|currMeasure\(10) & \inst2|state.RESET1~regout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst2|currMeasure\(10),
	datad => \inst2|state.RESET1~regout\,
	combout => \inst2|Selector5~0_combout\);

-- Location: PIN_F13,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\mem_data[10]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_mem_data(10),
	combout => \mem_data~combout\(10));

-- Location: LCCOMB_X45_Y27_N10
\SWITCHES4|lpm_ff_component|dffs[10]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \SWITCHES4|lpm_ff_component|dffs[10]~feeder_combout\ = \mem_data~combout\(10)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \mem_data~combout\(10),
	combout => \SWITCHES4|lpm_ff_component|dffs[10]~feeder_combout\);

-- Location: LCFF_X45_Y27_N11
\SWITCHES4|lpm_ff_component|dffs[10]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \inst14~clkctrl_outclk\,
	datain => \SWITCHES4|lpm_ff_component|dffs[10]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \SWITCHES4|lpm_ff_component|dffs\(10));

-- Location: LCCOMB_X45_Y27_N4
\inst2|nextMeasure[10]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst2|nextMeasure[10]~feeder_combout\ = \SWITCHES4|lpm_ff_component|dffs\(10)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \SWITCHES4|lpm_ff_component|dffs\(10),
	combout => \inst2|nextMeasure[10]~feeder_combout\);

-- Location: LCFF_X45_Y27_N5
\inst2|nextMeasure[10]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ALT_INV_clock~clkctrl_outclk\,
	datain => \inst2|nextMeasure[10]~feeder_combout\,
	aclr => \reset~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst2|nextMeasure\(10));

-- Location: LCFF_X46_Y27_N7
\inst2|currMeasure[10]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \inst2|sixteenthCLK~clkctrl_outclk\,
	datain => \inst2|Selector5~0_combout\,
	sdata => \inst2|nextMeasure\(10),
	sload => \inst2|state.LOAD_NEXT_MEASURE~regout\,
	ena => \ALT_INV_reset~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst2|currMeasure\(10));

-- Location: LCCOMB_X44_Y27_N8
\inst2|Selector10~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst2|Selector10~0_combout\ = (\inst2|currMeasure\(5) & \inst2|state.RESET1~regout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst2|currMeasure\(5),
	datad => \inst2|state.RESET1~regout\,
	combout => \inst2|Selector10~0_combout\);

-- Location: PIN_C19,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\mem_data[5]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_mem_data(5),
	combout => \mem_data~combout\(5));

-- Location: LCCOMB_X45_Y27_N8
\SWITCHES4|lpm_ff_component|dffs[5]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \SWITCHES4|lpm_ff_component|dffs[5]~feeder_combout\ = \mem_data~combout\(5)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \mem_data~combout\(5),
	combout => \SWITCHES4|lpm_ff_component|dffs[5]~feeder_combout\);

-- Location: LCFF_X45_Y27_N9
\SWITCHES4|lpm_ff_component|dffs[5]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \inst14~clkctrl_outclk\,
	datain => \SWITCHES4|lpm_ff_component|dffs[5]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \SWITCHES4|lpm_ff_component|dffs\(5));

-- Location: LCFF_X45_Y27_N15
\inst2|nextMeasure[5]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ALT_INV_clock~clkctrl_outclk\,
	sdata => \SWITCHES4|lpm_ff_component|dffs\(5),
	aclr => \reset~clkctrl_outclk\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst2|nextMeasure\(5));

-- Location: LCFF_X44_Y27_N9
\inst2|currMeasure[5]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \inst2|sixteenthCLK~clkctrl_outclk\,
	datain => \inst2|Selector10~0_combout\,
	sdata => \inst2|nextMeasure\(5),
	sload => \inst2|state.LOAD_NEXT_MEASURE~regout\,
	ena => \ALT_INV_reset~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst2|currMeasure\(5));

-- Location: LCCOMB_X44_Y27_N2
\inst2|Selector11~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst2|Selector11~0_combout\ = (\inst2|currMeasure\(4) & \inst2|state.RESET1~regout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst2|currMeasure\(4),
	datad => \inst2|state.RESET1~regout\,
	combout => \inst2|Selector11~0_combout\);

-- Location: PIN_G18,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\mem_data[4]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_mem_data(4),
	combout => \mem_data~combout\(4));

-- Location: LCCOMB_X45_Y27_N22
\SWITCHES4|lpm_ff_component|dffs[4]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \SWITCHES4|lpm_ff_component|dffs[4]~feeder_combout\ = \mem_data~combout\(4)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \mem_data~combout\(4),
	combout => \SWITCHES4|lpm_ff_component|dffs[4]~feeder_combout\);

-- Location: LCFF_X45_Y27_N23
\SWITCHES4|lpm_ff_component|dffs[4]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \inst14~clkctrl_outclk\,
	datain => \SWITCHES4|lpm_ff_component|dffs[4]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \SWITCHES4|lpm_ff_component|dffs\(4));

-- Location: LCCOMB_X45_Y27_N16
\inst2|nextMeasure[4]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst2|nextMeasure[4]~feeder_combout\ = \SWITCHES4|lpm_ff_component|dffs\(4)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \SWITCHES4|lpm_ff_component|dffs\(4),
	combout => \inst2|nextMeasure[4]~feeder_combout\);

-- Location: LCFF_X45_Y27_N17
\inst2|nextMeasure[4]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ALT_INV_clock~clkctrl_outclk\,
	datain => \inst2|nextMeasure[4]~feeder_combout\,
	aclr => \reset~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst2|nextMeasure\(4));

-- Location: LCFF_X44_Y27_N3
\inst2|currMeasure[4]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \inst2|sixteenthCLK~clkctrl_outclk\,
	datain => \inst2|Selector11~0_combout\,
	sdata => \inst2|nextMeasure\(4),
	sload => \inst2|state.LOAD_NEXT_MEASURE~regout\,
	ena => \ALT_INV_reset~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst2|currMeasure\(4));

-- Location: LCCOMB_X44_Y27_N10
\inst2|Selector13~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst2|Selector13~0_combout\ = (\inst2|currMeasure\(2) & \inst2|state.RESET1~regout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst2|currMeasure\(2),
	datad => \inst2|state.RESET1~regout\,
	combout => \inst2|Selector13~0_combout\);

-- Location: PIN_G16,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\mem_data[2]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_mem_data(2),
	combout => \mem_data~combout\(2));

-- Location: LCFF_X45_Y27_N25
\SWITCHES4|lpm_ff_component|dffs[2]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \inst14~clkctrl_outclk\,
	sdata => \mem_data~combout\(2),
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \SWITCHES4|lpm_ff_component|dffs\(2));

-- Location: LCFF_X45_Y27_N27
\inst2|nextMeasure[2]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ALT_INV_clock~clkctrl_outclk\,
	sdata => \SWITCHES4|lpm_ff_component|dffs\(2),
	aclr => \reset~clkctrl_outclk\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst2|nextMeasure\(2));

-- Location: LCFF_X44_Y27_N11
\inst2|currMeasure[2]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \inst2|sixteenthCLK~clkctrl_outclk\,
	datain => \inst2|Selector13~0_combout\,
	sdata => \inst2|nextMeasure\(2),
	sload => \inst2|state.LOAD_NEXT_MEASURE~regout\,
	ena => \ALT_INV_reset~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst2|currMeasure\(2));

-- Location: PIN_M8,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\SW[9]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_SW(9),
	combout => \SW~combout\(9));

-- Location: LCFF_X1_Y12_N1
\SWITCHS|lpm_ff_component|dffs[9]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ALT_INV_clock~clkctrl_outclk\,
	sdata => \SW~combout\(9),
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \SWITCHS|lpm_ff_component|dffs\(9));

-- Location: PIN_D11,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\mem_addr[1]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_mem_addr(1),
	combout => \mem_addr~combout\(1));

-- Location: LCCOMB_X30_Y32_N18
\inst21|Mux6~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst21|Mux6~0_combout\ = (!\mem_addr~combout\(0) & (\mem_addr~combout\(3) & (!\mem_addr~combout\(2) & !\mem_addr~combout\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mem_addr~combout\(0),
	datab => \mem_addr~combout\(3),
	datac => \mem_addr~combout\(2),
	datad => \mem_addr~combout\(1),
	combout => \inst21|Mux6~0_combout\);

-- Location: LCCOMB_X1_Y12_N0
\inst21|Mux6~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst21|Mux6~1_combout\ = (\SWITCHS|lpm_ff_component|dffs\(9) & \inst21|Mux6~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \SWITCHS|lpm_ff_component|dffs\(9),
	datad => \inst21|Mux6~0_combout\,
	combout => \inst21|Mux6~1_combout\);

-- Location: PIN_M7,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\SW[8]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_SW(8),
	combout => \SW~combout\(8));

-- Location: LCFF_X1_Y12_N11
\SWITCHS|lpm_ff_component|dffs[8]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ALT_INV_clock~clkctrl_outclk\,
	sdata => \SW~combout\(8),
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \SWITCHS|lpm_ff_component|dffs\(8));

-- Location: LCCOMB_X1_Y12_N10
\inst21|Mux7~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst21|Mux7~0_combout\ = (\SWITCHS|lpm_ff_component|dffs\(8) & \inst21|Mux6~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \SWITCHS|lpm_ff_component|dffs\(8),
	datad => \inst21|Mux6~0_combout\,
	combout => \inst21|Mux7~0_combout\);

-- Location: PIN_N4,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\SW[7]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_SW(7),
	combout => \SW~combout\(7));

-- Location: LCFF_X1_Y12_N13
\SWITCHS|lpm_ff_component|dffs[7]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ALT_INV_clock~clkctrl_outclk\,
	sdata => \SW~combout\(7),
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \SWITCHS|lpm_ff_component|dffs\(7));

-- Location: LCCOMB_X1_Y12_N12
\inst21|Mux8~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst21|Mux8~0_combout\ = (\SWITCHS|lpm_ff_component|dffs\(7) & \inst21|Mux6~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \SWITCHS|lpm_ff_component|dffs\(7),
	datad => \inst21|Mux6~0_combout\,
	combout => \inst21|Mux8~0_combout\);

-- Location: PIN_N5,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\SW[6]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_SW(6),
	combout => \SW~combout\(6));

-- Location: LCFF_X1_Y12_N15
\SWITCHS|lpm_ff_component|dffs[6]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ALT_INV_clock~clkctrl_outclk\,
	sdata => \SW~combout\(6),
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \SWITCHS|lpm_ff_component|dffs\(6));

-- Location: LCCOMB_X1_Y12_N14
\inst21|Mux9~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst21|Mux9~0_combout\ = (\SWITCHS|lpm_ff_component|dffs\(6) & \inst21|Mux6~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \SWITCHS|lpm_ff_component|dffs\(6),
	datad => \inst21|Mux6~0_combout\,
	combout => \inst21|Mux9~0_combout\);

-- Location: PIN_P1,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\SW[5]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_SW(5),
	combout => \SW~combout\(5));

-- Location: LCFF_X1_Y12_N25
\SWITCHS|lpm_ff_component|dffs[5]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ALT_INV_clock~clkctrl_outclk\,
	sdata => \SW~combout\(5),
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \SWITCHS|lpm_ff_component|dffs\(5));

-- Location: LCCOMB_X1_Y12_N24
\inst21|Mux10~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst21|Mux10~0_combout\ = (\SWITCHS|lpm_ff_component|dffs\(5) & \inst21|Mux6~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \SWITCHS|lpm_ff_component|dffs\(5),
	datad => \inst21|Mux6~0_combout\,
	combout => \inst21|Mux10~0_combout\);

-- Location: PIN_R6,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\SW[4]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_SW(4),
	combout => \SW~combout\(4));

-- Location: LCFF_X1_Y12_N31
\SWITCHS|lpm_ff_component|dffs[4]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ALT_INV_clock~clkctrl_outclk\,
	sdata => \SW~combout\(4),
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \SWITCHS|lpm_ff_component|dffs\(4));

-- Location: LCCOMB_X1_Y12_N30
\inst21|Mux11~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst21|Mux11~0_combout\ = (\SWITCHS|lpm_ff_component|dffs\(4) & \inst21|Mux6~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \SWITCHS|lpm_ff_component|dffs\(4),
	datad => \inst21|Mux6~0_combout\,
	combout => \inst21|Mux11~0_combout\);

-- Location: LCCOMB_X30_Y32_N26
\inst3|LPM_DECODE_component|auto_generated|w_anode51w[3]~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst3|LPM_DECODE_component|auto_generated|w_anode51w[3]~0_combout\ = (!\mem_addr~combout\(0) & (!\mem_addr~combout\(3) & (\mem_addr~combout\(2) & !\mem_addr~combout\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mem_addr~combout\(0),
	datab => \mem_addr~combout\(3),
	datac => \mem_addr~combout\(2),
	datad => \mem_addr~combout\(1),
	combout => \inst3|LPM_DECODE_component|auto_generated|w_anode51w[3]~0_combout\);

-- Location: PIN_U2,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\KEY[3]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_KEY(3),
	combout => \KEY~combout\(3));

-- Location: LCFF_X1_Y12_N3
\PUSH_BUTTON|lpm_ff_component|dffs[3]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ALT_INV_clock~clkctrl_outclk\,
	sdata => \KEY~combout\(3),
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \PUSH_BUTTON|lpm_ff_component|dffs\(3));

-- Location: LCCOMB_X1_Y12_N2
\inst21|Mux12~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst21|Mux12~0_combout\ = (\inst21|Mux6~0_combout\ & (\SWITCHS|lpm_ff_component|dffs\(3))) # (!\inst21|Mux6~0_combout\ & (((\inst3|LPM_DECODE_component|auto_generated|w_anode51w[3]~0_combout\ & \PUSH_BUTTON|lpm_ff_component|dffs\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SWITCHS|lpm_ff_component|dffs\(3),
	datab => \inst3|LPM_DECODE_component|auto_generated|w_anode51w[3]~0_combout\,
	datac => \PUSH_BUTTON|lpm_ff_component|dffs\(3),
	datad => \inst21|Mux6~0_combout\,
	combout => \inst21|Mux12~0_combout\);

-- Location: LCCOMB_X30_Y32_N0
\inst3|LPM_DECODE_component|auto_generated|w_anode122w[3]~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst3|LPM_DECODE_component|auto_generated|w_anode122w[3]~0_combout\ = (\mem_addr~combout\(0) & (\mem_addr~combout\(3) & (!\mem_addr~combout\(2) & \mem_addr~combout\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mem_addr~combout\(0),
	datab => \mem_addr~combout\(3),
	datac => \mem_addr~combout\(2),
	datad => \mem_addr~combout\(1),
	combout => \inst3|LPM_DECODE_component|auto_generated|w_anode122w[3]~0_combout\);

-- Location: LCCOMB_X1_Y12_N16
\inst21|Mux12~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst21|Mux12~1_combout\ = (\inst21|Mux12~0_combout\ & !\inst3|LPM_DECODE_component|auto_generated|w_anode122w[3]~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst21|Mux12~0_combout\,
	datad => \inst3|LPM_DECODE_component|auto_generated|w_anode122w[3]~0_combout\,
	combout => \inst21|Mux12~1_combout\);

-- Location: PIN_P3,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\KEY[2]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_KEY(2),
	combout => \KEY~combout\(2));

-- Location: LCFF_X1_Y12_N27
\PUSH_BUTTON|lpm_ff_component|dffs[2]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ALT_INV_clock~clkctrl_outclk\,
	sdata => \KEY~combout\(2),
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \PUSH_BUTTON|lpm_ff_component|dffs\(2));

-- Location: PIN_R2,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\SW[2]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_SW(2),
	combout => \SW~combout\(2));

-- Location: LCFF_X1_Y12_N5
\SWITCHS|lpm_ff_component|dffs[2]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ALT_INV_clock~clkctrl_outclk\,
	sdata => \SW~combout\(2),
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \SWITCHS|lpm_ff_component|dffs\(2));

-- Location: LCCOMB_X1_Y12_N4
\inst21|Mux13~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst21|Mux13~0_combout\ = (\inst21|Mux6~0_combout\ & (((\SWITCHS|lpm_ff_component|dffs\(2))))) # (!\inst21|Mux6~0_combout\ & (\PUSH_BUTTON|lpm_ff_component|dffs\(2) & ((\inst3|LPM_DECODE_component|auto_generated|w_anode51w[3]~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst21|Mux6~0_combout\,
	datab => \PUSH_BUTTON|lpm_ff_component|dffs\(2),
	datac => \SWITCHS|lpm_ff_component|dffs\(2),
	datad => \inst3|LPM_DECODE_component|auto_generated|w_anode51w[3]~0_combout\,
	combout => \inst21|Mux13~0_combout\);

-- Location: LCCOMB_X1_Y12_N28
\inst21|Mux13~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst21|Mux13~1_combout\ = (\inst21|Mux13~0_combout\ & !\inst3|LPM_DECODE_component|auto_generated|w_anode122w[3]~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst21|Mux13~0_combout\,
	datad => \inst3|LPM_DECODE_component|auto_generated|w_anode122w[3]~0_combout\,
	combout => \inst21|Mux13~1_combout\);

-- Location: PIN_P5,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\SW[1]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_SW(1),
	combout => \SW~combout\(1));

-- Location: LCCOMB_X1_Y12_N18
\SWITCHS|lpm_ff_component|dffs[1]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \SWITCHS|lpm_ff_component|dffs[1]~feeder_combout\ = \SW~combout\(1)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \SW~combout\(1),
	combout => \SWITCHS|lpm_ff_component|dffs[1]~feeder_combout\);

-- Location: LCFF_X1_Y12_N19
\SWITCHS|lpm_ff_component|dffs[1]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ALT_INV_clock~clkctrl_outclk\,
	datain => \SWITCHS|lpm_ff_component|dffs[1]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \SWITCHS|lpm_ff_component|dffs\(1));

-- Location: PIN_R8,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\KEY[1]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_KEY(1),
	combout => \KEY~combout\(1));

-- Location: LCFF_X1_Y12_N21
\PUSH_BUTTON|lpm_ff_component|dffs[1]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ALT_INV_clock~clkctrl_outclk\,
	sdata => \KEY~combout\(1),
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \PUSH_BUTTON|lpm_ff_component|dffs\(1));

-- Location: LCCOMB_X1_Y12_N20
\inst21|Mux14~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst21|Mux14~0_combout\ = (\inst21|Mux6~0_combout\ & (\SWITCHS|lpm_ff_component|dffs\(1))) # (!\inst21|Mux6~0_combout\ & (((\PUSH_BUTTON|lpm_ff_component|dffs\(1) & \inst3|LPM_DECODE_component|auto_generated|w_anode51w[3]~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst21|Mux6~0_combout\,
	datab => \SWITCHS|lpm_ff_component|dffs\(1),
	datac => \PUSH_BUTTON|lpm_ff_component|dffs\(1),
	datad => \inst3|LPM_DECODE_component|auto_generated|w_anode51w[3]~0_combout\,
	combout => \inst21|Mux14~0_combout\);

-- Location: LCCOMB_X1_Y12_N22
\inst21|Mux14~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst21|Mux14~1_combout\ = (\inst21|Mux14~0_combout\ & !\inst3|LPM_DECODE_component|auto_generated|w_anode122w[3]~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst21|Mux14~0_combout\,
	datad => \inst3|LPM_DECODE_component|auto_generated|w_anode122w[3]~0_combout\,
	combout => \inst21|Mux14~1_combout\);

-- Location: PIN_R5,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\KEY[0]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_KEY(0),
	combout => \KEY~combout\(0));

-- Location: LCFF_X1_Y12_N9
\PUSH_BUTTON|lpm_ff_component|dffs[0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ALT_INV_clock~clkctrl_outclk\,
	sdata => \KEY~combout\(0),
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \PUSH_BUTTON|lpm_ff_component|dffs\(0));

-- Location: LCFF_X43_Y29_N17
\inst10|output\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ALT_INV_clock~clkctrl_outclk\,
	sdata => \mem_data~combout\(0),
	aclr => \reset~clkctrl_outclk\,
	sload => VCC,
	ena => \inst16~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst10|output~regout\);

-- Location: LCCOMB_X43_Y29_N28
\inst4|counter_0_sel[1]~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst4|counter_0_sel[1]~0_combout\ = (!\reset~combout\ & (!\inst11|output~regout\ & \inst10|output~regout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \reset~combout\,
	datab => \inst11|output~regout\,
	datad => \inst10|output~regout\,
	combout => \inst4|counter_0_sel[1]~0_combout\);

-- Location: LCCOMB_X48_Y29_N20
\inst4|counter_0_sel[1]~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst4|counter_0_sel[1]~1_combout\ = (\inst4|counter_0_sel[1]~0_combout\ & (\inst4|dataa\(32) $ (((\inst4|HighClock|lab7_task2Sim|sim31|Cout~0_combout\))))) # (!\inst4|counter_0_sel[1]~0_combout\ & (((\inst4|counter_0_sel\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111010010111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|dataa\(32),
	datab => \inst4|counter_0_sel[1]~0_combout\,
	datac => \inst4|counter_0_sel\(1),
	datad => \inst4|HighClock|lab7_task2Sim|sim31|Cout~0_combout\,
	combout => \inst4|counter_0_sel[1]~1_combout\);

-- Location: LCFF_X48_Y29_N21
\inst4|counter_0_sel[1]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ALT_INV_clock~clkctrl_outclk\,
	datain => \inst4|counter_0_sel[1]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst4|counter_0_sel\(1));

-- Location: LCCOMB_X47_Y29_N28
\inst4|datab[0]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst4|datab[0]~feeder_combout\ = VCC

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	combout => \inst4|datab[0]~feeder_combout\);

-- Location: LCCOMB_X43_Y29_N14
\inst4|process_0~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst4|process_0~0_combout\ = (\reset~combout\) # (\inst11|output~regout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \reset~combout\,
	datad => \inst11|output~regout\,
	combout => \inst4|process_0~0_combout\);

-- Location: LCCOMB_X43_Y29_N30
\inst4|ti0~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst4|ti0~2_combout\ = (!\reset~combout\ & \inst10|output~regout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \reset~combout\,
	datad => \inst10|output~regout\,
	combout => \inst4|ti0~2_combout\);

-- Location: LCFF_X47_Y29_N29
\inst4|datab[0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ALT_INV_clock~clkctrl_outclk\,
	datain => \inst4|datab[0]~feeder_combout\,
	aclr => \inst4|process_0~0_combout\,
	ena => \inst4|ti0~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst4|datab\(0));

-- Location: LCCOMB_X47_Y29_N12
\inst4|countersim|Mux31~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst4|countersim|Mux31~1_combout\ = (!\inst4|counter_0_sel\(1) & (\inst4|dataa\(1) $ (((\inst4|dataa\(0) & \inst4|datab\(0))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|dataa\(0),
	datab => \inst4|datab\(0),
	datac => \inst4|dataa\(1),
	datad => \inst4|counter_0_sel\(1),
	combout => \inst4|countersim|Mux31~1_combout\);

-- Location: LCFF_X47_Y29_N13
\inst4|dataa[1]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ALT_INV_clock~clkctrl_outclk\,
	datain => \inst4|countersim|Mux31~1_combout\,
	aclr => \inst4|process_0~0_combout\,
	ena => \inst4|ti0~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst4|dataa\(1));

-- Location: LCCOMB_X47_Y29_N14
\inst4|countersim|Mux32~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst4|countersim|Mux32~1_combout\ = (!\inst4|counter_0_sel\(1) & (\inst4|datab\(0) $ (\inst4|dataa\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst4|datab\(0),
	datac => \inst4|dataa\(0),
	datad => \inst4|counter_0_sel\(1),
	combout => \inst4|countersim|Mux32~1_combout\);

-- Location: LCFF_X47_Y29_N15
\inst4|dataa[0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ALT_INV_clock~clkctrl_outclk\,
	datain => \inst4|countersim|Mux32~1_combout\,
	aclr => \inst4|process_0~0_combout\,
	ena => \inst4|ti0~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst4|dataa\(0));

-- Location: LCCOMB_X47_Y29_N6
\inst4|HighClock|lab7_task2Sim|sim1|Cout~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst4|HighClock|lab7_task2Sim|sim1|Cout~0_combout\ = (\inst4|datab\(0) & (\inst4|dataa\(1) & \inst4|dataa\(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst4|datab\(0),
	datac => \inst4|dataa\(1),
	datad => \inst4|dataa\(0),
	combout => \inst4|HighClock|lab7_task2Sim|sim1|Cout~0_combout\);

-- Location: LCCOMB_X47_Y29_N22
\inst4|countersim|Mux30~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst4|countersim|Mux30~1_combout\ = (!\inst4|counter_0_sel\(1) & (\inst4|dataa\(2) $ (\inst4|HighClock|lab7_task2Sim|sim1|Cout~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000100100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|dataa\(2),
	datab => \inst4|counter_0_sel\(1),
	datad => \inst4|HighClock|lab7_task2Sim|sim1|Cout~0_combout\,
	combout => \inst4|countersim|Mux30~1_combout\);

-- Location: LCFF_X47_Y29_N21
\inst4|dataa[2]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ALT_INV_clock~clkctrl_outclk\,
	sdata => \inst4|countersim|Mux30~1_combout\,
	aclr => \inst4|process_0~0_combout\,
	sload => VCC,
	ena => \inst4|ti0~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst4|dataa\(2));

-- Location: LCCOMB_X47_Y29_N30
\inst4|HighClock|lab7_task2Sim|sim2|Cout~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst4|HighClock|lab7_task2Sim|sim2|Cout~0_combout\ = (\inst4|dataa\(0) & (\inst4|datab\(0) & (\inst4|dataa\(2) & \inst4|dataa\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|dataa\(0),
	datab => \inst4|datab\(0),
	datac => \inst4|dataa\(2),
	datad => \inst4|dataa\(1),
	combout => \inst4|HighClock|lab7_task2Sim|sim2|Cout~0_combout\);

-- Location: LCCOMB_X47_Y29_N10
\inst4|countersim|Mux29~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst4|countersim|Mux29~1_combout\ = (!\inst4|counter_0_sel\(1) & (\inst4|dataa\(3) $ (\inst4|HighClock|lab7_task2Sim|sim2|Cout~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001100110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst4|counter_0_sel\(1),
	datac => \inst4|dataa\(3),
	datad => \inst4|HighClock|lab7_task2Sim|sim2|Cout~0_combout\,
	combout => \inst4|countersim|Mux29~1_combout\);

-- Location: LCFF_X47_Y29_N11
\inst4|dataa[3]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ALT_INV_clock~clkctrl_outclk\,
	datain => \inst4|countersim|Mux29~1_combout\,
	aclr => \inst4|process_0~0_combout\,
	ena => \inst4|ti0~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst4|dataa\(3));

-- Location: LCCOMB_X47_Y29_N26
\inst4|countersim|Mux28~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst4|countersim|Mux28~1_combout\ = ((!\inst4|dataa\(1)) # (!\inst4|dataa\(3))) # (!\inst4|dataa\(2))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111011111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|dataa\(2),
	datab => \inst4|dataa\(3),
	datad => \inst4|dataa\(1),
	combout => \inst4|countersim|Mux28~1_combout\);

-- Location: LCCOMB_X47_Y29_N16
\inst4|countersim|Mux28~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst4|countersim|Mux28~2_combout\ = (!\inst4|counter_0_sel\(1) & (\inst4|dataa\(4) $ (((\inst4|HighClock|lab7_task2Sim|sim0|Cout~0_combout\ & !\inst4|countersim|Mux28~1_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000000010010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|HighClock|lab7_task2Sim|sim0|Cout~0_combout\,
	datab => \inst4|counter_0_sel\(1),
	datac => \inst4|dataa\(4),
	datad => \inst4|countersim|Mux28~1_combout\,
	combout => \inst4|countersim|Mux28~2_combout\);

-- Location: LCFF_X47_Y29_N17
\inst4|dataa[4]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ALT_INV_clock~clkctrl_outclk\,
	datain => \inst4|countersim|Mux28~2_combout\,
	aclr => \inst4|process_0~0_combout\,
	ena => \inst4|ti0~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst4|dataa\(4));

-- Location: LCCOMB_X46_Y29_N12
\inst4|HighClock|lab7_task2Sim|sim4|Cout~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst4|HighClock|lab7_task2Sim|sim4|Cout~0_combout\ = (\inst4|dataa\(4) & (\inst4|dataa\(2) & (\inst4|dataa\(3) & \inst4|HighClock|lab7_task2Sim|sim1|Cout~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|dataa\(4),
	datab => \inst4|dataa\(2),
	datac => \inst4|dataa\(3),
	datad => \inst4|HighClock|lab7_task2Sim|sim1|Cout~0_combout\,
	combout => \inst4|HighClock|lab7_task2Sim|sim4|Cout~0_combout\);

-- Location: LCCOMB_X46_Y29_N16
\inst4|countersim|Mux27~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst4|countersim|Mux27~1_combout\ = (!\inst4|counter_0_sel\(1) & (\inst4|dataa\(5) $ (\inst4|HighClock|lab7_task2Sim|sim4|Cout~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000100100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|dataa\(5),
	datab => \inst4|counter_0_sel\(1),
	datad => \inst4|HighClock|lab7_task2Sim|sim4|Cout~0_combout\,
	combout => \inst4|countersim|Mux27~1_combout\);

-- Location: LCFF_X46_Y29_N27
\inst4|dataa[5]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ALT_INV_clock~clkctrl_outclk\,
	sdata => \inst4|countersim|Mux27~1_combout\,
	aclr => \inst4|process_0~0_combout\,
	sload => VCC,
	ena => \inst4|ti0~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst4|dataa\(5));

-- Location: LCCOMB_X47_Y29_N0
\inst4|HighClock|lab7_task2Sim|sim0|Cout~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst4|HighClock|lab7_task2Sim|sim0|Cout~0_combout\ = (\inst4|dataa\(0) & \inst4|datab\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|dataa\(0),
	datad => \inst4|datab\(0),
	combout => \inst4|HighClock|lab7_task2Sim|sim0|Cout~0_combout\);

-- Location: LCCOMB_X46_Y30_N6
\inst4|HighClock|lab7_task2Sim|sim3|Cout~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst4|HighClock|lab7_task2Sim|sim3|Cout~0_combout\ = (\inst4|dataa\(1) & (\inst4|dataa\(2) & (\inst4|dataa\(3) & \inst4|HighClock|lab7_task2Sim|sim0|Cout~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|dataa\(1),
	datab => \inst4|dataa\(2),
	datac => \inst4|dataa\(3),
	datad => \inst4|HighClock|lab7_task2Sim|sim0|Cout~0_combout\,
	combout => \inst4|HighClock|lab7_task2Sim|sim3|Cout~0_combout\);

-- Location: LCCOMB_X46_Y30_N28
\inst4|HighClock|lab7_task2Sim|sim6|Cout~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst4|HighClock|lab7_task2Sim|sim6|Cout~0_combout\ = (\inst4|dataa\(6) & (\inst4|dataa\(4) & (\inst4|dataa\(5) & \inst4|HighClock|lab7_task2Sim|sim3|Cout~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|dataa\(6),
	datab => \inst4|dataa\(4),
	datac => \inst4|dataa\(5),
	datad => \inst4|HighClock|lab7_task2Sim|sim3|Cout~0_combout\,
	combout => \inst4|HighClock|lab7_task2Sim|sim6|Cout~0_combout\);

-- Location: LCCOMB_X46_Y30_N26
\inst4|countersim|Mux25~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst4|countersim|Mux25~1_combout\ = (!\inst4|counter_0_sel\(1) & (\inst4|dataa\(7) $ (\inst4|HighClock|lab7_task2Sim|sim6|Cout~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000101000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|counter_0_sel\(1),
	datab => \inst4|dataa\(7),
	datad => \inst4|HighClock|lab7_task2Sim|sim6|Cout~0_combout\,
	combout => \inst4|countersim|Mux25~1_combout\);

-- Location: LCFF_X46_Y30_N9
\inst4|dataa[7]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ALT_INV_clock~clkctrl_outclk\,
	sdata => \inst4|countersim|Mux25~1_combout\,
	aclr => \inst4|process_0~0_combout\,
	sload => VCC,
	ena => \inst4|ti0~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst4|dataa\(7));

-- Location: LCCOMB_X46_Y29_N4
\inst4|countersim|Mux23~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst4|countersim|Mux23~1_combout\ = (!\inst4|counter_0_sel\(1) & (\inst4|HighClock|lab7_task2Sim|sim8|Cout~0_combout\ $ (\inst4|dataa\(9))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001100110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|HighClock|lab7_task2Sim|sim8|Cout~0_combout\,
	datab => \inst4|dataa\(9),
	datad => \inst4|counter_0_sel\(1),
	combout => \inst4|countersim|Mux23~1_combout\);

-- Location: LCFF_X46_Y29_N15
\inst4|dataa[9]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ALT_INV_clock~clkctrl_outclk\,
	sdata => \inst4|countersim|Mux23~1_combout\,
	aclr => \inst4|process_0~0_combout\,
	sload => VCC,
	ena => \inst4|ti0~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst4|dataa\(9));

-- Location: LCCOMB_X46_Y30_N10
\inst4|HighClock|lab7_task2Sim|sim9|Cout~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst4|HighClock|lab7_task2Sim|sim9|Cout~0_combout\ = (\inst4|dataa\(8) & (\inst4|dataa\(7) & (\inst4|dataa\(9) & \inst4|HighClock|lab7_task2Sim|sim6|Cout~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|dataa\(8),
	datab => \inst4|dataa\(7),
	datac => \inst4|dataa\(9),
	datad => \inst4|HighClock|lab7_task2Sim|sim6|Cout~0_combout\,
	combout => \inst4|HighClock|lab7_task2Sim|sim9|Cout~0_combout\);

-- Location: LCCOMB_X46_Y30_N18
\inst4|countersim|Mux22~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst4|countersim|Mux22~1_combout\ = (!\inst4|counter_0_sel\(1) & (\inst4|dataa\(10) $ (\inst4|HighClock|lab7_task2Sim|sim9|Cout~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001100110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst4|counter_0_sel\(1),
	datac => \inst4|dataa\(10),
	datad => \inst4|HighClock|lab7_task2Sim|sim9|Cout~0_combout\,
	combout => \inst4|countersim|Mux22~1_combout\);

-- Location: LCFF_X46_Y30_N19
\inst4|dataa[10]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ALT_INV_clock~clkctrl_outclk\,
	datain => \inst4|countersim|Mux22~1_combout\,
	aclr => \inst4|process_0~0_combout\,
	ena => \inst4|ti0~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst4|dataa\(10));

-- Location: LCCOMB_X46_Y29_N2
\inst4|HighClock|lab7_task2Sim|sim5|Cout~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst4|HighClock|lab7_task2Sim|sim5|Cout~0_combout\ = (\inst4|dataa\(4) & (\inst4|dataa\(3) & (\inst4|dataa\(5) & \inst4|HighClock|lab7_task2Sim|sim2|Cout~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|dataa\(4),
	datab => \inst4|dataa\(3),
	datac => \inst4|dataa\(5),
	datad => \inst4|HighClock|lab7_task2Sim|sim2|Cout~0_combout\,
	combout => \inst4|HighClock|lab7_task2Sim|sim5|Cout~0_combout\);

-- Location: LCCOMB_X44_Y29_N20
\inst4|countersim|Mux26~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst4|countersim|Mux26~1_combout\ = (!\inst4|counter_0_sel\(1) & (\inst4|dataa\(6) $ (\inst4|HighClock|lab7_task2Sim|sim5|Cout~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010101010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|counter_0_sel\(1),
	datac => \inst4|dataa\(6),
	datad => \inst4|HighClock|lab7_task2Sim|sim5|Cout~0_combout\,
	combout => \inst4|countersim|Mux26~1_combout\);

-- Location: LCFF_X46_Y29_N5
\inst4|dataa[6]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ALT_INV_clock~clkctrl_outclk\,
	sdata => \inst4|countersim|Mux26~1_combout\,
	aclr => \inst4|process_0~0_combout\,
	sload => VCC,
	ena => \inst4|ti0~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst4|dataa\(6));

-- Location: LCCOMB_X46_Y29_N10
\inst4|HighClock|lab7_task2Sim|sim7|Cout~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst4|HighClock|lab7_task2Sim|sim7|Cout~0_combout\ = (\inst4|dataa\(5) & (\inst4|dataa\(7) & (\inst4|dataa\(6) & \inst4|HighClock|lab7_task2Sim|sim4|Cout~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|dataa\(5),
	datab => \inst4|dataa\(7),
	datac => \inst4|dataa\(6),
	datad => \inst4|HighClock|lab7_task2Sim|sim4|Cout~0_combout\,
	combout => \inst4|HighClock|lab7_task2Sim|sim7|Cout~0_combout\);

-- Location: LCCOMB_X46_Y29_N24
\inst4|HighClock|lab7_task2Sim|sim10|Cout~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst4|HighClock|lab7_task2Sim|sim10|Cout~0_combout\ = (\inst4|dataa\(8) & (\inst4|dataa\(10) & (\inst4|dataa\(9) & \inst4|HighClock|lab7_task2Sim|sim7|Cout~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|dataa\(8),
	datab => \inst4|dataa\(10),
	datac => \inst4|dataa\(9),
	datad => \inst4|HighClock|lab7_task2Sim|sim7|Cout~0_combout\,
	combout => \inst4|HighClock|lab7_task2Sim|sim10|Cout~0_combout\);

-- Location: LCCOMB_X46_Y30_N16
\inst4|countersim|Mux21~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst4|countersim|Mux21~1_combout\ = (!\inst4|counter_0_sel\(1) & (\inst4|dataa\(11) $ (\inst4|HighClock|lab7_task2Sim|sim10|Cout~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001100110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst4|counter_0_sel\(1),
	datac => \inst4|dataa\(11),
	datad => \inst4|HighClock|lab7_task2Sim|sim10|Cout~0_combout\,
	combout => \inst4|countersim|Mux21~1_combout\);

-- Location: LCFF_X46_Y30_N17
\inst4|dataa[11]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ALT_INV_clock~clkctrl_outclk\,
	datain => \inst4|countersim|Mux21~1_combout\,
	aclr => \inst4|process_0~0_combout\,
	ena => \inst4|ti0~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst4|dataa\(11));

-- Location: LCCOMB_X46_Y29_N28
\inst4|HighClock|lab7_task2Sim|sim8|Cout~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst4|HighClock|lab7_task2Sim|sim8|Cout~0_combout\ = (\inst4|dataa\(8) & (\inst4|dataa\(7) & (\inst4|dataa\(6) & \inst4|HighClock|lab7_task2Sim|sim5|Cout~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|dataa\(8),
	datab => \inst4|dataa\(7),
	datac => \inst4|dataa\(6),
	datad => \inst4|HighClock|lab7_task2Sim|sim5|Cout~0_combout\,
	combout => \inst4|HighClock|lab7_task2Sim|sim8|Cout~0_combout\);

-- Location: LCCOMB_X46_Y29_N6
\inst4|HighClock|lab7_task2Sim|sim11|Cout~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst4|HighClock|lab7_task2Sim|sim11|Cout~0_combout\ = (\inst4|dataa\(11) & (\inst4|dataa\(9) & (\inst4|dataa\(10) & \inst4|HighClock|lab7_task2Sim|sim8|Cout~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|dataa\(11),
	datab => \inst4|dataa\(9),
	datac => \inst4|dataa\(10),
	datad => \inst4|HighClock|lab7_task2Sim|sim8|Cout~0_combout\,
	combout => \inst4|HighClock|lab7_task2Sim|sim11|Cout~0_combout\);

-- Location: LCCOMB_X47_Y30_N20
\inst4|countersim|Mux20~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst4|countersim|Mux20~1_combout\ = (!\inst4|counter_0_sel\(1) & (\inst4|HighClock|lab7_task2Sim|sim11|Cout~0_combout\ $ (\inst4|dataa\(12))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000101000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|counter_0_sel\(1),
	datab => \inst4|HighClock|lab7_task2Sim|sim11|Cout~0_combout\,
	datad => \inst4|dataa\(12),
	combout => \inst4|countersim|Mux20~1_combout\);

-- Location: LCFF_X46_Y30_N3
\inst4|dataa[12]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ALT_INV_clock~clkctrl_outclk\,
	sdata => \inst4|countersim|Mux20~1_combout\,
	aclr => \inst4|process_0~0_combout\,
	sload => VCC,
	ena => \inst4|ti0~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst4|dataa\(12));

-- Location: LCCOMB_X46_Y30_N2
\inst4|HighClock|lab7_task2Sim|sim12|Cout~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst4|HighClock|lab7_task2Sim|sim12|Cout~0_combout\ = (\inst4|dataa\(11) & (\inst4|dataa\(10) & (\inst4|dataa\(12) & \inst4|HighClock|lab7_task2Sim|sim9|Cout~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|dataa\(11),
	datab => \inst4|dataa\(10),
	datac => \inst4|dataa\(12),
	datad => \inst4|HighClock|lab7_task2Sim|sim9|Cout~0_combout\,
	combout => \inst4|HighClock|lab7_task2Sim|sim12|Cout~0_combout\);

-- Location: LCCOMB_X46_Y30_N0
\inst4|countersim|Mux19~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst4|countersim|Mux19~1_combout\ = (!\inst4|counter_0_sel\(1) & (\inst4|dataa\(13) $ (\inst4|HighClock|lab7_task2Sim|sim12|Cout~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001100110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst4|counter_0_sel\(1),
	datac => \inst4|dataa\(13),
	datad => \inst4|HighClock|lab7_task2Sim|sim12|Cout~0_combout\,
	combout => \inst4|countersim|Mux19~1_combout\);

-- Location: LCFF_X46_Y30_N1
\inst4|dataa[13]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ALT_INV_clock~clkctrl_outclk\,
	datain => \inst4|countersim|Mux19~1_combout\,
	aclr => \inst4|process_0~0_combout\,
	ena => \inst4|ti0~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst4|dataa\(13));

-- Location: LCCOMB_X47_Y30_N0
\inst4|HighClock|lab7_task2Sim|sim13|Cout~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst4|HighClock|lab7_task2Sim|sim13|Cout~0_combout\ = (\inst4|dataa\(12) & (\inst4|dataa\(11) & (\inst4|dataa\(13) & \inst4|HighClock|lab7_task2Sim|sim10|Cout~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|dataa\(12),
	datab => \inst4|dataa\(11),
	datac => \inst4|dataa\(13),
	datad => \inst4|HighClock|lab7_task2Sim|sim10|Cout~0_combout\,
	combout => \inst4|HighClock|lab7_task2Sim|sim13|Cout~0_combout\);

-- Location: LCCOMB_X46_Y30_N22
\inst4|countersim|Mux18~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst4|countersim|Mux18~1_combout\ = (!\inst4|counter_0_sel\(1) & (\inst4|dataa\(14) $ (\inst4|HighClock|lab7_task2Sim|sim13|Cout~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000101000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|counter_0_sel\(1),
	datab => \inst4|dataa\(14),
	datad => \inst4|HighClock|lab7_task2Sim|sim13|Cout~0_combout\,
	combout => \inst4|countersim|Mux18~1_combout\);

-- Location: LCFF_X46_Y30_N27
\inst4|dataa[14]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ALT_INV_clock~clkctrl_outclk\,
	sdata => \inst4|countersim|Mux18~1_combout\,
	aclr => \inst4|process_0~0_combout\,
	sload => VCC,
	ena => \inst4|ti0~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst4|dataa\(14));

-- Location: LCCOMB_X46_Y30_N12
\inst4|HighClock|lab7_task2Sim|sim15|Cout~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst4|HighClock|lab7_task2Sim|sim15|Cout~0_combout\ = (\inst4|dataa\(15) & (\inst4|dataa\(14) & (\inst4|dataa\(13) & \inst4|HighClock|lab7_task2Sim|sim12|Cout~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|dataa\(15),
	datab => \inst4|dataa\(14),
	datac => \inst4|dataa\(13),
	datad => \inst4|HighClock|lab7_task2Sim|sim12|Cout~0_combout\,
	combout => \inst4|HighClock|lab7_task2Sim|sim15|Cout~0_combout\);

-- Location: LCCOMB_X46_Y30_N8
\inst4|countersim|Mux16~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst4|countersim|Mux16~1_combout\ = (!\inst4|counter_0_sel\(1) & (\inst4|dataa\(16) $ (\inst4|HighClock|lab7_task2Sim|sim15|Cout~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000101000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|counter_0_sel\(1),
	datab => \inst4|dataa\(16),
	datad => \inst4|HighClock|lab7_task2Sim|sim15|Cout~0_combout\,
	combout => \inst4|countersim|Mux16~1_combout\);

-- Location: LCFF_X46_Y30_N23
\inst4|dataa[16]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ALT_INV_clock~clkctrl_outclk\,
	sdata => \inst4|countersim|Mux16~1_combout\,
	aclr => \inst4|process_0~0_combout\,
	sload => VCC,
	ena => \inst4|ti0~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst4|dataa\(16));

-- Location: LCCOMB_X47_Y30_N28
\inst4|HighClock|lab7_task2Sim|sim14|Cout~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst4|HighClock|lab7_task2Sim|sim14|Cout~0_combout\ = (\inst4|dataa\(12) & (\inst4|dataa\(14) & (\inst4|dataa\(13) & \inst4|HighClock|lab7_task2Sim|sim11|Cout~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|dataa\(12),
	datab => \inst4|dataa\(14),
	datac => \inst4|dataa\(13),
	datad => \inst4|HighClock|lab7_task2Sim|sim11|Cout~0_combout\,
	combout => \inst4|HighClock|lab7_task2Sim|sim14|Cout~0_combout\);

-- Location: LCCOMB_X47_Y30_N12
\inst4|countersim|Mux17~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst4|countersim|Mux17~1_combout\ = (!\inst4|counter_0_sel\(1) & (\inst4|dataa\(15) $ (\inst4|HighClock|lab7_task2Sim|sim14|Cout~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001100110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|dataa\(15),
	datab => \inst4|HighClock|lab7_task2Sim|sim14|Cout~0_combout\,
	datad => \inst4|counter_0_sel\(1),
	combout => \inst4|countersim|Mux17~1_combout\);

-- Location: LCFF_X46_Y30_N21
\inst4|dataa[15]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ALT_INV_clock~clkctrl_outclk\,
	sdata => \inst4|countersim|Mux17~1_combout\,
	aclr => \inst4|process_0~0_combout\,
	sload => VCC,
	ena => \inst4|ti0~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst4|dataa\(15));

-- Location: LCCOMB_X46_Y30_N20
\inst4|HighClock|lab7_task2Sim|sim17|Cout~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst4|HighClock|lab7_task2Sim|sim17|Cout~0_combout\ = (\inst4|dataa\(17) & (\inst4|dataa\(16) & (\inst4|dataa\(15) & \inst4|HighClock|lab7_task2Sim|sim14|Cout~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|dataa\(17),
	datab => \inst4|dataa\(16),
	datac => \inst4|dataa\(15),
	datad => \inst4|HighClock|lab7_task2Sim|sim14|Cout~0_combout\,
	combout => \inst4|HighClock|lab7_task2Sim|sim17|Cout~0_combout\);

-- Location: LCCOMB_X47_Y30_N18
\inst4|countersim|Mux14~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst4|countersim|Mux14~1_combout\ = (!\inst4|counter_0_sel\(1) & (\inst4|dataa\(18) $ (\inst4|HighClock|lab7_task2Sim|sim17|Cout~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001100110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst4|counter_0_sel\(1),
	datac => \inst4|dataa\(18),
	datad => \inst4|HighClock|lab7_task2Sim|sim17|Cout~0_combout\,
	combout => \inst4|countersim|Mux14~1_combout\);

-- Location: LCFF_X47_Y30_N19
\inst4|dataa[18]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ALT_INV_clock~clkctrl_outclk\,
	datain => \inst4|countersim|Mux14~1_combout\,
	aclr => \inst4|process_0~0_combout\,
	ena => \inst4|ti0~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst4|dataa\(18));

-- Location: LCCOMB_X46_Y30_N30
\inst4|HighClock|lab7_task2Sim|sim18|Cout~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst4|HighClock|lab7_task2Sim|sim18|Cout~0_combout\ = (\inst4|dataa\(17) & (\inst4|dataa\(18) & (\inst4|dataa\(16) & \inst4|HighClock|lab7_task2Sim|sim15|Cout~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|dataa\(17),
	datab => \inst4|dataa\(18),
	datac => \inst4|dataa\(16),
	datad => \inst4|HighClock|lab7_task2Sim|sim15|Cout~0_combout\,
	combout => \inst4|HighClock|lab7_task2Sim|sim18|Cout~0_combout\);

-- Location: LCCOMB_X45_Y30_N20
\inst4|countersim|Mux13~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst4|countersim|Mux13~1_combout\ = (!\inst4|counter_0_sel\(1) & (\inst4|dataa\(19) $ (\inst4|HighClock|lab7_task2Sim|sim18|Cout~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001100110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst4|counter_0_sel\(1),
	datac => \inst4|dataa\(19),
	datad => \inst4|HighClock|lab7_task2Sim|sim18|Cout~0_combout\,
	combout => \inst4|countersim|Mux13~1_combout\);

-- Location: LCFF_X45_Y30_N21
\inst4|dataa[19]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ALT_INV_clock~clkctrl_outclk\,
	datain => \inst4|countersim|Mux13~1_combout\,
	aclr => \inst4|process_0~0_combout\,
	ena => \inst4|ti0~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst4|dataa\(19));

-- Location: LCCOMB_X45_Y30_N28
\inst4|HighClock|lab7_task2Sim|sim20|Cout~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst4|HighClock|lab7_task2Sim|sim20|Cout~0_combout\ = (\inst4|dataa\(20) & (\inst4|dataa\(19) & (\inst4|dataa\(18) & \inst4|HighClock|lab7_task2Sim|sim17|Cout~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|dataa\(20),
	datab => \inst4|dataa\(19),
	datac => \inst4|dataa\(18),
	datad => \inst4|HighClock|lab7_task2Sim|sim17|Cout~0_combout\,
	combout => \inst4|HighClock|lab7_task2Sim|sim20|Cout~0_combout\);

-- Location: LCCOMB_X44_Y30_N20
\inst4|countersim|Mux11~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst4|countersim|Mux11~1_combout\ = (!\inst4|counter_0_sel\(1) & (\inst4|dataa\(21) $ (\inst4|HighClock|lab7_task2Sim|sim20|Cout~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001100110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst4|counter_0_sel\(1),
	datac => \inst4|dataa\(21),
	datad => \inst4|HighClock|lab7_task2Sim|sim20|Cout~0_combout\,
	combout => \inst4|countersim|Mux11~1_combout\);

-- Location: LCFF_X44_Y30_N21
\inst4|dataa[21]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ALT_INV_clock~clkctrl_outclk\,
	datain => \inst4|countersim|Mux11~1_combout\,
	aclr => \inst4|process_0~0_combout\,
	ena => \inst4|ti0~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst4|dataa\(21));

-- Location: LCCOMB_X45_Y30_N30
\inst4|HighClock|lab7_task2Sim|sim21|Cout~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst4|HighClock|lab7_task2Sim|sim21|Cout~0_combout\ = (\inst4|dataa\(20) & (\inst4|dataa\(19) & (\inst4|dataa\(21) & \inst4|HighClock|lab7_task2Sim|sim18|Cout~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|dataa\(20),
	datab => \inst4|dataa\(19),
	datac => \inst4|dataa\(21),
	datad => \inst4|HighClock|lab7_task2Sim|sim18|Cout~0_combout\,
	combout => \inst4|HighClock|lab7_task2Sim|sim21|Cout~0_combout\);

-- Location: LCCOMB_X45_Y30_N12
\inst4|countersim|Mux10~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst4|countersim|Mux10~1_combout\ = (!\inst4|counter_0_sel\(1) & (\inst4|dataa\(22) $ (\inst4|HighClock|lab7_task2Sim|sim21|Cout~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001100110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst4|counter_0_sel\(1),
	datac => \inst4|dataa\(22),
	datad => \inst4|HighClock|lab7_task2Sim|sim21|Cout~0_combout\,
	combout => \inst4|countersim|Mux10~1_combout\);

-- Location: LCFF_X45_Y30_N13
\inst4|dataa[22]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ALT_INV_clock~clkctrl_outclk\,
	datain => \inst4|countersim|Mux10~1_combout\,
	aclr => \inst4|process_0~0_combout\,
	ena => \inst4|ti0~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst4|dataa\(22));

-- Location: LCCOMB_X44_Y29_N22
\inst4|HighClock|lab7_task2Sim|sim23|Cout~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst4|HighClock|lab7_task2Sim|sim23|Cout~0_combout\ = (\inst4|dataa\(23) & (\inst4|dataa\(22) & (\inst4|dataa\(21) & \inst4|HighClock|lab7_task2Sim|sim20|Cout~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|dataa\(23),
	datab => \inst4|dataa\(22),
	datac => \inst4|dataa\(21),
	datad => \inst4|HighClock|lab7_task2Sim|sim20|Cout~0_combout\,
	combout => \inst4|HighClock|lab7_task2Sim|sim23|Cout~0_combout\);

-- Location: LCCOMB_X48_Y29_N22
\inst4|countersim|Mux8~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst4|countersim|Mux8~1_combout\ = (!\inst4|counter_0_sel\(1) & (\inst4|dataa\(24) $ (\inst4|HighClock|lab7_task2Sim|sim23|Cout~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010101010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|counter_0_sel\(1),
	datac => \inst4|dataa\(24),
	datad => \inst4|HighClock|lab7_task2Sim|sim23|Cout~0_combout\,
	combout => \inst4|countersim|Mux8~1_combout\);

-- Location: LCFF_X48_Y29_N23
\inst4|dataa[24]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ALT_INV_clock~clkctrl_outclk\,
	datain => \inst4|countersim|Mux8~1_combout\,
	aclr => \inst4|process_0~0_combout\,
	ena => \inst4|ti0~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst4|dataa\(24));

-- Location: LCCOMB_X48_Y29_N10
\inst4|HighClock|lab7_task2Sim|sim24|Cout~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst4|HighClock|lab7_task2Sim|sim24|Cout~0_combout\ = (\inst4|dataa\(23) & (\inst4|dataa\(24) & (\inst4|dataa\(22) & \inst4|HighClock|lab7_task2Sim|sim21|Cout~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|dataa\(23),
	datab => \inst4|dataa\(24),
	datac => \inst4|dataa\(22),
	datad => \inst4|HighClock|lab7_task2Sim|sim21|Cout~0_combout\,
	combout => \inst4|HighClock|lab7_task2Sim|sim24|Cout~0_combout\);

-- Location: LCCOMB_X48_Y29_N16
\inst4|countersim|Mux7~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst4|countersim|Mux7~1_combout\ = (!\inst4|counter_0_sel\(1) & (\inst4|dataa\(25) $ (\inst4|HighClock|lab7_task2Sim|sim24|Cout~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010101010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|counter_0_sel\(1),
	datac => \inst4|dataa\(25),
	datad => \inst4|HighClock|lab7_task2Sim|sim24|Cout~0_combout\,
	combout => \inst4|countersim|Mux7~1_combout\);

-- Location: LCFF_X48_Y29_N17
\inst4|dataa[25]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ALT_INV_clock~clkctrl_outclk\,
	datain => \inst4|countersim|Mux7~1_combout\,
	aclr => \inst4|process_0~0_combout\,
	ena => \inst4|ti0~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst4|dataa\(25));

-- Location: LCCOMB_X47_Y30_N30
\inst4|HighClock|lab7_task2Sim|sim16|Cout~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst4|HighClock|lab7_task2Sim|sim16|Cout~0_combout\ = (\inst4|dataa\(16) & (\inst4|dataa\(14) & (\inst4|dataa\(15) & \inst4|HighClock|lab7_task2Sim|sim13|Cout~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|dataa\(16),
	datab => \inst4|dataa\(14),
	datac => \inst4|dataa\(15),
	datad => \inst4|HighClock|lab7_task2Sim|sim13|Cout~0_combout\,
	combout => \inst4|HighClock|lab7_task2Sim|sim16|Cout~0_combout\);

-- Location: LCCOMB_X46_Y30_N24
\inst4|HighClock|lab7_task2Sim|sim19|Cout~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst4|HighClock|lab7_task2Sim|sim19|Cout~0_combout\ = (\inst4|dataa\(17) & (\inst4|dataa\(18) & (\inst4|dataa\(19) & \inst4|HighClock|lab7_task2Sim|sim16|Cout~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|dataa\(17),
	datab => \inst4|dataa\(18),
	datac => \inst4|dataa\(19),
	datad => \inst4|HighClock|lab7_task2Sim|sim16|Cout~0_combout\,
	combout => \inst4|HighClock|lab7_task2Sim|sim19|Cout~0_combout\);

-- Location: LCCOMB_X47_Y30_N24
\inst4|HighClock|lab7_task2Sim|sim22|Cout~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst4|HighClock|lab7_task2Sim|sim22|Cout~0_combout\ = (\inst4|dataa\(20) & (\inst4|dataa\(22) & (\inst4|dataa\(21) & \inst4|HighClock|lab7_task2Sim|sim19|Cout~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|dataa\(20),
	datab => \inst4|dataa\(22),
	datac => \inst4|dataa\(21),
	datad => \inst4|HighClock|lab7_task2Sim|sim19|Cout~0_combout\,
	combout => \inst4|HighClock|lab7_task2Sim|sim22|Cout~0_combout\);

-- Location: LCCOMB_X48_Y29_N26
\inst4|HighClock|lab7_task2Sim|sim25|Cout~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst4|HighClock|lab7_task2Sim|sim25|Cout~0_combout\ = (\inst4|dataa\(23) & (\inst4|dataa\(24) & (\inst4|dataa\(25) & \inst4|HighClock|lab7_task2Sim|sim22|Cout~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|dataa\(23),
	datab => \inst4|dataa\(24),
	datac => \inst4|dataa\(25),
	datad => \inst4|HighClock|lab7_task2Sim|sim22|Cout~0_combout\,
	combout => \inst4|HighClock|lab7_task2Sim|sim25|Cout~0_combout\);

-- Location: LCCOMB_X48_Y29_N12
\inst4|countersim|Mux6~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst4|countersim|Mux6~1_combout\ = (!\inst4|counter_0_sel\(1) & (\inst4|dataa\(26) $ (\inst4|HighClock|lab7_task2Sim|sim25|Cout~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010101010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|counter_0_sel\(1),
	datac => \inst4|dataa\(26),
	datad => \inst4|HighClock|lab7_task2Sim|sim25|Cout~0_combout\,
	combout => \inst4|countersim|Mux6~1_combout\);

-- Location: LCFF_X48_Y29_N13
\inst4|dataa[26]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ALT_INV_clock~clkctrl_outclk\,
	datain => \inst4|countersim|Mux6~1_combout\,
	aclr => \inst4|process_0~0_combout\,
	ena => \inst4|ti0~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst4|dataa\(26));

-- Location: LCCOMB_X44_Y29_N0
\inst4|HighClock|lab7_task2Sim|sim26|Cout~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst4|HighClock|lab7_task2Sim|sim26|Cout~0_combout\ = (\inst4|dataa\(24) & (\inst4|dataa\(25) & (\inst4|dataa\(26) & \inst4|HighClock|lab7_task2Sim|sim23|Cout~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|dataa\(24),
	datab => \inst4|dataa\(25),
	datac => \inst4|dataa\(26),
	datad => \inst4|HighClock|lab7_task2Sim|sim23|Cout~0_combout\,
	combout => \inst4|HighClock|lab7_task2Sim|sim26|Cout~0_combout\);

-- Location: LCCOMB_X48_Y29_N2
\inst4|countersim|Mux5~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst4|countersim|Mux5~1_combout\ = (!\inst4|counter_0_sel\(1) & (\inst4|dataa\(27) $ (\inst4|HighClock|lab7_task2Sim|sim26|Cout~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010101010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|counter_0_sel\(1),
	datac => \inst4|dataa\(27),
	datad => \inst4|HighClock|lab7_task2Sim|sim26|Cout~0_combout\,
	combout => \inst4|countersim|Mux5~1_combout\);

-- Location: LCFF_X48_Y29_N3
\inst4|dataa[27]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ALT_INV_clock~clkctrl_outclk\,
	datain => \inst4|countersim|Mux5~1_combout\,
	aclr => \inst4|process_0~0_combout\,
	ena => \inst4|ti0~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst4|dataa\(27));

-- Location: LCCOMB_X48_Y29_N28
\inst4|HighClock|lab7_task2Sim|sim27|Cout~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst4|HighClock|lab7_task2Sim|sim27|Cout~0_combout\ = (\inst4|dataa\(26) & (\inst4|dataa\(27) & (\inst4|dataa\(25) & \inst4|HighClock|lab7_task2Sim|sim24|Cout~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|dataa\(26),
	datab => \inst4|dataa\(27),
	datac => \inst4|dataa\(25),
	datad => \inst4|HighClock|lab7_task2Sim|sim24|Cout~0_combout\,
	combout => \inst4|HighClock|lab7_task2Sim|sim27|Cout~0_combout\);

-- Location: LCCOMB_X48_Y29_N0
\inst4|countersim|Mux4~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst4|countersim|Mux4~1_combout\ = (!\inst4|counter_0_sel\(1) & (\inst4|dataa\(28) $ (\inst4|HighClock|lab7_task2Sim|sim27|Cout~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010101010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|counter_0_sel\(1),
	datac => \inst4|dataa\(28),
	datad => \inst4|HighClock|lab7_task2Sim|sim27|Cout~0_combout\,
	combout => \inst4|countersim|Mux4~1_combout\);

-- Location: LCFF_X48_Y29_N1
\inst4|dataa[28]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ALT_INV_clock~clkctrl_outclk\,
	datain => \inst4|countersim|Mux4~1_combout\,
	aclr => \inst4|process_0~0_combout\,
	ena => \inst4|ti0~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst4|dataa\(28));

-- Location: LCCOMB_X48_Y29_N30
\inst4|HighClock|lab7_task2Sim|sim28|Cout~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst4|HighClock|lab7_task2Sim|sim28|Cout~0_combout\ = (\inst4|dataa\(26) & (\inst4|dataa\(28) & (\inst4|dataa\(27) & \inst4|HighClock|lab7_task2Sim|sim25|Cout~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|dataa\(26),
	datab => \inst4|dataa\(28),
	datac => \inst4|dataa\(27),
	datad => \inst4|HighClock|lab7_task2Sim|sim25|Cout~0_combout\,
	combout => \inst4|HighClock|lab7_task2Sim|sim28|Cout~0_combout\);

-- Location: LCCOMB_X47_Y29_N20
\inst4|countersim|Mux3~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst4|countersim|Mux3~1_combout\ = (!\inst4|counter_0_sel\(1) & (\inst4|dataa\(29) $ (\inst4|HighClock|lab7_task2Sim|sim28|Cout~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000101000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|counter_0_sel\(1),
	datab => \inst4|dataa\(29),
	datad => \inst4|HighClock|lab7_task2Sim|sim28|Cout~0_combout\,
	combout => \inst4|countersim|Mux3~1_combout\);

-- Location: LCFF_X47_Y29_N23
\inst4|dataa[29]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ALT_INV_clock~clkctrl_outclk\,
	sdata => \inst4|countersim|Mux3~1_combout\,
	aclr => \inst4|process_0~0_combout\,
	sload => VCC,
	ena => \inst4|ti0~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst4|dataa\(29));

-- Location: LCCOMB_X48_Y29_N18
\inst4|HighClock|lab7_task2Sim|sim30|Cout~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst4|HighClock|lab7_task2Sim|sim30|Cout~0_combout\ = (\inst4|dataa\(30) & (\inst4|dataa\(28) & (\inst4|dataa\(29) & \inst4|HighClock|lab7_task2Sim|sim27|Cout~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|dataa\(30),
	datab => \inst4|dataa\(28),
	datac => \inst4|dataa\(29),
	datad => \inst4|HighClock|lab7_task2Sim|sim27|Cout~0_combout\,
	combout => \inst4|HighClock|lab7_task2Sim|sim30|Cout~0_combout\);

-- Location: LCCOMB_X48_Y29_N14
\inst4|countersim|Mux1~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst4|countersim|Mux1~1_combout\ = (!\inst4|counter_0_sel\(1) & (\inst4|dataa\(31) $ (\inst4|HighClock|lab7_task2Sim|sim30|Cout~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010101010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|counter_0_sel\(1),
	datac => \inst4|dataa\(31),
	datad => \inst4|HighClock|lab7_task2Sim|sim30|Cout~0_combout\,
	combout => \inst4|countersim|Mux1~1_combout\);

-- Location: LCFF_X48_Y29_N15
\inst4|dataa[31]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ALT_INV_clock~clkctrl_outclk\,
	datain => \inst4|countersim|Mux1~1_combout\,
	aclr => \inst4|process_0~0_combout\,
	ena => \inst4|ti0~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst4|dataa\(31));

-- Location: LCCOMB_X48_Y29_N8
\inst4|HighClock|lab7_task2Sim|sim31|Cout~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst4|HighClock|lab7_task2Sim|sim31|Cout~0_combout\ = (\inst4|dataa\(30) & (\inst4|dataa\(31) & (\inst4|dataa\(29) & \inst4|HighClock|lab7_task2Sim|sim28|Cout~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|dataa\(30),
	datab => \inst4|dataa\(31),
	datac => \inst4|dataa\(29),
	datad => \inst4|HighClock|lab7_task2Sim|sim28|Cout~0_combout\,
	combout => \inst4|HighClock|lab7_task2Sim|sim31|Cout~0_combout\);

-- Location: LCCOMB_X48_Y29_N24
\inst4|countersim|Mux0~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst4|countersim|Mux0~0_combout\ = (!\inst4|counter_0_sel\(1) & (\inst4|dataa\(32) $ (\inst4|HighClock|lab7_task2Sim|sim31|Cout~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010101010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|counter_0_sel\(1),
	datac => \inst4|dataa\(32),
	datad => \inst4|HighClock|lab7_task2Sim|sim31|Cout~0_combout\,
	combout => \inst4|countersim|Mux0~0_combout\);

-- Location: LCFF_X48_Y29_N25
\inst4|dataa[32]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ALT_INV_clock~clkctrl_outclk\,
	datain => \inst4|countersim|Mux0~0_combout\,
	aclr => \inst4|process_0~0_combout\,
	ena => \inst4|ti0~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst4|dataa\(32));

-- Location: LCCOMB_X48_Y29_N6
\inst4|HighClock|lab7_task2Sim|sim29|Cout~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst4|HighClock|lab7_task2Sim|sim29|Cout~0_combout\ = (\inst4|dataa\(27) & (\inst4|dataa\(28) & (\inst4|dataa\(29) & \inst4|HighClock|lab7_task2Sim|sim26|Cout~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|dataa\(27),
	datab => \inst4|dataa\(28),
	datac => \inst4|dataa\(29),
	datad => \inst4|HighClock|lab7_task2Sim|sim26|Cout~0_combout\,
	combout => \inst4|HighClock|lab7_task2Sim|sim29|Cout~0_combout\);

-- Location: LCCOMB_X48_Y29_N4
\inst4|countersim|Mux2~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst4|countersim|Mux2~1_combout\ = (!\inst4|counter_0_sel\(1) & (\inst4|dataa\(30) $ (\inst4|HighClock|lab7_task2Sim|sim29|Cout~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010101010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|counter_0_sel\(1),
	datac => \inst4|dataa\(30),
	datad => \inst4|HighClock|lab7_task2Sim|sim29|Cout~0_combout\,
	combout => \inst4|countersim|Mux2~1_combout\);

-- Location: LCFF_X48_Y29_N5
\inst4|dataa[30]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ALT_INV_clock~clkctrl_outclk\,
	datain => \inst4|countersim|Mux2~1_combout\,
	aclr => \inst4|process_0~0_combout\,
	ena => \inst4|ti0~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst4|dataa\(30));

-- Location: LCCOMB_X44_Y29_N18
\inst4|LowClcok|lab7_task2Sim|sim30|Cout~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst4|LowClcok|lab7_task2Sim|sim30|Cout~0_combout\ = (\inst5|output\(14) & ((\inst4|counter_0_sel\(1)) # (\inst4|dataa\(30) $ (!\inst4|HighClock|lab7_task2Sim|sim29|Cout~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010100010100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst5|output\(14),
	datab => \inst4|dataa\(30),
	datac => \inst4|counter_0_sel\(1),
	datad => \inst4|HighClock|lab7_task2Sim|sim29|Cout~0_combout\,
	combout => \inst4|LowClcok|lab7_task2Sim|sim30|Cout~0_combout\);

-- Location: LCCOMB_X43_Y29_N10
\inst17~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst17~0_combout\ = (!\mem_addr~combout\(1) & (\mem_addr~combout\(0) & \inst18~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mem_addr~combout\(1),
	datac => \mem_addr~combout\(0),
	datad => \inst18~0_combout\,
	combout => \inst17~0_combout\);

-- Location: LCFF_X44_Y29_N27
\inst5|output[15]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ALT_INV_clock~clkctrl_outclk\,
	sdata => \mem_data~combout\(15),
	aclr => \reset~clkctrl_outclk\,
	sload => VCC,
	ena => \inst17~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst5|output\(15));

-- Location: LCFF_X44_Y29_N3
\inst5|output[13]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ALT_INV_clock~clkctrl_outclk\,
	sdata => \mem_data~combout\(13),
	aclr => \reset~clkctrl_outclk\,
	sload => VCC,
	ena => \inst17~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst5|output\(13));

-- Location: LCFF_X44_Y29_N13
\inst5|output[12]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ALT_INV_clock~clkctrl_outclk\,
	sdata => \mem_data~combout\(12),
	aclr => \reset~clkctrl_outclk\,
	sload => VCC,
	ena => \inst17~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst5|output\(12));

-- Location: LCCOMB_X44_Y29_N4
\inst4|LowClcok|lab7_task2Sim|sim27|Cout~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst4|LowClcok|lab7_task2Sim|sim27|Cout~1_combout\ = (\inst5|output\(11)) # ((\inst4|counter_0_sel\(1)) # (\inst4|dataa\(27) $ (!\inst4|HighClock|lab7_task2Sim|sim26|Cout~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111011111011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst5|output\(11),
	datab => \inst4|dataa\(27),
	datac => \inst4|counter_0_sel\(1),
	datad => \inst4|HighClock|lab7_task2Sim|sim26|Cout~0_combout\,
	combout => \inst4|LowClcok|lab7_task2Sim|sim27|Cout~1_combout\);

-- Location: LCFF_X44_Y29_N7
\inst5|output[10]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ALT_INV_clock~clkctrl_outclk\,
	sdata => \mem_data~combout\(10),
	aclr => \reset~clkctrl_outclk\,
	sload => VCC,
	ena => \inst17~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst5|output\(10));

-- Location: LCFF_X45_Y29_N25
\inst5|output[9]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ALT_INV_clock~clkctrl_outclk\,
	sdata => \mem_data~combout\(9),
	aclr => \reset~clkctrl_outclk\,
	sload => VCC,
	ena => \inst17~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst5|output\(9));

-- Location: LCFF_X47_Y30_N11
\inst4|dataa[23]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ALT_INV_clock~clkctrl_outclk\,
	sdata => \inst4|countersim|Mux9~1_combout\,
	aclr => \inst4|process_0~0_combout\,
	sload => VCC,
	ena => \inst4|ti0~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst4|dataa\(23));

-- Location: LCCOMB_X47_Y30_N14
\inst4|countersim|Mux9~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst4|countersim|Mux9~1_combout\ = (!\inst4|counter_0_sel\(1) & (\inst4|HighClock|lab7_task2Sim|sim22|Cout~0_combout\ $ (\inst4|dataa\(23))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001100110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst4|counter_0_sel\(1),
	datac => \inst4|HighClock|lab7_task2Sim|sim22|Cout~0_combout\,
	datad => \inst4|dataa\(23),
	combout => \inst4|countersim|Mux9~1_combout\);

-- Location: LCFF_X45_Y29_N19
\inst5|output[7]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ALT_INV_clock~clkctrl_outclk\,
	sdata => \mem_data~combout\(7),
	aclr => \reset~clkctrl_outclk\,
	sload => VCC,
	ena => \inst17~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst5|output\(7));

-- Location: LCFF_X45_Y30_N19
\inst5|output[3]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ALT_INV_clock~clkctrl_outclk\,
	sdata => \mem_data~combout\(3),
	aclr => \reset~clkctrl_outclk\,
	sload => VCC,
	ena => \inst17~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst5|output\(3));

-- Location: LCFF_X45_Y30_N9
\inst5|output[2]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ALT_INV_clock~clkctrl_outclk\,
	sdata => \mem_data~combout\(2),
	aclr => \reset~clkctrl_outclk\,
	sload => VCC,
	ena => \inst17~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst5|output\(2));

-- Location: LCCOMB_X45_Y30_N8
\inst4|LowClcok|lab7_task2Sim|sim18|Cout~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst4|LowClcok|lab7_task2Sim|sim18|Cout~1_combout\ = (\inst4|counter_0_sel\(1)) # ((\inst5|output\(2)) # (\inst4|dataa\(18) $ (!\inst4|HighClock|lab7_task2Sim|sim17|Cout~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111011111101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|dataa\(18),
	datab => \inst4|counter_0_sel\(1),
	datac => \inst5|output\(2),
	datad => \inst4|HighClock|lab7_task2Sim|sim17|Cout~0_combout\,
	combout => \inst4|LowClcok|lab7_task2Sim|sim18|Cout~1_combout\);

-- Location: LCCOMB_X45_Y30_N18
\inst4|LowClcok|lab7_task2Sim|sim22|Cout~7\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst4|LowClcok|lab7_task2Sim|sim22|Cout~7_combout\ = (\inst4|LowClcok|lab7_task2Sim|sim18|Cout~1_combout\ & ((\inst5|output\(3)) # (!\inst4|countersim|Mux13~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|countersim|Mux13~1_combout\,
	datac => \inst5|output\(3),
	datad => \inst4|LowClcok|lab7_task2Sim|sim18|Cout~1_combout\,
	combout => \inst4|LowClcok|lab7_task2Sim|sim22|Cout~7_combout\);

-- Location: LCFF_X45_Y29_N21
\inst5|output[1]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ALT_INV_clock~clkctrl_outclk\,
	sdata => \mem_data~combout\(1),
	aclr => \reset~clkctrl_outclk\,
	sload => VCC,
	ena => \inst17~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst5|output\(1));

-- Location: LCFF_X45_Y29_N7
\inst5|output[0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ALT_INV_clock~clkctrl_outclk\,
	sdata => \mem_data~combout\(0),
	aclr => \reset~clkctrl_outclk\,
	sload => VCC,
	ena => \inst17~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst5|output\(0));

-- Location: LCCOMB_X43_Y29_N20
\inst18~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst18~1_combout\ = (\mem_addr~combout\(1) & (!\mem_addr~combout\(0) & \inst18~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mem_addr~combout\(1),
	datac => \mem_addr~combout\(0),
	datad => \inst18~0_combout\,
	combout => \inst18~1_combout\);

-- Location: LCFF_X45_Y29_N1
\inst9|output[14]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ALT_INV_clock~clkctrl_outclk\,
	sdata => \mem_data~combout\(14),
	aclr => \reset~clkctrl_outclk\,
	sload => VCC,
	ena => \inst18~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst9|output\(14));

-- Location: LCFF_X45_Y29_N3
\inst9|output[13]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ALT_INV_clock~clkctrl_outclk\,
	sdata => \mem_data~combout\(13),
	aclr => \reset~clkctrl_outclk\,
	sload => VCC,
	ena => \inst18~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst9|output\(13));

-- Location: LCFF_X45_Y29_N13
\inst9|output[11]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ALT_INV_clock~clkctrl_outclk\,
	sdata => \mem_data~combout\(11),
	aclr => \reset~clkctrl_outclk\,
	sload => VCC,
	ena => \inst18~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst9|output\(11));

-- Location: LCFF_X46_Y29_N21
\inst9|output[9]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ALT_INV_clock~clkctrl_outclk\,
	sdata => \mem_data~combout\(9),
	aclr => \reset~clkctrl_outclk\,
	sload => VCC,
	ena => \inst18~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst9|output\(9));

-- Location: LCCOMB_X46_Y29_N14
\inst4|LowClcok|lab7_task2Sim|sim9|Cout~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst4|LowClcok|lab7_task2Sim|sim9|Cout~0_combout\ = (\inst9|output\(9) & ((\inst4|counter_0_sel\(1)) # (\inst4|HighClock|lab7_task2Sim|sim8|Cout~0_combout\ $ (!\inst4|dataa\(9)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|HighClock|lab7_task2Sim|sim8|Cout~0_combout\,
	datab => \inst9|output\(9),
	datac => \inst4|dataa\(9),
	datad => \inst4|counter_0_sel\(1),
	combout => \inst4|LowClcok|lab7_task2Sim|sim9|Cout~0_combout\);

-- Location: LCFF_X45_Y29_N23
\inst9|output[10]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ALT_INV_clock~clkctrl_outclk\,
	sdata => \mem_data~combout\(10),
	aclr => \reset~clkctrl_outclk\,
	sload => VCC,
	ena => \inst18~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst9|output\(10));

-- Location: LCCOMB_X46_Y29_N26
\inst4|countersim|Mux24~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst4|countersim|Mux24~1_combout\ = (!\inst4|counter_0_sel\(1) & (\inst4|dataa\(8) $ (\inst4|HighClock|lab7_task2Sim|sim7|Cout~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000100100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|dataa\(8),
	datab => \inst4|counter_0_sel\(1),
	datad => \inst4|HighClock|lab7_task2Sim|sim7|Cout~0_combout\,
	combout => \inst4|countersim|Mux24~1_combout\);

-- Location: LCFF_X46_Y29_N31
\inst9|output[8]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ALT_INV_clock~clkctrl_outclk\,
	sdata => \mem_data~combout\(8),
	aclr => \reset~clkctrl_outclk\,
	sload => VCC,
	ena => \inst18~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst9|output\(8));

-- Location: LCCOMB_X46_Y29_N8
\inst4|LowClcok|lab7_task2Sim|sim6|Cout~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst4|LowClcok|lab7_task2Sim|sim6|Cout~0_combout\ = (\inst9|output\(6) & ((\inst4|counter_0_sel\(1)) # (\inst4|dataa\(6) $ (!\inst4|HighClock|lab7_task2Sim|sim5|Cout~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010100010001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst9|output\(6),
	datab => \inst4|counter_0_sel\(1),
	datac => \inst4|dataa\(6),
	datad => \inst4|HighClock|lab7_task2Sim|sim5|Cout~0_combout\,
	combout => \inst4|LowClcok|lab7_task2Sim|sim6|Cout~0_combout\);

-- Location: LCFF_X46_Y29_N1
\inst9|output[7]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ALT_INV_clock~clkctrl_outclk\,
	sdata => \mem_data~combout\(7),
	aclr => \reset~clkctrl_outclk\,
	sload => VCC,
	ena => \inst18~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst9|output\(7));

-- Location: LCFF_X46_Y29_N23
\inst9|output[6]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ALT_INV_clock~clkctrl_outclk\,
	sdata => \mem_data~combout\(6),
	aclr => \reset~clkctrl_outclk\,
	sload => VCC,
	ena => \inst18~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst9|output\(6));

-- Location: LCCOMB_X46_Y29_N22
\inst4|LowClcok|lab7_task2Sim|sim6|Cout~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst4|LowClcok|lab7_task2Sim|sim6|Cout~1_combout\ = (\inst4|counter_0_sel\(1)) # ((\inst9|output\(6)) # (\inst4|dataa\(6) $ (!\inst4|HighClock|lab7_task2Sim|sim5|Cout~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111011111101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|dataa\(6),
	datab => \inst4|counter_0_sel\(1),
	datac => \inst9|output\(6),
	datad => \inst4|HighClock|lab7_task2Sim|sim5|Cout~0_combout\,
	combout => \inst4|LowClcok|lab7_task2Sim|sim6|Cout~1_combout\);

-- Location: LCFF_X46_Y29_N19
\inst9|output[5]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ALT_INV_clock~clkctrl_outclk\,
	sdata => \mem_data~combout\(5),
	aclr => \reset~clkctrl_outclk\,
	sload => VCC,
	ena => \inst18~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst9|output\(5));

-- Location: LCFF_X47_Y29_N9
\inst9|output[3]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ALT_INV_clock~clkctrl_outclk\,
	sdata => \mem_data~combout\(3),
	aclr => \reset~clkctrl_outclk\,
	sload => VCC,
	ena => \inst18~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst9|output\(3));

-- Location: LCCOMB_X47_Y29_N8
\inst4|LowClcok|lab7_task2Sim|sim3|Cout~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst4|LowClcok|lab7_task2Sim|sim3|Cout~3_combout\ = (\inst9|output\(3) & (((\inst9|output\(2) & !\inst4|countersim|Mux30~1_combout\)) # (!\inst4|countersim|Mux29~1_combout\))) # (!\inst9|output\(3) & (\inst9|output\(2) & 
-- (!\inst4|countersim|Mux30~1_combout\ & !\inst4|countersim|Mux29~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000011110010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst9|output\(2),
	datab => \inst4|countersim|Mux30~1_combout\,
	datac => \inst9|output\(3),
	datad => \inst4|countersim|Mux29~1_combout\,
	combout => \inst4|LowClcok|lab7_task2Sim|sim3|Cout~3_combout\);

-- Location: LCFF_X47_Y29_N5
\inst9|output[4]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ALT_INV_clock~clkctrl_outclk\,
	sdata => \mem_data~combout\(4),
	aclr => \reset~clkctrl_outclk\,
	sload => VCC,
	ena => \inst18~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst9|output\(4));

-- Location: LCFF_X47_Y29_N19
\inst9|output[2]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ALT_INV_clock~clkctrl_outclk\,
	sdata => \mem_data~combout\(2),
	aclr => \reset~clkctrl_outclk\,
	sload => VCC,
	ena => \inst18~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst9|output\(2));

-- Location: LCCOMB_X47_Y29_N18
\inst4|LowClcok|lab7_task2Sim|sim3|Cout~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst4|LowClcok|lab7_task2Sim|sim3|Cout~0_combout\ = (\inst4|counter_0_sel\(1)) # ((\inst9|output\(2)) # (\inst4|dataa\(2) $ (!\inst4|HighClock|lab7_task2Sim|sim1|Cout~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111011111101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|dataa\(2),
	datab => \inst4|counter_0_sel\(1),
	datac => \inst9|output\(2),
	datad => \inst4|HighClock|lab7_task2Sim|sim1|Cout~0_combout\,
	combout => \inst4|LowClcok|lab7_task2Sim|sim3|Cout~0_combout\);

-- Location: LCFF_X47_Y29_N25
\inst9|output[1]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ALT_INV_clock~clkctrl_outclk\,
	sdata => \mem_data~combout\(1),
	aclr => \reset~clkctrl_outclk\,
	sload => VCC,
	ena => \inst18~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst9|output\(1));

-- Location: LCCOMB_X47_Y29_N24
\inst4|LowClcok|lab7_task2Sim|sim3|Cout~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst4|LowClcok|lab7_task2Sim|sim3|Cout~1_combout\ = (\inst9|output\(1) & ((\inst9|output\(0)) # ((!\inst4|countersim|Mux31~1_combout\) # (!\inst4|countersim|Mux32~1_combout\)))) # (!\inst9|output\(1) & (!\inst4|countersim|Mux31~1_combout\ & 
-- ((\inst9|output\(0)) # (!\inst4|countersim|Mux32~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011000011111011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst9|output\(0),
	datab => \inst4|countersim|Mux32~1_combout\,
	datac => \inst9|output\(1),
	datad => \inst4|countersim|Mux31~1_combout\,
	combout => \inst4|LowClcok|lab7_task2Sim|sim3|Cout~1_combout\);

-- Location: LCCOMB_X47_Y29_N2
\inst4|LowClcok|lab7_task2Sim|sim3|Cout~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst4|LowClcok|lab7_task2Sim|sim3|Cout~2_combout\ = (\inst4|LowClcok|lab7_task2Sim|sim3|Cout~0_combout\ & (\inst4|LowClcok|lab7_task2Sim|sim3|Cout~1_combout\ & ((\inst9|output\(3)) # (!\inst4|countersim|Mux29~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst9|output\(3),
	datab => \inst4|LowClcok|lab7_task2Sim|sim3|Cout~0_combout\,
	datac => \inst4|LowClcok|lab7_task2Sim|sim3|Cout~1_combout\,
	datad => \inst4|countersim|Mux29~1_combout\,
	combout => \inst4|LowClcok|lab7_task2Sim|sim3|Cout~2_combout\);

-- Location: LCCOMB_X47_Y29_N4
\inst4|LowClcok|lab7_task2Sim|sim4|Cout~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst4|LowClcok|lab7_task2Sim|sim4|Cout~0_combout\ = (\inst4|countersim|Mux28~2_combout\ & (\inst9|output\(4) & ((\inst4|LowClcok|lab7_task2Sim|sim3|Cout~3_combout\) # (\inst4|LowClcok|lab7_task2Sim|sim3|Cout~2_combout\)))) # 
-- (!\inst4|countersim|Mux28~2_combout\ & ((\inst4|LowClcok|lab7_task2Sim|sim3|Cout~3_combout\) # ((\inst9|output\(4)) # (\inst4|LowClcok|lab7_task2Sim|sim3|Cout~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010111010100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|countersim|Mux28~2_combout\,
	datab => \inst4|LowClcok|lab7_task2Sim|sim3|Cout~3_combout\,
	datac => \inst9|output\(4),
	datad => \inst4|LowClcok|lab7_task2Sim|sim3|Cout~2_combout\,
	combout => \inst4|LowClcok|lab7_task2Sim|sim4|Cout~0_combout\);

-- Location: LCCOMB_X46_Y29_N18
\inst4|LowClcok|lab7_task2Sim|sim6|Cout~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst4|LowClcok|lab7_task2Sim|sim6|Cout~2_combout\ = (\inst4|LowClcok|lab7_task2Sim|sim6|Cout~1_combout\ & ((\inst4|countersim|Mux27~1_combout\ & (\inst9|output\(5) & \inst4|LowClcok|lab7_task2Sim|sim4|Cout~0_combout\)) # 
-- (!\inst4|countersim|Mux27~1_combout\ & ((\inst9|output\(5)) # (\inst4|LowClcok|lab7_task2Sim|sim4|Cout~0_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100010001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|countersim|Mux27~1_combout\,
	datab => \inst4|LowClcok|lab7_task2Sim|sim6|Cout~1_combout\,
	datac => \inst9|output\(5),
	datad => \inst4|LowClcok|lab7_task2Sim|sim4|Cout~0_combout\,
	combout => \inst4|LowClcok|lab7_task2Sim|sim6|Cout~2_combout\);

-- Location: LCCOMB_X46_Y29_N0
\inst4|LowClcok|lab7_task2Sim|sim7|Cout~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst4|LowClcok|lab7_task2Sim|sim7|Cout~0_combout\ = (\inst4|countersim|Mux25~1_combout\ & (\inst9|output\(7) & ((\inst4|LowClcok|lab7_task2Sim|sim6|Cout~0_combout\) # (\inst4|LowClcok|lab7_task2Sim|sim6|Cout~2_combout\)))) # 
-- (!\inst4|countersim|Mux25~1_combout\ & ((\inst4|LowClcok|lab7_task2Sim|sim6|Cout~0_combout\) # ((\inst9|output\(7)) # (\inst4|LowClcok|lab7_task2Sim|sim6|Cout~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010111010100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|countersim|Mux25~1_combout\,
	datab => \inst4|LowClcok|lab7_task2Sim|sim6|Cout~0_combout\,
	datac => \inst9|output\(7),
	datad => \inst4|LowClcok|lab7_task2Sim|sim6|Cout~2_combout\,
	combout => \inst4|LowClcok|lab7_task2Sim|sim7|Cout~0_combout\);

-- Location: LCCOMB_X46_Y29_N30
\inst4|LowClcok|lab7_task2Sim|sim9|Cout~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst4|LowClcok|lab7_task2Sim|sim9|Cout~2_combout\ = (\inst4|LowClcok|lab7_task2Sim|sim9|Cout~1_combout\ & ((\inst4|countersim|Mux24~1_combout\ & (\inst9|output\(8) & \inst4|LowClcok|lab7_task2Sim|sim7|Cout~0_combout\)) # 
-- (!\inst4|countersim|Mux24~1_combout\ & ((\inst9|output\(8)) # (\inst4|LowClcok|lab7_task2Sim|sim7|Cout~0_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010001000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|LowClcok|lab7_task2Sim|sim9|Cout~1_combout\,
	datab => \inst4|countersim|Mux24~1_combout\,
	datac => \inst9|output\(8),
	datad => \inst4|LowClcok|lab7_task2Sim|sim7|Cout~0_combout\,
	combout => \inst4|LowClcok|lab7_task2Sim|sim9|Cout~2_combout\);

-- Location: LCCOMB_X45_Y29_N22
\inst4|LowClcok|lab7_task2Sim|sim10|Cout~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst4|LowClcok|lab7_task2Sim|sim10|Cout~0_combout\ = (\inst4|countersim|Mux22~1_combout\ & (\inst9|output\(10) & ((\inst4|LowClcok|lab7_task2Sim|sim9|Cout~0_combout\) # (\inst4|LowClcok|lab7_task2Sim|sim9|Cout~2_combout\)))) # 
-- (!\inst4|countersim|Mux22~1_combout\ & ((\inst4|LowClcok|lab7_task2Sim|sim9|Cout~0_combout\) # ((\inst9|output\(10)) # (\inst4|LowClcok|lab7_task2Sim|sim9|Cout~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010111010100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|countersim|Mux22~1_combout\,
	datab => \inst4|LowClcok|lab7_task2Sim|sim9|Cout~0_combout\,
	datac => \inst9|output\(10),
	datad => \inst4|LowClcok|lab7_task2Sim|sim9|Cout~2_combout\,
	combout => \inst4|LowClcok|lab7_task2Sim|sim10|Cout~0_combout\);

-- Location: LCCOMB_X45_Y29_N12
\inst4|LowClcok|lab7_task2Sim|sim12|Cout~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst4|LowClcok|lab7_task2Sim|sim12|Cout~2_combout\ = (\inst4|LowClcok|lab7_task2Sim|sim12|Cout~1_combout\ & ((\inst4|countersim|Mux21~1_combout\ & (\inst9|output\(11) & \inst4|LowClcok|lab7_task2Sim|sim10|Cout~0_combout\)) # 
-- (!\inst4|countersim|Mux21~1_combout\ & ((\inst9|output\(11)) # (\inst4|LowClcok|lab7_task2Sim|sim10|Cout~0_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010001000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|LowClcok|lab7_task2Sim|sim12|Cout~1_combout\,
	datab => \inst4|countersim|Mux21~1_combout\,
	datac => \inst9|output\(11),
	datad => \inst4|LowClcok|lab7_task2Sim|sim10|Cout~0_combout\,
	combout => \inst4|LowClcok|lab7_task2Sim|sim12|Cout~2_combout\);

-- Location: LCCOMB_X45_Y29_N2
\inst4|LowClcok|lab7_task2Sim|sim13|Cout~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst4|LowClcok|lab7_task2Sim|sim13|Cout~0_combout\ = (\inst4|countersim|Mux19~1_combout\ & (\inst9|output\(13) & ((\inst4|LowClcok|lab7_task2Sim|sim12|Cout~0_combout\) # (\inst4|LowClcok|lab7_task2Sim|sim12|Cout~2_combout\)))) # 
-- (!\inst4|countersim|Mux19~1_combout\ & ((\inst4|LowClcok|lab7_task2Sim|sim12|Cout~0_combout\) # ((\inst9|output\(13)) # (\inst4|LowClcok|lab7_task2Sim|sim12|Cout~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001110110010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|LowClcok|lab7_task2Sim|sim12|Cout~0_combout\,
	datab => \inst4|countersim|Mux19~1_combout\,
	datac => \inst9|output\(13),
	datad => \inst4|LowClcok|lab7_task2Sim|sim12|Cout~2_combout\,
	combout => \inst4|LowClcok|lab7_task2Sim|sim13|Cout~0_combout\);

-- Location: LCCOMB_X45_Y29_N0
\inst4|LowClcok|lab7_task2Sim|sim15|Cout~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst4|LowClcok|lab7_task2Sim|sim15|Cout~2_combout\ = (\inst4|LowClcok|lab7_task2Sim|sim15|Cout~1_combout\ & ((\inst4|countersim|Mux18~1_combout\ & (\inst9|output\(14) & \inst4|LowClcok|lab7_task2Sim|sim13|Cout~0_combout\)) # 
-- (!\inst4|countersim|Mux18~1_combout\ & ((\inst9|output\(14)) # (\inst4|LowClcok|lab7_task2Sim|sim13|Cout~0_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010001000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|LowClcok|lab7_task2Sim|sim15|Cout~1_combout\,
	datab => \inst4|countersim|Mux18~1_combout\,
	datac => \inst9|output\(14),
	datad => \inst4|LowClcok|lab7_task2Sim|sim13|Cout~0_combout\,
	combout => \inst4|LowClcok|lab7_task2Sim|sim15|Cout~2_combout\);

-- Location: LCCOMB_X45_Y29_N6
\inst4|LowClcok|lab7_task2Sim|sim16|Cout~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst4|LowClcok|lab7_task2Sim|sim16|Cout~0_combout\ = (\inst4|countersim|Mux16~1_combout\ & (\inst5|output\(0) & ((\inst4|LowClcok|lab7_task2Sim|sim15|Cout~0_combout\) # (\inst4|LowClcok|lab7_task2Sim|sim15|Cout~2_combout\)))) # 
-- (!\inst4|countersim|Mux16~1_combout\ & ((\inst4|LowClcok|lab7_task2Sim|sim15|Cout~0_combout\) # ((\inst5|output\(0)) # (\inst4|LowClcok|lab7_task2Sim|sim15|Cout~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001110110010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|LowClcok|lab7_task2Sim|sim15|Cout~0_combout\,
	datab => \inst4|countersim|Mux16~1_combout\,
	datac => \inst5|output\(0),
	datad => \inst4|LowClcok|lab7_task2Sim|sim15|Cout~2_combout\,
	combout => \inst4|LowClcok|lab7_task2Sim|sim16|Cout~0_combout\);

-- Location: LCCOMB_X45_Y29_N20
\inst4|LowClcok|lab7_task2Sim|sim22|Cout~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst4|LowClcok|lab7_task2Sim|sim22|Cout~0_combout\ = (\inst4|countersim|Mux15~1_combout\ & (\inst5|output\(1) & \inst4|LowClcok|lab7_task2Sim|sim16|Cout~0_combout\)) # (!\inst4|countersim|Mux15~1_combout\ & ((\inst5|output\(1)) # 
-- (\inst4|LowClcok|lab7_task2Sim|sim16|Cout~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010101010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|countersim|Mux15~1_combout\,
	datac => \inst5|output\(1),
	datad => \inst4|LowClcok|lab7_task2Sim|sim16|Cout~0_combout\,
	combout => \inst4|LowClcok|lab7_task2Sim|sim22|Cout~0_combout\);

-- Location: LCFF_X45_Y30_N23
\inst4|dataa[20]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ALT_INV_clock~clkctrl_outclk\,
	datain => \inst4|countersim|Mux12~1_combout\,
	aclr => \inst4|process_0~0_combout\,
	ena => \inst4|ti0~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst4|dataa\(20));

-- Location: LCCOMB_X45_Y30_N22
\inst4|countersim|Mux12~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst4|countersim|Mux12~1_combout\ = (!\inst4|counter_0_sel\(1) & (\inst4|dataa\(20) $ (\inst4|HighClock|lab7_task2Sim|sim19|Cout~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001100110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst4|counter_0_sel\(1),
	datac => \inst4|dataa\(20),
	datad => \inst4|HighClock|lab7_task2Sim|sim19|Cout~0_combout\,
	combout => \inst4|countersim|Mux12~1_combout\);

-- Location: LCFF_X45_Y30_N5
\inst5|output[4]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ALT_INV_clock~clkctrl_outclk\,
	sdata => \mem_data~combout\(4),
	aclr => \reset~clkctrl_outclk\,
	sload => VCC,
	ena => \inst17~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst5|output\(4));

-- Location: LCFF_X45_Y30_N3
\inst5|output[6]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ALT_INV_clock~clkctrl_outclk\,
	sdata => \mem_data~combout\(6),
	aclr => \reset~clkctrl_outclk\,
	sload => VCC,
	ena => \inst17~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst5|output\(6));

-- Location: LCFF_X45_Y30_N1
\inst5|output[5]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ALT_INV_clock~clkctrl_outclk\,
	sdata => \mem_data~combout\(5),
	aclr => \reset~clkctrl_outclk\,
	sload => VCC,
	ena => \inst17~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst5|output\(5));

-- Location: LCCOMB_X45_Y30_N0
\inst4|LowClcok|lab7_task2Sim|sim21|Cout~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst4|LowClcok|lab7_task2Sim|sim21|Cout~0_combout\ = (\inst5|output\(5) & ((\inst4|counter_0_sel\(1)) # (\inst4|dataa\(21) $ (!\inst4|HighClock|lab7_task2Sim|sim20|Cout~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000011010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|dataa\(21),
	datab => \inst4|counter_0_sel\(1),
	datac => \inst5|output\(5),
	datad => \inst4|HighClock|lab7_task2Sim|sim20|Cout~0_combout\,
	combout => \inst4|LowClcok|lab7_task2Sim|sim21|Cout~0_combout\);

-- Location: LCCOMB_X45_Y30_N2
\inst4|LowClcok|lab7_task2Sim|sim22|Cout~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst4|LowClcok|lab7_task2Sim|sim22|Cout~3_combout\ = (\inst4|LowClcok|lab7_task2Sim|sim21|Cout~0_combout\) # ((!\inst4|countersim|Mux10~1_combout\ & \inst5|output\(6)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111101010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|countersim|Mux10~1_combout\,
	datac => \inst5|output\(6),
	datad => \inst4|LowClcok|lab7_task2Sim|sim21|Cout~0_combout\,
	combout => \inst4|LowClcok|lab7_task2Sim|sim22|Cout~3_combout\);

-- Location: LCCOMB_X45_Y30_N24
\inst4|LowClcok|lab7_task2Sim|sim22|Cout~5\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst4|LowClcok|lab7_task2Sim|sim22|Cout~5_combout\ = (\inst4|LowClcok|lab7_task2Sim|sim22|Cout~3_combout\) # ((!\inst4|countersim|Mux12~1_combout\ & \inst5|output\(4)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst4|countersim|Mux12~1_combout\,
	datac => \inst5|output\(4),
	datad => \inst4|LowClcok|lab7_task2Sim|sim22|Cout~3_combout\,
	combout => \inst4|LowClcok|lab7_task2Sim|sim22|Cout~5_combout\);

-- Location: LCCOMB_X45_Y30_N10
\inst4|LowClcok|lab7_task2Sim|sim18|Cout~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst4|LowClcok|lab7_task2Sim|sim18|Cout~0_combout\ = (\inst5|output\(2) & ((\inst4|counter_0_sel\(1)) # (\inst4|dataa\(18) $ (!\inst4|HighClock|lab7_task2Sim|sim17|Cout~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100100010001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|counter_0_sel\(1),
	datab => \inst5|output\(2),
	datac => \inst4|dataa\(18),
	datad => \inst4|HighClock|lab7_task2Sim|sim17|Cout~0_combout\,
	combout => \inst4|LowClcok|lab7_task2Sim|sim18|Cout~0_combout\);

-- Location: LCCOMB_X45_Y30_N26
\inst4|LowClcok|lab7_task2Sim|sim22|Cout~6\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst4|LowClcok|lab7_task2Sim|sim22|Cout~6_combout\ = (\inst4|LowClcok|lab7_task2Sim|sim22|Cout~5_combout\) # ((\inst4|countersim|Mux13~1_combout\ & (\inst5|output\(3) & \inst4|LowClcok|lab7_task2Sim|sim18|Cout~0_combout\)) # 
-- (!\inst4|countersim|Mux13~1_combout\ & ((\inst5|output\(3)) # (\inst4|LowClcok|lab7_task2Sim|sim18|Cout~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110111110100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|countersim|Mux13~1_combout\,
	datab => \inst5|output\(3),
	datac => \inst4|LowClcok|lab7_task2Sim|sim22|Cout~5_combout\,
	datad => \inst4|LowClcok|lab7_task2Sim|sim18|Cout~0_combout\,
	combout => \inst4|LowClcok|lab7_task2Sim|sim22|Cout~6_combout\);

-- Location: LCCOMB_X45_Y29_N28
\inst4|LowClcok|lab7_task2Sim|sim22|Cout~8\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst4|LowClcok|lab7_task2Sim|sim22|Cout~8_combout\ = (\inst4|LowClcok|lab7_task2Sim|sim22|Cout~4_combout\ & ((\inst4|LowClcok|lab7_task2Sim|sim22|Cout~6_combout\) # ((\inst4|LowClcok|lab7_task2Sim|sim22|Cout~7_combout\ & 
-- \inst4|LowClcok|lab7_task2Sim|sim22|Cout~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|LowClcok|lab7_task2Sim|sim22|Cout~4_combout\,
	datab => \inst4|LowClcok|lab7_task2Sim|sim22|Cout~7_combout\,
	datac => \inst4|LowClcok|lab7_task2Sim|sim22|Cout~0_combout\,
	datad => \inst4|LowClcok|lab7_task2Sim|sim22|Cout~6_combout\,
	combout => \inst4|LowClcok|lab7_task2Sim|sim22|Cout~8_combout\);

-- Location: LCCOMB_X45_Y29_N18
\inst4|LowClcok|lab7_task2Sim|sim24|Cout~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst4|LowClcok|lab7_task2Sim|sim24|Cout~2_combout\ = (\inst4|LowClcok|lab7_task2Sim|sim24|Cout~1_combout\ & ((\inst4|countersim|Mux9~1_combout\ & (\inst5|output\(7) & \inst4|LowClcok|lab7_task2Sim|sim22|Cout~8_combout\)) # 
-- (!\inst4|countersim|Mux9~1_combout\ & ((\inst5|output\(7)) # (\inst4|LowClcok|lab7_task2Sim|sim22|Cout~8_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010001000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|LowClcok|lab7_task2Sim|sim24|Cout~1_combout\,
	datab => \inst4|countersim|Mux9~1_combout\,
	datac => \inst5|output\(7),
	datad => \inst4|LowClcok|lab7_task2Sim|sim22|Cout~8_combout\,
	combout => \inst4|LowClcok|lab7_task2Sim|sim24|Cout~2_combout\);

-- Location: LCCOMB_X45_Y29_N24
\inst4|LowClcok|lab7_task2Sim|sim25|Cout~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst4|LowClcok|lab7_task2Sim|sim25|Cout~0_combout\ = (\inst4|countersim|Mux7~1_combout\ & (\inst5|output\(9) & ((\inst4|LowClcok|lab7_task2Sim|sim24|Cout~0_combout\) # (\inst4|LowClcok|lab7_task2Sim|sim24|Cout~2_combout\)))) # 
-- (!\inst4|countersim|Mux7~1_combout\ & ((\inst4|LowClcok|lab7_task2Sim|sim24|Cout~0_combout\) # ((\inst5|output\(9)) # (\inst4|LowClcok|lab7_task2Sim|sim24|Cout~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001110110010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|LowClcok|lab7_task2Sim|sim24|Cout~0_combout\,
	datab => \inst4|countersim|Mux7~1_combout\,
	datac => \inst5|output\(9),
	datad => \inst4|LowClcok|lab7_task2Sim|sim24|Cout~2_combout\,
	combout => \inst4|LowClcok|lab7_task2Sim|sim25|Cout~0_combout\);

-- Location: LCCOMB_X44_Y29_N6
\inst4|LowClcok|lab7_task2Sim|sim27|Cout~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst4|LowClcok|lab7_task2Sim|sim27|Cout~2_combout\ = (\inst4|LowClcok|lab7_task2Sim|sim27|Cout~1_combout\ & ((\inst4|countersim|Mux6~1_combout\ & (\inst5|output\(10) & \inst4|LowClcok|lab7_task2Sim|sim25|Cout~0_combout\)) # 
-- (!\inst4|countersim|Mux6~1_combout\ & ((\inst5|output\(10)) # (\inst4|LowClcok|lab7_task2Sim|sim25|Cout~0_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100010001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|countersim|Mux6~1_combout\,
	datab => \inst4|LowClcok|lab7_task2Sim|sim27|Cout~1_combout\,
	datac => \inst5|output\(10),
	datad => \inst4|LowClcok|lab7_task2Sim|sim25|Cout~0_combout\,
	combout => \inst4|LowClcok|lab7_task2Sim|sim27|Cout~2_combout\);

-- Location: LCCOMB_X44_Y29_N12
\inst4|LowClcok|lab7_task2Sim|sim28|Cout~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst4|LowClcok|lab7_task2Sim|sim28|Cout~0_combout\ = (\inst4|countersim|Mux4~1_combout\ & (\inst5|output\(12) & ((\inst4|LowClcok|lab7_task2Sim|sim27|Cout~0_combout\) # (\inst4|LowClcok|lab7_task2Sim|sim27|Cout~2_combout\)))) # 
-- (!\inst4|countersim|Mux4~1_combout\ & ((\inst4|LowClcok|lab7_task2Sim|sim27|Cout~0_combout\) # ((\inst5|output\(12)) # (\inst4|LowClcok|lab7_task2Sim|sim27|Cout~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001110110010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|LowClcok|lab7_task2Sim|sim27|Cout~0_combout\,
	datab => \inst4|countersim|Mux4~1_combout\,
	datac => \inst5|output\(12),
	datad => \inst4|LowClcok|lab7_task2Sim|sim27|Cout~2_combout\,
	combout => \inst4|LowClcok|lab7_task2Sim|sim28|Cout~0_combout\);

-- Location: LCCOMB_X44_Y29_N2
\inst4|LowClcok|lab7_task2Sim|sim30|Cout~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst4|LowClcok|lab7_task2Sim|sim30|Cout~2_combout\ = (\inst4|LowClcok|lab7_task2Sim|sim30|Cout~1_combout\ & ((\inst4|countersim|Mux3~1_combout\ & (\inst5|output\(13) & \inst4|LowClcok|lab7_task2Sim|sim28|Cout~0_combout\)) # 
-- (!\inst4|countersim|Mux3~1_combout\ & ((\inst5|output\(13)) # (\inst4|LowClcok|lab7_task2Sim|sim28|Cout~0_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010001000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|LowClcok|lab7_task2Sim|sim30|Cout~1_combout\,
	datab => \inst4|countersim|Mux3~1_combout\,
	datac => \inst5|output\(13),
	datad => \inst4|LowClcok|lab7_task2Sim|sim28|Cout~0_combout\,
	combout => \inst4|LowClcok|lab7_task2Sim|sim30|Cout~2_combout\);

-- Location: LCCOMB_X44_Y29_N26
\inst4|ti0~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst4|ti0~0_combout\ = (\inst4|countersim|Mux1~1_combout\ & (((!\inst4|LowClcok|lab7_task2Sim|sim30|Cout~0_combout\ & !\inst4|LowClcok|lab7_task2Sim|sim30|Cout~2_combout\)) # (!\inst5|output\(15)))) # (!\inst4|countersim|Mux1~1_combout\ & 
-- (!\inst4|LowClcok|lab7_task2Sim|sim30|Cout~0_combout\ & (!\inst5|output\(15) & !\inst4|LowClcok|lab7_task2Sim|sim30|Cout~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101000101011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|countersim|Mux1~1_combout\,
	datab => \inst4|LowClcok|lab7_task2Sim|sim30|Cout~0_combout\,
	datac => \inst5|output\(15),
	datad => \inst4|LowClcok|lab7_task2Sim|sim30|Cout~2_combout\,
	combout => \inst4|ti0~0_combout\);

-- Location: LCCOMB_X44_Y29_N16
\inst4|ti0~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst4|ti0~1_combout\ = (\inst4|ti0~regout\ & (\inst4|HighClock|lab7_task2Sim|sim31|Cout~0_combout\ $ ((!\inst4|dataa\(32))))) # (!\inst4|ti0~regout\ & (\inst4|ti0~0_combout\ & (\inst4|HighClock|lab7_task2Sim|sim31|Cout~0_combout\ $ 
-- (!\inst4|dataa\(32)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001100110010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|HighClock|lab7_task2Sim|sim31|Cout~0_combout\,
	datab => \inst4|dataa\(32),
	datac => \inst4|ti0~regout\,
	datad => \inst4|ti0~0_combout\,
	combout => \inst4|ti0~1_combout\);

-- Location: LCFF_X44_Y29_N17
\inst4|ti0\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	datain => \inst4|ti0~1_combout\,
	aclr => \inst4|process_0~0_combout\,
	ena => \inst4|ti0~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst4|ti0~regout\);

-- Location: LCCOMB_X1_Y12_N8
\inst21|Mux15~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst21|Mux15~0_combout\ = (!\inst21|Mux6~0_combout\ & ((\inst3|LPM_DECODE_component|auto_generated|w_anode51w[3]~0_combout\ & (\PUSH_BUTTON|lpm_ff_component|dffs\(0))) # (!\inst3|LPM_DECODE_component|auto_generated|w_anode51w[3]~0_combout\ & 
-- ((\inst4|ti0~regout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000101000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst21|Mux6~0_combout\,
	datab => \inst3|LPM_DECODE_component|auto_generated|w_anode51w[3]~0_combout\,
	datac => \PUSH_BUTTON|lpm_ff_component|dffs\(0),
	datad => \inst4|ti0~regout\,
	combout => \inst21|Mux15~0_combout\);

-- Location: PIN_N6,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\SW[0]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_SW(0),
	combout => \SW~combout\(0));

-- Location: LCFF_X1_Y12_N7
\SWITCHS|lpm_ff_component|dffs[0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ALT_INV_clock~clkctrl_outclk\,
	sdata => \SW~combout\(0),
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \SWITCHS|lpm_ff_component|dffs\(0));

-- Location: LCCOMB_X1_Y12_N6
\inst21|Mux15~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst21|Mux15~1_combout\ = (\inst21|Mux15~0_combout\) # ((\SWITCHS|lpm_ff_component|dffs\(0) & \inst21|Mux6~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst21|Mux15~0_combout\,
	datac => \SWITCHS|lpm_ff_component|dffs\(0),
	datad => \inst21|Mux6~0_combout\,
	combout => \inst21|Mux15~1_combout\);

-- Location: LCCOMB_X30_Y32_N22
\inst12~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst12~0_combout\ = (!\mem_addr~combout\(2) & (!\mem_addr~combout\(3) & (\mem_write~combout\ & !\clock~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mem_addr~combout\(2),
	datab => \mem_addr~combout\(3),
	datac => \mem_write~combout\,
	datad => \clock~combout\,
	combout => \inst12~0_combout\);

-- Location: LCCOMB_X30_Y32_N4
inst13 : cycloneii_lcell_comb
-- Equation(s):
-- \inst13~combout\ = LCELL((\mem_addr~combout\(1) & (!\mem_addr~combout\(0) & \inst12~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \mem_addr~combout\(1),
	datac => \mem_addr~combout\(0),
	datad => \inst12~0_combout\,
	combout => \inst13~combout\);

-- Location: CLKCTRL_G8
\inst13~clkctrl\ : cycloneii_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \inst13~clkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \inst13~clkctrl_outclk\);

-- Location: LCCOMB_X63_Y24_N16
\HEX_DISPLAY|lpm_ff_component|dffs[6]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \HEX_DISPLAY|lpm_ff_component|dffs[6]~feeder_combout\ = \mem_data~combout\(6)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \mem_data~combout\(6),
	combout => \HEX_DISPLAY|lpm_ff_component|dffs[6]~feeder_combout\);

-- Location: LCFF_X63_Y24_N17
\HEX_DISPLAY|lpm_ff_component|dffs[6]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \inst13~clkctrl_outclk\,
	datain => \HEX_DISPLAY|lpm_ff_component|dffs[6]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \HEX_DISPLAY|lpm_ff_component|dffs\(6));

-- Location: LCCOMB_X64_Y35_N16
\HEX_DISPLAY|lpm_ff_component|dffs[5]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \HEX_DISPLAY|lpm_ff_component|dffs[5]~feeder_combout\ = \mem_data~combout\(5)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \mem_data~combout\(5),
	combout => \HEX_DISPLAY|lpm_ff_component|dffs[5]~feeder_combout\);

-- Location: LCFF_X64_Y35_N17
\HEX_DISPLAY|lpm_ff_component|dffs[5]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \inst13~clkctrl_outclk\,
	datain => \HEX_DISPLAY|lpm_ff_component|dffs[5]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \HEX_DISPLAY|lpm_ff_component|dffs\(5));

-- Location: LCCOMB_X64_Y24_N12
\HEX_DISPLAY|lpm_ff_component|dffs[4]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \HEX_DISPLAY|lpm_ff_component|dffs[4]~feeder_combout\ = \mem_data~combout\(4)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \mem_data~combout\(4),
	combout => \HEX_DISPLAY|lpm_ff_component|dffs[4]~feeder_combout\);

-- Location: LCFF_X64_Y24_N13
\HEX_DISPLAY|lpm_ff_component|dffs[4]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \inst13~clkctrl_outclk\,
	datain => \HEX_DISPLAY|lpm_ff_component|dffs[4]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \HEX_DISPLAY|lpm_ff_component|dffs\(4));

-- Location: LCCOMB_X64_Y24_N6
\HEX_DISPLAY|lpm_ff_component|dffs[3]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \HEX_DISPLAY|lpm_ff_component|dffs[3]~feeder_combout\ = \mem_data~combout\(3)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \mem_data~combout\(3),
	combout => \HEX_DISPLAY|lpm_ff_component|dffs[3]~feeder_combout\);

-- Location: LCFF_X64_Y24_N7
\HEX_DISPLAY|lpm_ff_component|dffs[3]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \inst13~clkctrl_outclk\,
	datain => \HEX_DISPLAY|lpm_ff_component|dffs[3]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \HEX_DISPLAY|lpm_ff_component|dffs\(3));

-- Location: LCCOMB_X60_Y35_N16
\HEX_DISPLAY|lpm_ff_component|dffs[2]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \HEX_DISPLAY|lpm_ff_component|dffs[2]~feeder_combout\ = \mem_data~combout\(2)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \mem_data~combout\(2),
	combout => \HEX_DISPLAY|lpm_ff_component|dffs[2]~feeder_combout\);

-- Location: LCFF_X60_Y35_N17
\HEX_DISPLAY|lpm_ff_component|dffs[2]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \inst13~clkctrl_outclk\,
	datain => \HEX_DISPLAY|lpm_ff_component|dffs[2]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \HEX_DISPLAY|lpm_ff_component|dffs\(2));

-- Location: LCCOMB_X64_Y24_N16
\HEX_DISPLAY|lpm_ff_component|dffs[1]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \HEX_DISPLAY|lpm_ff_component|dffs[1]~feeder_combout\ = \mem_data~combout\(1)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \mem_data~combout\(1),
	combout => \HEX_DISPLAY|lpm_ff_component|dffs[1]~feeder_combout\);

-- Location: LCFF_X64_Y24_N17
\HEX_DISPLAY|lpm_ff_component|dffs[1]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \inst13~clkctrl_outclk\,
	datain => \HEX_DISPLAY|lpm_ff_component|dffs[1]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \HEX_DISPLAY|lpm_ff_component|dffs\(1));

-- Location: LCCOMB_X62_Y35_N0
\HEX_DISPLAY|lpm_ff_component|dffs[0]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \HEX_DISPLAY|lpm_ff_component|dffs[0]~feeder_combout\ = \mem_data~combout\(0)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \mem_data~combout\(0),
	combout => \HEX_DISPLAY|lpm_ff_component|dffs[0]~feeder_combout\);

-- Location: LCFF_X62_Y35_N1
\HEX_DISPLAY|lpm_ff_component|dffs[0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \inst13~clkctrl_outclk\,
	datain => \HEX_DISPLAY|lpm_ff_component|dffs[0]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \HEX_DISPLAY|lpm_ff_component|dffs\(0));

-- Location: LCCOMB_X30_Y32_N10
inst12 : cycloneii_lcell_comb
-- Equation(s):
-- \inst12~combout\ = LCELL((!\mem_addr~combout\(1) & (\mem_addr~combout\(0) & \inst12~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \mem_addr~combout\(1),
	datac => \mem_addr~combout\(0),
	datad => \inst12~0_combout\,
	combout => \inst12~combout\);

-- Location: CLKCTRL_G10
\inst12~clkctrl\ : cycloneii_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \inst12~clkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \inst12~clkctrl_outclk\);

-- Location: LCCOMB_X63_Y35_N0
\LED|lpm_ff_component|dffs[7]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \LED|lpm_ff_component|dffs[7]~feeder_combout\ = \mem_data~combout\(7)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \mem_data~combout\(7),
	combout => \LED|lpm_ff_component|dffs[7]~feeder_combout\);

-- Location: LCFF_X63_Y35_N1
\LED|lpm_ff_component|dffs[7]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \inst12~clkctrl_outclk\,
	datain => \LED|lpm_ff_component|dffs[7]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \LED|lpm_ff_component|dffs\(7));

-- Location: LCCOMB_X63_Y24_N26
\LED|lpm_ff_component|dffs[6]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \LED|lpm_ff_component|dffs[6]~feeder_combout\ = \mem_data~combout\(6)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \mem_data~combout\(6),
	combout => \LED|lpm_ff_component|dffs[6]~feeder_combout\);

-- Location: LCFF_X63_Y24_N27
\LED|lpm_ff_component|dffs[6]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \inst12~clkctrl_outclk\,
	datain => \LED|lpm_ff_component|dffs[6]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \LED|lpm_ff_component|dffs\(6));

-- Location: LCCOMB_X64_Y35_N18
\LED|lpm_ff_component|dffs[5]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \LED|lpm_ff_component|dffs[5]~feeder_combout\ = \mem_data~combout\(5)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \mem_data~combout\(5),
	combout => \LED|lpm_ff_component|dffs[5]~feeder_combout\);

-- Location: LCFF_X64_Y35_N19
\LED|lpm_ff_component|dffs[5]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \inst12~clkctrl_outclk\,
	datain => \LED|lpm_ff_component|dffs[5]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \LED|lpm_ff_component|dffs\(5));

-- Location: LCCOMB_X64_Y24_N10
\LED|lpm_ff_component|dffs[4]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \LED|lpm_ff_component|dffs[4]~feeder_combout\ = \mem_data~combout\(4)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \mem_data~combout\(4),
	combout => \LED|lpm_ff_component|dffs[4]~feeder_combout\);

-- Location: LCFF_X64_Y24_N11
\LED|lpm_ff_component|dffs[4]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \inst12~clkctrl_outclk\,
	datain => \LED|lpm_ff_component|dffs[4]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \LED|lpm_ff_component|dffs\(4));

-- Location: LCFF_X63_Y35_N3
\LED|lpm_ff_component|dffs[3]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \inst12~clkctrl_outclk\,
	sdata => \mem_data~combout\(3),
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \LED|lpm_ff_component|dffs\(3));

-- Location: LCCOMB_X60_Y35_N10
\LED|lpm_ff_component|dffs[2]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \LED|lpm_ff_component|dffs[2]~feeder_combout\ = \mem_data~combout\(2)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \mem_data~combout\(2),
	combout => \LED|lpm_ff_component|dffs[2]~feeder_combout\);

-- Location: LCFF_X60_Y35_N11
\LED|lpm_ff_component|dffs[2]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \inst12~clkctrl_outclk\,
	datain => \LED|lpm_ff_component|dffs[2]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \LED|lpm_ff_component|dffs\(2));

-- Location: LCCOMB_X64_Y24_N0
\LED|lpm_ff_component|dffs[1]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \LED|lpm_ff_component|dffs[1]~feeder_combout\ = \mem_data~combout\(1)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \mem_data~combout\(1),
	combout => \LED|lpm_ff_component|dffs[1]~feeder_combout\);

-- Location: LCFF_X64_Y24_N1
\LED|lpm_ff_component|dffs[1]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \inst12~clkctrl_outclk\,
	datain => \LED|lpm_ff_component|dffs[1]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \LED|lpm_ff_component|dffs\(1));

-- Location: LCCOMB_X62_Y35_N2
\LED|lpm_ff_component|dffs[0]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \LED|lpm_ff_component|dffs[0]~feeder_combout\ = \mem_data~combout\(0)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \mem_data~combout\(0),
	combout => \LED|lpm_ff_component|dffs[0]~feeder_combout\);

-- Location: LCFF_X62_Y35_N3
\LED|lpm_ff_component|dffs[0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \inst12~clkctrl_outclk\,
	datain => \LED|lpm_ff_component|dffs[0]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \LED|lpm_ff_component|dffs\(0));

-- Location: PIN_A16,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\stickHitHigh~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \inst2|piece1Hit~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_stickHitHigh);

-- Location: PIN_A13,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\stickHitLow~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \inst2|piece1Polar~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_stickHitLow);

-- Location: PIN_B15,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\restart~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \inst11|output~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_restart);

-- Location: PIN_D15,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\currM[15]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \inst2|currMeasure\(15),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_currM(15));

-- Location: PIN_K20,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\currM[14]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \inst2|currMeasure\(14),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_currM(14));

-- Location: PIN_J17,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\currM[13]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \inst2|currMeasure\(13),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_currM(13));

-- Location: PIN_A17,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\currM[12]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \inst2|currMeasure\(12),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_currM(12));

-- Location: PIN_D14,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\currM[11]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \inst2|currMeasure\(11),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_currM(11));

-- Location: PIN_H18,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\currM[10]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \inst2|currMeasure\(10),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_currM(10));

-- Location: PIN_C14,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\currM[9]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \inst2|currMeasure\(9),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_currM(9));

-- Location: PIN_H19,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\currM[8]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \inst2|currMeasure\(8),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_currM(8));

-- Location: PIN_B13,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\currM[7]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \inst2|currMeasure\(7),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_currM(7));

-- Location: PIN_K21,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\currM[6]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \inst2|currMeasure\(6),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_currM(6));

-- Location: PIN_F10,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\currM[5]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \inst2|currMeasure\(5),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_currM(5));

-- Location: PIN_B14,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\currM[4]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \inst2|currMeasure\(4),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_currM(4));

-- Location: PIN_B16,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\currM[3]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \inst2|currMeasure\(3),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_currM(3));

-- Location: PIN_A14,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\currM[2]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \inst2|currMeasure\(2),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_currM(2));

-- Location: PIN_G11,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\currM[1]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \inst2|currMeasure\(1),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_currM(1));

-- Location: PIN_H11,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\currM[0]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \inst2|currMeasure\(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_currM(0));

-- Location: PIN_E1,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\data_out[15]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_data_out(15));

-- Location: PIN_J1,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\data_out[14]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_data_out(14));

-- Location: PIN_AA17,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\data_out[13]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_data_out(13));

-- Location: PIN_J4,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\data_out[12]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_data_out(12));

-- Location: PIN_AA20,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\data_out[11]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_data_out(11));

-- Location: PIN_H5,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\data_out[10]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_data_out(10));

-- Location: PIN_R7,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\data_out[9]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \inst21|Mux6~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_data_out(9));

-- Location: PIN_P4,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\data_out[8]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \inst21|Mux7~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_data_out(8));

-- Location: PIN_P6,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\data_out[7]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \inst21|Mux8~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_data_out(7));

-- Location: PIN_R4,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\data_out[6]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \inst21|Mux9~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_data_out(6));

-- Location: PIN_N3,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\data_out[5]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \inst21|Mux10~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_data_out(5));

-- Location: PIN_T2,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\data_out[4]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \inst21|Mux11~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_data_out(4));

-- Location: PIN_V2,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\data_out[3]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \inst21|Mux12~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_data_out(3));

-- Location: PIN_R1,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\data_out[2]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \inst21|Mux13~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_data_out(2));

-- Location: PIN_U1,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\data_out[1]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \inst21|Mux14~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_data_out(1));

-- Location: PIN_T1,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\data_out[0]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \inst21|Mux15~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_data_out(0));

-- Location: PIN_M19,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\HEX0[6]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \HEX_DISPLAY|lpm_ff_component|dffs\(6),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_HEX0(6));

-- Location: PIN_E18,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\HEX0[5]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \HEX_DISPLAY|lpm_ff_component|dffs\(5),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_HEX0(5));

-- Location: PIN_K17,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\HEX0[4]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \HEX_DISPLAY|lpm_ff_component|dffs\(4),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_HEX0(4));

-- Location: PIN_J21,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\HEX0[3]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \HEX_DISPLAY|lpm_ff_component|dffs\(3),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_HEX0(3));

-- Location: PIN_H15,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\HEX0[2]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \HEX_DISPLAY|lpm_ff_component|dffs\(2),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_HEX0(2));

-- Location: PIN_L17,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\HEX0[1]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \HEX_DISPLAY|lpm_ff_component|dffs\(1),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_HEX0(1));

-- Location: PIN_A19,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\HEX0[0]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \HEX_DISPLAY|lpm_ff_component|dffs\(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_HEX0(0));

-- Location: PIN_A20,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\LEDG[7]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \LED|lpm_ff_component|dffs\(7),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_LEDG(7));

-- Location: PIN_M18,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\LEDG[6]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \LED|lpm_ff_component|dffs\(6),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_LEDG(6));

-- Location: PIN_E19,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\LEDG[5]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \LED|lpm_ff_component|dffs\(5),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_LEDG(5));

-- Location: PIN_N22,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\LEDG[4]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \LED|lpm_ff_component|dffs\(4),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_LEDG(4));

-- Location: PIN_B20,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\LEDG[3]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \LED|lpm_ff_component|dffs\(3),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_LEDG(3));

-- Location: PIN_B18,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\LEDG[2]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \LED|lpm_ff_component|dffs\(2),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_LEDG(2));

-- Location: PIN_N21,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\LEDG[1]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \LED|lpm_ff_component|dffs\(1),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_LEDG(1));

-- Location: PIN_B19,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\LEDG[0]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \LED|lpm_ff_component|dffs\(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_LEDG(0));

-- Location: PIN_L18,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\Measure[15]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \SWITCHES4|lpm_ff_component|dffs\(15),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_Measure(15));

-- Location: PIN_C16,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\Measure[14]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \SWITCHES4|lpm_ff_component|dffs\(14),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_Measure(14));

-- Location: PIN_D16,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\Measure[13]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \SWITCHES4|lpm_ff_component|dffs\(13),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_Measure(13));

-- Location: PIN_J22,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\Measure[12]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \SWITCHES4|lpm_ff_component|dffs\(12),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_Measure(12));

-- Location: PIN_K18,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\Measure[11]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \SWITCHES4|lpm_ff_component|dffs\(11),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_Measure(11));

-- Location: PIN_F12,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\Measure[10]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \SWITCHES4|lpm_ff_component|dffs\(10),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_Measure(10));

-- Location: PIN_G20,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\Measure[9]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \SWITCHES4|lpm_ff_component|dffs\(9),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_Measure(9));

-- Location: PIN_L19,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\Measure[8]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \SWITCHES4|lpm_ff_component|dffs\(8),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_Measure(8));

-- Location: PIN_K22,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\Measure[7]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \SWITCHES4|lpm_ff_component|dffs\(7),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_Measure(7));

-- Location: PIN_F20,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\Measure[6]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \SWITCHES4|lpm_ff_component|dffs\(6),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_Measure(6));

-- Location: PIN_J20,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\Measure[5]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \SWITCHES4|lpm_ff_component|dffs\(5),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_Measure(5));

-- Location: PIN_J19,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\Measure[4]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \SWITCHES4|lpm_ff_component|dffs\(4),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_Measure(4));

-- Location: PIN_E15,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\Measure[3]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \SWITCHES4|lpm_ff_component|dffs\(3),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_Measure(3));

-- Location: PIN_D21,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\Measure[2]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \SWITCHES4|lpm_ff_component|dffs\(2),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_Measure(2));

-- Location: PIN_G17,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\Measure[1]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \SWITCHES4|lpm_ff_component|dffs\(1),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_Measure(1));

-- Location: PIN_E14,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\Measure[0]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \SWITCHES4|lpm_ff_component|dffs\(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_Measure(0));

-- Location: PIN_C21,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\nextM[15]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \inst2|nextMeasure\(15),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_nextM(15));

-- Location: PIN_J15,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\nextM[14]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \inst2|nextMeasure\(14),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_nextM(14));

-- Location: PIN_H21,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\nextM[13]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \inst2|nextMeasure\(13),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_nextM(13));

-- Location: PIN_J18,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\nextM[12]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \inst2|nextMeasure\(12),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_nextM(12));

-- Location: PIN_H17,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\nextM[11]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \inst2|nextMeasure\(11),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_nextM(11));

-- Location: PIN_E20,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\nextM[10]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \inst2|nextMeasure\(10),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_nextM(10));

-- Location: PIN_E22,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\nextM[9]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \inst2|nextMeasure\(9),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_nextM(9));

-- Location: PIN_G22,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\nextM[8]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \inst2|nextMeasure\(8),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_nextM(8));

-- Location: PIN_F22,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\nextM[7]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \inst2|nextMeasure\(7),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_nextM(7));

-- Location: PIN_F21,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\nextM[6]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \inst2|nextMeasure\(6),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_nextM(6));

-- Location: PIN_A15,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\nextM[5]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \inst2|nextMeasure\(5),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_nextM(5));

-- Location: PIN_G21,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\nextM[4]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \inst2|nextMeasure\(4),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_nextM(4));

-- Location: PIN_H22,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\nextM[3]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \inst2|nextMeasure\(3),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_nextM(3));

-- Location: PIN_F14,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\nextM[2]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \inst2|nextMeasure\(2),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_nextM(2));

-- Location: PIN_B11,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\nextM[1]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \inst2|nextMeasure\(1),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_nextM(1));

-- Location: PIN_C13,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\nextM[0]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \inst2|nextMeasure\(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_nextM(0));
END structure;


