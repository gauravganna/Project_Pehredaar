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

-- DATE "04/17/2018 22:17:24"

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

ENTITY 	Display_On_LCD IS
    PORT (
	CLK : IN std_logic;
	RSTN : IN std_logic;
	D : OUT std_logic_vector(7 DOWNTO 0);
	RS : OUT std_logic;
	RW : OUT std_logic;
	EN : OUT std_logic
	);
END Display_On_LCD;

-- Design Ports Information
-- CLK	=>  Location: PIN_43
-- RSTN	=>  Location: PIN_4
-- RW	=>  Location: PIN_37
-- D[3]	=>  Location: PIN_28
-- D[6]	=>  Location: PIN_25
-- D[7]	=>  Location: PIN_24
-- EN	=>  Location: PIN_39
-- D[5]	=>  Location: PIN_26
-- RS	=>  Location: PIN_34
-- D[4]	=>  Location: PIN_27
-- D[2]	=>  Location: PIN_29
-- D[0]	=>  Location: PIN_33
-- D[1]	=>  Location: PIN_31


ARCHITECTURE structure OF Display_On_LCD IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL ww_CLK : std_logic;
SIGNAL ww_RSTN : std_logic;
SIGNAL ww_D : std_logic_vector(7 DOWNTO 0);
SIGNAL ww_RS : std_logic;
SIGNAL ww_RW : std_logic;
SIGNAL ww_EN : std_logic;
SIGNAL \CNT_CLK[0]_pterm0_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \CNT_CLK[0]_pterm1_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \CNT_CLK[0]_pterm2_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \CNT_CLK[0]_pterm3_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \CNT_CLK[0]_pterm4_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \CNT_CLK[0]_pterm5_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \CNT_CLK[0]_pxor_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \CNT_CLK[0]_pclk_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \CNT_CLK[0]_pena_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \CNT_CLK[0]_paclr_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \CNT_CLK[0]_papre_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \CNT_CLK[1]_pterm0_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \CNT_CLK[1]_pterm1_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \CNT_CLK[1]_pterm2_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \CNT_CLK[1]_pterm3_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \CNT_CLK[1]_pterm4_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \CNT_CLK[1]_pterm5_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \CNT_CLK[1]_pxor_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \CNT_CLK[1]_pclk_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \CNT_CLK[1]_pena_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \CNT_CLK[1]_paclr_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \CNT_CLK[1]_papre_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \CNT_CLK[2]_pterm0_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \CNT_CLK[2]_pterm1_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \CNT_CLK[2]_pterm2_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \CNT_CLK[2]_pterm3_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \CNT_CLK[2]_pterm4_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \CNT_CLK[2]_pterm5_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \CNT_CLK[2]_pxor_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \CNT_CLK[2]_pclk_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \CNT_CLK[2]_pena_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \CNT_CLK[2]_paclr_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \CNT_CLK[2]_papre_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \CNT_CLK[3]_pterm0_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \CNT_CLK[3]_pterm1_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \CNT_CLK[3]_pterm2_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \CNT_CLK[3]_pterm3_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \CNT_CLK[3]_pterm4_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \CNT_CLK[3]_pterm5_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \CNT_CLK[3]_pxor_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \CNT_CLK[3]_pclk_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \CNT_CLK[3]_pena_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \CNT_CLK[3]_paclr_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \CNT_CLK[3]_papre_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \CNT_CLK[4]_pterm0_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \CNT_CLK[4]_pterm1_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \CNT_CLK[4]_pterm2_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \CNT_CLK[4]_pterm3_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \CNT_CLK[4]_pterm4_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \CNT_CLK[4]_pterm5_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \CNT_CLK[4]_pxor_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \CNT_CLK[4]_pclk_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \CNT_CLK[4]_pena_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \CNT_CLK[4]_paclr_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \CNT_CLK[4]_papre_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \CNT_CLK[5]_pterm0_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \CNT_CLK[5]_pterm1_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \CNT_CLK[5]_pterm2_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \CNT_CLK[5]_pterm3_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \CNT_CLK[5]_pterm4_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \CNT_CLK[5]_pterm5_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \CNT_CLK[5]_pxor_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \CNT_CLK[5]_pclk_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \CNT_CLK[5]_pena_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \CNT_CLK[5]_paclr_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \CNT_CLK[5]_papre_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \CNT_CLK[6]_pterm0_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \CNT_CLK[6]_pterm1_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \CNT_CLK[6]_pterm2_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \CNT_CLK[6]_pterm3_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \CNT_CLK[6]_pterm4_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \CNT_CLK[6]_pterm5_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \CNT_CLK[6]_pxor_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \CNT_CLK[6]_pclk_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \CNT_CLK[6]_pena_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \CNT_CLK[6]_paclr_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \CNT_CLK[6]_papre_bus\ : std_logic_vector(51 DOWNTO 0);
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
SIGNAL \CNT_CMD[0]_pterm0_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \CNT_CMD[0]_pterm1_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \CNT_CMD[0]_pterm2_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \CNT_CMD[0]_pterm3_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \CNT_CMD[0]_pterm4_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \CNT_CMD[0]_pterm5_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \CNT_CMD[0]_pxor_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \CNT_CMD[0]_pclk_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \CNT_CMD[0]_pena_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \CNT_CMD[0]_paclr_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \CNT_CMD[0]_papre_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \CNT_ATTENDANCE[0]_pterm0_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \CNT_ATTENDANCE[0]_pterm1_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \CNT_ATTENDANCE[0]_pterm2_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \CNT_ATTENDANCE[0]_pterm3_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \CNT_ATTENDANCE[0]_pterm4_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \CNT_ATTENDANCE[0]_pterm5_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \CNT_ATTENDANCE[0]_pxor_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \CNT_ATTENDANCE[0]_pclk_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \CNT_ATTENDANCE[0]_pena_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \CNT_ATTENDANCE[0]_paclr_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \CNT_ATTENDANCE[0]_papre_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \CNT_ROLLNO_rtl_0|dffs[2]_pterm0_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \CNT_ROLLNO_rtl_0|dffs[2]_pterm1_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \CNT_ROLLNO_rtl_0|dffs[2]_pterm2_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \CNT_ROLLNO_rtl_0|dffs[2]_pterm3_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \CNT_ROLLNO_rtl_0|dffs[2]_pterm4_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \CNT_ROLLNO_rtl_0|dffs[2]_pterm5_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \CNT_ROLLNO_rtl_0|dffs[2]_pxor_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \CNT_ROLLNO_rtl_0|dffs[2]_pclk_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \CNT_ROLLNO_rtl_0|dffs[2]_pena_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \CNT_ROLLNO_rtl_0|dffs[2]_paclr_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \CNT_ROLLNO_rtl_0|dffs[2]_papre_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \CNT_CMD[1]_pterm0_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \CNT_CMD[1]_pterm1_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \CNT_CMD[1]_pterm2_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \CNT_CMD[1]_pterm3_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \CNT_CMD[1]_pterm4_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \CNT_CMD[1]_pterm5_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \CNT_CMD[1]_pxor_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \CNT_CMD[1]_pclk_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \CNT_CMD[1]_pena_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \CNT_CMD[1]_paclr_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \CNT_CMD[1]_papre_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \CNT_ATTENDANCE[1]_pterm0_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \CNT_ATTENDANCE[1]_pterm1_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \CNT_ATTENDANCE[1]_pterm2_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \CNT_ATTENDANCE[1]_pterm3_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \CNT_ATTENDANCE[1]_pterm4_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \CNT_ATTENDANCE[1]_pterm5_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \CNT_ATTENDANCE[1]_pxor_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \CNT_ATTENDANCE[1]_pclk_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \CNT_ATTENDANCE[1]_pena_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \CNT_ATTENDANCE[1]_paclr_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \CNT_ATTENDANCE[1]_papre_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \CNT_CMD[2]_pterm0_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \CNT_CMD[2]_pterm1_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \CNT_CMD[2]_pterm2_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \CNT_CMD[2]_pterm3_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \CNT_CMD[2]_pterm4_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \CNT_CMD[2]_pterm5_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \CNT_CMD[2]_pxor_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \CNT_CMD[2]_pclk_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \CNT_CMD[2]_pena_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \CNT_CMD[2]_paclr_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \CNT_CMD[2]_papre_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \CNT_ATTENDANCE[2]_pterm0_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \CNT_ATTENDANCE[2]_pterm1_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \CNT_ATTENDANCE[2]_pterm2_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \CNT_ATTENDANCE[2]_pterm3_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \CNT_ATTENDANCE[2]_pterm4_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \CNT_ATTENDANCE[2]_pterm5_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \CNT_ATTENDANCE[2]_pxor_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \CNT_ATTENDANCE[2]_pclk_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \CNT_ATTENDANCE[2]_pena_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \CNT_ATTENDANCE[2]_paclr_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \CNT_ATTENDANCE[2]_papre_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \Selector13~4_pterm0_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \Selector13~4_pterm1_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \Selector13~4_pterm2_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \Selector13~4_pterm3_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \Selector13~4_pterm4_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \Selector13~4_pterm5_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \Selector13~4_pxor_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \Selector13~4_pclk_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \Selector13~4_pena_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \Selector13~4_paclr_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \Selector13~4_papre_bus\ : std_logic_vector(51 DOWNTO 0);
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
SIGNAL \Q.state_bit_3_pterm0_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \Q.state_bit_3_pterm1_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \Q.state_bit_3_pterm2_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \Q.state_bit_3_pterm3_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \Q.state_bit_3_pterm4_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \Q.state_bit_3_pterm5_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \Q.state_bit_3_pxor_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \Q.state_bit_3_pclk_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \Q.state_bit_3_pena_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \Q.state_bit_3_paclr_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \Q.state_bit_3_papre_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \WideOr9~1_pterm0_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \WideOr9~1_pterm1_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \WideOr9~1_pterm2_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \WideOr9~1_pterm3_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \WideOr9~1_pterm4_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \WideOr9~1_pterm5_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \WideOr9~1_pxor_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \WideOr9~1_pclk_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \WideOr9~1_pena_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \WideOr9~1_paclr_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \WideOr9~1_papre_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \Q.state_bit_2_pterm0_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \Q.state_bit_2_pterm1_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \Q.state_bit_2_pterm2_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \Q.state_bit_2_pterm3_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \Q.state_bit_2_pterm4_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \Q.state_bit_2_pterm5_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \Q.state_bit_2_pxor_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \Q.state_bit_2_pclk_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \Q.state_bit_2_pena_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \Q.state_bit_2_paclr_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \Q.state_bit_2_papre_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \Selector12~7_pterm0_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \Selector12~7_pterm1_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \Selector12~7_pterm2_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \Selector12~7_pterm3_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \Selector12~7_pterm4_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \Selector12~7_pterm5_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \Selector12~7_pxor_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \Selector12~7_pclk_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \Selector12~7_pena_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \Selector12~7_paclr_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \Selector12~7_papre_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \Selector19~1_pterm0_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \Selector19~1_pterm1_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \Selector19~1_pterm2_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \Selector19~1_pterm3_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \Selector19~1_pterm4_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \Selector19~1_pterm5_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \Selector19~1_pxor_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \Selector19~1_pclk_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \Selector19~1_pena_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \Selector19~1_paclr_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \Selector19~1_papre_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \Selector21~3_pterm0_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \Selector21~3_pterm1_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \Selector21~3_pterm2_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \Selector21~3_pterm3_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \Selector21~3_pterm4_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \Selector21~3_pterm5_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \Selector21~3_pxor_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \Selector21~3_pclk_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \Selector21~3_pena_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \Selector21~3_paclr_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \Selector21~3_papre_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \CNT_ROLLNO_rtl_0|dffs[0]_pterm0_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \CNT_ROLLNO_rtl_0|dffs[0]_pterm1_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \CNT_ROLLNO_rtl_0|dffs[0]_pterm2_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \CNT_ROLLNO_rtl_0|dffs[0]_pterm3_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \CNT_ROLLNO_rtl_0|dffs[0]_pterm4_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \CNT_ROLLNO_rtl_0|dffs[0]_pterm5_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \CNT_ROLLNO_rtl_0|dffs[0]_pxor_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \CNT_ROLLNO_rtl_0|dffs[0]_pclk_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \CNT_ROLLNO_rtl_0|dffs[0]_pena_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \CNT_ROLLNO_rtl_0|dffs[0]_paclr_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \CNT_ROLLNO_rtl_0|dffs[0]_papre_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \D[3]$latch~6_pterm0_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \D[3]$latch~6_pterm1_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \D[3]$latch~6_pterm2_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \D[3]$latch~6_pterm3_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \D[3]$latch~6_pterm4_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \D[3]$latch~6_pterm5_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \D[3]$latch~6_pxor_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \D[3]$latch~6_pclk_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \D[3]$latch~6_pena_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \D[3]$latch~6_paclr_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \D[3]$latch~6_papre_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \D[6]$latch~6_pterm0_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \D[6]$latch~6_pterm1_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \D[6]$latch~6_pterm2_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \D[6]$latch~6_pterm3_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \D[6]$latch~6_pterm4_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \D[6]$latch~6_pterm5_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \D[6]$latch~6_pxor_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \D[6]$latch~6_pclk_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \D[6]$latch~6_pena_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \D[6]$latch~6_paclr_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \D[6]$latch~6_papre_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \D[7]$latch~6_pterm0_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \D[7]$latch~6_pterm1_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \D[7]$latch~6_pterm2_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \D[7]$latch~6_pterm3_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \D[7]$latch~6_pterm4_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \D[7]$latch~6_pterm5_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \D[7]$latch~6_pxor_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \D[7]$latch~6_pclk_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \D[7]$latch~6_pena_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \D[7]$latch~6_paclr_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \D[7]$latch~6_papre_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \EN$latch~6_pterm0_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \EN$latch~6_pterm1_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \EN$latch~6_pterm2_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \EN$latch~6_pterm3_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \EN$latch~6_pterm4_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \EN$latch~6_pterm5_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \EN$latch~6_pxor_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \EN$latch~6_pclk_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \EN$latch~6_pena_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \EN$latch~6_paclr_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \EN$latch~6_papre_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \Selector15~6_pterm0_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \Selector15~6_pterm1_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \Selector15~6_pterm2_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \Selector15~6_pterm3_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \Selector15~6_pterm4_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \Selector15~6_pterm5_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \Selector15~6_pxor_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \Selector15~6_pclk_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \Selector15~6_pena_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \Selector15~6_paclr_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \Selector15~6_papre_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \Selector6~2_pterm0_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \Selector6~2_pterm1_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \Selector6~2_pterm2_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \Selector6~2_pterm3_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \Selector6~2_pterm4_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \Selector6~2_pterm5_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \Selector6~2_pxor_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \Selector6~2_pclk_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \Selector6~2_pena_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \Selector6~2_paclr_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \Selector6~2_papre_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \CNT_ROLLNO_rtl_0|dffs[1]_pterm0_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \CNT_ROLLNO_rtl_0|dffs[1]_pterm1_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \CNT_ROLLNO_rtl_0|dffs[1]_pterm2_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \CNT_ROLLNO_rtl_0|dffs[1]_pterm3_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \CNT_ROLLNO_rtl_0|dffs[1]_pterm4_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \CNT_ROLLNO_rtl_0|dffs[1]_pterm5_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \CNT_ROLLNO_rtl_0|dffs[1]_pxor_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \CNT_ROLLNO_rtl_0|dffs[1]_pclk_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \CNT_ROLLNO_rtl_0|dffs[1]_pena_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \CNT_ROLLNO_rtl_0|dffs[1]_paclr_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \CNT_ROLLNO_rtl_0|dffs[1]_papre_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \D[5]$latch~6_pterm0_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \D[5]$latch~6_pterm1_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \D[5]$latch~6_pterm2_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \D[5]$latch~6_pterm3_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \D[5]$latch~6_pterm4_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \D[5]$latch~6_pterm5_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \D[5]$latch~6_pxor_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \D[5]$latch~6_pclk_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \D[5]$latch~6_pena_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \D[5]$latch~6_paclr_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \D[5]$latch~6_papre_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \RS$latch~6_pterm0_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \RS$latch~6_pterm1_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \RS$latch~6_pterm2_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \RS$latch~6_pterm3_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \RS$latch~6_pterm4_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \RS$latch~6_pterm5_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \RS$latch~6_pxor_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \RS$latch~6_pclk_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \RS$latch~6_pena_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \RS$latch~6_paclr_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \RS$latch~6_papre_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \D[4]$latch~6_pterm0_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \D[4]$latch~6_pterm1_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \D[4]$latch~6_pterm2_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \D[4]$latch~6_pterm3_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \D[4]$latch~6_pterm4_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \D[4]$latch~6_pterm5_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \D[4]$latch~6_pxor_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \D[4]$latch~6_pclk_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \D[4]$latch~6_pena_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \D[4]$latch~6_paclr_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \D[4]$latch~6_papre_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \Selector11~5_pterm0_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \Selector11~5_pterm1_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \Selector11~5_pterm2_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \Selector11~5_pterm3_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \Selector11~5_pterm4_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \Selector11~5_pterm5_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \Selector11~5_pxor_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \Selector11~5_pclk_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \Selector11~5_pena_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \Selector11~5_paclr_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \Selector11~5_papre_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \CNT_ROLLNO_rtl_0|dffs[3]_pterm0_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \CNT_ROLLNO_rtl_0|dffs[3]_pterm1_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \CNT_ROLLNO_rtl_0|dffs[3]_pterm2_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \CNT_ROLLNO_rtl_0|dffs[3]_pterm3_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \CNT_ROLLNO_rtl_0|dffs[3]_pterm4_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \CNT_ROLLNO_rtl_0|dffs[3]_pterm5_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \CNT_ROLLNO_rtl_0|dffs[3]_pxor_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \CNT_ROLLNO_rtl_0|dffs[3]_pclk_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \CNT_ROLLNO_rtl_0|dffs[3]_pena_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \CNT_ROLLNO_rtl_0|dffs[3]_paclr_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \CNT_ROLLNO_rtl_0|dffs[3]_papre_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \D[2]$latch~6_pterm0_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \D[2]$latch~6_pterm1_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \D[2]$latch~6_pterm2_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \D[2]$latch~6_pterm3_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \D[2]$latch~6_pterm4_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \D[2]$latch~6_pterm5_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \D[2]$latch~6_pxor_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \D[2]$latch~6_pclk_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \D[2]$latch~6_pena_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \D[2]$latch~6_paclr_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \D[2]$latch~6_papre_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \Selector8~5_pterm0_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \Selector8~5_pterm1_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \Selector8~5_pterm2_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \Selector8~5_pterm3_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \Selector8~5_pterm4_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \Selector8~5_pterm5_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \Selector8~5_pxor_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \Selector8~5_pclk_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \Selector8~5_pena_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \Selector8~5_paclr_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \Selector8~5_papre_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \Selector9~5_pterm0_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \Selector9~5_pterm1_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \Selector9~5_pterm2_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \Selector9~5_pterm3_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \Selector9~5_pterm4_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \Selector9~5_pterm5_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \Selector9~5_pxor_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \Selector9~5_pclk_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \Selector9~5_pena_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \Selector9~5_paclr_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \Selector9~5_papre_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \D[0]$latch~6_pterm0_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \D[0]$latch~6_pterm1_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \D[0]$latch~6_pterm2_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \D[0]$latch~6_pterm3_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \D[0]$latch~6_pterm4_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \D[0]$latch~6_pterm5_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \D[0]$latch~6_pxor_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \D[0]$latch~6_pclk_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \D[0]$latch~6_pena_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \D[0]$latch~6_paclr_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \D[0]$latch~6_papre_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \D[1]$latch~6_pterm0_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \D[1]$latch~6_pterm1_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \D[1]$latch~6_pterm2_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \D[1]$latch~6_pterm3_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \D[1]$latch~6_pterm4_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \D[1]$latch~6_pterm5_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \D[1]$latch~6_pxor_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \D[1]$latch~6_pclk_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \D[1]$latch~6_pena_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \D[1]$latch~6_paclr_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \D[1]$latch~6_papre_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \Q.state_bit_1~9_pterm0_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \Q.state_bit_1~9_pterm1_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \Q.state_bit_1~9_pterm2_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \Q.state_bit_1~9_pterm3_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \Q.state_bit_1~9_pterm4_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \Q.state_bit_1~9_pterm5_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \Q.state_bit_1~9_pxor_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \Q.state_bit_1~9_pclk_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \Q.state_bit_1~9_pena_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \Q.state_bit_1~9_paclr_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \Q.state_bit_1~9_papre_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \Q.state_bit_0~9_pterm0_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \Q.state_bit_0~9_pterm1_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \Q.state_bit_0~9_pterm2_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \Q.state_bit_0~9_pterm3_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \Q.state_bit_0~9_pterm4_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \Q.state_bit_0~9_pterm5_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \Q.state_bit_0~9_pxor_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \Q.state_bit_0~9_pclk_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \Q.state_bit_0~9_pena_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \Q.state_bit_0~9_paclr_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \Q.state_bit_0~9_papre_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \Selector12~14_pterm0_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \Selector12~14_pterm1_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \Selector12~14_pterm2_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \Selector12~14_pterm3_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \Selector12~14_pterm4_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \Selector12~14_pterm5_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \Selector12~14_pxor_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \Selector12~14_pclk_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \Selector12~14_pena_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \Selector12~14_paclr_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \Selector12~14_papre_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \Selector11~12_pterm0_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \Selector11~12_pterm1_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \Selector11~12_pterm2_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \Selector11~12_pterm3_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \Selector11~12_pterm4_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \Selector11~12_pterm5_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \Selector11~12_pxor_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \Selector11~12_pclk_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \Selector11~12_pena_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \Selector11~12_paclr_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \Selector11~12_papre_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \Selector8~12_pterm0_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \Selector8~12_pterm1_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \Selector8~12_pterm2_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \Selector8~12_pterm3_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \Selector8~12_pterm4_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \Selector8~12_pterm5_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \Selector8~12_pxor_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \Selector8~12_pclk_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \Selector8~12_pena_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \Selector8~12_paclr_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \Selector8~12_papre_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \Selector9~12_pterm0_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \Selector9~12_pterm1_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \Selector9~12_pterm2_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \Selector9~12_pterm3_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \Selector9~12_pterm4_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \Selector9~12_pterm5_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \Selector9~12_pxor_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \Selector9~12_pclk_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \Selector9~12_pena_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \Selector9~12_paclr_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \Selector9~12_papre_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \~GND~0_pterm0_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \~GND~0_pterm1_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \~GND~0_pterm2_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \~GND~0_pterm3_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \~GND~0_pterm4_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \~GND~0_pterm5_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \~GND~0_pxor_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \~GND~0_pclk_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \~GND~0_pena_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \~GND~0_paclr_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \~GND~0_papre_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \Selector15~5sexpand1_datain_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \Selector15~5sexpand2_datain_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \Selector15~5sexpand3_datain_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \Selector15~5sexpand4_datain_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \Selector15~5sexpand5_datain_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \CLK~dataout\ : std_logic;
SIGNAL \~GND~0~dataout\ : std_logic;
SIGNAL \CLK_NEW~dataout\ : std_logic;
SIGNAL \RSTN~dataout\ : std_logic;
SIGNAL \Q.state_bit_1~9_pexpout\ : std_logic;
SIGNAL \Q.state_bit_1~dataout\ : std_logic;
SIGNAL \Q.state_bit_0~9_pexpout\ : std_logic;
SIGNAL \Q.state_bit_0~dataout\ : std_logic;
SIGNAL \Q.state_bit_2~dataout\ : std_logic;
SIGNAL \Q.state_bit_3~dataout\ : std_logic;
SIGNAL \Selector13~4_dataout\ : std_logic;
SIGNAL \Selector12~14_pexpout\ : std_logic;
SIGNAL \Selector12~7_dataout\ : std_logic;
SIGNAL \D[3]$latch~6_dataout\ : std_logic;
SIGNAL \Selector19~1_dataout\ : std_logic;
SIGNAL \D[6]$latch~6_dataout\ : std_logic;
SIGNAL \Selector21~3_dataout\ : std_logic;
SIGNAL \D[7]$latch~6_dataout\ : std_logic;
SIGNAL \WideOr9~1_dataout\ : std_logic;
SIGNAL \EN$latch~6_dataout\ : std_logic;
SIGNAL \Selector15~6_dataout\ : std_logic;
SIGNAL \D[5]$latch~6_dataout\ : std_logic;
SIGNAL \Selector6~2_dataout\ : std_logic;
SIGNAL \RS$latch~6_dataout\ : std_logic;
SIGNAL \Selector15~5sexpand1_dataout\ : std_logic;
SIGNAL \Selector15~5sexpand2_dataout\ : std_logic;
SIGNAL \Selector15~5sexpand3_dataout\ : std_logic;
SIGNAL \Selector15~5sexpand4_dataout\ : std_logic;
SIGNAL \Selector15~5sexpand5_dataout\ : std_logic;
SIGNAL \D[4]$latch~6_dataout\ : std_logic;
SIGNAL \Selector11~12_pexpout\ : std_logic;
SIGNAL \Selector11~5_dataout\ : std_logic;
SIGNAL \D[2]$latch~6_dataout\ : std_logic;
SIGNAL \Selector8~12_pexpout\ : std_logic;
SIGNAL \Selector8~5_dataout\ : std_logic;
SIGNAL \D[0]$latch~6_dataout\ : std_logic;
SIGNAL \Selector9~12_pexpout\ : std_logic;
SIGNAL \Selector9~5_dataout\ : std_logic;
SIGNAL \D[1]$latch~6_dataout\ : std_logic;
SIGNAL \CNT_ROLLNO_rtl_0|dffs\ : std_logic_vector(3 DOWNTO 0);
SIGNAL CNT_ATTENDANCE : std_logic_vector(2 DOWNTO 0);
SIGNAL CNT_CLK : std_logic_vector(6 DOWNTO 0);
SIGNAL CNT_CMD : std_logic_vector(2 DOWNTO 0);
SIGNAL \ALT_INV_RSTN~dataout\ : std_logic;
SIGNAL \CNT_ROLLNO_rtl_0|ALT_INV_dffs\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \ALT_INV_Selector15~6_dataout\ : std_logic;
SIGNAL \ALT_INV_Selector12~7_dataout\ : std_logic;
SIGNAL \ALT_INV_Q.state_bit_2~dataout\ : std_logic;
SIGNAL \ALT_INV_Q.state_bit_3~dataout\ : std_logic;
SIGNAL \ALT_INV_Q.state_bit_0~dataout\ : std_logic;
SIGNAL \ALT_INV_Q.state_bit_1~dataout\ : std_logic;
SIGNAL ALT_INV_CNT_ATTENDANCE : std_logic_vector(2 DOWNTO 0);
SIGNAL ALT_INV_CNT_CMD : std_logic_vector(2 DOWNTO 0);
SIGNAL ALT_INV_CNT_CLK : std_logic_vector(4 DOWNTO 0);

BEGIN

ww_CLK <= CLK;
ww_RSTN <= RSTN;
D <= ww_D;
RS <= ww_RS;
RW <= ww_RW;
EN <= ww_EN;

\CNT_CLK[0]_pterm0_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd
& gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\CNT_CLK[0]_pterm1_bus\ <= (vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc
& vcc & vcc & vcc & vcc & vcc & vcc & vcc & NOT CNT_CLK(0) & NOT CNT_CLK(1) & CNT_CLK(2) & NOT CNT_CLK(3) & NOT CNT_CLK(4) & CNT_CLK(5) & CNT_CLK(6));

\CNT_CLK[0]_pterm2_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd
& gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\CNT_CLK[0]_pterm3_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd
& gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\CNT_CLK[0]_pterm4_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd
& gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\CNT_CLK[0]_pterm5_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd
& gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\CNT_CLK[0]_pxor_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & 
gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\CNT_CLK[0]_pclk_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & 
gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\CNT_CLK[0]_pena_bus\ <= (vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & 
vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc);

\CNT_CLK[0]_paclr_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & 
gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\CNT_CLK[0]_papre_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & 
gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\CNT_CLK[1]_pterm0_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd
& gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\CNT_CLK[1]_pterm1_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd
& gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\CNT_CLK[1]_pterm2_bus\ <= (vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc
& vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & CNT_CLK(0));

\CNT_CLK[1]_pterm3_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd
& gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\CNT_CLK[1]_pterm4_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd
& gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\CNT_CLK[1]_pterm5_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd
& gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\CNT_CLK[1]_pxor_bus\ <= (vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & 
vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & CNT_CLK(1));

\CNT_CLK[1]_pclk_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & 
gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\CNT_CLK[1]_pena_bus\ <= (vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & 
vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc);

\CNT_CLK[1]_paclr_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & 
gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\CNT_CLK[1]_papre_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & 
gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\CNT_CLK[2]_pterm0_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd
& gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\CNT_CLK[2]_pterm1_bus\ <= (vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc
& vcc & vcc & vcc & vcc & vcc & vcc & vcc & CNT_CLK(2) & NOT CNT_CLK(0) & NOT CNT_CLK(1) & NOT CNT_CLK(3) & NOT CNT_CLK(4) & CNT_CLK(5) & CNT_CLK(6));

\CNT_CLK[2]_pterm2_bus\ <= (vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc
& vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & CNT_CLK(0) & CNT_CLK(1));

\CNT_CLK[2]_pterm3_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd
& gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\CNT_CLK[2]_pterm4_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd
& gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\CNT_CLK[2]_pterm5_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd
& gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\CNT_CLK[2]_pxor_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & 
gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\CNT_CLK[2]_pclk_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & 
gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\CNT_CLK[2]_pena_bus\ <= (vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & 
vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc);

\CNT_CLK[2]_paclr_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & 
gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\CNT_CLK[2]_papre_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & 
gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\CNT_CLK[3]_pterm0_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd
& gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\CNT_CLK[3]_pterm1_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd
& gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\CNT_CLK[3]_pterm2_bus\ <= (vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc
& vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & CNT_CLK(3));

\CNT_CLK[3]_pterm3_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd
& gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\CNT_CLK[3]_pterm4_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd
& gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\CNT_CLK[3]_pterm5_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd
& gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\CNT_CLK[3]_pxor_bus\ <= (vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & 
vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & CNT_CLK(0) & CNT_CLK(1) & CNT_CLK(2));

\CNT_CLK[3]_pclk_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & 
gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\CNT_CLK[3]_pena_bus\ <= (vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & 
vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc);

\CNT_CLK[3]_paclr_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & 
gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\CNT_CLK[3]_papre_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & 
gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\CNT_CLK[4]_pterm0_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd
& gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\CNT_CLK[4]_pterm1_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd
& gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\CNT_CLK[4]_pterm2_bus\ <= (vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc
& vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & CNT_CLK(4));

\CNT_CLK[4]_pterm3_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd
& gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\CNT_CLK[4]_pterm4_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd
& gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\CNT_CLK[4]_pterm5_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd
& gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\CNT_CLK[4]_pxor_bus\ <= (vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & 
vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & CNT_CLK(0) & CNT_CLK(1) & CNT_CLK(2) & CNT_CLK(3));

\CNT_CLK[4]_pclk_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & 
gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\CNT_CLK[4]_pena_bus\ <= (vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & 
vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc);

\CNT_CLK[4]_paclr_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & 
gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\CNT_CLK[4]_papre_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & 
gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\CNT_CLK[5]_pterm0_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd
& gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\CNT_CLK[5]_pterm1_bus\ <= (vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc
& vcc & vcc & vcc & vcc & vcc & vcc & vcc & CNT_CLK(5) & CNT_CLK(2) & NOT CNT_CLK(0) & NOT CNT_CLK(1) & NOT CNT_CLK(3) & NOT CNT_CLK(4) & CNT_CLK(6));

\CNT_CLK[5]_pterm2_bus\ <= (vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc
& vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & CNT_CLK(2) & CNT_CLK(0) & CNT_CLK(1) & CNT_CLK(3) & CNT_CLK(4));

\CNT_CLK[5]_pterm3_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd
& gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\CNT_CLK[5]_pterm4_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd
& gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\CNT_CLK[5]_pterm5_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd
& gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\CNT_CLK[5]_pxor_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & 
gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\CNT_CLK[5]_pclk_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & 
gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\CNT_CLK[5]_pena_bus\ <= (vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & 
vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc);

\CNT_CLK[5]_paclr_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & 
gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\CNT_CLK[5]_papre_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & 
gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\CNT_CLK[6]_pterm0_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd
& gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\CNT_CLK[6]_pterm1_bus\ <= (vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc
& vcc & vcc & vcc & vcc & vcc & vcc & vcc & CNT_CLK(6) & CNT_CLK(2) & NOT CNT_CLK(4) & NOT CNT_CLK(0) & NOT CNT_CLK(1) & NOT CNT_CLK(3) & CNT_CLK(5));

\CNT_CLK[6]_pterm2_bus\ <= (vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc
& vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & CNT_CLK(2) & CNT_CLK(4) & CNT_CLK(0) & CNT_CLK(1) & CNT_CLK(3) & CNT_CLK(5));

\CNT_CLK[6]_pterm3_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd
& gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\CNT_CLK[6]_pterm4_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd
& gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\CNT_CLK[6]_pterm5_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd
& gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\CNT_CLK[6]_pxor_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & 
gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\CNT_CLK[6]_pclk_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & 
gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\CNT_CLK[6]_pena_bus\ <= (vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & 
vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc);

\CNT_CLK[6]_paclr_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & 
gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\CNT_CLK[6]_papre_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & 
gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

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
vcc & vcc & vcc & vcc & vcc & vcc & NOT CNT_CLK(0) & NOT CNT_CLK(1) & CNT_CLK(2) & NOT CNT_CLK(3) & NOT CNT_CLK(4) & CNT_CLK(5) & CNT_CLK(6));

CLK_NEW_paclr_bus <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd
& gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

CLK_NEW_papre_bus <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd
& gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\CNT_CMD[0]_pterm0_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd
& gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\CNT_CMD[0]_pterm1_bus\ <= (vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc
& vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & \Q.state_bit_1~dataout\ & \Q.state_bit_0~dataout\ & NOT \Q.state_bit_3~dataout\ & NOT \Q.state_bit_2~dataout\);

\CNT_CMD[0]_pterm2_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd
& gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\CNT_CMD[0]_pterm3_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd
& gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\CNT_CMD[0]_pterm4_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd
& gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\CNT_CMD[0]_pterm5_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd
& gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\CNT_CMD[0]_pxor_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & 
gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\CNT_CMD[0]_pclk_bus\ <= (vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & 
vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & \CLK_NEW~dataout\);

\CNT_CMD[0]_pena_bus\ <= (vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & 
vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc);

\CNT_CMD[0]_paclr_bus\ <= (vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & 
vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & NOT \RSTN~dataout\);

\CNT_CMD[0]_papre_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & 
gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\CNT_ATTENDANCE[0]_pterm0_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd
& gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\CNT_ATTENDANCE[0]_pterm1_bus\ <= (vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc
& vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & \Q.state_bit_1~dataout\ & \Q.state_bit_0~dataout\ & \Q.state_bit_3~dataout\);

\CNT_ATTENDANCE[0]_pterm2_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd
& gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\CNT_ATTENDANCE[0]_pterm3_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd
& gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\CNT_ATTENDANCE[0]_pterm4_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd
& gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\CNT_ATTENDANCE[0]_pterm5_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd
& gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\CNT_ATTENDANCE[0]_pxor_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & 
gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\CNT_ATTENDANCE[0]_pclk_bus\ <= (vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & 
vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & \CLK_NEW~dataout\);

\CNT_ATTENDANCE[0]_pena_bus\ <= (vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & 
vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc);

\CNT_ATTENDANCE[0]_paclr_bus\ <= (vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc
& vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & NOT \RSTN~dataout\);

\CNT_ATTENDANCE[0]_papre_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd
& gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\CNT_ROLLNO_rtl_0|dffs[2]_pterm0_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd
& gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\CNT_ROLLNO_rtl_0|dffs[2]_pterm1_bus\ <= (vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc
& vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & \Q.state_bit_1~dataout\ & \Q.state_bit_0~dataout\ & \Q.state_bit_2~dataout\ & \CNT_ROLLNO_rtl_0|dffs\(0) & \CNT_ROLLNO_rtl_0|dffs\(1));

\CNT_ROLLNO_rtl_0|dffs[2]_pterm2_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd
& gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\CNT_ROLLNO_rtl_0|dffs[2]_pterm3_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd
& gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\CNT_ROLLNO_rtl_0|dffs[2]_pterm4_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd
& gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\CNT_ROLLNO_rtl_0|dffs[2]_pterm5_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd
& gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\CNT_ROLLNO_rtl_0|dffs[2]_pxor_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd
& gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\CNT_ROLLNO_rtl_0|dffs[2]_pclk_bus\ <= (vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc
& vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & \CLK_NEW~dataout\);

\CNT_ROLLNO_rtl_0|dffs[2]_pena_bus\ <= (vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc
& vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc);

\CNT_ROLLNO_rtl_0|dffs[2]_paclr_bus\ <= (vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc
& vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & NOT \RSTN~dataout\);

\CNT_ROLLNO_rtl_0|dffs[2]_papre_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd
& gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\CNT_CMD[1]_pterm0_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd
& gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\CNT_CMD[1]_pterm1_bus\ <= (vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc
& vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & \Q.state_bit_1~dataout\ & \Q.state_bit_0~dataout\ & NOT \Q.state_bit_3~dataout\ & NOT \Q.state_bit_2~dataout\ & CNT_CMD(0));

\CNT_CMD[1]_pterm2_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd
& gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\CNT_CMD[1]_pterm3_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd
& gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\CNT_CMD[1]_pterm4_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd
& gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\CNT_CMD[1]_pterm5_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd
& gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\CNT_CMD[1]_pxor_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & 
gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\CNT_CMD[1]_pclk_bus\ <= (vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & 
vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & \CLK_NEW~dataout\);

\CNT_CMD[1]_pena_bus\ <= (vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & 
vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc);

\CNT_CMD[1]_paclr_bus\ <= (vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & 
vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & NOT \RSTN~dataout\);

\CNT_CMD[1]_papre_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & 
gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\CNT_ATTENDANCE[1]_pterm0_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd
& gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\CNT_ATTENDANCE[1]_pterm1_bus\ <= (vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc
& vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & \Q.state_bit_1~dataout\ & \Q.state_bit_0~dataout\ & \Q.state_bit_3~dataout\ & CNT_ATTENDANCE(0));

\CNT_ATTENDANCE[1]_pterm2_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd
& gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\CNT_ATTENDANCE[1]_pterm3_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd
& gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\CNT_ATTENDANCE[1]_pterm4_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd
& gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\CNT_ATTENDANCE[1]_pterm5_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd
& gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\CNT_ATTENDANCE[1]_pxor_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & 
gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\CNT_ATTENDANCE[1]_pclk_bus\ <= (vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & 
vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & \CLK_NEW~dataout\);

\CNT_ATTENDANCE[1]_pena_bus\ <= (vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & 
vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc);

\CNT_ATTENDANCE[1]_paclr_bus\ <= (vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc
& vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & NOT \RSTN~dataout\);

\CNT_ATTENDANCE[1]_papre_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd
& gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\CNT_CMD[2]_pterm0_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd
& gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\CNT_CMD[2]_pterm1_bus\ <= (vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc
& vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & \Q.state_bit_1~dataout\ & \Q.state_bit_0~dataout\ & NOT \Q.state_bit_3~dataout\ & NOT \Q.state_bit_2~dataout\ & CNT_CMD(0) & CNT_CMD(1));

\CNT_CMD[2]_pterm2_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd
& gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\CNT_CMD[2]_pterm3_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd
& gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\CNT_CMD[2]_pterm4_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd
& gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\CNT_CMD[2]_pterm5_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd
& gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\CNT_CMD[2]_pxor_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & 
gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\CNT_CMD[2]_pclk_bus\ <= (vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & 
vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & \CLK_NEW~dataout\);

\CNT_CMD[2]_pena_bus\ <= (vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & 
vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc);

\CNT_CMD[2]_paclr_bus\ <= (vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & 
vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & NOT \RSTN~dataout\);

\CNT_CMD[2]_papre_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & 
gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\CNT_ATTENDANCE[2]_pterm0_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd
& gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\CNT_ATTENDANCE[2]_pterm1_bus\ <= (vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc
& vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & \Q.state_bit_1~dataout\ & \Q.state_bit_0~dataout\ & \Q.state_bit_3~dataout\ & CNT_ATTENDANCE(0) & CNT_ATTENDANCE(1));

\CNT_ATTENDANCE[2]_pterm2_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd
& gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\CNT_ATTENDANCE[2]_pterm3_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd
& gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\CNT_ATTENDANCE[2]_pterm4_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd
& gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\CNT_ATTENDANCE[2]_pterm5_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd
& gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\CNT_ATTENDANCE[2]_pxor_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & 
gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\CNT_ATTENDANCE[2]_pclk_bus\ <= (vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & 
vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & \CLK_NEW~dataout\);

\CNT_ATTENDANCE[2]_pena_bus\ <= (vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & 
vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc);

\CNT_ATTENDANCE[2]_paclr_bus\ <= (vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc
& vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & NOT \RSTN~dataout\);

\CNT_ATTENDANCE[2]_papre_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd
& gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\Selector13~4_pterm0_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd
& gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\Selector13~4_pterm1_bus\ <= (vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc
& vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & \Q.state_bit_3~dataout\ & \Q.state_bit_1~dataout\ & CNT_ATTENDANCE(0) & CNT_ATTENDANCE(2));

\Selector13~4_pterm2_bus\ <= (vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc
& vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & \Q.state_bit_0~dataout\ & \Q.state_bit_3~dataout\ & CNT_ATTENDANCE(0) & CNT_ATTENDANCE(2));

\Selector13~4_pterm3_bus\ <= (vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc
& vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & NOT \Q.state_bit_2~dataout\ & NOT CNT_CMD(0) & NOT CNT_CMD(2) & NOT \Q.state_bit_3~dataout\ & NOT \Q.state_bit_1~dataout\);

\Selector13~4_pterm4_bus\ <= (vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc
& vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & NOT \Q.state_bit_2~dataout\ & NOT CNT_CMD(0) & NOT CNT_CMD(2) & \Q.state_bit_0~dataout\ & NOT \Q.state_bit_3~dataout\);

\Selector13~4_pterm5_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd
& gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\Selector13~4_pxor_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd
& gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\Selector13~4_pclk_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd
& gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\Selector13~4_pena_bus\ <= (vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc
& vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc);

\Selector13~4_paclr_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd
& gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\Selector13~4_papre_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd
& gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\Q.state_bit_1_pterm0_bus\ <= (vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & 
vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & \Q.state_bit_3~dataout\ & NOT \Q.state_bit_0~dataout\);

\Q.state_bit_1_pterm1_bus\ <= (vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & 
vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & NOT \Q.state_bit_1~dataout\ & NOT \Q.state_bit_0~dataout\ & NOT \Q.state_bit_2~dataout\ & NOT CNT_CMD(2));

\Q.state_bit_1_pterm2_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & 
gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\Q.state_bit_1_pterm3_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & 
gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\Q.state_bit_1_pterm4_bus\ <= (vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & 
vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & \Q.state_bit_3~dataout\ & CNT_ATTENDANCE(0) & CNT_ATTENDANCE(1) & CNT_ATTENDANCE(2) & NOT \Q.state_bit_1~dataout\ & NOT \Q.state_bit_2~dataout\);

\Q.state_bit_1_pterm5_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & 
gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\Q.state_bit_1_pxor_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd
& gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\Q.state_bit_1_pclk_bus\ <= (vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc
& vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & \CLK_NEW~dataout\);

\Q.state_bit_1_pena_bus\ <= (vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc
& vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc);

\Q.state_bit_1_paclr_bus\ <= (vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc
& vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & NOT \RSTN~dataout\);

\Q.state_bit_1_papre_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd
& gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\Q.state_bit_0_pterm0_bus\ <= (vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & 
vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & \Q.state_bit_1~dataout\ & \Q.state_bit_3~dataout\);

\Q.state_bit_0_pterm1_bus\ <= (vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & 
vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & NOT \Q.state_bit_1~dataout\ & \Q.state_bit_0~dataout\ & NOT \Q.state_bit_3~dataout\);

\Q.state_bit_0_pterm2_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & 
gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\Q.state_bit_0_pterm3_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & 
gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\Q.state_bit_0_pterm4_bus\ <= (vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & 
vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & \Q.state_bit_2~dataout\ & NOT \Q.state_bit_1~dataout\ & \Q.state_bit_0~dataout\);

\Q.state_bit_0_pterm5_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & 
gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\Q.state_bit_0_pxor_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd
& gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\Q.state_bit_0_pclk_bus\ <= (vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc
& vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & \CLK_NEW~dataout\);

\Q.state_bit_0_pena_bus\ <= (vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc
& vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc);

\Q.state_bit_0_paclr_bus\ <= (vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc
& vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & NOT \RSTN~dataout\);

\Q.state_bit_0_papre_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd
& gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\Q.state_bit_3_pterm0_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & 
gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\Q.state_bit_3_pterm1_bus\ <= (vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & 
vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & NOT \Q.state_bit_3~dataout\ & \Q.state_bit_1~dataout\ & NOT \Q.state_bit_0~dataout\ & \Q.state_bit_2~dataout\);

\Q.state_bit_3_pterm2_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & 
gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\Q.state_bit_3_pterm3_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & 
gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\Q.state_bit_3_pterm4_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & 
gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\Q.state_bit_3_pterm5_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & 
gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\Q.state_bit_3_pxor_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd
& gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\Q.state_bit_3_pclk_bus\ <= (vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc
& vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & \CLK_NEW~dataout\);

\Q.state_bit_3_pena_bus\ <= (vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc
& vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc);

\Q.state_bit_3_paclr_bus\ <= (vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc
& vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & NOT \RSTN~dataout\);

\Q.state_bit_3_papre_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd
& gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\WideOr9~1_pterm0_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & 
gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\WideOr9~1_pterm1_bus\ <= (vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & 
vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & \Q.state_bit_1~dataout\ & NOT \Q.state_bit_0~dataout\ & \Q.state_bit_2~dataout\);

\WideOr9~1_pterm2_bus\ <= (vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & 
vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & NOT \Q.state_bit_3~dataout\ & NOT \Q.state_bit_1~dataout\ & \Q.state_bit_0~dataout\);

\WideOr9~1_pterm3_bus\ <= (vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & 
vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & NOT \Q.state_bit_1~dataout\ & \Q.state_bit_0~dataout\ & \Q.state_bit_2~dataout\);

\WideOr9~1_pterm4_bus\ <= (vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & 
vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & \Q.state_bit_3~dataout\ & \Q.state_bit_1~dataout\ & NOT \Q.state_bit_0~dataout\);

\WideOr9~1_pterm5_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & 
gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\WideOr9~1_pxor_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & 
gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\WideOr9~1_pclk_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & 
gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\WideOr9~1_pena_bus\ <= (vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & 
vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc);

\WideOr9~1_paclr_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & 
gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\WideOr9~1_papre_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & 
gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\Q.state_bit_2_pterm0_bus\ <= (vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & 
vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & \Q.state_bit_1~dataout\ & \Q.state_bit_2~dataout\ & NOT \Q.state_bit_3~dataout\);

\Q.state_bit_2_pterm1_bus\ <= (vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & 
vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & NOT \Q.state_bit_1~dataout\ & NOT \Q.state_bit_2~dataout\ & \Q.state_bit_3~dataout\ & \Q.state_bit_0~dataout\ & CNT_ATTENDANCE(0) & CNT_ATTENDANCE(1) & CNT_ATTENDANCE(2));

\Q.state_bit_2_pterm2_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & 
gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\Q.state_bit_2_pterm3_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & 
gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\Q.state_bit_2_pterm4_bus\ <= (vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & 
vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & \Q.state_bit_1~dataout\ & NOT \Q.state_bit_3~dataout\ & NOT \Q.state_bit_0~dataout\);

\Q.state_bit_2_pterm5_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & 
gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\Q.state_bit_2_pxor_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd
& gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\Q.state_bit_2_pclk_bus\ <= (vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc
& vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & \CLK_NEW~dataout\);

\Q.state_bit_2_pena_bus\ <= (vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc
& vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc);

\Q.state_bit_2_paclr_bus\ <= (vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc
& vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & NOT \RSTN~dataout\);

\Q.state_bit_2_papre_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd
& gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\Selector12~7_pterm0_bus\ <= (vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc
& vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & CNT_ATTENDANCE(0) & CNT_ATTENDANCE(1) & CNT_ATTENDANCE(2) & NOT \Q.state_bit_1~dataout\ & \Q.state_bit_0~dataout\ & \Q.state_bit_3~dataout\);

\Selector12~7_pterm1_bus\ <= (vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc
& vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & CNT_CMD(0) & NOT \Q.state_bit_1~dataout\ & NOT \Q.state_bit_0~dataout\ & CNT_CMD(2) & NOT \Q.state_bit_3~dataout\ & NOT \Q.state_bit_2~dataout\);

\Selector12~7_pterm2_bus\ <= (vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc
& vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & \CNT_ROLLNO_rtl_0|dffs\(3) & \CNT_ROLLNO_rtl_0|dffs\(2) & \Q.state_bit_1~dataout\ & NOT \Q.state_bit_0~dataout\ & NOT \Q.state_bit_3~dataout\ & NOT \Q.state_bit_2~dataout\);

\Selector12~7_pterm3_bus\ <= (vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc
& vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & \CNT_ROLLNO_rtl_0|dffs\(1) & \CNT_ROLLNO_rtl_0|dffs\(3) & \Q.state_bit_1~dataout\ & NOT \Q.state_bit_0~dataout\ & NOT \Q.state_bit_3~dataout\ & NOT \Q.state_bit_2~dataout\);

\Selector12~7_pterm4_bus\ <= (vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc
& vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & \CNT_ROLLNO_rtl_0|dffs\(0) & \CNT_ROLLNO_rtl_0|dffs\(3) & \Q.state_bit_1~dataout\ & NOT \Q.state_bit_0~dataout\ & NOT \Q.state_bit_3~dataout\ & NOT \Q.state_bit_2~dataout\);

\Selector12~7_pterm5_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd
& gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\Selector12~7_pxor_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd
& gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\Selector12~7_pclk_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd
& gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\Selector12~7_pena_bus\ <= (vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc
& vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc);

\Selector12~7_paclr_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd
& gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\Selector12~7_papre_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd
& gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\Selector19~1_pterm0_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd
& gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\Selector19~1_pterm1_bus\ <= (vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc
& vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & \Q.state_bit_1~dataout\ & \Q.state_bit_3~dataout\);

\Selector19~1_pterm2_bus\ <= (vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc
& vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & \Q.state_bit_0~dataout\ & \Q.state_bit_3~dataout\);

\Selector19~1_pterm3_bus\ <= (vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc
& vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & \Q.state_bit_2~dataout\ & NOT \Q.state_bit_0~dataout\ & NOT \Q.state_bit_3~dataout\);

\Selector19~1_pterm4_bus\ <= (vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc
& vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & NOT \Q.state_bit_2~dataout\ & \Q.state_bit_3~dataout\);

\Selector19~1_pterm5_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd
& gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\Selector19~1_pxor_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd
& gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\Selector19~1_pclk_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd
& gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\Selector19~1_pena_bus\ <= (vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc
& vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc);

\Selector19~1_paclr_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd
& gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\Selector19~1_papre_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd
& gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\Selector21~3_pterm0_bus\ <= (vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc
& vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & NOT \Q.state_bit_0~dataout\ & \Q.state_bit_1~dataout\ & \Q.state_bit_2~dataout\);

\Selector21~3_pterm1_bus\ <= (vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc
& vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & NOT \Q.state_bit_1~dataout\ & NOT \Q.state_bit_2~dataout\ & NOT \Q.state_bit_3~dataout\ & CNT_CMD(0) & CNT_CMD(1));

\Selector21~3_pterm2_bus\ <= (vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc
& vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & \Q.state_bit_0~dataout\ & NOT \Q.state_bit_2~dataout\ & NOT \Q.state_bit_3~dataout\ & CNT_CMD(0) & CNT_CMD(1));

\Selector21~3_pterm3_bus\ <= (vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc
& vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & NOT \Q.state_bit_0~dataout\ & \Q.state_bit_2~dataout\ & NOT \Q.state_bit_3~dataout\);

\Selector21~3_pterm4_bus\ <= (vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc
& vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & NOT \Q.state_bit_0~dataout\ & NOT \Q.state_bit_1~dataout\ & NOT \Q.state_bit_2~dataout\ & \Q.state_bit_3~dataout\);

\Selector21~3_pterm5_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd
& gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\Selector21~3_pxor_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd
& gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\Selector21~3_pclk_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd
& gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\Selector21~3_pena_bus\ <= (vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc
& vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc);

\Selector21~3_paclr_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd
& gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\Selector21~3_papre_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd
& gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\CNT_ROLLNO_rtl_0|dffs[0]_pterm0_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd
& gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\CNT_ROLLNO_rtl_0|dffs[0]_pterm1_bus\ <= (vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc
& vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & \Q.state_bit_1~dataout\ & \Q.state_bit_0~dataout\ & \Q.state_bit_2~dataout\);

\CNT_ROLLNO_rtl_0|dffs[0]_pterm2_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd
& gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\CNT_ROLLNO_rtl_0|dffs[0]_pterm3_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd
& gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\CNT_ROLLNO_rtl_0|dffs[0]_pterm4_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd
& gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\CNT_ROLLNO_rtl_0|dffs[0]_pterm5_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd
& gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\CNT_ROLLNO_rtl_0|dffs[0]_pxor_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd
& gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\CNT_ROLLNO_rtl_0|dffs[0]_pclk_bus\ <= (vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc
& vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & \CLK_NEW~dataout\);

\CNT_ROLLNO_rtl_0|dffs[0]_pena_bus\ <= (vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc
& vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc);

\CNT_ROLLNO_rtl_0|dffs[0]_paclr_bus\ <= (vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc
& vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & NOT \RSTN~dataout\);

\CNT_ROLLNO_rtl_0|dffs[0]_papre_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd
& gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\D[3]$latch~6_pterm0_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd
& gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\D[3]$latch~6_pterm1_bus\ <= (vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc
& vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & NOT \Selector12~7_dataout\ & \Selector13~4_dataout\);

\D[3]$latch~6_pterm2_bus\ <= (vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc
& vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & \D[3]$latch~6_dataout\ & \Selector12~7_dataout\);

\D[3]$latch~6_pterm3_bus\ <= (vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc
& vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & \D[3]$latch~6_dataout\ & \Selector13~4_dataout\);

\D[3]$latch~6_pterm4_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd
& gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\D[3]$latch~6_pterm5_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd
& gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\D[3]$latch~6_pxor_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd
& gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\D[3]$latch~6_pclk_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd
& gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\D[3]$latch~6_pena_bus\ <= (vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc
& vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc);

\D[3]$latch~6_paclr_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd
& gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\D[3]$latch~6_papre_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd
& gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\D[6]$latch~6_pterm0_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd
& gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\D[6]$latch~6_pterm1_bus\ <= (vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc
& vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & NOT \Selector12~7_dataout\ & \Selector19~1_dataout\);

\D[6]$latch~6_pterm2_bus\ <= (vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc
& vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & \D[6]$latch~6_dataout\ & \Selector12~7_dataout\);

\D[6]$latch~6_pterm3_bus\ <= (vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc
& vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & \D[6]$latch~6_dataout\ & \Selector19~1_dataout\);

\D[6]$latch~6_pterm4_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd
& gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\D[6]$latch~6_pterm5_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd
& gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\D[6]$latch~6_pxor_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd
& gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\D[6]$latch~6_pclk_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd
& gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\D[6]$latch~6_pena_bus\ <= (vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc
& vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc);

\D[6]$latch~6_paclr_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd
& gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\D[6]$latch~6_papre_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd
& gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\D[7]$latch~6_pterm0_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd
& gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\D[7]$latch~6_pterm1_bus\ <= (vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc
& vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & NOT \Selector12~7_dataout\ & \Selector21~3_dataout\);

\D[7]$latch~6_pterm2_bus\ <= (vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc
& vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & \D[7]$latch~6_dataout\ & \Selector12~7_dataout\);

\D[7]$latch~6_pterm3_bus\ <= (vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc
& vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & \D[7]$latch~6_dataout\ & \Selector21~3_dataout\);

\D[7]$latch~6_pterm4_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd
& gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\D[7]$latch~6_pterm5_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd
& gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\D[7]$latch~6_pxor_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd
& gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\D[7]$latch~6_pclk_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd
& gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\D[7]$latch~6_pena_bus\ <= (vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc
& vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc);

\D[7]$latch~6_paclr_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd
& gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\D[7]$latch~6_papre_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd
& gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\EN$latch~6_pterm0_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd
& gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\EN$latch~6_pterm1_bus\ <= (vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc
& vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & NOT \Selector12~7_dataout\ & \WideOr9~1_dataout\);

\EN$latch~6_pterm2_bus\ <= (vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc
& vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & \EN$latch~6_dataout\ & \Selector12~7_dataout\);

\EN$latch~6_pterm3_bus\ <= (vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc
& vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & \EN$latch~6_dataout\ & \WideOr9~1_dataout\);

\EN$latch~6_pterm4_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd
& gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\EN$latch~6_pterm5_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd
& gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\EN$latch~6_pxor_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & 
gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\EN$latch~6_pclk_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & 
gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\EN$latch~6_pena_bus\ <= (vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & 
vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc);

\EN$latch~6_paclr_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & 
gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\EN$latch~6_papre_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & 
gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\Selector15~6_pterm0_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd
& gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\Selector15~6_pterm1_bus\ <= (vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc
& vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & NOT \Q.state_bit_3~dataout\ & NOT \Q.state_bit_2~dataout\ & NOT CNT_CMD(0) & NOT CNT_CMD(2) & NOT CNT_CMD(1));

\Selector15~6_pterm2_bus\ <= (vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc
& vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & \Q.state_bit_0~dataout\ & \Q.state_bit_2~dataout\);

\Selector15~6_pterm3_bus\ <= (vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc
& vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & \Q.state_bit_1~dataout\ & NOT \Q.state_bit_0~dataout\ & NOT \Q.state_bit_3~dataout\ & NOT \Q.state_bit_2~dataout\);

\Selector15~6_pterm4_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd
& gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\Selector15~6_pterm5_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd
& gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\Selector15~6_pxor_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd
& gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\Selector15~6_pclk_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd
& gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\Selector15~6_pena_bus\ <= (vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc
& vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc);

\Selector15~6_paclr_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd
& gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\Selector15~6_papre_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd
& gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\Selector6~2_pterm0_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd
& gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\Selector6~2_pterm1_bus\ <= (vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc
& vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & NOT \Q.state_bit_0~dataout\ & \Q.state_bit_1~dataout\ & NOT \Q.state_bit_2~dataout\);

\Selector6~2_pterm2_bus\ <= (vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc
& vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & \Q.state_bit_0~dataout\ & \Q.state_bit_2~dataout\);

\Selector6~2_pterm3_bus\ <= (vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc
& vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & \Q.state_bit_3~dataout\ & \Q.state_bit_1~dataout\);

\Selector6~2_pterm4_bus\ <= (vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc
& vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & \Q.state_bit_3~dataout\ & \Q.state_bit_0~dataout\);

\Selector6~2_pterm5_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd
& gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\Selector6~2_pxor_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & 
gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\Selector6~2_pclk_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & 
gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\Selector6~2_pena_bus\ <= (vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & 
vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc);

\Selector6~2_paclr_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd
& gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\Selector6~2_papre_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd
& gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\CNT_ROLLNO_rtl_0|dffs[1]_pterm0_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd
& gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\CNT_ROLLNO_rtl_0|dffs[1]_pterm1_bus\ <= (vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc
& vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & \Q.state_bit_1~dataout\ & \Q.state_bit_0~dataout\ & \Q.state_bit_2~dataout\ & \CNT_ROLLNO_rtl_0|dffs\(0));

\CNT_ROLLNO_rtl_0|dffs[1]_pterm2_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd
& gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\CNT_ROLLNO_rtl_0|dffs[1]_pterm3_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd
& gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\CNT_ROLLNO_rtl_0|dffs[1]_pterm4_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd
& gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\CNT_ROLLNO_rtl_0|dffs[1]_pterm5_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd
& gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\CNT_ROLLNO_rtl_0|dffs[1]_pxor_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd
& gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\CNT_ROLLNO_rtl_0|dffs[1]_pclk_bus\ <= (vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc
& vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & \CLK_NEW~dataout\);

\CNT_ROLLNO_rtl_0|dffs[1]_pena_bus\ <= (vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc
& vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc);

\CNT_ROLLNO_rtl_0|dffs[1]_paclr_bus\ <= (vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc
& vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & NOT \RSTN~dataout\);

\CNT_ROLLNO_rtl_0|dffs[1]_papre_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd
& gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\D[5]$latch~6_pterm0_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd
& gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\D[5]$latch~6_pterm1_bus\ <= (vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc
& vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & NOT \Selector12~7_dataout\ & \Selector15~6_dataout\);

\D[5]$latch~6_pterm2_bus\ <= (vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc
& vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & \D[5]$latch~6_dataout\ & \Selector12~7_dataout\);

\D[5]$latch~6_pterm3_bus\ <= (vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc
& vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & \D[5]$latch~6_dataout\ & \Selector15~6_dataout\);

\D[5]$latch~6_pterm4_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd
& gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\D[5]$latch~6_pterm5_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd
& gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\D[5]$latch~6_pxor_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd
& gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\D[5]$latch~6_pclk_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd
& gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\D[5]$latch~6_pena_bus\ <= (vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc
& vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc);

\D[5]$latch~6_paclr_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd
& gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\D[5]$latch~6_papre_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd
& gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\RS$latch~6_pterm0_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd
& gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\RS$latch~6_pterm1_bus\ <= (vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc
& vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & NOT \Selector12~7_dataout\ & \Selector6~2_dataout\);

\RS$latch~6_pterm2_bus\ <= (vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc
& vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & \RS$latch~6_dataout\ & \Selector12~7_dataout\);

\RS$latch~6_pterm3_bus\ <= (vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc
& vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & \RS$latch~6_dataout\ & \Selector6~2_dataout\);

\RS$latch~6_pterm4_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd
& gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\RS$latch~6_pterm5_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd
& gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\RS$latch~6_pxor_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & 
gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\RS$latch~6_pclk_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & 
gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\RS$latch~6_pena_bus\ <= (vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & 
vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc);

\RS$latch~6_paclr_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & 
gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\RS$latch~6_papre_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & 
gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\D[4]$latch~6_pterm0_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd
& gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\D[4]$latch~6_pterm1_bus\ <= (vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc
& vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & \Selector15~5sexpand5_dataout\ & \Selector15~5sexpand4_dataout\ & \Selector15~5sexpand3_dataout\ & \Selector15~5sexpand2_dataout\ & \Selector15~5sexpand1_dataout\ & NOT \Selector12~7_dataout\);

\D[4]$latch~6_pterm2_bus\ <= (vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc
& vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & \D[4]$latch~6_dataout\ & \Selector12~7_dataout\);

\D[4]$latch~6_pterm3_bus\ <= (vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc
& vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & \Selector15~5sexpand5_dataout\ & \Selector15~5sexpand4_dataout\ & \Selector15~5sexpand3_dataout\ & \Selector15~5sexpand2_dataout\ & \Selector15~5sexpand1_dataout\ & \D[4]$latch~6_dataout\);

\D[4]$latch~6_pterm4_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd
& gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\D[4]$latch~6_pterm5_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd
& gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\D[4]$latch~6_pxor_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd
& gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\D[4]$latch~6_pclk_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd
& gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\D[4]$latch~6_pena_bus\ <= (vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc
& vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc);

\D[4]$latch~6_paclr_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd
& gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\D[4]$latch~6_papre_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd
& gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\Selector11~5_pterm0_bus\ <= (vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc
& vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & \Q.state_bit_2~dataout\ & NOT \CNT_ROLLNO_rtl_0|dffs\(1) & NOT \CNT_ROLLNO_rtl_0|dffs\(2) & \CNT_ROLLNO_rtl_0|dffs\(0) & \Q.state_bit_0~dataout\);

\Selector11~5_pterm1_bus\ <= (vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc
& vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & \Q.state_bit_0~dataout\ & \Q.state_bit_3~dataout\ & CNT_ATTENDANCE(2));

\Selector11~5_pterm2_bus\ <= (vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc
& vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & \Q.state_bit_1~dataout\ & NOT CNT_ATTENDANCE(0) & CNT_ATTENDANCE(1) & \Q.state_bit_3~dataout\);

\Selector11~5_pterm3_bus\ <= (vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc
& vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & NOT CNT_ATTENDANCE(0) & CNT_ATTENDANCE(1) & \Q.state_bit_0~dataout\ & \Q.state_bit_3~dataout\);

\Selector11~5_pterm4_bus\ <= (vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc
& vcc & vcc & vcc & vcc & vcc & vcc & vcc & NOT \Q.state_bit_2~dataout\ & NOT \CNT_ROLLNO_rtl_0|dffs\(1) & NOT \CNT_ROLLNO_rtl_0|dffs\(2) & \CNT_ROLLNO_rtl_0|dffs\(0) & \Q.state_bit_1~dataout\ & NOT \Q.state_bit_0~dataout\ & NOT 
\Q.state_bit_3~dataout\);

\Selector11~5_pterm5_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd
& gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\Selector11~5_pxor_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd
& gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\Selector11~5_pclk_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd
& gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\Selector11~5_pena_bus\ <= (vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc
& vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc);

\Selector11~5_paclr_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd
& gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\Selector11~5_papre_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd
& gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\CNT_ROLLNO_rtl_0|dffs[3]_pterm0_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd
& gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\CNT_ROLLNO_rtl_0|dffs[3]_pterm1_bus\ <= (vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc
& vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & \Q.state_bit_1~dataout\ & \Q.state_bit_0~dataout\ & \Q.state_bit_2~dataout\ & \CNT_ROLLNO_rtl_0|dffs\(2) & \CNT_ROLLNO_rtl_0|dffs\(0) & \CNT_ROLLNO_rtl_0|dffs\(1));

\CNT_ROLLNO_rtl_0|dffs[3]_pterm2_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd
& gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\CNT_ROLLNO_rtl_0|dffs[3]_pterm3_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd
& gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\CNT_ROLLNO_rtl_0|dffs[3]_pterm4_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd
& gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\CNT_ROLLNO_rtl_0|dffs[3]_pterm5_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd
& gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\CNT_ROLLNO_rtl_0|dffs[3]_pxor_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd
& gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\CNT_ROLLNO_rtl_0|dffs[3]_pclk_bus\ <= (vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc
& vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & \CLK_NEW~dataout\);

\CNT_ROLLNO_rtl_0|dffs[3]_pena_bus\ <= (vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc
& vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc);

\CNT_ROLLNO_rtl_0|dffs[3]_paclr_bus\ <= (vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc
& vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & NOT \RSTN~dataout\);

\CNT_ROLLNO_rtl_0|dffs[3]_papre_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd
& gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\D[2]$latch~6_pterm0_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd
& gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\D[2]$latch~6_pterm1_bus\ <= (vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc
& vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & NOT \Selector12~7_dataout\ & \Selector11~5_dataout\);

\D[2]$latch~6_pterm2_bus\ <= (vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc
& vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & \D[2]$latch~6_dataout\ & \Selector12~7_dataout\);

\D[2]$latch~6_pterm3_bus\ <= (vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc
& vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & \D[2]$latch~6_dataout\ & \Selector11~5_dataout\);

\D[2]$latch~6_pterm4_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd
& gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\D[2]$latch~6_pterm5_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd
& gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\D[2]$latch~6_pxor_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd
& gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\D[2]$latch~6_pclk_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd
& gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\D[2]$latch~6_pena_bus\ <= (vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc
& vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc);

\D[2]$latch~6_paclr_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd
& gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\D[2]$latch~6_papre_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd
& gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\Selector8~5_pterm0_bus\ <= (vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc
& vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & NOT \Q.state_bit_2~dataout\ & CNT_CMD(0) & NOT CNT_CMD(1) & \Q.state_bit_0~dataout\ & NOT \Q.state_bit_3~dataout\);

\Selector8~5_pterm1_bus\ <= (vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc
& vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & \Q.state_bit_0~dataout\ & \Q.state_bit_3~dataout\ & CNT_ATTENDANCE(1) & NOT CNT_ATTENDANCE(2));

\Selector8~5_pterm2_bus\ <= (vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc
& vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & NOT \Q.state_bit_2~dataout\ & NOT CNT_CMD(0) & CNT_CMD(1) & NOT \Q.state_bit_1~dataout\ & NOT \Q.state_bit_3~dataout\);

\Selector8~5_pterm3_bus\ <= (vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc
& vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & NOT \Q.state_bit_2~dataout\ & NOT CNT_CMD(0) & CNT_CMD(1) & \Q.state_bit_0~dataout\ & NOT \Q.state_bit_3~dataout\);

\Selector8~5_pterm4_bus\ <= (vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc
& vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & NOT \Q.state_bit_2~dataout\ & CNT_CMD(0) & NOT CNT_CMD(1) & NOT \Q.state_bit_1~dataout\ & NOT \Q.state_bit_3~dataout\);

\Selector8~5_pterm5_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd
& gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\Selector8~5_pxor_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & 
gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\Selector8~5_pclk_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & 
gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\Selector8~5_pena_bus\ <= (vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & 
vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc);

\Selector8~5_paclr_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd
& gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\Selector8~5_papre_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd
& gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\Selector9~5_pterm0_bus\ <= (vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc
& vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & CNT_ATTENDANCE(0) & \Q.state_bit_0~dataout\ & \Q.state_bit_3~dataout\);

\Selector9~5_pterm1_bus\ <= (vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc
& vcc & vcc & vcc & vcc & vcc & vcc & NOT \Q.state_bit_0~dataout\ & NOT \Q.state_bit_3~dataout\ & \Q.state_bit_1~dataout\ & \CNT_ROLLNO_rtl_0|dffs\(0) & NOT \CNT_ROLLNO_rtl_0|dffs\(3) & NOT \Q.state_bit_2~dataout\ & NOT \CNT_ROLLNO_rtl_0|dffs\(1) & 
NOT \CNT_ROLLNO_rtl_0|dffs\(2));

\Selector9~5_pterm2_bus\ <= (vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc
& vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & \Q.state_bit_0~dataout\ & NOT \CNT_ROLLNO_rtl_0|dffs\(0) & \CNT_ROLLNO_rtl_0|dffs\(3) & \Q.state_bit_2~dataout\ & NOT \CNT_ROLLNO_rtl_0|dffs\(1) & NOT \CNT_ROLLNO_rtl_0|dffs\(2));

\Selector9~5_pterm3_bus\ <= (vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc
& vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & \Q.state_bit_0~dataout\ & \CNT_ROLLNO_rtl_0|dffs\(0) & NOT \CNT_ROLLNO_rtl_0|dffs\(3) & \Q.state_bit_2~dataout\ & NOT \CNT_ROLLNO_rtl_0|dffs\(1) & NOT \CNT_ROLLNO_rtl_0|dffs\(2));

\Selector9~5_pterm4_bus\ <= (vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc
& vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & CNT_ATTENDANCE(0) & \Q.state_bit_3~dataout\ & \Q.state_bit_1~dataout\);

\Selector9~5_pterm5_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd
& gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\Selector9~5_pxor_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & 
gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\Selector9~5_pclk_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & 
gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\Selector9~5_pena_bus\ <= (vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & 
vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc);

\Selector9~5_paclr_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd
& gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\Selector9~5_papre_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd
& gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\D[0]$latch~6_pterm0_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd
& gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\D[0]$latch~6_pterm1_bus\ <= (vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc
& vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & NOT \Selector12~7_dataout\ & \Selector8~5_dataout\);

\D[0]$latch~6_pterm2_bus\ <= (vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc
& vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & \D[0]$latch~6_dataout\ & \Selector12~7_dataout\);

\D[0]$latch~6_pterm3_bus\ <= (vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc
& vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & \D[0]$latch~6_dataout\ & \Selector8~5_dataout\);

\D[0]$latch~6_pterm4_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd
& gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\D[0]$latch~6_pterm5_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd
& gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\D[0]$latch~6_pxor_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd
& gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\D[0]$latch~6_pclk_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd
& gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\D[0]$latch~6_pena_bus\ <= (vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc
& vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc);

\D[0]$latch~6_paclr_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd
& gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\D[0]$latch~6_papre_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd
& gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\D[1]$latch~6_pterm0_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd
& gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\D[1]$latch~6_pterm1_bus\ <= (vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc
& vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & NOT \Selector12~7_dataout\ & \Selector9~5_dataout\);

\D[1]$latch~6_pterm2_bus\ <= (vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc
& vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & \D[1]$latch~6_dataout\ & \Selector12~7_dataout\);

\D[1]$latch~6_pterm3_bus\ <= (vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc
& vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & \D[1]$latch~6_dataout\ & \Selector9~5_dataout\);

\D[1]$latch~6_pterm4_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd
& gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\D[1]$latch~6_pterm5_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd
& gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\D[1]$latch~6_pxor_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd
& gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\D[1]$latch~6_pclk_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd
& gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\D[1]$latch~6_pena_bus\ <= (vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc
& vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc);

\D[1]$latch~6_paclr_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd
& gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\D[1]$latch~6_papre_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd
& gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\Q.state_bit_1~9_pterm0_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & 
gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\Q.state_bit_1~9_pterm1_bus\ <= (vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & 
vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & \Q.state_bit_1~dataout\ & \Q.state_bit_0~dataout\ & \Q.state_bit_2~dataout\);

\Q.state_bit_1~9_pterm2_bus\ <= (vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & 
vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & NOT CNT_CMD(0) & NOT CNT_CMD(1) & NOT \Q.state_bit_1~dataout\ & NOT \Q.state_bit_0~dataout\ & NOT \Q.state_bit_2~dataout\);

\Q.state_bit_1~9_pterm3_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & 
gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\Q.state_bit_1~9_pterm4_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & 
gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\Q.state_bit_1~9_pterm5_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & 
gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\Q.state_bit_1~9_pxor_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & 
gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\Q.state_bit_1~9_pclk_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & 
gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\Q.state_bit_1~9_pena_bus\ <= (vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & 
vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc);

\Q.state_bit_1~9_paclr_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & 
gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\Q.state_bit_1~9_papre_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & 
gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\Q.state_bit_0~9_pterm0_bus\ <= (vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & 
vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & NOT CNT_CMD(0) & NOT CNT_CMD(1) & NOT \Q.state_bit_1~dataout\ & NOT \Q.state_bit_0~dataout\ & NOT \Q.state_bit_2~dataout\);

\Q.state_bit_0~9_pterm1_bus\ <= (vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & 
vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & NOT \Q.state_bit_0~dataout\ & \Q.state_bit_3~dataout\ & NOT \Q.state_bit_2~dataout\);

\Q.state_bit_0~9_pterm2_bus\ <= (vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & 
vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & \Q.state_bit_1~dataout\ & NOT \CNT_ROLLNO_rtl_0|dffs\(3) & NOT \Q.state_bit_0~dataout\ & NOT \Q.state_bit_2~dataout\);

\Q.state_bit_0~9_pterm3_bus\ <= (vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & 
vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & NOT \CNT_ROLLNO_rtl_0|dffs\(0) & NOT \CNT_ROLLNO_rtl_0|dffs\(1) & NOT \CNT_ROLLNO_rtl_0|dffs\(2) & \Q.state_bit_1~dataout\ & NOT \Q.state_bit_0~dataout\ & NOT \Q.state_bit_2~dataout\);

\Q.state_bit_0~9_pterm4_bus\ <= (vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & 
vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & NOT CNT_CMD(2) & NOT \Q.state_bit_1~dataout\ & NOT \Q.state_bit_0~dataout\ & NOT \Q.state_bit_2~dataout\);

\Q.state_bit_0~9_pterm5_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & 
gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\Q.state_bit_0~9_pxor_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & 
gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\Q.state_bit_0~9_pclk_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & 
gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\Q.state_bit_0~9_pena_bus\ <= (vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & 
vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc);

\Q.state_bit_0~9_paclr_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & 
gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\Q.state_bit_0~9_papre_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & 
gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\Selector12~14_pterm0_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & 
gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\Selector12~14_pterm1_bus\ <= (vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & 
vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & \Q.state_bit_3~dataout\ & \Q.state_bit_2~dataout\);

\Selector12~14_pterm2_bus\ <= (vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & 
vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & NOT \Q.state_bit_1~dataout\ & NOT \Q.state_bit_0~dataout\ & CNT_CMD(1) & CNT_CMD(2) & NOT \Q.state_bit_3~dataout\ & NOT \Q.state_bit_2~dataout\);

\Selector12~14_pterm3_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & 
gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\Selector12~14_pterm4_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & 
gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\Selector12~14_pterm5_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & 
gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\Selector12~14_pxor_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd
& gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\Selector12~14_pclk_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd
& gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\Selector12~14_pena_bus\ <= (vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc
& vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc);

\Selector12~14_paclr_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd
& gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\Selector12~14_papre_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd
& gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\Selector11~12_pterm0_bus\ <= (vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & 
vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & CNT_ATTENDANCE(2) & \Q.state_bit_1~dataout\ & \Q.state_bit_3~dataout\);

\Selector11~12_pterm1_bus\ <= (vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & 
vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & NOT \Q.state_bit_2~dataout\ & NOT \Q.state_bit_1~dataout\ & NOT \Q.state_bit_3~dataout\ & NOT CNT_CMD(0) & NOT CNT_CMD(1) & CNT_CMD(2));

\Selector11~12_pterm2_bus\ <= (vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & 
vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & \Q.state_bit_0~dataout\ & NOT \Q.state_bit_2~dataout\ & NOT \Q.state_bit_3~dataout\ & NOT CNT_CMD(0) & NOT CNT_CMD(1) & CNT_CMD(2));

\Selector11~12_pterm3_bus\ <= (vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & 
vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & NOT \Q.state_bit_2~dataout\ & NOT \Q.state_bit_1~dataout\ & NOT \Q.state_bit_3~dataout\ & NOT CNT_CMD(0) & CNT_CMD(1) & NOT CNT_CMD(2));

\Selector11~12_pterm4_bus\ <= (vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & 
vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & \Q.state_bit_0~dataout\ & NOT \Q.state_bit_2~dataout\ & NOT \Q.state_bit_3~dataout\ & NOT CNT_CMD(0) & CNT_CMD(1) & NOT CNT_CMD(2));

\Selector11~12_pterm5_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & 
gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\Selector11~12_pxor_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd
& gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\Selector11~12_pclk_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd
& gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\Selector11~12_pena_bus\ <= (vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc
& vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc);

\Selector11~12_paclr_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd
& gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\Selector11~12_papre_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd
& gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\Selector8~12_pterm0_bus\ <= (vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc
& vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & CNT_ATTENDANCE(1) & NOT CNT_ATTENDANCE(2) & \Q.state_bit_3~dataout\ & \Q.state_bit_1~dataout\);

\Selector8~12_pterm1_bus\ <= (vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc
& vcc & vcc & vcc & vcc & vcc & vcc & vcc & NOT \Q.state_bit_0~dataout\ & NOT \Q.state_bit_3~dataout\ & NOT \Q.state_bit_2~dataout\ & \Q.state_bit_1~dataout\ & NOT \CNT_ROLLNO_rtl_0|dffs\(0) & NOT \CNT_ROLLNO_rtl_0|dffs\(1) & NOT 
\CNT_ROLLNO_rtl_0|dffs\(3));

\Selector8~12_pterm2_bus\ <= (vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc
& vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & \Q.state_bit_0~dataout\ & \Q.state_bit_2~dataout\ & NOT \CNT_ROLLNO_rtl_0|dffs\(0) & NOT \CNT_ROLLNO_rtl_0|dffs\(1) & NOT \CNT_ROLLNO_rtl_0|dffs\(3));

\Selector8~12_pterm3_bus\ <= (vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc
& vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & NOT CNT_ATTENDANCE(1) & CNT_ATTENDANCE(2) & NOT CNT_ATTENDANCE(0) & \Q.state_bit_3~dataout\ & \Q.state_bit_1~dataout\);

\Selector8~12_pterm4_bus\ <= (vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc
& vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & NOT CNT_ATTENDANCE(1) & CNT_ATTENDANCE(2) & NOT CNT_ATTENDANCE(0) & \Q.state_bit_0~dataout\ & \Q.state_bit_3~dataout\);

\Selector8~12_pterm5_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd
& gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\Selector8~12_pxor_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd
& gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\Selector8~12_pclk_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd
& gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\Selector8~12_pena_bus\ <= (vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc
& vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc);

\Selector8~12_paclr_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd
& gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\Selector8~12_papre_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd
& gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\Selector9~12_pterm0_bus\ <= (vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc
& vcc & vcc & vcc & vcc & vcc & vcc & NOT \CNT_ROLLNO_rtl_0|dffs\(0) & \CNT_ROLLNO_rtl_0|dffs\(3) & NOT \CNT_ROLLNO_rtl_0|dffs\(1) & NOT \CNT_ROLLNO_rtl_0|dffs\(2) & NOT \Q.state_bit_0~dataout\ & NOT \Q.state_bit_3~dataout\ & 
\Q.state_bit_1~dataout\ & NOT \Q.state_bit_2~dataout\);

\Selector9~12_pterm1_bus\ <= (vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc
& vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & NOT \Q.state_bit_3~dataout\ & NOT \Q.state_bit_1~dataout\ & NOT \Q.state_bit_2~dataout\ & NOT CNT_CMD(0) & NOT CNT_CMD(1) & CNT_CMD(2));

\Selector9~12_pterm2_bus\ <= (vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc
& vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & \Q.state_bit_0~dataout\ & NOT \Q.state_bit_3~dataout\ & NOT \Q.state_bit_2~dataout\ & NOT CNT_CMD(0) & NOT CNT_CMD(1) & CNT_CMD(2));

\Selector9~12_pterm3_bus\ <= (vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc
& vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & NOT \Q.state_bit_3~dataout\ & NOT \Q.state_bit_1~dataout\ & NOT \Q.state_bit_2~dataout\ & NOT CNT_CMD(0) & CNT_CMD(1) & NOT CNT_CMD(2));

\Selector9~12_pterm4_bus\ <= (vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc
& vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & \Q.state_bit_0~dataout\ & NOT \Q.state_bit_3~dataout\ & NOT \Q.state_bit_2~dataout\ & NOT CNT_CMD(0) & CNT_CMD(1) & NOT CNT_CMD(2));

\Selector9~12_pterm5_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd
& gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\Selector9~12_pxor_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd
& gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\Selector9~12_pclk_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd
& gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\Selector9~12_pena_bus\ <= (vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc
& vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc);

\Selector9~12_paclr_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd
& gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\Selector9~12_papre_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd
& gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\~GND~0_pterm0_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd
& gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\~GND~0_pterm1_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd
& gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\~GND~0_pterm2_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd
& gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\~GND~0_pterm3_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd
& gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\~GND~0_pterm4_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd
& gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\~GND~0_pterm5_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd
& gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\~GND~0_pxor_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd
& gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\~GND~0_pclk_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd
& gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\~GND~0_pena_bus\ <= (vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc
& vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc);

\~GND~0_paclr_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd
& gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\~GND~0_papre_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd
& gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\Selector15~5sexpand1_datain_bus\ <= (vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & 
vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & NOT \Q.state_bit_1~dataout\ & NOT \Selector15~6_dataout\ & NOT \Q.state_bit_0~dataout\);

\Selector15~5sexpand2_datain_bus\ <= (vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & 
vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & CNT_ATTENDANCE(2) & NOT \Selector15~6_dataout\ & NOT CNT_ATTENDANCE(1));

\Selector15~5sexpand3_datain_bus\ <= (vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & 
vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & CNT_ATTENDANCE(0) & CNT_ATTENDANCE(2) & NOT \Selector15~6_dataout\);

\Selector15~5sexpand4_datain_bus\ <= (vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & 
vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & NOT CNT_ATTENDANCE(0) & NOT CNT_ATTENDANCE(2) & NOT \Selector15~6_dataout\ & CNT_ATTENDANCE(1));

\Selector15~5sexpand5_datain_bus\ <= (vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & 
vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & NOT \Selector15~6_dataout\ & NOT \Q.state_bit_3~dataout\);
\ALT_INV_RSTN~dataout\ <= NOT \RSTN~dataout\;
\CNT_ROLLNO_rtl_0|ALT_INV_dffs\(3) <= NOT \CNT_ROLLNO_rtl_0|dffs\(3);
\CNT_ROLLNO_rtl_0|ALT_INV_dffs\(1) <= NOT \CNT_ROLLNO_rtl_0|dffs\(1);
\ALT_INV_Selector15~6_dataout\ <= NOT \Selector15~6_dataout\;
\CNT_ROLLNO_rtl_0|ALT_INV_dffs\(0) <= NOT \CNT_ROLLNO_rtl_0|dffs\(0);
\ALT_INV_Selector12~7_dataout\ <= NOT \Selector12~7_dataout\;
\ALT_INV_Q.state_bit_2~dataout\ <= NOT \Q.state_bit_2~dataout\;
\ALT_INV_Q.state_bit_3~dataout\ <= NOT \Q.state_bit_3~dataout\;
\ALT_INV_Q.state_bit_0~dataout\ <= NOT \Q.state_bit_0~dataout\;
\ALT_INV_Q.state_bit_1~dataout\ <= NOT \Q.state_bit_1~dataout\;
ALT_INV_CNT_ATTENDANCE(2) <= NOT CNT_ATTENDANCE(2);
ALT_INV_CNT_CMD(2) <= NOT CNT_CMD(2);
ALT_INV_CNT_ATTENDANCE(1) <= NOT CNT_ATTENDANCE(1);
ALT_INV_CNT_CMD(1) <= NOT CNT_CMD(1);
\CNT_ROLLNO_rtl_0|ALT_INV_dffs\(2) <= NOT \CNT_ROLLNO_rtl_0|dffs\(2);
ALT_INV_CNT_ATTENDANCE(0) <= NOT CNT_ATTENDANCE(0);
ALT_INV_CNT_CMD(0) <= NOT CNT_CMD(0);
ALT_INV_CNT_CLK(4) <= NOT CNT_CLK(4);
ALT_INV_CNT_CLK(3) <= NOT CNT_CLK(3);
ALT_INV_CNT_CLK(1) <= NOT CNT_CLK(1);
ALT_INV_CNT_CLK(0) <= NOT CNT_CLK(0);

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

-- Location: LC53
\~GND~0\ : max_mcell
-- pragma translate_off
GENERIC MAP (
	operation_mode => "normal",
	output_mode => "comb",
	pexp_mode => "off")
-- pragma translate_on
PORT MAP (
	pterm0 => \~GND~0_pterm0_bus\,
	pterm1 => \~GND~0_pterm1_bus\,
	pterm2 => \~GND~0_pterm2_bus\,
	pterm3 => \~GND~0_pterm3_bus\,
	pterm4 => \~GND~0_pterm4_bus\,
	pterm5 => \~GND~0_pterm5_bus\,
	pxor => \~GND~0_pxor_bus\,
	pclk => \~GND~0_pclk_bus\,
	papre => \~GND~0_papre_bus\,
	paclr => \~GND~0_paclr_bus\,
	pena => \~GND~0_pena_bus\,
	dataout => \~GND~0~dataout\);

-- Location: LC25
\CNT_CLK[0]\ : max_mcell
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
	pterm0 => \CNT_CLK[0]_pterm0_bus\,
	pterm1 => \CNT_CLK[0]_pterm1_bus\,
	pterm2 => \CNT_CLK[0]_pterm2_bus\,
	pterm3 => \CNT_CLK[0]_pterm3_bus\,
	pterm4 => \CNT_CLK[0]_pterm4_bus\,
	pterm5 => \CNT_CLK[0]_pterm5_bus\,
	pxor => \CNT_CLK[0]_pxor_bus\,
	pclk => \CNT_CLK[0]_pclk_bus\,
	papre => \CNT_CLK[0]_papre_bus\,
	paclr => \CNT_CLK[0]_paclr_bus\,
	pena => \CNT_CLK[0]_pena_bus\,
	dataout => CNT_CLK(0));

-- Location: LC20
\CNT_CLK[1]\ : max_mcell
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
	pterm0 => \CNT_CLK[1]_pterm0_bus\,
	pterm1 => \CNT_CLK[1]_pterm1_bus\,
	pterm2 => \CNT_CLK[1]_pterm2_bus\,
	pterm3 => \CNT_CLK[1]_pterm3_bus\,
	pterm4 => \CNT_CLK[1]_pterm4_bus\,
	pterm5 => \CNT_CLK[1]_pterm5_bus\,
	pxor => \CNT_CLK[1]_pxor_bus\,
	pclk => \CNT_CLK[1]_pclk_bus\,
	papre => \CNT_CLK[1]_papre_bus\,
	paclr => \CNT_CLK[1]_paclr_bus\,
	pena => \CNT_CLK[1]_pena_bus\,
	dataout => CNT_CLK(1));

-- Location: LC32
\CNT_CLK[2]\ : max_mcell
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
	pterm0 => \CNT_CLK[2]_pterm0_bus\,
	pterm1 => \CNT_CLK[2]_pterm1_bus\,
	pterm2 => \CNT_CLK[2]_pterm2_bus\,
	pterm3 => \CNT_CLK[2]_pterm3_bus\,
	pterm4 => \CNT_CLK[2]_pterm4_bus\,
	pterm5 => \CNT_CLK[2]_pterm5_bus\,
	pxor => \CNT_CLK[2]_pxor_bus\,
	pclk => \CNT_CLK[2]_pclk_bus\,
	papre => \CNT_CLK[2]_papre_bus\,
	paclr => \CNT_CLK[2]_paclr_bus\,
	pena => \CNT_CLK[2]_pena_bus\,
	dataout => CNT_CLK(2));

-- Location: LC21
\CNT_CLK[3]\ : max_mcell
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
	pterm0 => \CNT_CLK[3]_pterm0_bus\,
	pterm1 => \CNT_CLK[3]_pterm1_bus\,
	pterm2 => \CNT_CLK[3]_pterm2_bus\,
	pterm3 => \CNT_CLK[3]_pterm3_bus\,
	pterm4 => \CNT_CLK[3]_pterm4_bus\,
	pterm5 => \CNT_CLK[3]_pterm5_bus\,
	pxor => \CNT_CLK[3]_pxor_bus\,
	pclk => \CNT_CLK[3]_pclk_bus\,
	papre => \CNT_CLK[3]_papre_bus\,
	paclr => \CNT_CLK[3]_paclr_bus\,
	pena => \CNT_CLK[3]_pena_bus\,
	dataout => CNT_CLK(3));

-- Location: LC22
\CNT_CLK[4]\ : max_mcell
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
	pterm0 => \CNT_CLK[4]_pterm0_bus\,
	pterm1 => \CNT_CLK[4]_pterm1_bus\,
	pterm2 => \CNT_CLK[4]_pterm2_bus\,
	pterm3 => \CNT_CLK[4]_pterm3_bus\,
	pterm4 => \CNT_CLK[4]_pterm4_bus\,
	pterm5 => \CNT_CLK[4]_pterm5_bus\,
	pxor => \CNT_CLK[4]_pxor_bus\,
	pclk => \CNT_CLK[4]_pclk_bus\,
	papre => \CNT_CLK[4]_papre_bus\,
	paclr => \CNT_CLK[4]_paclr_bus\,
	pena => \CNT_CLK[4]_pena_bus\,
	dataout => CNT_CLK(4));

-- Location: LC23
\CNT_CLK[5]\ : max_mcell
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
	pterm0 => \CNT_CLK[5]_pterm0_bus\,
	pterm1 => \CNT_CLK[5]_pterm1_bus\,
	pterm2 => \CNT_CLK[5]_pterm2_bus\,
	pterm3 => \CNT_CLK[5]_pterm3_bus\,
	pterm4 => \CNT_CLK[5]_pterm4_bus\,
	pterm5 => \CNT_CLK[5]_pterm5_bus\,
	pxor => \CNT_CLK[5]_pxor_bus\,
	pclk => \CNT_CLK[5]_pclk_bus\,
	papre => \CNT_CLK[5]_papre_bus\,
	paclr => \CNT_CLK[5]_paclr_bus\,
	pena => \CNT_CLK[5]_pena_bus\,
	dataout => CNT_CLK(5));

-- Location: LC26
\CNT_CLK[6]\ : max_mcell
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
	pterm0 => \CNT_CLK[6]_pterm0_bus\,
	pterm1 => \CNT_CLK[6]_pterm1_bus\,
	pterm2 => \CNT_CLK[6]_pterm2_bus\,
	pterm3 => \CNT_CLK[6]_pterm3_bus\,
	pterm4 => \CNT_CLK[6]_pterm4_bus\,
	pterm5 => \CNT_CLK[6]_pterm5_bus\,
	pxor => \CNT_CLK[6]_pxor_bus\,
	pclk => \CNT_CLK[6]_pclk_bus\,
	papre => \CNT_CLK[6]_papre_bus\,
	paclr => \CNT_CLK[6]_paclr_bus\,
	pena => \CNT_CLK[6]_pena_bus\,
	dataout => CNT_CLK(6));

-- Location: LC30
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

-- Location: PIN_4
\RSTN~I\ : max_io
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	operation_mode => "input",
	weak_pull_up => "false")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_RSTN,
	dataout => \RSTN~dataout\);

-- Location: LC2
\CNT_CMD[0]\ : max_mcell
-- pragma translate_off
GENERIC MAP (
	operation_mode => "normal",
	output_mode => "reg",
	pexp_mode => "off",
	power_up => "low",
	register_mode => "tff")
-- pragma translate_on
PORT MAP (
	pterm0 => \CNT_CMD[0]_pterm0_bus\,
	pterm1 => \CNT_CMD[0]_pterm1_bus\,
	pterm2 => \CNT_CMD[0]_pterm2_bus\,
	pterm3 => \CNT_CMD[0]_pterm3_bus\,
	pterm4 => \CNT_CMD[0]_pterm4_bus\,
	pterm5 => \CNT_CMD[0]_pterm5_bus\,
	pxor => \CNT_CMD[0]_pxor_bus\,
	pclk => \CNT_CMD[0]_pclk_bus\,
	papre => \CNT_CMD[0]_papre_bus\,
	paclr => \CNT_CMD[0]_paclr_bus\,
	pena => \CNT_CMD[0]_pena_bus\,
	dataout => CNT_CMD(0));

-- Location: LC15
\CNT_CMD[1]\ : max_mcell
-- pragma translate_off
GENERIC MAP (
	operation_mode => "normal",
	output_mode => "reg",
	pexp_mode => "off",
	power_up => "low",
	register_mode => "tff")
-- pragma translate_on
PORT MAP (
	pterm0 => \CNT_CMD[1]_pterm0_bus\,
	pterm1 => \CNT_CMD[1]_pterm1_bus\,
	pterm2 => \CNT_CMD[1]_pterm2_bus\,
	pterm3 => \CNT_CMD[1]_pterm3_bus\,
	pterm4 => \CNT_CMD[1]_pterm4_bus\,
	pterm5 => \CNT_CMD[1]_pterm5_bus\,
	pxor => \CNT_CMD[1]_pxor_bus\,
	pclk => \CNT_CMD[1]_pclk_bus\,
	papre => \CNT_CMD[1]_papre_bus\,
	paclr => \CNT_CMD[1]_paclr_bus\,
	pena => \CNT_CMD[1]_pena_bus\,
	dataout => CNT_CMD(1));

-- Location: LC3
\Q.state_bit_1~9\ : max_mcell
-- pragma translate_off
GENERIC MAP (
	operation_mode => "vcc",
	output_mode => "comb",
	pexp_mode => "on")
-- pragma translate_on
PORT MAP (
	pterm0 => \Q.state_bit_1~9_pterm0_bus\,
	pterm1 => \Q.state_bit_1~9_pterm1_bus\,
	pterm2 => \Q.state_bit_1~9_pterm2_bus\,
	pterm3 => \Q.state_bit_1~9_pterm3_bus\,
	pterm4 => \Q.state_bit_1~9_pterm4_bus\,
	pterm5 => \Q.state_bit_1~9_pterm5_bus\,
	pxor => \Q.state_bit_1~9_pxor_bus\,
	pclk => \Q.state_bit_1~9_pclk_bus\,
	papre => \Q.state_bit_1~9_papre_bus\,
	paclr => \Q.state_bit_1~9_paclr_bus\,
	pena => \Q.state_bit_1~9_pena_bus\,
	pexpout => \Q.state_bit_1~9_pexpout\);

-- Location: LC13
\CNT_CMD[2]\ : max_mcell
-- pragma translate_off
GENERIC MAP (
	operation_mode => "normal",
	output_mode => "reg",
	pexp_mode => "off",
	power_up => "low",
	register_mode => "tff")
-- pragma translate_on
PORT MAP (
	pterm0 => \CNT_CMD[2]_pterm0_bus\,
	pterm1 => \CNT_CMD[2]_pterm1_bus\,
	pterm2 => \CNT_CMD[2]_pterm2_bus\,
	pterm3 => \CNT_CMD[2]_pterm3_bus\,
	pterm4 => \CNT_CMD[2]_pterm4_bus\,
	pterm5 => \CNT_CMD[2]_pterm5_bus\,
	pxor => \CNT_CMD[2]_pxor_bus\,
	pclk => \CNT_CMD[2]_pclk_bus\,
	papre => \CNT_CMD[2]_papre_bus\,
	paclr => \CNT_CMD[2]_paclr_bus\,
	pena => \CNT_CMD[2]_pena_bus\,
	dataout => CNT_CMD(2));

-- Location: LC4
\Q.state_bit_1\ : max_mcell
-- pragma translate_off
GENERIC MAP (
	operation_mode => "invert",
	output_mode => "reg",
	pexp_mode => "off",
	power_up => "low",
	register_mode => "tff")
-- pragma translate_on
PORT MAP (
	pexpin => \Q.state_bit_1~9_pexpout\,
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

-- Location: LC18
\CNT_ROLLNO_rtl_0|dffs[0]\ : max_mcell
-- pragma translate_off
GENERIC MAP (
	operation_mode => "normal",
	output_mode => "reg",
	pexp_mode => "off",
	power_up => "low",
	register_mode => "tff")
-- pragma translate_on
PORT MAP (
	pterm0 => \CNT_ROLLNO_rtl_0|dffs[0]_pterm0_bus\,
	pterm1 => \CNT_ROLLNO_rtl_0|dffs[0]_pterm1_bus\,
	pterm2 => \CNT_ROLLNO_rtl_0|dffs[0]_pterm2_bus\,
	pterm3 => \CNT_ROLLNO_rtl_0|dffs[0]_pterm3_bus\,
	pterm4 => \CNT_ROLLNO_rtl_0|dffs[0]_pterm4_bus\,
	pterm5 => \CNT_ROLLNO_rtl_0|dffs[0]_pterm5_bus\,
	pxor => \CNT_ROLLNO_rtl_0|dffs[0]_pxor_bus\,
	pclk => \CNT_ROLLNO_rtl_0|dffs[0]_pclk_bus\,
	papre => \CNT_ROLLNO_rtl_0|dffs[0]_papre_bus\,
	paclr => \CNT_ROLLNO_rtl_0|dffs[0]_paclr_bus\,
	pena => \CNT_ROLLNO_rtl_0|dffs[0]_pena_bus\,
	dataout => \CNT_ROLLNO_rtl_0|dffs\(0));

-- Location: LC12
\CNT_ROLLNO_rtl_0|dffs[1]\ : max_mcell
-- pragma translate_off
GENERIC MAP (
	operation_mode => "normal",
	output_mode => "reg",
	pexp_mode => "off",
	power_up => "low",
	register_mode => "tff")
-- pragma translate_on
PORT MAP (
	pterm0 => \CNT_ROLLNO_rtl_0|dffs[1]_pterm0_bus\,
	pterm1 => \CNT_ROLLNO_rtl_0|dffs[1]_pterm1_bus\,
	pterm2 => \CNT_ROLLNO_rtl_0|dffs[1]_pterm2_bus\,
	pterm3 => \CNT_ROLLNO_rtl_0|dffs[1]_pterm3_bus\,
	pterm4 => \CNT_ROLLNO_rtl_0|dffs[1]_pterm4_bus\,
	pterm5 => \CNT_ROLLNO_rtl_0|dffs[1]_pterm5_bus\,
	pxor => \CNT_ROLLNO_rtl_0|dffs[1]_pxor_bus\,
	pclk => \CNT_ROLLNO_rtl_0|dffs[1]_pclk_bus\,
	papre => \CNT_ROLLNO_rtl_0|dffs[1]_papre_bus\,
	paclr => \CNT_ROLLNO_rtl_0|dffs[1]_paclr_bus\,
	pena => \CNT_ROLLNO_rtl_0|dffs[1]_pena_bus\,
	dataout => \CNT_ROLLNO_rtl_0|dffs\(1));

-- Location: LC16
\CNT_ROLLNO_rtl_0|dffs[2]\ : max_mcell
-- pragma translate_off
GENERIC MAP (
	operation_mode => "normal",
	output_mode => "reg",
	pexp_mode => "off",
	power_up => "low",
	register_mode => "tff")
-- pragma translate_on
PORT MAP (
	pterm0 => \CNT_ROLLNO_rtl_0|dffs[2]_pterm0_bus\,
	pterm1 => \CNT_ROLLNO_rtl_0|dffs[2]_pterm1_bus\,
	pterm2 => \CNT_ROLLNO_rtl_0|dffs[2]_pterm2_bus\,
	pterm3 => \CNT_ROLLNO_rtl_0|dffs[2]_pterm3_bus\,
	pterm4 => \CNT_ROLLNO_rtl_0|dffs[2]_pterm4_bus\,
	pterm5 => \CNT_ROLLNO_rtl_0|dffs[2]_pterm5_bus\,
	pxor => \CNT_ROLLNO_rtl_0|dffs[2]_pxor_bus\,
	pclk => \CNT_ROLLNO_rtl_0|dffs[2]_pclk_bus\,
	papre => \CNT_ROLLNO_rtl_0|dffs[2]_papre_bus\,
	paclr => \CNT_ROLLNO_rtl_0|dffs[2]_paclr_bus\,
	pena => \CNT_ROLLNO_rtl_0|dffs[2]_pena_bus\,
	dataout => \CNT_ROLLNO_rtl_0|dffs\(2));

-- Location: LC1
\CNT_ROLLNO_rtl_0|dffs[3]\ : max_mcell
-- pragma translate_off
GENERIC MAP (
	operation_mode => "normal",
	output_mode => "reg",
	pexp_mode => "off",
	power_up => "low",
	register_mode => "tff")
-- pragma translate_on
PORT MAP (
	pterm0 => \CNT_ROLLNO_rtl_0|dffs[3]_pterm0_bus\,
	pterm1 => \CNT_ROLLNO_rtl_0|dffs[3]_pterm1_bus\,
	pterm2 => \CNT_ROLLNO_rtl_0|dffs[3]_pterm2_bus\,
	pterm3 => \CNT_ROLLNO_rtl_0|dffs[3]_pterm3_bus\,
	pterm4 => \CNT_ROLLNO_rtl_0|dffs[3]_pterm4_bus\,
	pterm5 => \CNT_ROLLNO_rtl_0|dffs[3]_pterm5_bus\,
	pxor => \CNT_ROLLNO_rtl_0|dffs[3]_pxor_bus\,
	pclk => \CNT_ROLLNO_rtl_0|dffs[3]_pclk_bus\,
	papre => \CNT_ROLLNO_rtl_0|dffs[3]_papre_bus\,
	paclr => \CNT_ROLLNO_rtl_0|dffs[3]_paclr_bus\,
	pena => \CNT_ROLLNO_rtl_0|dffs[3]_pena_bus\,
	dataout => \CNT_ROLLNO_rtl_0|dffs\(3));

-- Location: LC9
\Q.state_bit_0~9\ : max_mcell
-- pragma translate_off
GENERIC MAP (
	operation_mode => "vcc",
	output_mode => "comb",
	pexp_mode => "on")
-- pragma translate_on
PORT MAP (
	pterm0 => \Q.state_bit_0~9_pterm0_bus\,
	pterm1 => \Q.state_bit_0~9_pterm1_bus\,
	pterm2 => \Q.state_bit_0~9_pterm2_bus\,
	pterm3 => \Q.state_bit_0~9_pterm3_bus\,
	pterm4 => \Q.state_bit_0~9_pterm4_bus\,
	pterm5 => \Q.state_bit_0~9_pterm5_bus\,
	pxor => \Q.state_bit_0~9_pxor_bus\,
	pclk => \Q.state_bit_0~9_pclk_bus\,
	papre => \Q.state_bit_0~9_papre_bus\,
	paclr => \Q.state_bit_0~9_paclr_bus\,
	pena => \Q.state_bit_0~9_pena_bus\,
	pexpout => \Q.state_bit_0~9_pexpout\);

-- Location: LC10
\Q.state_bit_0\ : max_mcell
-- pragma translate_off
GENERIC MAP (
	operation_mode => "normal",
	output_mode => "reg",
	pexp_mode => "off",
	power_up => "low",
	register_mode => "dff")
-- pragma translate_on
PORT MAP (
	pexpin => \Q.state_bit_0~9_pexpout\,
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

-- Location: LC7
\Q.state_bit_2\ : max_mcell
-- pragma translate_off
GENERIC MAP (
	operation_mode => "normal",
	output_mode => "reg",
	pexp_mode => "off",
	power_up => "low",
	register_mode => "tff")
-- pragma translate_on
PORT MAP (
	pterm0 => \Q.state_bit_2_pterm0_bus\,
	pterm1 => \Q.state_bit_2_pterm1_bus\,
	pterm2 => \Q.state_bit_2_pterm2_bus\,
	pterm3 => \Q.state_bit_2_pterm3_bus\,
	pterm4 => \Q.state_bit_2_pterm4_bus\,
	pterm5 => \Q.state_bit_2_pterm5_bus\,
	pxor => \Q.state_bit_2_pxor_bus\,
	pclk => \Q.state_bit_2_pclk_bus\,
	papre => \Q.state_bit_2_papre_bus\,
	paclr => \Q.state_bit_2_paclr_bus\,
	pena => \Q.state_bit_2_pena_bus\,
	dataout => \Q.state_bit_2~dataout\);

-- Location: LC8
\Q.state_bit_3\ : max_mcell
-- pragma translate_off
GENERIC MAP (
	operation_mode => "normal",
	output_mode => "reg",
	pexp_mode => "off",
	power_up => "low",
	register_mode => "tff")
-- pragma translate_on
PORT MAP (
	pterm0 => \Q.state_bit_3_pterm0_bus\,
	pterm1 => \Q.state_bit_3_pterm1_bus\,
	pterm2 => \Q.state_bit_3_pterm2_bus\,
	pterm3 => \Q.state_bit_3_pterm3_bus\,
	pterm4 => \Q.state_bit_3_pterm4_bus\,
	pterm5 => \Q.state_bit_3_pterm5_bus\,
	pxor => \Q.state_bit_3_pxor_bus\,
	pclk => \Q.state_bit_3_pclk_bus\,
	papre => \Q.state_bit_3_papre_bus\,
	paclr => \Q.state_bit_3_paclr_bus\,
	pena => \Q.state_bit_3_pena_bus\,
	dataout => \Q.state_bit_3~dataout\);

-- Location: LC29
\CNT_ATTENDANCE[0]\ : max_mcell
-- pragma translate_off
GENERIC MAP (
	operation_mode => "normal",
	output_mode => "reg",
	pexp_mode => "off",
	power_up => "low",
	register_mode => "tff")
-- pragma translate_on
PORT MAP (
	pterm0 => \CNT_ATTENDANCE[0]_pterm0_bus\,
	pterm1 => \CNT_ATTENDANCE[0]_pterm1_bus\,
	pterm2 => \CNT_ATTENDANCE[0]_pterm2_bus\,
	pterm3 => \CNT_ATTENDANCE[0]_pterm3_bus\,
	pterm4 => \CNT_ATTENDANCE[0]_pterm4_bus\,
	pterm5 => \CNT_ATTENDANCE[0]_pterm5_bus\,
	pxor => \CNT_ATTENDANCE[0]_pxor_bus\,
	pclk => \CNT_ATTENDANCE[0]_pclk_bus\,
	papre => \CNT_ATTENDANCE[0]_papre_bus\,
	paclr => \CNT_ATTENDANCE[0]_paclr_bus\,
	pena => \CNT_ATTENDANCE[0]_pena_bus\,
	dataout => CNT_ATTENDANCE(0));

-- Location: LC14
\CNT_ATTENDANCE[1]\ : max_mcell
-- pragma translate_off
GENERIC MAP (
	operation_mode => "normal",
	output_mode => "reg",
	pexp_mode => "off",
	power_up => "low",
	register_mode => "tff")
-- pragma translate_on
PORT MAP (
	pterm0 => \CNT_ATTENDANCE[1]_pterm0_bus\,
	pterm1 => \CNT_ATTENDANCE[1]_pterm1_bus\,
	pterm2 => \CNT_ATTENDANCE[1]_pterm2_bus\,
	pterm3 => \CNT_ATTENDANCE[1]_pterm3_bus\,
	pterm4 => \CNT_ATTENDANCE[1]_pterm4_bus\,
	pterm5 => \CNT_ATTENDANCE[1]_pterm5_bus\,
	pxor => \CNT_ATTENDANCE[1]_pxor_bus\,
	pclk => \CNT_ATTENDANCE[1]_pclk_bus\,
	papre => \CNT_ATTENDANCE[1]_papre_bus\,
	paclr => \CNT_ATTENDANCE[1]_paclr_bus\,
	pena => \CNT_ATTENDANCE[1]_pena_bus\,
	dataout => CNT_ATTENDANCE(1));

-- Location: LC11
\CNT_ATTENDANCE[2]\ : max_mcell
-- pragma translate_off
GENERIC MAP (
	operation_mode => "normal",
	output_mode => "reg",
	pexp_mode => "off",
	power_up => "low",
	register_mode => "tff")
-- pragma translate_on
PORT MAP (
	pterm0 => \CNT_ATTENDANCE[2]_pterm0_bus\,
	pterm1 => \CNT_ATTENDANCE[2]_pterm1_bus\,
	pterm2 => \CNT_ATTENDANCE[2]_pterm2_bus\,
	pterm3 => \CNT_ATTENDANCE[2]_pterm3_bus\,
	pterm4 => \CNT_ATTENDANCE[2]_pterm4_bus\,
	pterm5 => \CNT_ATTENDANCE[2]_pterm5_bus\,
	pxor => \CNT_ATTENDANCE[2]_pxor_bus\,
	pclk => \CNT_ATTENDANCE[2]_pclk_bus\,
	papre => \CNT_ATTENDANCE[2]_papre_bus\,
	paclr => \CNT_ATTENDANCE[2]_paclr_bus\,
	pena => \CNT_ATTENDANCE[2]_pena_bus\,
	dataout => CNT_ATTENDANCE(2));

-- Location: LC34
\Selector13~4\ : max_mcell
-- pragma translate_off
GENERIC MAP (
	operation_mode => "normal",
	output_mode => "comb",
	pexp_mode => "off")
-- pragma translate_on
PORT MAP (
	pterm0 => \Selector13~4_pterm0_bus\,
	pterm1 => \Selector13~4_pterm1_bus\,
	pterm2 => \Selector13~4_pterm2_bus\,
	pterm3 => \Selector13~4_pterm3_bus\,
	pterm4 => \Selector13~4_pterm4_bus\,
	pterm5 => \Selector13~4_pterm5_bus\,
	pxor => \Selector13~4_pxor_bus\,
	pclk => \Selector13~4_pclk_bus\,
	papre => \Selector13~4_papre_bus\,
	paclr => \Selector13~4_paclr_bus\,
	pena => \Selector13~4_pena_bus\,
	dataout => \Selector13~4_dataout\);

-- Location: LC44
\Selector12~14\ : max_mcell
-- pragma translate_off
GENERIC MAP (
	operation_mode => "vcc",
	output_mode => "comb",
	pexp_mode => "on")
-- pragma translate_on
PORT MAP (
	pterm0 => \Selector12~14_pterm0_bus\,
	pterm1 => \Selector12~14_pterm1_bus\,
	pterm2 => \Selector12~14_pterm2_bus\,
	pterm3 => \Selector12~14_pterm3_bus\,
	pterm4 => \Selector12~14_pterm4_bus\,
	pterm5 => \Selector12~14_pterm5_bus\,
	pxor => \Selector12~14_pxor_bus\,
	pclk => \Selector12~14_pclk_bus\,
	papre => \Selector12~14_papre_bus\,
	paclr => \Selector12~14_paclr_bus\,
	pena => \Selector12~14_pena_bus\,
	pexpout => \Selector12~14_pexpout\);

-- Location: LC45
\Selector12~7\ : max_mcell
-- pragma translate_off
GENERIC MAP (
	operation_mode => "normal",
	output_mode => "comb",
	pexp_mode => "off")
-- pragma translate_on
PORT MAP (
	pexpin => \Selector12~14_pexpout\,
	pterm0 => \Selector12~7_pterm0_bus\,
	pterm1 => \Selector12~7_pterm1_bus\,
	pterm2 => \Selector12~7_pterm2_bus\,
	pterm3 => \Selector12~7_pterm3_bus\,
	pterm4 => \Selector12~7_pterm4_bus\,
	pterm5 => \Selector12~7_pterm5_bus\,
	pxor => \Selector12~7_pxor_bus\,
	pclk => \Selector12~7_pclk_bus\,
	papre => \Selector12~7_papre_bus\,
	paclr => \Selector12~7_paclr_bus\,
	pena => \Selector12~7_pena_bus\,
	dataout => \Selector12~7_dataout\);

-- Location: LC40
\D[3]$latch~6\ : max_mcell
-- pragma translate_off
GENERIC MAP (
	operation_mode => "normal",
	output_mode => "comb",
	pexp_mode => "off")
-- pragma translate_on
PORT MAP (
	pterm0 => \D[3]$latch~6_pterm0_bus\,
	pterm1 => \D[3]$latch~6_pterm1_bus\,
	pterm2 => \D[3]$latch~6_pterm2_bus\,
	pterm3 => \D[3]$latch~6_pterm3_bus\,
	pterm4 => \D[3]$latch~6_pterm4_bus\,
	pterm5 => \D[3]$latch~6_pterm5_bus\,
	pxor => \D[3]$latch~6_pxor_bus\,
	pclk => \D[3]$latch~6_pclk_bus\,
	papre => \D[3]$latch~6_papre_bus\,
	paclr => \D[3]$latch~6_paclr_bus\,
	pena => \D[3]$latch~6_pena_bus\,
	dataout => \D[3]$latch~6_dataout\);

-- Location: LC17
\Selector19~1\ : max_mcell
-- pragma translate_off
GENERIC MAP (
	operation_mode => "normal",
	output_mode => "comb",
	pexp_mode => "off")
-- pragma translate_on
PORT MAP (
	pterm0 => \Selector19~1_pterm0_bus\,
	pterm1 => \Selector19~1_pterm1_bus\,
	pterm2 => \Selector19~1_pterm2_bus\,
	pterm3 => \Selector19~1_pterm3_bus\,
	pterm4 => \Selector19~1_pterm4_bus\,
	pterm5 => \Selector19~1_pterm5_bus\,
	pxor => \Selector19~1_pxor_bus\,
	pclk => \Selector19~1_pclk_bus\,
	papre => \Selector19~1_papre_bus\,
	paclr => \Selector19~1_paclr_bus\,
	pena => \Selector19~1_pena_bus\,
	dataout => \Selector19~1_dataout\);

-- Location: LC35
\D[6]$latch~6\ : max_mcell
-- pragma translate_off
GENERIC MAP (
	operation_mode => "normal",
	output_mode => "comb",
	pexp_mode => "off")
-- pragma translate_on
PORT MAP (
	pterm0 => \D[6]$latch~6_pterm0_bus\,
	pterm1 => \D[6]$latch~6_pterm1_bus\,
	pterm2 => \D[6]$latch~6_pterm2_bus\,
	pterm3 => \D[6]$latch~6_pterm3_bus\,
	pterm4 => \D[6]$latch~6_pterm4_bus\,
	pterm5 => \D[6]$latch~6_pterm5_bus\,
	pxor => \D[6]$latch~6_pxor_bus\,
	pclk => \D[6]$latch~6_pclk_bus\,
	papre => \D[6]$latch~6_papre_bus\,
	paclr => \D[6]$latch~6_paclr_bus\,
	pena => \D[6]$latch~6_pena_bus\,
	dataout => \D[6]$latch~6_dataout\);

-- Location: LC48
\Selector21~3\ : max_mcell
-- pragma translate_off
GENERIC MAP (
	operation_mode => "normal",
	output_mode => "comb",
	pexp_mode => "off")
-- pragma translate_on
PORT MAP (
	pterm0 => \Selector21~3_pterm0_bus\,
	pterm1 => \Selector21~3_pterm1_bus\,
	pterm2 => \Selector21~3_pterm2_bus\,
	pterm3 => \Selector21~3_pterm3_bus\,
	pterm4 => \Selector21~3_pterm4_bus\,
	pterm5 => \Selector21~3_pterm5_bus\,
	pxor => \Selector21~3_pxor_bus\,
	pclk => \Selector21~3_pclk_bus\,
	papre => \Selector21~3_papre_bus\,
	paclr => \Selector21~3_paclr_bus\,
	pena => \Selector21~3_pena_bus\,
	dataout => \Selector21~3_dataout\);

-- Location: LC33
\D[7]$latch~6\ : max_mcell
-- pragma translate_off
GENERIC MAP (
	operation_mode => "normal",
	output_mode => "comb",
	pexp_mode => "off")
-- pragma translate_on
PORT MAP (
	pterm0 => \D[7]$latch~6_pterm0_bus\,
	pterm1 => \D[7]$latch~6_pterm1_bus\,
	pterm2 => \D[7]$latch~6_pterm2_bus\,
	pterm3 => \D[7]$latch~6_pterm3_bus\,
	pterm4 => \D[7]$latch~6_pterm4_bus\,
	pterm5 => \D[7]$latch~6_pterm5_bus\,
	pxor => \D[7]$latch~6_pxor_bus\,
	pclk => \D[7]$latch~6_pclk_bus\,
	papre => \D[7]$latch~6_papre_bus\,
	paclr => \D[7]$latch~6_paclr_bus\,
	pena => \D[7]$latch~6_pena_bus\,
	dataout => \D[7]$latch~6_dataout\);

-- Location: LC19
\WideOr9~1\ : max_mcell
-- pragma translate_off
GENERIC MAP (
	operation_mode => "normal",
	output_mode => "comb",
	pexp_mode => "off")
-- pragma translate_on
PORT MAP (
	pterm0 => \WideOr9~1_pterm0_bus\,
	pterm1 => \WideOr9~1_pterm1_bus\,
	pterm2 => \WideOr9~1_pterm2_bus\,
	pterm3 => \WideOr9~1_pterm3_bus\,
	pterm4 => \WideOr9~1_pterm4_bus\,
	pterm5 => \WideOr9~1_pterm5_bus\,
	pxor => \WideOr9~1_pxor_bus\,
	pclk => \WideOr9~1_pclk_bus\,
	papre => \WideOr9~1_papre_bus\,
	paclr => \WideOr9~1_paclr_bus\,
	pena => \WideOr9~1_pena_bus\,
	dataout => \WideOr9~1_dataout\);

-- Location: LC57
\EN$latch~6\ : max_mcell
-- pragma translate_off
GENERIC MAP (
	operation_mode => "normal",
	output_mode => "comb",
	pexp_mode => "off")
-- pragma translate_on
PORT MAP (
	pterm0 => \EN$latch~6_pterm0_bus\,
	pterm1 => \EN$latch~6_pterm1_bus\,
	pterm2 => \EN$latch~6_pterm2_bus\,
	pterm3 => \EN$latch~6_pterm3_bus\,
	pterm4 => \EN$latch~6_pterm4_bus\,
	pterm5 => \EN$latch~6_pterm5_bus\,
	pxor => \EN$latch~6_pxor_bus\,
	pclk => \EN$latch~6_pclk_bus\,
	papre => \EN$latch~6_papre_bus\,
	paclr => \EN$latch~6_paclr_bus\,
	pena => \EN$latch~6_pena_bus\,
	dataout => \EN$latch~6_dataout\);

-- Location: LC47
\Selector15~6\ : max_mcell
-- pragma translate_off
GENERIC MAP (
	operation_mode => "normal",
	output_mode => "comb",
	pexp_mode => "off")
-- pragma translate_on
PORT MAP (
	pterm0 => \Selector15~6_pterm0_bus\,
	pterm1 => \Selector15~6_pterm1_bus\,
	pterm2 => \Selector15~6_pterm2_bus\,
	pterm3 => \Selector15~6_pterm3_bus\,
	pterm4 => \Selector15~6_pterm4_bus\,
	pterm5 => \Selector15~6_pterm5_bus\,
	pxor => \Selector15~6_pxor_bus\,
	pclk => \Selector15~6_pclk_bus\,
	papre => \Selector15~6_papre_bus\,
	paclr => \Selector15~6_paclr_bus\,
	pena => \Selector15~6_pena_bus\,
	dataout => \Selector15~6_dataout\);

-- Location: LC36
\D[5]$latch~6\ : max_mcell
-- pragma translate_off
GENERIC MAP (
	operation_mode => "normal",
	output_mode => "comb",
	pexp_mode => "off")
-- pragma translate_on
PORT MAP (
	pterm0 => \D[5]$latch~6_pterm0_bus\,
	pterm1 => \D[5]$latch~6_pterm1_bus\,
	pterm2 => \D[5]$latch~6_pterm2_bus\,
	pterm3 => \D[5]$latch~6_pterm3_bus\,
	pterm4 => \D[5]$latch~6_pterm4_bus\,
	pterm5 => \D[5]$latch~6_pterm5_bus\,
	pxor => \D[5]$latch~6_pxor_bus\,
	pclk => \D[5]$latch~6_pclk_bus\,
	papre => \D[5]$latch~6_papre_bus\,
	paclr => \D[5]$latch~6_paclr_bus\,
	pena => \D[5]$latch~6_pena_bus\,
	dataout => \D[5]$latch~6_dataout\);

-- Location: LC24
\Selector6~2\ : max_mcell
-- pragma translate_off
GENERIC MAP (
	operation_mode => "normal",
	output_mode => "comb",
	pexp_mode => "off")
-- pragma translate_on
PORT MAP (
	pterm0 => \Selector6~2_pterm0_bus\,
	pterm1 => \Selector6~2_pterm1_bus\,
	pterm2 => \Selector6~2_pterm2_bus\,
	pterm3 => \Selector6~2_pterm3_bus\,
	pterm4 => \Selector6~2_pterm4_bus\,
	pterm5 => \Selector6~2_pterm5_bus\,
	pxor => \Selector6~2_pxor_bus\,
	pclk => \Selector6~2_pclk_bus\,
	papre => \Selector6~2_papre_bus\,
	paclr => \Selector6~2_paclr_bus\,
	pena => \Selector6~2_pena_bus\,
	dataout => \Selector6~2_dataout\);

-- Location: LC51
\RS$latch~6\ : max_mcell
-- pragma translate_off
GENERIC MAP (
	operation_mode => "normal",
	output_mode => "comb",
	pexp_mode => "off")
-- pragma translate_on
PORT MAP (
	pterm0 => \RS$latch~6_pterm0_bus\,
	pterm1 => \RS$latch~6_pterm1_bus\,
	pterm2 => \RS$latch~6_pterm2_bus\,
	pterm3 => \RS$latch~6_pterm3_bus\,
	pterm4 => \RS$latch~6_pterm4_bus\,
	pterm5 => \RS$latch~6_pterm5_bus\,
	pxor => \RS$latch~6_pxor_bus\,
	pclk => \RS$latch~6_pclk_bus\,
	papre => \RS$latch~6_papre_bus\,
	paclr => \RS$latch~6_paclr_bus\,
	pena => \RS$latch~6_pena_bus\,
	dataout => \RS$latch~6_dataout\);

-- Location: SEXP36
\Selector15~5sexpand1\ : max_sexp
PORT MAP (
	datain => \Selector15~5sexpand1_datain_bus\,
	dataout => \Selector15~5sexpand1_dataout\);

-- Location: SEXP35
\Selector15~5sexpand2\ : max_sexp
PORT MAP (
	datain => \Selector15~5sexpand2_datain_bus\,
	dataout => \Selector15~5sexpand2_dataout\);

-- Location: SEXP37
\Selector15~5sexpand3\ : max_sexp
PORT MAP (
	datain => \Selector15~5sexpand3_datain_bus\,
	dataout => \Selector15~5sexpand3_dataout\);

-- Location: SEXP33
\Selector15~5sexpand4\ : max_sexp
PORT MAP (
	datain => \Selector15~5sexpand4_datain_bus\,
	dataout => \Selector15~5sexpand4_dataout\);

-- Location: SEXP34
\Selector15~5sexpand5\ : max_sexp
PORT MAP (
	datain => \Selector15~5sexpand5_datain_bus\,
	dataout => \Selector15~5sexpand5_dataout\);

-- Location: LC37
\D[4]$latch~6\ : max_mcell
-- pragma translate_off
GENERIC MAP (
	operation_mode => "normal",
	output_mode => "comb",
	pexp_mode => "off")
-- pragma translate_on
PORT MAP (
	pterm0 => \D[4]$latch~6_pterm0_bus\,
	pterm1 => \D[4]$latch~6_pterm1_bus\,
	pterm2 => \D[4]$latch~6_pterm2_bus\,
	pterm3 => \D[4]$latch~6_pterm3_bus\,
	pterm4 => \D[4]$latch~6_pterm4_bus\,
	pterm5 => \D[4]$latch~6_pterm5_bus\,
	pxor => \D[4]$latch~6_pxor_bus\,
	pclk => \D[4]$latch~6_pclk_bus\,
	papre => \D[4]$latch~6_papre_bus\,
	paclr => \D[4]$latch~6_paclr_bus\,
	pena => \D[4]$latch~6_pena_bus\,
	dataout => \D[4]$latch~6_dataout\);

-- Location: LC38
\Selector11~12\ : max_mcell
-- pragma translate_off
GENERIC MAP (
	operation_mode => "vcc",
	output_mode => "comb",
	pexp_mode => "on")
-- pragma translate_on
PORT MAP (
	pterm0 => \Selector11~12_pterm0_bus\,
	pterm1 => \Selector11~12_pterm1_bus\,
	pterm2 => \Selector11~12_pterm2_bus\,
	pterm3 => \Selector11~12_pterm3_bus\,
	pterm4 => \Selector11~12_pterm4_bus\,
	pterm5 => \Selector11~12_pterm5_bus\,
	pxor => \Selector11~12_pxor_bus\,
	pclk => \Selector11~12_pclk_bus\,
	papre => \Selector11~12_papre_bus\,
	paclr => \Selector11~12_paclr_bus\,
	pena => \Selector11~12_pena_bus\,
	pexpout => \Selector11~12_pexpout\);

-- Location: LC39
\Selector11~5\ : max_mcell
-- pragma translate_off
GENERIC MAP (
	operation_mode => "normal",
	output_mode => "comb",
	pexp_mode => "off")
-- pragma translate_on
PORT MAP (
	pexpin => \Selector11~12_pexpout\,
	pterm0 => \Selector11~5_pterm0_bus\,
	pterm1 => \Selector11~5_pterm1_bus\,
	pterm2 => \Selector11~5_pterm2_bus\,
	pterm3 => \Selector11~5_pterm3_bus\,
	pterm4 => \Selector11~5_pterm4_bus\,
	pterm5 => \Selector11~5_pterm5_bus\,
	pxor => \Selector11~5_pxor_bus\,
	pclk => \Selector11~5_pclk_bus\,
	papre => \Selector11~5_papre_bus\,
	paclr => \Selector11~5_paclr_bus\,
	pena => \Selector11~5_pena_bus\,
	dataout => \Selector11~5_dataout\);

-- Location: LC41
\D[2]$latch~6\ : max_mcell
-- pragma translate_off
GENERIC MAP (
	operation_mode => "normal",
	output_mode => "comb",
	pexp_mode => "off")
-- pragma translate_on
PORT MAP (
	pterm0 => \D[2]$latch~6_pterm0_bus\,
	pterm1 => \D[2]$latch~6_pterm1_bus\,
	pterm2 => \D[2]$latch~6_pterm2_bus\,
	pterm3 => \D[2]$latch~6_pterm3_bus\,
	pterm4 => \D[2]$latch~6_pterm4_bus\,
	pterm5 => \D[2]$latch~6_pterm5_bus\,
	pxor => \D[2]$latch~6_pxor_bus\,
	pclk => \D[2]$latch~6_pclk_bus\,
	papre => \D[2]$latch~6_papre_bus\,
	paclr => \D[2]$latch~6_paclr_bus\,
	pena => \D[2]$latch~6_pena_bus\,
	dataout => \D[2]$latch~6_dataout\);

-- Location: LC5
\Selector8~12\ : max_mcell
-- pragma translate_off
GENERIC MAP (
	operation_mode => "vcc",
	output_mode => "comb",
	pexp_mode => "on")
-- pragma translate_on
PORT MAP (
	pterm0 => \Selector8~12_pterm0_bus\,
	pterm1 => \Selector8~12_pterm1_bus\,
	pterm2 => \Selector8~12_pterm2_bus\,
	pterm3 => \Selector8~12_pterm3_bus\,
	pterm4 => \Selector8~12_pterm4_bus\,
	pterm5 => \Selector8~12_pterm5_bus\,
	pxor => \Selector8~12_pxor_bus\,
	pclk => \Selector8~12_pclk_bus\,
	papre => \Selector8~12_papre_bus\,
	paclr => \Selector8~12_paclr_bus\,
	pena => \Selector8~12_pena_bus\,
	pexpout => \Selector8~12_pexpout\);

-- Location: LC6
\Selector8~5\ : max_mcell
-- pragma translate_off
GENERIC MAP (
	operation_mode => "normal",
	output_mode => "comb",
	pexp_mode => "off")
-- pragma translate_on
PORT MAP (
	pexpin => \Selector8~12_pexpout\,
	pterm0 => \Selector8~5_pterm0_bus\,
	pterm1 => \Selector8~5_pterm1_bus\,
	pterm2 => \Selector8~5_pterm2_bus\,
	pterm3 => \Selector8~5_pterm3_bus\,
	pterm4 => \Selector8~5_pterm4_bus\,
	pterm5 => \Selector8~5_pterm5_bus\,
	pxor => \Selector8~5_pxor_bus\,
	pclk => \Selector8~5_pclk_bus\,
	papre => \Selector8~5_papre_bus\,
	paclr => \Selector8~5_paclr_bus\,
	pena => \Selector8~5_pena_bus\,
	dataout => \Selector8~5_dataout\);

-- Location: LC49
\D[0]$latch~6\ : max_mcell
-- pragma translate_off
GENERIC MAP (
	operation_mode => "normal",
	output_mode => "comb",
	pexp_mode => "off")
-- pragma translate_on
PORT MAP (
	pterm0 => \D[0]$latch~6_pterm0_bus\,
	pterm1 => \D[0]$latch~6_pterm1_bus\,
	pterm2 => \D[0]$latch~6_pterm2_bus\,
	pterm3 => \D[0]$latch~6_pterm3_bus\,
	pterm4 => \D[0]$latch~6_pterm4_bus\,
	pterm5 => \D[0]$latch~6_pterm5_bus\,
	pxor => \D[0]$latch~6_pxor_bus\,
	pclk => \D[0]$latch~6_pclk_bus\,
	papre => \D[0]$latch~6_papre_bus\,
	paclr => \D[0]$latch~6_paclr_bus\,
	pena => \D[0]$latch~6_pena_bus\,
	dataout => \D[0]$latch~6_dataout\);

-- Location: LC42
\Selector9~12\ : max_mcell
-- pragma translate_off
GENERIC MAP (
	operation_mode => "vcc",
	output_mode => "comb",
	pexp_mode => "on")
-- pragma translate_on
PORT MAP (
	pterm0 => \Selector9~12_pterm0_bus\,
	pterm1 => \Selector9~12_pterm1_bus\,
	pterm2 => \Selector9~12_pterm2_bus\,
	pterm3 => \Selector9~12_pterm3_bus\,
	pterm4 => \Selector9~12_pterm4_bus\,
	pterm5 => \Selector9~12_pterm5_bus\,
	pxor => \Selector9~12_pxor_bus\,
	pclk => \Selector9~12_pclk_bus\,
	papre => \Selector9~12_papre_bus\,
	paclr => \Selector9~12_paclr_bus\,
	pena => \Selector9~12_pena_bus\,
	pexpout => \Selector9~12_pexpout\);

-- Location: LC43
\Selector9~5\ : max_mcell
-- pragma translate_off
GENERIC MAP (
	operation_mode => "normal",
	output_mode => "comb",
	pexp_mode => "off")
-- pragma translate_on
PORT MAP (
	pexpin => \Selector9~12_pexpout\,
	pterm0 => \Selector9~5_pterm0_bus\,
	pterm1 => \Selector9~5_pterm1_bus\,
	pterm2 => \Selector9~5_pterm2_bus\,
	pterm3 => \Selector9~5_pterm3_bus\,
	pterm4 => \Selector9~5_pterm4_bus\,
	pterm5 => \Selector9~5_pterm5_bus\,
	pxor => \Selector9~5_pxor_bus\,
	pclk => \Selector9~5_pclk_bus\,
	papre => \Selector9~5_papre_bus\,
	paclr => \Selector9~5_paclr_bus\,
	pena => \Selector9~5_pena_bus\,
	dataout => \Selector9~5_dataout\);

-- Location: LC46
\D[1]$latch~6\ : max_mcell
-- pragma translate_off
GENERIC MAP (
	operation_mode => "normal",
	output_mode => "comb",
	pexp_mode => "off")
-- pragma translate_on
PORT MAP (
	pterm0 => \D[1]$latch~6_pterm0_bus\,
	pterm1 => \D[1]$latch~6_pterm1_bus\,
	pterm2 => \D[1]$latch~6_pterm2_bus\,
	pterm3 => \D[1]$latch~6_pterm3_bus\,
	pterm4 => \D[1]$latch~6_pterm4_bus\,
	pterm5 => \D[1]$latch~6_pterm5_bus\,
	pxor => \D[1]$latch~6_pxor_bus\,
	pclk => \D[1]$latch~6_pclk_bus\,
	papre => \D[1]$latch~6_papre_bus\,
	paclr => \D[1]$latch~6_paclr_bus\,
	pena => \D[1]$latch~6_pena_bus\,
	dataout => \D[1]$latch~6_dataout\);

-- Location: PIN_37
\RW~I\ : max_io
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	operation_mode => "output",
	weak_pull_up => "false")
-- pragma translate_on
PORT MAP (
	datain => \~GND~0~dataout\,
	oe => VCC,
	padio => ww_RW);

-- Location: PIN_28
\D[3]~I\ : max_io
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	operation_mode => "output",
	weak_pull_up => "false")
-- pragma translate_on
PORT MAP (
	datain => \D[3]$latch~6_dataout\,
	oe => VCC,
	padio => ww_D(3));

-- Location: PIN_25
\D[6]~I\ : max_io
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	operation_mode => "output",
	weak_pull_up => "false")
-- pragma translate_on
PORT MAP (
	datain => \D[6]$latch~6_dataout\,
	oe => VCC,
	padio => ww_D(6));

-- Location: PIN_24
\D[7]~I\ : max_io
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	operation_mode => "output",
	weak_pull_up => "false")
-- pragma translate_on
PORT MAP (
	datain => \D[7]$latch~6_dataout\,
	oe => VCC,
	padio => ww_D(7));

-- Location: PIN_39
\EN~I\ : max_io
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	operation_mode => "output",
	weak_pull_up => "false")
-- pragma translate_on
PORT MAP (
	datain => \EN$latch~6_dataout\,
	oe => VCC,
	padio => ww_EN);

-- Location: PIN_26
\D[5]~I\ : max_io
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	operation_mode => "output",
	weak_pull_up => "false")
-- pragma translate_on
PORT MAP (
	datain => \D[5]$latch~6_dataout\,
	oe => VCC,
	padio => ww_D(5));

-- Location: PIN_34
\RS~I\ : max_io
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	operation_mode => "output",
	weak_pull_up => "false")
-- pragma translate_on
PORT MAP (
	datain => \RS$latch~6_dataout\,
	oe => VCC,
	padio => ww_RS);

-- Location: PIN_27
\D[4]~I\ : max_io
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	operation_mode => "output",
	weak_pull_up => "false")
-- pragma translate_on
PORT MAP (
	datain => \D[4]$latch~6_dataout\,
	oe => VCC,
	padio => ww_D(4));

-- Location: PIN_29
\D[2]~I\ : max_io
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	operation_mode => "output",
	weak_pull_up => "false")
-- pragma translate_on
PORT MAP (
	datain => \D[2]$latch~6_dataout\,
	oe => VCC,
	padio => ww_D(2));

-- Location: PIN_33
\D[0]~I\ : max_io
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	operation_mode => "output",
	weak_pull_up => "false")
-- pragma translate_on
PORT MAP (
	datain => \D[0]$latch~6_dataout\,
	oe => VCC,
	padio => ww_D(0));

-- Location: PIN_31
\D[1]~I\ : max_io
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	operation_mode => "output",
	weak_pull_up => "false")
-- pragma translate_on
PORT MAP (
	datain => \D[1]$latch~6_dataout\,
	oe => VCC,
	padio => ww_D(1));
END structure;


