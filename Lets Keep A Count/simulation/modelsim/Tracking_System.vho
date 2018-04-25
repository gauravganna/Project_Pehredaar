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
-- PROGRAM "Quartus II 32-bit"
-- VERSION "Version 13.0.1 Build 232 06/12/2013 Service Pack 1 SJ Web Edition"

-- DATE "04/26/2018 00:08:17"

-- 
-- Device: Altera EPM3064ALC44-10 Package PLCC44
-- 

-- 
-- This VHDL file should be used for ModelSim-Altera (VHDL) only
-- 

LIBRARY IEEE;
LIBRARY MAX;
USE IEEE.STD_LOGIC_1164.ALL;
USE MAX.MAX_COMPONENTS.ALL;

ENTITY 	Haziri IS
    PORT (
	CLK : IN std_logic;
	OP : OUT std_logic_vector(3 DOWNTO 0);
	SEL : INOUT std_logic_vector(3 DOWNTO 0);
	OVERFLOW : OUT std_logic;
	DP : OUT std_logic
	);
END Haziri;

-- Design Ports Information
-- CLK	=>  Location: PIN_43
-- DP	=>  Location: PIN_39
-- SEL[0]	=>  Location: PIN_27
-- SEL[1]	=>  Location: PIN_26
-- SEL[2]	=>  Location: PIN_25
-- SEL[3]	=>  Location: PIN_24
-- OP[1]	=>  Location: PIN_31
-- OP[2]	=>  Location: PIN_29
-- OP[3]	=>  Location: PIN_28
-- OVERFLOW	=>  Location: PIN_34
-- OP[0]	=>  Location: PIN_33


ARCHITECTURE structure OF Haziri IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL ww_CLK : std_logic;
SIGNAL ww_OP : std_logic_vector(3 DOWNTO 0);
SIGNAL ww_OVERFLOW : std_logic;
SIGNAL ww_DP : std_logic;
SIGNAL \process_1:CNT[1]_pterm0_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \process_1:CNT[1]_pterm1_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \process_1:CNT[1]_pterm2_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \process_1:CNT[1]_pterm3_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \process_1:CNT[1]_pterm4_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \process_1:CNT[1]_pterm5_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \process_1:CNT[1]_pxor_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \process_1:CNT[1]_pclk_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \process_1:CNT[1]_pena_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \process_1:CNT[1]_paclr_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \process_1:CNT[1]_papre_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \process_1:CNT[2]_pterm0_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \process_1:CNT[2]_pterm1_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \process_1:CNT[2]_pterm2_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \process_1:CNT[2]_pterm3_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \process_1:CNT[2]_pterm4_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \process_1:CNT[2]_pterm5_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \process_1:CNT[2]_pxor_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \process_1:CNT[2]_pclk_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \process_1:CNT[2]_pena_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \process_1:CNT[2]_paclr_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \process_1:CNT[2]_papre_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \process_1:CNT[3]_pterm0_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \process_1:CNT[3]_pterm1_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \process_1:CNT[3]_pterm2_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \process_1:CNT[3]_pterm3_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \process_1:CNT[3]_pterm4_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \process_1:CNT[3]_pterm5_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \process_1:CNT[3]_pxor_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \process_1:CNT[3]_pclk_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \process_1:CNT[3]_pena_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \process_1:CNT[3]_paclr_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \process_1:CNT[3]_papre_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \process_1:CNT[4]_pterm0_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \process_1:CNT[4]_pterm1_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \process_1:CNT[4]_pterm2_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \process_1:CNT[4]_pterm3_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \process_1:CNT[4]_pterm4_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \process_1:CNT[4]_pterm5_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \process_1:CNT[4]_pxor_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \process_1:CNT[4]_pclk_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \process_1:CNT[4]_pena_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \process_1:CNT[4]_paclr_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \process_1:CNT[4]_papre_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \process_1:CNT[5]_pterm0_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \process_1:CNT[5]_pterm1_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \process_1:CNT[5]_pterm2_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \process_1:CNT[5]_pterm3_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \process_1:CNT[5]_pterm4_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \process_1:CNT[5]_pterm5_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \process_1:CNT[5]_pxor_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \process_1:CNT[5]_pclk_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \process_1:CNT[5]_pena_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \process_1:CNT[5]_paclr_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \process_1:CNT[5]_papre_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \process_1:CNT[6]_pterm0_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \process_1:CNT[6]_pterm1_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \process_1:CNT[6]_pterm2_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \process_1:CNT[6]_pterm3_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \process_1:CNT[6]_pterm4_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \process_1:CNT[6]_pterm5_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \process_1:CNT[6]_pxor_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \process_1:CNT[6]_pclk_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \process_1:CNT[6]_pena_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \process_1:CNT[6]_paclr_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \process_1:CNT[6]_papre_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \process_1:CNT[7]_pterm0_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \process_1:CNT[7]_pterm1_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \process_1:CNT[7]_pterm2_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \process_1:CNT[7]_pterm3_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \process_1:CNT[7]_pterm4_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \process_1:CNT[7]_pterm5_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \process_1:CNT[7]_pxor_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \process_1:CNT[7]_pclk_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \process_1:CNT[7]_pena_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \process_1:CNT[7]_paclr_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \process_1:CNT[7]_papre_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \process_1:CNT[8]_pterm0_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \process_1:CNT[8]_pterm1_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \process_1:CNT[8]_pterm2_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \process_1:CNT[8]_pterm3_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \process_1:CNT[8]_pterm4_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \process_1:CNT[8]_pterm5_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \process_1:CNT[8]_pxor_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \process_1:CNT[8]_pclk_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \process_1:CNT[8]_pena_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \process_1:CNT[8]_paclr_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \process_1:CNT[8]_papre_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \process_1:CNT[0]_pterm0_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \process_1:CNT[0]_pterm1_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \process_1:CNT[0]_pterm2_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \process_1:CNT[0]_pterm3_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \process_1:CNT[0]_pterm4_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \process_1:CNT[0]_pterm5_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \process_1:CNT[0]_pxor_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \process_1:CNT[0]_pclk_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \process_1:CNT[0]_pena_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \process_1:CNT[0]_paclr_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \process_1:CNT[0]_papre_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \Q.state_bit_0_pterm0_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \Q.state_bit_0_pterm1_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \Q.state_bit_0_pterm2_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \Q.state_bit_0_pterm3_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \Q.state_bit_0_pterm4_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \Q.state_bit_0_pterm5_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \Q.state_bit_0_pxor_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \Q.state_bit_0_pclk_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \Q.state_bit_0_pena_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \Q.state_bit_0_paclr_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \Q.state_bit_0_papre_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL CNT_CLK_pterm0_bus : std_logic_vector(51 DOWNTO 0);
SIGNAL CNT_CLK_pterm1_bus : std_logic_vector(51 DOWNTO 0);
SIGNAL CNT_CLK_pterm2_bus : std_logic_vector(51 DOWNTO 0);
SIGNAL CNT_CLK_pterm3_bus : std_logic_vector(51 DOWNTO 0);
SIGNAL CNT_CLK_pterm4_bus : std_logic_vector(51 DOWNTO 0);
SIGNAL CNT_CLK_pterm5_bus : std_logic_vector(51 DOWNTO 0);
SIGNAL CNT_CLK_pxor_bus : std_logic_vector(51 DOWNTO 0);
SIGNAL CNT_CLK_pclk_bus : std_logic_vector(51 DOWNTO 0);
SIGNAL CNT_CLK_pena_bus : std_logic_vector(51 DOWNTO 0);
SIGNAL CNT_CLK_paclr_bus : std_logic_vector(51 DOWNTO 0);
SIGNAL CNT_CLK_papre_bus : std_logic_vector(51 DOWNTO 0);
SIGNAL CLK_NEW_pterm0_bus : std_logic_vector(51 DOWNTO 0);
SIGNAL CLK_NEW_pterm1_bus : std_logic_vector(51 DOWNTO 0);
SIGNAL CLK_NEW_pterm2_bus : std_logic_vector(51 DOWNTO 0);
SIGNAL CLK_NEW_pterm3_bus : std_logic_vector(51 DOWNTO 0);
SIGNAL CLK_NEW_pterm4_bus : std_logic_vector(51 DOWNTO 0);
SIGNAL CLK_NEW_pterm5_bus : std_logic_vector(51 DOWNTO 0);
SIGNAL CLK_NEW_pxor_bus : std_logic_vector(51 DOWNTO 0);
SIGNAL CLK_NEW_pclk_bus : std_logic_vector(51 DOWNTO 0);
SIGNAL CLK_NEW_pena_bus : std_logic_vector(51 DOWNTO 0);
SIGNAL CLK_NEW_paclr_bus : std_logic_vector(51 DOWNTO 0);
SIGNAL CLK_NEW_papre_bus : std_logic_vector(51 DOWNTO 0);
SIGNAL \Q.state_bit_1_pterm0_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \Q.state_bit_1_pterm1_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \Q.state_bit_1_pterm2_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \Q.state_bit_1_pterm3_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \Q.state_bit_1_pterm4_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \Q.state_bit_1_pterm5_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \Q.state_bit_1_pxor_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \Q.state_bit_1_pclk_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \Q.state_bit_1_pena_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \Q.state_bit_1_paclr_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \Q.state_bit_1_papre_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \cnt_rtl_0|dffs[13]_pterm0_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \cnt_rtl_0|dffs[13]_pterm1_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \cnt_rtl_0|dffs[13]_pterm2_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \cnt_rtl_0|dffs[13]_pterm3_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \cnt_rtl_0|dffs[13]_pterm4_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \cnt_rtl_0|dffs[13]_pterm5_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \cnt_rtl_0|dffs[13]_pxor_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \cnt_rtl_0|dffs[13]_pclk_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \cnt_rtl_0|dffs[13]_pena_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \cnt_rtl_0|dffs[13]_paclr_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \cnt_rtl_0|dffs[13]_papre_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \cnt_rtl_0|dffs[12]_pterm0_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \cnt_rtl_0|dffs[12]_pterm1_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \cnt_rtl_0|dffs[12]_pterm2_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \cnt_rtl_0|dffs[12]_pterm3_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \cnt_rtl_0|dffs[12]_pterm4_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \cnt_rtl_0|dffs[12]_pterm5_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \cnt_rtl_0|dffs[12]_pxor_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \cnt_rtl_0|dffs[12]_pclk_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \cnt_rtl_0|dffs[12]_pena_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \cnt_rtl_0|dffs[12]_paclr_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \cnt_rtl_0|dffs[12]_papre_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \cnt_rtl_0|dffs[11]_pterm0_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \cnt_rtl_0|dffs[11]_pterm1_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \cnt_rtl_0|dffs[11]_pterm2_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \cnt_rtl_0|dffs[11]_pterm3_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \cnt_rtl_0|dffs[11]_pterm4_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \cnt_rtl_0|dffs[11]_pterm5_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \cnt_rtl_0|dffs[11]_pxor_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \cnt_rtl_0|dffs[11]_pclk_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \cnt_rtl_0|dffs[11]_pena_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \cnt_rtl_0|dffs[11]_paclr_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \cnt_rtl_0|dffs[11]_papre_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \cnt_rtl_0|dffs[10]_pterm0_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \cnt_rtl_0|dffs[10]_pterm1_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \cnt_rtl_0|dffs[10]_pterm2_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \cnt_rtl_0|dffs[10]_pterm3_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \cnt_rtl_0|dffs[10]_pterm4_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \cnt_rtl_0|dffs[10]_pterm5_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \cnt_rtl_0|dffs[10]_pxor_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \cnt_rtl_0|dffs[10]_pclk_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \cnt_rtl_0|dffs[10]_pena_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \cnt_rtl_0|dffs[10]_paclr_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \cnt_rtl_0|dffs[10]_papre_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \cnt_rtl_0|dffs[9]_pterm0_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \cnt_rtl_0|dffs[9]_pterm1_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \cnt_rtl_0|dffs[9]_pterm2_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \cnt_rtl_0|dffs[9]_pterm3_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \cnt_rtl_0|dffs[9]_pterm4_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \cnt_rtl_0|dffs[9]_pterm5_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \cnt_rtl_0|dffs[9]_pxor_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \cnt_rtl_0|dffs[9]_pclk_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \cnt_rtl_0|dffs[9]_pena_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \cnt_rtl_0|dffs[9]_paclr_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \cnt_rtl_0|dffs[9]_papre_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \cnt_rtl_0|dffs[8]_pterm0_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \cnt_rtl_0|dffs[8]_pterm1_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \cnt_rtl_0|dffs[8]_pterm2_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \cnt_rtl_0|dffs[8]_pterm3_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \cnt_rtl_0|dffs[8]_pterm4_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \cnt_rtl_0|dffs[8]_pterm5_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \cnt_rtl_0|dffs[8]_pxor_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \cnt_rtl_0|dffs[8]_pclk_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \cnt_rtl_0|dffs[8]_pena_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \cnt_rtl_0|dffs[8]_paclr_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \cnt_rtl_0|dffs[8]_papre_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \cnt_rtl_0|dffs[7]_pterm0_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \cnt_rtl_0|dffs[7]_pterm1_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \cnt_rtl_0|dffs[7]_pterm2_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \cnt_rtl_0|dffs[7]_pterm3_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \cnt_rtl_0|dffs[7]_pterm4_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \cnt_rtl_0|dffs[7]_pterm5_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \cnt_rtl_0|dffs[7]_pxor_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \cnt_rtl_0|dffs[7]_pclk_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \cnt_rtl_0|dffs[7]_pena_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \cnt_rtl_0|dffs[7]_paclr_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \cnt_rtl_0|dffs[7]_papre_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \cnt_rtl_0|dffs[6]_pterm0_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \cnt_rtl_0|dffs[6]_pterm1_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \cnt_rtl_0|dffs[6]_pterm2_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \cnt_rtl_0|dffs[6]_pterm3_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \cnt_rtl_0|dffs[6]_pterm4_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \cnt_rtl_0|dffs[6]_pterm5_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \cnt_rtl_0|dffs[6]_pxor_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \cnt_rtl_0|dffs[6]_pclk_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \cnt_rtl_0|dffs[6]_pena_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \cnt_rtl_0|dffs[6]_paclr_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \cnt_rtl_0|dffs[6]_papre_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \cnt_rtl_0|dffs[5]_pterm0_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \cnt_rtl_0|dffs[5]_pterm1_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \cnt_rtl_0|dffs[5]_pterm2_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \cnt_rtl_0|dffs[5]_pterm3_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \cnt_rtl_0|dffs[5]_pterm4_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \cnt_rtl_0|dffs[5]_pterm5_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \cnt_rtl_0|dffs[5]_pxor_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \cnt_rtl_0|dffs[5]_pclk_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \cnt_rtl_0|dffs[5]_pena_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \cnt_rtl_0|dffs[5]_paclr_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \cnt_rtl_0|dffs[5]_papre_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \cnt_rtl_0|dffs[4]_pterm0_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \cnt_rtl_0|dffs[4]_pterm1_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \cnt_rtl_0|dffs[4]_pterm2_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \cnt_rtl_0|dffs[4]_pterm3_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \cnt_rtl_0|dffs[4]_pterm4_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \cnt_rtl_0|dffs[4]_pterm5_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \cnt_rtl_0|dffs[4]_pxor_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \cnt_rtl_0|dffs[4]_pclk_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \cnt_rtl_0|dffs[4]_pena_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \cnt_rtl_0|dffs[4]_paclr_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \cnt_rtl_0|dffs[4]_papre_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \cnt_rtl_0|dffs[3]_pterm0_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \cnt_rtl_0|dffs[3]_pterm1_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \cnt_rtl_0|dffs[3]_pterm2_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \cnt_rtl_0|dffs[3]_pterm3_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \cnt_rtl_0|dffs[3]_pterm4_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \cnt_rtl_0|dffs[3]_pterm5_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \cnt_rtl_0|dffs[3]_pxor_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \cnt_rtl_0|dffs[3]_pclk_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \cnt_rtl_0|dffs[3]_pena_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \cnt_rtl_0|dffs[3]_paclr_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \cnt_rtl_0|dffs[3]_papre_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \cnt_rtl_0|dffs[2]_pterm0_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \cnt_rtl_0|dffs[2]_pterm1_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \cnt_rtl_0|dffs[2]_pterm2_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \cnt_rtl_0|dffs[2]_pterm3_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \cnt_rtl_0|dffs[2]_pterm4_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \cnt_rtl_0|dffs[2]_pterm5_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \cnt_rtl_0|dffs[2]_pxor_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \cnt_rtl_0|dffs[2]_pclk_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \cnt_rtl_0|dffs[2]_pena_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \cnt_rtl_0|dffs[2]_paclr_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \cnt_rtl_0|dffs[2]_papre_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \Q.S0~3_pterm0_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \Q.S0~3_pterm1_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \Q.S0~3_pterm2_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \Q.S0~3_pterm3_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \Q.S0~3_pterm4_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \Q.S0~3_pterm5_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \Q.S0~3_pxor_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \Q.S0~3_pclk_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \Q.S0~3_pena_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \Q.S0~3_paclr_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \Q.S0~3_papre_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \Q.S1~3_pterm0_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \Q.S1~3_pterm1_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \Q.S1~3_pterm2_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \Q.S1~3_pterm3_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \Q.S1~3_pterm4_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \Q.S1~3_pterm5_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \Q.S1~3_pxor_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \Q.S1~3_pclk_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \Q.S1~3_pena_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \Q.S1~3_paclr_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \Q.S1~3_papre_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \Q.S2~3_pterm0_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \Q.S2~3_pterm1_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \Q.S2~3_pterm2_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \Q.S2~3_pterm3_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \Q.S2~3_pterm4_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \Q.S2~3_pterm5_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \Q.S2~3_pxor_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \Q.S2~3_pclk_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \Q.S2~3_pena_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \Q.S2~3_paclr_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \Q.S2~3_papre_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \Q.S3~3_pterm0_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \Q.S3~3_pterm1_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \Q.S3~3_pterm2_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \Q.S3~3_pterm3_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \Q.S3~3_pterm4_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \Q.S3~3_pterm5_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \Q.S3~3_pxor_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \Q.S3~3_pclk_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \Q.S3~3_pena_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \Q.S3~3_paclr_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \Q.S3~3_papre_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \cnt_rtl_0|dffs[0]_pterm0_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \cnt_rtl_0|dffs[0]_pterm1_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \cnt_rtl_0|dffs[0]_pterm2_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \cnt_rtl_0|dffs[0]_pterm3_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \cnt_rtl_0|dffs[0]_pterm4_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \cnt_rtl_0|dffs[0]_pterm5_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \cnt_rtl_0|dffs[0]_pxor_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \cnt_rtl_0|dffs[0]_pclk_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \cnt_rtl_0|dffs[0]_pena_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \cnt_rtl_0|dffs[0]_paclr_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \cnt_rtl_0|dffs[0]_papre_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \cnt_rtl_0|dffs[1]_pterm0_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \cnt_rtl_0|dffs[1]_pterm1_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \cnt_rtl_0|dffs[1]_pterm2_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \cnt_rtl_0|dffs[1]_pterm3_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \cnt_rtl_0|dffs[1]_pterm4_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \cnt_rtl_0|dffs[1]_pterm5_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \cnt_rtl_0|dffs[1]_pxor_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \cnt_rtl_0|dffs[1]_pclk_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \cnt_rtl_0|dffs[1]_pena_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \cnt_rtl_0|dffs[1]_paclr_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \cnt_rtl_0|dffs[1]_papre_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \O[0]_pterm0_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \O[0]_pterm1_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \O[0]_pterm2_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \O[0]_pterm3_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \O[0]_pterm4_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \O[0]_pterm5_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \O[0]_pxor_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \O[0]_pclk_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \O[0]_pena_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \O[0]_paclr_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \O[0]_papre_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \O[1]_pterm0_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \O[1]_pterm1_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \O[1]_pterm2_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \O[1]_pterm3_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \O[1]_pterm4_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \O[1]_pterm5_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \O[1]_pxor_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \O[1]_pclk_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \O[1]_pena_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \O[1]_paclr_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \O[1]_papre_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \O[2]_pterm0_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \O[2]_pterm1_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \O[2]_pterm2_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \O[2]_pterm3_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \O[2]_pterm4_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \O[2]_pterm5_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \O[2]_pxor_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \O[2]_pclk_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \O[2]_pena_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \O[2]_paclr_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \O[2]_papre_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \O[3]_pterm0_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \O[3]_pterm1_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \O[3]_pterm2_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \O[3]_pterm3_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \O[3]_pterm4_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \O[3]_pterm5_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \O[3]_pxor_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \O[3]_pclk_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \O[3]_pena_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \O[3]_paclr_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \O[3]_papre_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \Add3~5_pterm0_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \Add3~5_pterm1_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \Add3~5_pterm2_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \Add3~5_pterm3_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \Add3~5_pterm4_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \Add3~5_pterm5_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \Add3~5_pxor_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \Add3~5_pclk_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \Add3~5_pena_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \Add3~5_paclr_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \Add3~5_papre_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \LessThan0~4_pterm0_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \LessThan0~4_pterm1_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \LessThan0~4_pterm2_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \LessThan0~4_pterm3_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \LessThan0~4_pterm4_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \LessThan0~4_pterm5_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \LessThan0~4_pxor_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \LessThan0~4_pclk_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \LessThan0~4_pena_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \LessThan0~4_paclr_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \LessThan0~4_papre_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \O[5]_pterm0_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \O[5]_pterm1_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \O[5]_pterm2_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \O[5]_pterm3_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \O[5]_pterm4_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \O[5]_pterm5_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \O[5]_pxor_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \O[5]_pclk_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \O[5]_pena_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \O[5]_paclr_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \O[5]_papre_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \Add3~9_pterm0_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \Add3~9_pterm1_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \Add3~9_pterm2_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \Add3~9_pterm3_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \Add3~9_pterm4_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \Add3~9_pterm5_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \Add3~9_pxor_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \Add3~9_pclk_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \Add3~9_pena_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \Add3~9_paclr_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \Add3~9_papre_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \O[6]_pterm0_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \O[6]_pterm1_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \O[6]_pterm2_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \O[6]_pterm3_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \O[6]_pterm4_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \O[6]_pterm5_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \O[6]_pxor_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \O[6]_pclk_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \O[6]_pena_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \O[6]_paclr_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \O[6]_papre_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \Add3~13_pterm0_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \Add3~13_pterm1_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \Add3~13_pterm2_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \Add3~13_pterm3_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \Add3~13_pterm4_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \Add3~13_pterm5_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \Add3~13_pxor_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \Add3~13_pclk_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \Add3~13_pena_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \Add3~13_paclr_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \Add3~13_papre_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \O[7]_pterm0_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \O[7]_pterm1_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \O[7]_pterm2_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \O[7]_pterm3_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \O[7]_pterm4_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \O[7]_pterm5_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \O[7]_pxor_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \O[7]_pclk_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \O[7]_pena_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \O[7]_paclr_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \O[7]_papre_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \O_rtl_1|dffs[0]_pterm0_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \O_rtl_1|dffs[0]_pterm1_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \O_rtl_1|dffs[0]_pterm2_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \O_rtl_1|dffs[0]_pterm3_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \O_rtl_1|dffs[0]_pterm4_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \O_rtl_1|dffs[0]_pterm5_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \O_rtl_1|dffs[0]_pxor_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \O_rtl_1|dffs[0]_pclk_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \O_rtl_1|dffs[0]_pena_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \O_rtl_1|dffs[0]_paclr_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \O_rtl_1|dffs[0]_papre_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \O_rtl_1|dffs[1]_pterm0_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \O_rtl_1|dffs[1]_pterm1_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \O_rtl_1|dffs[1]_pterm2_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \O_rtl_1|dffs[1]_pterm3_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \O_rtl_1|dffs[1]_pterm4_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \O_rtl_1|dffs[1]_pterm5_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \O_rtl_1|dffs[1]_pxor_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \O_rtl_1|dffs[1]_pclk_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \O_rtl_1|dffs[1]_pena_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \O_rtl_1|dffs[1]_paclr_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \O_rtl_1|dffs[1]_papre_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \O_rtl_1|dffs[2]_pterm0_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \O_rtl_1|dffs[2]_pterm1_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \O_rtl_1|dffs[2]_pterm2_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \O_rtl_1|dffs[2]_pterm3_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \O_rtl_1|dffs[2]_pterm4_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \O_rtl_1|dffs[2]_pterm5_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \O_rtl_1|dffs[2]_pxor_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \O_rtl_1|dffs[2]_pclk_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \O_rtl_1|dffs[2]_pena_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \O_rtl_1|dffs[2]_paclr_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \O_rtl_1|dffs[2]_papre_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \O_rtl_1|dffs[3]_pterm0_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \O_rtl_1|dffs[3]_pterm1_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \O_rtl_1|dffs[3]_pterm2_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \O_rtl_1|dffs[3]_pterm3_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \O_rtl_1|dffs[3]_pterm4_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \O_rtl_1|dffs[3]_pterm5_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \O_rtl_1|dffs[3]_pxor_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \O_rtl_1|dffs[3]_pclk_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \O_rtl_1|dffs[3]_pena_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \O_rtl_1|dffs[3]_paclr_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \O_rtl_1|dffs[3]_papre_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \O_rtl_0|dffs[0]_pterm0_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \O_rtl_0|dffs[0]_pterm1_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \O_rtl_0|dffs[0]_pterm2_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \O_rtl_0|dffs[0]_pterm3_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \O_rtl_0|dffs[0]_pterm4_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \O_rtl_0|dffs[0]_pterm5_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \O_rtl_0|dffs[0]_pxor_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \O_rtl_0|dffs[0]_pclk_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \O_rtl_0|dffs[0]_pena_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \O_rtl_0|dffs[0]_paclr_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \O_rtl_0|dffs[0]_papre_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \O_rtl_0|dffs[1]_pterm0_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \O_rtl_0|dffs[1]_pterm1_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \O_rtl_0|dffs[1]_pterm2_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \O_rtl_0|dffs[1]_pterm3_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \O_rtl_0|dffs[1]_pterm4_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \O_rtl_0|dffs[1]_pterm5_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \O_rtl_0|dffs[1]_pxor_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \O_rtl_0|dffs[1]_pclk_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \O_rtl_0|dffs[1]_pena_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \O_rtl_0|dffs[1]_paclr_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \O_rtl_0|dffs[1]_papre_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \Selector2~9_pterm0_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \Selector2~9_pterm1_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \Selector2~9_pterm2_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \Selector2~9_pterm3_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \Selector2~9_pterm4_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \Selector2~9_pterm5_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \Selector2~9_pxor_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \Selector2~9_pclk_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \Selector2~9_pena_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \Selector2~9_paclr_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \Selector2~9_papre_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \O_rtl_0|dffs[2]_pterm0_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \O_rtl_0|dffs[2]_pterm1_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \O_rtl_0|dffs[2]_pterm2_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \O_rtl_0|dffs[2]_pterm3_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \O_rtl_0|dffs[2]_pterm4_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \O_rtl_0|dffs[2]_pterm5_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \O_rtl_0|dffs[2]_pxor_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \O_rtl_0|dffs[2]_pclk_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \O_rtl_0|dffs[2]_pena_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \O_rtl_0|dffs[2]_paclr_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \O_rtl_0|dffs[2]_papre_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \Selector1~9_pterm0_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \Selector1~9_pterm1_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \Selector1~9_pterm2_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \Selector1~9_pterm3_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \Selector1~9_pterm4_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \Selector1~9_pterm5_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \Selector1~9_pxor_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \Selector1~9_pclk_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \Selector1~9_pena_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \Selector1~9_paclr_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \Selector1~9_papre_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \O_rtl_0|dffs[3]_pterm0_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \O_rtl_0|dffs[3]_pterm1_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \O_rtl_0|dffs[3]_pterm2_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \O_rtl_0|dffs[3]_pterm3_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \O_rtl_0|dffs[3]_pterm4_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \O_rtl_0|dffs[3]_pterm5_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \O_rtl_0|dffs[3]_pxor_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \O_rtl_0|dffs[3]_pclk_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \O_rtl_0|dffs[3]_pena_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \O_rtl_0|dffs[3]_paclr_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \O_rtl_0|dffs[3]_papre_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \Selector0~9_pterm0_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \Selector0~9_pterm1_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \Selector0~9_pterm2_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \Selector0~9_pterm3_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \Selector0~9_pterm4_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \Selector0~9_pterm5_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \Selector0~9_pxor_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \Selector0~9_pclk_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \Selector0~9_pena_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \Selector0~9_paclr_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \Selector0~9_papre_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \OVERFLOW~reg0_pterm0_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \OVERFLOW~reg0_pterm1_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \OVERFLOW~reg0_pterm2_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \OVERFLOW~reg0_pterm3_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \OVERFLOW~reg0_pterm4_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \OVERFLOW~reg0_pterm5_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \OVERFLOW~reg0_pxor_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \OVERFLOW~reg0_pclk_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \OVERFLOW~reg0_pena_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \OVERFLOW~reg0_paclr_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \OVERFLOW~reg0_papre_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \O[4]_pterm0_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \O[4]_pterm1_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \O[4]_pterm2_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \O[4]_pterm3_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \O[4]_pterm4_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \O[4]_pterm5_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \O[4]_pxor_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \O[4]_pclk_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \O[4]_pena_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \O[4]_paclr_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \O[4]_papre_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \Selector3~9_pterm0_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \Selector3~9_pterm1_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \Selector3~9_pterm2_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \Selector3~9_pterm3_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \Selector3~9_pterm4_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \Selector3~9_pterm5_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \Selector3~9_pxor_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \Selector3~9_pclk_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \Selector3~9_pena_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \Selector3~9_paclr_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \Selector3~9_papre_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \O[1]~89_pterm0_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \O[1]~89_pterm1_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \O[1]~89_pterm2_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \O[1]~89_pterm3_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \O[1]~89_pterm4_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \O[1]~89_pterm5_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \O[1]~89_pxor_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \O[1]~89_pclk_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \O[1]~89_pena_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \O[1]~89_paclr_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \O[1]~89_papre_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \O[3]~93_pterm0_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \O[3]~93_pterm1_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \O[3]~93_pterm2_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \O[3]~93_pterm3_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \O[3]~93_pterm4_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \O[3]~93_pterm5_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \O[3]~93_pxor_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \O[3]~93_pclk_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \O[3]~93_pena_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \O[3]~93_paclr_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \O[3]~93_papre_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \~VCC~0_pterm0_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \~VCC~0_pterm1_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \~VCC~0_pterm2_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \~VCC~0_pterm3_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \~VCC~0_pterm4_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \~VCC~0_pterm5_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \~VCC~0_pxor_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \~VCC~0_pclk_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \~VCC~0_pena_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \~VCC~0_paclr_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \~VCC~0_papre_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \OVERFLOW~3_datain_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \OVERFLOW~4_datain_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \C[0]~1sexpand0_datain_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \process_0~4sexp_datain_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \process_0~6sexp_datain_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \Equal0~3sexp_datain_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \process_0~8sexp_datain_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \C[0]~2_datain_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \process_0~9_datain_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \process_0~10_datain_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \Equal0~4_datain_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \process_0~11_datain_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \process_0~12_datain_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \process_0~13_datain_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \Equal0~5_datain_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \process_0~14_datain_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \C[0]~3_datain_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \CLK~dataout\ : std_logic;
SIGNAL \~VCC~0~dataout\ : std_logic;
SIGNAL \process_1:CNT[1]~dataout\ : std_logic;
SIGNAL \process_1:CNT[3]~dataout\ : std_logic;
SIGNAL \process_1:CNT[5]~dataout\ : std_logic;
SIGNAL \process_1:CNT[4]~dataout\ : std_logic;
SIGNAL \process_1:CNT[7]~dataout\ : std_logic;
SIGNAL \process_1:CNT[6]~dataout\ : std_logic;
SIGNAL \process_1:CNT[8]~dataout\ : std_logic;
SIGNAL \process_1:CNT[2]~dataout\ : std_logic;
SIGNAL \process_1:CNT[0]~dataout\ : std_logic;
SIGNAL \Q.state_bit_0~dataout\ : std_logic;
SIGNAL \Q.state_bit_1~dataout\ : std_logic;
SIGNAL \Q.S3~3_dataout\ : std_logic;
SIGNAL \Q.S2~3_dataout\ : std_logic;
SIGNAL \Q.S1~3_dataout\ : std_logic;
SIGNAL \Q.S0~3_dataout\ : std_logic;
SIGNAL \CNT_CLK~dataout\ : std_logic;
SIGNAL \CLK_NEW~dataout\ : std_logic;
SIGNAL \O[1]~89_pexpout\ : std_logic;
SIGNAL \O[3]~93_pexpout\ : std_logic;
SIGNAL \LessThan0~4_dataout\ : std_logic;
SIGNAL \C[0]~3_dataout\ : std_logic;
SIGNAL \Add3~9_dataout\ : std_logic;
SIGNAL \C[0]~1sexpand0_dataout\ : std_logic;
SIGNAL \Add3~13_dataout\ : std_logic;
SIGNAL \C[0]~2_dataout\ : std_logic;
SIGNAL \process_0~9_dataout\ : std_logic;
SIGNAL \process_0~13_dataout\ : std_logic;
SIGNAL \Equal0~5_dataout\ : std_logic;
SIGNAL \process_0~14_dataout\ : std_logic;
SIGNAL \process_0~10_dataout\ : std_logic;
SIGNAL \Equal0~4_dataout\ : std_logic;
SIGNAL \process_0~11_dataout\ : std_logic;
SIGNAL \process_0~4sexp_dataout\ : std_logic;
SIGNAL \process_0~6sexp_dataout\ : std_logic;
SIGNAL \Equal0~3sexp_dataout\ : std_logic;
SIGNAL \process_0~8sexp_dataout\ : std_logic;
SIGNAL \process_0~12_dataout\ : std_logic;
SIGNAL \Add3~5_dataout\ : std_logic;
SIGNAL \Selector2~9_dataout\ : std_logic;
SIGNAL \Selector1~9_dataout\ : std_logic;
SIGNAL \Selector0~9_dataout\ : std_logic;
SIGNAL \OVERFLOW~3_dataout\ : std_logic;
SIGNAL \OVERFLOW~4_dataout\ : std_logic;
SIGNAL \OVERFLOW~reg0_dataout\ : std_logic;
SIGNAL \Selector3~9_dataout\ : std_logic;
SIGNAL \O_rtl_1|dffs\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \O_rtl_0|dffs\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \cnt_rtl_0|dffs\ : std_logic_vector(13 DOWNTO 0);
SIGNAL O : std_logic_vector(15 DOWNTO 0);
SIGNAL ALT_INV_O : std_logic_vector(6 DOWNTO 0);
SIGNAL \O_rtl_0|ALT_INV_dffs\ : std_logic_vector(2 DOWNTO 0);
SIGNAL \O_rtl_1|ALT_INV_dffs\ : std_logic_vector(2 DOWNTO 0);
SIGNAL \ALT_INV_LessThan0~4_dataout\ : std_logic;
SIGNAL \cnt_rtl_0|ALT_INV_dffs\ : std_logic_vector(13 DOWNTO 0);
SIGNAL \ALT_INV_Q.state_bit_1~dataout\ : std_logic;
SIGNAL \ALT_INV_Q.state_bit_0~dataout\ : std_logic;
SIGNAL \ALT_INV_process_1:CNT[0]~dataout\ : std_logic;
SIGNAL \ALT_INV_process_1:CNT[3]~dataout\ : std_logic;
SIGNAL \ALT_INV_process_1:CNT[1]~dataout\ : std_logic;

BEGIN

ww_CLK <= CLK;
OP <= ww_OP;
OVERFLOW <= ww_OVERFLOW;
DP <= ww_DP;

\process_1:CNT[1]_pterm0_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd
& gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\process_1:CNT[1]_pterm1_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd
& gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\process_1:CNT[1]_pterm2_bus\ <= (vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc
& vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & \process_1:CNT[1]~dataout\);

\process_1:CNT[1]_pterm3_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd
& gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\process_1:CNT[1]_pterm4_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd
& gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\process_1:CNT[1]_pterm5_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd
& gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\process_1:CNT[1]_pxor_bus\ <= (vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & 
vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & \process_1:CNT[0]~dataout\);

\process_1:CNT[1]_pclk_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & 
gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\process_1:CNT[1]_pena_bus\ <= (vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & 
vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc);

\process_1:CNT[1]_paclr_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & 
gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\process_1:CNT[1]_papre_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & 
gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\process_1:CNT[2]_pterm0_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd
& gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\process_1:CNT[2]_pterm1_bus\ <= (vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc
& vcc & vcc & vcc & vcc & vcc & vcc & \process_1:CNT[2]~dataout\ & NOT \process_1:CNT[0]~dataout\ & NOT \process_1:CNT[1]~dataout\ & \process_1:CNT[7]~dataout\ & \process_1:CNT[6]~dataout\ & \process_1:CNT[5]~dataout\ & \process_1:CNT[4]~dataout\ & 
\process_1:CNT[8]~dataout\ & NOT \process_1:CNT[3]~dataout\);

\process_1:CNT[2]_pterm2_bus\ <= (vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc
& vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & \process_1:CNT[0]~dataout\ & \process_1:CNT[1]~dataout\);

\process_1:CNT[2]_pterm3_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd
& gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\process_1:CNT[2]_pterm4_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd
& gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\process_1:CNT[2]_pterm5_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd
& gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\process_1:CNT[2]_pxor_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & 
gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\process_1:CNT[2]_pclk_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & 
gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\process_1:CNT[2]_pena_bus\ <= (vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & 
vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc);

\process_1:CNT[2]_paclr_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & 
gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\process_1:CNT[2]_papre_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & 
gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\process_1:CNT[3]_pterm0_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd
& gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\process_1:CNT[3]_pterm1_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd
& gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\process_1:CNT[3]_pterm2_bus\ <= (vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc
& vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & \process_1:CNT[3]~dataout\);

\process_1:CNT[3]_pterm3_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd
& gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\process_1:CNT[3]_pterm4_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd
& gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\process_1:CNT[3]_pterm5_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd
& gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\process_1:CNT[3]_pxor_bus\ <= (vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & 
vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & \process_1:CNT[1]~dataout\ & \process_1:CNT[0]~dataout\ & \process_1:CNT[2]~dataout\);

\process_1:CNT[3]_pclk_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & 
gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\process_1:CNT[3]_pena_bus\ <= (vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & 
vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc);

\process_1:CNT[3]_paclr_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & 
gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\process_1:CNT[3]_papre_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & 
gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\process_1:CNT[4]_pterm0_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd
& gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\process_1:CNT[4]_pterm1_bus\ <= (vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc
& vcc & vcc & vcc & vcc & vcc & vcc & \process_1:CNT[4]~dataout\ & NOT \process_1:CNT[0]~dataout\ & \process_1:CNT[2]~dataout\ & NOT \process_1:CNT[3]~dataout\ & NOT \process_1:CNT[1]~dataout\ & \process_1:CNT[7]~dataout\ & \process_1:CNT[6]~dataout\ & 
\process_1:CNT[5]~dataout\ & \process_1:CNT[8]~dataout\);

\process_1:CNT[4]_pterm2_bus\ <= (vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc
& vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & \process_1:CNT[0]~dataout\ & \process_1:CNT[2]~dataout\ & \process_1:CNT[3]~dataout\ & \process_1:CNT[1]~dataout\);

\process_1:CNT[4]_pterm3_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd
& gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\process_1:CNT[4]_pterm4_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd
& gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\process_1:CNT[4]_pterm5_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd
& gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\process_1:CNT[4]_pxor_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & 
gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\process_1:CNT[4]_pclk_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & 
gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\process_1:CNT[4]_pena_bus\ <= (vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & 
vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc);

\process_1:CNT[4]_paclr_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & 
gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\process_1:CNT[4]_papre_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & 
gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\process_1:CNT[5]_pterm0_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd
& gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\process_1:CNT[5]_pterm1_bus\ <= (vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc
& vcc & vcc & vcc & vcc & vcc & vcc & \process_1:CNT[5]~dataout\ & \process_1:CNT[4]~dataout\ & NOT \process_1:CNT[0]~dataout\ & \process_1:CNT[2]~dataout\ & NOT \process_1:CNT[3]~dataout\ & NOT \process_1:CNT[1]~dataout\ & \process_1:CNT[7]~dataout\ & 
\process_1:CNT[6]~dataout\ & \process_1:CNT[8]~dataout\);

\process_1:CNT[5]_pterm2_bus\ <= (vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc
& vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & \process_1:CNT[4]~dataout\ & \process_1:CNT[0]~dataout\ & \process_1:CNT[2]~dataout\ & \process_1:CNT[3]~dataout\ & \process_1:CNT[1]~dataout\);

\process_1:CNT[5]_pterm3_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd
& gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\process_1:CNT[5]_pterm4_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd
& gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\process_1:CNT[5]_pterm5_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd
& gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\process_1:CNT[5]_pxor_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & 
gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\process_1:CNT[5]_pclk_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & 
gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\process_1:CNT[5]_pena_bus\ <= (vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & 
vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc);

\process_1:CNT[5]_paclr_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & 
gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\process_1:CNT[5]_papre_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & 
gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\process_1:CNT[6]_pterm0_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd
& gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\process_1:CNT[6]_pterm1_bus\ <= (vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc
& vcc & vcc & vcc & vcc & vcc & vcc & \process_1:CNT[6]~dataout\ & \process_1:CNT[5]~dataout\ & \process_1:CNT[4]~dataout\ & NOT \process_1:CNT[0]~dataout\ & \process_1:CNT[2]~dataout\ & NOT \process_1:CNT[3]~dataout\ & NOT \process_1:CNT[1]~dataout\ & 
\process_1:CNT[7]~dataout\ & \process_1:CNT[8]~dataout\);

\process_1:CNT[6]_pterm2_bus\ <= (vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc
& vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & \process_1:CNT[5]~dataout\ & \process_1:CNT[4]~dataout\ & \process_1:CNT[0]~dataout\ & \process_1:CNT[2]~dataout\ & \process_1:CNT[3]~dataout\ & \process_1:CNT[1]~dataout\);

\process_1:CNT[6]_pterm3_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd
& gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\process_1:CNT[6]_pterm4_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd
& gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\process_1:CNT[6]_pterm5_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd
& gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\process_1:CNT[6]_pxor_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & 
gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\process_1:CNT[6]_pclk_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & 
gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\process_1:CNT[6]_pena_bus\ <= (vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & 
vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc);

\process_1:CNT[6]_paclr_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & 
gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\process_1:CNT[6]_papre_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & 
gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\process_1:CNT[7]_pterm0_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd
& gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\process_1:CNT[7]_pterm1_bus\ <= (vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc
& vcc & vcc & vcc & vcc & vcc & vcc & \process_1:CNT[7]~dataout\ & \process_1:CNT[6]~dataout\ & \process_1:CNT[5]~dataout\ & \process_1:CNT[4]~dataout\ & NOT \process_1:CNT[0]~dataout\ & \process_1:CNT[2]~dataout\ & NOT \process_1:CNT[3]~dataout\ & NOT 
\process_1:CNT[1]~dataout\ & \process_1:CNT[8]~dataout\);

\process_1:CNT[7]_pterm2_bus\ <= (vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc
& vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & \process_1:CNT[6]~dataout\ & \process_1:CNT[5]~dataout\ & \process_1:CNT[4]~dataout\ & \process_1:CNT[0]~dataout\ & \process_1:CNT[2]~dataout\ & \process_1:CNT[3]~dataout\ & \process_1:CNT[1]~dataout\);

\process_1:CNT[7]_pterm3_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd
& gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\process_1:CNT[7]_pterm4_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd
& gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\process_1:CNT[7]_pterm5_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd
& gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\process_1:CNT[7]_pxor_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & 
gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\process_1:CNT[7]_pclk_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & 
gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\process_1:CNT[7]_pena_bus\ <= (vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & 
vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc);

\process_1:CNT[7]_paclr_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & 
gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\process_1:CNT[7]_papre_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & 
gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\process_1:CNT[8]_pterm0_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd
& gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\process_1:CNT[8]_pterm1_bus\ <= (vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc
& vcc & vcc & vcc & vcc & vcc & vcc & \process_1:CNT[8]~dataout\ & \process_1:CNT[7]~dataout\ & \process_1:CNT[5]~dataout\ & \process_1:CNT[4]~dataout\ & \process_1:CNT[6]~dataout\ & \process_1:CNT[2]~dataout\ & NOT \process_1:CNT[1]~dataout\ & NOT 
\process_1:CNT[3]~dataout\ & NOT \process_1:CNT[0]~dataout\);

\process_1:CNT[8]_pterm2_bus\ <= (vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc
& vcc & vcc & vcc & vcc & vcc & vcc & vcc & \process_1:CNT[7]~dataout\ & \process_1:CNT[5]~dataout\ & \process_1:CNT[4]~dataout\ & \process_1:CNT[6]~dataout\ & \process_1:CNT[2]~dataout\ & \process_1:CNT[1]~dataout\ & \process_1:CNT[3]~dataout\ & 
\process_1:CNT[0]~dataout\);

\process_1:CNT[8]_pterm3_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd
& gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\process_1:CNT[8]_pterm4_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd
& gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\process_1:CNT[8]_pterm5_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd
& gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\process_1:CNT[8]_pxor_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & 
gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\process_1:CNT[8]_pclk_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & 
gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\process_1:CNT[8]_pena_bus\ <= (vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & 
vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc);

\process_1:CNT[8]_paclr_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & 
gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\process_1:CNT[8]_papre_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & 
gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\process_1:CNT[0]_pterm0_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd
& gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\process_1:CNT[0]_pterm1_bus\ <= (vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc
& vcc & vcc & vcc & vcc & vcc & vcc & NOT \process_1:CNT[0]~dataout\ & \process_1:CNT[7]~dataout\ & \process_1:CNT[6]~dataout\ & \process_1:CNT[5]~dataout\ & \process_1:CNT[4]~dataout\ & \process_1:CNT[8]~dataout\ & NOT \process_1:CNT[3]~dataout\ & 
\process_1:CNT[2]~dataout\ & NOT \process_1:CNT[1]~dataout\);

\process_1:CNT[0]_pterm2_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd
& gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\process_1:CNT[0]_pterm3_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd
& gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\process_1:CNT[0]_pterm4_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd
& gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\process_1:CNT[0]_pterm5_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd
& gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\process_1:CNT[0]_pxor_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & 
gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\process_1:CNT[0]_pclk_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & 
gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\process_1:CNT[0]_pena_bus\ <= (vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & 
vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc);

\process_1:CNT[0]_paclr_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & 
gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\process_1:CNT[0]_papre_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & 
gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\Q.state_bit_0_pterm0_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & 
gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\Q.state_bit_0_pterm1_bus\ <= (vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & 
vcc & vcc & vcc & vcc & vcc & vcc & \process_1:CNT[7]~dataout\ & \process_1:CNT[6]~dataout\ & \process_1:CNT[5]~dataout\ & \process_1:CNT[4]~dataout\ & \process_1:CNT[8]~dataout\ & NOT \process_1:CNT[3]~dataout\ & \process_1:CNT[2]~dataout\ & NOT 
\process_1:CNT[1]~dataout\ & NOT \process_1:CNT[0]~dataout\);

\Q.state_bit_0_pterm2_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & 
gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\Q.state_bit_0_pterm3_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & 
gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\Q.state_bit_0_pterm4_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & 
gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\Q.state_bit_0_pterm5_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & 
gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\Q.state_bit_0_pxor_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd
& gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\Q.state_bit_0_pclk_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd
& gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\Q.state_bit_0_pena_bus\ <= (vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc
& vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc);

\Q.state_bit_0_paclr_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd
& gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\Q.state_bit_0_papre_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd
& gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

CNT_CLK_pterm0_bus <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd
& gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

CNT_CLK_pterm1_bus <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd
& gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

CNT_CLK_pterm2_bus <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd
& gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

CNT_CLK_pterm3_bus <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd
& gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

CNT_CLK_pterm4_bus <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd
& gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

CNT_CLK_pterm5_bus <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd
& gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

CNT_CLK_pxor_bus <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & 
gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

CNT_CLK_pclk_bus <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & 
gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

CNT_CLK_pena_bus <= (vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & 
vcc & vcc & vcc & vcc & \process_1:CNT[7]~dataout\ & \process_1:CNT[6]~dataout\ & \process_1:CNT[5]~dataout\ & \process_1:CNT[4]~dataout\ & \process_1:CNT[8]~dataout\ & NOT \process_1:CNT[3]~dataout\ & \process_1:CNT[2]~dataout\ & NOT 
\process_1:CNT[1]~dataout\ & NOT \process_1:CNT[0]~dataout\);

CNT_CLK_paclr_bus <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd
& gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

CNT_CLK_papre_bus <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd
& gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

CLK_NEW_pterm0_bus <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd
& gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

CLK_NEW_pterm1_bus <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd
& gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

CLK_NEW_pterm2_bus <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd
& gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

CLK_NEW_pterm3_bus <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd
& gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

CLK_NEW_pterm4_bus <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd
& gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

CLK_NEW_pterm5_bus <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd
& gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

CLK_NEW_pxor_bus <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & 
gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

CLK_NEW_pclk_bus <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & 
gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

CLK_NEW_pena_bus <= (vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & 
vcc & vcc & vcc & \process_1:CNT[7]~dataout\ & \process_1:CNT[6]~dataout\ & \process_1:CNT[5]~dataout\ & \process_1:CNT[4]~dataout\ & \process_1:CNT[8]~dataout\ & NOT \process_1:CNT[3]~dataout\ & \process_1:CNT[2]~dataout\ & NOT \process_1:CNT[1]~dataout\
& NOT \process_1:CNT[0]~dataout\ & \CNT_CLK~dataout\);

CLK_NEW_paclr_bus <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd
& gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

CLK_NEW_papre_bus <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd
& gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\Q.state_bit_1_pterm0_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & 
gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\Q.state_bit_1_pterm1_bus\ <= (vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & 
vcc & vcc & vcc & vcc & vcc & \process_1:CNT[7]~dataout\ & \process_1:CNT[6]~dataout\ & \process_1:CNT[5]~dataout\ & \process_1:CNT[4]~dataout\ & \process_1:CNT[8]~dataout\ & NOT \process_1:CNT[3]~dataout\ & \process_1:CNT[2]~dataout\ & NOT 
\process_1:CNT[1]~dataout\ & NOT \process_1:CNT[0]~dataout\ & \Q.state_bit_0~dataout\);

\Q.state_bit_1_pterm2_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & 
gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\Q.state_bit_1_pterm3_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & 
gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\Q.state_bit_1_pterm4_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & 
gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\Q.state_bit_1_pterm5_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & 
gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\Q.state_bit_1_pxor_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd
& gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\Q.state_bit_1_pclk_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd
& gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\Q.state_bit_1_pena_bus\ <= (vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc
& vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc);

\Q.state_bit_1_paclr_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd
& gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\Q.state_bit_1_papre_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd
& gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\cnt_rtl_0|dffs[13]_pterm0_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd
& gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\cnt_rtl_0|dffs[13]_pterm1_bus\ <= (vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc
& vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & \cnt_rtl_0|dffs\(13));

\cnt_rtl_0|dffs[13]_pterm2_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd
& gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\cnt_rtl_0|dffs[13]_pterm3_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd
& gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\cnt_rtl_0|dffs[13]_pterm4_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd
& gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\cnt_rtl_0|dffs[13]_pterm5_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd
& gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\cnt_rtl_0|dffs[13]_pxor_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd
& gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\cnt_rtl_0|dffs[13]_pclk_bus\ <= (vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc
& vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & \CLK_NEW~dataout\);

\cnt_rtl_0|dffs[13]_pena_bus\ <= (vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc
& vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc);

\cnt_rtl_0|dffs[13]_paclr_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd
& gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\cnt_rtl_0|dffs[13]_papre_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd
& gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\cnt_rtl_0|dffs[12]_pterm0_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd
& gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\cnt_rtl_0|dffs[12]_pterm1_bus\ <= (vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc
& vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & \cnt_rtl_0|dffs\(12));

\cnt_rtl_0|dffs[12]_pterm2_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd
& gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\cnt_rtl_0|dffs[12]_pterm3_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd
& gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\cnt_rtl_0|dffs[12]_pterm4_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd
& gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\cnt_rtl_0|dffs[12]_pterm5_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd
& gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\cnt_rtl_0|dffs[12]_pxor_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd
& gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\cnt_rtl_0|dffs[12]_pclk_bus\ <= (vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc
& vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & \CLK_NEW~dataout\);

\cnt_rtl_0|dffs[12]_pena_bus\ <= (vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc
& vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc);

\cnt_rtl_0|dffs[12]_paclr_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd
& gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\cnt_rtl_0|dffs[12]_papre_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd
& gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\cnt_rtl_0|dffs[11]_pterm0_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd
& gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\cnt_rtl_0|dffs[11]_pterm1_bus\ <= (vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc
& vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & \cnt_rtl_0|dffs\(11));

\cnt_rtl_0|dffs[11]_pterm2_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd
& gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\cnt_rtl_0|dffs[11]_pterm3_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd
& gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\cnt_rtl_0|dffs[11]_pterm4_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd
& gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\cnt_rtl_0|dffs[11]_pterm5_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd
& gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\cnt_rtl_0|dffs[11]_pxor_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd
& gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\cnt_rtl_0|dffs[11]_pclk_bus\ <= (vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc
& vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & \CLK_NEW~dataout\);

\cnt_rtl_0|dffs[11]_pena_bus\ <= (vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc
& vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc);

\cnt_rtl_0|dffs[11]_paclr_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd
& gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\cnt_rtl_0|dffs[11]_papre_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd
& gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\cnt_rtl_0|dffs[10]_pterm0_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd
& gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\cnt_rtl_0|dffs[10]_pterm1_bus\ <= (vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc
& vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & \cnt_rtl_0|dffs\(10));

\cnt_rtl_0|dffs[10]_pterm2_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd
& gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\cnt_rtl_0|dffs[10]_pterm3_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd
& gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\cnt_rtl_0|dffs[10]_pterm4_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd
& gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\cnt_rtl_0|dffs[10]_pterm5_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd
& gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\cnt_rtl_0|dffs[10]_pxor_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd
& gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\cnt_rtl_0|dffs[10]_pclk_bus\ <= (vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc
& vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & \CLK_NEW~dataout\);

\cnt_rtl_0|dffs[10]_pena_bus\ <= (vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc
& vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc);

\cnt_rtl_0|dffs[10]_paclr_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd
& gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\cnt_rtl_0|dffs[10]_papre_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd
& gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\cnt_rtl_0|dffs[9]_pterm0_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd
& gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\cnt_rtl_0|dffs[9]_pterm1_bus\ <= (vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc
& vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & \cnt_rtl_0|dffs\(9));

\cnt_rtl_0|dffs[9]_pterm2_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd
& gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\cnt_rtl_0|dffs[9]_pterm3_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd
& gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\cnt_rtl_0|dffs[9]_pterm4_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd
& gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\cnt_rtl_0|dffs[9]_pterm5_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd
& gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\cnt_rtl_0|dffs[9]_pxor_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & 
gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\cnt_rtl_0|dffs[9]_pclk_bus\ <= (vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & 
vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & \CLK_NEW~dataout\);

\cnt_rtl_0|dffs[9]_pena_bus\ <= (vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & 
vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc);

\cnt_rtl_0|dffs[9]_paclr_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd
& gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\cnt_rtl_0|dffs[9]_papre_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd
& gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\cnt_rtl_0|dffs[8]_pterm0_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd
& gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\cnt_rtl_0|dffs[8]_pterm1_bus\ <= (vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc
& vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & \cnt_rtl_0|dffs\(8));

\cnt_rtl_0|dffs[8]_pterm2_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd
& gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\cnt_rtl_0|dffs[8]_pterm3_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd
& gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\cnt_rtl_0|dffs[8]_pterm4_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd
& gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\cnt_rtl_0|dffs[8]_pterm5_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd
& gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\cnt_rtl_0|dffs[8]_pxor_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & 
gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\cnt_rtl_0|dffs[8]_pclk_bus\ <= (vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & 
vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & \CLK_NEW~dataout\);

\cnt_rtl_0|dffs[8]_pena_bus\ <= (vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & 
vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc);

\cnt_rtl_0|dffs[8]_paclr_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd
& gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\cnt_rtl_0|dffs[8]_papre_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd
& gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\cnt_rtl_0|dffs[7]_pterm0_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd
& gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\cnt_rtl_0|dffs[7]_pterm1_bus\ <= (vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc
& vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & \cnt_rtl_0|dffs\(7));

\cnt_rtl_0|dffs[7]_pterm2_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd
& gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\cnt_rtl_0|dffs[7]_pterm3_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd
& gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\cnt_rtl_0|dffs[7]_pterm4_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd
& gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\cnt_rtl_0|dffs[7]_pterm5_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd
& gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\cnt_rtl_0|dffs[7]_pxor_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & 
gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\cnt_rtl_0|dffs[7]_pclk_bus\ <= (vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & 
vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & \CLK_NEW~dataout\);

\cnt_rtl_0|dffs[7]_pena_bus\ <= (vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & 
vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc);

\cnt_rtl_0|dffs[7]_paclr_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd
& gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\cnt_rtl_0|dffs[7]_papre_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd
& gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\cnt_rtl_0|dffs[6]_pterm0_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd
& gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\cnt_rtl_0|dffs[6]_pterm1_bus\ <= (vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc
& vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & \cnt_rtl_0|dffs\(6));

\cnt_rtl_0|dffs[6]_pterm2_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd
& gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\cnt_rtl_0|dffs[6]_pterm3_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd
& gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\cnt_rtl_0|dffs[6]_pterm4_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd
& gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\cnt_rtl_0|dffs[6]_pterm5_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd
& gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\cnt_rtl_0|dffs[6]_pxor_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & 
gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\cnt_rtl_0|dffs[6]_pclk_bus\ <= (vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & 
vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & \CLK_NEW~dataout\);

\cnt_rtl_0|dffs[6]_pena_bus\ <= (vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & 
vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc);

\cnt_rtl_0|dffs[6]_paclr_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd
& gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\cnt_rtl_0|dffs[6]_papre_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd
& gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\cnt_rtl_0|dffs[5]_pterm0_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd
& gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\cnt_rtl_0|dffs[5]_pterm1_bus\ <= (vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc
& vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & \cnt_rtl_0|dffs\(5));

\cnt_rtl_0|dffs[5]_pterm2_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd
& gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\cnt_rtl_0|dffs[5]_pterm3_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd
& gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\cnt_rtl_0|dffs[5]_pterm4_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd
& gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\cnt_rtl_0|dffs[5]_pterm5_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd
& gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\cnt_rtl_0|dffs[5]_pxor_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & 
gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\cnt_rtl_0|dffs[5]_pclk_bus\ <= (vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & 
vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & \CLK_NEW~dataout\);

\cnt_rtl_0|dffs[5]_pena_bus\ <= (vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & 
vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc);

\cnt_rtl_0|dffs[5]_paclr_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd
& gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\cnt_rtl_0|dffs[5]_papre_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd
& gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\cnt_rtl_0|dffs[4]_pterm0_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd
& gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\cnt_rtl_0|dffs[4]_pterm1_bus\ <= (vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc
& vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & \cnt_rtl_0|dffs\(4));

\cnt_rtl_0|dffs[4]_pterm2_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd
& gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\cnt_rtl_0|dffs[4]_pterm3_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd
& gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\cnt_rtl_0|dffs[4]_pterm4_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd
& gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\cnt_rtl_0|dffs[4]_pterm5_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd
& gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\cnt_rtl_0|dffs[4]_pxor_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & 
gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\cnt_rtl_0|dffs[4]_pclk_bus\ <= (vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & 
vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & \CLK_NEW~dataout\);

\cnt_rtl_0|dffs[4]_pena_bus\ <= (vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & 
vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc);

\cnt_rtl_0|dffs[4]_paclr_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd
& gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\cnt_rtl_0|dffs[4]_papre_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd
& gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\cnt_rtl_0|dffs[3]_pterm0_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd
& gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\cnt_rtl_0|dffs[3]_pterm1_bus\ <= (vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc
& vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & \cnt_rtl_0|dffs\(3));

\cnt_rtl_0|dffs[3]_pterm2_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd
& gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\cnt_rtl_0|dffs[3]_pterm3_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd
& gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\cnt_rtl_0|dffs[3]_pterm4_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd
& gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\cnt_rtl_0|dffs[3]_pterm5_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd
& gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\cnt_rtl_0|dffs[3]_pxor_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & 
gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\cnt_rtl_0|dffs[3]_pclk_bus\ <= (vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & 
vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & \CLK_NEW~dataout\);

\cnt_rtl_0|dffs[3]_pena_bus\ <= (vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & 
vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc);

\cnt_rtl_0|dffs[3]_paclr_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd
& gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\cnt_rtl_0|dffs[3]_papre_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd
& gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\cnt_rtl_0|dffs[2]_pterm0_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd
& gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\cnt_rtl_0|dffs[2]_pterm1_bus\ <= (vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc
& vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & \cnt_rtl_0|dffs\(2));

\cnt_rtl_0|dffs[2]_pterm2_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd
& gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\cnt_rtl_0|dffs[2]_pterm3_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd
& gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\cnt_rtl_0|dffs[2]_pterm4_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd
& gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\cnt_rtl_0|dffs[2]_pterm5_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd
& gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\cnt_rtl_0|dffs[2]_pxor_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & 
gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\cnt_rtl_0|dffs[2]_pclk_bus\ <= (vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & 
vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & \CLK_NEW~dataout\);

\cnt_rtl_0|dffs[2]_pena_bus\ <= (vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & 
vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc);

\cnt_rtl_0|dffs[2]_paclr_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd
& gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\cnt_rtl_0|dffs[2]_papre_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd
& gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\Q.S0~3_pterm0_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd
& gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\Q.S0~3_pterm1_bus\ <= (vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc
& vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & NOT \Q.state_bit_1~dataout\ & NOT \Q.state_bit_0~dataout\);

\Q.S0~3_pterm2_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd
& gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\Q.S0~3_pterm3_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd
& gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\Q.S0~3_pterm4_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd
& gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\Q.S0~3_pterm5_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd
& gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\Q.S0~3_pxor_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd
& gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\Q.S0~3_pclk_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd
& gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\Q.S0~3_pena_bus\ <= (vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc
& vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc);

\Q.S0~3_paclr_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd
& gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\Q.S0~3_papre_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd
& gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\Q.S1~3_pterm0_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd
& gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\Q.S1~3_pterm1_bus\ <= (vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc
& vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & NOT \Q.state_bit_1~dataout\ & \Q.state_bit_0~dataout\);

\Q.S1~3_pterm2_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd
& gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\Q.S1~3_pterm3_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd
& gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\Q.S1~3_pterm4_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd
& gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\Q.S1~3_pterm5_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd
& gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\Q.S1~3_pxor_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd
& gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\Q.S1~3_pclk_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd
& gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\Q.S1~3_pena_bus\ <= (vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc
& vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc);

\Q.S1~3_paclr_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd
& gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\Q.S1~3_papre_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd
& gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\Q.S2~3_pterm0_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd
& gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\Q.S2~3_pterm1_bus\ <= (vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc
& vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & \Q.state_bit_1~dataout\ & NOT \Q.state_bit_0~dataout\);

\Q.S2~3_pterm2_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd
& gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\Q.S2~3_pterm3_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd
& gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\Q.S2~3_pterm4_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd
& gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\Q.S2~3_pterm5_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd
& gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\Q.S2~3_pxor_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd
& gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\Q.S2~3_pclk_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd
& gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\Q.S2~3_pena_bus\ <= (vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc
& vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc);

\Q.S2~3_paclr_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd
& gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\Q.S2~3_papre_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd
& gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\Q.S3~3_pterm0_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd
& gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\Q.S3~3_pterm1_bus\ <= (vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc
& vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & \Q.state_bit_1~dataout\ & \Q.state_bit_0~dataout\);

\Q.S3~3_pterm2_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd
& gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\Q.S3~3_pterm3_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd
& gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\Q.S3~3_pterm4_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd
& gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\Q.S3~3_pterm5_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd
& gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\Q.S3~3_pxor_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd
& gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\Q.S3~3_pclk_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd
& gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\Q.S3~3_pena_bus\ <= (vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc
& vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc);

\Q.S3~3_paclr_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd
& gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\Q.S3~3_papre_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd
& gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\cnt_rtl_0|dffs[0]_pterm0_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd
& gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\cnt_rtl_0|dffs[0]_pterm1_bus\ <= (vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc
& vcc & vcc & NOT \cnt_rtl_0|dffs\(2) & NOT \cnt_rtl_0|dffs\(3) & NOT \cnt_rtl_0|dffs\(4) & NOT \cnt_rtl_0|dffs\(5) & NOT \cnt_rtl_0|dffs\(6) & NOT \cnt_rtl_0|dffs\(7) & NOT \cnt_rtl_0|dffs\(8) & NOT \cnt_rtl_0|dffs\(9) & NOT 
\cnt_rtl_0|dffs\(10) & NOT \cnt_rtl_0|dffs\(11) & NOT \cnt_rtl_0|dffs\(12) & NOT \cnt_rtl_0|dffs\(13) & NOT \cnt_rtl_0|dffs\(1));

\cnt_rtl_0|dffs[0]_pterm2_bus\ <= (vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc
& vcc & vcc & NOT \cnt_rtl_0|dffs\(0) & NOT \cnt_rtl_0|dffs\(2) & NOT \cnt_rtl_0|dffs\(3) & NOT \cnt_rtl_0|dffs\(4) & NOT \cnt_rtl_0|dffs\(5) & NOT \cnt_rtl_0|dffs\(6) & NOT \cnt_rtl_0|dffs\(7) & NOT \cnt_rtl_0|dffs\(8) & NOT 
\cnt_rtl_0|dffs\(9) & NOT \cnt_rtl_0|dffs\(10) & NOT \cnt_rtl_0|dffs\(11) & NOT \cnt_rtl_0|dffs\(12) & NOT \cnt_rtl_0|dffs\(13));

\cnt_rtl_0|dffs[0]_pterm3_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd
& gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\cnt_rtl_0|dffs[0]_pterm4_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd
& gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\cnt_rtl_0|dffs[0]_pterm5_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd
& gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\cnt_rtl_0|dffs[0]_pxor_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & 
gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\cnt_rtl_0|dffs[0]_pclk_bus\ <= (vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & 
vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & \CLK_NEW~dataout\);

\cnt_rtl_0|dffs[0]_pena_bus\ <= (vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & 
vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc);

\cnt_rtl_0|dffs[0]_paclr_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd
& gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\cnt_rtl_0|dffs[0]_papre_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd
& gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\cnt_rtl_0|dffs[1]_pterm0_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd
& gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\cnt_rtl_0|dffs[1]_pterm1_bus\ <= (vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc
& vcc & NOT \cnt_rtl_0|dffs\(1) & NOT \cnt_rtl_0|dffs\(2) & NOT \cnt_rtl_0|dffs\(3) & NOT \cnt_rtl_0|dffs\(4) & NOT \cnt_rtl_0|dffs\(5) & NOT \cnt_rtl_0|dffs\(6) & NOT \cnt_rtl_0|dffs\(7) & NOT \cnt_rtl_0|dffs\(8) & NOT 
\cnt_rtl_0|dffs\(9) & NOT \cnt_rtl_0|dffs\(10) & NOT \cnt_rtl_0|dffs\(11) & NOT \cnt_rtl_0|dffs\(12) & NOT \cnt_rtl_0|dffs\(13) & \cnt_rtl_0|dffs\(0));

\cnt_rtl_0|dffs[1]_pterm2_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd
& gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\cnt_rtl_0|dffs[1]_pterm3_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd
& gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\cnt_rtl_0|dffs[1]_pterm4_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd
& gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\cnt_rtl_0|dffs[1]_pterm5_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd
& gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\cnt_rtl_0|dffs[1]_pxor_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & 
gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\cnt_rtl_0|dffs[1]_pclk_bus\ <= (vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & 
vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & \CLK_NEW~dataout\);

\cnt_rtl_0|dffs[1]_pena_bus\ <= (vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & 
vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc);

\cnt_rtl_0|dffs[1]_paclr_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd
& gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\cnt_rtl_0|dffs[1]_papre_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd
& gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\O[0]_pterm0_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd
& gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\O[0]_pterm1_bus\ <= (vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & NOT 
O(0) & NOT \cnt_rtl_0|dffs\(2) & NOT \cnt_rtl_0|dffs\(1) & NOT \cnt_rtl_0|dffs\(13) & NOT \cnt_rtl_0|dffs\(12) & NOT \cnt_rtl_0|dffs\(11) & NOT \cnt_rtl_0|dffs\(10) & NOT \cnt_rtl_0|dffs\(9) & NOT \cnt_rtl_0|dffs\(8) & NOT 
\cnt_rtl_0|dffs\(7) & NOT \cnt_rtl_0|dffs\(6) & NOT \cnt_rtl_0|dffs\(5) & NOT \cnt_rtl_0|dffs\(4) & NOT \cnt_rtl_0|dffs\(3));

\O[0]_pterm2_bus\ <= (vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & NOT 
\cnt_rtl_0|dffs\(0) & NOT \cnt_rtl_0|dffs\(2) & \cnt_rtl_0|dffs\(1) & NOT \cnt_rtl_0|dffs\(13) & NOT \cnt_rtl_0|dffs\(12) & NOT \cnt_rtl_0|dffs\(11) & NOT \cnt_rtl_0|dffs\(10) & NOT \cnt_rtl_0|dffs\(9) & NOT \cnt_rtl_0|dffs\(8) & NOT 
\cnt_rtl_0|dffs\(7) & NOT \cnt_rtl_0|dffs\(6) & NOT \cnt_rtl_0|dffs\(5) & NOT \cnt_rtl_0|dffs\(4) & NOT \cnt_rtl_0|dffs\(3));

\O[0]_pterm3_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd
& gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\O[0]_pterm4_bus\ <= (vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & 
\cnt_rtl_0|dffs\(0) & NOT \cnt_rtl_0|dffs\(2) & NOT \cnt_rtl_0|dffs\(1) & NOT \cnt_rtl_0|dffs\(13) & NOT \cnt_rtl_0|dffs\(12) & NOT \cnt_rtl_0|dffs\(11) & NOT \cnt_rtl_0|dffs\(10) & NOT \cnt_rtl_0|dffs\(9) & NOT \cnt_rtl_0|dffs\(8) & NOT 
\cnt_rtl_0|dffs\(7) & NOT \cnt_rtl_0|dffs\(6) & NOT \cnt_rtl_0|dffs\(5) & NOT \cnt_rtl_0|dffs\(4) & NOT \cnt_rtl_0|dffs\(3));

\O[0]_pterm5_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd
& gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\O[0]_pxor_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & 
gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\O[0]_pclk_bus\ <= (vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & 
vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & \CLK_NEW~dataout\);

\O[0]_pena_bus\ <= (vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & 
vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc);

\O[0]_paclr_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & 
gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\O[0]_papre_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & 
gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\O[1]_pterm0_bus\ <= (vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & 
\cnt_rtl_0|dffs\(0) & O(1) & NOT \cnt_rtl_0|dffs\(2) & NOT \cnt_rtl_0|dffs\(3) & NOT \cnt_rtl_0|dffs\(4) & NOT \cnt_rtl_0|dffs\(5) & NOT \cnt_rtl_0|dffs\(6) & NOT \cnt_rtl_0|dffs\(7) & NOT \cnt_rtl_0|dffs\(8) & NOT \cnt_rtl_0|dffs\(9)
& NOT \cnt_rtl_0|dffs\(10) & NOT \cnt_rtl_0|dffs\(11) & NOT \cnt_rtl_0|dffs\(12) & NOT \cnt_rtl_0|dffs\(13) & O(0) & NOT \cnt_rtl_0|dffs\(1));

\O[1]_pterm1_bus\ <= (vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & NOT O(1) & NOT 
\cnt_rtl_0|dffs\(2) & NOT \cnt_rtl_0|dffs\(3) & NOT \cnt_rtl_0|dffs\(4) & NOT \cnt_rtl_0|dffs\(5) & NOT \cnt_rtl_0|dffs\(6) & NOT \cnt_rtl_0|dffs\(7) & NOT \cnt_rtl_0|dffs\(8) & NOT \cnt_rtl_0|dffs\(9) & NOT \cnt_rtl_0|dffs\(10) & NOT 
\cnt_rtl_0|dffs\(11) & NOT \cnt_rtl_0|dffs\(12) & NOT \cnt_rtl_0|dffs\(13) & O(0) & NOT \cnt_rtl_0|dffs\(1) & NOT O(3));

\O[1]_pterm2_bus\ <= (vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & NOT 
\cnt_rtl_0|dffs\(0) & NOT O(1) & NOT \cnt_rtl_0|dffs\(2) & NOT \cnt_rtl_0|dffs\(3) & NOT \cnt_rtl_0|dffs\(4) & NOT \cnt_rtl_0|dffs\(5) & NOT \cnt_rtl_0|dffs\(6) & NOT \cnt_rtl_0|dffs\(7) & NOT \cnt_rtl_0|dffs\(8) & NOT 
\cnt_rtl_0|dffs\(9) & NOT \cnt_rtl_0|dffs\(10) & NOT \cnt_rtl_0|dffs\(11) & NOT \cnt_rtl_0|dffs\(12) & NOT \cnt_rtl_0|dffs\(13) & O(0) & NOT O(3));

\O[1]_pterm3_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd
& gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\O[1]_pterm4_bus\ <= (vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & NOT 
\cnt_rtl_0|dffs\(0) & O(1) & NOT \cnt_rtl_0|dffs\(2) & NOT \cnt_rtl_0|dffs\(3) & NOT \cnt_rtl_0|dffs\(4) & NOT \cnt_rtl_0|dffs\(5) & NOT \cnt_rtl_0|dffs\(6) & NOT \cnt_rtl_0|dffs\(7) & NOT \cnt_rtl_0|dffs\(8) & NOT \cnt_rtl_0|dffs\(9)
& NOT \cnt_rtl_0|dffs\(10) & NOT \cnt_rtl_0|dffs\(11) & NOT \cnt_rtl_0|dffs\(12) & NOT \cnt_rtl_0|dffs\(13) & O(0) & \cnt_rtl_0|dffs\(1));

\O[1]_pterm5_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd
& gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\O[1]_pxor_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & 
gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\O[1]_pclk_bus\ <= (vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & 
vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & \CLK_NEW~dataout\);

\O[1]_pena_bus\ <= (vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & 
vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc);

\O[1]_paclr_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & 
gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\O[1]_papre_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & 
gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\O[2]_pterm0_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd
& gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\O[2]_pterm1_bus\ <= (vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & NOT 
\cnt_rtl_0|dffs\(2) & NOT \cnt_rtl_0|dffs\(3) & NOT \cnt_rtl_0|dffs\(4) & NOT \cnt_rtl_0|dffs\(5) & NOT \cnt_rtl_0|dffs\(6) & NOT \cnt_rtl_0|dffs\(7) & NOT \cnt_rtl_0|dffs\(8) & NOT \cnt_rtl_0|dffs\(9) & NOT \cnt_rtl_0|dffs\(10) & NOT 
\cnt_rtl_0|dffs\(11) & NOT \cnt_rtl_0|dffs\(12) & NOT \cnt_rtl_0|dffs\(13) & NOT \cnt_rtl_0|dffs\(0) & \cnt_rtl_0|dffs\(1) & O(1) & O(0));

\O[2]_pterm2_bus\ <= (vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & NOT 
\cnt_rtl_0|dffs\(2) & NOT \cnt_rtl_0|dffs\(3) & NOT \cnt_rtl_0|dffs\(4) & NOT \cnt_rtl_0|dffs\(5) & NOT \cnt_rtl_0|dffs\(6) & NOT \cnt_rtl_0|dffs\(7) & NOT \cnt_rtl_0|dffs\(8) & NOT \cnt_rtl_0|dffs\(9) & NOT \cnt_rtl_0|dffs\(10) & NOT 
\cnt_rtl_0|dffs\(11) & NOT \cnt_rtl_0|dffs\(12) & NOT \cnt_rtl_0|dffs\(13) & \cnt_rtl_0|dffs\(0) & NOT \cnt_rtl_0|dffs\(1) & O(1) & O(0));

\O[2]_pterm3_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd
& gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\O[2]_pterm4_bus\ <= (vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & O(2) & 
NOT \cnt_rtl_0|dffs\(2) & NOT \cnt_rtl_0|dffs\(3) & NOT \cnt_rtl_0|dffs\(4) & NOT \cnt_rtl_0|dffs\(5) & NOT \cnt_rtl_0|dffs\(6) & NOT \cnt_rtl_0|dffs\(7) & NOT \cnt_rtl_0|dffs\(8) & NOT \cnt_rtl_0|dffs\(9) & NOT \cnt_rtl_0|dffs\(10) & 
NOT \cnt_rtl_0|dffs\(11) & NOT \cnt_rtl_0|dffs\(12) & NOT \cnt_rtl_0|dffs\(13) & NOT \cnt_rtl_0|dffs\(0) & NOT \cnt_rtl_0|dffs\(1));

\O[2]_pterm5_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd
& gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\O[2]_pxor_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & 
gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\O[2]_pclk_bus\ <= (vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & 
vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & \CLK_NEW~dataout\);

\O[2]_pena_bus\ <= (vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & 
vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc);

\O[2]_paclr_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & 
gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\O[2]_papre_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & 
gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\O[3]_pterm0_bus\ <= (vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & O(3) & 
NOT \cnt_rtl_0|dffs\(2) & NOT \cnt_rtl_0|dffs\(3) & NOT \cnt_rtl_0|dffs\(4) & NOT \cnt_rtl_0|dffs\(5) & NOT \cnt_rtl_0|dffs\(6) & NOT \cnt_rtl_0|dffs\(7) & NOT \cnt_rtl_0|dffs\(8) & NOT \cnt_rtl_0|dffs\(9) & NOT \cnt_rtl_0|dffs\(10) & 
NOT \cnt_rtl_0|dffs\(11) & NOT \cnt_rtl_0|dffs\(12) & NOT \cnt_rtl_0|dffs\(13) & NOT \cnt_rtl_0|dffs\(0) & NOT \cnt_rtl_0|dffs\(1));

\O[3]_pterm1_bus\ <= (vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & NOT 
\cnt_rtl_0|dffs\(2) & NOT \cnt_rtl_0|dffs\(3) & NOT \cnt_rtl_0|dffs\(4) & NOT \cnt_rtl_0|dffs\(5) & NOT \cnt_rtl_0|dffs\(6) & NOT \cnt_rtl_0|dffs\(7) & NOT \cnt_rtl_0|dffs\(8) & NOT \cnt_rtl_0|dffs\(9) & NOT \cnt_rtl_0|dffs\(10) & NOT 
\cnt_rtl_0|dffs\(11) & NOT \cnt_rtl_0|dffs\(12) & NOT \cnt_rtl_0|dffs\(13) & \cnt_rtl_0|dffs\(0) & NOT \cnt_rtl_0|dffs\(1) & O(1) & O(0) & O(2));

\O[3]_pterm2_bus\ <= (vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & O(3) & NOT 
\cnt_rtl_0|dffs\(2) & NOT \cnt_rtl_0|dffs\(3) & NOT \cnt_rtl_0|dffs\(4) & NOT \cnt_rtl_0|dffs\(5) & NOT \cnt_rtl_0|dffs\(6) & NOT \cnt_rtl_0|dffs\(7) & NOT \cnt_rtl_0|dffs\(8) & NOT \cnt_rtl_0|dffs\(9) & NOT \cnt_rtl_0|dffs\(10) & NOT 
\cnt_rtl_0|dffs\(11) & NOT \cnt_rtl_0|dffs\(12) & NOT \cnt_rtl_0|dffs\(13) & NOT \cnt_rtl_0|dffs\(1) & NOT O(1) & O(0) & NOT O(2));

\O[3]_pterm3_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd
& gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\O[3]_pterm4_bus\ <= (vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & O(3) & NOT 
\cnt_rtl_0|dffs\(2) & NOT \cnt_rtl_0|dffs\(3) & NOT \cnt_rtl_0|dffs\(4) & NOT \cnt_rtl_0|dffs\(5) & NOT \cnt_rtl_0|dffs\(6) & NOT \cnt_rtl_0|dffs\(7) & NOT \cnt_rtl_0|dffs\(8) & NOT \cnt_rtl_0|dffs\(9) & NOT \cnt_rtl_0|dffs\(10) & NOT 
\cnt_rtl_0|dffs\(11) & NOT \cnt_rtl_0|dffs\(12) & NOT \cnt_rtl_0|dffs\(13) & NOT \cnt_rtl_0|dffs\(0) & NOT O(1) & O(0) & NOT O(2));

\O[3]_pterm5_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd
& gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\O[3]_pxor_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & 
gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\O[3]_pclk_bus\ <= (vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & 
vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & \CLK_NEW~dataout\);

\O[3]_pena_bus\ <= (vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & 
vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc);

\O[3]_paclr_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & 
gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\O[3]_papre_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & 
gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\Add3~5_pterm0_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd
& gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\Add3~5_pterm1_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd
& gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\Add3~5_pterm2_bus\ <= (vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc
& vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & O(5));

\Add3~5_pterm3_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd
& gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\Add3~5_pterm4_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd
& gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\Add3~5_pterm5_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd
& gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\Add3~5_pxor_bus\ <= (vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc
& vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & O(4));

\Add3~5_pclk_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd
& gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\Add3~5_pena_bus\ <= (vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc
& vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc);

\Add3~5_paclr_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd
& gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\Add3~5_papre_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd
& gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\LessThan0~4_pterm0_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd
& gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\LessThan0~4_pterm1_bus\ <= (vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc
& vcc & NOT \cnt_rtl_0|dffs\(2) & NOT \cnt_rtl_0|dffs\(3) & NOT \cnt_rtl_0|dffs\(4) & NOT \cnt_rtl_0|dffs\(5) & NOT \cnt_rtl_0|dffs\(6) & NOT \cnt_rtl_0|dffs\(7) & NOT \cnt_rtl_0|dffs\(8) & NOT \cnt_rtl_0|dffs\(9) & NOT 
\cnt_rtl_0|dffs\(10) & NOT \cnt_rtl_0|dffs\(11) & NOT \cnt_rtl_0|dffs\(12) & NOT \cnt_rtl_0|dffs\(13) & NOT \cnt_rtl_0|dffs\(1));

\LessThan0~4_pterm2_bus\ <= (vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc
& vcc & NOT \cnt_rtl_0|dffs\(0) & NOT \cnt_rtl_0|dffs\(2) & NOT \cnt_rtl_0|dffs\(3) & NOT \cnt_rtl_0|dffs\(4) & NOT \cnt_rtl_0|dffs\(5) & NOT \cnt_rtl_0|dffs\(6) & NOT \cnt_rtl_0|dffs\(7) & NOT \cnt_rtl_0|dffs\(8) & NOT 
\cnt_rtl_0|dffs\(9) & NOT \cnt_rtl_0|dffs\(10) & NOT \cnt_rtl_0|dffs\(11) & NOT \cnt_rtl_0|dffs\(12) & NOT \cnt_rtl_0|dffs\(13));

\LessThan0~4_pterm3_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd
& gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\LessThan0~4_pterm4_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd
& gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\LessThan0~4_pterm5_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd
& gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\LessThan0~4_pxor_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & 
gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\LessThan0~4_pclk_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & 
gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\LessThan0~4_pena_bus\ <= (vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & 
vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc);

\LessThan0~4_paclr_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd
& gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\LessThan0~4_papre_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd
& gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\O[5]_pterm0_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd
& gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\O[5]_pterm1_bus\ <= (vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc
& vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & O(5) & NOT \LessThan0~4_dataout\);

\O[5]_pterm2_bus\ <= (vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc
& vcc & vcc & vcc & vcc & vcc & vcc & vcc & \process_0~8sexp_dataout\ & \Equal0~3sexp_dataout\ & \process_0~6sexp_dataout\ & \process_0~4sexp_dataout\ & \C[0]~1sexpand0_dataout\ & O(5));

\O[5]_pterm3_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd
& gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\O[5]_pterm4_bus\ <= (vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc
& vcc & vcc & vcc & \process_0~8sexp_dataout\ & \Equal0~3sexp_dataout\ & \process_0~6sexp_dataout\ & \process_0~4sexp_dataout\ & O(3) & NOT O(2) & O(0) & NOT O(1) & \LessThan0~4_dataout\ & \Add3~5_dataout\);

\O[5]_pterm5_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd
& gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\O[5]_pxor_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & 
gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\O[5]_pclk_bus\ <= (vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & 
vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & \CLK_NEW~dataout\);

\O[5]_pena_bus\ <= (vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & 
vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc);

\O[5]_paclr_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & 
gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\O[5]_papre_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & 
gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\Add3~9_pterm0_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd
& gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\Add3~9_pterm1_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd
& gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\Add3~9_pterm2_bus\ <= (vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc
& vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & O(6));

\Add3~9_pterm3_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd
& gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\Add3~9_pterm4_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd
& gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\Add3~9_pterm5_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd
& gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\Add3~9_pxor_bus\ <= (vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc
& vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & O(5) & O(4));

\Add3~9_pclk_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd
& gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\Add3~9_pena_bus\ <= (vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc
& vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc);

\Add3~9_paclr_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd
& gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\Add3~9_papre_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd
& gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\O[6]_pterm0_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd
& gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\O[6]_pterm1_bus\ <= (vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc
& vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & O(6) & NOT \LessThan0~4_dataout\);

\O[6]_pterm2_bus\ <= (vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc
& vcc & vcc & vcc & vcc & vcc & vcc & vcc & \process_0~8sexp_dataout\ & \Equal0~3sexp_dataout\ & \process_0~6sexp_dataout\ & \process_0~4sexp_dataout\ & \C[0]~1sexpand0_dataout\ & O(6));

\O[6]_pterm3_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd
& gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\O[6]_pterm4_bus\ <= (vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc
& vcc & vcc & vcc & \process_0~8sexp_dataout\ & \Equal0~3sexp_dataout\ & \process_0~6sexp_dataout\ & \process_0~4sexp_dataout\ & O(3) & NOT O(2) & O(0) & NOT O(1) & \LessThan0~4_dataout\ & \Add3~9_dataout\);

\O[6]_pterm5_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd
& gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\O[6]_pxor_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & 
gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\O[6]_pclk_bus\ <= (vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & 
vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & \CLK_NEW~dataout\);

\O[6]_pena_bus\ <= (vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & 
vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc);

\O[6]_paclr_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & 
gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\O[6]_papre_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & 
gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\Add3~13_pterm0_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & 
gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\Add3~13_pterm1_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & 
gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\Add3~13_pterm2_bus\ <= (vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & 
vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & O(7));

\Add3~13_pterm3_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & 
gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\Add3~13_pterm4_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & 
gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\Add3~13_pterm5_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & 
gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\Add3~13_pxor_bus\ <= (vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc
& vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & O(5) & O(4) & O(6));

\Add3~13_pclk_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd
& gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\Add3~13_pena_bus\ <= (vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc
& vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc);

\Add3~13_paclr_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd
& gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\Add3~13_papre_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd
& gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\O[7]_pterm0_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd
& gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\O[7]_pterm1_bus\ <= (vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc
& vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & O(7) & NOT \LessThan0~4_dataout\);

\O[7]_pterm2_bus\ <= (vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc
& vcc & vcc & vcc & vcc & vcc & vcc & vcc & \process_0~11_dataout\ & \Equal0~4_dataout\ & \process_0~10_dataout\ & \process_0~9_dataout\ & \C[0]~2_dataout\ & O(7));

\O[7]_pterm3_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd
& gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\O[7]_pterm4_bus\ <= (vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc
& vcc & vcc & vcc & \process_0~11_dataout\ & \Equal0~4_dataout\ & \process_0~10_dataout\ & \process_0~9_dataout\ & O(3) & NOT O(2) & O(0) & NOT O(1) & \LessThan0~4_dataout\ & \Add3~13_dataout\);

\O[7]_pterm5_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd
& gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\O[7]_pxor_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & 
gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\O[7]_pclk_bus\ <= (vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & 
vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & \CLK_NEW~dataout\);

\O[7]_pena_bus\ <= (vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & 
vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc);

\O[7]_paclr_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & 
gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\O[7]_papre_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & 
gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\O_rtl_1|dffs[0]_pterm0_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & 
gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\O_rtl_1|dffs[0]_pterm1_bus\ <= (vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & 
vcc & vcc & \process_0~14_dataout\ & \Equal0~5_dataout\ & \process_0~13_dataout\ & O(7) & NOT O(6) & NOT O(5) & O(4) & O(3) & NOT O(2) & NOT O(1) & O(0) & \LessThan0~4_dataout\ & NOT \O_rtl_1|dffs\(0));

\O_rtl_1|dffs[0]_pterm2_bus\ <= (vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & 
vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & \process_0~14_dataout\ & \Equal0~5_dataout\ & \process_0~13_dataout\ & \process_0~12_dataout\ & \O_rtl_1|dffs\(0));

\O_rtl_1|dffs[0]_pterm3_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & 
gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\O_rtl_1|dffs[0]_pterm4_bus\ <= (vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & 
vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & NOT \LessThan0~4_dataout\ & \O_rtl_1|dffs\(0));

\O_rtl_1|dffs[0]_pterm5_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & 
gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\O_rtl_1|dffs[0]_pxor_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & 
gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\O_rtl_1|dffs[0]_pclk_bus\ <= (vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & 
vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & \CLK_NEW~dataout\);

\O_rtl_1|dffs[0]_pena_bus\ <= (vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & 
vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc);

\O_rtl_1|dffs[0]_paclr_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & 
gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\O_rtl_1|dffs[0]_papre_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & 
gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\O_rtl_1|dffs[1]_pterm0_bus\ <= (vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & 
vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & NOT \LessThan0~4_dataout\ & \O_rtl_1|dffs\(1));

\O_rtl_1|dffs[1]_pterm1_bus\ <= (vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & 
vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & \process_0~14_dataout\ & \Equal0~5_dataout\ & \process_0~13_dataout\ & \O_rtl_1|dffs\(1) & NOT \O_rtl_1|dffs\(0));

\O_rtl_1|dffs[1]_pterm2_bus\ <= (vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & 
vcc & \process_0~14_dataout\ & \Equal0~5_dataout\ & \process_0~13_dataout\ & O(7) & NOT O(6) & NOT O(5) & O(4) & O(3) & NOT O(2) & NOT O(1) & O(0) & \LessThan0~4_dataout\ & NOT \O_rtl_1|dffs\(1) & \O_rtl_1|dffs\(0));

\O_rtl_1|dffs[1]_pterm3_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & 
gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\O_rtl_1|dffs[1]_pterm4_bus\ <= (vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & 
vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & \process_0~14_dataout\ & \Equal0~5_dataout\ & \process_0~13_dataout\ & \process_0~12_dataout\ & \O_rtl_1|dffs\(1));

\O_rtl_1|dffs[1]_pterm5_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & 
gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\O_rtl_1|dffs[1]_pxor_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & 
gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\O_rtl_1|dffs[1]_pclk_bus\ <= (vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & 
vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & \CLK_NEW~dataout\);

\O_rtl_1|dffs[1]_pena_bus\ <= (vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & 
vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc);

\O_rtl_1|dffs[1]_paclr_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & 
gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\O_rtl_1|dffs[1]_papre_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & 
gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\O_rtl_1|dffs[2]_pterm0_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & 
gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\O_rtl_1|dffs[2]_pterm1_bus\ <= (vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & 
vcc & \process_0~14_dataout\ & \Equal0~5_dataout\ & \process_0~13_dataout\ & O(7) & NOT O(6) & NOT O(5) & O(4) & O(3) & NOT O(2) & NOT O(1) & O(0) & \LessThan0~4_dataout\ & \O_rtl_1|dffs\(0) & \O_rtl_1|dffs\(1));

\O_rtl_1|dffs[2]_pterm2_bus\ <= (vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & NOT 
\cnt_rtl_0|dffs\(2) & NOT \cnt_rtl_0|dffs\(3) & NOT \cnt_rtl_0|dffs\(4) & NOT \cnt_rtl_0|dffs\(5) & NOT \cnt_rtl_0|dffs\(6) & NOT \cnt_rtl_0|dffs\(7) & NOT \cnt_rtl_0|dffs\(8) & NOT \cnt_rtl_0|dffs\(9) & NOT \cnt_rtl_0|dffs\(10) & NOT 
\cnt_rtl_0|dffs\(11) & NOT \cnt_rtl_0|dffs\(12) & NOT \cnt_rtl_0|dffs\(13) & NOT \cnt_rtl_0|dffs\(0) & NOT \cnt_rtl_0|dffs\(1) & \O_rtl_1|dffs\(2) & \LessThan0~4_dataout\);

\O_rtl_1|dffs[2]_pterm3_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & 
gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\O_rtl_1|dffs[2]_pterm4_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & 
gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\O_rtl_1|dffs[2]_pterm5_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & 
gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\O_rtl_1|dffs[2]_pxor_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & 
gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\O_rtl_1|dffs[2]_pclk_bus\ <= (vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & 
vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & \CLK_NEW~dataout\);

\O_rtl_1|dffs[2]_pena_bus\ <= (vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & 
vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc);

\O_rtl_1|dffs[2]_paclr_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & 
gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\O_rtl_1|dffs[2]_papre_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & 
gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\O_rtl_1|dffs[3]_pterm0_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & 
gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\O_rtl_1|dffs[3]_pterm1_bus\ <= (vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & 
\process_0~14_dataout\ & \Equal0~5_dataout\ & \process_0~13_dataout\ & O(7) & NOT O(6) & NOT O(5) & O(4) & O(3) & NOT O(2) & NOT O(1) & O(0) & \LessThan0~4_dataout\ & \O_rtl_1|dffs\(2) & \O_rtl_1|dffs\(0) & \O_rtl_1|dffs\(1));

\O_rtl_1|dffs[3]_pterm2_bus\ <= (vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & 
vcc & vcc & O(7) & NOT O(6) & NOT O(5) & O(4) & O(3) & NOT O(2) & NOT O(1) & O(0) & \O_rtl_1|dffs\(3) & \LessThan0~4_dataout\ & NOT \O_rtl_1|dffs\(2) & \O_rtl_1|dffs\(0) & NOT \O_rtl_1|dffs\(1));

\O_rtl_1|dffs[3]_pterm3_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & 
gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\O_rtl_1|dffs[3]_pterm4_bus\ <= (vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & NOT 
\cnt_rtl_0|dffs\(2) & NOT \cnt_rtl_0|dffs\(3) & NOT \cnt_rtl_0|dffs\(4) & NOT \cnt_rtl_0|dffs\(5) & NOT \cnt_rtl_0|dffs\(6) & NOT \cnt_rtl_0|dffs\(7) & NOT \cnt_rtl_0|dffs\(8) & NOT \cnt_rtl_0|dffs\(9) & NOT \cnt_rtl_0|dffs\(10) & NOT 
\cnt_rtl_0|dffs\(11) & NOT \cnt_rtl_0|dffs\(12) & NOT \cnt_rtl_0|dffs\(13) & NOT \cnt_rtl_0|dffs\(0) & NOT \cnt_rtl_0|dffs\(1) & \O_rtl_1|dffs\(3) & \LessThan0~4_dataout\);

\O_rtl_1|dffs[3]_pterm5_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & 
gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\O_rtl_1|dffs[3]_pxor_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & 
gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\O_rtl_1|dffs[3]_pclk_bus\ <= (vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & 
vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & \CLK_NEW~dataout\);

\O_rtl_1|dffs[3]_pena_bus\ <= (vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & 
vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc);

\O_rtl_1|dffs[3]_paclr_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & 
gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\O_rtl_1|dffs[3]_papre_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & 
gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\O_rtl_0|dffs[0]_pterm0_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & 
gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\O_rtl_0|dffs[0]_pterm1_bus\ <= (vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & 
\Equal0~5_dataout\ & O(7) & NOT O(6) & NOT O(5) & O(4) & O(3) & NOT O(2) & NOT O(1) & O(0) & \O_rtl_1|dffs\(0) & NOT \O_rtl_1|dffs\(1) & NOT \O_rtl_1|dffs\(2) & \O_rtl_1|dffs\(3) & NOT \O_rtl_0|dffs\(0) & \LessThan0~4_dataout\);

\O_rtl_0|dffs[0]_pterm2_bus\ <= (vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & 
vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & \O_rtl_0|dffs\(0) & NOT \LessThan0~4_dataout\);

\O_rtl_0|dffs[0]_pterm3_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & 
gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\O_rtl_0|dffs[0]_pterm4_bus\ <= (vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & 
vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & \process_0~14_dataout\ & \Equal0~5_dataout\ & \process_0~13_dataout\ & \O_rtl_0|dffs\(0));

\O_rtl_0|dffs[0]_pterm5_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & 
gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\O_rtl_0|dffs[0]_pxor_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & 
gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\O_rtl_0|dffs[0]_pclk_bus\ <= (vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & 
vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & \CLK_NEW~dataout\);

\O_rtl_0|dffs[0]_pena_bus\ <= (vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & 
vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc);

\O_rtl_0|dffs[0]_paclr_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & 
gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\O_rtl_0|dffs[0]_papre_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & 
gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\O_rtl_0|dffs[1]_pterm0_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & 
gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\O_rtl_0|dffs[1]_pterm1_bus\ <= (vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & 
\process_0~14_dataout\ & \Equal0~5_dataout\ & O(7) & NOT O(6) & NOT O(5) & O(4) & O(3) & NOT O(2) & NOT O(1) & O(0) & \O_rtl_1|dffs\(0) & NOT \O_rtl_1|dffs\(1) & NOT \O_rtl_1|dffs\(2) & \O_rtl_1|dffs\(3) & \LessThan0~4_dataout\ & 
\O_rtl_0|dffs\(0));

\O_rtl_0|dffs[1]_pterm2_bus\ <= (vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & NOT 
\cnt_rtl_0|dffs\(2) & NOT \cnt_rtl_0|dffs\(3) & NOT \cnt_rtl_0|dffs\(4) & NOT \cnt_rtl_0|dffs\(5) & NOT \cnt_rtl_0|dffs\(6) & NOT \cnt_rtl_0|dffs\(7) & NOT \cnt_rtl_0|dffs\(8) & NOT \cnt_rtl_0|dffs\(9) & NOT \cnt_rtl_0|dffs\(10) & NOT 
\cnt_rtl_0|dffs\(11) & NOT \cnt_rtl_0|dffs\(12) & NOT \cnt_rtl_0|dffs\(13) & NOT \cnt_rtl_0|dffs\(0) & NOT \cnt_rtl_0|dffs\(1) & \O_rtl_0|dffs\(1) & \LessThan0~4_dataout\);

\O_rtl_0|dffs[1]_pterm3_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & 
gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\O_rtl_0|dffs[1]_pterm4_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & 
gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\O_rtl_0|dffs[1]_pterm5_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & 
gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\O_rtl_0|dffs[1]_pxor_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & 
gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\O_rtl_0|dffs[1]_pclk_bus\ <= (vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & 
vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & \CLK_NEW~dataout\);

\O_rtl_0|dffs[1]_pena_bus\ <= (vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & 
vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc);

\O_rtl_0|dffs[1]_paclr_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & 
gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\O_rtl_0|dffs[1]_papre_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & 
gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\Selector2~9_pterm0_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd
& gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\Selector2~9_pterm1_bus\ <= (vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc
& vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & \Q.state_bit_1~dataout\ & \Q.state_bit_0~dataout\ & O(1));

\Selector2~9_pterm2_bus\ <= (vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc
& vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & O(5) & \Q.state_bit_1~dataout\ & NOT \Q.state_bit_0~dataout\);

\Selector2~9_pterm3_bus\ <= (vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc
& vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & \O_rtl_1|dffs\(1) & NOT \Q.state_bit_1~dataout\ & \Q.state_bit_0~dataout\);

\Selector2~9_pterm4_bus\ <= (vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc
& vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & \O_rtl_0|dffs\(1) & NOT \Q.state_bit_1~dataout\ & NOT \Q.state_bit_0~dataout\);

\Selector2~9_pterm5_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd
& gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\Selector2~9_pxor_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & 
gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\Selector2~9_pclk_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & 
gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\Selector2~9_pena_bus\ <= (vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & 
vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc);

\Selector2~9_paclr_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd
& gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\Selector2~9_papre_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd
& gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\O_rtl_0|dffs[2]_pterm0_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & 
gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\O_rtl_0|dffs[2]_pterm1_bus\ <= (vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & 
\process_0~14_dataout\ & \Equal0~5_dataout\ & O(7) & NOT O(6) & NOT O(5) & O(4) & O(3) & NOT O(2) & NOT O(1) & O(0) & \O_rtl_1|dffs\(0) & NOT \O_rtl_1|dffs\(1) & NOT \O_rtl_1|dffs\(2) & \O_rtl_1|dffs\(3) & \LessThan0~4_dataout\ & 
\O_rtl_0|dffs\(0) & \O_rtl_0|dffs\(1));

\O_rtl_0|dffs[2]_pterm2_bus\ <= (vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & NOT 
\cnt_rtl_0|dffs\(2) & NOT \cnt_rtl_0|dffs\(3) & NOT \cnt_rtl_0|dffs\(4) & NOT \cnt_rtl_0|dffs\(5) & NOT \cnt_rtl_0|dffs\(6) & NOT \cnt_rtl_0|dffs\(7) & NOT \cnt_rtl_0|dffs\(8) & NOT \cnt_rtl_0|dffs\(9) & NOT \cnt_rtl_0|dffs\(10) & NOT 
\cnt_rtl_0|dffs\(11) & NOT \cnt_rtl_0|dffs\(12) & NOT \cnt_rtl_0|dffs\(13) & NOT \cnt_rtl_0|dffs\(0) & NOT \cnt_rtl_0|dffs\(1) & \O_rtl_0|dffs\(2) & \LessThan0~4_dataout\);

\O_rtl_0|dffs[2]_pterm3_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & 
gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\O_rtl_0|dffs[2]_pterm4_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & 
gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\O_rtl_0|dffs[2]_pterm5_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & 
gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\O_rtl_0|dffs[2]_pxor_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & 
gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\O_rtl_0|dffs[2]_pclk_bus\ <= (vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & 
vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & \CLK_NEW~dataout\);

\O_rtl_0|dffs[2]_pena_bus\ <= (vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & 
vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc);

\O_rtl_0|dffs[2]_paclr_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & 
gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\O_rtl_0|dffs[2]_papre_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & 
gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\Selector1~9_pterm0_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd
& gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\Selector1~9_pterm1_bus\ <= (vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc
& vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & \Q.state_bit_1~dataout\ & \Q.state_bit_0~dataout\ & O(2));

\Selector1~9_pterm2_bus\ <= (vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc
& vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & O(6) & \Q.state_bit_1~dataout\ & NOT \Q.state_bit_0~dataout\);

\Selector1~9_pterm3_bus\ <= (vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc
& vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & \O_rtl_1|dffs\(2) & NOT \Q.state_bit_1~dataout\ & \Q.state_bit_0~dataout\);

\Selector1~9_pterm4_bus\ <= (vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc
& vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & \O_rtl_0|dffs\(2) & NOT \Q.state_bit_1~dataout\ & NOT \Q.state_bit_0~dataout\);

\Selector1~9_pterm5_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd
& gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\Selector1~9_pxor_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & 
gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\Selector1~9_pclk_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & 
gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\Selector1~9_pena_bus\ <= (vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & 
vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc);

\Selector1~9_paclr_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd
& gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\Selector1~9_papre_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd
& gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\O_rtl_0|dffs[3]_pterm0_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & 
gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\O_rtl_0|dffs[3]_pterm1_bus\ <= (vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & 
\process_0~14_dataout\ & \Equal0~5_dataout\ & O(7) & NOT O(6) & NOT O(5) & O(4) & O(3) & NOT O(2) & NOT O(1) & O(0) & \O_rtl_1|dffs\(0) & NOT \O_rtl_1|dffs\(1) & NOT \O_rtl_1|dffs\(2) & \O_rtl_1|dffs\(3) & \LessThan0~4_dataout\ & 
\O_rtl_0|dffs\(2) & \O_rtl_0|dffs\(0) & \O_rtl_0|dffs\(1));

\O_rtl_0|dffs[3]_pterm2_bus\ <= (vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & NOT 
\cnt_rtl_0|dffs\(2) & NOT \cnt_rtl_0|dffs\(3) & NOT \cnt_rtl_0|dffs\(4) & NOT \cnt_rtl_0|dffs\(5) & NOT \cnt_rtl_0|dffs\(6) & NOT \cnt_rtl_0|dffs\(7) & NOT \cnt_rtl_0|dffs\(8) & NOT \cnt_rtl_0|dffs\(9) & NOT \cnt_rtl_0|dffs\(10) & NOT 
\cnt_rtl_0|dffs\(11) & NOT \cnt_rtl_0|dffs\(12) & NOT \cnt_rtl_0|dffs\(13) & NOT \cnt_rtl_0|dffs\(0) & NOT \cnt_rtl_0|dffs\(1) & \O_rtl_0|dffs\(3) & \LessThan0~4_dataout\);

\O_rtl_0|dffs[3]_pterm3_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & 
gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\O_rtl_0|dffs[3]_pterm4_bus\ <= (vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & O(7) & 
NOT O(6) & NOT O(5) & O(4) & O(3) & NOT O(2) & NOT O(1) & O(0) & \O_rtl_1|dffs\(0) & NOT \O_rtl_1|dffs\(1) & NOT \O_rtl_1|dffs\(2) & \O_rtl_1|dffs\(3) & \O_rtl_0|dffs\(3) & \LessThan0~4_dataout\ & NOT \O_rtl_0|dffs\(2) & 
\O_rtl_0|dffs\(0) & NOT \O_rtl_0|dffs\(1));

\O_rtl_0|dffs[3]_pterm5_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & 
gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\O_rtl_0|dffs[3]_pxor_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & 
gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\O_rtl_0|dffs[3]_pclk_bus\ <= (vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & 
vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & \CLK_NEW~dataout\);

\O_rtl_0|dffs[3]_pena_bus\ <= (vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & 
vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc);

\O_rtl_0|dffs[3]_paclr_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & 
gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\O_rtl_0|dffs[3]_papre_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & 
gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\Selector0~9_pterm0_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd
& gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\Selector0~9_pterm1_bus\ <= (vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc
& vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & \Q.state_bit_1~dataout\ & \Q.state_bit_0~dataout\ & O(3));

\Selector0~9_pterm2_bus\ <= (vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc
& vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & O(7) & \Q.state_bit_1~dataout\ & NOT \Q.state_bit_0~dataout\);

\Selector0~9_pterm3_bus\ <= (vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc
& vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & \O_rtl_1|dffs\(3) & NOT \Q.state_bit_1~dataout\ & \Q.state_bit_0~dataout\);

\Selector0~9_pterm4_bus\ <= (vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc
& vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & \O_rtl_0|dffs\(3) & NOT \Q.state_bit_1~dataout\ & NOT \Q.state_bit_0~dataout\);

\Selector0~9_pterm5_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd
& gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\Selector0~9_pxor_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & 
gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\Selector0~9_pclk_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & 
gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\Selector0~9_pena_bus\ <= (vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & 
vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc);

\Selector0~9_paclr_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd
& gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\Selector0~9_papre_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd
& gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\OVERFLOW~reg0_pterm0_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & 
gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\OVERFLOW~reg0_pterm1_bus\ <= (vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & 
vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & \OVERFLOW~reg0_dataout\ & \cnt_rtl_0|dffs\(0) & \cnt_rtl_0|dffs\(1));

\OVERFLOW~reg0_pterm2_bus\ <= (vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & 
vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & \OVERFLOW~3_dataout\ & \OVERFLOW~reg0_dataout\);

\OVERFLOW~reg0_pterm3_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & 
gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\OVERFLOW~reg0_pterm4_bus\ <= (vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & NOT \cnt_rtl_0|dffs\(2) & NOT \cnt_rtl_0|dffs\(3) & NOT \cnt_rtl_0|dffs\(4) & 
NOT \cnt_rtl_0|dffs\(5) & NOT \cnt_rtl_0|dffs\(6) & NOT \cnt_rtl_0|dffs\(7) & NOT \cnt_rtl_0|dffs\(8) & NOT \cnt_rtl_0|dffs\(9) & NOT \cnt_rtl_0|dffs\(10) & NOT \cnt_rtl_0|dffs\(11) & NOT \cnt_rtl_0|dffs\(12) & NOT \cnt_rtl_0|dffs\(13) & 
O(7) & NOT O(6) & NOT O(5) & O(4) & O(3) & NOT O(2) & NOT O(1) & O(0) & \O_rtl_1|dffs\(0) & NOT \O_rtl_1|dffs\(1) & NOT \O_rtl_1|dffs\(2) & \O_rtl_1|dffs\(3) & \O_rtl_0|dffs\(0) & NOT \O_rtl_0|dffs\(1) & NOT \O_rtl_0|dffs\(2)
& \O_rtl_0|dffs\(3) & \OVERFLOW~4_dataout\);

\OVERFLOW~reg0_pterm5_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & 
gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\OVERFLOW~reg0_pxor_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd
& gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\OVERFLOW~reg0_pclk_bus\ <= (vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc
& vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & \CLK_NEW~dataout\);

\OVERFLOW~reg0_pena_bus\ <= (vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc
& vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc);

\OVERFLOW~reg0_paclr_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd
& gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\OVERFLOW~reg0_papre_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd
& gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\O[4]_pterm0_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd
& gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\O[4]_pterm1_bus\ <= (vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc
& vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & O(4) & NOT \LessThan0~4_dataout\);

\O[4]_pterm2_bus\ <= (vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc
& vcc & vcc & vcc & vcc & vcc & vcc & vcc & \process_0~14_dataout\ & \Equal0~5_dataout\ & \process_0~13_dataout\ & \process_0~12_dataout\ & \C[0]~3_dataout\ & O(4));

\O[4]_pterm3_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd
& gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\O[4]_pterm4_bus\ <= (vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc
& vcc & vcc & vcc & \process_0~14_dataout\ & \Equal0~5_dataout\ & \process_0~13_dataout\ & \process_0~12_dataout\ & O(3) & NOT O(2) & O(0) & NOT O(1) & NOT O(4) & \LessThan0~4_dataout\);

\O[4]_pterm5_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd
& gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\O[4]_pxor_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & 
gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\O[4]_pclk_bus\ <= (vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & 
vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & \CLK_NEW~dataout\);

\O[4]_pena_bus\ <= (vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & 
vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc);

\O[4]_paclr_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & 
gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\O[4]_papre_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & 
gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\Selector3~9_pterm0_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd
& gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\Selector3~9_pterm1_bus\ <= (vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc
& vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & \Q.state_bit_1~dataout\ & \Q.state_bit_0~dataout\ & O(0));

\Selector3~9_pterm2_bus\ <= (vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc
& vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & O(4) & \Q.state_bit_1~dataout\ & NOT \Q.state_bit_0~dataout\);

\Selector3~9_pterm3_bus\ <= (vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc
& vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & \O_rtl_1|dffs\(0) & NOT \Q.state_bit_1~dataout\ & \Q.state_bit_0~dataout\);

\Selector3~9_pterm4_bus\ <= (vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc
& vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & \O_rtl_0|dffs\(0) & NOT \Q.state_bit_1~dataout\ & NOT \Q.state_bit_0~dataout\);

\Selector3~9_pterm5_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd
& gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\Selector3~9_pxor_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & 
gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\Selector3~9_pclk_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & 
gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\Selector3~9_pena_bus\ <= (vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & 
vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc);

\Selector3~9_paclr_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd
& gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\Selector3~9_papre_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd
& gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\O[1]~89_pterm0_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & 
gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\O[1]~89_pterm1_bus\ <= (vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & NOT 
O(1) & NOT \cnt_rtl_0|dffs\(2) & NOT \cnt_rtl_0|dffs\(3) & NOT \cnt_rtl_0|dffs\(4) & NOT \cnt_rtl_0|dffs\(5) & NOT \cnt_rtl_0|dffs\(6) & NOT \cnt_rtl_0|dffs\(7) & NOT \cnt_rtl_0|dffs\(8) & NOT \cnt_rtl_0|dffs\(9) & NOT 
\cnt_rtl_0|dffs\(10) & NOT \cnt_rtl_0|dffs\(11) & NOT \cnt_rtl_0|dffs\(12) & NOT \cnt_rtl_0|dffs\(13) & NOT \cnt_rtl_0|dffs\(0) & NOT \cnt_rtl_0|dffs\(1));

\O[1]~89_pterm2_bus\ <= (vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & O(0) & 
O(2) & NOT O(1) & NOT \cnt_rtl_0|dffs\(2) & NOT \cnt_rtl_0|dffs\(3) & NOT \cnt_rtl_0|dffs\(4) & NOT \cnt_rtl_0|dffs\(5) & NOT \cnt_rtl_0|dffs\(6) & NOT \cnt_rtl_0|dffs\(7) & NOT \cnt_rtl_0|dffs\(8) & NOT \cnt_rtl_0|dffs\(9) & NOT 
\cnt_rtl_0|dffs\(10) & NOT \cnt_rtl_0|dffs\(11) & NOT \cnt_rtl_0|dffs\(12) & NOT \cnt_rtl_0|dffs\(13) & NOT \cnt_rtl_0|dffs\(1));

\O[1]~89_pterm3_bus\ <= (vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & O(0) & 
O(2) & NOT O(1) & NOT \cnt_rtl_0|dffs\(2) & NOT \cnt_rtl_0|dffs\(3) & NOT \cnt_rtl_0|dffs\(4) & NOT \cnt_rtl_0|dffs\(5) & NOT \cnt_rtl_0|dffs\(6) & NOT \cnt_rtl_0|dffs\(7) & NOT \cnt_rtl_0|dffs\(8) & NOT \cnt_rtl_0|dffs\(9) & NOT 
\cnt_rtl_0|dffs\(10) & NOT \cnt_rtl_0|dffs\(11) & NOT \cnt_rtl_0|dffs\(12) & NOT \cnt_rtl_0|dffs\(13) & NOT \cnt_rtl_0|dffs\(0));

\O[1]~89_pterm4_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & 
gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\O[1]~89_pterm5_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & 
gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\O[1]~89_pxor_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd
& gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\O[1]~89_pclk_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd
& gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\O[1]~89_pena_bus\ <= (vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc
& vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc);

\O[1]~89_paclr_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd
& gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\O[1]~89_papre_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd
& gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\O[3]~93_pterm0_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & 
gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\O[3]~93_pterm1_bus\ <= (vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & NOT 
\cnt_rtl_0|dffs\(2) & NOT \cnt_rtl_0|dffs\(3) & NOT \cnt_rtl_0|dffs\(4) & NOT \cnt_rtl_0|dffs\(5) & NOT \cnt_rtl_0|dffs\(6) & NOT \cnt_rtl_0|dffs\(7) & NOT \cnt_rtl_0|dffs\(8) & NOT \cnt_rtl_0|dffs\(9) & NOT \cnt_rtl_0|dffs\(10) & NOT 
\cnt_rtl_0|dffs\(11) & NOT \cnt_rtl_0|dffs\(12) & NOT \cnt_rtl_0|dffs\(13) & NOT \cnt_rtl_0|dffs\(0) & \cnt_rtl_0|dffs\(1) & O(1) & O(0) & O(2));

\O[3]~93_pterm2_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & 
gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\O[3]~93_pterm3_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & 
gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\O[3]~93_pterm4_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & 
gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\O[3]~93_pterm5_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & 
gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\O[3]~93_pxor_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd
& gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\O[3]~93_pclk_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd
& gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\O[3]~93_pena_bus\ <= (vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc
& vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc);

\O[3]~93_paclr_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd
& gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\O[3]~93_papre_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd
& gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\~VCC~0_pterm0_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd
& gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\~VCC~0_pterm1_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd
& gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\~VCC~0_pterm2_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd
& gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\~VCC~0_pterm3_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd
& gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\~VCC~0_pterm4_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd
& gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\~VCC~0_pterm5_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd
& gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\~VCC~0_pxor_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd
& gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\~VCC~0_pclk_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd
& gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\~VCC~0_pena_bus\ <= (vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc
& vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc);

\~VCC~0_paclr_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd
& gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\~VCC~0_papre_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd
& gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\OVERFLOW~3_datain_bus\ <= (vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc
& vcc & vcc & NOT \cnt_rtl_0|dffs\(2) & NOT \cnt_rtl_0|dffs\(3) & NOT \cnt_rtl_0|dffs\(4) & NOT \cnt_rtl_0|dffs\(5) & NOT \cnt_rtl_0|dffs\(6) & NOT \cnt_rtl_0|dffs\(7) & NOT \cnt_rtl_0|dffs\(8) & NOT \cnt_rtl_0|dffs\(9) & NOT 
\cnt_rtl_0|dffs\(10) & NOT \cnt_rtl_0|dffs\(11) & NOT \cnt_rtl_0|dffs\(12) & NOT \cnt_rtl_0|dffs\(13));

\OVERFLOW~4_datain_bus\ <= (vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc
& vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & \cnt_rtl_0|dffs\(0) & \cnt_rtl_0|dffs\(1));

\C[0]~1sexpand0_datain_bus\ <= (vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & 
vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & O(3) & NOT O(2) & NOT O(1) & O(0));

\process_0~4sexp_datain_bus\ <= (vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & 
vcc & vcc & vcc & vcc & vcc & vcc & vcc & O(7) & NOT O(6) & NOT O(5) & O(4) & O(3) & NOT O(2) & NOT O(1) & O(0));

\process_0~6sexp_datain_bus\ <= (vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & 
vcc & vcc & vcc & O(7) & NOT O(6) & NOT O(5) & O(4) & O(3) & NOT O(2) & NOT O(1) & O(0) & \O_rtl_1|dffs\(0) & NOT \O_rtl_1|dffs\(1) & NOT \O_rtl_1|dffs\(2) & \O_rtl_1|dffs\(3));

\Equal0~3sexp_datain_bus\ <= (vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc
& NOT \cnt_rtl_0|dffs\(2) & NOT \cnt_rtl_0|dffs\(3) & NOT \cnt_rtl_0|dffs\(4) & NOT \cnt_rtl_0|dffs\(5) & NOT \cnt_rtl_0|dffs\(6) & NOT \cnt_rtl_0|dffs\(7) & NOT \cnt_rtl_0|dffs\(8) & NOT \cnt_rtl_0|dffs\(9) & NOT \cnt_rtl_0|dffs\(10) & 
NOT \cnt_rtl_0|dffs\(11) & NOT \cnt_rtl_0|dffs\(12) & NOT \cnt_rtl_0|dffs\(13) & NOT \cnt_rtl_0|dffs\(0) & NOT \cnt_rtl_0|dffs\(1));

\process_0~8sexp_datain_bus\ <= (vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & O(7)
& NOT O(6) & NOT O(5) & O(4) & O(3) & NOT O(2) & NOT O(1) & O(0) & \O_rtl_1|dffs\(0) & NOT \O_rtl_1|dffs\(1) & NOT \O_rtl_1|dffs\(2) & \O_rtl_1|dffs\(3) & \O_rtl_0|dffs\(0) & NOT \O_rtl_0|dffs\(1) & NOT \O_rtl_0|dffs\(2) & 
\O_rtl_0|dffs\(3));

\C[0]~2_datain_bus\ <= (vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc
& vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & O(3) & NOT O(2) & NOT O(1) & O(0));

\process_0~9_datain_bus\ <= (vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc
& vcc & vcc & vcc & vcc & vcc & vcc & O(7) & NOT O(6) & NOT O(5) & O(4) & O(3) & NOT O(2) & NOT O(1) & O(0));

\process_0~10_datain_bus\ <= (vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc
& vcc & vcc & O(7) & NOT O(6) & NOT O(5) & O(4) & O(3) & NOT O(2) & NOT O(1) & O(0) & \O_rtl_1|dffs\(0) & NOT \O_rtl_1|dffs\(1) & NOT \O_rtl_1|dffs\(2) & \O_rtl_1|dffs\(3));

\Equal0~4_datain_bus\ <= (vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & 
NOT \cnt_rtl_0|dffs\(2) & NOT \cnt_rtl_0|dffs\(3) & NOT \cnt_rtl_0|dffs\(4) & NOT \cnt_rtl_0|dffs\(5) & NOT \cnt_rtl_0|dffs\(6) & NOT \cnt_rtl_0|dffs\(7) & NOT \cnt_rtl_0|dffs\(8) & NOT \cnt_rtl_0|dffs\(9) & NOT \cnt_rtl_0|dffs\(10) & 
NOT \cnt_rtl_0|dffs\(11) & NOT \cnt_rtl_0|dffs\(12) & NOT \cnt_rtl_0|dffs\(13) & NOT \cnt_rtl_0|dffs\(0) & NOT \cnt_rtl_0|dffs\(1));

\process_0~11_datain_bus\ <= (vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & O(7) & 
NOT O(6) & NOT O(5) & O(4) & O(3) & NOT O(2) & NOT O(1) & O(0) & \O_rtl_1|dffs\(0) & NOT \O_rtl_1|dffs\(1) & NOT \O_rtl_1|dffs\(2) & \O_rtl_1|dffs\(3) & \O_rtl_0|dffs\(0) & NOT \O_rtl_0|dffs\(1) & NOT \O_rtl_0|dffs\(2) & 
\O_rtl_0|dffs\(3));

\process_0~12_datain_bus\ <= (vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc
& vcc & vcc & vcc & vcc & vcc & vcc & O(7) & NOT O(6) & NOT O(5) & O(4) & O(3) & NOT O(2) & NOT O(1) & O(0));

\process_0~13_datain_bus\ <= (vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc
& vcc & vcc & O(7) & NOT O(6) & NOT O(5) & O(4) & O(3) & NOT O(2) & NOT O(1) & O(0) & \O_rtl_1|dffs\(0) & NOT \O_rtl_1|dffs\(1) & NOT \O_rtl_1|dffs\(2) & \O_rtl_1|dffs\(3));

\Equal0~5_datain_bus\ <= (vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & 
NOT \cnt_rtl_0|dffs\(2) & NOT \cnt_rtl_0|dffs\(3) & NOT \cnt_rtl_0|dffs\(4) & NOT \cnt_rtl_0|dffs\(5) & NOT \cnt_rtl_0|dffs\(6) & NOT \cnt_rtl_0|dffs\(7) & NOT \cnt_rtl_0|dffs\(8) & NOT \cnt_rtl_0|dffs\(9) & NOT \cnt_rtl_0|dffs\(10) & 
NOT \cnt_rtl_0|dffs\(11) & NOT \cnt_rtl_0|dffs\(12) & NOT \cnt_rtl_0|dffs\(13) & NOT \cnt_rtl_0|dffs\(0) & NOT \cnt_rtl_0|dffs\(1));

\process_0~14_datain_bus\ <= (vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & O(7) & 
NOT O(6) & NOT O(5) & O(4) & O(3) & NOT O(2) & NOT O(1) & O(0) & \O_rtl_1|dffs\(0) & NOT \O_rtl_1|dffs\(1) & NOT \O_rtl_1|dffs\(2) & \O_rtl_1|dffs\(3) & \O_rtl_0|dffs\(0) & NOT \O_rtl_0|dffs\(1) & NOT \O_rtl_0|dffs\(2) & 
\O_rtl_0|dffs\(3));

\C[0]~3_datain_bus\ <= (vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc
& vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & O(3) & NOT O(2) & NOT O(1) & O(0));
ALT_INV_O(4) <= NOT O(4);
\O_rtl_0|ALT_INV_dffs\(2) <= NOT \O_rtl_0|dffs\(2);
\O_rtl_0|ALT_INV_dffs\(1) <= NOT \O_rtl_0|dffs\(1);
\O_rtl_0|ALT_INV_dffs\(0) <= NOT \O_rtl_0|dffs\(0);
\O_rtl_1|ALT_INV_dffs\(2) <= NOT \O_rtl_1|dffs\(2);
\O_rtl_1|ALT_INV_dffs\(1) <= NOT \O_rtl_1|dffs\(1);
\O_rtl_1|ALT_INV_dffs\(0) <= NOT \O_rtl_1|dffs\(0);
ALT_INV_O(6) <= NOT O(6);
ALT_INV_O(5) <= NOT O(5);
\ALT_INV_LessThan0~4_dataout\ <= NOT \LessThan0~4_dataout\;
ALT_INV_O(3) <= NOT O(3);
ALT_INV_O(2) <= NOT O(2);
ALT_INV_O(1) <= NOT O(1);
ALT_INV_O(0) <= NOT O(0);
\cnt_rtl_0|ALT_INV_dffs\(1) <= NOT \cnt_rtl_0|dffs\(1);
\cnt_rtl_0|ALT_INV_dffs\(0) <= NOT \cnt_rtl_0|dffs\(0);
\cnt_rtl_0|ALT_INV_dffs\(2) <= NOT \cnt_rtl_0|dffs\(2);
\cnt_rtl_0|ALT_INV_dffs\(3) <= NOT \cnt_rtl_0|dffs\(3);
\cnt_rtl_0|ALT_INV_dffs\(4) <= NOT \cnt_rtl_0|dffs\(4);
\cnt_rtl_0|ALT_INV_dffs\(5) <= NOT \cnt_rtl_0|dffs\(5);
\cnt_rtl_0|ALT_INV_dffs\(6) <= NOT \cnt_rtl_0|dffs\(6);
\cnt_rtl_0|ALT_INV_dffs\(7) <= NOT \cnt_rtl_0|dffs\(7);
\cnt_rtl_0|ALT_INV_dffs\(8) <= NOT \cnt_rtl_0|dffs\(8);
\cnt_rtl_0|ALT_INV_dffs\(9) <= NOT \cnt_rtl_0|dffs\(9);
\cnt_rtl_0|ALT_INV_dffs\(10) <= NOT \cnt_rtl_0|dffs\(10);
\cnt_rtl_0|ALT_INV_dffs\(11) <= NOT \cnt_rtl_0|dffs\(11);
\cnt_rtl_0|ALT_INV_dffs\(12) <= NOT \cnt_rtl_0|dffs\(12);
\cnt_rtl_0|ALT_INV_dffs\(13) <= NOT \cnt_rtl_0|dffs\(13);
\ALT_INV_Q.state_bit_1~dataout\ <= NOT \Q.state_bit_1~dataout\;
\ALT_INV_Q.state_bit_0~dataout\ <= NOT \Q.state_bit_0~dataout\;
\ALT_INV_process_1:CNT[0]~dataout\ <= NOT \process_1:CNT[0]~dataout\;
\ALT_INV_process_1:CNT[3]~dataout\ <= NOT \process_1:CNT[3]~dataout\;
\ALT_INV_process_1:CNT[1]~dataout\ <= NOT \process_1:CNT[1]~dataout\;

-- Location: PIN_43
\CLK~I\ : max_io
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	operation_mode => "input",
	weak_pull_up => "false")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_CLK,
	dataout => \CLK~dataout\);

-- Location: LC57
\~VCC~0\ : max_mcell
-- pragma translate_off
GENERIC MAP (
	operation_mode => "invert",
	output_mode => "comb",
	pexp_mode => "off")
-- pragma translate_on
PORT MAP (
	pterm0 => \~VCC~0_pterm0_bus\,
	pterm1 => \~VCC~0_pterm1_bus\,
	pterm2 => \~VCC~0_pterm2_bus\,
	pterm3 => \~VCC~0_pterm3_bus\,
	pterm4 => \~VCC~0_pterm4_bus\,
	pterm5 => \~VCC~0_pterm5_bus\,
	pxor => \~VCC~0_pxor_bus\,
	pclk => \~VCC~0_pclk_bus\,
	papre => \~VCC~0_papre_bus\,
	paclr => \~VCC~0_paclr_bus\,
	pena => \~VCC~0_pena_bus\,
	dataout => \~VCC~0~dataout\);

-- Location: LC9
\process_1:CNT[1]\ : max_mcell
-- pragma translate_off
GENERIC MAP (
	operation_mode => "xor",
	output_mode => "reg",
	pexp_mode => "off",
	power_up => "low",
	register_mode => "dff")
-- pragma translate_on
PORT MAP (
	clk => \CLK~dataout\,
	pterm0 => \process_1:CNT[1]_pterm0_bus\,
	pterm1 => \process_1:CNT[1]_pterm1_bus\,
	pterm2 => \process_1:CNT[1]_pterm2_bus\,
	pterm3 => \process_1:CNT[1]_pterm3_bus\,
	pterm4 => \process_1:CNT[1]_pterm4_bus\,
	pterm5 => \process_1:CNT[1]_pterm5_bus\,
	pxor => \process_1:CNT[1]_pxor_bus\,
	pclk => \process_1:CNT[1]_pclk_bus\,
	papre => \process_1:CNT[1]_papre_bus\,
	paclr => \process_1:CNT[1]_paclr_bus\,
	pena => \process_1:CNT[1]_pena_bus\,
	dataout => \process_1:CNT[1]~dataout\);

-- Location: LC5
\process_1:CNT[3]\ : max_mcell
-- pragma translate_off
GENERIC MAP (
	operation_mode => "xor",
	output_mode => "reg",
	pexp_mode => "off",
	power_up => "low",
	register_mode => "dff")
-- pragma translate_on
PORT MAP (
	clk => \CLK~dataout\,
	pterm0 => \process_1:CNT[3]_pterm0_bus\,
	pterm1 => \process_1:CNT[3]_pterm1_bus\,
	pterm2 => \process_1:CNT[3]_pterm2_bus\,
	pterm3 => \process_1:CNT[3]_pterm3_bus\,
	pterm4 => \process_1:CNT[3]_pterm4_bus\,
	pterm5 => \process_1:CNT[3]_pterm5_bus\,
	pxor => \process_1:CNT[3]_pxor_bus\,
	pclk => \process_1:CNT[3]_pclk_bus\,
	papre => \process_1:CNT[3]_papre_bus\,
	paclr => \process_1:CNT[3]_paclr_bus\,
	pena => \process_1:CNT[3]_pena_bus\,
	dataout => \process_1:CNT[3]~dataout\);

-- Location: LC15
\process_1:CNT[5]\ : max_mcell
-- pragma translate_off
GENERIC MAP (
	operation_mode => "normal",
	output_mode => "reg",
	pexp_mode => "off",
	power_up => "low",
	register_mode => "tff")
-- pragma translate_on
PORT MAP (
	clk => \CLK~dataout\,
	pterm0 => \process_1:CNT[5]_pterm0_bus\,
	pterm1 => \process_1:CNT[5]_pterm1_bus\,
	pterm2 => \process_1:CNT[5]_pterm2_bus\,
	pterm3 => \process_1:CNT[5]_pterm3_bus\,
	pterm4 => \process_1:CNT[5]_pterm4_bus\,
	pterm5 => \process_1:CNT[5]_pterm5_bus\,
	pxor => \process_1:CNT[5]_pxor_bus\,
	pclk => \process_1:CNT[5]_pclk_bus\,
	papre => \process_1:CNT[5]_papre_bus\,
	paclr => \process_1:CNT[5]_paclr_bus\,
	pena => \process_1:CNT[5]_pena_bus\,
	dataout => \process_1:CNT[5]~dataout\);

-- Location: LC3
\process_1:CNT[4]\ : max_mcell
-- pragma translate_off
GENERIC MAP (
	operation_mode => "normal",
	output_mode => "reg",
	pexp_mode => "off",
	power_up => "low",
	register_mode => "tff")
-- pragma translate_on
PORT MAP (
	clk => \CLK~dataout\,
	pterm0 => \process_1:CNT[4]_pterm0_bus\,
	pterm1 => \process_1:CNT[4]_pterm1_bus\,
	pterm2 => \process_1:CNT[4]_pterm2_bus\,
	pterm3 => \process_1:CNT[4]_pterm3_bus\,
	pterm4 => \process_1:CNT[4]_pterm4_bus\,
	pterm5 => \process_1:CNT[4]_pterm5_bus\,
	pxor => \process_1:CNT[4]_pxor_bus\,
	pclk => \process_1:CNT[4]_pclk_bus\,
	papre => \process_1:CNT[4]_papre_bus\,
	paclr => \process_1:CNT[4]_paclr_bus\,
	pena => \process_1:CNT[4]_pena_bus\,
	dataout => \process_1:CNT[4]~dataout\);

-- Location: LC7
\process_1:CNT[7]\ : max_mcell
-- pragma translate_off
GENERIC MAP (
	operation_mode => "normal",
	output_mode => "reg",
	pexp_mode => "off",
	power_up => "low",
	register_mode => "tff")
-- pragma translate_on
PORT MAP (
	clk => \CLK~dataout\,
	pterm0 => \process_1:CNT[7]_pterm0_bus\,
	pterm1 => \process_1:CNT[7]_pterm1_bus\,
	pterm2 => \process_1:CNT[7]_pterm2_bus\,
	pterm3 => \process_1:CNT[7]_pterm3_bus\,
	pterm4 => \process_1:CNT[7]_pterm4_bus\,
	pterm5 => \process_1:CNT[7]_pterm5_bus\,
	pxor => \process_1:CNT[7]_pxor_bus\,
	pclk => \process_1:CNT[7]_pclk_bus\,
	papre => \process_1:CNT[7]_papre_bus\,
	paclr => \process_1:CNT[7]_paclr_bus\,
	pena => \process_1:CNT[7]_pena_bus\,
	dataout => \process_1:CNT[7]~dataout\);

-- Location: LC10
\process_1:CNT[6]\ : max_mcell
-- pragma translate_off
GENERIC MAP (
	operation_mode => "normal",
	output_mode => "reg",
	pexp_mode => "off",
	power_up => "low",
	register_mode => "tff")
-- pragma translate_on
PORT MAP (
	clk => \CLK~dataout\,
	pterm0 => \process_1:CNT[6]_pterm0_bus\,
	pterm1 => \process_1:CNT[6]_pterm1_bus\,
	pterm2 => \process_1:CNT[6]_pterm2_bus\,
	pterm3 => \process_1:CNT[6]_pterm3_bus\,
	pterm4 => \process_1:CNT[6]_pterm4_bus\,
	pterm5 => \process_1:CNT[6]_pterm5_bus\,
	pxor => \process_1:CNT[6]_pxor_bus\,
	pclk => \process_1:CNT[6]_pclk_bus\,
	papre => \process_1:CNT[6]_papre_bus\,
	paclr => \process_1:CNT[6]_paclr_bus\,
	pena => \process_1:CNT[6]_pena_bus\,
	dataout => \process_1:CNT[6]~dataout\);

-- Location: LC4
\process_1:CNT[8]\ : max_mcell
-- pragma translate_off
GENERIC MAP (
	operation_mode => "normal",
	output_mode => "reg",
	pexp_mode => "off",
	power_up => "low",
	register_mode => "tff")
-- pragma translate_on
PORT MAP (
	clk => \CLK~dataout\,
	pterm0 => \process_1:CNT[8]_pterm0_bus\,
	pterm1 => \process_1:CNT[8]_pterm1_bus\,
	pterm2 => \process_1:CNT[8]_pterm2_bus\,
	pterm3 => \process_1:CNT[8]_pterm3_bus\,
	pterm4 => \process_1:CNT[8]_pterm4_bus\,
	pterm5 => \process_1:CNT[8]_pterm5_bus\,
	pxor => \process_1:CNT[8]_pxor_bus\,
	pclk => \process_1:CNT[8]_pclk_bus\,
	papre => \process_1:CNT[8]_papre_bus\,
	paclr => \process_1:CNT[8]_paclr_bus\,
	pena => \process_1:CNT[8]_pena_bus\,
	dataout => \process_1:CNT[8]~dataout\);

-- Location: LC8
\process_1:CNT[2]\ : max_mcell
-- pragma translate_off
GENERIC MAP (
	operation_mode => "normal",
	output_mode => "reg",
	pexp_mode => "off",
	power_up => "low",
	register_mode => "tff")
-- pragma translate_on
PORT MAP (
	clk => \CLK~dataout\,
	pterm0 => \process_1:CNT[2]_pterm0_bus\,
	pterm1 => \process_1:CNT[2]_pterm1_bus\,
	pterm2 => \process_1:CNT[2]_pterm2_bus\,
	pterm3 => \process_1:CNT[2]_pterm3_bus\,
	pterm4 => \process_1:CNT[2]_pterm4_bus\,
	pterm5 => \process_1:CNT[2]_pterm5_bus\,
	pxor => \process_1:CNT[2]_pxor_bus\,
	pclk => \process_1:CNT[2]_pclk_bus\,
	papre => \process_1:CNT[2]_papre_bus\,
	paclr => \process_1:CNT[2]_paclr_bus\,
	pena => \process_1:CNT[2]_pena_bus\,
	dataout => \process_1:CNT[2]~dataout\);

-- Location: LC16
\process_1:CNT[0]\ : max_mcell
-- pragma translate_off
GENERIC MAP (
	operation_mode => "invert",
	output_mode => "reg",
	pexp_mode => "off",
	power_up => "low",
	register_mode => "tff")
-- pragma translate_on
PORT MAP (
	clk => \CLK~dataout\,
	pterm0 => \process_1:CNT[0]_pterm0_bus\,
	pterm1 => \process_1:CNT[0]_pterm1_bus\,
	pterm2 => \process_1:CNT[0]_pterm2_bus\,
	pterm3 => \process_1:CNT[0]_pterm3_bus\,
	pterm4 => \process_1:CNT[0]_pterm4_bus\,
	pterm5 => \process_1:CNT[0]_pterm5_bus\,
	pxor => \process_1:CNT[0]_pxor_bus\,
	pclk => \process_1:CNT[0]_pclk_bus\,
	papre => \process_1:CNT[0]_papre_bus\,
	paclr => \process_1:CNT[0]_paclr_bus\,
	pena => \process_1:CNT[0]_pena_bus\,
	dataout => \process_1:CNT[0]~dataout\);

-- Location: LC6
\Q.state_bit_0\ : max_mcell
-- pragma translate_off
GENERIC MAP (
	operation_mode => "normal",
	output_mode => "reg",
	pexp_mode => "off",
	power_up => "low",
	register_mode => "tff")
-- pragma translate_on
PORT MAP (
	clk => \CLK~dataout\,
	pterm0 => \Q.state_bit_0_pterm0_bus\,
	pterm1 => \Q.state_bit_0_pterm1_bus\,
	pterm2 => \Q.state_bit_0_pterm2_bus\,
	pterm3 => \Q.state_bit_0_pterm3_bus\,
	pterm4 => \Q.state_bit_0_pterm4_bus\,
	pterm5 => \Q.state_bit_0_pterm5_bus\,
	pxor => \Q.state_bit_0_pxor_bus\,
	pclk => \Q.state_bit_0_pclk_bus\,
	papre => \Q.state_bit_0_papre_bus\,
	paclr => \Q.state_bit_0_paclr_bus\,
	pena => \Q.state_bit_0_pena_bus\,
	dataout => \Q.state_bit_0~dataout\);

-- Location: LC11
\Q.state_bit_1\ : max_mcell
-- pragma translate_off
GENERIC MAP (
	operation_mode => "normal",
	output_mode => "reg",
	pexp_mode => "off",
	power_up => "low",
	register_mode => "tff")
-- pragma translate_on
PORT MAP (
	clk => \CLK~dataout\,
	pterm0 => \Q.state_bit_1_pterm0_bus\,
	pterm1 => \Q.state_bit_1_pterm1_bus\,
	pterm2 => \Q.state_bit_1_pterm2_bus\,
	pterm3 => \Q.state_bit_1_pterm3_bus\,
	pterm4 => \Q.state_bit_1_pterm4_bus\,
	pterm5 => \Q.state_bit_1_pterm5_bus\,
	pxor => \Q.state_bit_1_pxor_bus\,
	pclk => \Q.state_bit_1_pclk_bus\,
	papre => \Q.state_bit_1_papre_bus\,
	paclr => \Q.state_bit_1_paclr_bus\,
	pena => \Q.state_bit_1_pena_bus\,
	dataout => \Q.state_bit_1~dataout\);

-- Location: LC37
\Q.S3~3\ : max_mcell
-- pragma translate_off
GENERIC MAP (
	operation_mode => "invert",
	output_mode => "comb",
	pexp_mode => "off")
-- pragma translate_on
PORT MAP (
	pterm0 => \Q.S3~3_pterm0_bus\,
	pterm1 => \Q.S3~3_pterm1_bus\,
	pterm2 => \Q.S3~3_pterm2_bus\,
	pterm3 => \Q.S3~3_pterm3_bus\,
	pterm4 => \Q.S3~3_pterm4_bus\,
	pterm5 => \Q.S3~3_pterm5_bus\,
	pxor => \Q.S3~3_pxor_bus\,
	pclk => \Q.S3~3_pclk_bus\,
	papre => \Q.S3~3_papre_bus\,
	paclr => \Q.S3~3_paclr_bus\,
	pena => \Q.S3~3_pena_bus\,
	dataout => \Q.S3~3_dataout\);

-- Location: LC36
\Q.S2~3\ : max_mcell
-- pragma translate_off
GENERIC MAP (
	operation_mode => "invert",
	output_mode => "comb",
	pexp_mode => "off")
-- pragma translate_on
PORT MAP (
	pterm0 => \Q.S2~3_pterm0_bus\,
	pterm1 => \Q.S2~3_pterm1_bus\,
	pterm2 => \Q.S2~3_pterm2_bus\,
	pterm3 => \Q.S2~3_pterm3_bus\,
	pterm4 => \Q.S2~3_pterm4_bus\,
	pterm5 => \Q.S2~3_pterm5_bus\,
	pxor => \Q.S2~3_pxor_bus\,
	pclk => \Q.S2~3_pclk_bus\,
	papre => \Q.S2~3_papre_bus\,
	paclr => \Q.S2~3_paclr_bus\,
	pena => \Q.S2~3_pena_bus\,
	dataout => \Q.S2~3_dataout\);

-- Location: LC35
\Q.S1~3\ : max_mcell
-- pragma translate_off
GENERIC MAP (
	operation_mode => "invert",
	output_mode => "comb",
	pexp_mode => "off")
-- pragma translate_on
PORT MAP (
	pterm0 => \Q.S1~3_pterm0_bus\,
	pterm1 => \Q.S1~3_pterm1_bus\,
	pterm2 => \Q.S1~3_pterm2_bus\,
	pterm3 => \Q.S1~3_pterm3_bus\,
	pterm4 => \Q.S1~3_pterm4_bus\,
	pterm5 => \Q.S1~3_pterm5_bus\,
	pxor => \Q.S1~3_pxor_bus\,
	pclk => \Q.S1~3_pclk_bus\,
	papre => \Q.S1~3_papre_bus\,
	paclr => \Q.S1~3_paclr_bus\,
	pena => \Q.S1~3_pena_bus\,
	dataout => \Q.S1~3_dataout\);

-- Location: LC33
\Q.S0~3\ : max_mcell
-- pragma translate_off
GENERIC MAP (
	operation_mode => "invert",
	output_mode => "comb",
	pexp_mode => "off")
-- pragma translate_on
PORT MAP (
	pterm0 => \Q.S0~3_pterm0_bus\,
	pterm1 => \Q.S0~3_pterm1_bus\,
	pterm2 => \Q.S0~3_pterm2_bus\,
	pterm3 => \Q.S0~3_pterm3_bus\,
	pterm4 => \Q.S0~3_pterm4_bus\,
	pterm5 => \Q.S0~3_pterm5_bus\,
	pxor => \Q.S0~3_pxor_bus\,
	pclk => \Q.S0~3_pclk_bus\,
	papre => \Q.S0~3_papre_bus\,
	paclr => \Q.S0~3_paclr_bus\,
	pena => \Q.S0~3_pena_bus\,
	dataout => \Q.S0~3_dataout\);

-- Location: LC12
CNT_CLK : max_mcell
-- pragma translate_off
GENERIC MAP (
	operation_mode => "vcc",
	output_mode => "reg",
	pexp_mode => "on",
	power_up => "low",
	register_mode => "tff")
-- pragma translate_on
PORT MAP (
	clk => \CLK~dataout\,
	pterm0 => CNT_CLK_pterm0_bus,
	pterm1 => CNT_CLK_pterm1_bus,
	pterm2 => CNT_CLK_pterm2_bus,
	pterm3 => CNT_CLK_pterm3_bus,
	pterm4 => CNT_CLK_pterm4_bus,
	pterm5 => CNT_CLK_pterm5_bus,
	pxor => CNT_CLK_pxor_bus,
	pclk => CNT_CLK_pclk_bus,
	papre => CNT_CLK_papre_bus,
	paclr => CNT_CLK_paclr_bus,
	pena => CNT_CLK_pena_bus,
	dataout => \CNT_CLK~dataout\);

-- Location: LC2
CLK_NEW : max_mcell
-- pragma translate_off
GENERIC MAP (
	operation_mode => "vcc",
	output_mode => "reg",
	pexp_mode => "on",
	power_up => "low",
	register_mode => "tff")
-- pragma translate_on
PORT MAP (
	clk => \CLK~dataout\,
	pterm0 => CLK_NEW_pterm0_bus,
	pterm1 => CLK_NEW_pterm1_bus,
	pterm2 => CLK_NEW_pterm2_bus,
	pterm3 => CLK_NEW_pterm3_bus,
	pterm4 => CLK_NEW_pterm4_bus,
	pterm5 => CLK_NEW_pterm5_bus,
	pxor => CLK_NEW_pxor_bus,
	pclk => CLK_NEW_pclk_bus,
	papre => CLK_NEW_papre_bus,
	paclr => CLK_NEW_paclr_bus,
	pena => CLK_NEW_pena_bus,
	dataout => \CLK_NEW~dataout\);

-- Location: LC27
\cnt_rtl_0|dffs[13]\ : max_mcell
-- pragma translate_off
GENERIC MAP (
	operation_mode => "normal",
	output_mode => "reg",
	pexp_mode => "off",
	power_up => "low",
	register_mode => "dff")
-- pragma translate_on
PORT MAP (
	pterm0 => \cnt_rtl_0|dffs[13]_pterm0_bus\,
	pterm1 => \cnt_rtl_0|dffs[13]_pterm1_bus\,
	pterm2 => \cnt_rtl_0|dffs[13]_pterm2_bus\,
	pterm3 => \cnt_rtl_0|dffs[13]_pterm3_bus\,
	pterm4 => \cnt_rtl_0|dffs[13]_pterm4_bus\,
	pterm5 => \cnt_rtl_0|dffs[13]_pterm5_bus\,
	pxor => \cnt_rtl_0|dffs[13]_pxor_bus\,
	pclk => \cnt_rtl_0|dffs[13]_pclk_bus\,
	papre => \cnt_rtl_0|dffs[13]_papre_bus\,
	paclr => \cnt_rtl_0|dffs[13]_paclr_bus\,
	pena => \cnt_rtl_0|dffs[13]_pena_bus\,
	dataout => \cnt_rtl_0|dffs\(13));

-- Location: LC31
\cnt_rtl_0|dffs[12]\ : max_mcell
-- pragma translate_off
GENERIC MAP (
	operation_mode => "normal",
	output_mode => "reg",
	pexp_mode => "off",
	power_up => "low",
	register_mode => "dff")
-- pragma translate_on
PORT MAP (
	pterm0 => \cnt_rtl_0|dffs[12]_pterm0_bus\,
	pterm1 => \cnt_rtl_0|dffs[12]_pterm1_bus\,
	pterm2 => \cnt_rtl_0|dffs[12]_pterm2_bus\,
	pterm3 => \cnt_rtl_0|dffs[12]_pterm3_bus\,
	pterm4 => \cnt_rtl_0|dffs[12]_pterm4_bus\,
	pterm5 => \cnt_rtl_0|dffs[12]_pterm5_bus\,
	pxor => \cnt_rtl_0|dffs[12]_pxor_bus\,
	pclk => \cnt_rtl_0|dffs[12]_pclk_bus\,
	papre => \cnt_rtl_0|dffs[12]_papre_bus\,
	paclr => \cnt_rtl_0|dffs[12]_paclr_bus\,
	pena => \cnt_rtl_0|dffs[12]_pena_bus\,
	dataout => \cnt_rtl_0|dffs\(12));

-- Location: LC32
\cnt_rtl_0|dffs[11]\ : max_mcell
-- pragma translate_off
GENERIC MAP (
	operation_mode => "normal",
	output_mode => "reg",
	pexp_mode => "off",
	power_up => "low",
	register_mode => "dff")
-- pragma translate_on
PORT MAP (
	pterm0 => \cnt_rtl_0|dffs[11]_pterm0_bus\,
	pterm1 => \cnt_rtl_0|dffs[11]_pterm1_bus\,
	pterm2 => \cnt_rtl_0|dffs[11]_pterm2_bus\,
	pterm3 => \cnt_rtl_0|dffs[11]_pterm3_bus\,
	pterm4 => \cnt_rtl_0|dffs[11]_pterm4_bus\,
	pterm5 => \cnt_rtl_0|dffs[11]_pterm5_bus\,
	pxor => \cnt_rtl_0|dffs[11]_pxor_bus\,
	pclk => \cnt_rtl_0|dffs[11]_pclk_bus\,
	papre => \cnt_rtl_0|dffs[11]_papre_bus\,
	paclr => \cnt_rtl_0|dffs[11]_paclr_bus\,
	pena => \cnt_rtl_0|dffs[11]_pena_bus\,
	dataout => \cnt_rtl_0|dffs\(11));

-- Location: LC22
\cnt_rtl_0|dffs[10]\ : max_mcell
-- pragma translate_off
GENERIC MAP (
	operation_mode => "normal",
	output_mode => "reg",
	pexp_mode => "off",
	power_up => "low",
	register_mode => "dff")
-- pragma translate_on
PORT MAP (
	pterm0 => \cnt_rtl_0|dffs[10]_pterm0_bus\,
	pterm1 => \cnt_rtl_0|dffs[10]_pterm1_bus\,
	pterm2 => \cnt_rtl_0|dffs[10]_pterm2_bus\,
	pterm3 => \cnt_rtl_0|dffs[10]_pterm3_bus\,
	pterm4 => \cnt_rtl_0|dffs[10]_pterm4_bus\,
	pterm5 => \cnt_rtl_0|dffs[10]_pterm5_bus\,
	pxor => \cnt_rtl_0|dffs[10]_pxor_bus\,
	pclk => \cnt_rtl_0|dffs[10]_pclk_bus\,
	papre => \cnt_rtl_0|dffs[10]_papre_bus\,
	paclr => \cnt_rtl_0|dffs[10]_paclr_bus\,
	pena => \cnt_rtl_0|dffs[10]_pena_bus\,
	dataout => \cnt_rtl_0|dffs\(10));

-- Location: LC24
\cnt_rtl_0|dffs[9]\ : max_mcell
-- pragma translate_off
GENERIC MAP (
	operation_mode => "normal",
	output_mode => "reg",
	pexp_mode => "off",
	power_up => "low",
	register_mode => "dff")
-- pragma translate_on
PORT MAP (
	pterm0 => \cnt_rtl_0|dffs[9]_pterm0_bus\,
	pterm1 => \cnt_rtl_0|dffs[9]_pterm1_bus\,
	pterm2 => \cnt_rtl_0|dffs[9]_pterm2_bus\,
	pterm3 => \cnt_rtl_0|dffs[9]_pterm3_bus\,
	pterm4 => \cnt_rtl_0|dffs[9]_pterm4_bus\,
	pterm5 => \cnt_rtl_0|dffs[9]_pterm5_bus\,
	pxor => \cnt_rtl_0|dffs[9]_pxor_bus\,
	pclk => \cnt_rtl_0|dffs[9]_pclk_bus\,
	papre => \cnt_rtl_0|dffs[9]_papre_bus\,
	paclr => \cnt_rtl_0|dffs[9]_paclr_bus\,
	pena => \cnt_rtl_0|dffs[9]_pena_bus\,
	dataout => \cnt_rtl_0|dffs\(9));

-- Location: LC23
\cnt_rtl_0|dffs[8]\ : max_mcell
-- pragma translate_off
GENERIC MAP (
	operation_mode => "normal",
	output_mode => "reg",
	pexp_mode => "off",
	power_up => "low",
	register_mode => "dff")
-- pragma translate_on
PORT MAP (
	pterm0 => \cnt_rtl_0|dffs[8]_pterm0_bus\,
	pterm1 => \cnt_rtl_0|dffs[8]_pterm1_bus\,
	pterm2 => \cnt_rtl_0|dffs[8]_pterm2_bus\,
	pterm3 => \cnt_rtl_0|dffs[8]_pterm3_bus\,
	pterm4 => \cnt_rtl_0|dffs[8]_pterm4_bus\,
	pterm5 => \cnt_rtl_0|dffs[8]_pterm5_bus\,
	pxor => \cnt_rtl_0|dffs[8]_pxor_bus\,
	pclk => \cnt_rtl_0|dffs[8]_pclk_bus\,
	papre => \cnt_rtl_0|dffs[8]_papre_bus\,
	paclr => \cnt_rtl_0|dffs[8]_paclr_bus\,
	pena => \cnt_rtl_0|dffs[8]_pena_bus\,
	dataout => \cnt_rtl_0|dffs\(8));

-- Location: LC25
\cnt_rtl_0|dffs[7]\ : max_mcell
-- pragma translate_off
GENERIC MAP (
	operation_mode => "normal",
	output_mode => "reg",
	pexp_mode => "off",
	power_up => "low",
	register_mode => "dff")
-- pragma translate_on
PORT MAP (
	pterm0 => \cnt_rtl_0|dffs[7]_pterm0_bus\,
	pterm1 => \cnt_rtl_0|dffs[7]_pterm1_bus\,
	pterm2 => \cnt_rtl_0|dffs[7]_pterm2_bus\,
	pterm3 => \cnt_rtl_0|dffs[7]_pterm3_bus\,
	pterm4 => \cnt_rtl_0|dffs[7]_pterm4_bus\,
	pterm5 => \cnt_rtl_0|dffs[7]_pterm5_bus\,
	pxor => \cnt_rtl_0|dffs[7]_pxor_bus\,
	pclk => \cnt_rtl_0|dffs[7]_pclk_bus\,
	papre => \cnt_rtl_0|dffs[7]_papre_bus\,
	paclr => \cnt_rtl_0|dffs[7]_paclr_bus\,
	pena => \cnt_rtl_0|dffs[7]_pena_bus\,
	dataout => \cnt_rtl_0|dffs\(7));

-- Location: LC29
\cnt_rtl_0|dffs[6]\ : max_mcell
-- pragma translate_off
GENERIC MAP (
	operation_mode => "normal",
	output_mode => "reg",
	pexp_mode => "off",
	power_up => "low",
	register_mode => "dff")
-- pragma translate_on
PORT MAP (
	pterm0 => \cnt_rtl_0|dffs[6]_pterm0_bus\,
	pterm1 => \cnt_rtl_0|dffs[6]_pterm1_bus\,
	pterm2 => \cnt_rtl_0|dffs[6]_pterm2_bus\,
	pterm3 => \cnt_rtl_0|dffs[6]_pterm3_bus\,
	pterm4 => \cnt_rtl_0|dffs[6]_pterm4_bus\,
	pterm5 => \cnt_rtl_0|dffs[6]_pterm5_bus\,
	pxor => \cnt_rtl_0|dffs[6]_pxor_bus\,
	pclk => \cnt_rtl_0|dffs[6]_pclk_bus\,
	papre => \cnt_rtl_0|dffs[6]_papre_bus\,
	paclr => \cnt_rtl_0|dffs[6]_paclr_bus\,
	pena => \cnt_rtl_0|dffs[6]_pena_bus\,
	dataout => \cnt_rtl_0|dffs\(6));

-- Location: LC30
\cnt_rtl_0|dffs[5]\ : max_mcell
-- pragma translate_off
GENERIC MAP (
	operation_mode => "normal",
	output_mode => "reg",
	pexp_mode => "off",
	power_up => "low",
	register_mode => "dff")
-- pragma translate_on
PORT MAP (
	pterm0 => \cnt_rtl_0|dffs[5]_pterm0_bus\,
	pterm1 => \cnt_rtl_0|dffs[5]_pterm1_bus\,
	pterm2 => \cnt_rtl_0|dffs[5]_pterm2_bus\,
	pterm3 => \cnt_rtl_0|dffs[5]_pterm3_bus\,
	pterm4 => \cnt_rtl_0|dffs[5]_pterm4_bus\,
	pterm5 => \cnt_rtl_0|dffs[5]_pterm5_bus\,
	pxor => \cnt_rtl_0|dffs[5]_pxor_bus\,
	pclk => \cnt_rtl_0|dffs[5]_pclk_bus\,
	papre => \cnt_rtl_0|dffs[5]_papre_bus\,
	paclr => \cnt_rtl_0|dffs[5]_paclr_bus\,
	pena => \cnt_rtl_0|dffs[5]_pena_bus\,
	dataout => \cnt_rtl_0|dffs\(5));

-- Location: LC21
\cnt_rtl_0|dffs[4]\ : max_mcell
-- pragma translate_off
GENERIC MAP (
	operation_mode => "normal",
	output_mode => "reg",
	pexp_mode => "off",
	power_up => "low",
	register_mode => "dff")
-- pragma translate_on
PORT MAP (
	pterm0 => \cnt_rtl_0|dffs[4]_pterm0_bus\,
	pterm1 => \cnt_rtl_0|dffs[4]_pterm1_bus\,
	pterm2 => \cnt_rtl_0|dffs[4]_pterm2_bus\,
	pterm3 => \cnt_rtl_0|dffs[4]_pterm3_bus\,
	pterm4 => \cnt_rtl_0|dffs[4]_pterm4_bus\,
	pterm5 => \cnt_rtl_0|dffs[4]_pterm5_bus\,
	pxor => \cnt_rtl_0|dffs[4]_pxor_bus\,
	pclk => \cnt_rtl_0|dffs[4]_pclk_bus\,
	papre => \cnt_rtl_0|dffs[4]_papre_bus\,
	paclr => \cnt_rtl_0|dffs[4]_paclr_bus\,
	pena => \cnt_rtl_0|dffs[4]_pena_bus\,
	dataout => \cnt_rtl_0|dffs\(4));

-- Location: LC19
\cnt_rtl_0|dffs[3]\ : max_mcell
-- pragma translate_off
GENERIC MAP (
	operation_mode => "normal",
	output_mode => "reg",
	pexp_mode => "off",
	power_up => "low",
	register_mode => "dff")
-- pragma translate_on
PORT MAP (
	pterm0 => \cnt_rtl_0|dffs[3]_pterm0_bus\,
	pterm1 => \cnt_rtl_0|dffs[3]_pterm1_bus\,
	pterm2 => \cnt_rtl_0|dffs[3]_pterm2_bus\,
	pterm3 => \cnt_rtl_0|dffs[3]_pterm3_bus\,
	pterm4 => \cnt_rtl_0|dffs[3]_pterm4_bus\,
	pterm5 => \cnt_rtl_0|dffs[3]_pterm5_bus\,
	pxor => \cnt_rtl_0|dffs[3]_pxor_bus\,
	pclk => \cnt_rtl_0|dffs[3]_pclk_bus\,
	papre => \cnt_rtl_0|dffs[3]_papre_bus\,
	paclr => \cnt_rtl_0|dffs[3]_paclr_bus\,
	pena => \cnt_rtl_0|dffs[3]_pena_bus\,
	dataout => \cnt_rtl_0|dffs\(3));

-- Location: LC20
\cnt_rtl_0|dffs[2]\ : max_mcell
-- pragma translate_off
GENERIC MAP (
	operation_mode => "normal",
	output_mode => "reg",
	pexp_mode => "off",
	power_up => "low",
	register_mode => "dff")
-- pragma translate_on
PORT MAP (
	pterm0 => \cnt_rtl_0|dffs[2]_pterm0_bus\,
	pterm1 => \cnt_rtl_0|dffs[2]_pterm1_bus\,
	pterm2 => \cnt_rtl_0|dffs[2]_pterm2_bus\,
	pterm3 => \cnt_rtl_0|dffs[2]_pterm3_bus\,
	pterm4 => \cnt_rtl_0|dffs[2]_pterm4_bus\,
	pterm5 => \cnt_rtl_0|dffs[2]_pterm5_bus\,
	pxor => \cnt_rtl_0|dffs[2]_pxor_bus\,
	pclk => \cnt_rtl_0|dffs[2]_pclk_bus\,
	papre => \cnt_rtl_0|dffs[2]_papre_bus\,
	paclr => \cnt_rtl_0|dffs[2]_paclr_bus\,
	pena => \cnt_rtl_0|dffs[2]_pena_bus\,
	dataout => \cnt_rtl_0|dffs\(2));

-- Location: LC38
\cnt_rtl_0|dffs[0]\ : max_mcell
-- pragma translate_off
GENERIC MAP (
	operation_mode => "normal",
	output_mode => "reg",
	pexp_mode => "off",
	power_up => "low",
	register_mode => "tff")
-- pragma translate_on
PORT MAP (
	pterm0 => \cnt_rtl_0|dffs[0]_pterm0_bus\,
	pterm1 => \cnt_rtl_0|dffs[0]_pterm1_bus\,
	pterm2 => \cnt_rtl_0|dffs[0]_pterm2_bus\,
	pterm3 => \cnt_rtl_0|dffs[0]_pterm3_bus\,
	pterm4 => \cnt_rtl_0|dffs[0]_pterm4_bus\,
	pterm5 => \cnt_rtl_0|dffs[0]_pterm5_bus\,
	pxor => \cnt_rtl_0|dffs[0]_pxor_bus\,
	pclk => \cnt_rtl_0|dffs[0]_pclk_bus\,
	papre => \cnt_rtl_0|dffs[0]_papre_bus\,
	paclr => \cnt_rtl_0|dffs[0]_paclr_bus\,
	pena => \cnt_rtl_0|dffs[0]_pena_bus\,
	dataout => \cnt_rtl_0|dffs\(0));

-- Location: LC34
\cnt_rtl_0|dffs[1]\ : max_mcell
-- pragma translate_off
GENERIC MAP (
	operation_mode => "normal",
	output_mode => "reg",
	pexp_mode => "off",
	power_up => "low",
	register_mode => "tff")
-- pragma translate_on
PORT MAP (
	pterm0 => \cnt_rtl_0|dffs[1]_pterm0_bus\,
	pterm1 => \cnt_rtl_0|dffs[1]_pterm1_bus\,
	pterm2 => \cnt_rtl_0|dffs[1]_pterm2_bus\,
	pterm3 => \cnt_rtl_0|dffs[1]_pterm3_bus\,
	pterm4 => \cnt_rtl_0|dffs[1]_pterm4_bus\,
	pterm5 => \cnt_rtl_0|dffs[1]_pterm5_bus\,
	pxor => \cnt_rtl_0|dffs[1]_pxor_bus\,
	pclk => \cnt_rtl_0|dffs[1]_pclk_bus\,
	papre => \cnt_rtl_0|dffs[1]_papre_bus\,
	paclr => \cnt_rtl_0|dffs[1]_paclr_bus\,
	pena => \cnt_rtl_0|dffs[1]_pena_bus\,
	dataout => \cnt_rtl_0|dffs\(1));

-- Location: LC39
\O[0]\ : max_mcell
-- pragma translate_off
GENERIC MAP (
	operation_mode => "normal",
	output_mode => "reg",
	pexp_mode => "off",
	power_up => "low",
	register_mode => "tff")
-- pragma translate_on
PORT MAP (
	pterm0 => \O[0]_pterm0_bus\,
	pterm1 => \O[0]_pterm1_bus\,
	pterm2 => \O[0]_pterm2_bus\,
	pterm3 => \O[0]_pterm3_bus\,
	pterm4 => \O[0]_pterm4_bus\,
	pterm5 => \O[0]_pterm5_bus\,
	pxor => \O[0]_pxor_bus\,
	pclk => \O[0]_pclk_bus\,
	papre => \O[0]_papre_bus\,
	paclr => \O[0]_paclr_bus\,
	pena => \O[0]_pena_bus\,
	dataout => O(0));

-- Location: LC50
\O[2]\ : max_mcell
-- pragma translate_off
GENERIC MAP (
	operation_mode => "normal",
	output_mode => "reg",
	pexp_mode => "off",
	power_up => "low",
	register_mode => "tff")
-- pragma translate_on
PORT MAP (
	pterm0 => \O[2]_pterm0_bus\,
	pterm1 => \O[2]_pterm1_bus\,
	pterm2 => \O[2]_pterm2_bus\,
	pterm3 => \O[2]_pterm3_bus\,
	pterm4 => \O[2]_pterm4_bus\,
	pterm5 => \O[2]_pterm5_bus\,
	pxor => \O[2]_pxor_bus\,
	pclk => \O[2]_pclk_bus\,
	papre => \O[2]_papre_bus\,
	paclr => \O[2]_paclr_bus\,
	pena => \O[2]_pena_bus\,
	dataout => O(2));

-- Location: LC17
\O[1]~89\ : max_mcell
-- pragma translate_off
GENERIC MAP (
	operation_mode => "vcc",
	output_mode => "comb",
	pexp_mode => "on")
-- pragma translate_on
PORT MAP (
	pterm0 => \O[1]~89_pterm0_bus\,
	pterm1 => \O[1]~89_pterm1_bus\,
	pterm2 => \O[1]~89_pterm2_bus\,
	pterm3 => \O[1]~89_pterm3_bus\,
	pterm4 => \O[1]~89_pterm4_bus\,
	pterm5 => \O[1]~89_pterm5_bus\,
	pxor => \O[1]~89_pxor_bus\,
	pclk => \O[1]~89_pclk_bus\,
	papre => \O[1]~89_papre_bus\,
	paclr => \O[1]~89_paclr_bus\,
	pena => \O[1]~89_pena_bus\,
	pexpout => \O[1]~89_pexpout\);

-- Location: LC52
\O[3]~93\ : max_mcell
-- pragma translate_off
GENERIC MAP (
	operation_mode => "vcc",
	output_mode => "comb",
	pexp_mode => "on")
-- pragma translate_on
PORT MAP (
	pterm0 => \O[3]~93_pterm0_bus\,
	pterm1 => \O[3]~93_pterm1_bus\,
	pterm2 => \O[3]~93_pterm2_bus\,
	pterm3 => \O[3]~93_pterm3_bus\,
	pterm4 => \O[3]~93_pterm4_bus\,
	pterm5 => \O[3]~93_pterm5_bus\,
	pxor => \O[3]~93_pxor_bus\,
	pclk => \O[3]~93_pclk_bus\,
	papre => \O[3]~93_papre_bus\,
	paclr => \O[3]~93_paclr_bus\,
	pena => \O[3]~93_pena_bus\,
	pexpout => \O[3]~93_pexpout\);

-- Location: LC53
\O[3]\ : max_mcell
-- pragma translate_off
GENERIC MAP (
	operation_mode => "normal",
	output_mode => "reg",
	pexp_mode => "off",
	power_up => "low",
	register_mode => "tff")
-- pragma translate_on
PORT MAP (
	pexpin => \O[3]~93_pexpout\,
	pterm0 => \O[3]_pterm0_bus\,
	pterm1 => \O[3]_pterm1_bus\,
	pterm2 => \O[3]_pterm2_bus\,
	pterm3 => \O[3]_pterm3_bus\,
	pterm4 => \O[3]_pterm4_bus\,
	pterm5 => \O[3]_pterm5_bus\,
	pxor => \O[3]_pxor_bus\,
	pclk => \O[3]_pclk_bus\,
	papre => \O[3]_papre_bus\,
	paclr => \O[3]_paclr_bus\,
	pena => \O[3]_pena_bus\,
	dataout => O(3));

-- Location: LC18
\O[1]\ : max_mcell
-- pragma translate_off
GENERIC MAP (
	operation_mode => "normal",
	output_mode => "reg",
	pexp_mode => "off",
	power_up => "low",
	register_mode => "tff")
-- pragma translate_on
PORT MAP (
	pexpin => \O[1]~89_pexpout\,
	pterm0 => \O[1]_pterm0_bus\,
	pterm1 => \O[1]_pterm1_bus\,
	pterm2 => \O[1]_pterm2_bus\,
	pterm3 => \O[1]_pterm3_bus\,
	pterm4 => \O[1]_pterm4_bus\,
	pterm5 => \O[1]_pterm5_bus\,
	pxor => \O[1]_pxor_bus\,
	pclk => \O[1]_pclk_bus\,
	papre => \O[1]_papre_bus\,
	paclr => \O[1]_paclr_bus\,
	pena => \O[1]_pena_bus\,
	dataout => O(1));

-- Location: LC42
\LessThan0~4\ : max_mcell
-- pragma translate_off
GENERIC MAP (
	operation_mode => "normal",
	output_mode => "comb",
	pexp_mode => "off")
-- pragma translate_on
PORT MAP (
	pterm0 => \LessThan0~4_pterm0_bus\,
	pterm1 => \LessThan0~4_pterm1_bus\,
	pterm2 => \LessThan0~4_pterm2_bus\,
	pterm3 => \LessThan0~4_pterm3_bus\,
	pterm4 => \LessThan0~4_pterm4_bus\,
	pterm5 => \LessThan0~4_pterm5_bus\,
	pxor => \LessThan0~4_pxor_bus\,
	pclk => \LessThan0~4_pclk_bus\,
	papre => \LessThan0~4_papre_bus\,
	paclr => \LessThan0~4_paclr_bus\,
	pena => \LessThan0~4_pena_bus\,
	dataout => \LessThan0~4_dataout\);

-- Location: SEXP56
\C[0]~3\ : max_sexp
PORT MAP (
	datain => \C[0]~3_datain_bus\,
	dataout => \C[0]~3_dataout\);

-- Location: LC48
\Add3~9\ : max_mcell
-- pragma translate_off
GENERIC MAP (
	operation_mode => "xor",
	output_mode => "comb",
	pexp_mode => "off")
-- pragma translate_on
PORT MAP (
	pterm0 => \Add3~9_pterm0_bus\,
	pterm1 => \Add3~9_pterm1_bus\,
	pterm2 => \Add3~9_pterm2_bus\,
	pterm3 => \Add3~9_pterm3_bus\,
	pterm4 => \Add3~9_pterm4_bus\,
	pterm5 => \Add3~9_pterm5_bus\,
	pxor => \Add3~9_pxor_bus\,
	pclk => \Add3~9_pclk_bus\,
	papre => \Add3~9_papre_bus\,
	paclr => \Add3~9_paclr_bus\,
	pena => \Add3~9_pena_bus\,
	dataout => \Add3~9_dataout\);

-- Location: SEXP17
\C[0]~1sexpand0\ : max_sexp
PORT MAP (
	datain => \C[0]~1sexpand0_datain_bus\,
	dataout => \C[0]~1sexpand0_dataout\);

-- Location: LC44
\Add3~13\ : max_mcell
-- pragma translate_off
GENERIC MAP (
	operation_mode => "xor",
	output_mode => "comb",
	pexp_mode => "off")
-- pragma translate_on
PORT MAP (
	pterm0 => \Add3~13_pterm0_bus\,
	pterm1 => \Add3~13_pterm1_bus\,
	pterm2 => \Add3~13_pterm2_bus\,
	pterm3 => \Add3~13_pterm3_bus\,
	pterm4 => \Add3~13_pterm4_bus\,
	pterm5 => \Add3~13_pterm5_bus\,
	pxor => \Add3~13_pxor_bus\,
	pclk => \Add3~13_pclk_bus\,
	papre => \Add3~13_papre_bus\,
	paclr => \Add3~13_paclr_bus\,
	pena => \Add3~13_pena_bus\,
	dataout => \Add3~13_dataout\);

-- Location: SEXP33
\C[0]~2\ : max_sexp
PORT MAP (
	datain => \C[0]~2_datain_bus\,
	dataout => \C[0]~2_dataout\);

-- Location: SEXP34
\process_0~9\ : max_sexp
PORT MAP (
	datain => \process_0~9_datain_bus\,
	dataout => \process_0~9_dataout\);

-- Location: SEXP52
\process_0~13\ : max_sexp
PORT MAP (
	datain => \process_0~13_datain_bus\,
	dataout => \process_0~13_dataout\);

-- Location: SEXP54
\Equal0~5\ : max_sexp
PORT MAP (
	datain => \Equal0~5_datain_bus\,
	dataout => \Equal0~5_dataout\);

-- Location: LC59
\O_rtl_1|dffs[3]\ : max_mcell
-- pragma translate_off
GENERIC MAP (
	operation_mode => "normal",
	output_mode => "reg",
	pexp_mode => "off",
	power_up => "low",
	register_mode => "tff")
-- pragma translate_on
PORT MAP (
	pterm0 => \O_rtl_1|dffs[3]_pterm0_bus\,
	pterm1 => \O_rtl_1|dffs[3]_pterm1_bus\,
	pterm2 => \O_rtl_1|dffs[3]_pterm2_bus\,
	pterm3 => \O_rtl_1|dffs[3]_pterm3_bus\,
	pterm4 => \O_rtl_1|dffs[3]_pterm4_bus\,
	pterm5 => \O_rtl_1|dffs[3]_pterm5_bus\,
	pxor => \O_rtl_1|dffs[3]_pxor_bus\,
	pclk => \O_rtl_1|dffs[3]_pclk_bus\,
	papre => \O_rtl_1|dffs[3]_papre_bus\,
	paclr => \O_rtl_1|dffs[3]_paclr_bus\,
	pena => \O_rtl_1|dffs[3]_pena_bus\,
	dataout => \O_rtl_1|dffs\(3));

-- Location: LC55
\O_rtl_0|dffs[0]\ : max_mcell
-- pragma translate_off
GENERIC MAP (
	operation_mode => "normal",
	output_mode => "reg",
	pexp_mode => "off",
	power_up => "low",
	register_mode => "dff")
-- pragma translate_on
PORT MAP (
	pterm0 => \O_rtl_0|dffs[0]_pterm0_bus\,
	pterm1 => \O_rtl_0|dffs[0]_pterm1_bus\,
	pterm2 => \O_rtl_0|dffs[0]_pterm2_bus\,
	pterm3 => \O_rtl_0|dffs[0]_pterm3_bus\,
	pterm4 => \O_rtl_0|dffs[0]_pterm4_bus\,
	pterm5 => \O_rtl_0|dffs[0]_pterm5_bus\,
	pxor => \O_rtl_0|dffs[0]_pxor_bus\,
	pclk => \O_rtl_0|dffs[0]_pclk_bus\,
	papre => \O_rtl_0|dffs[0]_papre_bus\,
	paclr => \O_rtl_0|dffs[0]_paclr_bus\,
	pena => \O_rtl_0|dffs[0]_pena_bus\,
	dataout => \O_rtl_0|dffs\(0));

-- Location: LC56
\O_rtl_0|dffs[1]\ : max_mcell
-- pragma translate_off
GENERIC MAP (
	operation_mode => "normal",
	output_mode => "reg",
	pexp_mode => "off",
	power_up => "low",
	register_mode => "tff")
-- pragma translate_on
PORT MAP (
	pterm0 => \O_rtl_0|dffs[1]_pterm0_bus\,
	pterm1 => \O_rtl_0|dffs[1]_pterm1_bus\,
	pterm2 => \O_rtl_0|dffs[1]_pterm2_bus\,
	pterm3 => \O_rtl_0|dffs[1]_pterm3_bus\,
	pterm4 => \O_rtl_0|dffs[1]_pterm4_bus\,
	pterm5 => \O_rtl_0|dffs[1]_pterm5_bus\,
	pxor => \O_rtl_0|dffs[1]_pxor_bus\,
	pclk => \O_rtl_0|dffs[1]_pclk_bus\,
	papre => \O_rtl_0|dffs[1]_papre_bus\,
	paclr => \O_rtl_0|dffs[1]_paclr_bus\,
	pena => \O_rtl_0|dffs[1]_pena_bus\,
	dataout => \O_rtl_0|dffs\(1));

-- Location: LC58
\O_rtl_0|dffs[2]\ : max_mcell
-- pragma translate_off
GENERIC MAP (
	operation_mode => "normal",
	output_mode => "reg",
	pexp_mode => "off",
	power_up => "low",
	register_mode => "tff")
-- pragma translate_on
PORT MAP (
	pterm0 => \O_rtl_0|dffs[2]_pterm0_bus\,
	pterm1 => \O_rtl_0|dffs[2]_pterm1_bus\,
	pterm2 => \O_rtl_0|dffs[2]_pterm2_bus\,
	pterm3 => \O_rtl_0|dffs[2]_pterm3_bus\,
	pterm4 => \O_rtl_0|dffs[2]_pterm4_bus\,
	pterm5 => \O_rtl_0|dffs[2]_pterm5_bus\,
	pxor => \O_rtl_0|dffs[2]_pxor_bus\,
	pclk => \O_rtl_0|dffs[2]_pclk_bus\,
	papre => \O_rtl_0|dffs[2]_papre_bus\,
	paclr => \O_rtl_0|dffs[2]_paclr_bus\,
	pena => \O_rtl_0|dffs[2]_pena_bus\,
	dataout => \O_rtl_0|dffs\(2));

-- Location: SEXP55
\process_0~14\ : max_sexp
PORT MAP (
	datain => \process_0~14_datain_bus\,
	dataout => \process_0~14_dataout\);

-- Location: LC60
\O_rtl_1|dffs[0]\ : max_mcell
-- pragma translate_off
GENERIC MAP (
	operation_mode => "normal",
	output_mode => "reg",
	pexp_mode => "off",
	power_up => "low",
	register_mode => "dff")
-- pragma translate_on
PORT MAP (
	pterm0 => \O_rtl_1|dffs[0]_pterm0_bus\,
	pterm1 => \O_rtl_1|dffs[0]_pterm1_bus\,
	pterm2 => \O_rtl_1|dffs[0]_pterm2_bus\,
	pterm3 => \O_rtl_1|dffs[0]_pterm3_bus\,
	pterm4 => \O_rtl_1|dffs[0]_pterm4_bus\,
	pterm5 => \O_rtl_1|dffs[0]_pterm5_bus\,
	pxor => \O_rtl_1|dffs[0]_pxor_bus\,
	pclk => \O_rtl_1|dffs[0]_pclk_bus\,
	papre => \O_rtl_1|dffs[0]_papre_bus\,
	paclr => \O_rtl_1|dffs[0]_paclr_bus\,
	pena => \O_rtl_1|dffs[0]_pena_bus\,
	dataout => \O_rtl_1|dffs\(0));

-- Location: LC64
\O_rtl_1|dffs[1]\ : max_mcell
-- pragma translate_off
GENERIC MAP (
	operation_mode => "normal",
	output_mode => "reg",
	pexp_mode => "off",
	power_up => "low",
	register_mode => "dff")
-- pragma translate_on
PORT MAP (
	pterm0 => \O_rtl_1|dffs[1]_pterm0_bus\,
	pterm1 => \O_rtl_1|dffs[1]_pterm1_bus\,
	pterm2 => \O_rtl_1|dffs[1]_pterm2_bus\,
	pterm3 => \O_rtl_1|dffs[1]_pterm3_bus\,
	pterm4 => \O_rtl_1|dffs[1]_pterm4_bus\,
	pterm5 => \O_rtl_1|dffs[1]_pterm5_bus\,
	pxor => \O_rtl_1|dffs[1]_pxor_bus\,
	pclk => \O_rtl_1|dffs[1]_pclk_bus\,
	papre => \O_rtl_1|dffs[1]_papre_bus\,
	paclr => \O_rtl_1|dffs[1]_paclr_bus\,
	pena => \O_rtl_1|dffs[1]_pena_bus\,
	dataout => \O_rtl_1|dffs\(1));

-- Location: LC54
\O_rtl_1|dffs[2]\ : max_mcell
-- pragma translate_off
GENERIC MAP (
	operation_mode => "normal",
	output_mode => "reg",
	pexp_mode => "off",
	power_up => "low",
	register_mode => "tff")
-- pragma translate_on
PORT MAP (
	pterm0 => \O_rtl_1|dffs[2]_pterm0_bus\,
	pterm1 => \O_rtl_1|dffs[2]_pterm1_bus\,
	pterm2 => \O_rtl_1|dffs[2]_pterm2_bus\,
	pterm3 => \O_rtl_1|dffs[2]_pterm3_bus\,
	pterm4 => \O_rtl_1|dffs[2]_pterm4_bus\,
	pterm5 => \O_rtl_1|dffs[2]_pterm5_bus\,
	pxor => \O_rtl_1|dffs[2]_pxor_bus\,
	pclk => \O_rtl_1|dffs[2]_pclk_bus\,
	papre => \O_rtl_1|dffs[2]_papre_bus\,
	paclr => \O_rtl_1|dffs[2]_paclr_bus\,
	pena => \O_rtl_1|dffs[2]_pena_bus\,
	dataout => \O_rtl_1|dffs\(2));

-- Location: SEXP35
\process_0~10\ : max_sexp
PORT MAP (
	datain => \process_0~10_datain_bus\,
	dataout => \process_0~10_dataout\);

-- Location: SEXP36
\Equal0~4\ : max_sexp
PORT MAP (
	datain => \Equal0~4_datain_bus\,
	dataout => \Equal0~4_dataout\);

-- Location: SEXP37
\process_0~11\ : max_sexp
PORT MAP (
	datain => \process_0~11_datain_bus\,
	dataout => \process_0~11_dataout\);

-- Location: LC47
\O[7]\ : max_mcell
-- pragma translate_off
GENERIC MAP (
	operation_mode => "normal",
	output_mode => "reg",
	pexp_mode => "off",
	power_up => "low",
	register_mode => "dff")
-- pragma translate_on
PORT MAP (
	pterm0 => \O[7]_pterm0_bus\,
	pterm1 => \O[7]_pterm1_bus\,
	pterm2 => \O[7]_pterm2_bus\,
	pterm3 => \O[7]_pterm3_bus\,
	pterm4 => \O[7]_pterm4_bus\,
	pterm5 => \O[7]_pterm5_bus\,
	pxor => \O[7]_pxor_bus\,
	pclk => \O[7]_pclk_bus\,
	papre => \O[7]_papre_bus\,
	paclr => \O[7]_paclr_bus\,
	pena => \O[7]_pena_bus\,
	dataout => O(7));

-- Location: SEXP19
\process_0~4sexp\ : max_sexp
PORT MAP (
	datain => \process_0~4sexp_datain_bus\,
	dataout => \process_0~4sexp_dataout\);

-- Location: SEXP20
\process_0~6sexp\ : max_sexp
PORT MAP (
	datain => \process_0~6sexp_datain_bus\,
	dataout => \process_0~6sexp_dataout\);

-- Location: SEXP21
\Equal0~3sexp\ : max_sexp
PORT MAP (
	datain => \Equal0~3sexp_datain_bus\,
	dataout => \Equal0~3sexp_dataout\);

-- Location: SEXP22
\process_0~8sexp\ : max_sexp
PORT MAP (
	datain => \process_0~8sexp_datain_bus\,
	dataout => \process_0~8sexp_dataout\);

-- Location: LC28
\O[6]\ : max_mcell
-- pragma translate_off
GENERIC MAP (
	operation_mode => "normal",
	output_mode => "reg",
	pexp_mode => "off",
	power_up => "low",
	register_mode => "dff")
-- pragma translate_on
PORT MAP (
	pterm0 => \O[6]_pterm0_bus\,
	pterm1 => \O[6]_pterm1_bus\,
	pterm2 => \O[6]_pterm2_bus\,
	pterm3 => \O[6]_pterm3_bus\,
	pterm4 => \O[6]_pterm4_bus\,
	pterm5 => \O[6]_pterm5_bus\,
	pxor => \O[6]_pxor_bus\,
	pclk => \O[6]_pclk_bus\,
	papre => \O[6]_papre_bus\,
	paclr => \O[6]_paclr_bus\,
	pena => \O[6]_pena_bus\,
	dataout => O(6));

-- Location: SEXP51
\process_0~12\ : max_sexp
PORT MAP (
	datain => \process_0~12_datain_bus\,
	dataout => \process_0~12_dataout\);

-- Location: LC62
\O[4]\ : max_mcell
-- pragma translate_off
GENERIC MAP (
	operation_mode => "normal",
	output_mode => "reg",
	pexp_mode => "off",
	power_up => "low",
	register_mode => "dff")
-- pragma translate_on
PORT MAP (
	pterm0 => \O[4]_pterm0_bus\,
	pterm1 => \O[4]_pterm1_bus\,
	pterm2 => \O[4]_pterm2_bus\,
	pterm3 => \O[4]_pterm3_bus\,
	pterm4 => \O[4]_pterm4_bus\,
	pterm5 => \O[4]_pterm5_bus\,
	pxor => \O[4]_pxor_bus\,
	pclk => \O[4]_pclk_bus\,
	papre => \O[4]_papre_bus\,
	paclr => \O[4]_paclr_bus\,
	pena => \O[4]_pena_bus\,
	dataout => O(4));

-- Location: LC43
\Add3~5\ : max_mcell
-- pragma translate_off
GENERIC MAP (
	operation_mode => "xor",
	output_mode => "comb",
	pexp_mode => "off")
-- pragma translate_on
PORT MAP (
	pterm0 => \Add3~5_pterm0_bus\,
	pterm1 => \Add3~5_pterm1_bus\,
	pterm2 => \Add3~5_pterm2_bus\,
	pterm3 => \Add3~5_pterm3_bus\,
	pterm4 => \Add3~5_pterm4_bus\,
	pterm5 => \Add3~5_pterm5_bus\,
	pxor => \Add3~5_pxor_bus\,
	pclk => \Add3~5_pclk_bus\,
	papre => \Add3~5_papre_bus\,
	paclr => \Add3~5_paclr_bus\,
	pena => \Add3~5_pena_bus\,
	dataout => \Add3~5_dataout\);

-- Location: LC26
\O[5]\ : max_mcell
-- pragma translate_off
GENERIC MAP (
	operation_mode => "normal",
	output_mode => "reg",
	pexp_mode => "off",
	power_up => "low",
	register_mode => "dff")
-- pragma translate_on
PORT MAP (
	pterm0 => \O[5]_pterm0_bus\,
	pterm1 => \O[5]_pterm1_bus\,
	pterm2 => \O[5]_pterm2_bus\,
	pterm3 => \O[5]_pterm3_bus\,
	pterm4 => \O[5]_pterm4_bus\,
	pterm5 => \O[5]_pterm5_bus\,
	pxor => \O[5]_pxor_bus\,
	pclk => \O[5]_pclk_bus\,
	papre => \O[5]_papre_bus\,
	paclr => \O[5]_paclr_bus\,
	pena => \O[5]_pena_bus\,
	dataout => O(5));

-- Location: LC46
\Selector2~9\ : max_mcell
-- pragma translate_off
GENERIC MAP (
	operation_mode => "normal",
	output_mode => "comb",
	pexp_mode => "off")
-- pragma translate_on
PORT MAP (
	pterm0 => \Selector2~9_pterm0_bus\,
	pterm1 => \Selector2~9_pterm1_bus\,
	pterm2 => \Selector2~9_pterm2_bus\,
	pterm3 => \Selector2~9_pterm3_bus\,
	pterm4 => \Selector2~9_pterm4_bus\,
	pterm5 => \Selector2~9_pterm5_bus\,
	pxor => \Selector2~9_pxor_bus\,
	pclk => \Selector2~9_pclk_bus\,
	papre => \Selector2~9_papre_bus\,
	paclr => \Selector2~9_paclr_bus\,
	pena => \Selector2~9_pena_bus\,
	dataout => \Selector2~9_dataout\);

-- Location: LC41
\Selector1~9\ : max_mcell
-- pragma translate_off
GENERIC MAP (
	operation_mode => "normal",
	output_mode => "comb",
	pexp_mode => "off")
-- pragma translate_on
PORT MAP (
	pterm0 => \Selector1~9_pterm0_bus\,
	pterm1 => \Selector1~9_pterm1_bus\,
	pterm2 => \Selector1~9_pterm2_bus\,
	pterm3 => \Selector1~9_pterm3_bus\,
	pterm4 => \Selector1~9_pterm4_bus\,
	pterm5 => \Selector1~9_pterm5_bus\,
	pxor => \Selector1~9_pxor_bus\,
	pclk => \Selector1~9_pclk_bus\,
	papre => \Selector1~9_papre_bus\,
	paclr => \Selector1~9_paclr_bus\,
	pena => \Selector1~9_pena_bus\,
	dataout => \Selector1~9_dataout\);

-- Location: LC61
\O_rtl_0|dffs[3]\ : max_mcell
-- pragma translate_off
GENERIC MAP (
	operation_mode => "normal",
	output_mode => "reg",
	pexp_mode => "off",
	power_up => "low",
	register_mode => "tff")
-- pragma translate_on
PORT MAP (
	pterm0 => \O_rtl_0|dffs[3]_pterm0_bus\,
	pterm1 => \O_rtl_0|dffs[3]_pterm1_bus\,
	pterm2 => \O_rtl_0|dffs[3]_pterm2_bus\,
	pterm3 => \O_rtl_0|dffs[3]_pterm3_bus\,
	pterm4 => \O_rtl_0|dffs[3]_pterm4_bus\,
	pterm5 => \O_rtl_0|dffs[3]_pterm5_bus\,
	pxor => \O_rtl_0|dffs[3]_pxor_bus\,
	pclk => \O_rtl_0|dffs[3]_pclk_bus\,
	papre => \O_rtl_0|dffs[3]_papre_bus\,
	paclr => \O_rtl_0|dffs[3]_paclr_bus\,
	pena => \O_rtl_0|dffs[3]_pena_bus\,
	dataout => \O_rtl_0|dffs\(3));

-- Location: LC40
\Selector0~9\ : max_mcell
-- pragma translate_off
GENERIC MAP (
	operation_mode => "normal",
	output_mode => "comb",
	pexp_mode => "off")
-- pragma translate_on
PORT MAP (
	pterm0 => \Selector0~9_pterm0_bus\,
	pterm1 => \Selector0~9_pterm1_bus\,
	pterm2 => \Selector0~9_pterm2_bus\,
	pterm3 => \Selector0~9_pterm3_bus\,
	pterm4 => \Selector0~9_pterm4_bus\,
	pterm5 => \Selector0~9_pterm5_bus\,
	pxor => \Selector0~9_pxor_bus\,
	pclk => \Selector0~9_pclk_bus\,
	papre => \Selector0~9_papre_bus\,
	paclr => \Selector0~9_paclr_bus\,
	pena => \Selector0~9_pena_bus\,
	dataout => \Selector0~9_dataout\);

-- Location: SEXP49
\OVERFLOW~3\ : max_sexp
PORT MAP (
	datain => \OVERFLOW~3_datain_bus\,
	dataout => \OVERFLOW~3_dataout\);

-- Location: SEXP50
\OVERFLOW~4\ : max_sexp
PORT MAP (
	datain => \OVERFLOW~4_datain_bus\,
	dataout => \OVERFLOW~4_dataout\);

-- Location: LC51
\OVERFLOW~reg0\ : max_mcell
-- pragma translate_off
GENERIC MAP (
	operation_mode => "normal",
	output_mode => "reg",
	pexp_mode => "off",
	power_up => "low",
	register_mode => "dff")
-- pragma translate_on
PORT MAP (
	pterm0 => \OVERFLOW~reg0_pterm0_bus\,
	pterm1 => \OVERFLOW~reg0_pterm1_bus\,
	pterm2 => \OVERFLOW~reg0_pterm2_bus\,
	pterm3 => \OVERFLOW~reg0_pterm3_bus\,
	pterm4 => \OVERFLOW~reg0_pterm4_bus\,
	pterm5 => \OVERFLOW~reg0_pterm5_bus\,
	pxor => \OVERFLOW~reg0_pxor_bus\,
	pclk => \OVERFLOW~reg0_pclk_bus\,
	papre => \OVERFLOW~reg0_papre_bus\,
	paclr => \OVERFLOW~reg0_paclr_bus\,
	pena => \OVERFLOW~reg0_pena_bus\,
	dataout => \OVERFLOW~reg0_dataout\);

-- Location: LC49
\Selector3~9\ : max_mcell
-- pragma translate_off
GENERIC MAP (
	operation_mode => "normal",
	output_mode => "comb",
	pexp_mode => "off")
-- pragma translate_on
PORT MAP (
	pterm0 => \Selector3~9_pterm0_bus\,
	pterm1 => \Selector3~9_pterm1_bus\,
	pterm2 => \Selector3~9_pterm2_bus\,
	pterm3 => \Selector3~9_pterm3_bus\,
	pterm4 => \Selector3~9_pterm4_bus\,
	pterm5 => \Selector3~9_pterm5_bus\,
	pxor => \Selector3~9_pxor_bus\,
	pclk => \Selector3~9_pclk_bus\,
	papre => \Selector3~9_papre_bus\,
	paclr => \Selector3~9_paclr_bus\,
	pena => \Selector3~9_pena_bus\,
	dataout => \Selector3~9_dataout\);

-- Location: PIN_39
\DP~I\ : max_io
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	operation_mode => "output",
	weak_pull_up => "false")
-- pragma translate_on
PORT MAP (
	datain => \~VCC~0~dataout\,
	oe => VCC,
	padio => ww_DP);

-- Location: PIN_27
\SEL[0]~I\ : max_io
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	operation_mode => "bidir",
	weak_pull_up => "false")
-- pragma translate_on
PORT MAP (
	datain => \Q.S3~3_dataout\,
	oe => VCC,
	padio => SEL(0));

-- Location: PIN_26
\SEL[1]~I\ : max_io
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	operation_mode => "bidir",
	weak_pull_up => "false")
-- pragma translate_on
PORT MAP (
	datain => \Q.S2~3_dataout\,
	oe => VCC,
	padio => SEL(1));

-- Location: PIN_25
\SEL[2]~I\ : max_io
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	operation_mode => "bidir",
	weak_pull_up => "false")
-- pragma translate_on
PORT MAP (
	datain => \Q.S1~3_dataout\,
	oe => VCC,
	padio => SEL(2));

-- Location: PIN_24
\SEL[3]~I\ : max_io
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	operation_mode => "bidir",
	weak_pull_up => "false")
-- pragma translate_on
PORT MAP (
	datain => \Q.S0~3_dataout\,
	oe => VCC,
	padio => SEL(3));

-- Location: PIN_31
\OP[1]~I\ : max_io
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	operation_mode => "output",
	weak_pull_up => "false")
-- pragma translate_on
PORT MAP (
	datain => \Selector2~9_dataout\,
	oe => VCC,
	padio => ww_OP(1));

-- Location: PIN_29
\OP[2]~I\ : max_io
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	operation_mode => "output",
	weak_pull_up => "false")
-- pragma translate_on
PORT MAP (
	datain => \Selector1~9_dataout\,
	oe => VCC,
	padio => ww_OP(2));

-- Location: PIN_28
\OP[3]~I\ : max_io
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	operation_mode => "output",
	weak_pull_up => "false")
-- pragma translate_on
PORT MAP (
	datain => \Selector0~9_dataout\,
	oe => VCC,
	padio => ww_OP(3));

-- Location: PIN_34
\OVERFLOW~I\ : max_io
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	operation_mode => "output",
	weak_pull_up => "false")
-- pragma translate_on
PORT MAP (
	datain => \OVERFLOW~reg0_dataout\,
	oe => VCC,
	padio => ww_OVERFLOW);

-- Location: PIN_33
\OP[0]~I\ : max_io
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	operation_mode => "output",
	weak_pull_up => "false")
-- pragma translate_on
PORT MAP (
	datain => \Selector3~9_dataout\,
	oe => VCC,
	padio => ww_OP(0));
END structure;


