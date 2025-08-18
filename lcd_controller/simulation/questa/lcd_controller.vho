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
-- VERSION "Version 24.1std.0 Build 1077 03/04/2025 SC Lite Edition"

-- DATE "08/17/2025 23:43:29"

-- 
-- Device: Altera EP4CE6E22C8 Package TQFP144
-- 

-- 
-- This VHDL file should be used for Questa Intel FPGA (VHDL) only
-- 

LIBRARY CYCLONEIVE;
LIBRARY IEEE;
USE CYCLONEIVE.CYCLONEIVE_COMPONENTS.ALL;
USE IEEE.STD_LOGIC_1164.ALL;

ENTITY 	hard_block IS
    PORT (
	devoe : IN std_logic;
	devclrn : IN std_logic;
	devpor : IN std_logic
	);
END hard_block;

-- Design Ports Information
-- ~ALTERA_ASDO_DATA1~	=>  Location: PIN_6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ~ALTERA_FLASH_nCE_nCSO~	=>  Location: PIN_8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ~ALTERA_DCLK~	=>  Location: PIN_12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ~ALTERA_DATA0~	=>  Location: PIN_13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ~ALTERA_nCEO~	=>  Location: PIN_101,	 I/O Standard: 2.5 V,	 Current Strength: 8mA


ARCHITECTURE structure OF hard_block IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL \~ALTERA_ASDO_DATA1~~padout\ : std_logic;
SIGNAL \~ALTERA_FLASH_nCE_nCSO~~padout\ : std_logic;
SIGNAL \~ALTERA_DATA0~~padout\ : std_logic;
SIGNAL \~ALTERA_ASDO_DATA1~~ibuf_o\ : std_logic;
SIGNAL \~ALTERA_FLASH_nCE_nCSO~~ibuf_o\ : std_logic;
SIGNAL \~ALTERA_DATA0~~ibuf_o\ : std_logic;

BEGIN

ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;
END structure;


LIBRARY ALTERA;
LIBRARY CYCLONEIVE;
LIBRARY IEEE;
USE ALTERA.ALTERA_PRIMITIVES_COMPONENTS.ALL;
USE CYCLONEIVE.CYCLONEIVE_COMPONENTS.ALL;
USE IEEE.STD_LOGIC_1164.ALL;

ENTITY 	Block1 IS
    PORT (
	lcd_rw : OUT std_logic;
	clock : IN std_logic;
	key : IN std_logic_vector(4 DOWNTO 1);
	lcd_en : OUT std_logic;
	lcd_rs : OUT std_logic;
	buzzer : OUT std_logic;
	lcd_d : OUT std_logic_vector(7 DOWNTO 0)
	);
END Block1;

-- Design Ports Information
-- lcd_rw	=>  Location: PIN_138,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- key[4]	=>  Location: PIN_91,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- lcd_en	=>  Location: PIN_143,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- lcd_rs	=>  Location: PIN_141,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- buzzer	=>  Location: PIN_110,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- lcd_d[7]	=>  Location: PIN_11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- lcd_d[6]	=>  Location: PIN_7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- lcd_d[5]	=>  Location: PIN_10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- lcd_d[4]	=>  Location: PIN_2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- lcd_d[3]	=>  Location: PIN_3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- lcd_d[2]	=>  Location: PIN_144,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- lcd_d[1]	=>  Location: PIN_1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- lcd_d[0]	=>  Location: PIN_142,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- clock	=>  Location: PIN_23,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- key[3]	=>  Location: PIN_90,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- key[1]	=>  Location: PIN_88,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- key[2]	=>  Location: PIN_89,	 I/O Standard: 2.5 V,	 Current Strength: Default


ARCHITECTURE structure OF Block1 IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_lcd_rw : std_logic;
SIGNAL ww_clock : std_logic;
SIGNAL ww_key : std_logic_vector(4 DOWNTO 1);
SIGNAL ww_lcd_en : std_logic;
SIGNAL ww_lcd_rs : std_logic;
SIGNAL ww_buzzer : std_logic;
SIGNAL ww_lcd_d : std_logic_vector(7 DOWNTO 0);
SIGNAL \clock~inputclkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \key[4]~input_o\ : std_logic;
SIGNAL \lcd_rw~output_o\ : std_logic;
SIGNAL \lcd_en~output_o\ : std_logic;
SIGNAL \lcd_rs~output_o\ : std_logic;
SIGNAL \buzzer~output_o\ : std_logic;
SIGNAL \lcd_d[7]~output_o\ : std_logic;
SIGNAL \lcd_d[6]~output_o\ : std_logic;
SIGNAL \lcd_d[5]~output_o\ : std_logic;
SIGNAL \lcd_d[4]~output_o\ : std_logic;
SIGNAL \lcd_d[3]~output_o\ : std_logic;
SIGNAL \lcd_d[2]~output_o\ : std_logic;
SIGNAL \lcd_d[1]~output_o\ : std_logic;
SIGNAL \lcd_d[0]~output_o\ : std_logic;
SIGNAL \clock~input_o\ : std_logic;
SIGNAL \clock~inputclkctrl_outclk\ : std_logic;
SIGNAL \inst2|rs~3_combout\ : std_logic;
SIGNAL \inst2|estado.ENERGIZACAO~q\ : std_logic;
SIGNAL \inst2|Add0~53\ : std_logic;
SIGNAL \inst2|Add0~54_combout\ : std_logic;
SIGNAL \inst2|Selector5~0_combout\ : std_logic;
SIGNAL \inst2|Add0~55\ : std_logic;
SIGNAL \inst2|Add0~56_combout\ : std_logic;
SIGNAL \inst2|Selector4~0_combout\ : std_logic;
SIGNAL \inst2|Add0~57\ : std_logic;
SIGNAL \inst2|Add0~58_combout\ : std_logic;
SIGNAL \inst2|Selector3~0_combout\ : std_logic;
SIGNAL \inst2|Add0~59\ : std_logic;
SIGNAL \inst2|Add0~60_combout\ : std_logic;
SIGNAL \inst2|Selector2~0_combout\ : std_logic;
SIGNAL \inst2|Add0~61\ : std_logic;
SIGNAL \inst2|Add0~62_combout\ : std_logic;
SIGNAL \inst2|Selector1~0_combout\ : std_logic;
SIGNAL \inst2|LessThan9~9_combout\ : std_logic;
SIGNAL \inst2|Add0~0_combout\ : std_logic;
SIGNAL \inst2|Selector32~0_combout\ : std_logic;
SIGNAL \inst2|Add0~1\ : std_logic;
SIGNAL \inst2|Add0~2_combout\ : std_logic;
SIGNAL \inst2|Selector31~0_combout\ : std_logic;
SIGNAL \inst2|Add0~3\ : std_logic;
SIGNAL \inst2|Add0~4_combout\ : std_logic;
SIGNAL \inst2|Selector30~0_combout\ : std_logic;
SIGNAL \inst2|Add0~5\ : std_logic;
SIGNAL \inst2|Add0~6_combout\ : std_logic;
SIGNAL \inst2|Selector29~0_combout\ : std_logic;
SIGNAL \inst2|Add0~7\ : std_logic;
SIGNAL \inst2|Add0~8_combout\ : std_logic;
SIGNAL \inst2|Selector28~0_combout\ : std_logic;
SIGNAL \inst2|Add0~9\ : std_logic;
SIGNAL \inst2|Add0~10_combout\ : std_logic;
SIGNAL \inst2|Selector27~0_combout\ : std_logic;
SIGNAL \inst2|Add0~11\ : std_logic;
SIGNAL \inst2|Add0~12_combout\ : std_logic;
SIGNAL \inst2|Selector26~0_combout\ : std_logic;
SIGNAL \inst2|Add0~13\ : std_logic;
SIGNAL \inst2|Add0~14_combout\ : std_logic;
SIGNAL \inst2|Selector25~0_combout\ : std_logic;
SIGNAL \inst2|Add0~15\ : std_logic;
SIGNAL \inst2|Add0~16_combout\ : std_logic;
SIGNAL \inst2|Selector24~0_combout\ : std_logic;
SIGNAL \inst2|Add0~17\ : std_logic;
SIGNAL \inst2|Add0~18_combout\ : std_logic;
SIGNAL \inst2|Selector23~0_combout\ : std_logic;
SIGNAL \inst2|Add0~19\ : std_logic;
SIGNAL \inst2|Add0~20_combout\ : std_logic;
SIGNAL \inst2|Selector22~0_combout\ : std_logic;
SIGNAL \inst2|Add0~21\ : std_logic;
SIGNAL \inst2|Add0~22_combout\ : std_logic;
SIGNAL \inst2|Selector21~0_combout\ : std_logic;
SIGNAL \inst2|LessThan9~6_combout\ : std_logic;
SIGNAL \inst2|LessThan9~7_combout\ : std_logic;
SIGNAL \inst2|LessThan9~8_combout\ : std_logic;
SIGNAL \inst2|Add0~23\ : std_logic;
SIGNAL \inst2|Add0~24_combout\ : std_logic;
SIGNAL \inst2|Selector20~0_combout\ : std_logic;
SIGNAL \inst2|Add0~25\ : std_logic;
SIGNAL \inst2|Add0~26_combout\ : std_logic;
SIGNAL \inst2|Selector19~0_combout\ : std_logic;
SIGNAL \inst2|Add0~27\ : std_logic;
SIGNAL \inst2|Add0~28_combout\ : std_logic;
SIGNAL \inst2|Selector18~0_combout\ : std_logic;
SIGNAL \inst2|Add0~29\ : std_logic;
SIGNAL \inst2|Add0~30_combout\ : std_logic;
SIGNAL \inst2|Selector17~0_combout\ : std_logic;
SIGNAL \inst2|LessThan0~0_combout\ : std_logic;
SIGNAL \inst2|LessThan9~2_combout\ : std_logic;
SIGNAL \inst2|LessThan9~3_combout\ : std_logic;
SIGNAL \inst2|LessThan9~4_combout\ : std_logic;
SIGNAL \inst2|Selector34~0_combout\ : std_logic;
SIGNAL \inst2|Selector34~2_combout\ : std_logic;
SIGNAL \inst2|estado.PRONTO~q\ : std_logic;
SIGNAL \inst2|LessThan6~2_combout\ : std_logic;
SIGNAL \inst2|LessThan6~3_combout\ : std_logic;
SIGNAL \inst2|LessThan1~0_combout\ : std_logic;
SIGNAL \inst2|LessThan6~1_combout\ : std_logic;
SIGNAL \inst2|Add0~31\ : std_logic;
SIGNAL \inst2|Add0~32_combout\ : std_logic;
SIGNAL \inst2|LessThan6~0_combout\ : std_logic;
SIGNAL \inst2|LessThan3~1_combout\ : std_logic;
SIGNAL \inst2|LessThan3~0_combout\ : std_logic;
SIGNAL \inst2|LessThan3~2_combout\ : std_logic;
SIGNAL \inst2|LessThan3~3_combout\ : std_logic;
SIGNAL \inst2|busy~5_combout\ : std_logic;
SIGNAL \inst2|LessThan8~0_combout\ : std_logic;
SIGNAL \inst2|LessThan7~0_combout\ : std_logic;
SIGNAL \inst2|LessThan7~1_combout\ : std_logic;
SIGNAL \inst2|LessThan7~2_combout\ : std_logic;
SIGNAL \inst2|LessThan8~1_combout\ : std_logic;
SIGNAL \inst2|LessThan3~6_combout\ : std_logic;
SIGNAL \inst2|LessThan8~2_combout\ : std_logic;
SIGNAL \inst2|LessThan3~4_combout\ : std_logic;
SIGNAL \inst2|LessThan3~5_combout\ : std_logic;
SIGNAL \inst2|LessThan8~3_combout\ : std_logic;
SIGNAL \inst2|LessThan8~4_combout\ : std_logic;
SIGNAL \inst2|lcd_data[2]~0_combout\ : std_logic;
SIGNAL \inst2|LessThan4~1_combout\ : std_logic;
SIGNAL \inst2|LessThan4~0_combout\ : std_logic;
SIGNAL \inst2|LessThan4~2_combout\ : std_logic;
SIGNAL \inst2|LessThan3~7_combout\ : std_logic;
SIGNAL \inst2|LessThan3~9_combout\ : std_logic;
SIGNAL \inst2|busy~4_combout\ : std_logic;
SIGNAL \inst2|LessThan3~10_combout\ : std_logic;
SIGNAL \inst2|LessThan4~4_combout\ : std_logic;
SIGNAL \inst2|LessThan5~0_combout\ : std_logic;
SIGNAL \inst2|LessThan5~1_combout\ : std_logic;
SIGNAL \inst2|LessThan5~2_combout\ : std_logic;
SIGNAL \inst2|LessThan5~3_combout\ : std_logic;
SIGNAL \inst2|LessThan5~4_combout\ : std_logic;
SIGNAL \inst2|LessThan3~12_combout\ : std_logic;
SIGNAL \inst2|LessThan3~11_combout\ : std_logic;
SIGNAL \inst2|LessThan3~13_combout\ : std_logic;
SIGNAL \inst2|LessThan3~14_combout\ : std_logic;
SIGNAL \inst2|LessThan1~1_combout\ : std_logic;
SIGNAL \inst2|LessThan2~0_combout\ : std_logic;
SIGNAL \inst2|LessThan2~1_combout\ : std_logic;
SIGNAL \inst2|LessThan2~2_combout\ : std_logic;
SIGNAL \inst2|clk_count~0_combout\ : std_logic;
SIGNAL \inst2|clk_count~1_combout\ : std_logic;
SIGNAL \inst2|clk_count[27]~2_combout\ : std_logic;
SIGNAL \inst2|clk_count[27]~3_combout\ : std_logic;
SIGNAL \inst2|clk_count[27]~4_combout\ : std_logic;
SIGNAL \inst2|Selector16~0_combout\ : std_logic;
SIGNAL \inst2|Add0~33\ : std_logic;
SIGNAL \inst2|Add0~34_combout\ : std_logic;
SIGNAL \inst2|Selector15~0_combout\ : std_logic;
SIGNAL \inst2|Add0~35\ : std_logic;
SIGNAL \inst2|Add0~36_combout\ : std_logic;
SIGNAL \inst2|Selector14~0_combout\ : std_logic;
SIGNAL \inst2|Add0~37\ : std_logic;
SIGNAL \inst2|Add0~38_combout\ : std_logic;
SIGNAL \inst2|Selector13~0_combout\ : std_logic;
SIGNAL \inst2|Add0~39\ : std_logic;
SIGNAL \inst2|Add0~40_combout\ : std_logic;
SIGNAL \inst2|Selector12~0_combout\ : std_logic;
SIGNAL \inst2|Add0~41\ : std_logic;
SIGNAL \inst2|Add0~42_combout\ : std_logic;
SIGNAL \inst2|Selector11~0_combout\ : std_logic;
SIGNAL \inst2|Add0~43\ : std_logic;
SIGNAL \inst2|Add0~44_combout\ : std_logic;
SIGNAL \inst2|Selector10~0_combout\ : std_logic;
SIGNAL \inst2|Add0~45\ : std_logic;
SIGNAL \inst2|Add0~46_combout\ : std_logic;
SIGNAL \inst2|Selector9~0_combout\ : std_logic;
SIGNAL \inst2|Add0~47\ : std_logic;
SIGNAL \inst2|Add0~48_combout\ : std_logic;
SIGNAL \inst2|Selector8~0_combout\ : std_logic;
SIGNAL \inst2|Add0~49\ : std_logic;
SIGNAL \inst2|Add0~50_combout\ : std_logic;
SIGNAL \inst2|Selector7~0_combout\ : std_logic;
SIGNAL \inst2|Add0~51\ : std_logic;
SIGNAL \inst2|Add0~52_combout\ : std_logic;
SIGNAL \inst2|Selector6~0_combout\ : std_logic;
SIGNAL \inst2|LessThan9~0_combout\ : std_logic;
SIGNAL \inst2|LessThan9~1_combout\ : std_logic;
SIGNAL \inst2|LessThan0~1_combout\ : std_logic;
SIGNAL \inst2|LessThan0~2_combout\ : std_logic;
SIGNAL \inst2|LessThan0~3_combout\ : std_logic;
SIGNAL \inst2|LessThan0~4_combout\ : std_logic;
SIGNAL \inst2|LessThan0~5_combout\ : std_logic;
SIGNAL \inst2|LessThan0~6_combout\ : std_logic;
SIGNAL \inst2|busy~6_combout\ : std_logic;
SIGNAL \inst2|busy~8_combout\ : std_logic;
SIGNAL \inst2|busy~7_combout\ : std_logic;
SIGNAL \inst2|Selector33~0_combout\ : std_logic;
SIGNAL \inst2|estado.INICIALIZACAO~q\ : std_logic;
SIGNAL \inst2|Selector34~1_combout\ : std_logic;
SIGNAL \inst2|busy~q\ : std_logic;
SIGNAL \inst1|process_1~0_combout\ : std_logic;
SIGNAL \inst1|Add0~0_combout\ : std_logic;
SIGNAL \inst1|LessThan0~0_combout\ : std_logic;
SIGNAL \inst1|char~1_combout\ : std_logic;
SIGNAL \inst1|Add0~1\ : std_logic;
SIGNAL \inst1|Add0~2_combout\ : std_logic;
SIGNAL \inst1|char~5_combout\ : std_logic;
SIGNAL \inst1|Add0~3\ : std_logic;
SIGNAL \inst1|Add0~4_combout\ : std_logic;
SIGNAL \inst1|char~4_combout\ : std_logic;
SIGNAL \inst1|Add0~5\ : std_logic;
SIGNAL \inst1|Add0~6_combout\ : std_logic;
SIGNAL \inst1|char~3_combout\ : std_logic;
SIGNAL \inst1|Add0~7\ : std_logic;
SIGNAL \inst1|Add0~8_combout\ : std_logic;
SIGNAL \inst1|char~0_combout\ : std_logic;
SIGNAL \inst1|Add0~9\ : std_logic;
SIGNAL \inst1|Add0~10_combout\ : std_logic;
SIGNAL \inst1|char~2_combout\ : std_logic;
SIGNAL \inst1|lcd_enable~2_combout\ : std_logic;
SIGNAL \inst1|lcd_enable~3_combout\ : std_logic;
SIGNAL \inst1|lcd_enable~q\ : std_logic;
SIGNAL \inst2|Selector35~2_combout\ : std_logic;
SIGNAL \inst2|estado.ENVIAR~q\ : std_logic;
SIGNAL \inst2|LessThan9~5_combout\ : std_logic;
SIGNAL \inst2|LessThan12~0_combout\ : std_logic;
SIGNAL \inst2|LessThan12~1_combout\ : std_logic;
SIGNAL \inst2|LessThan12~2_combout\ : std_logic;
SIGNAL \inst2|LessThan9~10_combout\ : std_logic;
SIGNAL \inst2|LessThan10~1_combout\ : std_logic;
SIGNAL \inst2|LessThan10~2_combout\ : std_logic;
SIGNAL \inst2|LessThan10~3_combout\ : std_logic;
SIGNAL \inst2|LessThan10~0_combout\ : std_logic;
SIGNAL \inst2|LessThan10~4_combout\ : std_logic;
SIGNAL \inst2|Selector46~0_combout\ : std_logic;
SIGNAL \inst2|LessThan11~0_combout\ : std_logic;
SIGNAL \inst2|LessThan11~1_combout\ : std_logic;
SIGNAL \inst2|Selector46~1_combout\ : std_logic;
SIGNAL \inst2|Selector46~2_combout\ : std_logic;
SIGNAL \inst2|Selector46~8_combout\ : std_logic;
SIGNAL \inst2|Selector46~4_combout\ : std_logic;
SIGNAL \inst2|LessThan1~2_combout\ : std_logic;
SIGNAL \inst2|Selector42~0_combout\ : std_logic;
SIGNAL \inst2|Selector46~7_combout\ : std_logic;
SIGNAL \inst2|LessThan3~8_combout\ : std_logic;
SIGNAL \inst2|LessThan4~3_combout\ : std_logic;
SIGNAL \inst2|Selector46~5_combout\ : std_logic;
SIGNAL \inst2|Selector46~10_combout\ : std_logic;
SIGNAL \inst2|Selector46~11_combout\ : std_logic;
SIGNAL \inst2|Selector46~3_combout\ : std_logic;
SIGNAL \inst2|Selector46~6_combout\ : std_logic;
SIGNAL \inst2|Selector46~9_combout\ : std_logic;
SIGNAL \inst2|e~q\ : std_logic;
SIGNAL \inst2|rs~0_combout\ : std_logic;
SIGNAL \inst1|Mux0~0_combout\ : std_logic;
SIGNAL \inst1|Mux0~1_combout\ : std_logic;
SIGNAL \inst1|Mux0~2_combout\ : std_logic;
SIGNAL \inst1|lcd_bus[9]~7_combout\ : std_logic;
SIGNAL \inst2|rs~1_combout\ : std_logic;
SIGNAL \inst2|rs~2_combout\ : std_logic;
SIGNAL \inst2|rs~q\ : std_logic;
SIGNAL \key[3]~input_o\ : std_logic;
SIGNAL \inst3|s0[3]~feeder_combout\ : std_logic;
SIGNAL \inst3|s1[3]~feeder_combout\ : std_logic;
SIGNAL \inst3|cnt[3][0]~96_combout\ : std_logic;
SIGNAL \inst3|cnt[3][18]~98_combout\ : std_logic;
SIGNAL \inst3|cnt[3][0]~q\ : std_logic;
SIGNAL \inst3|cnt[3][0]~97\ : std_logic;
SIGNAL \inst3|cnt[3][1]~99_combout\ : std_logic;
SIGNAL \inst3|cnt[3][1]~q\ : std_logic;
SIGNAL \inst3|cnt[3][1]~100\ : std_logic;
SIGNAL \inst3|cnt[3][2]~101_combout\ : std_logic;
SIGNAL \inst3|cnt[3][2]~q\ : std_logic;
SIGNAL \inst3|cnt[3][2]~102\ : std_logic;
SIGNAL \inst3|cnt[3][3]~103_combout\ : std_logic;
SIGNAL \inst3|cnt[3][3]~q\ : std_logic;
SIGNAL \inst3|cnt[3][3]~104\ : std_logic;
SIGNAL \inst3|cnt[3][4]~105_combout\ : std_logic;
SIGNAL \inst3|cnt[3][4]~q\ : std_logic;
SIGNAL \inst3|cnt[3][4]~106\ : std_logic;
SIGNAL \inst3|cnt[3][5]~107_combout\ : std_logic;
SIGNAL \inst3|cnt[3][5]~q\ : std_logic;
SIGNAL \inst3|cnt[3][5]~108\ : std_logic;
SIGNAL \inst3|cnt[3][6]~109_combout\ : std_logic;
SIGNAL \inst3|cnt[3][6]~q\ : std_logic;
SIGNAL \inst3|cnt[3][6]~110\ : std_logic;
SIGNAL \inst3|cnt[3][7]~111_combout\ : std_logic;
SIGNAL \inst3|cnt[3][7]~q\ : std_logic;
SIGNAL \inst3|cnt[3][7]~112\ : std_logic;
SIGNAL \inst3|cnt[3][8]~113_combout\ : std_logic;
SIGNAL \inst3|cnt[3][8]~q\ : std_logic;
SIGNAL \inst3|cnt[3][8]~114\ : std_logic;
SIGNAL \inst3|cnt[3][9]~115_combout\ : std_logic;
SIGNAL \inst3|cnt[3][9]~q\ : std_logic;
SIGNAL \inst3|cnt[3][9]~116\ : std_logic;
SIGNAL \inst3|cnt[3][10]~117_combout\ : std_logic;
SIGNAL \inst3|cnt[3][10]~q\ : std_logic;
SIGNAL \inst3|cnt[3][10]~118\ : std_logic;
SIGNAL \inst3|cnt[3][11]~119_combout\ : std_logic;
SIGNAL \inst3|cnt[3][11]~q\ : std_logic;
SIGNAL \inst3|cnt[3][11]~120\ : std_logic;
SIGNAL \inst3|cnt[3][12]~121_combout\ : std_logic;
SIGNAL \inst3|cnt[3][12]~q\ : std_logic;
SIGNAL \inst3|cnt[3][12]~122\ : std_logic;
SIGNAL \inst3|cnt[3][13]~123_combout\ : std_logic;
SIGNAL \inst3|cnt[3][13]~q\ : std_logic;
SIGNAL \inst3|cnt[3][13]~124\ : std_logic;
SIGNAL \inst3|cnt[3][14]~125_combout\ : std_logic;
SIGNAL \inst3|cnt[3][14]~q\ : std_logic;
SIGNAL \inst3|cnt[3][14]~126\ : std_logic;
SIGNAL \inst3|cnt[3][15]~127_combout\ : std_logic;
SIGNAL \inst3|cnt[3][15]~q\ : std_logic;
SIGNAL \inst3|cnt[3][15]~128\ : std_logic;
SIGNAL \inst3|cnt[3][16]~129_combout\ : std_logic;
SIGNAL \inst3|cnt[3][16]~q\ : std_logic;
SIGNAL \inst3|cnt[3][16]~130\ : std_logic;
SIGNAL \inst3|cnt[3][17]~131_combout\ : std_logic;
SIGNAL \inst3|cnt[3][17]~q\ : std_logic;
SIGNAL \inst3|cnt[3][17]~132\ : std_logic;
SIGNAL \inst3|cnt[3][18]~133_combout\ : std_logic;
SIGNAL \inst3|cnt[3][18]~q\ : std_logic;
SIGNAL \inst3|cnt[3][18]~134\ : std_logic;
SIGNAL \inst3|cnt[3][19]~135_combout\ : std_logic;
SIGNAL \inst3|cnt[3][19]~q\ : std_logic;
SIGNAL \inst3|cnt[3][19]~136\ : std_logic;
SIGNAL \inst3|cnt[3][20]~137_combout\ : std_logic;
SIGNAL \inst3|cnt[3][20]~q\ : std_logic;
SIGNAL \inst3|cnt[3][20]~138\ : std_logic;
SIGNAL \inst3|cnt[3][21]~139_combout\ : std_logic;
SIGNAL \inst3|cnt[3][21]~q\ : std_logic;
SIGNAL \inst3|cnt[3][21]~140\ : std_logic;
SIGNAL \inst3|cnt[3][22]~141_combout\ : std_logic;
SIGNAL \inst3|cnt[3][22]~q\ : std_logic;
SIGNAL \inst3|cnt[3][22]~142\ : std_logic;
SIGNAL \inst3|cnt[3][23]~143_combout\ : std_logic;
SIGNAL \inst3|cnt[3][23]~q\ : std_logic;
SIGNAL \inst3|cnt[3][23]~144\ : std_logic;
SIGNAL \inst3|cnt[3][24]~145_combout\ : std_logic;
SIGNAL \inst3|cnt[3][24]~q\ : std_logic;
SIGNAL \inst3|cnt[3][24]~146\ : std_logic;
SIGNAL \inst3|cnt[3][25]~147_combout\ : std_logic;
SIGNAL \inst3|cnt[3][25]~q\ : std_logic;
SIGNAL \inst3|cnt[3][25]~148\ : std_logic;
SIGNAL \inst3|cnt[3][26]~149_combout\ : std_logic;
SIGNAL \inst3|cnt[3][26]~q\ : std_logic;
SIGNAL \inst3|cnt[3][26]~150\ : std_logic;
SIGNAL \inst3|cnt[3][27]~151_combout\ : std_logic;
SIGNAL \inst3|cnt[3][27]~q\ : std_logic;
SIGNAL \inst3|cnt[3][27]~152\ : std_logic;
SIGNAL \inst3|cnt[3][28]~153_combout\ : std_logic;
SIGNAL \inst3|cnt[3][28]~q\ : std_logic;
SIGNAL \inst3|cnt[3][28]~154\ : std_logic;
SIGNAL \inst3|cnt[3][29]~155_combout\ : std_logic;
SIGNAL \inst3|cnt[3][29]~q\ : std_logic;
SIGNAL \inst3|cnt[3][29]~156\ : std_logic;
SIGNAL \inst3|cnt[3][30]~157_combout\ : std_logic;
SIGNAL \inst3|cnt[3][30]~q\ : std_logic;
SIGNAL \inst3|cnt[3][30]~158\ : std_logic;
SIGNAL \inst3|cnt[3][31]~159_combout\ : std_logic;
SIGNAL \inst3|cnt[3][31]~q\ : std_logic;
SIGNAL \inst3|Equal1~9_combout\ : std_logic;
SIGNAL \inst3|Equal1~8_combout\ : std_logic;
SIGNAL \inst3|Equal1~5_combout\ : std_logic;
SIGNAL \inst3|Equal1~6_combout\ : std_logic;
SIGNAL \inst3|Equal1~7_combout\ : std_logic;
SIGNAL \inst3|Equal1~1_combout\ : std_logic;
SIGNAL \inst3|Equal1~2_combout\ : std_logic;
SIGNAL \inst3|Equal1~0_combout\ : std_logic;
SIGNAL \inst3|Equal1~3_combout\ : std_logic;
SIGNAL \inst3|Equal1~4_combout\ : std_logic;
SIGNAL \inst3|Equal1~10_combout\ : std_logic;
SIGNAL \inst3|stable[3]~0_combout\ : std_logic;
SIGNAL \inst7|mute_d1~0_combout\ : std_logic;
SIGNAL \inst7|mute_d1~q\ : std_logic;
SIGNAL \inst7|mute_d2~feeder_combout\ : std_logic;
SIGNAL \inst7|mute_d2~q\ : std_logic;
SIGNAL \inst7|mute_rise~0_combout\ : std_logic;
SIGNAL \inst7|mute_rise~q\ : std_logic;
SIGNAL \inst7|mute_en~0_combout\ : std_logic;
SIGNAL \inst7|mute_en~q\ : std_logic;
SIGNAL \inst7|u_div|cnt[0]~32_combout\ : std_logic;
SIGNAL \inst7|u_div|LessThan0~18_combout\ : std_logic;
SIGNAL \inst7|u_div|LessThan0~19_combout\ : std_logic;
SIGNAL \inst7|u_div|LessThan0~16_combout\ : std_logic;
SIGNAL \inst7|u_div|LessThan0~17_combout\ : std_logic;
SIGNAL \inst7|u_ctrl|estado_atual~71_combout\ : std_logic;
SIGNAL \inst3|cnt[1][0]~161_combout\ : std_logic;
SIGNAL \key[1]~input_o\ : std_logic;
SIGNAL \inst3|s0[1]~feeder_combout\ : std_logic;
SIGNAL \inst3|cnt[1][31]~163_combout\ : std_logic;
SIGNAL \inst3|cnt[1][0]~q\ : std_logic;
SIGNAL \inst3|cnt[1][0]~162\ : std_logic;
SIGNAL \inst3|cnt[1][1]~164_combout\ : std_logic;
SIGNAL \inst3|cnt[1][1]~q\ : std_logic;
SIGNAL \inst3|cnt[1][1]~165\ : std_logic;
SIGNAL \inst3|cnt[1][2]~166_combout\ : std_logic;
SIGNAL \inst3|cnt[1][2]~q\ : std_logic;
SIGNAL \inst3|cnt[1][2]~167\ : std_logic;
SIGNAL \inst3|cnt[1][3]~168_combout\ : std_logic;
SIGNAL \inst3|cnt[1][3]~q\ : std_logic;
SIGNAL \inst3|cnt[1][3]~169\ : std_logic;
SIGNAL \inst3|cnt[1][4]~170_combout\ : std_logic;
SIGNAL \inst3|cnt[1][4]~q\ : std_logic;
SIGNAL \inst3|cnt[1][4]~171\ : std_logic;
SIGNAL \inst3|cnt[1][5]~172_combout\ : std_logic;
SIGNAL \inst3|cnt[1][5]~q\ : std_logic;
SIGNAL \inst3|cnt[1][5]~173\ : std_logic;
SIGNAL \inst3|cnt[1][6]~174_combout\ : std_logic;
SIGNAL \inst3|cnt[1][6]~q\ : std_logic;
SIGNAL \inst3|cnt[1][6]~175\ : std_logic;
SIGNAL \inst3|cnt[1][7]~176_combout\ : std_logic;
SIGNAL \inst3|cnt[1][7]~q\ : std_logic;
SIGNAL \inst3|cnt[1][7]~177\ : std_logic;
SIGNAL \inst3|cnt[1][8]~178_combout\ : std_logic;
SIGNAL \inst3|cnt[1][8]~q\ : std_logic;
SIGNAL \inst3|cnt[1][8]~179\ : std_logic;
SIGNAL \inst3|cnt[1][9]~180_combout\ : std_logic;
SIGNAL \inst3|cnt[1][9]~q\ : std_logic;
SIGNAL \inst3|cnt[1][9]~181\ : std_logic;
SIGNAL \inst3|cnt[1][10]~182_combout\ : std_logic;
SIGNAL \inst3|cnt[1][10]~q\ : std_logic;
SIGNAL \inst3|cnt[1][10]~183\ : std_logic;
SIGNAL \inst3|cnt[1][11]~184_combout\ : std_logic;
SIGNAL \inst3|cnt[1][11]~q\ : std_logic;
SIGNAL \inst3|Equal3~3_combout\ : std_logic;
SIGNAL \inst3|cnt[1][11]~185\ : std_logic;
SIGNAL \inst3|cnt[1][12]~186_combout\ : std_logic;
SIGNAL \inst3|cnt[1][12]~q\ : std_logic;
SIGNAL \inst3|cnt[1][12]~187\ : std_logic;
SIGNAL \inst3|cnt[1][13]~188_combout\ : std_logic;
SIGNAL \inst3|cnt[1][13]~q\ : std_logic;
SIGNAL \inst3|cnt[1][13]~189\ : std_logic;
SIGNAL \inst3|cnt[1][14]~190_combout\ : std_logic;
SIGNAL \inst3|cnt[1][14]~q\ : std_logic;
SIGNAL \inst3|cnt[1][14]~191\ : std_logic;
SIGNAL \inst3|cnt[1][15]~192_combout\ : std_logic;
SIGNAL \inst3|cnt[1][15]~q\ : std_logic;
SIGNAL \inst3|Equal3~4_combout\ : std_logic;
SIGNAL \inst3|cnt[1][15]~193\ : std_logic;
SIGNAL \inst3|cnt[1][16]~194_combout\ : std_logic;
SIGNAL \inst3|cnt[1][16]~q\ : std_logic;
SIGNAL \inst3|cnt[1][16]~195\ : std_logic;
SIGNAL \inst3|cnt[1][17]~196_combout\ : std_logic;
SIGNAL \inst3|cnt[1][17]~q\ : std_logic;
SIGNAL \inst3|cnt[1][17]~197\ : std_logic;
SIGNAL \inst3|cnt[1][18]~198_combout\ : std_logic;
SIGNAL \inst3|cnt[1][18]~q\ : std_logic;
SIGNAL \inst3|cnt[1][18]~199\ : std_logic;
SIGNAL \inst3|cnt[1][19]~200_combout\ : std_logic;
SIGNAL \inst3|cnt[1][19]~q\ : std_logic;
SIGNAL \inst3|cnt[1][19]~201\ : std_logic;
SIGNAL \inst3|cnt[1][20]~202_combout\ : std_logic;
SIGNAL \inst3|cnt[1][20]~q\ : std_logic;
SIGNAL \inst3|cnt[1][20]~203\ : std_logic;
SIGNAL \inst3|cnt[1][21]~204_combout\ : std_logic;
SIGNAL \inst3|cnt[1][21]~q\ : std_logic;
SIGNAL \inst3|cnt[1][21]~205\ : std_logic;
SIGNAL \inst3|cnt[1][22]~206_combout\ : std_logic;
SIGNAL \inst3|cnt[1][22]~q\ : std_logic;
SIGNAL \inst3|cnt[1][22]~207\ : std_logic;
SIGNAL \inst3|cnt[1][23]~208_combout\ : std_logic;
SIGNAL \inst3|cnt[1][23]~q\ : std_logic;
SIGNAL \inst3|cnt[1][23]~209\ : std_logic;
SIGNAL \inst3|cnt[1][24]~210_combout\ : std_logic;
SIGNAL \inst3|cnt[1][24]~q\ : std_logic;
SIGNAL \inst3|cnt[1][24]~211\ : std_logic;
SIGNAL \inst3|cnt[1][25]~212_combout\ : std_logic;
SIGNAL \inst3|cnt[1][25]~q\ : std_logic;
SIGNAL \inst3|cnt[1][25]~213\ : std_logic;
SIGNAL \inst3|cnt[1][26]~214_combout\ : std_logic;
SIGNAL \inst3|cnt[1][26]~q\ : std_logic;
SIGNAL \inst3|cnt[1][26]~215\ : std_logic;
SIGNAL \inst3|cnt[1][27]~216_combout\ : std_logic;
SIGNAL \inst3|cnt[1][27]~q\ : std_logic;
SIGNAL \inst3|cnt[1][27]~217\ : std_logic;
SIGNAL \inst3|cnt[1][28]~218_combout\ : std_logic;
SIGNAL \inst3|cnt[1][28]~q\ : std_logic;
SIGNAL \inst3|cnt[1][28]~219\ : std_logic;
SIGNAL \inst3|cnt[1][29]~220_combout\ : std_logic;
SIGNAL \inst3|cnt[1][29]~q\ : std_logic;
SIGNAL \inst3|cnt[1][29]~221\ : std_logic;
SIGNAL \inst3|cnt[1][30]~222_combout\ : std_logic;
SIGNAL \inst3|cnt[1][30]~q\ : std_logic;
SIGNAL \inst3|cnt[1][30]~223\ : std_logic;
SIGNAL \inst3|cnt[1][31]~224_combout\ : std_logic;
SIGNAL \inst3|cnt[1][31]~q\ : std_logic;
SIGNAL \inst3|Equal3~8_combout\ : std_logic;
SIGNAL \inst3|Equal3~6_combout\ : std_logic;
SIGNAL \inst3|Equal3~7_combout\ : std_logic;
SIGNAL \inst3|Equal3~5_combout\ : std_logic;
SIGNAL \inst3|Equal3~9_combout\ : std_logic;
SIGNAL \inst3|Equal3~1_combout\ : std_logic;
SIGNAL \inst3|Equal3~0_combout\ : std_logic;
SIGNAL \inst3|Equal3~2_combout\ : std_logic;
SIGNAL \inst3|Equal3~10_combout\ : std_logic;
SIGNAL \inst3|stable[1]~1_combout\ : std_logic;
SIGNAL \inst7|play_d1~0_combout\ : std_logic;
SIGNAL \inst7|play_d1~q\ : std_logic;
SIGNAL \inst7|play_d2~feeder_combout\ : std_logic;
SIGNAL \inst7|play_d2~q\ : std_logic;
SIGNAL \inst7|play_rise~0_combout\ : std_logic;
SIGNAL \inst7|play_rise~q\ : std_logic;
SIGNAL \key[2]~input_o\ : std_logic;
SIGNAL \inst3|s0[2]~feeder_combout\ : std_logic;
SIGNAL \inst3|cnt[2][0]~226_combout\ : std_logic;
SIGNAL \inst3|cnt[2][2]~228_combout\ : std_logic;
SIGNAL \inst3|cnt[2][0]~q\ : std_logic;
SIGNAL \inst3|cnt[2][0]~227\ : std_logic;
SIGNAL \inst3|cnt[2][1]~229_combout\ : std_logic;
SIGNAL \inst3|cnt[2][1]~q\ : std_logic;
SIGNAL \inst3|cnt[2][1]~230\ : std_logic;
SIGNAL \inst3|cnt[2][2]~231_combout\ : std_logic;
SIGNAL \inst3|cnt[2][2]~q\ : std_logic;
SIGNAL \inst3|cnt[2][2]~232\ : std_logic;
SIGNAL \inst3|cnt[2][3]~233_combout\ : std_logic;
SIGNAL \inst3|cnt[2][3]~q\ : std_logic;
SIGNAL \inst3|cnt[2][3]~234\ : std_logic;
SIGNAL \inst3|cnt[2][4]~235_combout\ : std_logic;
SIGNAL \inst3|cnt[2][4]~q\ : std_logic;
SIGNAL \inst3|cnt[2][4]~236\ : std_logic;
SIGNAL \inst3|cnt[2][5]~237_combout\ : std_logic;
SIGNAL \inst3|cnt[2][5]~q\ : std_logic;
SIGNAL \inst3|cnt[2][5]~238\ : std_logic;
SIGNAL \inst3|cnt[2][6]~239_combout\ : std_logic;
SIGNAL \inst3|cnt[2][6]~q\ : std_logic;
SIGNAL \inst3|cnt[2][6]~240\ : std_logic;
SIGNAL \inst3|cnt[2][7]~241_combout\ : std_logic;
SIGNAL \inst3|cnt[2][7]~q\ : std_logic;
SIGNAL \inst3|Equal2~1_combout\ : std_logic;
SIGNAL \inst3|Equal2~0_combout\ : std_logic;
SIGNAL \inst3|cnt[2][7]~242\ : std_logic;
SIGNAL \inst3|cnt[2][8]~243_combout\ : std_logic;
SIGNAL \inst3|cnt[2][8]~q\ : std_logic;
SIGNAL \inst3|cnt[2][8]~244\ : std_logic;
SIGNAL \inst3|cnt[2][9]~245_combout\ : std_logic;
SIGNAL \inst3|cnt[2][9]~q\ : std_logic;
SIGNAL \inst3|cnt[2][9]~246\ : std_logic;
SIGNAL \inst3|cnt[2][10]~247_combout\ : std_logic;
SIGNAL \inst3|cnt[2][10]~q\ : std_logic;
SIGNAL \inst3|cnt[2][10]~248\ : std_logic;
SIGNAL \inst3|cnt[2][11]~249_combout\ : std_logic;
SIGNAL \inst3|cnt[2][11]~q\ : std_logic;
SIGNAL \inst3|cnt[2][11]~250\ : std_logic;
SIGNAL \inst3|cnt[2][12]~251_combout\ : std_logic;
SIGNAL \inst3|cnt[2][12]~q\ : std_logic;
SIGNAL \inst3|cnt[2][12]~252\ : std_logic;
SIGNAL \inst3|cnt[2][13]~253_combout\ : std_logic;
SIGNAL \inst3|cnt[2][13]~q\ : std_logic;
SIGNAL \inst3|cnt[2][13]~254\ : std_logic;
SIGNAL \inst3|cnt[2][14]~255_combout\ : std_logic;
SIGNAL \inst3|cnt[2][14]~q\ : std_logic;
SIGNAL \inst3|cnt[2][14]~256\ : std_logic;
SIGNAL \inst3|cnt[2][15]~257_combout\ : std_logic;
SIGNAL \inst3|cnt[2][15]~q\ : std_logic;
SIGNAL \inst3|Equal2~3_combout\ : std_logic;
SIGNAL \inst3|Equal2~2_combout\ : std_logic;
SIGNAL \inst3|Equal2~4_combout\ : std_logic;
SIGNAL \inst3|cnt[2][15]~258\ : std_logic;
SIGNAL \inst3|cnt[2][16]~259_combout\ : std_logic;
SIGNAL \inst3|cnt[2][16]~q\ : std_logic;
SIGNAL \inst3|cnt[2][16]~260\ : std_logic;
SIGNAL \inst3|cnt[2][17]~261_combout\ : std_logic;
SIGNAL \inst3|cnt[2][17]~q\ : std_logic;
SIGNAL \inst3|cnt[2][17]~262\ : std_logic;
SIGNAL \inst3|cnt[2][18]~263_combout\ : std_logic;
SIGNAL \inst3|cnt[2][18]~q\ : std_logic;
SIGNAL \inst3|cnt[2][18]~264\ : std_logic;
SIGNAL \inst3|cnt[2][19]~265_combout\ : std_logic;
SIGNAL \inst3|cnt[2][19]~q\ : std_logic;
SIGNAL \inst3|Equal2~5_combout\ : std_logic;
SIGNAL \inst3|cnt[2][19]~266\ : std_logic;
SIGNAL \inst3|cnt[2][20]~267_combout\ : std_logic;
SIGNAL \inst3|cnt[2][20]~q\ : std_logic;
SIGNAL \inst3|cnt[2][20]~268\ : std_logic;
SIGNAL \inst3|cnt[2][21]~269_combout\ : std_logic;
SIGNAL \inst3|cnt[2][21]~q\ : std_logic;
SIGNAL \inst3|cnt[2][21]~270\ : std_logic;
SIGNAL \inst3|cnt[2][22]~271_combout\ : std_logic;
SIGNAL \inst3|cnt[2][22]~q\ : std_logic;
SIGNAL \inst3|cnt[2][22]~272\ : std_logic;
SIGNAL \inst3|cnt[2][23]~273_combout\ : std_logic;
SIGNAL \inst3|cnt[2][23]~q\ : std_logic;
SIGNAL \inst3|Equal2~6_combout\ : std_logic;
SIGNAL \inst3|Equal2~7_combout\ : std_logic;
SIGNAL \inst3|cnt[2][23]~274\ : std_logic;
SIGNAL \inst3|cnt[2][24]~275_combout\ : std_logic;
SIGNAL \inst3|cnt[2][24]~q\ : std_logic;
SIGNAL \inst3|cnt[2][24]~276\ : std_logic;
SIGNAL \inst3|cnt[2][25]~277_combout\ : std_logic;
SIGNAL \inst3|cnt[2][25]~q\ : std_logic;
SIGNAL \inst3|cnt[2][25]~278\ : std_logic;
SIGNAL \inst3|cnt[2][26]~279_combout\ : std_logic;
SIGNAL \inst3|cnt[2][26]~q\ : std_logic;
SIGNAL \inst3|cnt[2][26]~280\ : std_logic;
SIGNAL \inst3|cnt[2][27]~281_combout\ : std_logic;
SIGNAL \inst3|cnt[2][27]~q\ : std_logic;
SIGNAL \inst3|Equal2~8_combout\ : std_logic;
SIGNAL \inst3|cnt[2][27]~282\ : std_logic;
SIGNAL \inst3|cnt[2][28]~283_combout\ : std_logic;
SIGNAL \inst3|cnt[2][28]~q\ : std_logic;
SIGNAL \inst3|cnt[2][28]~284\ : std_logic;
SIGNAL \inst3|cnt[2][29]~285_combout\ : std_logic;
SIGNAL \inst3|cnt[2][29]~q\ : std_logic;
SIGNAL \inst3|cnt[2][29]~286\ : std_logic;
SIGNAL \inst3|cnt[2][30]~287_combout\ : std_logic;
SIGNAL \inst3|cnt[2][30]~q\ : std_logic;
SIGNAL \inst3|cnt[2][30]~288\ : std_logic;
SIGNAL \inst3|cnt[2][31]~289_combout\ : std_logic;
SIGNAL \inst3|cnt[2][31]~q\ : std_logic;
SIGNAL \inst3|Equal2~9_combout\ : std_logic;
SIGNAL \inst3|Equal2~10_combout\ : std_logic;
SIGNAL \inst3|stable[2]~2_combout\ : std_logic;
SIGNAL \inst7|stop_d1~0_combout\ : std_logic;
SIGNAL \inst7|stop_d1~q\ : std_logic;
SIGNAL \inst7|stop_d2~feeder_combout\ : std_logic;
SIGNAL \inst7|stop_d2~q\ : std_logic;
SIGNAL \inst7|stop_rise~0_combout\ : std_logic;
SIGNAL \inst7|stop_rise~q\ : std_logic;
SIGNAL \inst7|run_en~0_combout\ : std_logic;
SIGNAL \inst7|run_en~q\ : std_logic;
SIGNAL \inst7|u_ctrl|Disparo~feeder_combout\ : std_logic;
SIGNAL \inst7|u_ctrl|Disparo~q\ : std_logic;
SIGNAL \inst7|u_ctrl|process_0~2_combout\ : std_logic;
SIGNAL \inst7|u_ctrl|estado_atual~62_combout\ : std_logic;
SIGNAL \inst7|u_ctrl|estado_atual.s0~q\ : std_logic;
SIGNAL \inst7|u_ctrl|Temp_out~0_combout\ : std_logic;
SIGNAL \inst7|u_tmp|Add0~0_combout\ : std_logic;
SIGNAL \inst7|u_tmp|Add0~5_combout\ : std_logic;
SIGNAL \inst7|u_tmp|Add0~1\ : std_logic;
SIGNAL \inst7|u_tmp|Add0~2_combout\ : std_logic;
SIGNAL \inst7|u_tmp|Add0~4_combout\ : std_logic;
SIGNAL \inst7|u_tmp|Add0~3\ : std_logic;
SIGNAL \inst7|u_tmp|Add0~6_combout\ : std_logic;
SIGNAL \inst7|u_tmp|Add0~8_combout\ : std_logic;
SIGNAL \inst7|u_tmp|Add0~7\ : std_logic;
SIGNAL \inst7|u_tmp|Add0~9_combout\ : std_logic;
SIGNAL \inst7|u_tmp|Add0~11_combout\ : std_logic;
SIGNAL \inst7|u_tmp|Add0~10\ : std_logic;
SIGNAL \inst7|u_tmp|Add0~12_combout\ : std_logic;
SIGNAL \inst7|u_tmp|Add0~14_combout\ : std_logic;
SIGNAL \inst7|u_tmp|Add0~13\ : std_logic;
SIGNAL \inst7|u_tmp|Add0~15_combout\ : std_logic;
SIGNAL \inst7|u_ctrl|estado_atual~83_combout\ : std_logic;
SIGNAL \inst7|u_ctrl|estado_atual.s1~q\ : std_logic;
SIGNAL \inst7|u_ctrl|estado_atual~73_combout\ : std_logic;
SIGNAL \inst7|u_ctrl|estado_atual.s2~q\ : std_logic;
SIGNAL \inst7|u_ctrl|estado_atual~84_combout\ : std_logic;
SIGNAL \inst7|u_ctrl|estado_atual.s3~q\ : std_logic;
SIGNAL \inst7|u_ctrl|estado_atual~74_combout\ : std_logic;
SIGNAL \inst7|u_ctrl|estado_atual.s4~q\ : std_logic;
SIGNAL \inst7|u_ctrl|estado_atual~81_combout\ : std_logic;
SIGNAL \inst7|u_ctrl|estado_atual.s5~q\ : std_logic;
SIGNAL \inst7|u_ctrl|estado_atual~56_combout\ : std_logic;
SIGNAL \inst7|u_ctrl|estado_atual.s6~q\ : std_logic;
SIGNAL \inst7|u_ctrl|estado_atual~60_combout\ : std_logic;
SIGNAL \inst7|u_ctrl|estado_atual.s7~q\ : std_logic;
SIGNAL \inst7|u_ctrl|estado_atual~77_combout\ : std_logic;
SIGNAL \inst7|u_ctrl|estado_atual.s8~q\ : std_logic;
SIGNAL \inst7|u_ctrl|estado_atual~68_combout\ : std_logic;
SIGNAL \inst7|u_ctrl|estado_atual.s9~q\ : std_logic;
SIGNAL \inst7|u_ctrl|estado_atual~63_combout\ : std_logic;
SIGNAL \inst7|u_ctrl|estado_atual.s10~q\ : std_logic;
SIGNAL \inst7|u_ctrl|estado_atual~47_combout\ : std_logic;
SIGNAL \inst7|u_ctrl|estado_atual.s11~q\ : std_logic;
SIGNAL \inst7|u_ctrl|estado_atual~49_combout\ : std_logic;
SIGNAL \inst7|u_ctrl|estado_atual.s12~q\ : std_logic;
SIGNAL \inst7|u_ctrl|estado_atual~70_combout\ : std_logic;
SIGNAL \inst7|u_ctrl|estado_atual.s13~q\ : std_logic;
SIGNAL \inst7|u_ctrl|estado_atual~54_combout\ : std_logic;
SIGNAL \inst7|u_ctrl|estado_atual.s14~q\ : std_logic;
SIGNAL \inst7|u_ctrl|estado_atual~64_combout\ : std_logic;
SIGNAL \inst7|u_ctrl|estado_atual.s15~q\ : std_logic;
SIGNAL \inst7|u_ctrl|estado_atual~50_combout\ : std_logic;
SIGNAL \inst7|u_ctrl|estado_atual.s16~q\ : std_logic;
SIGNAL \inst7|u_ctrl|estado_atual~53_combout\ : std_logic;
SIGNAL \inst7|u_ctrl|estado_atual.s17~q\ : std_logic;
SIGNAL \inst7|u_ctrl|estado_atual~57_combout\ : std_logic;
SIGNAL \inst7|u_ctrl|estado_atual.s18~q\ : std_logic;
SIGNAL \inst7|u_ctrl|estado_atual~78_combout\ : std_logic;
SIGNAL \inst7|u_ctrl|estado_atual.s19~q\ : std_logic;
SIGNAL \inst7|u_ctrl|estado_atual~65_combout\ : std_logic;
SIGNAL \inst7|u_ctrl|estado_atual.s20~q\ : std_logic;
SIGNAL \inst7|u_ctrl|estado_atual~51_combout\ : std_logic;
SIGNAL \inst7|u_ctrl|estado_atual.s21~q\ : std_logic;
SIGNAL \inst7|u_ctrl|estado_atual~85_combout\ : std_logic;
SIGNAL \inst7|u_ctrl|estado_atual.s22~q\ : std_logic;
SIGNAL \inst7|u_ctrl|estado_atual~75_combout\ : std_logic;
SIGNAL \inst7|u_ctrl|estado_atual.s23~q\ : std_logic;
SIGNAL \inst7|u_ctrl|estado_atual~86_combout\ : std_logic;
SIGNAL \inst7|u_ctrl|estado_atual.s24~q\ : std_logic;
SIGNAL \inst7|u_ctrl|estado_atual~76_combout\ : std_logic;
SIGNAL \inst7|u_ctrl|estado_atual.s25~q\ : std_logic;
SIGNAL \inst7|u_ctrl|estado_atual~82_combout\ : std_logic;
SIGNAL \inst7|u_ctrl|estado_atual.s26~q\ : std_logic;
SIGNAL \inst7|u_ctrl|estado_atual~58_combout\ : std_logic;
SIGNAL \inst7|u_ctrl|estado_atual.s27~q\ : std_logic;
SIGNAL \inst7|u_ctrl|estado_atual~61_combout\ : std_logic;
SIGNAL \inst7|u_ctrl|estado_atual.s28~q\ : std_logic;
SIGNAL \inst7|u_ctrl|estado_atual~79_combout\ : std_logic;
SIGNAL \inst7|u_ctrl|estado_atual.s29~q\ : std_logic;
SIGNAL \inst7|u_ctrl|estado_atual~69_combout\ : std_logic;
SIGNAL \inst7|u_ctrl|estado_atual.s30~q\ : std_logic;
SIGNAL \inst7|u_ctrl|WideOr42~0_combout\ : std_logic;
SIGNAL \inst7|u_ctrl|WideOr43~combout\ : std_logic;
SIGNAL \inst7|u_tmp|cnt~0_combout\ : std_logic;
SIGNAL \inst7|u_tmp|Add0~16\ : std_logic;
SIGNAL \inst7|u_tmp|Add0~17_combout\ : std_logic;
SIGNAL \inst7|u_ctrl|WideOr42~1_combout\ : std_logic;
SIGNAL \inst7|u_tmp|cnt~1_combout\ : std_logic;
SIGNAL \inst7|u_tmp|Add0~18\ : std_logic;
SIGNAL \inst7|u_tmp|Add0~19_combout\ : std_logic;
SIGNAL \inst7|u_tmp|cnt~2_combout\ : std_logic;
SIGNAL \inst7|u_tmp|Add0~20\ : std_logic;
SIGNAL \inst7|u_tmp|Add0~21_combout\ : std_logic;
SIGNAL \inst7|u_tmp|Add0~23_combout\ : std_logic;
SIGNAL \inst7|u_tmp|Add0~22\ : std_logic;
SIGNAL \inst7|u_tmp|Add0~24_combout\ : std_logic;
SIGNAL \inst7|u_tmp|Add0~26_combout\ : std_logic;
SIGNAL \inst7|u_tmp|Add0~25\ : std_logic;
SIGNAL \inst7|u_tmp|Add0~27_combout\ : std_logic;
SIGNAL \inst7|u_tmp|cnt~3_combout\ : std_logic;
SIGNAL \inst7|u_tmp|Add0~28\ : std_logic;
SIGNAL \inst7|u_tmp|Add0~29_combout\ : std_logic;
SIGNAL \inst7|u_tmp|cnt~4_combout\ : std_logic;
SIGNAL \inst7|u_tmp|Add0~30\ : std_logic;
SIGNAL \inst7|u_tmp|Add0~31_combout\ : std_logic;
SIGNAL \inst7|u_tmp|Add0~33_combout\ : std_logic;
SIGNAL \inst7|u_tmp|Add0~32\ : std_logic;
SIGNAL \inst7|u_tmp|Add0~34_combout\ : std_logic;
SIGNAL \inst7|u_tmp|Add0~36_combout\ : std_logic;
SIGNAL \inst7|u_tmp|Add0~35\ : std_logic;
SIGNAL \inst7|u_tmp|Add0~37_combout\ : std_logic;
SIGNAL \inst7|u_tmp|cnt~5_combout\ : std_logic;
SIGNAL \inst7|u_tmp|Add0~38\ : std_logic;
SIGNAL \inst7|u_tmp|Add0~39_combout\ : std_logic;
SIGNAL \inst7|u_tmp|cnt~6_combout\ : std_logic;
SIGNAL \inst7|u_tmp|Add0~40\ : std_logic;
SIGNAL \inst7|u_tmp|Add0~41_combout\ : std_logic;
SIGNAL \inst7|u_tmp|cnt~7_combout\ : std_logic;
SIGNAL \inst7|u_tmp|Add0~42\ : std_logic;
SIGNAL \inst7|u_tmp|Add0~43_combout\ : std_logic;
SIGNAL \inst7|u_tmp|cnt~8_combout\ : std_logic;
SIGNAL \inst7|u_tmp|Add0~44\ : std_logic;
SIGNAL \inst7|u_tmp|Add0~45_combout\ : std_logic;
SIGNAL \inst7|u_tmp|cnt~9_combout\ : std_logic;
SIGNAL \inst7|u_tmp|Add0~46\ : std_logic;
SIGNAL \inst7|u_tmp|Add0~47_combout\ : std_logic;
SIGNAL \inst7|u_tmp|Add0~49_combout\ : std_logic;
SIGNAL \inst7|u_tmp|Add0~48\ : std_logic;
SIGNAL \inst7|u_tmp|Add0~50_combout\ : std_logic;
SIGNAL \inst7|u_tmp|Add0~52_combout\ : std_logic;
SIGNAL \inst7|u_tmp|Add0~51\ : std_logic;
SIGNAL \inst7|u_tmp|Add0~53_combout\ : std_logic;
SIGNAL \inst7|u_tmp|Add0~55_combout\ : std_logic;
SIGNAL \inst7|u_tmp|Add0~54\ : std_logic;
SIGNAL \inst7|u_tmp|Add0~56_combout\ : std_logic;
SIGNAL \inst7|u_tmp|cnt~10_combout\ : std_logic;
SIGNAL \inst7|u_tmp|Add0~57\ : std_logic;
SIGNAL \inst7|u_tmp|Add0~58_combout\ : std_logic;
SIGNAL \inst7|u_tmp|cnt~11_combout\ : std_logic;
SIGNAL \inst7|u_tmp|Equal0~6_combout\ : std_logic;
SIGNAL \inst7|u_tmp|Equal0~5_combout\ : std_logic;
SIGNAL \inst7|u_tmp|Equal0~7_combout\ : std_logic;
SIGNAL \inst7|u_tmp|Add0~59\ : std_logic;
SIGNAL \inst7|u_tmp|Add0~60_combout\ : std_logic;
SIGNAL \inst7|u_tmp|cnt~12_combout\ : std_logic;
SIGNAL \inst7|u_tmp|Add0~61\ : std_logic;
SIGNAL \inst7|u_tmp|Add0~62_combout\ : std_logic;
SIGNAL \inst7|u_tmp|cnt~13_combout\ : std_logic;
SIGNAL \inst7|u_tmp|Add0~63\ : std_logic;
SIGNAL \inst7|u_tmp|Add0~64_combout\ : std_logic;
SIGNAL \inst7|u_tmp|Add0~66_combout\ : std_logic;
SIGNAL \inst7|u_tmp|Add0~65\ : std_logic;
SIGNAL \inst7|u_tmp|Add0~67_combout\ : std_logic;
SIGNAL \inst7|u_tmp|Add0~69_combout\ : std_logic;
SIGNAL \inst7|u_tmp|Equal0~8_combout\ : std_logic;
SIGNAL \inst7|u_tmp|Equal0~2_combout\ : std_logic;
SIGNAL \inst7|u_tmp|Equal0~1_combout\ : std_logic;
SIGNAL \inst7|u_tmp|Equal0~0_combout\ : std_logic;
SIGNAL \inst7|u_tmp|Equal0~3_combout\ : std_logic;
SIGNAL \inst7|u_tmp|Equal0~4_combout\ : std_logic;
SIGNAL \inst7|u_tmp|Add0~68\ : std_logic;
SIGNAL \inst7|u_tmp|Add0~70_combout\ : std_logic;
SIGNAL \inst7|u_tmp|Add0~72_combout\ : std_logic;
SIGNAL \inst7|u_tmp|Add0~71\ : std_logic;
SIGNAL \inst7|u_tmp|Add0~73_combout\ : std_logic;
SIGNAL \inst7|u_tmp|Add0~75_combout\ : std_logic;
SIGNAL \inst7|u_tmp|Add0~74\ : std_logic;
SIGNAL \inst7|u_tmp|Add0~76_combout\ : std_logic;
SIGNAL \inst7|u_tmp|Add0~78_combout\ : std_logic;
SIGNAL \inst7|u_tmp|Add0~77\ : std_logic;
SIGNAL \inst7|u_tmp|Add0~79_combout\ : std_logic;
SIGNAL \inst7|u_tmp|Add0~81_combout\ : std_logic;
SIGNAL \inst7|u_tmp|Equal0~9_combout\ : std_logic;
SIGNAL \inst7|u_tmp|Equal0~10_combout\ : std_logic;
SIGNAL \inst7|u_ctrl|estado_atual~45_combout\ : std_logic;
SIGNAL \inst7|u_ctrl|estado_atual.s34~q\ : std_logic;
SIGNAL \inst7|u_ctrl|estado_atual~55_combout\ : std_logic;
SIGNAL \inst7|u_ctrl|estado_atual.s35~q\ : std_logic;
SIGNAL \inst7|u_ctrl|estado_atual~67_combout\ : std_logic;
SIGNAL \inst7|u_ctrl|estado_atual.s36~q\ : std_logic;
SIGNAL \inst7|u_ctrl|estado_atual~46_combout\ : std_logic;
SIGNAL \inst7|u_ctrl|estado_atual.s37~q\ : std_logic;
SIGNAL \inst7|u_ctrl|estado_atual~80_combout\ : std_logic;
SIGNAL \inst7|u_ctrl|estado_atual.s38~q\ : std_logic;
SIGNAL \inst7|u_ctrl|estado_atual~59_combout\ : std_logic;
SIGNAL \inst7|u_ctrl|estado_atual.s39~q\ : std_logic;
SIGNAL \inst7|u_ctrl|estado_atual~72_combout\ : std_logic;
SIGNAL \inst7|u_ctrl|estado_atual.s40~q\ : std_logic;
SIGNAL \inst7|u_ctrl|estado_atual~44_combout\ : std_logic;
SIGNAL \inst7|u_ctrl|estado_atual.s41~q\ : std_logic;
SIGNAL \inst7|u_ctrl|process_0~1_combout\ : std_logic;
SIGNAL \inst7|u_ctrl|song_end_r~q\ : std_logic;
SIGNAL \inst7|process_0~0_combout\ : std_logic;
SIGNAL \inst7|stop_pulse~q\ : std_logic;
SIGNAL \inst7|u_ctrl|estado_atual~66_combout\ : std_logic;
SIGNAL \inst7|u_ctrl|estado_atual.s31~q\ : std_logic;
SIGNAL \inst7|u_ctrl|estado_atual~48_combout\ : std_logic;
SIGNAL \inst7|u_ctrl|estado_atual.s32~q\ : std_logic;
SIGNAL \inst7|u_ctrl|estado_atual~52_combout\ : std_logic;
SIGNAL \inst7|u_ctrl|estado_atual.s33~q\ : std_logic;
SIGNAL \inst7|u_ctrl|WideOr44~3_combout\ : std_logic;
SIGNAL \inst7|u_ctrl|WideOr44~2_combout\ : std_logic;
SIGNAL \inst7|u_ctrl|WideOr55~2_combout\ : std_logic;
SIGNAL \inst7|u_ctrl|WideOr55~3_combout\ : std_logic;
SIGNAL \inst7|u_ctrl|WideOr45~combout\ : std_logic;
SIGNAL \inst7|u_ctrl|WideOr49~2_combout\ : std_logic;
SIGNAL \inst7|u_ctrl|WideOr49~3_combout\ : std_logic;
SIGNAL \inst7|u_ctrl|WideOr48~0_combout\ : std_logic;
SIGNAL \inst7|u_ctrl|WideOr48~1_combout\ : std_logic;
SIGNAL \inst7|u_ctrl|WideOr46~combout\ : std_logic;
SIGNAL \inst7|u_ctrl|WideOr47~4_combout\ : std_logic;
SIGNAL \inst7|u_ctrl|WideOr50~0_combout\ : std_logic;
SIGNAL \inst7|u_ctrl|WideOr47~5_combout\ : std_logic;
SIGNAL \inst7|u_ctrl|WideOr47~combout\ : std_logic;
SIGNAL \inst7|u_div|LessThan0~13_combout\ : std_logic;
SIGNAL \inst7|u_div|LessThan0~14_combout\ : std_logic;
SIGNAL \inst7|u_div|LessThan0~11_combout\ : std_logic;
SIGNAL \inst7|u_ctrl|WideOr45~0_combout\ : std_logic;
SIGNAL \inst7|u_ctrl|WideOr48~combout\ : std_logic;
SIGNAL \inst7|u_ctrl|WideOr49~4_combout\ : std_logic;
SIGNAL \inst7|u_ctrl|WideOr49~combout\ : std_logic;
SIGNAL \inst7|u_ctrl|WideOr50~combout\ : std_logic;
SIGNAL \inst7|u_ctrl|WideOr51~combout\ : std_logic;
SIGNAL \inst7|u_ctrl|WideOr52~0_combout\ : std_logic;
SIGNAL \inst7|u_ctrl|WideOr52~combout\ : std_logic;
SIGNAL \inst7|u_ctrl|WideOr54~combout\ : std_logic;
SIGNAL \inst7|u_ctrl|WideOr55~combout\ : std_logic;
SIGNAL \inst7|u_ctrl|WideOr56~combout\ : std_logic;
SIGNAL \inst7|u_ctrl|WideOr58~combout\ : std_logic;
SIGNAL \inst7|u_ctrl|WideOr57~combout\ : std_logic;
SIGNAL \inst7|u_div|LessThan0~0_combout\ : std_logic;
SIGNAL \inst7|u_div|LessThan0~1_combout\ : std_logic;
SIGNAL \inst7|u_div|LessThan0~2_combout\ : std_logic;
SIGNAL \inst7|u_div|LessThan0~3_combout\ : std_logic;
SIGNAL \inst7|u_div|LessThan0~4_combout\ : std_logic;
SIGNAL \inst7|u_ctrl|WideOr53~combout\ : std_logic;
SIGNAL \inst7|u_div|LessThan0~5_combout\ : std_logic;
SIGNAL \inst7|u_div|LessThan0~6_combout\ : std_logic;
SIGNAL \inst7|u_div|LessThan0~7_combout\ : std_logic;
SIGNAL \inst7|u_div|LessThan0~8_combout\ : std_logic;
SIGNAL \inst7|u_div|LessThan0~9_combout\ : std_logic;
SIGNAL \inst7|u_div|LessThan0~10_combout\ : std_logic;
SIGNAL \inst7|u_div|LessThan0~12_combout\ : std_logic;
SIGNAL \inst7|u_ctrl|WideOr44~combout\ : std_logic;
SIGNAL \inst7|u_div|LessThan0~15_combout\ : std_logic;
SIGNAL \inst7|u_div|LessThan0~20_combout\ : std_logic;
SIGNAL \inst7|u_div|LessThan0~21_combout\ : std_logic;
SIGNAL \inst7|u_div|cnt[0]~33\ : std_logic;
SIGNAL \inst7|u_div|cnt[1]~34_combout\ : std_logic;
SIGNAL \inst7|u_div|cnt[1]~35\ : std_logic;
SIGNAL \inst7|u_div|cnt[2]~36_combout\ : std_logic;
SIGNAL \inst7|u_div|cnt[2]~37\ : std_logic;
SIGNAL \inst7|u_div|cnt[3]~38_combout\ : std_logic;
SIGNAL \inst7|u_div|cnt[3]~39\ : std_logic;
SIGNAL \inst7|u_div|cnt[4]~40_combout\ : std_logic;
SIGNAL \inst7|u_div|cnt[4]~41\ : std_logic;
SIGNAL \inst7|u_div|cnt[5]~42_combout\ : std_logic;
SIGNAL \inst7|u_div|cnt[5]~43\ : std_logic;
SIGNAL \inst7|u_div|cnt[6]~44_combout\ : std_logic;
SIGNAL \inst7|u_div|cnt[6]~45\ : std_logic;
SIGNAL \inst7|u_div|cnt[7]~46_combout\ : std_logic;
SIGNAL \inst7|u_div|cnt[7]~47\ : std_logic;
SIGNAL \inst7|u_div|cnt[8]~48_combout\ : std_logic;
SIGNAL \inst7|u_div|cnt[8]~49\ : std_logic;
SIGNAL \inst7|u_div|cnt[9]~50_combout\ : std_logic;
SIGNAL \inst7|u_div|cnt[9]~51\ : std_logic;
SIGNAL \inst7|u_div|cnt[10]~52_combout\ : std_logic;
SIGNAL \inst7|u_div|cnt[10]~53\ : std_logic;
SIGNAL \inst7|u_div|cnt[11]~54_combout\ : std_logic;
SIGNAL \inst7|u_div|cnt[11]~55\ : std_logic;
SIGNAL \inst7|u_div|cnt[12]~56_combout\ : std_logic;
SIGNAL \inst7|u_div|cnt[12]~57\ : std_logic;
SIGNAL \inst7|u_div|cnt[13]~58_combout\ : std_logic;
SIGNAL \inst7|u_div|cnt[13]~59\ : std_logic;
SIGNAL \inst7|u_div|cnt[14]~60_combout\ : std_logic;
SIGNAL \inst7|u_div|cnt[14]~61\ : std_logic;
SIGNAL \inst7|u_div|cnt[15]~62_combout\ : std_logic;
SIGNAL \inst7|u_div|cnt[15]~63\ : std_logic;
SIGNAL \inst7|u_div|cnt[16]~64_combout\ : std_logic;
SIGNAL \inst7|u_div|cnt[16]~65\ : std_logic;
SIGNAL \inst7|u_div|cnt[17]~66_combout\ : std_logic;
SIGNAL \inst7|u_div|cnt[17]~67\ : std_logic;
SIGNAL \inst7|u_div|cnt[18]~68_combout\ : std_logic;
SIGNAL \inst7|u_div|cnt[18]~69\ : std_logic;
SIGNAL \inst7|u_div|cnt[19]~70_combout\ : std_logic;
SIGNAL \inst7|u_div|cnt[19]~71\ : std_logic;
SIGNAL \inst7|u_div|cnt[20]~72_combout\ : std_logic;
SIGNAL \inst7|u_div|cnt[20]~73\ : std_logic;
SIGNAL \inst7|u_div|cnt[21]~74_combout\ : std_logic;
SIGNAL \inst7|u_div|cnt[21]~75\ : std_logic;
SIGNAL \inst7|u_div|cnt[22]~76_combout\ : std_logic;
SIGNAL \inst7|u_div|cnt[22]~77\ : std_logic;
SIGNAL \inst7|u_div|cnt[23]~78_combout\ : std_logic;
SIGNAL \inst7|u_div|cnt[23]~79\ : std_logic;
SIGNAL \inst7|u_div|cnt[24]~80_combout\ : std_logic;
SIGNAL \inst7|u_div|cnt[24]~81\ : std_logic;
SIGNAL \inst7|u_div|cnt[25]~82_combout\ : std_logic;
SIGNAL \inst7|u_div|cnt[25]~83\ : std_logic;
SIGNAL \inst7|u_div|cnt[26]~84_combout\ : std_logic;
SIGNAL \inst7|u_div|cnt[26]~85\ : std_logic;
SIGNAL \inst7|u_div|cnt[27]~86_combout\ : std_logic;
SIGNAL \inst7|u_div|cnt[27]~87\ : std_logic;
SIGNAL \inst7|u_div|cnt[28]~88_combout\ : std_logic;
SIGNAL \inst7|u_div|cnt[28]~89\ : std_logic;
SIGNAL \inst7|u_div|cnt[29]~90_combout\ : std_logic;
SIGNAL \inst7|u_div|cnt[29]~91\ : std_logic;
SIGNAL \inst7|u_div|cnt[30]~92_combout\ : std_logic;
SIGNAL \inst7|u_div|cnt[30]~93\ : std_logic;
SIGNAL \inst7|u_div|cnt[31]~94_combout\ : std_logic;
SIGNAL \inst7|u_div|toggle~0_combout\ : std_logic;
SIGNAL \inst7|u_div|toggle~q\ : std_logic;
SIGNAL \inst7|buzzer~0_combout\ : std_logic;
SIGNAL \inst1|lcd_bus[7]~59_combout\ : std_logic;
SIGNAL \inst2|Selector38~0_combout\ : std_logic;
SIGNAL \inst2|lcd_data[2]~1_combout\ : std_logic;
SIGNAL \inst2|lcd_data[2]~2_combout\ : std_logic;
SIGNAL \inst1|Mux3~0_combout\ : std_logic;
SIGNAL \inst1|key1_d1~feeder_combout\ : std_logic;
SIGNAL \inst1|key1_d1~q\ : std_logic;
SIGNAL \inst1|key1_d2~feeder_combout\ : std_logic;
SIGNAL \inst1|key1_d2~q\ : std_logic;
SIGNAL \inst1|key1_rise~0_combout\ : std_logic;
SIGNAL \inst1|key1_rise~q\ : std_logic;
SIGNAL \inst1|Selector94~0_combout\ : std_logic;
SIGNAL \inst1|state.BACK_MENU~q\ : std_logic;
SIGNAL \inst1|key2_d1~feeder_combout\ : std_logic;
SIGNAL \inst1|key2_d1~q\ : std_logic;
SIGNAL \inst1|key2_d2~feeder_combout\ : std_logic;
SIGNAL \inst1|key2_d2~q\ : std_logic;
SIGNAL \inst1|key2_rise~0_combout\ : std_logic;
SIGNAL \inst1|key2_rise~q\ : std_logic;
SIGNAL \inst1|Selector93~0_combout\ : std_logic;
SIGNAL \inst1|Selector93~1_combout\ : std_logic;
SIGNAL \inst1|state.SHOW_MENU~0_combout\ : std_logic;
SIGNAL \inst1|state.SHOW_MENU~q\ : std_logic;
SIGNAL \inst1|Selector93~3_combout\ : std_logic;
SIGNAL \inst1|state.SONG1~q\ : std_logic;
SIGNAL \inst1|Selector92~0_combout\ : std_logic;
SIGNAL \inst1|state.SONG2~q\ : std_logic;
SIGNAL \inst1|state~12_combout\ : std_logic;
SIGNAL \inst1|Selector93~2_combout\ : std_logic;
SIGNAL \inst1|state.PLAYING~q\ : std_logic;
SIGNAL \inst1|Selector71~0_combout\ : std_logic;
SIGNAL \inst1|Selector45~0_combout\ : std_logic;
SIGNAL \inst1|Mux3~12_combout\ : std_logic;
SIGNAL \inst1|Mux3~13_combout\ : std_logic;
SIGNAL \inst1|Selector4~0_combout\ : std_logic;
SIGNAL \inst1|Mux3~1_combout\ : std_logic;
SIGNAL \inst1|Mux3~2_combout\ : std_logic;
SIGNAL \inst1|Mux3~3_combout\ : std_logic;
SIGNAL \inst1|Mux3~4_combout\ : std_logic;
SIGNAL \inst1|Mux3~5_combout\ : std_logic;
SIGNAL \inst1|Mux3~6_combout\ : std_logic;
SIGNAL \inst1|Mux3~7_combout\ : std_logic;
SIGNAL \inst1|Mux3~8_combout\ : std_logic;
SIGNAL \inst1|Mux3~9_combout\ : std_logic;
SIGNAL \inst1|Mux3~10_combout\ : std_logic;
SIGNAL \inst1|Mux3~11_combout\ : std_logic;
SIGNAL \inst1|lcd_bus[6]~8_combout\ : std_logic;
SIGNAL \inst1|lcd_bus[6]~9_combout\ : std_logic;
SIGNAL \inst1|lcd_bus[6]~10_combout\ : std_logic;
SIGNAL \inst1|lcd_bus[0]~11_combout\ : std_logic;
SIGNAL \inst2|Selector39~0_combout\ : std_logic;
SIGNAL \inst1|Mux3~20_combout\ : std_logic;
SIGNAL \inst1|Mux3~21_combout\ : std_logic;
SIGNAL \inst1|Mux3~18_combout\ : std_logic;
SIGNAL \inst1|Mux3~17_combout\ : std_logic;
SIGNAL \inst1|Mux3~19_combout\ : std_logic;
SIGNAL \inst1|lcd_bus[5]~12_combout\ : std_logic;
SIGNAL \inst1|Mux3~14_combout\ : std_logic;
SIGNAL \inst1|Mux3~15_combout\ : std_logic;
SIGNAL \inst1|Mux3~16_combout\ : std_logic;
SIGNAL \inst1|Mux3~22_combout\ : std_logic;
SIGNAL \inst1|lcd_bus[5]~13_combout\ : std_logic;
SIGNAL \inst1|lcd_bus[5]~14_combout\ : std_logic;
SIGNAL \inst2|Selector40~2_combout\ : std_logic;
SIGNAL \inst2|Selector40~3_combout\ : std_logic;
SIGNAL \inst2|Selector40~4_combout\ : std_logic;
SIGNAL \inst1|Mux3~26_combout\ : std_logic;
SIGNAL \inst1|Mux3~27_combout\ : std_logic;
SIGNAL \inst1|Mux3~23_combout\ : std_logic;
SIGNAL \inst1|Mux3~25_combout\ : std_logic;
SIGNAL \inst1|L2~0_combout\ : std_logic;
SIGNAL \inst1|Mux3~24_combout\ : std_logic;
SIGNAL \inst1|lcd_bus[4]~15_combout\ : std_logic;
SIGNAL \inst1|lcd_bus[4]~16_combout\ : std_logic;
SIGNAL \inst1|Mux3~28_combout\ : std_logic;
SIGNAL \inst1|Selector69~0_combout\ : std_logic;
SIGNAL \inst1|L2[48]~1_combout\ : std_logic;
SIGNAL \inst1|lcd_bus[4]~17_combout\ : std_logic;
SIGNAL \inst1|lcd_bus[4]~18_combout\ : std_logic;
SIGNAL \inst1|lcd_bus[4]~19_combout\ : std_logic;
SIGNAL \inst1|lcd_bus[4]~20_combout\ : std_logic;
SIGNAL \inst1|lcd_bus[4]~0_combout\ : std_logic;
SIGNAL \inst1|Mux5~0_combout\ : std_logic;
SIGNAL \inst2|Selector41~2_combout\ : std_logic;
SIGNAL \inst1|Mux6~1_combout\ : std_logic;
SIGNAL \inst1|lcd_bus[2]~32_combout\ : std_logic;
SIGNAL \inst1|Mux6~0_combout\ : std_logic;
SIGNAL \inst1|lcd_bus[3]~58_combout\ : std_logic;
SIGNAL \inst1|lcd_bus[2]~57_combout\ : std_logic;
SIGNAL \inst1|Mux3~33_combout\ : std_logic;
SIGNAL \inst1|Mux3~34_combout\ : std_logic;
SIGNAL \inst1|lcd_bus[3]~30_combout\ : std_logic;
SIGNAL \inst1|lcd_bus[0]~27_combout\ : std_logic;
SIGNAL \inst1|Selector71~1_combout\ : std_logic;
SIGNAL \inst1|Selector28~0_combout\ : std_logic;
SIGNAL \inst1|Mux3~30_combout\ : std_logic;
SIGNAL \inst1|Selector74~0_combout\ : std_logic;
SIGNAL \inst1|Mux3~31_combout\ : std_logic;
SIGNAL \inst1|Mux3~32_combout\ : std_logic;
SIGNAL \inst1|lcd_bus[3]~28_combout\ : std_logic;
SIGNAL \inst1|lcd_bus[3]~29_combout\ : std_logic;
SIGNAL \inst1|lcd_bus[3]~24_combout\ : std_logic;
SIGNAL \inst1|lcd_bus[3]~21_combout\ : std_logic;
SIGNAL \inst1|lcd_bus[3]~22_combout\ : std_logic;
SIGNAL \inst1|Selector69~1_combout\ : std_logic;
SIGNAL \inst1|Mux3~29_combout\ : std_logic;
SIGNAL \inst1|lcd_bus[3]~23_combout\ : std_logic;
SIGNAL \inst1|lcd_bus[2]~25_combout\ : std_logic;
SIGNAL \inst1|lcd_bus[3]~26_combout\ : std_logic;
SIGNAL \inst1|lcd_bus[3]~31_combout\ : std_logic;
SIGNAL \inst1|lcd_bus[3]~33_combout\ : std_logic;
SIGNAL \inst2|Selector42~1_combout\ : std_logic;
SIGNAL \inst2|Selector42~2_combout\ : std_logic;
SIGNAL \inst1|lcd_bus[2]~36_combout\ : std_logic;
SIGNAL \inst1|lcd_bus[2]~35_combout\ : std_logic;
SIGNAL \inst1|lcd_bus[2]~37_combout\ : std_logic;
SIGNAL \inst1|Mux3~37_combout\ : std_logic;
SIGNAL \inst1|Mux3~35_combout\ : std_logic;
SIGNAL \inst1|Mux3~36_combout\ : std_logic;
SIGNAL \inst1|lcd_bus[2]~34_combout\ : std_logic;
SIGNAL \inst1|lcd_bus[2]~38_combout\ : std_logic;
SIGNAL \inst1|Mux3~38_combout\ : std_logic;
SIGNAL \inst1|lcd_bus[2]~39_combout\ : std_logic;
SIGNAL \inst1|lcd_bus[2]~40_combout\ : std_logic;
SIGNAL \inst1|lcd_bus[2]~41_combout\ : std_logic;
SIGNAL \inst1|lcd_bus[2]~42_combout\ : std_logic;
SIGNAL \inst2|Selector45~0_combout\ : std_logic;
SIGNAL \inst2|Selector43~2_combout\ : std_logic;
SIGNAL \inst2|Selector43~3_combout\ : std_logic;
SIGNAL \inst2|Selector43~4_combout\ : std_logic;
SIGNAL \inst2|Selector43~5_combout\ : std_logic;
SIGNAL \inst1|lcd_bus[1]~46_combout\ : std_logic;
SIGNAL \inst1|lcd_bus[1]~43_combout\ : std_logic;
SIGNAL \inst1|lcd_bus[1]~44_combout\ : std_logic;
SIGNAL \inst1|lcd_bus[1]~45_combout\ : std_logic;
SIGNAL \inst1|lcd_bus[1]~47_combout\ : std_logic;
SIGNAL \inst1|Mux3~39_combout\ : std_logic;
SIGNAL \inst1|Mux3~40_combout\ : std_logic;
SIGNAL \inst1|Mux3~41_combout\ : std_logic;
SIGNAL \inst1|Mux3~42_combout\ : std_logic;
SIGNAL \inst1|lcd_bus[1]~48_combout\ : std_logic;
SIGNAL \inst1|lcd_bus[1]~49_combout\ : std_logic;
SIGNAL \inst1|lcd_bus[1]~1_combout\ : std_logic;
SIGNAL \inst1|Mux5~1_combout\ : std_logic;
SIGNAL \inst2|Selector44~0_combout\ : std_logic;
SIGNAL \inst2|Selector44~1_combout\ : std_logic;
SIGNAL \inst1|Selector31~0_combout\ : std_logic;
SIGNAL \inst1|Mux3~46_combout\ : std_logic;
SIGNAL \inst1|Mux3~47_combout\ : std_logic;
SIGNAL \inst1|lcd_bus[2]~53_combout\ : std_logic;
SIGNAL \inst1|lcd_bus[0]~54_combout\ : std_logic;
SIGNAL \inst1|lcd_bus[0]~52_combout\ : std_logic;
SIGNAL \inst1|lcd_bus[0]~55_combout\ : std_logic;
SIGNAL \inst1|lcd_bus[0]~56_combout\ : std_logic;
SIGNAL \inst1|Mux3~45_combout\ : std_logic;
SIGNAL \inst1|Mux3~43_combout\ : std_logic;
SIGNAL \inst1|Mux3~44_combout\ : std_logic;
SIGNAL \inst1|lcd_bus[0]~50_combout\ : std_logic;
SIGNAL \inst1|lcd_bus[0]~51_combout\ : std_logic;
SIGNAL \inst1|lcd_bus[0]~2_combout\ : std_logic;
SIGNAL \inst1|Mux5~2_combout\ : std_logic;
SIGNAL \inst2|Selector45~1_combout\ : std_logic;
SIGNAL \inst2|Selector45~2_combout\ : std_logic;
SIGNAL \inst7|u_div|cnt\ : std_logic_vector(31 DOWNTO 0);
SIGNAL \inst1|lcd_bus\ : std_logic_vector(9 DOWNTO 0);
SIGNAL \inst2|lcd_data\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \inst1|L1\ : std_logic_vector(127 DOWNTO 0);
SIGNAL \inst7|u_ctrl|Freq_out\ : std_logic_vector(27 DOWNTO 0);
SIGNAL \inst2|clk_count\ : std_logic_vector(31 DOWNTO 0);
SIGNAL \inst1|char\ : std_logic_vector(5 DOWNTO 0);
SIGNAL \inst7|u_tmp|cnt\ : std_logic_vector(31 DOWNTO 0);
SIGNAL \inst1|L2\ : std_logic_vector(127 DOWNTO 0);
SIGNAL \inst3|stable\ : std_logic_vector(4 DOWNTO 1);
SIGNAL \inst7|u_ctrl|Temp_out\ : std_logic_vector(27 DOWNTO 0);
SIGNAL \inst3|s1\ : std_logic_vector(4 DOWNTO 1);
SIGNAL \inst3|s0\ : std_logic_vector(4 DOWNTO 1);

COMPONENT hard_block
    PORT (
	devoe : IN std_logic;
	devclrn : IN std_logic;
	devpor : IN std_logic);
END COMPONENT;

BEGIN

lcd_rw <= ww_lcd_rw;
ww_clock <= clock;
ww_key <= key;
lcd_en <= ww_lcd_en;
lcd_rs <= ww_lcd_rs;
buzzer <= ww_buzzer;
lcd_d <= ww_lcd_d;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

\clock~inputclkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \clock~input_o\);
auto_generated_inst : hard_block
PORT MAP (
	devoe => ww_devoe,
	devclrn => ww_devclrn,
	devpor => ww_devpor);

-- Location: IOOBUF_X7_Y24_N9
\lcd_rw~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \lcd_rw~output_o\);

-- Location: IOOBUF_X1_Y24_N2
\lcd_en~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst2|e~q\,
	devoe => ww_devoe,
	o => \lcd_en~output_o\);

-- Location: IOOBUF_X5_Y24_N9
\lcd_rs~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst2|rs~q\,
	devoe => ww_devoe,
	o => \lcd_rs~output_o\);

-- Location: IOOBUF_X30_Y24_N2
\buzzer~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst7|buzzer~0_combout\,
	devoe => ww_devoe,
	o => \buzzer~output_o\);

-- Location: IOOBUF_X0_Y18_N23
\lcd_d[7]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst2|lcd_data\(7),
	devoe => ww_devoe,
	o => \lcd_d[7]~output_o\);

-- Location: IOOBUF_X0_Y21_N9
\lcd_d[6]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst2|lcd_data\(6),
	devoe => ww_devoe,
	o => \lcd_d[6]~output_o\);

-- Location: IOOBUF_X0_Y18_N16
\lcd_d[5]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst2|lcd_data\(5),
	devoe => ww_devoe,
	o => \lcd_d[5]~output_o\);

-- Location: IOOBUF_X0_Y23_N9
\lcd_d[4]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst2|lcd_data\(4),
	devoe => ww_devoe,
	o => \lcd_d[4]~output_o\);

-- Location: IOOBUF_X0_Y23_N16
\lcd_d[3]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst2|lcd_data\(3),
	devoe => ww_devoe,
	o => \lcd_d[3]~output_o\);

-- Location: IOOBUF_X1_Y24_N9
\lcd_d[2]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst2|lcd_data\(2),
	devoe => ww_devoe,
	o => \lcd_d[2]~output_o\);

-- Location: IOOBUF_X0_Y23_N2
\lcd_d[1]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst2|lcd_data\(1),
	devoe => ww_devoe,
	o => \lcd_d[1]~output_o\);

-- Location: IOOBUF_X3_Y24_N23
\lcd_d[0]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst2|lcd_data\(0),
	devoe => ww_devoe,
	o => \lcd_d[0]~output_o\);

-- Location: IOIBUF_X0_Y11_N8
\clock~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_clock,
	o => \clock~input_o\);

-- Location: CLKCTRL_G2
\clock~inputclkctrl\ : cycloneive_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \clock~inputclkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \clock~inputclkctrl_outclk\);

-- Location: LCCOMB_X18_Y16_N10
\inst2|rs~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|rs~3_combout\ = (\inst2|estado.ENERGIZACAO~q\) # (!\inst2|LessThan0~6_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst2|estado.ENERGIZACAO~q\,
	datad => \inst2|LessThan0~6_combout\,
	combout => \inst2|rs~3_combout\);

-- Location: FF_X18_Y16_N11
\inst2|estado.ENERGIZACAO\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \inst2|rs~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst2|estado.ENERGIZACAO~q\);

-- Location: LCCOMB_X16_Y14_N20
\inst2|Add0~52\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|Add0~52_combout\ = (\inst2|clk_count\(26) & (\inst2|Add0~51\ $ (GND))) # (!\inst2|clk_count\(26) & (!\inst2|Add0~51\ & VCC))
-- \inst2|Add0~53\ = CARRY((\inst2|clk_count\(26) & !\inst2|Add0~51\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst2|clk_count\(26),
	datad => VCC,
	cin => \inst2|Add0~51\,
	combout => \inst2|Add0~52_combout\,
	cout => \inst2|Add0~53\);

-- Location: LCCOMB_X16_Y14_N22
\inst2|Add0~54\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|Add0~54_combout\ = (\inst2|clk_count\(27) & (!\inst2|Add0~53\)) # (!\inst2|clk_count\(27) & ((\inst2|Add0~53\) # (GND)))
-- \inst2|Add0~55\ = CARRY((!\inst2|Add0~53\) # (!\inst2|clk_count\(27)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst2|clk_count\(27),
	datad => VCC,
	cin => \inst2|Add0~53\,
	combout => \inst2|Add0~54_combout\,
	cout => \inst2|Add0~55\);

-- Location: LCCOMB_X19_Y14_N10
\inst2|Selector5~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|Selector5~0_combout\ = (\inst2|Add0~54_combout\ & \inst2|clk_count[27]~4_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst2|Add0~54_combout\,
	datad => \inst2|clk_count[27]~4_combout\,
	combout => \inst2|Selector5~0_combout\);

-- Location: FF_X19_Y14_N11
\inst2|clk_count[27]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \inst2|Selector5~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst2|clk_count\(27));

-- Location: LCCOMB_X16_Y14_N24
\inst2|Add0~56\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|Add0~56_combout\ = (\inst2|clk_count\(28) & (\inst2|Add0~55\ $ (GND))) # (!\inst2|clk_count\(28) & (!\inst2|Add0~55\ & VCC))
-- \inst2|Add0~57\ = CARRY((\inst2|clk_count\(28) & !\inst2|Add0~55\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|clk_count\(28),
	datad => VCC,
	cin => \inst2|Add0~55\,
	combout => \inst2|Add0~56_combout\,
	cout => \inst2|Add0~57\);

-- Location: LCCOMB_X19_Y14_N16
\inst2|Selector4~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|Selector4~0_combout\ = (\inst2|Add0~56_combout\ & \inst2|clk_count[27]~4_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst2|Add0~56_combout\,
	datad => \inst2|clk_count[27]~4_combout\,
	combout => \inst2|Selector4~0_combout\);

-- Location: FF_X19_Y14_N17
\inst2|clk_count[28]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \inst2|Selector4~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst2|clk_count\(28));

-- Location: LCCOMB_X16_Y14_N26
\inst2|Add0~58\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|Add0~58_combout\ = (\inst2|clk_count\(29) & (!\inst2|Add0~57\)) # (!\inst2|clk_count\(29) & ((\inst2|Add0~57\) # (GND)))
-- \inst2|Add0~59\ = CARRY((!\inst2|Add0~57\) # (!\inst2|clk_count\(29)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst2|clk_count\(29),
	datad => VCC,
	cin => \inst2|Add0~57\,
	combout => \inst2|Add0~58_combout\,
	cout => \inst2|Add0~59\);

-- Location: LCCOMB_X19_Y14_N30
\inst2|Selector3~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|Selector3~0_combout\ = (\inst2|Add0~58_combout\ & \inst2|clk_count[27]~4_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst2|Add0~58_combout\,
	datad => \inst2|clk_count[27]~4_combout\,
	combout => \inst2|Selector3~0_combout\);

-- Location: FF_X19_Y14_N31
\inst2|clk_count[29]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \inst2|Selector3~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst2|clk_count\(29));

-- Location: LCCOMB_X16_Y14_N28
\inst2|Add0~60\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|Add0~60_combout\ = (\inst2|clk_count\(30) & (\inst2|Add0~59\ $ (GND))) # (!\inst2|clk_count\(30) & (!\inst2|Add0~59\ & VCC))
-- \inst2|Add0~61\ = CARRY((\inst2|clk_count\(30) & !\inst2|Add0~59\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst2|clk_count\(30),
	datad => VCC,
	cin => \inst2|Add0~59\,
	combout => \inst2|Add0~60_combout\,
	cout => \inst2|Add0~61\);

-- Location: LCCOMB_X19_Y14_N20
\inst2|Selector2~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|Selector2~0_combout\ = (\inst2|Add0~60_combout\ & \inst2|clk_count[27]~4_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst2|Add0~60_combout\,
	datad => \inst2|clk_count[27]~4_combout\,
	combout => \inst2|Selector2~0_combout\);

-- Location: FF_X19_Y14_N21
\inst2|clk_count[30]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \inst2|Selector2~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst2|clk_count\(30));

-- Location: LCCOMB_X16_Y14_N30
\inst2|Add0~62\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|Add0~62_combout\ = \inst2|Add0~61\ $ (\inst2|clk_count\(31))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => \inst2|clk_count\(31),
	cin => \inst2|Add0~61\,
	combout => \inst2|Add0~62_combout\);

-- Location: LCCOMB_X19_Y14_N24
\inst2|Selector1~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|Selector1~0_combout\ = (\inst2|Add0~62_combout\ & \inst2|clk_count[27]~4_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst2|Add0~62_combout\,
	datad => \inst2|clk_count[27]~4_combout\,
	combout => \inst2|Selector1~0_combout\);

-- Location: FF_X19_Y14_N25
\inst2|clk_count[31]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \inst2|Selector1~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst2|clk_count\(31));

-- Location: LCCOMB_X19_Y14_N22
\inst2|LessThan9~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|LessThan9~9_combout\ = (!\inst2|clk_count\(27) & (!\inst2|clk_count\(28) & (!\inst2|clk_count\(29) & !\inst2|clk_count\(30))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|clk_count\(27),
	datab => \inst2|clk_count\(28),
	datac => \inst2|clk_count\(29),
	datad => \inst2|clk_count\(30),
	combout => \inst2|LessThan9~9_combout\);

-- Location: LCCOMB_X16_Y15_N0
\inst2|Add0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|Add0~0_combout\ = \inst2|clk_count\(0) $ (VCC)
-- \inst2|Add0~1\ = CARRY(\inst2|clk_count\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|clk_count\(0),
	datad => VCC,
	combout => \inst2|Add0~0_combout\,
	cout => \inst2|Add0~1\);

-- Location: LCCOMB_X17_Y15_N6
\inst2|Selector32~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|Selector32~0_combout\ = (\inst2|Add0~0_combout\ & \inst2|clk_count[27]~4_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst2|Add0~0_combout\,
	datad => \inst2|clk_count[27]~4_combout\,
	combout => \inst2|Selector32~0_combout\);

-- Location: FF_X17_Y15_N7
\inst2|clk_count[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \inst2|Selector32~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst2|clk_count\(0));

-- Location: LCCOMB_X16_Y15_N2
\inst2|Add0~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|Add0~2_combout\ = (\inst2|clk_count\(1) & (!\inst2|Add0~1\)) # (!\inst2|clk_count\(1) & ((\inst2|Add0~1\) # (GND)))
-- \inst2|Add0~3\ = CARRY((!\inst2|Add0~1\) # (!\inst2|clk_count\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst2|clk_count\(1),
	datad => VCC,
	cin => \inst2|Add0~1\,
	combout => \inst2|Add0~2_combout\,
	cout => \inst2|Add0~3\);

-- Location: LCCOMB_X17_Y15_N22
\inst2|Selector31~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|Selector31~0_combout\ = (\inst2|Add0~2_combout\ & \inst2|clk_count[27]~4_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|Add0~2_combout\,
	datad => \inst2|clk_count[27]~4_combout\,
	combout => \inst2|Selector31~0_combout\);

-- Location: FF_X17_Y15_N23
\inst2|clk_count[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \inst2|Selector31~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst2|clk_count\(1));

-- Location: LCCOMB_X16_Y15_N4
\inst2|Add0~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|Add0~4_combout\ = (\inst2|clk_count\(2) & (\inst2|Add0~3\ $ (GND))) # (!\inst2|clk_count\(2) & (!\inst2|Add0~3\ & VCC))
-- \inst2|Add0~5\ = CARRY((\inst2|clk_count\(2) & !\inst2|Add0~3\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst2|clk_count\(2),
	datad => VCC,
	cin => \inst2|Add0~3\,
	combout => \inst2|Add0~4_combout\,
	cout => \inst2|Add0~5\);

-- Location: LCCOMB_X19_Y15_N14
\inst2|Selector30~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|Selector30~0_combout\ = (\inst2|Add0~4_combout\ & \inst2|clk_count[27]~4_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst2|Add0~4_combout\,
	datad => \inst2|clk_count[27]~4_combout\,
	combout => \inst2|Selector30~0_combout\);

-- Location: FF_X19_Y15_N15
\inst2|clk_count[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \inst2|Selector30~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst2|clk_count\(2));

-- Location: LCCOMB_X16_Y15_N6
\inst2|Add0~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|Add0~6_combout\ = (\inst2|clk_count\(3) & (!\inst2|Add0~5\)) # (!\inst2|clk_count\(3) & ((\inst2|Add0~5\) # (GND)))
-- \inst2|Add0~7\ = CARRY((!\inst2|Add0~5\) # (!\inst2|clk_count\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst2|clk_count\(3),
	datad => VCC,
	cin => \inst2|Add0~5\,
	combout => \inst2|Add0~6_combout\,
	cout => \inst2|Add0~7\);

-- Location: LCCOMB_X19_Y15_N2
\inst2|Selector29~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|Selector29~0_combout\ = (\inst2|Add0~6_combout\ & \inst2|clk_count[27]~4_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst2|Add0~6_combout\,
	datad => \inst2|clk_count[27]~4_combout\,
	combout => \inst2|Selector29~0_combout\);

-- Location: FF_X19_Y15_N3
\inst2|clk_count[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \inst2|Selector29~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst2|clk_count\(3));

-- Location: LCCOMB_X16_Y15_N8
\inst2|Add0~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|Add0~8_combout\ = (\inst2|clk_count\(4) & (\inst2|Add0~7\ $ (GND))) # (!\inst2|clk_count\(4) & (!\inst2|Add0~7\ & VCC))
-- \inst2|Add0~9\ = CARRY((\inst2|clk_count\(4) & !\inst2|Add0~7\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|clk_count\(4),
	datad => VCC,
	cin => \inst2|Add0~7\,
	combout => \inst2|Add0~8_combout\,
	cout => \inst2|Add0~9\);

-- Location: LCCOMB_X19_Y15_N20
\inst2|Selector28~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|Selector28~0_combout\ = (\inst2|Add0~8_combout\ & \inst2|clk_count[27]~4_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|Add0~8_combout\,
	datad => \inst2|clk_count[27]~4_combout\,
	combout => \inst2|Selector28~0_combout\);

-- Location: FF_X19_Y15_N21
\inst2|clk_count[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \inst2|Selector28~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst2|clk_count\(4));

-- Location: LCCOMB_X16_Y15_N10
\inst2|Add0~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|Add0~10_combout\ = (\inst2|clk_count\(5) & (!\inst2|Add0~9\)) # (!\inst2|clk_count\(5) & ((\inst2|Add0~9\) # (GND)))
-- \inst2|Add0~11\ = CARRY((!\inst2|Add0~9\) # (!\inst2|clk_count\(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|clk_count\(5),
	datad => VCC,
	cin => \inst2|Add0~9\,
	combout => \inst2|Add0~10_combout\,
	cout => \inst2|Add0~11\);

-- Location: LCCOMB_X17_Y15_N4
\inst2|Selector27~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|Selector27~0_combout\ = (\inst2|Add0~10_combout\ & \inst2|clk_count[27]~4_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|Add0~10_combout\,
	datad => \inst2|clk_count[27]~4_combout\,
	combout => \inst2|Selector27~0_combout\);

-- Location: FF_X17_Y15_N5
\inst2|clk_count[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \inst2|Selector27~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst2|clk_count\(5));

-- Location: LCCOMB_X16_Y15_N12
\inst2|Add0~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|Add0~12_combout\ = (\inst2|clk_count\(6) & (\inst2|Add0~11\ $ (GND))) # (!\inst2|clk_count\(6) & (!\inst2|Add0~11\ & VCC))
-- \inst2|Add0~13\ = CARRY((\inst2|clk_count\(6) & !\inst2|Add0~11\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst2|clk_count\(6),
	datad => VCC,
	cin => \inst2|Add0~11\,
	combout => \inst2|Add0~12_combout\,
	cout => \inst2|Add0~13\);

-- Location: LCCOMB_X17_Y15_N12
\inst2|Selector26~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|Selector26~0_combout\ = (\inst2|Add0~12_combout\ & \inst2|clk_count[27]~4_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|Add0~12_combout\,
	datad => \inst2|clk_count[27]~4_combout\,
	combout => \inst2|Selector26~0_combout\);

-- Location: FF_X17_Y15_N13
\inst2|clk_count[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \inst2|Selector26~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst2|clk_count\(6));

-- Location: LCCOMB_X16_Y15_N14
\inst2|Add0~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|Add0~14_combout\ = (\inst2|clk_count\(7) & (!\inst2|Add0~13\)) # (!\inst2|clk_count\(7) & ((\inst2|Add0~13\) # (GND)))
-- \inst2|Add0~15\ = CARRY((!\inst2|Add0~13\) # (!\inst2|clk_count\(7)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst2|clk_count\(7),
	datad => VCC,
	cin => \inst2|Add0~13\,
	combout => \inst2|Add0~14_combout\,
	cout => \inst2|Add0~15\);

-- Location: LCCOMB_X17_Y15_N10
\inst2|Selector25~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|Selector25~0_combout\ = (\inst2|Add0~14_combout\ & \inst2|clk_count[27]~4_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|Add0~14_combout\,
	datad => \inst2|clk_count[27]~4_combout\,
	combout => \inst2|Selector25~0_combout\);

-- Location: FF_X17_Y15_N11
\inst2|clk_count[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \inst2|Selector25~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst2|clk_count\(7));

-- Location: LCCOMB_X16_Y15_N16
\inst2|Add0~16\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|Add0~16_combout\ = (\inst2|clk_count\(8) & (\inst2|Add0~15\ $ (GND))) # (!\inst2|clk_count\(8) & (!\inst2|Add0~15\ & VCC))
-- \inst2|Add0~17\ = CARRY((\inst2|clk_count\(8) & !\inst2|Add0~15\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|clk_count\(8),
	datad => VCC,
	cin => \inst2|Add0~15\,
	combout => \inst2|Add0~16_combout\,
	cout => \inst2|Add0~17\);

-- Location: LCCOMB_X17_Y13_N4
\inst2|Selector24~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|Selector24~0_combout\ = (\inst2|Add0~16_combout\ & \inst2|clk_count[27]~4_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|Add0~16_combout\,
	datac => \inst2|clk_count[27]~4_combout\,
	combout => \inst2|Selector24~0_combout\);

-- Location: FF_X17_Y13_N5
\inst2|clk_count[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \inst2|Selector24~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst2|clk_count\(8));

-- Location: LCCOMB_X16_Y15_N18
\inst2|Add0~18\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|Add0~18_combout\ = (\inst2|clk_count\(9) & (!\inst2|Add0~17\)) # (!\inst2|clk_count\(9) & ((\inst2|Add0~17\) # (GND)))
-- \inst2|Add0~19\ = CARRY((!\inst2|Add0~17\) # (!\inst2|clk_count\(9)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst2|clk_count\(9),
	datad => VCC,
	cin => \inst2|Add0~17\,
	combout => \inst2|Add0~18_combout\,
	cout => \inst2|Add0~19\);

-- Location: LCCOMB_X17_Y13_N22
\inst2|Selector23~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|Selector23~0_combout\ = (\inst2|Add0~18_combout\ & \inst2|clk_count[27]~4_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst2|Add0~18_combout\,
	datac => \inst2|clk_count[27]~4_combout\,
	combout => \inst2|Selector23~0_combout\);

-- Location: FF_X17_Y13_N23
\inst2|clk_count[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \inst2|Selector23~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst2|clk_count\(9));

-- Location: LCCOMB_X16_Y15_N20
\inst2|Add0~20\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|Add0~20_combout\ = (\inst2|clk_count\(10) & (\inst2|Add0~19\ $ (GND))) # (!\inst2|clk_count\(10) & (!\inst2|Add0~19\ & VCC))
-- \inst2|Add0~21\ = CARRY((\inst2|clk_count\(10) & !\inst2|Add0~19\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|clk_count\(10),
	datad => VCC,
	cin => \inst2|Add0~19\,
	combout => \inst2|Add0~20_combout\,
	cout => \inst2|Add0~21\);

-- Location: LCCOMB_X17_Y15_N20
\inst2|Selector22~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|Selector22~0_combout\ = (\inst2|Add0~20_combout\ & \inst2|clk_count[27]~4_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst2|Add0~20_combout\,
	datad => \inst2|clk_count[27]~4_combout\,
	combout => \inst2|Selector22~0_combout\);

-- Location: FF_X17_Y15_N21
\inst2|clk_count[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \inst2|Selector22~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst2|clk_count\(10));

-- Location: LCCOMB_X16_Y15_N22
\inst2|Add0~22\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|Add0~22_combout\ = (\inst2|clk_count\(11) & (!\inst2|Add0~21\)) # (!\inst2|clk_count\(11) & ((\inst2|Add0~21\) # (GND)))
-- \inst2|Add0~23\ = CARRY((!\inst2|Add0~21\) # (!\inst2|clk_count\(11)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst2|clk_count\(11),
	datad => VCC,
	cin => \inst2|Add0~21\,
	combout => \inst2|Add0~22_combout\,
	cout => \inst2|Add0~23\);

-- Location: LCCOMB_X17_Y16_N20
\inst2|Selector21~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|Selector21~0_combout\ = (\inst2|Add0~22_combout\ & \inst2|clk_count[27]~4_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|Add0~22_combout\,
	datad => \inst2|clk_count[27]~4_combout\,
	combout => \inst2|Selector21~0_combout\);

-- Location: FF_X17_Y16_N21
\inst2|clk_count[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \inst2|Selector21~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst2|clk_count\(11));

-- Location: LCCOMB_X18_Y15_N14
\inst2|LessThan9~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|LessThan9~6_combout\ = (!\inst2|clk_count\(3) & (!\inst2|clk_count\(5) & (!\inst2|clk_count\(2) & !\inst2|clk_count\(4))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|clk_count\(3),
	datab => \inst2|clk_count\(5),
	datac => \inst2|clk_count\(2),
	datad => \inst2|clk_count\(4),
	combout => \inst2|LessThan9~6_combout\);

-- Location: LCCOMB_X17_Y13_N10
\inst2|LessThan9~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|LessThan9~7_combout\ = (\inst2|LessThan9~6_combout\) # (((!\inst2|clk_count\(6)) # (!\inst2|clk_count\(8))) # (!\inst2|clk_count\(7)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|LessThan9~6_combout\,
	datab => \inst2|clk_count\(7),
	datac => \inst2|clk_count\(8),
	datad => \inst2|clk_count\(6),
	combout => \inst2|LessThan9~7_combout\);

-- Location: LCCOMB_X17_Y13_N16
\inst2|LessThan9~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|LessThan9~8_combout\ = ((!\inst2|clk_count\(9) & (!\inst2|clk_count\(10) & \inst2|LessThan9~7_combout\))) # (!\inst2|clk_count\(11))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|clk_count\(9),
	datab => \inst2|clk_count\(10),
	datac => \inst2|clk_count\(11),
	datad => \inst2|LessThan9~7_combout\,
	combout => \inst2|LessThan9~8_combout\);

-- Location: LCCOMB_X16_Y15_N24
\inst2|Add0~24\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|Add0~24_combout\ = (\inst2|clk_count\(12) & (\inst2|Add0~23\ $ (GND))) # (!\inst2|clk_count\(12) & (!\inst2|Add0~23\ & VCC))
-- \inst2|Add0~25\ = CARRY((\inst2|clk_count\(12) & !\inst2|Add0~23\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst2|clk_count\(12),
	datad => VCC,
	cin => \inst2|Add0~23\,
	combout => \inst2|Add0~24_combout\,
	cout => \inst2|Add0~25\);

-- Location: LCCOMB_X17_Y16_N26
\inst2|Selector20~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|Selector20~0_combout\ = (\inst2|Add0~24_combout\ & \inst2|clk_count[27]~4_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|Add0~24_combout\,
	datad => \inst2|clk_count[27]~4_combout\,
	combout => \inst2|Selector20~0_combout\);

-- Location: FF_X17_Y16_N27
\inst2|clk_count[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \inst2|Selector20~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst2|clk_count\(12));

-- Location: LCCOMB_X16_Y15_N26
\inst2|Add0~26\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|Add0~26_combout\ = (\inst2|clk_count\(13) & (!\inst2|Add0~25\)) # (!\inst2|clk_count\(13) & ((\inst2|Add0~25\) # (GND)))
-- \inst2|Add0~27\ = CARRY((!\inst2|Add0~25\) # (!\inst2|clk_count\(13)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst2|clk_count\(13),
	datad => VCC,
	cin => \inst2|Add0~25\,
	combout => \inst2|Add0~26_combout\,
	cout => \inst2|Add0~27\);

-- Location: LCCOMB_X17_Y15_N18
\inst2|Selector19~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|Selector19~0_combout\ = (\inst2|Add0~26_combout\ & \inst2|clk_count[27]~4_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst2|Add0~26_combout\,
	datad => \inst2|clk_count[27]~4_combout\,
	combout => \inst2|Selector19~0_combout\);

-- Location: FF_X17_Y15_N19
\inst2|clk_count[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \inst2|Selector19~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst2|clk_count\(13));

-- Location: LCCOMB_X16_Y15_N28
\inst2|Add0~28\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|Add0~28_combout\ = (\inst2|clk_count\(14) & (\inst2|Add0~27\ $ (GND))) # (!\inst2|clk_count\(14) & (!\inst2|Add0~27\ & VCC))
-- \inst2|Add0~29\ = CARRY((\inst2|clk_count\(14) & !\inst2|Add0~27\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst2|clk_count\(14),
	datad => VCC,
	cin => \inst2|Add0~27\,
	combout => \inst2|Add0~28_combout\,
	cout => \inst2|Add0~29\);

-- Location: LCCOMB_X19_Y15_N4
\inst2|Selector18~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|Selector18~0_combout\ = (\inst2|Add0~28_combout\ & \inst2|clk_count[27]~4_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst2|Add0~28_combout\,
	datad => \inst2|clk_count[27]~4_combout\,
	combout => \inst2|Selector18~0_combout\);

-- Location: FF_X19_Y15_N5
\inst2|clk_count[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \inst2|Selector18~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst2|clk_count\(14));

-- Location: LCCOMB_X16_Y15_N30
\inst2|Add0~30\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|Add0~30_combout\ = (\inst2|clk_count\(15) & (!\inst2|Add0~29\)) # (!\inst2|clk_count\(15) & ((\inst2|Add0~29\) # (GND)))
-- \inst2|Add0~31\ = CARRY((!\inst2|Add0~29\) # (!\inst2|clk_count\(15)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst2|clk_count\(15),
	datad => VCC,
	cin => \inst2|Add0~29\,
	combout => \inst2|Add0~30_combout\,
	cout => \inst2|Add0~31\);

-- Location: LCCOMB_X17_Y15_N16
\inst2|Selector17~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|Selector17~0_combout\ = (\inst2|Add0~30_combout\ & \inst2|clk_count[27]~4_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst2|Add0~30_combout\,
	datad => \inst2|clk_count[27]~4_combout\,
	combout => \inst2|Selector17~0_combout\);

-- Location: FF_X17_Y15_N17
\inst2|clk_count[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \inst2|Selector17~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst2|clk_count\(15));

-- Location: LCCOMB_X18_Y16_N28
\inst2|LessThan0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|LessThan0~0_combout\ = (!\inst2|clk_count\(14) & (!\inst2|clk_count\(15) & !\inst2|clk_count\(16)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst2|clk_count\(14),
	datac => \inst2|clk_count\(15),
	datad => \inst2|clk_count\(16),
	combout => \inst2|LessThan0~0_combout\);

-- Location: LCCOMB_X17_Y16_N8
\inst2|LessThan9~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|LessThan9~2_combout\ = (!\inst2|clk_count\(13) & (!\inst2|clk_count\(19) & (!\inst2|clk_count\(17) & !\inst2|clk_count\(20))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|clk_count\(13),
	datab => \inst2|clk_count\(19),
	datac => \inst2|clk_count\(17),
	datad => \inst2|clk_count\(20),
	combout => \inst2|LessThan9~2_combout\);

-- Location: LCCOMB_X17_Y16_N24
\inst2|LessThan9~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|LessThan9~3_combout\ = (!\inst2|clk_count\(12) & (\inst2|LessThan0~0_combout\ & (\inst2|LessThan9~2_combout\ & \inst2|LessThan9~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|clk_count\(12),
	datab => \inst2|LessThan0~0_combout\,
	datac => \inst2|LessThan9~2_combout\,
	datad => \inst2|LessThan9~1_combout\,
	combout => \inst2|LessThan9~3_combout\);

-- Location: LCCOMB_X17_Y16_N10
\inst2|LessThan9~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|LessThan9~4_combout\ = (!\inst2|clk_count\(18) & (!\inst2|clk_count\(21) & \inst2|LessThan9~3_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst2|clk_count\(18),
	datac => \inst2|clk_count\(21),
	datad => \inst2|LessThan9~3_combout\,
	combout => \inst2|LessThan9~4_combout\);

-- Location: LCCOMB_X17_Y16_N18
\inst2|Selector34~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|Selector34~0_combout\ = (!\inst2|clk_count\(31) & (((!\inst2|LessThan9~4_combout\) # (!\inst2|LessThan9~8_combout\)) # (!\inst2|LessThan9~9_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001010101010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|clk_count\(31),
	datab => \inst2|LessThan9~9_combout\,
	datac => \inst2|LessThan9~8_combout\,
	datad => \inst2|LessThan9~4_combout\,
	combout => \inst2|Selector34~0_combout\);

-- Location: LCCOMB_X18_Y16_N16
\inst2|Selector34~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|Selector34~2_combout\ = (\inst2|Selector34~1_combout\) # ((\inst2|Selector34~0_combout\ & \inst2|estado.ENVIAR~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst2|Selector34~0_combout\,
	datac => \inst2|estado.ENVIAR~q\,
	datad => \inst2|Selector34~1_combout\,
	combout => \inst2|Selector34~2_combout\);

-- Location: FF_X18_Y16_N17
\inst2|estado.PRONTO\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \inst2|Selector34~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst2|estado.PRONTO~q\);

-- Location: LCCOMB_X17_Y15_N2
\inst2|LessThan6~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|LessThan6~2_combout\ = (!\inst2|Add0~8_combout\ & (!\inst2|Add0~6_combout\ & (!\inst2|Add0~4_combout\ & !\inst2|Add0~10_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|Add0~8_combout\,
	datab => \inst2|Add0~6_combout\,
	datac => \inst2|Add0~4_combout\,
	datad => \inst2|Add0~10_combout\,
	combout => \inst2|LessThan6~2_combout\);

-- Location: LCCOMB_X17_Y15_N0
\inst2|LessThan6~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|LessThan6~3_combout\ = (!\inst2|Add0~14_combout\ & (\inst2|LessThan6~2_combout\ & (!\inst2|Add0~16_combout\ & !\inst2|Add0~12_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|Add0~14_combout\,
	datab => \inst2|LessThan6~2_combout\,
	datac => \inst2|Add0~16_combout\,
	datad => \inst2|Add0~12_combout\,
	combout => \inst2|LessThan6~3_combout\);

-- Location: LCCOMB_X19_Y15_N0
\inst2|LessThan1~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|LessThan1~0_combout\ = (!\inst2|Add0~18_combout\ & (!\inst2|Add0~20_combout\ & (!\inst2|Add0~22_combout\ & !\inst2|Add0~24_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|Add0~18_combout\,
	datab => \inst2|Add0~20_combout\,
	datac => \inst2|Add0~22_combout\,
	datad => \inst2|Add0~24_combout\,
	combout => \inst2|LessThan1~0_combout\);

-- Location: LCCOMB_X18_Y15_N30
\inst2|LessThan6~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|LessThan6~1_combout\ = (\inst2|LessThan1~0_combout\ & !\inst2|Add0~28_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst2|LessThan1~0_combout\,
	datad => \inst2|Add0~28_combout\,
	combout => \inst2|LessThan6~1_combout\);

-- Location: LCCOMB_X16_Y14_N0
\inst2|Add0~32\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|Add0~32_combout\ = (\inst2|clk_count\(16) & (\inst2|Add0~31\ $ (GND))) # (!\inst2|clk_count\(16) & (!\inst2|Add0~31\ & VCC))
-- \inst2|Add0~33\ = CARRY((\inst2|clk_count\(16) & !\inst2|Add0~31\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|clk_count\(16),
	datad => VCC,
	cin => \inst2|Add0~31\,
	combout => \inst2|Add0~32_combout\,
	cout => \inst2|Add0~33\);

-- Location: LCCOMB_X17_Y15_N8
\inst2|LessThan6~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|LessThan6~0_combout\ = (\inst2|Add0~32_combout\ & (\inst2|Add0~30_combout\ & ((\inst2|Add0~26_combout\) # (\inst2|Add0~28_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|Add0~26_combout\,
	datab => \inst2|Add0~28_combout\,
	datac => \inst2|Add0~32_combout\,
	datad => \inst2|Add0~30_combout\,
	combout => \inst2|LessThan6~0_combout\);

-- Location: LCCOMB_X17_Y14_N30
\inst2|LessThan3~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|LessThan3~1_combout\ = (!\inst2|Add0~44_combout\ & (!\inst2|Add0~42_combout\ & (!\inst2|Add0~48_combout\ & !\inst2|Add0~46_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|Add0~44_combout\,
	datab => \inst2|Add0~42_combout\,
	datac => \inst2|Add0~48_combout\,
	datad => \inst2|Add0~46_combout\,
	combout => \inst2|LessThan3~1_combout\);

-- Location: LCCOMB_X18_Y14_N20
\inst2|LessThan3~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|LessThan3~0_combout\ = (!\inst2|Add0~36_combout\ & (!\inst2|Add0~34_combout\ & (!\inst2|Add0~38_combout\ & !\inst2|Add0~40_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|Add0~36_combout\,
	datab => \inst2|Add0~34_combout\,
	datac => \inst2|Add0~38_combout\,
	datad => \inst2|Add0~40_combout\,
	combout => \inst2|LessThan3~0_combout\);

-- Location: LCCOMB_X17_Y14_N0
\inst2|LessThan3~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|LessThan3~2_combout\ = (\inst2|Add0~58_combout\) # ((\inst2|Add0~50_combout\) # ((\inst2|Add0~52_combout\) # (\inst2|Add0~56_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|Add0~58_combout\,
	datab => \inst2|Add0~50_combout\,
	datac => \inst2|Add0~52_combout\,
	datad => \inst2|Add0~56_combout\,
	combout => \inst2|LessThan3~2_combout\);

-- Location: LCCOMB_X17_Y14_N18
\inst2|LessThan3~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|LessThan3~3_combout\ = (\inst2|LessThan3~1_combout\ & (!\inst2|Add0~54_combout\ & (\inst2|LessThan3~0_combout\ & !\inst2|LessThan3~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|LessThan3~1_combout\,
	datab => \inst2|Add0~54_combout\,
	datac => \inst2|LessThan3~0_combout\,
	datad => \inst2|LessThan3~2_combout\,
	combout => \inst2|LessThan3~3_combout\);

-- Location: LCCOMB_X17_Y14_N14
\inst2|busy~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|busy~5_combout\ = (\inst2|LessThan3~3_combout\ & (((\inst2|LessThan6~3_combout\ & \inst2|LessThan6~1_combout\)) # (!\inst2|LessThan6~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|LessThan6~3_combout\,
	datab => \inst2|LessThan6~1_combout\,
	datac => \inst2|LessThan6~0_combout\,
	datad => \inst2|LessThan3~3_combout\,
	combout => \inst2|busy~5_combout\);

-- Location: LCCOMB_X19_Y15_N18
\inst2|LessThan8~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|LessThan8~0_combout\ = (\inst2|Add0~8_combout\ & \inst2|Add0~10_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst2|Add0~8_combout\,
	datad => \inst2|Add0~10_combout\,
	combout => \inst2|LessThan8~0_combout\);

-- Location: LCCOMB_X19_Y15_N24
\inst2|LessThan7~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|LessThan7~0_combout\ = (\inst2|Add0~14_combout\ & (\inst2|Add0~12_combout\ & (\inst2|Add0~16_combout\ & \inst2|LessThan8~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|Add0~14_combout\,
	datab => \inst2|Add0~12_combout\,
	datac => \inst2|Add0~16_combout\,
	datad => \inst2|LessThan8~0_combout\,
	combout => \inst2|LessThan7~0_combout\);

-- Location: LCCOMB_X19_Y15_N30
\inst2|LessThan7~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|LessThan7~1_combout\ = (\inst2|LessThan1~0_combout\ & (!\inst2|Add0~28_combout\ & ((!\inst2|LessThan7~0_combout\) # (!\inst2|Add0~6_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|Add0~6_combout\,
	datab => \inst2|LessThan1~0_combout\,
	datac => \inst2|Add0~28_combout\,
	datad => \inst2|LessThan7~0_combout\,
	combout => \inst2|LessThan7~1_combout\);

-- Location: LCCOMB_X17_Y14_N16
\inst2|LessThan7~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|LessThan7~2_combout\ = (!\inst2|Add0~60_combout\ & (\inst2|LessThan3~3_combout\ & ((\inst2|LessThan7~1_combout\) # (!\inst2|LessThan6~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|LessThan6~0_combout\,
	datab => \inst2|Add0~60_combout\,
	datac => \inst2|LessThan7~1_combout\,
	datad => \inst2|LessThan3~3_combout\,
	combout => \inst2|LessThan7~2_combout\);

-- Location: LCCOMB_X18_Y15_N4
\inst2|LessThan8~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|LessThan8~1_combout\ = (((!\inst2|Add0~12_combout\ & !\inst2|LessThan8~0_combout\)) # (!\inst2|Add0~16_combout\)) # (!\inst2|Add0~14_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101111101111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|Add0~14_combout\,
	datab => \inst2|Add0~12_combout\,
	datac => \inst2|Add0~16_combout\,
	datad => \inst2|LessThan8~0_combout\,
	combout => \inst2|LessThan8~1_combout\);

-- Location: LCCOMB_X18_Y15_N2
\inst2|LessThan3~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|LessThan3~6_combout\ = (\inst2|Add0~20_combout\ & \inst2|Add0~22_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst2|Add0~20_combout\,
	datad => \inst2|Add0~22_combout\,
	combout => \inst2|LessThan3~6_combout\);

-- Location: LCCOMB_X18_Y15_N18
\inst2|LessThan8~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|LessThan8~2_combout\ = (!\inst2|Add0~28_combout\ & (((!\inst2|Add0~18_combout\ & \inst2|LessThan8~1_combout\)) # (!\inst2|LessThan3~6_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000001010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|Add0~28_combout\,
	datab => \inst2|Add0~18_combout\,
	datac => \inst2|LessThan8~1_combout\,
	datad => \inst2|LessThan3~6_combout\,
	combout => \inst2|LessThan8~2_combout\);

-- Location: LCCOMB_X18_Y14_N22
\inst2|LessThan3~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|LessThan3~4_combout\ = (!\inst2|Add0~50_combout\ & \inst2|LessThan3~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst2|Add0~50_combout\,
	datad => \inst2|LessThan3~0_combout\,
	combout => \inst2|LessThan3~4_combout\);

-- Location: LCCOMB_X18_Y14_N12
\inst2|LessThan3~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|LessThan3~5_combout\ = (!\inst2|Add0~54_combout\ & (!\inst2|Add0~52_combout\ & (\inst2|LessThan3~4_combout\ & \inst2|LessThan3~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|Add0~54_combout\,
	datab => \inst2|Add0~52_combout\,
	datac => \inst2|LessThan3~4_combout\,
	datad => \inst2|LessThan3~1_combout\,
	combout => \inst2|LessThan3~5_combout\);

-- Location: LCCOMB_X18_Y14_N18
\inst2|LessThan8~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|LessThan8~3_combout\ = (\inst2|LessThan3~5_combout\ & (((!\inst2|Add0~24_combout\ & \inst2|LessThan8~2_combout\)) # (!\inst2|LessThan6~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111010100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|LessThan6~0_combout\,
	datab => \inst2|Add0~24_combout\,
	datac => \inst2|LessThan8~2_combout\,
	datad => \inst2|LessThan3~5_combout\,
	combout => \inst2|LessThan8~3_combout\);

-- Location: LCCOMB_X18_Y14_N0
\inst2|LessThan8~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|LessThan8~4_combout\ = (!\inst2|Add0~60_combout\ & (!\inst2|Add0~56_combout\ & (!\inst2|Add0~58_combout\ & \inst2|LessThan8~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|Add0~60_combout\,
	datab => \inst2|Add0~56_combout\,
	datac => \inst2|Add0~58_combout\,
	datad => \inst2|LessThan8~3_combout\,
	combout => \inst2|LessThan8~4_combout\);

-- Location: LCCOMB_X18_Y14_N28
\inst2|lcd_data[2]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|lcd_data[2]~0_combout\ = (!\inst2|LessThan7~2_combout\ & (!\inst2|LessThan8~4_combout\ & ((\inst2|Add0~60_combout\) # (!\inst2|busy~5_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|busy~5_combout\,
	datab => \inst2|Add0~60_combout\,
	datac => \inst2|LessThan7~2_combout\,
	datad => \inst2|LessThan8~4_combout\,
	combout => \inst2|lcd_data[2]~0_combout\);

-- Location: LCCOMB_X17_Y15_N26
\inst2|LessThan4~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|LessThan4~1_combout\ = (\inst2|Add0~8_combout\ & (\inst2|Add0~12_combout\ & \inst2|Add0~10_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|Add0~8_combout\,
	datac => \inst2|Add0~12_combout\,
	datad => \inst2|Add0~10_combout\,
	combout => \inst2|LessThan4~1_combout\);

-- Location: LCCOMB_X17_Y15_N24
\inst2|LessThan4~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|LessThan4~0_combout\ = ((!\inst2|Add0~18_combout\) # (!\inst2|Add0~20_combout\)) # (!\inst2|Add0~16_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111111101111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|Add0~16_combout\,
	datab => \inst2|Add0~20_combout\,
	datac => \inst2|Add0~18_combout\,
	combout => \inst2|LessThan4~0_combout\);

-- Location: LCCOMB_X17_Y15_N28
\inst2|LessThan4~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|LessThan4~2_combout\ = (!\inst2|Add0~22_combout\ & ((\inst2|LessThan4~0_combout\) # ((!\inst2|Add0~14_combout\ & !\inst2|LessThan4~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|Add0~14_combout\,
	datab => \inst2|Add0~22_combout\,
	datac => \inst2|LessThan4~1_combout\,
	datad => \inst2|LessThan4~0_combout\,
	combout => \inst2|LessThan4~2_combout\);

-- Location: LCCOMB_X17_Y15_N30
\inst2|LessThan3~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|LessThan3~7_combout\ = (!\inst2|Add0~26_combout\ & (!\inst2|Add0~28_combout\ & (!\inst2|Add0~32_combout\ & !\inst2|Add0~30_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|Add0~26_combout\,
	datab => \inst2|Add0~28_combout\,
	datac => \inst2|Add0~32_combout\,
	datad => \inst2|Add0~30_combout\,
	combout => \inst2|LessThan3~7_combout\);

-- Location: LCCOMB_X18_Y14_N14
\inst2|LessThan3~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|LessThan3~9_combout\ = (!\inst2|Add0~50_combout\ & (!\inst2|Add0~52_combout\ & (!\inst2|Add0~54_combout\ & \inst2|LessThan3~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|Add0~50_combout\,
	datab => \inst2|Add0~52_combout\,
	datac => \inst2|Add0~54_combout\,
	datad => \inst2|LessThan3~1_combout\,
	combout => \inst2|LessThan3~9_combout\);

-- Location: LCCOMB_X19_Y14_N26
\inst2|busy~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|busy~4_combout\ = (!\inst2|Add0~56_combout\ & !\inst2|Add0~58_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst2|Add0~56_combout\,
	datad => \inst2|Add0~58_combout\,
	combout => \inst2|busy~4_combout\);

-- Location: LCCOMB_X18_Y14_N2
\inst2|LessThan3~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|LessThan3~10_combout\ = (\inst2|LessThan3~7_combout\ & (\inst2|LessThan3~0_combout\ & (\inst2|LessThan3~9_combout\ & \inst2|busy~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|LessThan3~7_combout\,
	datab => \inst2|LessThan3~0_combout\,
	datac => \inst2|LessThan3~9_combout\,
	datad => \inst2|busy~4_combout\,
	combout => \inst2|LessThan3~10_combout\);

-- Location: LCCOMB_X18_Y14_N26
\inst2|LessThan4~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|LessThan4~4_combout\ = (!\inst2|Add0~60_combout\ & (\inst2|LessThan3~10_combout\ & ((\inst2|LessThan4~2_combout\) # (!\inst2|Add0~24_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|Add0~60_combout\,
	datab => \inst2|Add0~24_combout\,
	datac => \inst2|LessThan4~2_combout\,
	datad => \inst2|LessThan3~10_combout\,
	combout => \inst2|LessThan4~4_combout\);

-- Location: LCCOMB_X17_Y15_N14
\inst2|LessThan5~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|LessThan5~0_combout\ = ((!\inst2|Add0~8_combout\ & (!\inst2|Add0~4_combout\ & !\inst2|Add0~6_combout\))) # (!\inst2|Add0~12_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|Add0~8_combout\,
	datab => \inst2|Add0~4_combout\,
	datac => \inst2|Add0~6_combout\,
	datad => \inst2|Add0~12_combout\,
	combout => \inst2|LessThan5~0_combout\);

-- Location: LCCOMB_X18_Y15_N20
\inst2|LessThan5~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|LessThan5~1_combout\ = ((!\inst2|Add0~14_combout\ & ((\inst2|LessThan5~0_combout\) # (!\inst2|Add0~10_combout\)))) # (!\inst2|Add0~16_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101111100011111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|Add0~14_combout\,
	datab => \inst2|Add0~10_combout\,
	datac => \inst2|Add0~16_combout\,
	datad => \inst2|LessThan5~0_combout\,
	combout => \inst2|LessThan5~1_combout\);

-- Location: LCCOMB_X18_Y15_N26
\inst2|LessThan5~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|LessThan5~2_combout\ = ((!\inst2|Add0~20_combout\ & (!\inst2|Add0~18_combout\ & \inst2|LessThan5~1_combout\))) # (!\inst2|Add0~24_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|Add0~20_combout\,
	datab => \inst2|Add0~18_combout\,
	datac => \inst2|Add0~24_combout\,
	datad => \inst2|LessThan5~1_combout\,
	combout => \inst2|LessThan5~2_combout\);

-- Location: LCCOMB_X18_Y15_N16
\inst2|LessThan5~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|LessThan5~3_combout\ = (\inst2|LessThan3~7_combout\ & ((\inst2|LessThan5~2_combout\) # (!\inst2|Add0~22_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst2|Add0~22_combout\,
	datac => \inst2|LessThan5~2_combout\,
	datad => \inst2|LessThan3~7_combout\,
	combout => \inst2|LessThan5~3_combout\);

-- Location: LCCOMB_X18_Y14_N4
\inst2|LessThan5~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|LessThan5~4_combout\ = (\inst2|LessThan3~0_combout\ & (\inst2|busy~4_combout\ & (\inst2|LessThan3~9_combout\ & \inst2|LessThan5~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|LessThan3~0_combout\,
	datab => \inst2|busy~4_combout\,
	datac => \inst2|LessThan3~9_combout\,
	datad => \inst2|LessThan5~3_combout\,
	combout => \inst2|LessThan5~4_combout\);

-- Location: LCCOMB_X18_Y15_N8
\inst2|LessThan3~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|LessThan3~12_combout\ = ((!\inst2|Add0~8_combout\ & ((!\inst2|Add0~4_combout\) # (!\inst2|Add0~6_combout\)))) # (!\inst2|Add0~10_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001010111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|Add0~8_combout\,
	datab => \inst2|Add0~6_combout\,
	datac => \inst2|Add0~4_combout\,
	datad => \inst2|Add0~10_combout\,
	combout => \inst2|LessThan3~12_combout\);

-- Location: LCCOMB_X18_Y15_N10
\inst2|LessThan3~11\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|LessThan3~11_combout\ = ((!\inst2|Add0~18_combout\ & ((!\inst2|Add0~16_combout\) # (!\inst2|Add0~14_combout\)))) # (!\inst2|LessThan3~6_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001001111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|Add0~14_combout\,
	datab => \inst2|Add0~18_combout\,
	datac => \inst2|Add0~16_combout\,
	datad => \inst2|LessThan3~6_combout\,
	combout => \inst2|LessThan3~11_combout\);

-- Location: LCCOMB_X18_Y15_N6
\inst2|LessThan3~13\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|LessThan3~13_combout\ = (\inst2|LessThan3~11_combout\) # ((!\inst2|Add0~12_combout\ & (!\inst2|Add0~18_combout\ & \inst2|LessThan3~12_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|Add0~12_combout\,
	datab => \inst2|Add0~18_combout\,
	datac => \inst2|LessThan3~12_combout\,
	datad => \inst2|LessThan3~11_combout\,
	combout => \inst2|LessThan3~13_combout\);

-- Location: LCCOMB_X18_Y14_N8
\inst2|LessThan3~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|LessThan3~14_combout\ = (\inst2|LessThan3~7_combout\ & (!\inst2|Add0~24_combout\ & (\inst2|LessThan3~13_combout\ & \inst2|LessThan3~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|LessThan3~7_combout\,
	datab => \inst2|Add0~24_combout\,
	datac => \inst2|LessThan3~13_combout\,
	datad => \inst2|LessThan3~3_combout\,
	combout => \inst2|LessThan3~14_combout\);

-- Location: LCCOMB_X19_Y15_N22
\inst2|LessThan1~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|LessThan1~1_combout\ = (\inst2|LessThan1~0_combout\ & (((!\inst2|Add0~6_combout\ & !\inst2|Add0~4_combout\)) # (!\inst2|LessThan7~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|Add0~6_combout\,
	datab => \inst2|LessThan1~0_combout\,
	datac => \inst2|Add0~4_combout\,
	datad => \inst2|LessThan7~0_combout\,
	combout => \inst2|LessThan1~1_combout\);

-- Location: LCCOMB_X18_Y15_N0
\inst2|LessThan2~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|LessThan2~0_combout\ = (!\inst2|Add0~12_combout\ & (((!\inst2|Add0~6_combout\) # (!\inst2|Add0~10_combout\)) # (!\inst2|Add0~8_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000011100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|Add0~8_combout\,
	datab => \inst2|Add0~10_combout\,
	datac => \inst2|Add0~12_combout\,
	datad => \inst2|Add0~6_combout\,
	combout => \inst2|LessThan2~0_combout\);

-- Location: LCCOMB_X18_Y15_N22
\inst2|LessThan2~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|LessThan2~1_combout\ = ((!\inst2|Add0~18_combout\) # (!\inst2|Add0~14_combout\)) # (!\inst2|Add0~16_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|Add0~16_combout\,
	datac => \inst2|Add0~14_combout\,
	datad => \inst2|Add0~18_combout\,
	combout => \inst2|LessThan2~1_combout\);

-- Location: LCCOMB_X18_Y15_N12
\inst2|LessThan2~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|LessThan2~2_combout\ = ((!\inst2|Add0~20_combout\ & ((\inst2|LessThan2~0_combout\) # (\inst2|LessThan2~1_combout\)))) # (!\inst2|Add0~22_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|Add0~20_combout\,
	datab => \inst2|LessThan2~0_combout\,
	datac => \inst2|LessThan2~1_combout\,
	datad => \inst2|Add0~22_combout\,
	combout => \inst2|LessThan2~2_combout\);

-- Location: LCCOMB_X18_Y14_N6
\inst2|clk_count~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|clk_count~0_combout\ = ((!\inst2|LessThan1~1_combout\ & ((\inst2|Add0~24_combout\) # (!\inst2|LessThan2~2_combout\)))) # (!\inst2|LessThan3~10_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|LessThan1~1_combout\,
	datab => \inst2|LessThan2~2_combout\,
	datac => \inst2|Add0~24_combout\,
	datad => \inst2|LessThan3~10_combout\,
	combout => \inst2|clk_count~0_combout\);

-- Location: LCCOMB_X18_Y14_N16
\inst2|clk_count~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|clk_count~1_combout\ = (!\inst2|Add0~60_combout\ & ((\inst2|LessThan5~4_combout\) # ((\inst2|LessThan3~14_combout\) # (!\inst2|clk_count~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010001010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|Add0~60_combout\,
	datab => \inst2|LessThan5~4_combout\,
	datac => \inst2|LessThan3~14_combout\,
	datad => \inst2|clk_count~0_combout\,
	combout => \inst2|clk_count~1_combout\);

-- Location: LCCOMB_X18_Y14_N10
\inst2|clk_count[27]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|clk_count[27]~2_combout\ = (\inst2|Add0~62_combout\) # ((\inst2|LessThan4~4_combout\) # (\inst2|clk_count~1_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|Add0~62_combout\,
	datac => \inst2|LessThan4~4_combout\,
	datad => \inst2|clk_count~1_combout\,
	combout => \inst2|clk_count[27]~2_combout\);

-- Location: LCCOMB_X18_Y14_N24
\inst2|clk_count[27]~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|clk_count[27]~3_combout\ = (\inst2|estado.ENVIAR~q\ & (((\inst2|Selector34~0_combout\)))) # (!\inst2|estado.ENVIAR~q\ & (\inst2|lcd_data[2]~0_combout\ & ((!\inst2|clk_count[27]~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000011100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|estado.ENVIAR~q\,
	datab => \inst2|lcd_data[2]~0_combout\,
	datac => \inst2|Selector34~0_combout\,
	datad => \inst2|clk_count[27]~2_combout\,
	combout => \inst2|clk_count[27]~3_combout\);

-- Location: LCCOMB_X18_Y14_N30
\inst2|clk_count[27]~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|clk_count[27]~4_combout\ = (!\inst2|estado.PRONTO~q\ & ((\inst2|estado.ENERGIZACAO~q\ & ((!\inst2|clk_count[27]~3_combout\))) # (!\inst2|estado.ENERGIZACAO~q\ & (\inst2|LessThan0~6_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010000001110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|estado.ENERGIZACAO~q\,
	datab => \inst2|LessThan0~6_combout\,
	datac => \inst2|estado.PRONTO~q\,
	datad => \inst2|clk_count[27]~3_combout\,
	combout => \inst2|clk_count[27]~4_combout\);

-- Location: LCCOMB_X17_Y14_N4
\inst2|Selector16~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|Selector16~0_combout\ = (\inst2|clk_count[27]~4_combout\ & \inst2|Add0~32_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst2|clk_count[27]~4_combout\,
	datad => \inst2|Add0~32_combout\,
	combout => \inst2|Selector16~0_combout\);

-- Location: FF_X17_Y14_N5
\inst2|clk_count[16]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \inst2|Selector16~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst2|clk_count\(16));

-- Location: LCCOMB_X16_Y14_N2
\inst2|Add0~34\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|Add0~34_combout\ = (\inst2|clk_count\(17) & (!\inst2|Add0~33\)) # (!\inst2|clk_count\(17) & ((\inst2|Add0~33\) # (GND)))
-- \inst2|Add0~35\ = CARRY((!\inst2|Add0~33\) # (!\inst2|clk_count\(17)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst2|clk_count\(17),
	datad => VCC,
	cin => \inst2|Add0~33\,
	combout => \inst2|Add0~34_combout\,
	cout => \inst2|Add0~35\);

-- Location: LCCOMB_X17_Y16_N22
\inst2|Selector15~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|Selector15~0_combout\ = (\inst2|Add0~34_combout\ & \inst2|clk_count[27]~4_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst2|Add0~34_combout\,
	datad => \inst2|clk_count[27]~4_combout\,
	combout => \inst2|Selector15~0_combout\);

-- Location: FF_X17_Y16_N23
\inst2|clk_count[17]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \inst2|Selector15~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst2|clk_count\(17));

-- Location: LCCOMB_X16_Y14_N4
\inst2|Add0~36\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|Add0~36_combout\ = (\inst2|clk_count\(18) & (\inst2|Add0~35\ $ (GND))) # (!\inst2|clk_count\(18) & (!\inst2|Add0~35\ & VCC))
-- \inst2|Add0~37\ = CARRY((\inst2|clk_count\(18) & !\inst2|Add0~35\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|clk_count\(18),
	datad => VCC,
	cin => \inst2|Add0~35\,
	combout => \inst2|Add0~36_combout\,
	cout => \inst2|Add0~37\);

-- Location: LCCOMB_X17_Y16_N30
\inst2|Selector14~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|Selector14~0_combout\ = (\inst2|Add0~36_combout\ & \inst2|clk_count[27]~4_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst2|Add0~36_combout\,
	datad => \inst2|clk_count[27]~4_combout\,
	combout => \inst2|Selector14~0_combout\);

-- Location: FF_X17_Y16_N31
\inst2|clk_count[18]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \inst2|Selector14~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst2|clk_count\(18));

-- Location: LCCOMB_X16_Y14_N6
\inst2|Add0~38\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|Add0~38_combout\ = (\inst2|clk_count\(19) & (!\inst2|Add0~37\)) # (!\inst2|clk_count\(19) & ((\inst2|Add0~37\) # (GND)))
-- \inst2|Add0~39\ = CARRY((!\inst2|Add0~37\) # (!\inst2|clk_count\(19)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst2|clk_count\(19),
	datad => VCC,
	cin => \inst2|Add0~37\,
	combout => \inst2|Add0~38_combout\,
	cout => \inst2|Add0~39\);

-- Location: LCCOMB_X17_Y16_N0
\inst2|Selector13~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|Selector13~0_combout\ = (\inst2|Add0~38_combout\ & \inst2|clk_count[27]~4_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst2|Add0~38_combout\,
	datad => \inst2|clk_count[27]~4_combout\,
	combout => \inst2|Selector13~0_combout\);

-- Location: FF_X17_Y16_N1
\inst2|clk_count[19]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \inst2|Selector13~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst2|clk_count\(19));

-- Location: LCCOMB_X16_Y14_N8
\inst2|Add0~40\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|Add0~40_combout\ = (\inst2|clk_count\(20) & (\inst2|Add0~39\ $ (GND))) # (!\inst2|clk_count\(20) & (!\inst2|Add0~39\ & VCC))
-- \inst2|Add0~41\ = CARRY((\inst2|clk_count\(20) & !\inst2|Add0~39\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|clk_count\(20),
	datad => VCC,
	cin => \inst2|Add0~39\,
	combout => \inst2|Add0~40_combout\,
	cout => \inst2|Add0~41\);

-- Location: LCCOMB_X19_Y14_N28
\inst2|Selector12~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|Selector12~0_combout\ = (\inst2|Add0~40_combout\ & \inst2|clk_count[27]~4_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|Add0~40_combout\,
	datad => \inst2|clk_count[27]~4_combout\,
	combout => \inst2|Selector12~0_combout\);

-- Location: FF_X19_Y14_N29
\inst2|clk_count[20]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \inst2|Selector12~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst2|clk_count\(20));

-- Location: LCCOMB_X16_Y14_N10
\inst2|Add0~42\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|Add0~42_combout\ = (\inst2|clk_count\(21) & (!\inst2|Add0~41\)) # (!\inst2|clk_count\(21) & ((\inst2|Add0~41\) # (GND)))
-- \inst2|Add0~43\ = CARRY((!\inst2|Add0~41\) # (!\inst2|clk_count\(21)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst2|clk_count\(21),
	datad => VCC,
	cin => \inst2|Add0~41\,
	combout => \inst2|Add0~42_combout\,
	cout => \inst2|Add0~43\);

-- Location: LCCOMB_X17_Y16_N4
\inst2|Selector11~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|Selector11~0_combout\ = (\inst2|Add0~42_combout\ & \inst2|clk_count[27]~4_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst2|Add0~42_combout\,
	datad => \inst2|clk_count[27]~4_combout\,
	combout => \inst2|Selector11~0_combout\);

-- Location: FF_X17_Y16_N5
\inst2|clk_count[21]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \inst2|Selector11~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst2|clk_count\(21));

-- Location: LCCOMB_X16_Y14_N12
\inst2|Add0~44\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|Add0~44_combout\ = (\inst2|clk_count\(22) & (\inst2|Add0~43\ $ (GND))) # (!\inst2|clk_count\(22) & (!\inst2|Add0~43\ & VCC))
-- \inst2|Add0~45\ = CARRY((\inst2|clk_count\(22) & !\inst2|Add0~43\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|clk_count\(22),
	datad => VCC,
	cin => \inst2|Add0~43\,
	combout => \inst2|Add0~44_combout\,
	cout => \inst2|Add0~45\);

-- Location: LCCOMB_X17_Y14_N6
\inst2|Selector10~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|Selector10~0_combout\ = (\inst2|Add0~44_combout\ & \inst2|clk_count[27]~4_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|Add0~44_combout\,
	datac => \inst2|clk_count[27]~4_combout\,
	combout => \inst2|Selector10~0_combout\);

-- Location: FF_X17_Y14_N7
\inst2|clk_count[22]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \inst2|Selector10~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst2|clk_count\(22));

-- Location: LCCOMB_X16_Y14_N14
\inst2|Add0~46\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|Add0~46_combout\ = (\inst2|clk_count\(23) & (!\inst2|Add0~45\)) # (!\inst2|clk_count\(23) & ((\inst2|Add0~45\) # (GND)))
-- \inst2|Add0~47\ = CARRY((!\inst2|Add0~45\) # (!\inst2|clk_count\(23)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|clk_count\(23),
	datad => VCC,
	cin => \inst2|Add0~45\,
	combout => \inst2|Add0~46_combout\,
	cout => \inst2|Add0~47\);

-- Location: LCCOMB_X14_Y14_N12
\inst2|Selector9~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|Selector9~0_combout\ = (\inst2|Add0~46_combout\ & \inst2|clk_count[27]~4_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|Add0~46_combout\,
	datad => \inst2|clk_count[27]~4_combout\,
	combout => \inst2|Selector9~0_combout\);

-- Location: FF_X14_Y14_N13
\inst2|clk_count[23]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \inst2|Selector9~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst2|clk_count\(23));

-- Location: LCCOMB_X16_Y14_N16
\inst2|Add0~48\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|Add0~48_combout\ = (\inst2|clk_count\(24) & (\inst2|Add0~47\ $ (GND))) # (!\inst2|clk_count\(24) & (!\inst2|Add0~47\ & VCC))
-- \inst2|Add0~49\ = CARRY((\inst2|clk_count\(24) & !\inst2|Add0~47\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst2|clk_count\(24),
	datad => VCC,
	cin => \inst2|Add0~47\,
	combout => \inst2|Add0~48_combout\,
	cout => \inst2|Add0~49\);

-- Location: LCCOMB_X14_Y14_N2
\inst2|Selector8~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|Selector8~0_combout\ = (\inst2|Add0~48_combout\ & \inst2|clk_count[27]~4_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst2|Add0~48_combout\,
	datad => \inst2|clk_count[27]~4_combout\,
	combout => \inst2|Selector8~0_combout\);

-- Location: FF_X14_Y14_N3
\inst2|clk_count[24]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \inst2|Selector8~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst2|clk_count\(24));

-- Location: LCCOMB_X16_Y14_N18
\inst2|Add0~50\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|Add0~50_combout\ = (\inst2|clk_count\(25) & (!\inst2|Add0~49\)) # (!\inst2|clk_count\(25) & ((\inst2|Add0~49\) # (GND)))
-- \inst2|Add0~51\ = CARRY((!\inst2|Add0~49\) # (!\inst2|clk_count\(25)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|clk_count\(25),
	datad => VCC,
	cin => \inst2|Add0~49\,
	combout => \inst2|Add0~50_combout\,
	cout => \inst2|Add0~51\);

-- Location: LCCOMB_X14_Y14_N16
\inst2|Selector7~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|Selector7~0_combout\ = (\inst2|Add0~50_combout\ & \inst2|clk_count[27]~4_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst2|Add0~50_combout\,
	datad => \inst2|clk_count[27]~4_combout\,
	combout => \inst2|Selector7~0_combout\);

-- Location: FF_X14_Y14_N17
\inst2|clk_count[25]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \inst2|Selector7~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst2|clk_count\(25));

-- Location: LCCOMB_X14_Y14_N8
\inst2|Selector6~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|Selector6~0_combout\ = (\inst2|Add0~52_combout\ & \inst2|clk_count[27]~4_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst2|Add0~52_combout\,
	datad => \inst2|clk_count[27]~4_combout\,
	combout => \inst2|Selector6~0_combout\);

-- Location: FF_X14_Y14_N9
\inst2|clk_count[26]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \inst2|Selector6~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst2|clk_count\(26));

-- Location: LCCOMB_X14_Y14_N10
\inst2|LessThan9~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|LessThan9~0_combout\ = (!\inst2|clk_count\(23) & (!\inst2|clk_count\(24) & (!\inst2|clk_count\(22) & !\inst2|clk_count\(25))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|clk_count\(23),
	datab => \inst2|clk_count\(24),
	datac => \inst2|clk_count\(22),
	datad => \inst2|clk_count\(25),
	combout => \inst2|LessThan9~0_combout\);

-- Location: LCCOMB_X14_Y14_N6
\inst2|LessThan9~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|LessThan9~1_combout\ = (!\inst2|clk_count\(26) & \inst2|LessThan9~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst2|clk_count\(26),
	datad => \inst2|LessThan9~0_combout\,
	combout => \inst2|LessThan9~1_combout\);

-- Location: LCCOMB_X17_Y13_N28
\inst2|LessThan0~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|LessThan0~1_combout\ = (((!\inst2|clk_count\(5) & !\inst2|clk_count\(6))) # (!\inst2|clk_count\(7))) # (!\inst2|clk_count\(8))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111011101111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|clk_count\(8),
	datab => \inst2|clk_count\(7),
	datac => \inst2|clk_count\(5),
	datad => \inst2|clk_count\(6),
	combout => \inst2|LessThan0~1_combout\);

-- Location: LCCOMB_X17_Y16_N16
\inst2|LessThan0~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|LessThan0~2_combout\ = ((\inst2|LessThan0~1_combout\ & !\inst2|clk_count\(9))) # (!\inst2|clk_count\(10))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst2|clk_count\(10),
	datac => \inst2|LessThan0~1_combout\,
	datad => \inst2|clk_count\(9),
	combout => \inst2|LessThan0~2_combout\);

-- Location: LCCOMB_X17_Y16_N14
\inst2|LessThan0~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|LessThan0~3_combout\ = ((!\inst2|clk_count\(11) & (!\inst2|clk_count\(12) & \inst2|LessThan0~2_combout\))) # (!\inst2|clk_count\(13))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101011101010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|clk_count\(13),
	datab => \inst2|clk_count\(11),
	datac => \inst2|clk_count\(12),
	datad => \inst2|LessThan0~2_combout\,
	combout => \inst2|LessThan0~3_combout\);

-- Location: LCCOMB_X17_Y16_N28
\inst2|LessThan0~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|LessThan0~4_combout\ = (((\inst2|LessThan0~0_combout\ & \inst2|LessThan0~3_combout\)) # (!\inst2|clk_count\(18))) # (!\inst2|clk_count\(17))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101010111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|clk_count\(17),
	datab => \inst2|LessThan0~0_combout\,
	datac => \inst2|LessThan0~3_combout\,
	datad => \inst2|clk_count\(18),
	combout => \inst2|LessThan0~4_combout\);

-- Location: LCCOMB_X17_Y16_N2
\inst2|LessThan0~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|LessThan0~5_combout\ = ((!\inst2|clk_count\(20) & (!\inst2|clk_count\(19) & \inst2|LessThan0~4_combout\))) # (!\inst2|clk_count\(21))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|clk_count\(20),
	datab => \inst2|clk_count\(19),
	datac => \inst2|clk_count\(21),
	datad => \inst2|LessThan0~4_combout\,
	combout => \inst2|LessThan0~5_combout\);

-- Location: LCCOMB_X17_Y16_N12
\inst2|LessThan0~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|LessThan0~6_combout\ = (\inst2|clk_count\(31)) # ((\inst2|LessThan9~1_combout\ & (\inst2|LessThan9~9_combout\ & \inst2|LessThan0~5_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|LessThan9~1_combout\,
	datab => \inst2|LessThan9~9_combout\,
	datac => \inst2|clk_count\(31),
	datad => \inst2|LessThan0~5_combout\,
	combout => \inst2|LessThan0~6_combout\);

-- Location: LCCOMB_X19_Y14_N18
\inst2|busy~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|busy~6_combout\ = (\inst2|LessThan3~7_combout\ & (!\inst2|Add0~24_combout\ & (\inst2|LessThan3~13_combout\ & \inst2|LessThan3~5_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|LessThan3~7_combout\,
	datab => \inst2|Add0~24_combout\,
	datac => \inst2|LessThan3~13_combout\,
	datad => \inst2|LessThan3~5_combout\,
	combout => \inst2|busy~6_combout\);

-- Location: LCCOMB_X19_Y14_N2
\inst2|busy~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|busy~8_combout\ = (!\inst2|Add0~56_combout\ & (!\inst2|Add0~58_combout\ & \inst2|busy~6_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst2|Add0~56_combout\,
	datac => \inst2|Add0~58_combout\,
	datad => \inst2|busy~6_combout\,
	combout => \inst2|busy~8_combout\);

-- Location: LCCOMB_X18_Y16_N6
\inst2|busy~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|busy~7_combout\ = (!\inst2|Add0~62_combout\ & (\inst2|lcd_data[2]~0_combout\ & ((\inst2|Add0~60_combout\) # (!\inst2|busy~8_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|Add0~60_combout\,
	datab => \inst2|Add0~62_combout\,
	datac => \inst2|busy~8_combout\,
	datad => \inst2|lcd_data[2]~0_combout\,
	combout => \inst2|busy~7_combout\);

-- Location: LCCOMB_X18_Y16_N26
\inst2|Selector33~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|Selector33~0_combout\ = (\inst2|LessThan0~6_combout\ & (((\inst2|estado.INICIALIZACAO~q\ & !\inst2|busy~7_combout\)))) # (!\inst2|LessThan0~6_combout\ & (((\inst2|estado.INICIALIZACAO~q\ & !\inst2|busy~7_combout\)) # 
-- (!\inst2|estado.ENERGIZACAO~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000111110001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|LessThan0~6_combout\,
	datab => \inst2|estado.ENERGIZACAO~q\,
	datac => \inst2|estado.INICIALIZACAO~q\,
	datad => \inst2|busy~7_combout\,
	combout => \inst2|Selector33~0_combout\);

-- Location: FF_X18_Y16_N27
\inst2|estado.INICIALIZACAO\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \inst2|Selector33~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst2|estado.INICIALIZACAO~q\);

-- Location: LCCOMB_X18_Y16_N24
\inst2|Selector34~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|Selector34~1_combout\ = (\inst2|estado.INICIALIZACAO~q\ & ((\inst2|busy~7_combout\) # ((\inst2|estado.PRONTO~q\ & !\inst1|lcd_enable~q\)))) # (!\inst2|estado.INICIALIZACAO~q\ & (\inst2|estado.PRONTO~q\ & (!\inst1|lcd_enable~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|estado.INICIALIZACAO~q\,
	datab => \inst2|estado.PRONTO~q\,
	datac => \inst1|lcd_enable~q\,
	datad => \inst2|busy~7_combout\,
	combout => \inst2|Selector34~1_combout\);

-- Location: FF_X18_Y16_N25
\inst2|busy\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \inst2|Selector34~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst2|busy~q\);

-- Location: LCCOMB_X24_Y15_N18
\inst1|process_1~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|process_1~0_combout\ = (\inst2|busy~q\ & !\inst1|lcd_enable~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst2|busy~q\,
	datad => \inst1|lcd_enable~q\,
	combout => \inst1|process_1~0_combout\);

-- Location: FF_X22_Y15_N25
\inst1|char[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	asdata => \inst1|char~2_combout\,
	sload => VCC,
	ena => \inst1|process_1~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|char\(5));

-- Location: LCCOMB_X22_Y15_N4
\inst1|Add0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|Add0~0_combout\ = \inst1|char\(0) $ (VCC)
-- \inst1|Add0~1\ = CARRY(\inst1|char\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst1|char\(0),
	datad => VCC,
	combout => \inst1|Add0~0_combout\,
	cout => \inst1|Add0~1\);

-- Location: LCCOMB_X22_Y15_N20
\inst1|LessThan0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|LessThan0~0_combout\ = (!\inst1|char\(2) & (!\inst1|char\(4) & (!\inst1|char\(1) & !\inst1|char\(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|char\(2),
	datab => \inst1|char\(4),
	datac => \inst1|char\(1),
	datad => \inst1|char\(3),
	combout => \inst1|LessThan0~0_combout\);

-- Location: LCCOMB_X23_Y15_N12
\inst1|char~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|char~1_combout\ = (\inst1|Add0~0_combout\ & ((\inst1|LessThan0~0_combout\) # (!\inst1|char\(5))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst1|char\(5),
	datac => \inst1|Add0~0_combout\,
	datad => \inst1|LessThan0~0_combout\,
	combout => \inst1|char~1_combout\);

-- Location: FF_X22_Y15_N5
\inst1|char[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	asdata => \inst1|char~1_combout\,
	sload => VCC,
	ena => \inst1|process_1~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|char\(0));

-- Location: LCCOMB_X22_Y15_N6
\inst1|Add0~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|Add0~2_combout\ = (\inst1|char\(1) & (!\inst1|Add0~1\)) # (!\inst1|char\(1) & ((\inst1|Add0~1\) # (GND)))
-- \inst1|Add0~3\ = CARRY((!\inst1|Add0~1\) # (!\inst1|char\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|char\(1),
	datad => VCC,
	cin => \inst1|Add0~1\,
	combout => \inst1|Add0~2_combout\,
	cout => \inst1|Add0~3\);

-- Location: LCCOMB_X22_Y15_N2
\inst1|char~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|char~5_combout\ = (\inst1|Add0~2_combout\ & ((\inst1|LessThan0~0_combout\) # (!\inst1|char\(5))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|Add0~2_combout\,
	datab => \inst1|char\(5),
	datad => \inst1|LessThan0~0_combout\,
	combout => \inst1|char~5_combout\);

-- Location: FF_X22_Y15_N21
\inst1|char[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	asdata => \inst1|char~5_combout\,
	sload => VCC,
	ena => \inst1|process_1~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|char\(1));

-- Location: LCCOMB_X22_Y15_N8
\inst1|Add0~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|Add0~4_combout\ = (\inst1|char\(2) & (\inst1|Add0~3\ $ (GND))) # (!\inst1|char\(2) & (!\inst1|Add0~3\ & VCC))
-- \inst1|Add0~5\ = CARRY((\inst1|char\(2) & !\inst1|Add0~3\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|char\(2),
	datad => VCC,
	cin => \inst1|Add0~3\,
	combout => \inst1|Add0~4_combout\,
	cout => \inst1|Add0~5\);

-- Location: LCCOMB_X22_Y15_N26
\inst1|char~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|char~4_combout\ = (\inst1|Add0~4_combout\ & ((\inst1|LessThan0~0_combout\) # (!\inst1|char\(5))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst1|char\(5),
	datac => \inst1|Add0~4_combout\,
	datad => \inst1|LessThan0~0_combout\,
	combout => \inst1|char~4_combout\);

-- Location: FF_X22_Y15_N27
\inst1|char[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \inst1|char~4_combout\,
	ena => \inst1|process_1~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|char\(2));

-- Location: LCCOMB_X22_Y15_N10
\inst1|Add0~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|Add0~6_combout\ = (\inst1|char\(3) & (!\inst1|Add0~5\)) # (!\inst1|char\(3) & ((\inst1|Add0~5\) # (GND)))
-- \inst1|Add0~7\ = CARRY((!\inst1|Add0~5\) # (!\inst1|char\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst1|char\(3),
	datad => VCC,
	cin => \inst1|Add0~5\,
	combout => \inst1|Add0~6_combout\,
	cout => \inst1|Add0~7\);

-- Location: LCCOMB_X22_Y15_N28
\inst1|char~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|char~3_combout\ = (\inst1|Add0~6_combout\ & ((\inst1|LessThan0~0_combout\) # (!\inst1|char\(5))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|Add0~6_combout\,
	datab => \inst1|LessThan0~0_combout\,
	datad => \inst1|char\(5),
	combout => \inst1|char~3_combout\);

-- Location: FF_X22_Y15_N1
\inst1|char[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	asdata => \inst1|char~3_combout\,
	sload => VCC,
	ena => \inst1|process_1~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|char\(3));

-- Location: LCCOMB_X22_Y15_N12
\inst1|Add0~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|Add0~8_combout\ = (\inst1|char\(4) & (\inst1|Add0~7\ $ (GND))) # (!\inst1|char\(4) & (!\inst1|Add0~7\ & VCC))
-- \inst1|Add0~9\ = CARRY((\inst1|char\(4) & !\inst1|Add0~7\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst1|char\(4),
	datad => VCC,
	cin => \inst1|Add0~7\,
	combout => \inst1|Add0~8_combout\,
	cout => \inst1|Add0~9\);

-- Location: LCCOMB_X22_Y15_N18
\inst1|char~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|char~0_combout\ = (\inst1|Add0~8_combout\ & ((\inst1|LessThan0~0_combout\) # (!\inst1|char\(5))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|Add0~8_combout\,
	datab => \inst1|LessThan0~0_combout\,
	datad => \inst1|char\(5),
	combout => \inst1|char~0_combout\);

-- Location: FF_X22_Y15_N31
\inst1|char[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	asdata => \inst1|char~0_combout\,
	sload => VCC,
	ena => \inst1|process_1~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|char\(4));

-- Location: LCCOMB_X22_Y15_N14
\inst1|Add0~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|Add0~10_combout\ = \inst1|Add0~9\ $ (\inst1|char\(5))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => \inst1|char\(5),
	cin => \inst1|Add0~9\,
	combout => \inst1|Add0~10_combout\);

-- Location: LCCOMB_X22_Y15_N30
\inst1|char~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|char~2_combout\ = (\inst1|Add0~10_combout\ & ((\inst1|LessThan0~0_combout\) # (!\inst1|char\(5))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|Add0~10_combout\,
	datab => \inst1|LessThan0~0_combout\,
	datad => \inst1|char\(5),
	combout => \inst1|char~2_combout\);

-- Location: LCCOMB_X24_Y15_N20
\inst1|lcd_enable~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|lcd_enable~2_combout\ = (!\inst1|char~4_combout\ & (!\inst1|char~0_combout\ & (!\inst1|char~5_combout\ & !\inst1|char~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|char~4_combout\,
	datab => \inst1|char~0_combout\,
	datac => \inst1|char~5_combout\,
	datad => \inst1|char~3_combout\,
	combout => \inst1|lcd_enable~2_combout\);

-- Location: LCCOMB_X24_Y15_N24
\inst1|lcd_enable~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|lcd_enable~3_combout\ = (\inst2|busy~q\ & (!\inst1|lcd_enable~q\ & ((\inst1|lcd_enable~2_combout\) # (!\inst1|char~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101000000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|busy~q\,
	datab => \inst1|char~2_combout\,
	datac => \inst1|lcd_enable~q\,
	datad => \inst1|lcd_enable~2_combout\,
	combout => \inst1|lcd_enable~3_combout\);

-- Location: FF_X24_Y15_N25
\inst1|lcd_enable\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \inst1|lcd_enable~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|lcd_enable~q\);

-- Location: LCCOMB_X18_Y16_N30
\inst2|Selector35~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|Selector35~2_combout\ = (\inst1|lcd_enable~q\ & ((\inst2|estado.PRONTO~q\) # ((\inst2|estado.ENVIAR~q\ & !\inst2|Selector34~0_combout\)))) # (!\inst1|lcd_enable~q\ & (((\inst2|estado.ENVIAR~q\ & !\inst2|Selector34~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100011111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|lcd_enable~q\,
	datab => \inst2|estado.PRONTO~q\,
	datac => \inst2|estado.ENVIAR~q\,
	datad => \inst2|Selector34~0_combout\,
	combout => \inst2|Selector35~2_combout\);

-- Location: FF_X18_Y16_N31
\inst2|estado.ENVIAR\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \inst2|Selector35~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst2|estado.ENVIAR~q\);

-- Location: LCCOMB_X18_Y15_N24
\inst2|LessThan9~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|LessThan9~5_combout\ = (!\inst2|clk_count\(3) & (!\inst2|clk_count\(5) & !\inst2|clk_count\(4)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000100000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|clk_count\(3),
	datab => \inst2|clk_count\(5),
	datac => \inst2|clk_count\(4),
	combout => \inst2|LessThan9~5_combout\);

-- Location: LCCOMB_X19_Y15_N8
\inst2|LessThan12~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|LessThan12~0_combout\ = ((\inst2|LessThan9~5_combout\ & ((!\inst2|clk_count\(2)) # (!\inst2|clk_count\(1))))) # (!\inst2|clk_count\(6))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111111100110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|clk_count\(1),
	datab => \inst2|clk_count\(6),
	datac => \inst2|clk_count\(2),
	datad => \inst2|LessThan9~5_combout\,
	combout => \inst2|LessThan12~0_combout\);

-- Location: LCCOMB_X17_Y13_N8
\inst2|LessThan12~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|LessThan12~1_combout\ = (!\inst2|clk_count\(9) & (((!\inst2|clk_count\(7) & \inst2|LessThan12~0_combout\)) # (!\inst2|clk_count\(8))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001010100000101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|clk_count\(9),
	datab => \inst2|clk_count\(7),
	datac => \inst2|clk_count\(8),
	datad => \inst2|LessThan12~0_combout\,
	combout => \inst2|LessThan12~1_combout\);

-- Location: LCCOMB_X17_Y13_N30
\inst2|LessThan12~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|LessThan12~2_combout\ = (!\inst2|clk_count\(11) & (\inst2|LessThan9~4_combout\ & ((\inst2|LessThan12~1_combout\) # (!\inst2|clk_count\(10)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|clk_count\(11),
	datab => \inst2|clk_count\(10),
	datac => \inst2|LessThan12~1_combout\,
	datad => \inst2|LessThan9~4_combout\,
	combout => \inst2|LessThan12~2_combout\);

-- Location: LCCOMB_X17_Y13_N2
\inst2|LessThan9~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|LessThan9~10_combout\ = (\inst2|LessThan9~8_combout\ & (\inst2|LessThan9~9_combout\ & \inst2|LessThan9~4_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst2|LessThan9~8_combout\,
	datac => \inst2|LessThan9~9_combout\,
	datad => \inst2|LessThan9~4_combout\,
	combout => \inst2|LessThan9~10_combout\);

-- Location: LCCOMB_X17_Y13_N26
\inst2|LessThan10~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|LessThan10~1_combout\ = (!\inst2|clk_count\(9) & (!\inst2|clk_count\(7) & (!\inst2|clk_count\(8) & !\inst2|clk_count\(6))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|clk_count\(9),
	datab => \inst2|clk_count\(7),
	datac => \inst2|clk_count\(8),
	datad => \inst2|clk_count\(6),
	combout => \inst2|LessThan10~1_combout\);

-- Location: LCCOMB_X19_Y15_N26
\inst2|LessThan10~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|LessThan10~2_combout\ = (!\inst2|clk_count\(1) & (!\inst2|clk_count\(2) & !\inst2|clk_count\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|clk_count\(1),
	datac => \inst2|clk_count\(2),
	datad => \inst2|clk_count\(3),
	combout => \inst2|LessThan10~2_combout\);

-- Location: LCCOMB_X14_Y15_N24
\inst2|LessThan10~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|LessThan10~3_combout\ = (\inst2|clk_count\(5) & \inst2|clk_count\(4))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst2|clk_count\(5),
	datad => \inst2|clk_count\(4),
	combout => \inst2|LessThan10~3_combout\);

-- Location: LCCOMB_X17_Y13_N20
\inst2|LessThan10~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|LessThan10~0_combout\ = (!\inst2|clk_count\(10) & (!\inst2|clk_count\(11) & \inst2|LessThan9~4_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst2|clk_count\(10),
	datac => \inst2|clk_count\(11),
	datad => \inst2|LessThan9~4_combout\,
	combout => \inst2|LessThan10~0_combout\);

-- Location: LCCOMB_X17_Y13_N24
\inst2|LessThan10~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|LessThan10~4_combout\ = (\inst2|LessThan10~1_combout\ & (\inst2|LessThan10~0_combout\ & ((\inst2|LessThan10~2_combout\) # (!\inst2|LessThan10~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|LessThan10~1_combout\,
	datab => \inst2|LessThan10~2_combout\,
	datac => \inst2|LessThan10~3_combout\,
	datad => \inst2|LessThan10~0_combout\,
	combout => \inst2|LessThan10~4_combout\);

-- Location: LCCOMB_X17_Y13_N0
\inst2|Selector46~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|Selector46~0_combout\ = (\inst2|e~q\ & (((!\inst2|LessThan12~2_combout\ & !\inst2|LessThan10~4_combout\)) # (!\inst2|LessThan9~10_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000001110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|LessThan12~2_combout\,
	datab => \inst2|LessThan9~10_combout\,
	datac => \inst2|e~q\,
	datad => \inst2|LessThan10~4_combout\,
	combout => \inst2|Selector46~0_combout\);

-- Location: LCCOMB_X18_Y15_N28
\inst2|LessThan11~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|LessThan11~0_combout\ = (!\inst2|clk_count\(6) & (((!\inst2|clk_count\(3)) # (!\inst2|clk_count\(2))) # (!\inst2|LessThan10~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001010101010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|clk_count\(6),
	datab => \inst2|LessThan10~3_combout\,
	datac => \inst2|clk_count\(2),
	datad => \inst2|clk_count\(3),
	combout => \inst2|LessThan11~0_combout\);

-- Location: LCCOMB_X17_Y13_N14
\inst2|LessThan11~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|LessThan11~1_combout\ = ((!\inst2|clk_count\(8) & ((\inst2|LessThan11~0_combout\) # (!\inst2|clk_count\(7))))) # (!\inst2|clk_count\(9))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101111101010111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|clk_count\(9),
	datab => \inst2|clk_count\(7),
	datac => \inst2|clk_count\(8),
	datad => \inst2|LessThan11~0_combout\,
	combout => \inst2|LessThan11~1_combout\);

-- Location: LCCOMB_X17_Y13_N12
\inst2|Selector46~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|Selector46~1_combout\ = (\inst2|LessThan10~0_combout\ & (\inst2|LessThan9~10_combout\ & (\inst2|LessThan11~1_combout\ & !\inst2|LessThan10~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|LessThan10~0_combout\,
	datab => \inst2|LessThan9~10_combout\,
	datac => \inst2|LessThan11~1_combout\,
	datad => \inst2|LessThan10~4_combout\,
	combout => \inst2|Selector46~1_combout\);

-- Location: LCCOMB_X17_Y13_N6
\inst2|Selector46~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|Selector46~2_combout\ = (\inst2|estado.ENVIAR~q\ & (!\inst2|clk_count\(31) & ((\inst2|Selector46~0_combout\) # (\inst2|Selector46~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101000001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|estado.ENVIAR~q\,
	datab => \inst2|Selector46~0_combout\,
	datac => \inst2|clk_count\(31),
	datad => \inst2|Selector46~1_combout\,
	combout => \inst2|Selector46~2_combout\);

-- Location: LCCOMB_X17_Y16_N6
\inst2|Selector46~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|Selector46~8_combout\ = (!\inst2|estado.ENVIAR~q\ & ((\inst2|estado.INICIALIZACAO~q\ & ((\inst2|Add0~62_combout\))) # (!\inst2|estado.INICIALIZACAO~q\ & (\inst2|e~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|estado.ENVIAR~q\,
	datab => \inst2|e~q\,
	datac => \inst2|Add0~62_combout\,
	datad => \inst2|estado.INICIALIZACAO~q\,
	combout => \inst2|Selector46~8_combout\);

-- Location: LCCOMB_X19_Y15_N28
\inst2|Selector46~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|Selector46~4_combout\ = (\inst2|estado.INICIALIZACAO~q\ & !\inst2|estado.ENVIAR~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst2|estado.INICIALIZACAO~q\,
	datad => \inst2|estado.ENVIAR~q\,
	combout => \inst2|Selector46~4_combout\);

-- Location: LCCOMB_X19_Y14_N14
\inst2|LessThan1~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|LessThan1~2_combout\ = (\inst2|LessThan3~7_combout\ & (\inst2|LessThan1~1_combout\ & (\inst2|busy~4_combout\ & \inst2|LessThan3~5_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|LessThan3~7_combout\,
	datab => \inst2|LessThan1~1_combout\,
	datac => \inst2|busy~4_combout\,
	datad => \inst2|LessThan3~5_combout\,
	combout => \inst2|LessThan1~2_combout\);

-- Location: LCCOMB_X19_Y14_N0
\inst2|Selector42~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|Selector42~0_combout\ = (\inst2|LessThan3~13_combout\ & (!\inst2|Add0~24_combout\ & (!\inst2|LessThan2~2_combout\ & \inst2|LessThan3~10_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|LessThan3~13_combout\,
	datab => \inst2|Add0~24_combout\,
	datac => \inst2|LessThan2~2_combout\,
	datad => \inst2|LessThan3~10_combout\,
	combout => \inst2|Selector42~0_combout\);

-- Location: LCCOMB_X19_Y14_N12
\inst2|Selector46~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|Selector46~7_combout\ = (\inst2|Selector46~4_combout\ & (!\inst2|Add0~60_combout\ & ((\inst2|LessThan1~2_combout\) # (\inst2|Selector42~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010001000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|Selector46~4_combout\,
	datab => \inst2|Add0~60_combout\,
	datac => \inst2|LessThan1~2_combout\,
	datad => \inst2|Selector42~0_combout\,
	combout => \inst2|Selector46~7_combout\);

-- Location: LCCOMB_X17_Y14_N22
\inst2|LessThan3~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|LessThan3~8_combout\ = (!\inst2|Add0~24_combout\ & (\inst2|LessThan3~7_combout\ & (\inst2|LessThan3~5_combout\ & \inst2|busy~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|Add0~24_combout\,
	datab => \inst2|LessThan3~7_combout\,
	datac => \inst2|LessThan3~5_combout\,
	datad => \inst2|busy~4_combout\,
	combout => \inst2|LessThan3~8_combout\);

-- Location: LCCOMB_X17_Y14_N8
\inst2|LessThan4~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|LessThan4~3_combout\ = (\inst2|LessThan3~7_combout\ & (\inst2|LessThan3~3_combout\ & ((\inst2|LessThan4~2_combout\) # (!\inst2|Add0~24_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100010000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|Add0~24_combout\,
	datab => \inst2|LessThan3~7_combout\,
	datac => \inst2|LessThan4~2_combout\,
	datad => \inst2|LessThan3~3_combout\,
	combout => \inst2|LessThan4~3_combout\);

-- Location: LCCOMB_X17_Y14_N26
\inst2|Selector46~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|Selector46~5_combout\ = (\inst2|Selector46~4_combout\ & (!\inst2|LessThan4~3_combout\ & ((!\inst2|LessThan3~8_combout\) # (!\inst2|LessThan2~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|LessThan2~2_combout\,
	datab => \inst2|Selector46~4_combout\,
	datac => \inst2|LessThan3~8_combout\,
	datad => \inst2|LessThan4~3_combout\,
	combout => \inst2|Selector46~5_combout\);

-- Location: LCCOMB_X17_Y14_N28
\inst2|Selector46~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|Selector46~10_combout\ = (!\inst2|busy~5_combout\ & (!\inst2|LessThan4~3_combout\ & ((!\inst2|LessThan3~8_combout\) # (!\inst2|LessThan2~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000010011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|LessThan2~2_combout\,
	datab => \inst2|busy~5_combout\,
	datac => \inst2|LessThan3~8_combout\,
	datad => \inst2|LessThan4~3_combout\,
	combout => \inst2|Selector46~10_combout\);

-- Location: LCCOMB_X17_Y14_N10
\inst2|Selector46~11\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|Selector46~11_combout\ = (\inst2|estado.INICIALIZACAO~q\ & (!\inst2|estado.ENVIAR~q\ & ((\inst2|Add0~60_combout\) # (\inst2|Selector46~10_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101000001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|estado.INICIALIZACAO~q\,
	datab => \inst2|Add0~60_combout\,
	datac => \inst2|estado.ENVIAR~q\,
	datad => \inst2|Selector46~10_combout\,
	combout => \inst2|Selector46~11_combout\);

-- Location: LCCOMB_X17_Y14_N20
\inst2|Selector46~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|Selector46~3_combout\ = (\inst2|Selector46~11_combout\ & ((\inst2|LessThan7~2_combout\) # ((\inst2|e~q\ & !\inst2|LessThan8~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|Selector46~11_combout\,
	datab => \inst2|e~q\,
	datac => \inst2|LessThan8~4_combout\,
	datad => \inst2|LessThan7~2_combout\,
	combout => \inst2|Selector46~3_combout\);

-- Location: LCCOMB_X17_Y14_N12
\inst2|Selector46~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|Selector46~6_combout\ = (\inst2|Selector46~3_combout\) # ((\inst2|LessThan5~4_combout\ & (!\inst2|Add0~60_combout\ & \inst2|Selector46~5_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|LessThan5~4_combout\,
	datab => \inst2|Add0~60_combout\,
	datac => \inst2|Selector46~5_combout\,
	datad => \inst2|Selector46~3_combout\,
	combout => \inst2|Selector46~6_combout\);

-- Location: LCCOMB_X17_Y14_N24
\inst2|Selector46~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|Selector46~9_combout\ = (\inst2|Selector46~2_combout\) # ((\inst2|Selector46~8_combout\) # ((\inst2|Selector46~7_combout\) # (\inst2|Selector46~6_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|Selector46~2_combout\,
	datab => \inst2|Selector46~8_combout\,
	datac => \inst2|Selector46~7_combout\,
	datad => \inst2|Selector46~6_combout\,
	combout => \inst2|Selector46~9_combout\);

-- Location: FF_X17_Y14_N25
\inst2|e\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \inst2|Selector46~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst2|e~q\);

-- Location: LCCOMB_X21_Y14_N12
\inst2|rs~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|rs~0_combout\ = (\inst1|lcd_enable~q\ & \inst2|estado.PRONTO~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst1|lcd_enable~q\,
	datad => \inst2|estado.PRONTO~q\,
	combout => \inst2|rs~0_combout\);

-- Location: LCCOMB_X22_Y15_N0
\inst1|Mux0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|Mux0~0_combout\ = (!\inst1|Add0~6_combout\ & (!\inst1|Add0~4_combout\ & !\inst1|Add0~2_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000010001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|Add0~6_combout\,
	datab => \inst1|Add0~4_combout\,
	datad => \inst1|Add0~2_combout\,
	combout => \inst1|Mux0~0_combout\);

-- Location: LCCOMB_X22_Y15_N24
\inst1|Mux0~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|Mux0~1_combout\ = (\inst1|Mux0~0_combout\ & (\inst1|Add0~10_combout\ & ((\inst1|LessThan0~0_combout\) # (!\inst1|char\(5))))) # (!\inst1|Mux0~0_combout\ & (((\inst1|LessThan0~0_combout\) # (!\inst1|char\(5)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110100001101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|Mux0~0_combout\,
	datab => \inst1|Add0~10_combout\,
	datac => \inst1|char\(5),
	datad => \inst1|LessThan0~0_combout\,
	combout => \inst1|Mux0~1_combout\);

-- Location: LCCOMB_X22_Y14_N18
\inst1|Mux0~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|Mux0~2_combout\ = (\inst1|Mux0~1_combout\) # (\inst1|char~0_combout\ $ (\inst1|char~1_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111111111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst1|Mux0~1_combout\,
	datac => \inst1|char~0_combout\,
	datad => \inst1|char~1_combout\,
	combout => \inst1|Mux0~2_combout\);

-- Location: LCCOMB_X22_Y14_N14
\inst1|lcd_bus[9]~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|lcd_bus[9]~7_combout\ = (\inst1|process_1~0_combout\ & (((!\inst1|Add0~8_combout\ & \inst1|Mux0~0_combout\)) # (!\inst1|char~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|Add0~8_combout\,
	datab => \inst1|process_1~0_combout\,
	datac => \inst1|Mux0~0_combout\,
	datad => \inst1|char~2_combout\,
	combout => \inst1|lcd_bus[9]~7_combout\);

-- Location: FF_X22_Y14_N19
\inst1|lcd_bus[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \inst1|Mux0~2_combout\,
	ena => \inst1|lcd_bus[9]~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|lcd_bus\(9));

-- Location: LCCOMB_X18_Y16_N0
\inst2|rs~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|rs~1_combout\ = (!\inst2|estado.ENVIAR~q\ & (!\inst2|estado.INICIALIZACAO~q\ & ((\inst2|estado.ENERGIZACAO~q\) # (!\inst2|LessThan0~6_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000000010001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|estado.ENVIAR~q\,
	datab => \inst2|estado.INICIALIZACAO~q\,
	datac => \inst2|estado.ENERGIZACAO~q\,
	datad => \inst2|LessThan0~6_combout\,
	combout => \inst2|rs~1_combout\);

-- Location: LCCOMB_X18_Y16_N20
\inst2|rs~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|rs~2_combout\ = (\inst2|rs~1_combout\ & (\inst2|rs~0_combout\ & (\inst1|lcd_bus\(9)))) # (!\inst2|rs~1_combout\ & (((\inst2|rs~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|rs~0_combout\,
	datab => \inst1|lcd_bus\(9),
	datac => \inst2|rs~q\,
	datad => \inst2|rs~1_combout\,
	combout => \inst2|rs~2_combout\);

-- Location: FF_X18_Y16_N21
\inst2|rs\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \inst2|rs~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst2|rs~q\);

-- Location: IOIBUF_X34_Y12_N8
\key[3]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_key(3),
	o => \key[3]~input_o\);

-- Location: LCCOMB_X33_Y12_N4
\inst3|s0[3]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|s0[3]~feeder_combout\ = \key[3]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \key[3]~input_o\,
	combout => \inst3|s0[3]~feeder_combout\);

-- Location: FF_X33_Y12_N5
\inst3|s0[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \inst3|s0[3]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst3|s0\(3));

-- Location: LCCOMB_X32_Y12_N22
\inst3|s1[3]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|s1[3]~feeder_combout\ = \inst3|s0\(3)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst3|s0\(3),
	combout => \inst3|s1[3]~feeder_combout\);

-- Location: FF_X32_Y12_N23
\inst3|s1[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \inst3|s1[3]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst3|s1\(3));

-- Location: LCCOMB_X31_Y13_N0
\inst3|cnt[3][0]~96\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|cnt[3][0]~96_combout\ = \inst3|cnt[3][0]~q\ $ (VCC)
-- \inst3|cnt[3][0]~97\ = CARRY(\inst3|cnt[3][0]~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst3|cnt[3][0]~q\,
	datad => VCC,
	combout => \inst3|cnt[3][0]~96_combout\,
	cout => \inst3|cnt[3][0]~97\);

-- Location: LCCOMB_X32_Y12_N10
\inst3|cnt[3][18]~98\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|cnt[3][18]~98_combout\ = (\inst3|stable\(3) $ (!\inst3|s1\(3))) # (!\inst3|Equal1~10_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst3|stable\(3),
	datac => \inst3|s1\(3),
	datad => \inst3|Equal1~10_combout\,
	combout => \inst3|cnt[3][18]~98_combout\);

-- Location: FF_X31_Y13_N1
\inst3|cnt[3][0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \inst3|cnt[3][0]~96_combout\,
	sclr => \inst3|cnt[3][18]~98_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst3|cnt[3][0]~q\);

-- Location: LCCOMB_X31_Y13_N2
\inst3|cnt[3][1]~99\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|cnt[3][1]~99_combout\ = (\inst3|cnt[3][1]~q\ & (!\inst3|cnt[3][0]~97\)) # (!\inst3|cnt[3][1]~q\ & ((\inst3|cnt[3][0]~97\) # (GND)))
-- \inst3|cnt[3][1]~100\ = CARRY((!\inst3|cnt[3][0]~97\) # (!\inst3|cnt[3][1]~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst3|cnt[3][1]~q\,
	datad => VCC,
	cin => \inst3|cnt[3][0]~97\,
	combout => \inst3|cnt[3][1]~99_combout\,
	cout => \inst3|cnt[3][1]~100\);

-- Location: FF_X31_Y13_N3
\inst3|cnt[3][1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \inst3|cnt[3][1]~99_combout\,
	sclr => \inst3|cnt[3][18]~98_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst3|cnt[3][1]~q\);

-- Location: LCCOMB_X31_Y13_N4
\inst3|cnt[3][2]~101\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|cnt[3][2]~101_combout\ = (\inst3|cnt[3][2]~q\ & (\inst3|cnt[3][1]~100\ $ (GND))) # (!\inst3|cnt[3][2]~q\ & (!\inst3|cnt[3][1]~100\ & VCC))
-- \inst3|cnt[3][2]~102\ = CARRY((\inst3|cnt[3][2]~q\ & !\inst3|cnt[3][1]~100\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst3|cnt[3][2]~q\,
	datad => VCC,
	cin => \inst3|cnt[3][1]~100\,
	combout => \inst3|cnt[3][2]~101_combout\,
	cout => \inst3|cnt[3][2]~102\);

-- Location: FF_X31_Y13_N5
\inst3|cnt[3][2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \inst3|cnt[3][2]~101_combout\,
	sclr => \inst3|cnt[3][18]~98_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst3|cnt[3][2]~q\);

-- Location: LCCOMB_X31_Y13_N6
\inst3|cnt[3][3]~103\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|cnt[3][3]~103_combout\ = (\inst3|cnt[3][3]~q\ & (!\inst3|cnt[3][2]~102\)) # (!\inst3|cnt[3][3]~q\ & ((\inst3|cnt[3][2]~102\) # (GND)))
-- \inst3|cnt[3][3]~104\ = CARRY((!\inst3|cnt[3][2]~102\) # (!\inst3|cnt[3][3]~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|cnt[3][3]~q\,
	datad => VCC,
	cin => \inst3|cnt[3][2]~102\,
	combout => \inst3|cnt[3][3]~103_combout\,
	cout => \inst3|cnt[3][3]~104\);

-- Location: FF_X31_Y13_N7
\inst3|cnt[3][3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \inst3|cnt[3][3]~103_combout\,
	sclr => \inst3|cnt[3][18]~98_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst3|cnt[3][3]~q\);

-- Location: LCCOMB_X31_Y13_N8
\inst3|cnt[3][4]~105\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|cnt[3][4]~105_combout\ = (\inst3|cnt[3][4]~q\ & (\inst3|cnt[3][3]~104\ $ (GND))) # (!\inst3|cnt[3][4]~q\ & (!\inst3|cnt[3][3]~104\ & VCC))
-- \inst3|cnt[3][4]~106\ = CARRY((\inst3|cnt[3][4]~q\ & !\inst3|cnt[3][3]~104\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst3|cnt[3][4]~q\,
	datad => VCC,
	cin => \inst3|cnt[3][3]~104\,
	combout => \inst3|cnt[3][4]~105_combout\,
	cout => \inst3|cnt[3][4]~106\);

-- Location: FF_X31_Y13_N9
\inst3|cnt[3][4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \inst3|cnt[3][4]~105_combout\,
	sclr => \inst3|cnt[3][18]~98_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst3|cnt[3][4]~q\);

-- Location: LCCOMB_X31_Y13_N10
\inst3|cnt[3][5]~107\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|cnt[3][5]~107_combout\ = (\inst3|cnt[3][5]~q\ & (!\inst3|cnt[3][4]~106\)) # (!\inst3|cnt[3][5]~q\ & ((\inst3|cnt[3][4]~106\) # (GND)))
-- \inst3|cnt[3][5]~108\ = CARRY((!\inst3|cnt[3][4]~106\) # (!\inst3|cnt[3][5]~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|cnt[3][5]~q\,
	datad => VCC,
	cin => \inst3|cnt[3][4]~106\,
	combout => \inst3|cnt[3][5]~107_combout\,
	cout => \inst3|cnt[3][5]~108\);

-- Location: FF_X31_Y13_N11
\inst3|cnt[3][5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \inst3|cnt[3][5]~107_combout\,
	sclr => \inst3|cnt[3][18]~98_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst3|cnt[3][5]~q\);

-- Location: LCCOMB_X31_Y13_N12
\inst3|cnt[3][6]~109\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|cnt[3][6]~109_combout\ = (\inst3|cnt[3][6]~q\ & (\inst3|cnt[3][5]~108\ $ (GND))) # (!\inst3|cnt[3][6]~q\ & (!\inst3|cnt[3][5]~108\ & VCC))
-- \inst3|cnt[3][6]~110\ = CARRY((\inst3|cnt[3][6]~q\ & !\inst3|cnt[3][5]~108\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|cnt[3][6]~q\,
	datad => VCC,
	cin => \inst3|cnt[3][5]~108\,
	combout => \inst3|cnt[3][6]~109_combout\,
	cout => \inst3|cnt[3][6]~110\);

-- Location: FF_X31_Y13_N13
\inst3|cnt[3][6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \inst3|cnt[3][6]~109_combout\,
	sclr => \inst3|cnt[3][18]~98_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst3|cnt[3][6]~q\);

-- Location: LCCOMB_X31_Y13_N14
\inst3|cnt[3][7]~111\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|cnt[3][7]~111_combout\ = (\inst3|cnt[3][7]~q\ & (!\inst3|cnt[3][6]~110\)) # (!\inst3|cnt[3][7]~q\ & ((\inst3|cnt[3][6]~110\) # (GND)))
-- \inst3|cnt[3][7]~112\ = CARRY((!\inst3|cnt[3][6]~110\) # (!\inst3|cnt[3][7]~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst3|cnt[3][7]~q\,
	datad => VCC,
	cin => \inst3|cnt[3][6]~110\,
	combout => \inst3|cnt[3][7]~111_combout\,
	cout => \inst3|cnt[3][7]~112\);

-- Location: FF_X31_Y13_N15
\inst3|cnt[3][7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \inst3|cnt[3][7]~111_combout\,
	sclr => \inst3|cnt[3][18]~98_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst3|cnt[3][7]~q\);

-- Location: LCCOMB_X31_Y13_N16
\inst3|cnt[3][8]~113\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|cnt[3][8]~113_combout\ = (\inst3|cnt[3][8]~q\ & (\inst3|cnt[3][7]~112\ $ (GND))) # (!\inst3|cnt[3][8]~q\ & (!\inst3|cnt[3][7]~112\ & VCC))
-- \inst3|cnt[3][8]~114\ = CARRY((\inst3|cnt[3][8]~q\ & !\inst3|cnt[3][7]~112\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst3|cnt[3][8]~q\,
	datad => VCC,
	cin => \inst3|cnt[3][7]~112\,
	combout => \inst3|cnt[3][8]~113_combout\,
	cout => \inst3|cnt[3][8]~114\);

-- Location: FF_X31_Y13_N17
\inst3|cnt[3][8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \inst3|cnt[3][8]~113_combout\,
	sclr => \inst3|cnt[3][18]~98_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst3|cnt[3][8]~q\);

-- Location: LCCOMB_X31_Y13_N18
\inst3|cnt[3][9]~115\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|cnt[3][9]~115_combout\ = (\inst3|cnt[3][9]~q\ & (!\inst3|cnt[3][8]~114\)) # (!\inst3|cnt[3][9]~q\ & ((\inst3|cnt[3][8]~114\) # (GND)))
-- \inst3|cnt[3][9]~116\ = CARRY((!\inst3|cnt[3][8]~114\) # (!\inst3|cnt[3][9]~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst3|cnt[3][9]~q\,
	datad => VCC,
	cin => \inst3|cnt[3][8]~114\,
	combout => \inst3|cnt[3][9]~115_combout\,
	cout => \inst3|cnt[3][9]~116\);

-- Location: FF_X31_Y13_N19
\inst3|cnt[3][9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \inst3|cnt[3][9]~115_combout\,
	sclr => \inst3|cnt[3][18]~98_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst3|cnt[3][9]~q\);

-- Location: LCCOMB_X31_Y13_N20
\inst3|cnt[3][10]~117\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|cnt[3][10]~117_combout\ = (\inst3|cnt[3][10]~q\ & (\inst3|cnt[3][9]~116\ $ (GND))) # (!\inst3|cnt[3][10]~q\ & (!\inst3|cnt[3][9]~116\ & VCC))
-- \inst3|cnt[3][10]~118\ = CARRY((\inst3|cnt[3][10]~q\ & !\inst3|cnt[3][9]~116\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst3|cnt[3][10]~q\,
	datad => VCC,
	cin => \inst3|cnt[3][9]~116\,
	combout => \inst3|cnt[3][10]~117_combout\,
	cout => \inst3|cnt[3][10]~118\);

-- Location: FF_X31_Y13_N21
\inst3|cnt[3][10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \inst3|cnt[3][10]~117_combout\,
	sclr => \inst3|cnt[3][18]~98_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst3|cnt[3][10]~q\);

-- Location: LCCOMB_X31_Y13_N22
\inst3|cnt[3][11]~119\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|cnt[3][11]~119_combout\ = (\inst3|cnt[3][11]~q\ & (!\inst3|cnt[3][10]~118\)) # (!\inst3|cnt[3][11]~q\ & ((\inst3|cnt[3][10]~118\) # (GND)))
-- \inst3|cnt[3][11]~120\ = CARRY((!\inst3|cnt[3][10]~118\) # (!\inst3|cnt[3][11]~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|cnt[3][11]~q\,
	datad => VCC,
	cin => \inst3|cnt[3][10]~118\,
	combout => \inst3|cnt[3][11]~119_combout\,
	cout => \inst3|cnt[3][11]~120\);

-- Location: FF_X31_Y13_N23
\inst3|cnt[3][11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \inst3|cnt[3][11]~119_combout\,
	sclr => \inst3|cnt[3][18]~98_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst3|cnt[3][11]~q\);

-- Location: LCCOMB_X31_Y13_N24
\inst3|cnt[3][12]~121\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|cnt[3][12]~121_combout\ = (\inst3|cnt[3][12]~q\ & (\inst3|cnt[3][11]~120\ $ (GND))) # (!\inst3|cnt[3][12]~q\ & (!\inst3|cnt[3][11]~120\ & VCC))
-- \inst3|cnt[3][12]~122\ = CARRY((\inst3|cnt[3][12]~q\ & !\inst3|cnt[3][11]~120\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst3|cnt[3][12]~q\,
	datad => VCC,
	cin => \inst3|cnt[3][11]~120\,
	combout => \inst3|cnt[3][12]~121_combout\,
	cout => \inst3|cnt[3][12]~122\);

-- Location: FF_X31_Y13_N25
\inst3|cnt[3][12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \inst3|cnt[3][12]~121_combout\,
	sclr => \inst3|cnt[3][18]~98_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst3|cnt[3][12]~q\);

-- Location: LCCOMB_X31_Y13_N26
\inst3|cnt[3][13]~123\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|cnt[3][13]~123_combout\ = (\inst3|cnt[3][13]~q\ & (!\inst3|cnt[3][12]~122\)) # (!\inst3|cnt[3][13]~q\ & ((\inst3|cnt[3][12]~122\) # (GND)))
-- \inst3|cnt[3][13]~124\ = CARRY((!\inst3|cnt[3][12]~122\) # (!\inst3|cnt[3][13]~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|cnt[3][13]~q\,
	datad => VCC,
	cin => \inst3|cnt[3][12]~122\,
	combout => \inst3|cnt[3][13]~123_combout\,
	cout => \inst3|cnt[3][13]~124\);

-- Location: FF_X31_Y13_N27
\inst3|cnt[3][13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \inst3|cnt[3][13]~123_combout\,
	sclr => \inst3|cnt[3][18]~98_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst3|cnt[3][13]~q\);

-- Location: LCCOMB_X31_Y13_N28
\inst3|cnt[3][14]~125\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|cnt[3][14]~125_combout\ = (\inst3|cnt[3][14]~q\ & (\inst3|cnt[3][13]~124\ $ (GND))) # (!\inst3|cnt[3][14]~q\ & (!\inst3|cnt[3][13]~124\ & VCC))
-- \inst3|cnt[3][14]~126\ = CARRY((\inst3|cnt[3][14]~q\ & !\inst3|cnt[3][13]~124\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst3|cnt[3][14]~q\,
	datad => VCC,
	cin => \inst3|cnt[3][13]~124\,
	combout => \inst3|cnt[3][14]~125_combout\,
	cout => \inst3|cnt[3][14]~126\);

-- Location: FF_X31_Y13_N29
\inst3|cnt[3][14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \inst3|cnt[3][14]~125_combout\,
	sclr => \inst3|cnt[3][18]~98_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst3|cnt[3][14]~q\);

-- Location: LCCOMB_X31_Y13_N30
\inst3|cnt[3][15]~127\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|cnt[3][15]~127_combout\ = (\inst3|cnt[3][15]~q\ & (!\inst3|cnt[3][14]~126\)) # (!\inst3|cnt[3][15]~q\ & ((\inst3|cnt[3][14]~126\) # (GND)))
-- \inst3|cnt[3][15]~128\ = CARRY((!\inst3|cnt[3][14]~126\) # (!\inst3|cnt[3][15]~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|cnt[3][15]~q\,
	datad => VCC,
	cin => \inst3|cnt[3][14]~126\,
	combout => \inst3|cnt[3][15]~127_combout\,
	cout => \inst3|cnt[3][15]~128\);

-- Location: FF_X31_Y13_N31
\inst3|cnt[3][15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \inst3|cnt[3][15]~127_combout\,
	sclr => \inst3|cnt[3][18]~98_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst3|cnt[3][15]~q\);

-- Location: LCCOMB_X31_Y12_N0
\inst3|cnt[3][16]~129\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|cnt[3][16]~129_combout\ = (\inst3|cnt[3][16]~q\ & (\inst3|cnt[3][15]~128\ $ (GND))) # (!\inst3|cnt[3][16]~q\ & (!\inst3|cnt[3][15]~128\ & VCC))
-- \inst3|cnt[3][16]~130\ = CARRY((\inst3|cnt[3][16]~q\ & !\inst3|cnt[3][15]~128\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst3|cnt[3][16]~q\,
	datad => VCC,
	cin => \inst3|cnt[3][15]~128\,
	combout => \inst3|cnt[3][16]~129_combout\,
	cout => \inst3|cnt[3][16]~130\);

-- Location: FF_X31_Y12_N1
\inst3|cnt[3][16]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \inst3|cnt[3][16]~129_combout\,
	sclr => \inst3|cnt[3][18]~98_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst3|cnt[3][16]~q\);

-- Location: LCCOMB_X31_Y12_N2
\inst3|cnt[3][17]~131\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|cnt[3][17]~131_combout\ = (\inst3|cnt[3][17]~q\ & (!\inst3|cnt[3][16]~130\)) # (!\inst3|cnt[3][17]~q\ & ((\inst3|cnt[3][16]~130\) # (GND)))
-- \inst3|cnt[3][17]~132\ = CARRY((!\inst3|cnt[3][16]~130\) # (!\inst3|cnt[3][17]~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst3|cnt[3][17]~q\,
	datad => VCC,
	cin => \inst3|cnt[3][16]~130\,
	combout => \inst3|cnt[3][17]~131_combout\,
	cout => \inst3|cnt[3][17]~132\);

-- Location: FF_X31_Y12_N3
\inst3|cnt[3][17]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \inst3|cnt[3][17]~131_combout\,
	sclr => \inst3|cnt[3][18]~98_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst3|cnt[3][17]~q\);

-- Location: LCCOMB_X31_Y12_N4
\inst3|cnt[3][18]~133\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|cnt[3][18]~133_combout\ = (\inst3|cnt[3][18]~q\ & (\inst3|cnt[3][17]~132\ $ (GND))) # (!\inst3|cnt[3][18]~q\ & (!\inst3|cnt[3][17]~132\ & VCC))
-- \inst3|cnt[3][18]~134\ = CARRY((\inst3|cnt[3][18]~q\ & !\inst3|cnt[3][17]~132\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst3|cnt[3][18]~q\,
	datad => VCC,
	cin => \inst3|cnt[3][17]~132\,
	combout => \inst3|cnt[3][18]~133_combout\,
	cout => \inst3|cnt[3][18]~134\);

-- Location: FF_X31_Y12_N5
\inst3|cnt[3][18]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \inst3|cnt[3][18]~133_combout\,
	sclr => \inst3|cnt[3][18]~98_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst3|cnt[3][18]~q\);

-- Location: LCCOMB_X31_Y12_N6
\inst3|cnt[3][19]~135\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|cnt[3][19]~135_combout\ = (\inst3|cnt[3][19]~q\ & (!\inst3|cnt[3][18]~134\)) # (!\inst3|cnt[3][19]~q\ & ((\inst3|cnt[3][18]~134\) # (GND)))
-- \inst3|cnt[3][19]~136\ = CARRY((!\inst3|cnt[3][18]~134\) # (!\inst3|cnt[3][19]~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|cnt[3][19]~q\,
	datad => VCC,
	cin => \inst3|cnt[3][18]~134\,
	combout => \inst3|cnt[3][19]~135_combout\,
	cout => \inst3|cnt[3][19]~136\);

-- Location: FF_X31_Y12_N7
\inst3|cnt[3][19]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \inst3|cnt[3][19]~135_combout\,
	sclr => \inst3|cnt[3][18]~98_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst3|cnt[3][19]~q\);

-- Location: LCCOMB_X31_Y12_N8
\inst3|cnt[3][20]~137\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|cnt[3][20]~137_combout\ = (\inst3|cnt[3][20]~q\ & (\inst3|cnt[3][19]~136\ $ (GND))) # (!\inst3|cnt[3][20]~q\ & (!\inst3|cnt[3][19]~136\ & VCC))
-- \inst3|cnt[3][20]~138\ = CARRY((\inst3|cnt[3][20]~q\ & !\inst3|cnt[3][19]~136\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst3|cnt[3][20]~q\,
	datad => VCC,
	cin => \inst3|cnt[3][19]~136\,
	combout => \inst3|cnt[3][20]~137_combout\,
	cout => \inst3|cnt[3][20]~138\);

-- Location: FF_X31_Y12_N9
\inst3|cnt[3][20]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \inst3|cnt[3][20]~137_combout\,
	sclr => \inst3|cnt[3][18]~98_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst3|cnt[3][20]~q\);

-- Location: LCCOMB_X31_Y12_N10
\inst3|cnt[3][21]~139\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|cnt[3][21]~139_combout\ = (\inst3|cnt[3][21]~q\ & (!\inst3|cnt[3][20]~138\)) # (!\inst3|cnt[3][21]~q\ & ((\inst3|cnt[3][20]~138\) # (GND)))
-- \inst3|cnt[3][21]~140\ = CARRY((!\inst3|cnt[3][20]~138\) # (!\inst3|cnt[3][21]~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|cnt[3][21]~q\,
	datad => VCC,
	cin => \inst3|cnt[3][20]~138\,
	combout => \inst3|cnt[3][21]~139_combout\,
	cout => \inst3|cnt[3][21]~140\);

-- Location: FF_X31_Y12_N11
\inst3|cnt[3][21]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \inst3|cnt[3][21]~139_combout\,
	sclr => \inst3|cnt[3][18]~98_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst3|cnt[3][21]~q\);

-- Location: LCCOMB_X31_Y12_N12
\inst3|cnt[3][22]~141\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|cnt[3][22]~141_combout\ = (\inst3|cnt[3][22]~q\ & (\inst3|cnt[3][21]~140\ $ (GND))) # (!\inst3|cnt[3][22]~q\ & (!\inst3|cnt[3][21]~140\ & VCC))
-- \inst3|cnt[3][22]~142\ = CARRY((\inst3|cnt[3][22]~q\ & !\inst3|cnt[3][21]~140\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|cnt[3][22]~q\,
	datad => VCC,
	cin => \inst3|cnt[3][21]~140\,
	combout => \inst3|cnt[3][22]~141_combout\,
	cout => \inst3|cnt[3][22]~142\);

-- Location: FF_X31_Y12_N13
\inst3|cnt[3][22]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \inst3|cnt[3][22]~141_combout\,
	sclr => \inst3|cnt[3][18]~98_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst3|cnt[3][22]~q\);

-- Location: LCCOMB_X31_Y12_N14
\inst3|cnt[3][23]~143\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|cnt[3][23]~143_combout\ = (\inst3|cnt[3][23]~q\ & (!\inst3|cnt[3][22]~142\)) # (!\inst3|cnt[3][23]~q\ & ((\inst3|cnt[3][22]~142\) # (GND)))
-- \inst3|cnt[3][23]~144\ = CARRY((!\inst3|cnt[3][22]~142\) # (!\inst3|cnt[3][23]~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst3|cnt[3][23]~q\,
	datad => VCC,
	cin => \inst3|cnt[3][22]~142\,
	combout => \inst3|cnt[3][23]~143_combout\,
	cout => \inst3|cnt[3][23]~144\);

-- Location: FF_X31_Y12_N15
\inst3|cnt[3][23]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \inst3|cnt[3][23]~143_combout\,
	sclr => \inst3|cnt[3][18]~98_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst3|cnt[3][23]~q\);

-- Location: LCCOMB_X31_Y12_N16
\inst3|cnt[3][24]~145\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|cnt[3][24]~145_combout\ = (\inst3|cnt[3][24]~q\ & (\inst3|cnt[3][23]~144\ $ (GND))) # (!\inst3|cnt[3][24]~q\ & (!\inst3|cnt[3][23]~144\ & VCC))
-- \inst3|cnt[3][24]~146\ = CARRY((\inst3|cnt[3][24]~q\ & !\inst3|cnt[3][23]~144\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst3|cnt[3][24]~q\,
	datad => VCC,
	cin => \inst3|cnt[3][23]~144\,
	combout => \inst3|cnt[3][24]~145_combout\,
	cout => \inst3|cnt[3][24]~146\);

-- Location: FF_X31_Y12_N17
\inst3|cnt[3][24]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \inst3|cnt[3][24]~145_combout\,
	sclr => \inst3|cnt[3][18]~98_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst3|cnt[3][24]~q\);

-- Location: LCCOMB_X31_Y12_N18
\inst3|cnt[3][25]~147\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|cnt[3][25]~147_combout\ = (\inst3|cnt[3][25]~q\ & (!\inst3|cnt[3][24]~146\)) # (!\inst3|cnt[3][25]~q\ & ((\inst3|cnt[3][24]~146\) # (GND)))
-- \inst3|cnt[3][25]~148\ = CARRY((!\inst3|cnt[3][24]~146\) # (!\inst3|cnt[3][25]~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst3|cnt[3][25]~q\,
	datad => VCC,
	cin => \inst3|cnt[3][24]~146\,
	combout => \inst3|cnt[3][25]~147_combout\,
	cout => \inst3|cnt[3][25]~148\);

-- Location: FF_X31_Y12_N19
\inst3|cnt[3][25]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \inst3|cnt[3][25]~147_combout\,
	sclr => \inst3|cnt[3][18]~98_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst3|cnt[3][25]~q\);

-- Location: LCCOMB_X31_Y12_N20
\inst3|cnt[3][26]~149\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|cnt[3][26]~149_combout\ = (\inst3|cnt[3][26]~q\ & (\inst3|cnt[3][25]~148\ $ (GND))) # (!\inst3|cnt[3][26]~q\ & (!\inst3|cnt[3][25]~148\ & VCC))
-- \inst3|cnt[3][26]~150\ = CARRY((\inst3|cnt[3][26]~q\ & !\inst3|cnt[3][25]~148\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst3|cnt[3][26]~q\,
	datad => VCC,
	cin => \inst3|cnt[3][25]~148\,
	combout => \inst3|cnt[3][26]~149_combout\,
	cout => \inst3|cnt[3][26]~150\);

-- Location: FF_X31_Y12_N21
\inst3|cnt[3][26]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \inst3|cnt[3][26]~149_combout\,
	sclr => \inst3|cnt[3][18]~98_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst3|cnt[3][26]~q\);

-- Location: LCCOMB_X31_Y12_N22
\inst3|cnt[3][27]~151\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|cnt[3][27]~151_combout\ = (\inst3|cnt[3][27]~q\ & (!\inst3|cnt[3][26]~150\)) # (!\inst3|cnt[3][27]~q\ & ((\inst3|cnt[3][26]~150\) # (GND)))
-- \inst3|cnt[3][27]~152\ = CARRY((!\inst3|cnt[3][26]~150\) # (!\inst3|cnt[3][27]~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|cnt[3][27]~q\,
	datad => VCC,
	cin => \inst3|cnt[3][26]~150\,
	combout => \inst3|cnt[3][27]~151_combout\,
	cout => \inst3|cnt[3][27]~152\);

-- Location: FF_X31_Y12_N23
\inst3|cnt[3][27]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \inst3|cnt[3][27]~151_combout\,
	sclr => \inst3|cnt[3][18]~98_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst3|cnt[3][27]~q\);

-- Location: LCCOMB_X31_Y12_N24
\inst3|cnt[3][28]~153\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|cnt[3][28]~153_combout\ = (\inst3|cnt[3][28]~q\ & (\inst3|cnt[3][27]~152\ $ (GND))) # (!\inst3|cnt[3][28]~q\ & (!\inst3|cnt[3][27]~152\ & VCC))
-- \inst3|cnt[3][28]~154\ = CARRY((\inst3|cnt[3][28]~q\ & !\inst3|cnt[3][27]~152\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst3|cnt[3][28]~q\,
	datad => VCC,
	cin => \inst3|cnt[3][27]~152\,
	combout => \inst3|cnt[3][28]~153_combout\,
	cout => \inst3|cnt[3][28]~154\);

-- Location: FF_X31_Y12_N25
\inst3|cnt[3][28]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \inst3|cnt[3][28]~153_combout\,
	sclr => \inst3|cnt[3][18]~98_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst3|cnt[3][28]~q\);

-- Location: LCCOMB_X31_Y12_N26
\inst3|cnt[3][29]~155\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|cnt[3][29]~155_combout\ = (\inst3|cnt[3][29]~q\ & (!\inst3|cnt[3][28]~154\)) # (!\inst3|cnt[3][29]~q\ & ((\inst3|cnt[3][28]~154\) # (GND)))
-- \inst3|cnt[3][29]~156\ = CARRY((!\inst3|cnt[3][28]~154\) # (!\inst3|cnt[3][29]~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|cnt[3][29]~q\,
	datad => VCC,
	cin => \inst3|cnt[3][28]~154\,
	combout => \inst3|cnt[3][29]~155_combout\,
	cout => \inst3|cnt[3][29]~156\);

-- Location: FF_X31_Y12_N27
\inst3|cnt[3][29]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \inst3|cnt[3][29]~155_combout\,
	sclr => \inst3|cnt[3][18]~98_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst3|cnt[3][29]~q\);

-- Location: LCCOMB_X31_Y12_N28
\inst3|cnt[3][30]~157\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|cnt[3][30]~157_combout\ = (\inst3|cnt[3][30]~q\ & (\inst3|cnt[3][29]~156\ $ (GND))) # (!\inst3|cnt[3][30]~q\ & (!\inst3|cnt[3][29]~156\ & VCC))
-- \inst3|cnt[3][30]~158\ = CARRY((\inst3|cnt[3][30]~q\ & !\inst3|cnt[3][29]~156\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst3|cnt[3][30]~q\,
	datad => VCC,
	cin => \inst3|cnt[3][29]~156\,
	combout => \inst3|cnt[3][30]~157_combout\,
	cout => \inst3|cnt[3][30]~158\);

-- Location: FF_X31_Y12_N29
\inst3|cnt[3][30]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \inst3|cnt[3][30]~157_combout\,
	sclr => \inst3|cnt[3][18]~98_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst3|cnt[3][30]~q\);

-- Location: LCCOMB_X31_Y12_N30
\inst3|cnt[3][31]~159\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|cnt[3][31]~159_combout\ = \inst3|cnt[3][31]~q\ $ (\inst3|cnt[3][30]~158\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|cnt[3][31]~q\,
	cin => \inst3|cnt[3][30]~158\,
	combout => \inst3|cnt[3][31]~159_combout\);

-- Location: FF_X31_Y12_N31
\inst3|cnt[3][31]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \inst3|cnt[3][31]~159_combout\,
	sclr => \inst3|cnt[3][18]~98_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst3|cnt[3][31]~q\);

-- Location: LCCOMB_X32_Y12_N6
\inst3|Equal1~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|Equal1~9_combout\ = (\inst3|cnt[3][31]~q\) # ((\inst3|cnt[3][28]~q\) # ((\inst3|cnt[3][29]~q\) # (\inst3|cnt[3][30]~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|cnt[3][31]~q\,
	datab => \inst3|cnt[3][28]~q\,
	datac => \inst3|cnt[3][29]~q\,
	datad => \inst3|cnt[3][30]~q\,
	combout => \inst3|Equal1~9_combout\);

-- Location: LCCOMB_X32_Y12_N4
\inst3|Equal1~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|Equal1~8_combout\ = (\inst3|cnt[3][24]~q\) # ((\inst3|cnt[3][26]~q\) # ((\inst3|cnt[3][25]~q\) # (\inst3|cnt[3][27]~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|cnt[3][24]~q\,
	datab => \inst3|cnt[3][26]~q\,
	datac => \inst3|cnt[3][25]~q\,
	datad => \inst3|cnt[3][27]~q\,
	combout => \inst3|Equal1~8_combout\);

-- Location: LCCOMB_X32_Y12_N14
\inst3|Equal1~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|Equal1~5_combout\ = (((!\inst3|cnt[3][17]~q\) # (!\inst3|cnt[3][18]~q\)) # (!\inst3|cnt[3][19]~q\)) # (!\inst3|cnt[3][16]~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|cnt[3][16]~q\,
	datab => \inst3|cnt[3][19]~q\,
	datac => \inst3|cnt[3][18]~q\,
	datad => \inst3|cnt[3][17]~q\,
	combout => \inst3|Equal1~5_combout\);

-- Location: LCCOMB_X32_Y12_N28
\inst3|Equal1~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|Equal1~6_combout\ = (\inst3|cnt[3][23]~q\) # ((\inst3|cnt[3][22]~q\) # ((\inst3|cnt[3][21]~q\) # (\inst3|cnt[3][20]~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|cnt[3][23]~q\,
	datab => \inst3|cnt[3][22]~q\,
	datac => \inst3|cnt[3][21]~q\,
	datad => \inst3|cnt[3][20]~q\,
	combout => \inst3|Equal1~6_combout\);

-- Location: LCCOMB_X32_Y12_N30
\inst3|Equal1~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|Equal1~7_combout\ = (\inst3|Equal1~5_combout\) # (\inst3|Equal1~6_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst3|Equal1~5_combout\,
	datad => \inst3|Equal1~6_combout\,
	combout => \inst3|Equal1~7_combout\);

-- Location: LCCOMB_X32_Y12_N26
\inst3|Equal1~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|Equal1~1_combout\ = (\inst3|cnt[3][7]~q\) # ((\inst3|cnt[3][6]~q\) # ((!\inst3|cnt[3][5]~q\) # (!\inst3|cnt[3][4]~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|cnt[3][7]~q\,
	datab => \inst3|cnt[3][6]~q\,
	datac => \inst3|cnt[3][4]~q\,
	datad => \inst3|cnt[3][5]~q\,
	combout => \inst3|Equal1~1_combout\);

-- Location: LCCOMB_X32_Y12_N16
\inst3|Equal1~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|Equal1~2_combout\ = (\inst3|cnt[3][10]~q\) # ((\inst3|cnt[3][8]~q\) # ((\inst3|cnt[3][11]~q\) # (!\inst3|cnt[3][9]~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|cnt[3][10]~q\,
	datab => \inst3|cnt[3][8]~q\,
	datac => \inst3|cnt[3][11]~q\,
	datad => \inst3|cnt[3][9]~q\,
	combout => \inst3|Equal1~2_combout\);

-- Location: LCCOMB_X32_Y12_N8
\inst3|Equal1~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|Equal1~0_combout\ = (((!\inst3|cnt[3][1]~q\) # (!\inst3|cnt[3][2]~q\)) # (!\inst3|cnt[3][0]~q\)) # (!\inst3|cnt[3][3]~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|cnt[3][3]~q\,
	datab => \inst3|cnt[3][0]~q\,
	datac => \inst3|cnt[3][2]~q\,
	datad => \inst3|cnt[3][1]~q\,
	combout => \inst3|Equal1~0_combout\);

-- Location: LCCOMB_X32_Y12_N18
\inst3|Equal1~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|Equal1~3_combout\ = ((\inst3|cnt[3][15]~q\) # ((\inst3|cnt[3][13]~q\) # (\inst3|cnt[3][12]~q\))) # (!\inst3|cnt[3][14]~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|cnt[3][14]~q\,
	datab => \inst3|cnt[3][15]~q\,
	datac => \inst3|cnt[3][13]~q\,
	datad => \inst3|cnt[3][12]~q\,
	combout => \inst3|Equal1~3_combout\);

-- Location: LCCOMB_X32_Y12_N0
\inst3|Equal1~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|Equal1~4_combout\ = (\inst3|Equal1~1_combout\) # ((\inst3|Equal1~2_combout\) # ((\inst3|Equal1~0_combout\) # (\inst3|Equal1~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|Equal1~1_combout\,
	datab => \inst3|Equal1~2_combout\,
	datac => \inst3|Equal1~0_combout\,
	datad => \inst3|Equal1~3_combout\,
	combout => \inst3|Equal1~4_combout\);

-- Location: LCCOMB_X32_Y12_N20
\inst3|Equal1~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|Equal1~10_combout\ = (\inst3|Equal1~9_combout\) # ((\inst3|Equal1~8_combout\) # ((\inst3|Equal1~7_combout\) # (\inst3|Equal1~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|Equal1~9_combout\,
	datab => \inst3|Equal1~8_combout\,
	datac => \inst3|Equal1~7_combout\,
	datad => \inst3|Equal1~4_combout\,
	combout => \inst3|Equal1~10_combout\);

-- Location: LCCOMB_X32_Y12_N24
\inst3|stable[3]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|stable[3]~0_combout\ = (\inst3|Equal1~10_combout\ & ((\inst3|stable\(3)))) # (!\inst3|Equal1~10_combout\ & (\inst3|s1\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|s1\(3),
	datac => \inst3|stable\(3),
	datad => \inst3|Equal1~10_combout\,
	combout => \inst3|stable[3]~0_combout\);

-- Location: FF_X32_Y12_N25
\inst3|stable[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \inst3|stable[3]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst3|stable\(3));

-- Location: LCCOMB_X28_Y16_N0
\inst7|mute_d1~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst7|mute_d1~0_combout\ = !\inst3|stable\(3)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst3|stable\(3),
	combout => \inst7|mute_d1~0_combout\);

-- Location: FF_X28_Y16_N1
\inst7|mute_d1\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \inst7|mute_d1~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst7|mute_d1~q\);

-- Location: LCCOMB_X28_Y16_N14
\inst7|mute_d2~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst7|mute_d2~feeder_combout\ = \inst7|mute_d1~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst7|mute_d1~q\,
	combout => \inst7|mute_d2~feeder_combout\);

-- Location: FF_X28_Y16_N15
\inst7|mute_d2\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \inst7|mute_d2~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst7|mute_d2~q\);

-- Location: LCCOMB_X28_Y16_N18
\inst7|mute_rise~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst7|mute_rise~0_combout\ = (!\inst7|mute_d2~q\ & \inst7|mute_d1~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst7|mute_d2~q\,
	datad => \inst7|mute_d1~q\,
	combout => \inst7|mute_rise~0_combout\);

-- Location: FF_X28_Y16_N19
\inst7|mute_rise\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \inst7|mute_rise~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst7|mute_rise~q\);

-- Location: LCCOMB_X28_Y16_N28
\inst7|mute_en~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst7|mute_en~0_combout\ = \inst7|mute_en~q\ $ (\inst7|mute_rise~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst7|mute_en~q\,
	datad => \inst7|mute_rise~q\,
	combout => \inst7|mute_en~0_combout\);

-- Location: FF_X28_Y16_N29
\inst7|mute_en\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \inst7|mute_en~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst7|mute_en~q\);

-- Location: LCCOMB_X23_Y17_N0
\inst7|u_div|cnt[0]~32\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst7|u_div|cnt[0]~32_combout\ = \inst7|u_div|cnt\(0) $ (VCC)
-- \inst7|u_div|cnt[0]~33\ = CARRY(\inst7|u_div|cnt\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst7|u_div|cnt\(0),
	datad => VCC,
	combout => \inst7|u_div|cnt[0]~32_combout\,
	cout => \inst7|u_div|cnt[0]~33\);

-- Location: LCCOMB_X22_Y16_N8
\inst7|u_div|LessThan0~18\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst7|u_div|LessThan0~18_combout\ = (!\inst7|u_div|cnt\(28) & (!\inst7|u_div|cnt\(27) & (!\inst7|u_div|cnt\(26) & !\inst7|u_div|cnt\(25))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst7|u_div|cnt\(28),
	datab => \inst7|u_div|cnt\(27),
	datac => \inst7|u_div|cnt\(26),
	datad => \inst7|u_div|cnt\(25),
	combout => \inst7|u_div|LessThan0~18_combout\);

-- Location: LCCOMB_X22_Y16_N22
\inst7|u_div|LessThan0~19\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst7|u_div|LessThan0~19_combout\ = (!\inst7|u_div|cnt\(29) & (!\inst7|u_div|cnt\(30) & \inst7|u_div|LessThan0~18_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst7|u_div|cnt\(29),
	datab => \inst7|u_div|cnt\(30),
	datac => \inst7|u_div|LessThan0~18_combout\,
	combout => \inst7|u_div|LessThan0~19_combout\);

-- Location: LCCOMB_X24_Y16_N0
\inst7|u_div|LessThan0~16\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst7|u_div|LessThan0~16_combout\ = (!\inst7|u_div|cnt\(20) & (!\inst7|u_div|cnt\(19) & (!\inst7|u_div|cnt\(18) & !\inst7|u_div|cnt\(17))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst7|u_div|cnt\(20),
	datab => \inst7|u_div|cnt\(19),
	datac => \inst7|u_div|cnt\(18),
	datad => \inst7|u_div|cnt\(17),
	combout => \inst7|u_div|LessThan0~16_combout\);

-- Location: LCCOMB_X24_Y16_N6
\inst7|u_div|LessThan0~17\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst7|u_div|LessThan0~17_combout\ = (!\inst7|u_div|cnt\(21) & (!\inst7|u_div|cnt\(22) & (!\inst7|u_div|cnt\(24) & !\inst7|u_div|cnt\(23))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst7|u_div|cnt\(21),
	datab => \inst7|u_div|cnt\(22),
	datac => \inst7|u_div|cnt\(24),
	datad => \inst7|u_div|cnt\(23),
	combout => \inst7|u_div|LessThan0~17_combout\);

-- Location: LCCOMB_X26_Y16_N18
\inst7|u_ctrl|estado_atual~71\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst7|u_ctrl|estado_atual~71_combout\ = (!\inst7|stop_pulse~q\ & \inst7|u_ctrl|estado_atual.s33~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst7|stop_pulse~q\,
	datac => \inst7|u_ctrl|estado_atual.s33~q\,
	combout => \inst7|u_ctrl|estado_atual~71_combout\);

-- Location: LCCOMB_X32_Y16_N0
\inst3|cnt[1][0]~161\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|cnt[1][0]~161_combout\ = \inst3|cnt[1][0]~q\ $ (VCC)
-- \inst3|cnt[1][0]~162\ = CARRY(\inst3|cnt[1][0]~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst3|cnt[1][0]~q\,
	datad => VCC,
	combout => \inst3|cnt[1][0]~161_combout\,
	cout => \inst3|cnt[1][0]~162\);

-- Location: IOIBUF_X34_Y12_N22
\key[1]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_key(1),
	o => \key[1]~input_o\);

-- Location: LCCOMB_X33_Y12_N10
\inst3|s0[1]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|s0[1]~feeder_combout\ = \key[1]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \key[1]~input_o\,
	combout => \inst3|s0[1]~feeder_combout\);

-- Location: FF_X33_Y12_N11
\inst3|s0[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \inst3|s0[1]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst3|s0\(1));

-- Location: FF_X33_Y16_N19
\inst3|s1[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	asdata => \inst3|s0\(1),
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst3|s1\(1));

-- Location: LCCOMB_X33_Y16_N18
\inst3|cnt[1][31]~163\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|cnt[1][31]~163_combout\ = (\inst3|s1\(1) $ (!\inst3|stable\(1))) # (!\inst3|Equal3~10_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010101011111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|Equal3~10_combout\,
	datac => \inst3|s1\(1),
	datad => \inst3|stable\(1),
	combout => \inst3|cnt[1][31]~163_combout\);

-- Location: FF_X32_Y16_N1
\inst3|cnt[1][0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \inst3|cnt[1][0]~161_combout\,
	sclr => \inst3|cnt[1][31]~163_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst3|cnt[1][0]~q\);

-- Location: LCCOMB_X32_Y16_N2
\inst3|cnt[1][1]~164\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|cnt[1][1]~164_combout\ = (\inst3|cnt[1][1]~q\ & (!\inst3|cnt[1][0]~162\)) # (!\inst3|cnt[1][1]~q\ & ((\inst3|cnt[1][0]~162\) # (GND)))
-- \inst3|cnt[1][1]~165\ = CARRY((!\inst3|cnt[1][0]~162\) # (!\inst3|cnt[1][1]~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst3|cnt[1][1]~q\,
	datad => VCC,
	cin => \inst3|cnt[1][0]~162\,
	combout => \inst3|cnt[1][1]~164_combout\,
	cout => \inst3|cnt[1][1]~165\);

-- Location: FF_X32_Y16_N3
\inst3|cnt[1][1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \inst3|cnt[1][1]~164_combout\,
	sclr => \inst3|cnt[1][31]~163_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst3|cnt[1][1]~q\);

-- Location: LCCOMB_X32_Y16_N4
\inst3|cnt[1][2]~166\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|cnt[1][2]~166_combout\ = (\inst3|cnt[1][2]~q\ & (\inst3|cnt[1][1]~165\ $ (GND))) # (!\inst3|cnt[1][2]~q\ & (!\inst3|cnt[1][1]~165\ & VCC))
-- \inst3|cnt[1][2]~167\ = CARRY((\inst3|cnt[1][2]~q\ & !\inst3|cnt[1][1]~165\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst3|cnt[1][2]~q\,
	datad => VCC,
	cin => \inst3|cnt[1][1]~165\,
	combout => \inst3|cnt[1][2]~166_combout\,
	cout => \inst3|cnt[1][2]~167\);

-- Location: FF_X32_Y16_N5
\inst3|cnt[1][2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \inst3|cnt[1][2]~166_combout\,
	sclr => \inst3|cnt[1][31]~163_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst3|cnt[1][2]~q\);

-- Location: LCCOMB_X32_Y16_N6
\inst3|cnt[1][3]~168\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|cnt[1][3]~168_combout\ = (\inst3|cnt[1][3]~q\ & (!\inst3|cnt[1][2]~167\)) # (!\inst3|cnt[1][3]~q\ & ((\inst3|cnt[1][2]~167\) # (GND)))
-- \inst3|cnt[1][3]~169\ = CARRY((!\inst3|cnt[1][2]~167\) # (!\inst3|cnt[1][3]~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|cnt[1][3]~q\,
	datad => VCC,
	cin => \inst3|cnt[1][2]~167\,
	combout => \inst3|cnt[1][3]~168_combout\,
	cout => \inst3|cnt[1][3]~169\);

-- Location: FF_X32_Y16_N7
\inst3|cnt[1][3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \inst3|cnt[1][3]~168_combout\,
	sclr => \inst3|cnt[1][31]~163_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst3|cnt[1][3]~q\);

-- Location: LCCOMB_X32_Y16_N8
\inst3|cnt[1][4]~170\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|cnt[1][4]~170_combout\ = (\inst3|cnt[1][4]~q\ & (\inst3|cnt[1][3]~169\ $ (GND))) # (!\inst3|cnt[1][4]~q\ & (!\inst3|cnt[1][3]~169\ & VCC))
-- \inst3|cnt[1][4]~171\ = CARRY((\inst3|cnt[1][4]~q\ & !\inst3|cnt[1][3]~169\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst3|cnt[1][4]~q\,
	datad => VCC,
	cin => \inst3|cnt[1][3]~169\,
	combout => \inst3|cnt[1][4]~170_combout\,
	cout => \inst3|cnt[1][4]~171\);

-- Location: FF_X32_Y16_N9
\inst3|cnt[1][4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \inst3|cnt[1][4]~170_combout\,
	sclr => \inst3|cnt[1][31]~163_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst3|cnt[1][4]~q\);

-- Location: LCCOMB_X32_Y16_N10
\inst3|cnt[1][5]~172\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|cnt[1][5]~172_combout\ = (\inst3|cnt[1][5]~q\ & (!\inst3|cnt[1][4]~171\)) # (!\inst3|cnt[1][5]~q\ & ((\inst3|cnt[1][4]~171\) # (GND)))
-- \inst3|cnt[1][5]~173\ = CARRY((!\inst3|cnt[1][4]~171\) # (!\inst3|cnt[1][5]~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|cnt[1][5]~q\,
	datad => VCC,
	cin => \inst3|cnt[1][4]~171\,
	combout => \inst3|cnt[1][5]~172_combout\,
	cout => \inst3|cnt[1][5]~173\);

-- Location: FF_X32_Y16_N11
\inst3|cnt[1][5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \inst3|cnt[1][5]~172_combout\,
	sclr => \inst3|cnt[1][31]~163_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst3|cnt[1][5]~q\);

-- Location: LCCOMB_X32_Y16_N12
\inst3|cnt[1][6]~174\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|cnt[1][6]~174_combout\ = (\inst3|cnt[1][6]~q\ & (\inst3|cnt[1][5]~173\ $ (GND))) # (!\inst3|cnt[1][6]~q\ & (!\inst3|cnt[1][5]~173\ & VCC))
-- \inst3|cnt[1][6]~175\ = CARRY((\inst3|cnt[1][6]~q\ & !\inst3|cnt[1][5]~173\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|cnt[1][6]~q\,
	datad => VCC,
	cin => \inst3|cnt[1][5]~173\,
	combout => \inst3|cnt[1][6]~174_combout\,
	cout => \inst3|cnt[1][6]~175\);

-- Location: FF_X32_Y16_N13
\inst3|cnt[1][6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \inst3|cnt[1][6]~174_combout\,
	sclr => \inst3|cnt[1][31]~163_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst3|cnt[1][6]~q\);

-- Location: LCCOMB_X32_Y16_N14
\inst3|cnt[1][7]~176\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|cnt[1][7]~176_combout\ = (\inst3|cnt[1][7]~q\ & (!\inst3|cnt[1][6]~175\)) # (!\inst3|cnt[1][7]~q\ & ((\inst3|cnt[1][6]~175\) # (GND)))
-- \inst3|cnt[1][7]~177\ = CARRY((!\inst3|cnt[1][6]~175\) # (!\inst3|cnt[1][7]~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst3|cnt[1][7]~q\,
	datad => VCC,
	cin => \inst3|cnt[1][6]~175\,
	combout => \inst3|cnt[1][7]~176_combout\,
	cout => \inst3|cnt[1][7]~177\);

-- Location: FF_X32_Y16_N15
\inst3|cnt[1][7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \inst3|cnt[1][7]~176_combout\,
	sclr => \inst3|cnt[1][31]~163_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst3|cnt[1][7]~q\);

-- Location: LCCOMB_X32_Y16_N16
\inst3|cnt[1][8]~178\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|cnt[1][8]~178_combout\ = (\inst3|cnt[1][8]~q\ & (\inst3|cnt[1][7]~177\ $ (GND))) # (!\inst3|cnt[1][8]~q\ & (!\inst3|cnt[1][7]~177\ & VCC))
-- \inst3|cnt[1][8]~179\ = CARRY((\inst3|cnt[1][8]~q\ & !\inst3|cnt[1][7]~177\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst3|cnt[1][8]~q\,
	datad => VCC,
	cin => \inst3|cnt[1][7]~177\,
	combout => \inst3|cnt[1][8]~178_combout\,
	cout => \inst3|cnt[1][8]~179\);

-- Location: FF_X32_Y16_N17
\inst3|cnt[1][8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \inst3|cnt[1][8]~178_combout\,
	sclr => \inst3|cnt[1][31]~163_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst3|cnt[1][8]~q\);

-- Location: LCCOMB_X32_Y16_N18
\inst3|cnt[1][9]~180\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|cnt[1][9]~180_combout\ = (\inst3|cnt[1][9]~q\ & (!\inst3|cnt[1][8]~179\)) # (!\inst3|cnt[1][9]~q\ & ((\inst3|cnt[1][8]~179\) # (GND)))
-- \inst3|cnt[1][9]~181\ = CARRY((!\inst3|cnt[1][8]~179\) # (!\inst3|cnt[1][9]~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst3|cnt[1][9]~q\,
	datad => VCC,
	cin => \inst3|cnt[1][8]~179\,
	combout => \inst3|cnt[1][9]~180_combout\,
	cout => \inst3|cnt[1][9]~181\);

-- Location: FF_X32_Y16_N19
\inst3|cnt[1][9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \inst3|cnt[1][9]~180_combout\,
	sclr => \inst3|cnt[1][31]~163_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst3|cnt[1][9]~q\);

-- Location: LCCOMB_X32_Y16_N20
\inst3|cnt[1][10]~182\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|cnt[1][10]~182_combout\ = (\inst3|cnt[1][10]~q\ & (\inst3|cnt[1][9]~181\ $ (GND))) # (!\inst3|cnt[1][10]~q\ & (!\inst3|cnt[1][9]~181\ & VCC))
-- \inst3|cnt[1][10]~183\ = CARRY((\inst3|cnt[1][10]~q\ & !\inst3|cnt[1][9]~181\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst3|cnt[1][10]~q\,
	datad => VCC,
	cin => \inst3|cnt[1][9]~181\,
	combout => \inst3|cnt[1][10]~182_combout\,
	cout => \inst3|cnt[1][10]~183\);

-- Location: FF_X32_Y16_N21
\inst3|cnt[1][10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \inst3|cnt[1][10]~182_combout\,
	sclr => \inst3|cnt[1][31]~163_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst3|cnt[1][10]~q\);

-- Location: LCCOMB_X32_Y16_N22
\inst3|cnt[1][11]~184\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|cnt[1][11]~184_combout\ = (\inst3|cnt[1][11]~q\ & (!\inst3|cnt[1][10]~183\)) # (!\inst3|cnt[1][11]~q\ & ((\inst3|cnt[1][10]~183\) # (GND)))
-- \inst3|cnt[1][11]~185\ = CARRY((!\inst3|cnt[1][10]~183\) # (!\inst3|cnt[1][11]~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|cnt[1][11]~q\,
	datad => VCC,
	cin => \inst3|cnt[1][10]~183\,
	combout => \inst3|cnt[1][11]~184_combout\,
	cout => \inst3|cnt[1][11]~185\);

-- Location: FF_X32_Y16_N23
\inst3|cnt[1][11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \inst3|cnt[1][11]~184_combout\,
	sclr => \inst3|cnt[1][31]~163_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst3|cnt[1][11]~q\);

-- Location: LCCOMB_X33_Y16_N22
\inst3|Equal3~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|Equal3~3_combout\ = (\inst3|cnt[1][10]~q\) # ((\inst3|cnt[1][11]~q\) # ((\inst3|cnt[1][8]~q\) # (!\inst3|cnt[1][9]~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|cnt[1][10]~q\,
	datab => \inst3|cnt[1][11]~q\,
	datac => \inst3|cnt[1][8]~q\,
	datad => \inst3|cnt[1][9]~q\,
	combout => \inst3|Equal3~3_combout\);

-- Location: LCCOMB_X32_Y16_N24
\inst3|cnt[1][12]~186\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|cnt[1][12]~186_combout\ = (\inst3|cnt[1][12]~q\ & (\inst3|cnt[1][11]~185\ $ (GND))) # (!\inst3|cnt[1][12]~q\ & (!\inst3|cnt[1][11]~185\ & VCC))
-- \inst3|cnt[1][12]~187\ = CARRY((\inst3|cnt[1][12]~q\ & !\inst3|cnt[1][11]~185\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst3|cnt[1][12]~q\,
	datad => VCC,
	cin => \inst3|cnt[1][11]~185\,
	combout => \inst3|cnt[1][12]~186_combout\,
	cout => \inst3|cnt[1][12]~187\);

-- Location: FF_X32_Y16_N25
\inst3|cnt[1][12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \inst3|cnt[1][12]~186_combout\,
	sclr => \inst3|cnt[1][31]~163_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst3|cnt[1][12]~q\);

-- Location: LCCOMB_X32_Y16_N26
\inst3|cnt[1][13]~188\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|cnt[1][13]~188_combout\ = (\inst3|cnt[1][13]~q\ & (!\inst3|cnt[1][12]~187\)) # (!\inst3|cnt[1][13]~q\ & ((\inst3|cnt[1][12]~187\) # (GND)))
-- \inst3|cnt[1][13]~189\ = CARRY((!\inst3|cnt[1][12]~187\) # (!\inst3|cnt[1][13]~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|cnt[1][13]~q\,
	datad => VCC,
	cin => \inst3|cnt[1][12]~187\,
	combout => \inst3|cnt[1][13]~188_combout\,
	cout => \inst3|cnt[1][13]~189\);

-- Location: FF_X32_Y16_N27
\inst3|cnt[1][13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \inst3|cnt[1][13]~188_combout\,
	sclr => \inst3|cnt[1][31]~163_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst3|cnt[1][13]~q\);

-- Location: LCCOMB_X32_Y16_N28
\inst3|cnt[1][14]~190\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|cnt[1][14]~190_combout\ = (\inst3|cnt[1][14]~q\ & (\inst3|cnt[1][13]~189\ $ (GND))) # (!\inst3|cnt[1][14]~q\ & (!\inst3|cnt[1][13]~189\ & VCC))
-- \inst3|cnt[1][14]~191\ = CARRY((\inst3|cnt[1][14]~q\ & !\inst3|cnt[1][13]~189\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst3|cnt[1][14]~q\,
	datad => VCC,
	cin => \inst3|cnt[1][13]~189\,
	combout => \inst3|cnt[1][14]~190_combout\,
	cout => \inst3|cnt[1][14]~191\);

-- Location: FF_X32_Y16_N29
\inst3|cnt[1][14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \inst3|cnt[1][14]~190_combout\,
	sclr => \inst3|cnt[1][31]~163_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst3|cnt[1][14]~q\);

-- Location: LCCOMB_X32_Y16_N30
\inst3|cnt[1][15]~192\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|cnt[1][15]~192_combout\ = (\inst3|cnt[1][15]~q\ & (!\inst3|cnt[1][14]~191\)) # (!\inst3|cnt[1][15]~q\ & ((\inst3|cnt[1][14]~191\) # (GND)))
-- \inst3|cnt[1][15]~193\ = CARRY((!\inst3|cnt[1][14]~191\) # (!\inst3|cnt[1][15]~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|cnt[1][15]~q\,
	datad => VCC,
	cin => \inst3|cnt[1][14]~191\,
	combout => \inst3|cnt[1][15]~192_combout\,
	cout => \inst3|cnt[1][15]~193\);

-- Location: FF_X32_Y16_N31
\inst3|cnt[1][15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \inst3|cnt[1][15]~192_combout\,
	sclr => \inst3|cnt[1][31]~163_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst3|cnt[1][15]~q\);

-- Location: LCCOMB_X33_Y16_N20
\inst3|Equal3~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|Equal3~4_combout\ = (\inst3|cnt[1][15]~q\) # (((\inst3|cnt[1][13]~q\) # (\inst3|cnt[1][12]~q\)) # (!\inst3|cnt[1][14]~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|cnt[1][15]~q\,
	datab => \inst3|cnt[1][14]~q\,
	datac => \inst3|cnt[1][13]~q\,
	datad => \inst3|cnt[1][12]~q\,
	combout => \inst3|Equal3~4_combout\);

-- Location: LCCOMB_X32_Y15_N0
\inst3|cnt[1][16]~194\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|cnt[1][16]~194_combout\ = (\inst3|cnt[1][16]~q\ & (\inst3|cnt[1][15]~193\ $ (GND))) # (!\inst3|cnt[1][16]~q\ & (!\inst3|cnt[1][15]~193\ & VCC))
-- \inst3|cnt[1][16]~195\ = CARRY((\inst3|cnt[1][16]~q\ & !\inst3|cnt[1][15]~193\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst3|cnt[1][16]~q\,
	datad => VCC,
	cin => \inst3|cnt[1][15]~193\,
	combout => \inst3|cnt[1][16]~194_combout\,
	cout => \inst3|cnt[1][16]~195\);

-- Location: FF_X32_Y15_N1
\inst3|cnt[1][16]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \inst3|cnt[1][16]~194_combout\,
	sclr => \inst3|cnt[1][31]~163_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst3|cnt[1][16]~q\);

-- Location: LCCOMB_X32_Y15_N2
\inst3|cnt[1][17]~196\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|cnt[1][17]~196_combout\ = (\inst3|cnt[1][17]~q\ & (!\inst3|cnt[1][16]~195\)) # (!\inst3|cnt[1][17]~q\ & ((\inst3|cnt[1][16]~195\) # (GND)))
-- \inst3|cnt[1][17]~197\ = CARRY((!\inst3|cnt[1][16]~195\) # (!\inst3|cnt[1][17]~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst3|cnt[1][17]~q\,
	datad => VCC,
	cin => \inst3|cnt[1][16]~195\,
	combout => \inst3|cnt[1][17]~196_combout\,
	cout => \inst3|cnt[1][17]~197\);

-- Location: FF_X32_Y15_N3
\inst3|cnt[1][17]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \inst3|cnt[1][17]~196_combout\,
	sclr => \inst3|cnt[1][31]~163_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst3|cnt[1][17]~q\);

-- Location: LCCOMB_X32_Y15_N4
\inst3|cnt[1][18]~198\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|cnt[1][18]~198_combout\ = (\inst3|cnt[1][18]~q\ & (\inst3|cnt[1][17]~197\ $ (GND))) # (!\inst3|cnt[1][18]~q\ & (!\inst3|cnt[1][17]~197\ & VCC))
-- \inst3|cnt[1][18]~199\ = CARRY((\inst3|cnt[1][18]~q\ & !\inst3|cnt[1][17]~197\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst3|cnt[1][18]~q\,
	datad => VCC,
	cin => \inst3|cnt[1][17]~197\,
	combout => \inst3|cnt[1][18]~198_combout\,
	cout => \inst3|cnt[1][18]~199\);

-- Location: FF_X32_Y15_N5
\inst3|cnt[1][18]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \inst3|cnt[1][18]~198_combout\,
	sclr => \inst3|cnt[1][31]~163_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst3|cnt[1][18]~q\);

-- Location: LCCOMB_X32_Y15_N6
\inst3|cnt[1][19]~200\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|cnt[1][19]~200_combout\ = (\inst3|cnt[1][19]~q\ & (!\inst3|cnt[1][18]~199\)) # (!\inst3|cnt[1][19]~q\ & ((\inst3|cnt[1][18]~199\) # (GND)))
-- \inst3|cnt[1][19]~201\ = CARRY((!\inst3|cnt[1][18]~199\) # (!\inst3|cnt[1][19]~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|cnt[1][19]~q\,
	datad => VCC,
	cin => \inst3|cnt[1][18]~199\,
	combout => \inst3|cnt[1][19]~200_combout\,
	cout => \inst3|cnt[1][19]~201\);

-- Location: FF_X32_Y15_N7
\inst3|cnt[1][19]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \inst3|cnt[1][19]~200_combout\,
	sclr => \inst3|cnt[1][31]~163_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst3|cnt[1][19]~q\);

-- Location: LCCOMB_X32_Y15_N8
\inst3|cnt[1][20]~202\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|cnt[1][20]~202_combout\ = (\inst3|cnt[1][20]~q\ & (\inst3|cnt[1][19]~201\ $ (GND))) # (!\inst3|cnt[1][20]~q\ & (!\inst3|cnt[1][19]~201\ & VCC))
-- \inst3|cnt[1][20]~203\ = CARRY((\inst3|cnt[1][20]~q\ & !\inst3|cnt[1][19]~201\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst3|cnt[1][20]~q\,
	datad => VCC,
	cin => \inst3|cnt[1][19]~201\,
	combout => \inst3|cnt[1][20]~202_combout\,
	cout => \inst3|cnt[1][20]~203\);

-- Location: FF_X32_Y15_N9
\inst3|cnt[1][20]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \inst3|cnt[1][20]~202_combout\,
	sclr => \inst3|cnt[1][31]~163_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst3|cnt[1][20]~q\);

-- Location: LCCOMB_X32_Y15_N10
\inst3|cnt[1][21]~204\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|cnt[1][21]~204_combout\ = (\inst3|cnt[1][21]~q\ & (!\inst3|cnt[1][20]~203\)) # (!\inst3|cnt[1][21]~q\ & ((\inst3|cnt[1][20]~203\) # (GND)))
-- \inst3|cnt[1][21]~205\ = CARRY((!\inst3|cnt[1][20]~203\) # (!\inst3|cnt[1][21]~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|cnt[1][21]~q\,
	datad => VCC,
	cin => \inst3|cnt[1][20]~203\,
	combout => \inst3|cnt[1][21]~204_combout\,
	cout => \inst3|cnt[1][21]~205\);

-- Location: FF_X32_Y15_N11
\inst3|cnt[1][21]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \inst3|cnt[1][21]~204_combout\,
	sclr => \inst3|cnt[1][31]~163_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst3|cnt[1][21]~q\);

-- Location: LCCOMB_X32_Y15_N12
\inst3|cnt[1][22]~206\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|cnt[1][22]~206_combout\ = (\inst3|cnt[1][22]~q\ & (\inst3|cnt[1][21]~205\ $ (GND))) # (!\inst3|cnt[1][22]~q\ & (!\inst3|cnt[1][21]~205\ & VCC))
-- \inst3|cnt[1][22]~207\ = CARRY((\inst3|cnt[1][22]~q\ & !\inst3|cnt[1][21]~205\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|cnt[1][22]~q\,
	datad => VCC,
	cin => \inst3|cnt[1][21]~205\,
	combout => \inst3|cnt[1][22]~206_combout\,
	cout => \inst3|cnt[1][22]~207\);

-- Location: FF_X32_Y15_N13
\inst3|cnt[1][22]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \inst3|cnt[1][22]~206_combout\,
	sclr => \inst3|cnt[1][31]~163_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst3|cnt[1][22]~q\);

-- Location: LCCOMB_X32_Y15_N14
\inst3|cnt[1][23]~208\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|cnt[1][23]~208_combout\ = (\inst3|cnt[1][23]~q\ & (!\inst3|cnt[1][22]~207\)) # (!\inst3|cnt[1][23]~q\ & ((\inst3|cnt[1][22]~207\) # (GND)))
-- \inst3|cnt[1][23]~209\ = CARRY((!\inst3|cnt[1][22]~207\) # (!\inst3|cnt[1][23]~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst3|cnt[1][23]~q\,
	datad => VCC,
	cin => \inst3|cnt[1][22]~207\,
	combout => \inst3|cnt[1][23]~208_combout\,
	cout => \inst3|cnt[1][23]~209\);

-- Location: FF_X32_Y15_N15
\inst3|cnt[1][23]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \inst3|cnt[1][23]~208_combout\,
	sclr => \inst3|cnt[1][31]~163_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst3|cnt[1][23]~q\);

-- Location: LCCOMB_X32_Y15_N16
\inst3|cnt[1][24]~210\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|cnt[1][24]~210_combout\ = (\inst3|cnt[1][24]~q\ & (\inst3|cnt[1][23]~209\ $ (GND))) # (!\inst3|cnt[1][24]~q\ & (!\inst3|cnt[1][23]~209\ & VCC))
-- \inst3|cnt[1][24]~211\ = CARRY((\inst3|cnt[1][24]~q\ & !\inst3|cnt[1][23]~209\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst3|cnt[1][24]~q\,
	datad => VCC,
	cin => \inst3|cnt[1][23]~209\,
	combout => \inst3|cnt[1][24]~210_combout\,
	cout => \inst3|cnt[1][24]~211\);

-- Location: FF_X32_Y15_N17
\inst3|cnt[1][24]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \inst3|cnt[1][24]~210_combout\,
	sclr => \inst3|cnt[1][31]~163_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst3|cnt[1][24]~q\);

-- Location: LCCOMB_X32_Y15_N18
\inst3|cnt[1][25]~212\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|cnt[1][25]~212_combout\ = (\inst3|cnt[1][25]~q\ & (!\inst3|cnt[1][24]~211\)) # (!\inst3|cnt[1][25]~q\ & ((\inst3|cnt[1][24]~211\) # (GND)))
-- \inst3|cnt[1][25]~213\ = CARRY((!\inst3|cnt[1][24]~211\) # (!\inst3|cnt[1][25]~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst3|cnt[1][25]~q\,
	datad => VCC,
	cin => \inst3|cnt[1][24]~211\,
	combout => \inst3|cnt[1][25]~212_combout\,
	cout => \inst3|cnt[1][25]~213\);

-- Location: FF_X32_Y15_N19
\inst3|cnt[1][25]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \inst3|cnt[1][25]~212_combout\,
	sclr => \inst3|cnt[1][31]~163_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst3|cnt[1][25]~q\);

-- Location: LCCOMB_X32_Y15_N20
\inst3|cnt[1][26]~214\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|cnt[1][26]~214_combout\ = (\inst3|cnt[1][26]~q\ & (\inst3|cnt[1][25]~213\ $ (GND))) # (!\inst3|cnt[1][26]~q\ & (!\inst3|cnt[1][25]~213\ & VCC))
-- \inst3|cnt[1][26]~215\ = CARRY((\inst3|cnt[1][26]~q\ & !\inst3|cnt[1][25]~213\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst3|cnt[1][26]~q\,
	datad => VCC,
	cin => \inst3|cnt[1][25]~213\,
	combout => \inst3|cnt[1][26]~214_combout\,
	cout => \inst3|cnt[1][26]~215\);

-- Location: FF_X32_Y15_N21
\inst3|cnt[1][26]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \inst3|cnt[1][26]~214_combout\,
	sclr => \inst3|cnt[1][31]~163_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst3|cnt[1][26]~q\);

-- Location: LCCOMB_X32_Y15_N22
\inst3|cnt[1][27]~216\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|cnt[1][27]~216_combout\ = (\inst3|cnt[1][27]~q\ & (!\inst3|cnt[1][26]~215\)) # (!\inst3|cnt[1][27]~q\ & ((\inst3|cnt[1][26]~215\) # (GND)))
-- \inst3|cnt[1][27]~217\ = CARRY((!\inst3|cnt[1][26]~215\) # (!\inst3|cnt[1][27]~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|cnt[1][27]~q\,
	datad => VCC,
	cin => \inst3|cnt[1][26]~215\,
	combout => \inst3|cnt[1][27]~216_combout\,
	cout => \inst3|cnt[1][27]~217\);

-- Location: FF_X32_Y15_N23
\inst3|cnt[1][27]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \inst3|cnt[1][27]~216_combout\,
	sclr => \inst3|cnt[1][31]~163_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst3|cnt[1][27]~q\);

-- Location: LCCOMB_X32_Y15_N24
\inst3|cnt[1][28]~218\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|cnt[1][28]~218_combout\ = (\inst3|cnt[1][28]~q\ & (\inst3|cnt[1][27]~217\ $ (GND))) # (!\inst3|cnt[1][28]~q\ & (!\inst3|cnt[1][27]~217\ & VCC))
-- \inst3|cnt[1][28]~219\ = CARRY((\inst3|cnt[1][28]~q\ & !\inst3|cnt[1][27]~217\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst3|cnt[1][28]~q\,
	datad => VCC,
	cin => \inst3|cnt[1][27]~217\,
	combout => \inst3|cnt[1][28]~218_combout\,
	cout => \inst3|cnt[1][28]~219\);

-- Location: FF_X32_Y15_N25
\inst3|cnt[1][28]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \inst3|cnt[1][28]~218_combout\,
	sclr => \inst3|cnt[1][31]~163_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst3|cnt[1][28]~q\);

-- Location: LCCOMB_X32_Y15_N26
\inst3|cnt[1][29]~220\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|cnt[1][29]~220_combout\ = (\inst3|cnt[1][29]~q\ & (!\inst3|cnt[1][28]~219\)) # (!\inst3|cnt[1][29]~q\ & ((\inst3|cnt[1][28]~219\) # (GND)))
-- \inst3|cnt[1][29]~221\ = CARRY((!\inst3|cnt[1][28]~219\) # (!\inst3|cnt[1][29]~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|cnt[1][29]~q\,
	datad => VCC,
	cin => \inst3|cnt[1][28]~219\,
	combout => \inst3|cnt[1][29]~220_combout\,
	cout => \inst3|cnt[1][29]~221\);

-- Location: FF_X32_Y15_N27
\inst3|cnt[1][29]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \inst3|cnt[1][29]~220_combout\,
	sclr => \inst3|cnt[1][31]~163_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst3|cnt[1][29]~q\);

-- Location: LCCOMB_X32_Y15_N28
\inst3|cnt[1][30]~222\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|cnt[1][30]~222_combout\ = (\inst3|cnt[1][30]~q\ & (\inst3|cnt[1][29]~221\ $ (GND))) # (!\inst3|cnt[1][30]~q\ & (!\inst3|cnt[1][29]~221\ & VCC))
-- \inst3|cnt[1][30]~223\ = CARRY((\inst3|cnt[1][30]~q\ & !\inst3|cnt[1][29]~221\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst3|cnt[1][30]~q\,
	datad => VCC,
	cin => \inst3|cnt[1][29]~221\,
	combout => \inst3|cnt[1][30]~222_combout\,
	cout => \inst3|cnt[1][30]~223\);

-- Location: FF_X32_Y15_N29
\inst3|cnt[1][30]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \inst3|cnt[1][30]~222_combout\,
	sclr => \inst3|cnt[1][31]~163_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst3|cnt[1][30]~q\);

-- Location: LCCOMB_X32_Y15_N30
\inst3|cnt[1][31]~224\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|cnt[1][31]~224_combout\ = \inst3|cnt[1][31]~q\ $ (\inst3|cnt[1][30]~223\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|cnt[1][31]~q\,
	cin => \inst3|cnt[1][30]~223\,
	combout => \inst3|cnt[1][31]~224_combout\);

-- Location: FF_X32_Y15_N31
\inst3|cnt[1][31]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \inst3|cnt[1][31]~224_combout\,
	sclr => \inst3|cnt[1][31]~163_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst3|cnt[1][31]~q\);

-- Location: LCCOMB_X33_Y15_N10
\inst3|Equal3~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|Equal3~8_combout\ = (\inst3|cnt[1][31]~q\) # ((\inst3|cnt[1][30]~q\) # ((\inst3|cnt[1][29]~q\) # (\inst3|cnt[1][28]~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|cnt[1][31]~q\,
	datab => \inst3|cnt[1][30]~q\,
	datac => \inst3|cnt[1][29]~q\,
	datad => \inst3|cnt[1][28]~q\,
	combout => \inst3|Equal3~8_combout\);

-- Location: LCCOMB_X33_Y15_N18
\inst3|Equal3~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|Equal3~6_combout\ = (\inst3|cnt[1][22]~q\) # ((\inst3|cnt[1][23]~q\) # ((\inst3|cnt[1][21]~q\) # (\inst3|cnt[1][20]~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|cnt[1][22]~q\,
	datab => \inst3|cnt[1][23]~q\,
	datac => \inst3|cnt[1][21]~q\,
	datad => \inst3|cnt[1][20]~q\,
	combout => \inst3|Equal3~6_combout\);

-- Location: LCCOMB_X33_Y15_N8
\inst3|Equal3~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|Equal3~7_combout\ = (\inst3|cnt[1][26]~q\) # ((\inst3|cnt[1][27]~q\) # ((\inst3|cnt[1][24]~q\) # (\inst3|cnt[1][25]~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|cnt[1][26]~q\,
	datab => \inst3|cnt[1][27]~q\,
	datac => \inst3|cnt[1][24]~q\,
	datad => \inst3|cnt[1][25]~q\,
	combout => \inst3|Equal3~7_combout\);

-- Location: LCCOMB_X33_Y15_N12
\inst3|Equal3~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|Equal3~5_combout\ = (((!\inst3|cnt[1][17]~q\) # (!\inst3|cnt[1][18]~q\)) # (!\inst3|cnt[1][19]~q\)) # (!\inst3|cnt[1][16]~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|cnt[1][16]~q\,
	datab => \inst3|cnt[1][19]~q\,
	datac => \inst3|cnt[1][18]~q\,
	datad => \inst3|cnt[1][17]~q\,
	combout => \inst3|Equal3~5_combout\);

-- Location: LCCOMB_X33_Y15_N0
\inst3|Equal3~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|Equal3~9_combout\ = (\inst3|Equal3~8_combout\) # ((\inst3|Equal3~6_combout\) # ((\inst3|Equal3~7_combout\) # (\inst3|Equal3~5_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|Equal3~8_combout\,
	datab => \inst3|Equal3~6_combout\,
	datac => \inst3|Equal3~7_combout\,
	datad => \inst3|Equal3~5_combout\,
	combout => \inst3|Equal3~9_combout\);

-- Location: LCCOMB_X33_Y16_N26
\inst3|Equal3~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|Equal3~1_combout\ = (\inst3|cnt[1][6]~q\) # (((\inst3|cnt[1][7]~q\) # (!\inst3|cnt[1][4]~q\)) # (!\inst3|cnt[1][5]~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|cnt[1][6]~q\,
	datab => \inst3|cnt[1][5]~q\,
	datac => \inst3|cnt[1][7]~q\,
	datad => \inst3|cnt[1][4]~q\,
	combout => \inst3|Equal3~1_combout\);

-- Location: LCCOMB_X33_Y16_N16
\inst3|Equal3~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|Equal3~0_combout\ = (!\inst3|cnt[1][1]~q\) # (!\inst3|cnt[1][0]~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst3|cnt[1][0]~q\,
	datad => \inst3|cnt[1][1]~q\,
	combout => \inst3|Equal3~0_combout\);

-- Location: LCCOMB_X33_Y16_N28
\inst3|Equal3~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|Equal3~2_combout\ = (\inst3|Equal3~1_combout\) # (((\inst3|Equal3~0_combout\) # (!\inst3|cnt[1][2]~q\)) # (!\inst3|cnt[1][3]~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|Equal3~1_combout\,
	datab => \inst3|cnt[1][3]~q\,
	datac => \inst3|cnt[1][2]~q\,
	datad => \inst3|Equal3~0_combout\,
	combout => \inst3|Equal3~2_combout\);

-- Location: LCCOMB_X33_Y16_N30
\inst3|Equal3~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|Equal3~10_combout\ = (\inst3|Equal3~3_combout\) # ((\inst3|Equal3~4_combout\) # ((\inst3|Equal3~9_combout\) # (\inst3|Equal3~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|Equal3~3_combout\,
	datab => \inst3|Equal3~4_combout\,
	datac => \inst3|Equal3~9_combout\,
	datad => \inst3|Equal3~2_combout\,
	combout => \inst3|Equal3~10_combout\);

-- Location: LCCOMB_X33_Y16_N24
\inst3|stable[1]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|stable[1]~1_combout\ = (\inst3|Equal3~10_combout\ & (\inst3|stable\(1))) # (!\inst3|Equal3~10_combout\ & ((\inst3|s1\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|Equal3~10_combout\,
	datac => \inst3|stable\(1),
	datad => \inst3|s1\(1),
	combout => \inst3|stable[1]~1_combout\);

-- Location: FF_X33_Y16_N25
\inst3|stable[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \inst3|stable[1]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst3|stable\(1));

-- Location: LCCOMB_X28_Y16_N16
\inst7|play_d1~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst7|play_d1~0_combout\ = !\inst3|stable\(1)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst3|stable\(1),
	combout => \inst7|play_d1~0_combout\);

-- Location: FF_X28_Y16_N17
\inst7|play_d1\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \inst7|play_d1~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst7|play_d1~q\);

-- Location: LCCOMB_X28_Y16_N22
\inst7|play_d2~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst7|play_d2~feeder_combout\ = \inst7|play_d1~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst7|play_d1~q\,
	combout => \inst7|play_d2~feeder_combout\);

-- Location: FF_X28_Y16_N23
\inst7|play_d2\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \inst7|play_d2~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst7|play_d2~q\);

-- Location: LCCOMB_X28_Y16_N20
\inst7|play_rise~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst7|play_rise~0_combout\ = (!\inst7|play_d2~q\ & \inst7|play_d1~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst7|play_d2~q\,
	datad => \inst7|play_d1~q\,
	combout => \inst7|play_rise~0_combout\);

-- Location: FF_X28_Y16_N21
\inst7|play_rise\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \inst7|play_rise~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst7|play_rise~q\);

-- Location: IOIBUF_X34_Y12_N15
\key[2]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_key(2),
	o => \key[2]~input_o\);

-- Location: LCCOMB_X30_Y14_N4
\inst3|s0[2]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|s0[2]~feeder_combout\ = \key[2]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \key[2]~input_o\,
	combout => \inst3|s0[2]~feeder_combout\);

-- Location: FF_X30_Y14_N5
\inst3|s0[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \inst3|s0[2]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst3|s0\(2));

-- Location: FF_X30_Y14_N15
\inst3|s1[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	asdata => \inst3|s0\(2),
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst3|s1\(2));

-- Location: LCCOMB_X29_Y15_N0
\inst3|cnt[2][0]~226\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|cnt[2][0]~226_combout\ = \inst3|cnt[2][0]~q\ $ (VCC)
-- \inst3|cnt[2][0]~227\ = CARRY(\inst3|cnt[2][0]~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst3|cnt[2][0]~q\,
	datad => VCC,
	combout => \inst3|cnt[2][0]~226_combout\,
	cout => \inst3|cnt[2][0]~227\);

-- Location: LCCOMB_X30_Y14_N14
\inst3|cnt[2][2]~228\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|cnt[2][2]~228_combout\ = (\inst3|stable\(2) $ (!\inst3|s1\(2))) # (!\inst3|Equal2~10_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|stable\(2),
	datac => \inst3|s1\(2),
	datad => \inst3|Equal2~10_combout\,
	combout => \inst3|cnt[2][2]~228_combout\);

-- Location: FF_X29_Y15_N1
\inst3|cnt[2][0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \inst3|cnt[2][0]~226_combout\,
	sclr => \inst3|cnt[2][2]~228_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst3|cnt[2][0]~q\);

-- Location: LCCOMB_X29_Y15_N2
\inst3|cnt[2][1]~229\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|cnt[2][1]~229_combout\ = (\inst3|cnt[2][1]~q\ & (!\inst3|cnt[2][0]~227\)) # (!\inst3|cnt[2][1]~q\ & ((\inst3|cnt[2][0]~227\) # (GND)))
-- \inst3|cnt[2][1]~230\ = CARRY((!\inst3|cnt[2][0]~227\) # (!\inst3|cnt[2][1]~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst3|cnt[2][1]~q\,
	datad => VCC,
	cin => \inst3|cnt[2][0]~227\,
	combout => \inst3|cnt[2][1]~229_combout\,
	cout => \inst3|cnt[2][1]~230\);

-- Location: FF_X29_Y15_N3
\inst3|cnt[2][1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \inst3|cnt[2][1]~229_combout\,
	sclr => \inst3|cnt[2][2]~228_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst3|cnt[2][1]~q\);

-- Location: LCCOMB_X29_Y15_N4
\inst3|cnt[2][2]~231\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|cnt[2][2]~231_combout\ = (\inst3|cnt[2][2]~q\ & (\inst3|cnt[2][1]~230\ $ (GND))) # (!\inst3|cnt[2][2]~q\ & (!\inst3|cnt[2][1]~230\ & VCC))
-- \inst3|cnt[2][2]~232\ = CARRY((\inst3|cnt[2][2]~q\ & !\inst3|cnt[2][1]~230\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst3|cnt[2][2]~q\,
	datad => VCC,
	cin => \inst3|cnt[2][1]~230\,
	combout => \inst3|cnt[2][2]~231_combout\,
	cout => \inst3|cnt[2][2]~232\);

-- Location: FF_X29_Y15_N5
\inst3|cnt[2][2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \inst3|cnt[2][2]~231_combout\,
	sclr => \inst3|cnt[2][2]~228_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst3|cnt[2][2]~q\);

-- Location: LCCOMB_X29_Y15_N6
\inst3|cnt[2][3]~233\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|cnt[2][3]~233_combout\ = (\inst3|cnt[2][3]~q\ & (!\inst3|cnt[2][2]~232\)) # (!\inst3|cnt[2][3]~q\ & ((\inst3|cnt[2][2]~232\) # (GND)))
-- \inst3|cnt[2][3]~234\ = CARRY((!\inst3|cnt[2][2]~232\) # (!\inst3|cnt[2][3]~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|cnt[2][3]~q\,
	datad => VCC,
	cin => \inst3|cnt[2][2]~232\,
	combout => \inst3|cnt[2][3]~233_combout\,
	cout => \inst3|cnt[2][3]~234\);

-- Location: FF_X29_Y15_N7
\inst3|cnt[2][3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \inst3|cnt[2][3]~233_combout\,
	sclr => \inst3|cnt[2][2]~228_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst3|cnt[2][3]~q\);

-- Location: LCCOMB_X29_Y15_N8
\inst3|cnt[2][4]~235\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|cnt[2][4]~235_combout\ = (\inst3|cnt[2][4]~q\ & (\inst3|cnt[2][3]~234\ $ (GND))) # (!\inst3|cnt[2][4]~q\ & (!\inst3|cnt[2][3]~234\ & VCC))
-- \inst3|cnt[2][4]~236\ = CARRY((\inst3|cnt[2][4]~q\ & !\inst3|cnt[2][3]~234\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst3|cnt[2][4]~q\,
	datad => VCC,
	cin => \inst3|cnt[2][3]~234\,
	combout => \inst3|cnt[2][4]~235_combout\,
	cout => \inst3|cnt[2][4]~236\);

-- Location: FF_X29_Y15_N9
\inst3|cnt[2][4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \inst3|cnt[2][4]~235_combout\,
	sclr => \inst3|cnt[2][2]~228_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst3|cnt[2][4]~q\);

-- Location: LCCOMB_X29_Y15_N10
\inst3|cnt[2][5]~237\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|cnt[2][5]~237_combout\ = (\inst3|cnt[2][5]~q\ & (!\inst3|cnt[2][4]~236\)) # (!\inst3|cnt[2][5]~q\ & ((\inst3|cnt[2][4]~236\) # (GND)))
-- \inst3|cnt[2][5]~238\ = CARRY((!\inst3|cnt[2][4]~236\) # (!\inst3|cnt[2][5]~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|cnt[2][5]~q\,
	datad => VCC,
	cin => \inst3|cnt[2][4]~236\,
	combout => \inst3|cnt[2][5]~237_combout\,
	cout => \inst3|cnt[2][5]~238\);

-- Location: FF_X29_Y15_N11
\inst3|cnt[2][5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \inst3|cnt[2][5]~237_combout\,
	sclr => \inst3|cnt[2][2]~228_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst3|cnt[2][5]~q\);

-- Location: LCCOMB_X29_Y15_N12
\inst3|cnt[2][6]~239\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|cnt[2][6]~239_combout\ = (\inst3|cnt[2][6]~q\ & (\inst3|cnt[2][5]~238\ $ (GND))) # (!\inst3|cnt[2][6]~q\ & (!\inst3|cnt[2][5]~238\ & VCC))
-- \inst3|cnt[2][6]~240\ = CARRY((\inst3|cnt[2][6]~q\ & !\inst3|cnt[2][5]~238\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|cnt[2][6]~q\,
	datad => VCC,
	cin => \inst3|cnt[2][5]~238\,
	combout => \inst3|cnt[2][6]~239_combout\,
	cout => \inst3|cnt[2][6]~240\);

-- Location: FF_X29_Y15_N13
\inst3|cnt[2][6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \inst3|cnt[2][6]~239_combout\,
	sclr => \inst3|cnt[2][2]~228_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst3|cnt[2][6]~q\);

-- Location: LCCOMB_X29_Y15_N14
\inst3|cnt[2][7]~241\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|cnt[2][7]~241_combout\ = (\inst3|cnt[2][7]~q\ & (!\inst3|cnt[2][6]~240\)) # (!\inst3|cnt[2][7]~q\ & ((\inst3|cnt[2][6]~240\) # (GND)))
-- \inst3|cnt[2][7]~242\ = CARRY((!\inst3|cnt[2][6]~240\) # (!\inst3|cnt[2][7]~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst3|cnt[2][7]~q\,
	datad => VCC,
	cin => \inst3|cnt[2][6]~240\,
	combout => \inst3|cnt[2][7]~241_combout\,
	cout => \inst3|cnt[2][7]~242\);

-- Location: FF_X29_Y15_N15
\inst3|cnt[2][7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \inst3|cnt[2][7]~241_combout\,
	sclr => \inst3|cnt[2][2]~228_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst3|cnt[2][7]~q\);

-- Location: LCCOMB_X30_Y15_N10
\inst3|Equal2~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|Equal2~1_combout\ = ((\inst3|cnt[2][6]~q\) # ((\inst3|cnt[2][7]~q\) # (!\inst3|cnt[2][4]~q\))) # (!\inst3|cnt[2][5]~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|cnt[2][5]~q\,
	datab => \inst3|cnt[2][6]~q\,
	datac => \inst3|cnt[2][7]~q\,
	datad => \inst3|cnt[2][4]~q\,
	combout => \inst3|Equal2~1_combout\);

-- Location: LCCOMB_X30_Y15_N28
\inst3|Equal2~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|Equal2~0_combout\ = (((!\inst3|cnt[2][1]~q\) # (!\inst3|cnt[2][2]~q\)) # (!\inst3|cnt[2][3]~q\)) # (!\inst3|cnt[2][0]~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|cnt[2][0]~q\,
	datab => \inst3|cnt[2][3]~q\,
	datac => \inst3|cnt[2][2]~q\,
	datad => \inst3|cnt[2][1]~q\,
	combout => \inst3|Equal2~0_combout\);

-- Location: LCCOMB_X29_Y15_N16
\inst3|cnt[2][8]~243\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|cnt[2][8]~243_combout\ = (\inst3|cnt[2][8]~q\ & (\inst3|cnt[2][7]~242\ $ (GND))) # (!\inst3|cnt[2][8]~q\ & (!\inst3|cnt[2][7]~242\ & VCC))
-- \inst3|cnt[2][8]~244\ = CARRY((\inst3|cnt[2][8]~q\ & !\inst3|cnt[2][7]~242\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst3|cnt[2][8]~q\,
	datad => VCC,
	cin => \inst3|cnt[2][7]~242\,
	combout => \inst3|cnt[2][8]~243_combout\,
	cout => \inst3|cnt[2][8]~244\);

-- Location: FF_X29_Y15_N17
\inst3|cnt[2][8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \inst3|cnt[2][8]~243_combout\,
	sclr => \inst3|cnt[2][2]~228_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst3|cnt[2][8]~q\);

-- Location: LCCOMB_X29_Y15_N18
\inst3|cnt[2][9]~245\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|cnt[2][9]~245_combout\ = (\inst3|cnt[2][9]~q\ & (!\inst3|cnt[2][8]~244\)) # (!\inst3|cnt[2][9]~q\ & ((\inst3|cnt[2][8]~244\) # (GND)))
-- \inst3|cnt[2][9]~246\ = CARRY((!\inst3|cnt[2][8]~244\) # (!\inst3|cnt[2][9]~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst3|cnt[2][9]~q\,
	datad => VCC,
	cin => \inst3|cnt[2][8]~244\,
	combout => \inst3|cnt[2][9]~245_combout\,
	cout => \inst3|cnt[2][9]~246\);

-- Location: FF_X29_Y15_N19
\inst3|cnt[2][9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \inst3|cnt[2][9]~245_combout\,
	sclr => \inst3|cnt[2][2]~228_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst3|cnt[2][9]~q\);

-- Location: LCCOMB_X29_Y15_N20
\inst3|cnt[2][10]~247\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|cnt[2][10]~247_combout\ = (\inst3|cnt[2][10]~q\ & (\inst3|cnt[2][9]~246\ $ (GND))) # (!\inst3|cnt[2][10]~q\ & (!\inst3|cnt[2][9]~246\ & VCC))
-- \inst3|cnt[2][10]~248\ = CARRY((\inst3|cnt[2][10]~q\ & !\inst3|cnt[2][9]~246\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst3|cnt[2][10]~q\,
	datad => VCC,
	cin => \inst3|cnt[2][9]~246\,
	combout => \inst3|cnt[2][10]~247_combout\,
	cout => \inst3|cnt[2][10]~248\);

-- Location: FF_X29_Y15_N21
\inst3|cnt[2][10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \inst3|cnt[2][10]~247_combout\,
	sclr => \inst3|cnt[2][2]~228_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst3|cnt[2][10]~q\);

-- Location: LCCOMB_X29_Y15_N22
\inst3|cnt[2][11]~249\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|cnt[2][11]~249_combout\ = (\inst3|cnt[2][11]~q\ & (!\inst3|cnt[2][10]~248\)) # (!\inst3|cnt[2][11]~q\ & ((\inst3|cnt[2][10]~248\) # (GND)))
-- \inst3|cnt[2][11]~250\ = CARRY((!\inst3|cnt[2][10]~248\) # (!\inst3|cnt[2][11]~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|cnt[2][11]~q\,
	datad => VCC,
	cin => \inst3|cnt[2][10]~248\,
	combout => \inst3|cnt[2][11]~249_combout\,
	cout => \inst3|cnt[2][11]~250\);

-- Location: FF_X29_Y15_N23
\inst3|cnt[2][11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \inst3|cnt[2][11]~249_combout\,
	sclr => \inst3|cnt[2][2]~228_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst3|cnt[2][11]~q\);

-- Location: LCCOMB_X29_Y15_N24
\inst3|cnt[2][12]~251\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|cnt[2][12]~251_combout\ = (\inst3|cnt[2][12]~q\ & (\inst3|cnt[2][11]~250\ $ (GND))) # (!\inst3|cnt[2][12]~q\ & (!\inst3|cnt[2][11]~250\ & VCC))
-- \inst3|cnt[2][12]~252\ = CARRY((\inst3|cnt[2][12]~q\ & !\inst3|cnt[2][11]~250\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst3|cnt[2][12]~q\,
	datad => VCC,
	cin => \inst3|cnt[2][11]~250\,
	combout => \inst3|cnt[2][12]~251_combout\,
	cout => \inst3|cnt[2][12]~252\);

-- Location: FF_X29_Y15_N25
\inst3|cnt[2][12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \inst3|cnt[2][12]~251_combout\,
	sclr => \inst3|cnt[2][2]~228_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst3|cnt[2][12]~q\);

-- Location: LCCOMB_X29_Y15_N26
\inst3|cnt[2][13]~253\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|cnt[2][13]~253_combout\ = (\inst3|cnt[2][13]~q\ & (!\inst3|cnt[2][12]~252\)) # (!\inst3|cnt[2][13]~q\ & ((\inst3|cnt[2][12]~252\) # (GND)))
-- \inst3|cnt[2][13]~254\ = CARRY((!\inst3|cnt[2][12]~252\) # (!\inst3|cnt[2][13]~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|cnt[2][13]~q\,
	datad => VCC,
	cin => \inst3|cnt[2][12]~252\,
	combout => \inst3|cnt[2][13]~253_combout\,
	cout => \inst3|cnt[2][13]~254\);

-- Location: FF_X29_Y15_N27
\inst3|cnt[2][13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \inst3|cnt[2][13]~253_combout\,
	sclr => \inst3|cnt[2][2]~228_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst3|cnt[2][13]~q\);

-- Location: LCCOMB_X29_Y15_N28
\inst3|cnt[2][14]~255\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|cnt[2][14]~255_combout\ = (\inst3|cnt[2][14]~q\ & (\inst3|cnt[2][13]~254\ $ (GND))) # (!\inst3|cnt[2][14]~q\ & (!\inst3|cnt[2][13]~254\ & VCC))
-- \inst3|cnt[2][14]~256\ = CARRY((\inst3|cnt[2][14]~q\ & !\inst3|cnt[2][13]~254\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst3|cnt[2][14]~q\,
	datad => VCC,
	cin => \inst3|cnt[2][13]~254\,
	combout => \inst3|cnt[2][14]~255_combout\,
	cout => \inst3|cnt[2][14]~256\);

-- Location: FF_X29_Y15_N29
\inst3|cnt[2][14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \inst3|cnt[2][14]~255_combout\,
	sclr => \inst3|cnt[2][2]~228_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst3|cnt[2][14]~q\);

-- Location: LCCOMB_X29_Y15_N30
\inst3|cnt[2][15]~257\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|cnt[2][15]~257_combout\ = (\inst3|cnt[2][15]~q\ & (!\inst3|cnt[2][14]~256\)) # (!\inst3|cnt[2][15]~q\ & ((\inst3|cnt[2][14]~256\) # (GND)))
-- \inst3|cnt[2][15]~258\ = CARRY((!\inst3|cnt[2][14]~256\) # (!\inst3|cnt[2][15]~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|cnt[2][15]~q\,
	datad => VCC,
	cin => \inst3|cnt[2][14]~256\,
	combout => \inst3|cnt[2][15]~257_combout\,
	cout => \inst3|cnt[2][15]~258\);

-- Location: FF_X29_Y15_N31
\inst3|cnt[2][15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \inst3|cnt[2][15]~257_combout\,
	sclr => \inst3|cnt[2][2]~228_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst3|cnt[2][15]~q\);

-- Location: LCCOMB_X30_Y15_N30
\inst3|Equal2~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|Equal2~3_combout\ = (\inst3|cnt[2][15]~q\) # (((\inst3|cnt[2][13]~q\) # (\inst3|cnt[2][12]~q\)) # (!\inst3|cnt[2][14]~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|cnt[2][15]~q\,
	datab => \inst3|cnt[2][14]~q\,
	datac => \inst3|cnt[2][13]~q\,
	datad => \inst3|cnt[2][12]~q\,
	combout => \inst3|Equal2~3_combout\);

-- Location: LCCOMB_X30_Y15_N12
\inst3|Equal2~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|Equal2~2_combout\ = (\inst3|cnt[2][11]~q\) # ((\inst3|cnt[2][10]~q\) # ((\inst3|cnt[2][8]~q\) # (!\inst3|cnt[2][9]~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|cnt[2][11]~q\,
	datab => \inst3|cnt[2][10]~q\,
	datac => \inst3|cnt[2][8]~q\,
	datad => \inst3|cnt[2][9]~q\,
	combout => \inst3|Equal2~2_combout\);

-- Location: LCCOMB_X30_Y15_N0
\inst3|Equal2~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|Equal2~4_combout\ = (\inst3|Equal2~1_combout\) # ((\inst3|Equal2~0_combout\) # ((\inst3|Equal2~3_combout\) # (\inst3|Equal2~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|Equal2~1_combout\,
	datab => \inst3|Equal2~0_combout\,
	datac => \inst3|Equal2~3_combout\,
	datad => \inst3|Equal2~2_combout\,
	combout => \inst3|Equal2~4_combout\);

-- Location: LCCOMB_X29_Y14_N0
\inst3|cnt[2][16]~259\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|cnt[2][16]~259_combout\ = (\inst3|cnt[2][16]~q\ & (\inst3|cnt[2][15]~258\ $ (GND))) # (!\inst3|cnt[2][16]~q\ & (!\inst3|cnt[2][15]~258\ & VCC))
-- \inst3|cnt[2][16]~260\ = CARRY((\inst3|cnt[2][16]~q\ & !\inst3|cnt[2][15]~258\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst3|cnt[2][16]~q\,
	datad => VCC,
	cin => \inst3|cnt[2][15]~258\,
	combout => \inst3|cnt[2][16]~259_combout\,
	cout => \inst3|cnt[2][16]~260\);

-- Location: FF_X29_Y14_N1
\inst3|cnt[2][16]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \inst3|cnt[2][16]~259_combout\,
	sclr => \inst3|cnt[2][2]~228_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst3|cnt[2][16]~q\);

-- Location: LCCOMB_X29_Y14_N2
\inst3|cnt[2][17]~261\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|cnt[2][17]~261_combout\ = (\inst3|cnt[2][17]~q\ & (!\inst3|cnt[2][16]~260\)) # (!\inst3|cnt[2][17]~q\ & ((\inst3|cnt[2][16]~260\) # (GND)))
-- \inst3|cnt[2][17]~262\ = CARRY((!\inst3|cnt[2][16]~260\) # (!\inst3|cnt[2][17]~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst3|cnt[2][17]~q\,
	datad => VCC,
	cin => \inst3|cnt[2][16]~260\,
	combout => \inst3|cnt[2][17]~261_combout\,
	cout => \inst3|cnt[2][17]~262\);

-- Location: FF_X29_Y14_N3
\inst3|cnt[2][17]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \inst3|cnt[2][17]~261_combout\,
	sclr => \inst3|cnt[2][2]~228_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst3|cnt[2][17]~q\);

-- Location: LCCOMB_X29_Y14_N4
\inst3|cnt[2][18]~263\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|cnt[2][18]~263_combout\ = (\inst3|cnt[2][18]~q\ & (\inst3|cnt[2][17]~262\ $ (GND))) # (!\inst3|cnt[2][18]~q\ & (!\inst3|cnt[2][17]~262\ & VCC))
-- \inst3|cnt[2][18]~264\ = CARRY((\inst3|cnt[2][18]~q\ & !\inst3|cnt[2][17]~262\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst3|cnt[2][18]~q\,
	datad => VCC,
	cin => \inst3|cnt[2][17]~262\,
	combout => \inst3|cnt[2][18]~263_combout\,
	cout => \inst3|cnt[2][18]~264\);

-- Location: FF_X29_Y14_N5
\inst3|cnt[2][18]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \inst3|cnt[2][18]~263_combout\,
	sclr => \inst3|cnt[2][2]~228_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst3|cnt[2][18]~q\);

-- Location: LCCOMB_X29_Y14_N6
\inst3|cnt[2][19]~265\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|cnt[2][19]~265_combout\ = (\inst3|cnt[2][19]~q\ & (!\inst3|cnt[2][18]~264\)) # (!\inst3|cnt[2][19]~q\ & ((\inst3|cnt[2][18]~264\) # (GND)))
-- \inst3|cnt[2][19]~266\ = CARRY((!\inst3|cnt[2][18]~264\) # (!\inst3|cnt[2][19]~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|cnt[2][19]~q\,
	datad => VCC,
	cin => \inst3|cnt[2][18]~264\,
	combout => \inst3|cnt[2][19]~265_combout\,
	cout => \inst3|cnt[2][19]~266\);

-- Location: FF_X29_Y14_N7
\inst3|cnt[2][19]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \inst3|cnt[2][19]~265_combout\,
	sclr => \inst3|cnt[2][2]~228_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst3|cnt[2][19]~q\);

-- Location: LCCOMB_X30_Y14_N8
\inst3|Equal2~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|Equal2~5_combout\ = (((!\inst3|cnt[2][17]~q\) # (!\inst3|cnt[2][18]~q\)) # (!\inst3|cnt[2][19]~q\)) # (!\inst3|cnt[2][16]~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|cnt[2][16]~q\,
	datab => \inst3|cnt[2][19]~q\,
	datac => \inst3|cnt[2][18]~q\,
	datad => \inst3|cnt[2][17]~q\,
	combout => \inst3|Equal2~5_combout\);

-- Location: LCCOMB_X29_Y14_N8
\inst3|cnt[2][20]~267\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|cnt[2][20]~267_combout\ = (\inst3|cnt[2][20]~q\ & (\inst3|cnt[2][19]~266\ $ (GND))) # (!\inst3|cnt[2][20]~q\ & (!\inst3|cnt[2][19]~266\ & VCC))
-- \inst3|cnt[2][20]~268\ = CARRY((\inst3|cnt[2][20]~q\ & !\inst3|cnt[2][19]~266\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst3|cnt[2][20]~q\,
	datad => VCC,
	cin => \inst3|cnt[2][19]~266\,
	combout => \inst3|cnt[2][20]~267_combout\,
	cout => \inst3|cnt[2][20]~268\);

-- Location: FF_X29_Y14_N9
\inst3|cnt[2][20]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \inst3|cnt[2][20]~267_combout\,
	sclr => \inst3|cnt[2][2]~228_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst3|cnt[2][20]~q\);

-- Location: LCCOMB_X29_Y14_N10
\inst3|cnt[2][21]~269\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|cnt[2][21]~269_combout\ = (\inst3|cnt[2][21]~q\ & (!\inst3|cnt[2][20]~268\)) # (!\inst3|cnt[2][21]~q\ & ((\inst3|cnt[2][20]~268\) # (GND)))
-- \inst3|cnt[2][21]~270\ = CARRY((!\inst3|cnt[2][20]~268\) # (!\inst3|cnt[2][21]~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|cnt[2][21]~q\,
	datad => VCC,
	cin => \inst3|cnt[2][20]~268\,
	combout => \inst3|cnt[2][21]~269_combout\,
	cout => \inst3|cnt[2][21]~270\);

-- Location: FF_X29_Y14_N11
\inst3|cnt[2][21]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \inst3|cnt[2][21]~269_combout\,
	sclr => \inst3|cnt[2][2]~228_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst3|cnt[2][21]~q\);

-- Location: LCCOMB_X29_Y14_N12
\inst3|cnt[2][22]~271\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|cnt[2][22]~271_combout\ = (\inst3|cnt[2][22]~q\ & (\inst3|cnt[2][21]~270\ $ (GND))) # (!\inst3|cnt[2][22]~q\ & (!\inst3|cnt[2][21]~270\ & VCC))
-- \inst3|cnt[2][22]~272\ = CARRY((\inst3|cnt[2][22]~q\ & !\inst3|cnt[2][21]~270\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|cnt[2][22]~q\,
	datad => VCC,
	cin => \inst3|cnt[2][21]~270\,
	combout => \inst3|cnt[2][22]~271_combout\,
	cout => \inst3|cnt[2][22]~272\);

-- Location: FF_X29_Y14_N13
\inst3|cnt[2][22]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \inst3|cnt[2][22]~271_combout\,
	sclr => \inst3|cnt[2][2]~228_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst3|cnt[2][22]~q\);

-- Location: LCCOMB_X29_Y14_N14
\inst3|cnt[2][23]~273\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|cnt[2][23]~273_combout\ = (\inst3|cnt[2][23]~q\ & (!\inst3|cnt[2][22]~272\)) # (!\inst3|cnt[2][23]~q\ & ((\inst3|cnt[2][22]~272\) # (GND)))
-- \inst3|cnt[2][23]~274\ = CARRY((!\inst3|cnt[2][22]~272\) # (!\inst3|cnt[2][23]~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst3|cnt[2][23]~q\,
	datad => VCC,
	cin => \inst3|cnt[2][22]~272\,
	combout => \inst3|cnt[2][23]~273_combout\,
	cout => \inst3|cnt[2][23]~274\);

-- Location: FF_X29_Y14_N15
\inst3|cnt[2][23]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \inst3|cnt[2][23]~273_combout\,
	sclr => \inst3|cnt[2][2]~228_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst3|cnt[2][23]~q\);

-- Location: LCCOMB_X30_Y14_N10
\inst3|Equal2~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|Equal2~6_combout\ = (\inst3|cnt[2][21]~q\) # ((\inst3|cnt[2][22]~q\) # ((\inst3|cnt[2][23]~q\) # (\inst3|cnt[2][20]~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|cnt[2][21]~q\,
	datab => \inst3|cnt[2][22]~q\,
	datac => \inst3|cnt[2][23]~q\,
	datad => \inst3|cnt[2][20]~q\,
	combout => \inst3|Equal2~6_combout\);

-- Location: LCCOMB_X30_Y14_N28
\inst3|Equal2~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|Equal2~7_combout\ = (\inst3|Equal2~5_combout\) # (\inst3|Equal2~6_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst3|Equal2~5_combout\,
	datad => \inst3|Equal2~6_combout\,
	combout => \inst3|Equal2~7_combout\);

-- Location: LCCOMB_X29_Y14_N16
\inst3|cnt[2][24]~275\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|cnt[2][24]~275_combout\ = (\inst3|cnt[2][24]~q\ & (\inst3|cnt[2][23]~274\ $ (GND))) # (!\inst3|cnt[2][24]~q\ & (!\inst3|cnt[2][23]~274\ & VCC))
-- \inst3|cnt[2][24]~276\ = CARRY((\inst3|cnt[2][24]~q\ & !\inst3|cnt[2][23]~274\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst3|cnt[2][24]~q\,
	datad => VCC,
	cin => \inst3|cnt[2][23]~274\,
	combout => \inst3|cnt[2][24]~275_combout\,
	cout => \inst3|cnt[2][24]~276\);

-- Location: FF_X29_Y14_N17
\inst3|cnt[2][24]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \inst3|cnt[2][24]~275_combout\,
	sclr => \inst3|cnt[2][2]~228_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst3|cnt[2][24]~q\);

-- Location: LCCOMB_X29_Y14_N18
\inst3|cnt[2][25]~277\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|cnt[2][25]~277_combout\ = (\inst3|cnt[2][25]~q\ & (!\inst3|cnt[2][24]~276\)) # (!\inst3|cnt[2][25]~q\ & ((\inst3|cnt[2][24]~276\) # (GND)))
-- \inst3|cnt[2][25]~278\ = CARRY((!\inst3|cnt[2][24]~276\) # (!\inst3|cnt[2][25]~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst3|cnt[2][25]~q\,
	datad => VCC,
	cin => \inst3|cnt[2][24]~276\,
	combout => \inst3|cnt[2][25]~277_combout\,
	cout => \inst3|cnt[2][25]~278\);

-- Location: FF_X29_Y14_N19
\inst3|cnt[2][25]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \inst3|cnt[2][25]~277_combout\,
	sclr => \inst3|cnt[2][2]~228_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst3|cnt[2][25]~q\);

-- Location: LCCOMB_X29_Y14_N20
\inst3|cnt[2][26]~279\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|cnt[2][26]~279_combout\ = (\inst3|cnt[2][26]~q\ & (\inst3|cnt[2][25]~278\ $ (GND))) # (!\inst3|cnt[2][26]~q\ & (!\inst3|cnt[2][25]~278\ & VCC))
-- \inst3|cnt[2][26]~280\ = CARRY((\inst3|cnt[2][26]~q\ & !\inst3|cnt[2][25]~278\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst3|cnt[2][26]~q\,
	datad => VCC,
	cin => \inst3|cnt[2][25]~278\,
	combout => \inst3|cnt[2][26]~279_combout\,
	cout => \inst3|cnt[2][26]~280\);

-- Location: FF_X29_Y14_N21
\inst3|cnt[2][26]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \inst3|cnt[2][26]~279_combout\,
	sclr => \inst3|cnt[2][2]~228_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst3|cnt[2][26]~q\);

-- Location: LCCOMB_X29_Y14_N22
\inst3|cnt[2][27]~281\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|cnt[2][27]~281_combout\ = (\inst3|cnt[2][27]~q\ & (!\inst3|cnt[2][26]~280\)) # (!\inst3|cnt[2][27]~q\ & ((\inst3|cnt[2][26]~280\) # (GND)))
-- \inst3|cnt[2][27]~282\ = CARRY((!\inst3|cnt[2][26]~280\) # (!\inst3|cnt[2][27]~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|cnt[2][27]~q\,
	datad => VCC,
	cin => \inst3|cnt[2][26]~280\,
	combout => \inst3|cnt[2][27]~281_combout\,
	cout => \inst3|cnt[2][27]~282\);

-- Location: FF_X29_Y14_N23
\inst3|cnt[2][27]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \inst3|cnt[2][27]~281_combout\,
	sclr => \inst3|cnt[2][2]~228_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst3|cnt[2][27]~q\);

-- Location: LCCOMB_X30_Y14_N22
\inst3|Equal2~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|Equal2~8_combout\ = (\inst3|cnt[2][26]~q\) # ((\inst3|cnt[2][27]~q\) # ((\inst3|cnt[2][24]~q\) # (\inst3|cnt[2][25]~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|cnt[2][26]~q\,
	datab => \inst3|cnt[2][27]~q\,
	datac => \inst3|cnt[2][24]~q\,
	datad => \inst3|cnt[2][25]~q\,
	combout => \inst3|Equal2~8_combout\);

-- Location: LCCOMB_X29_Y14_N24
\inst3|cnt[2][28]~283\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|cnt[2][28]~283_combout\ = (\inst3|cnt[2][28]~q\ & (\inst3|cnt[2][27]~282\ $ (GND))) # (!\inst3|cnt[2][28]~q\ & (!\inst3|cnt[2][27]~282\ & VCC))
-- \inst3|cnt[2][28]~284\ = CARRY((\inst3|cnt[2][28]~q\ & !\inst3|cnt[2][27]~282\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst3|cnt[2][28]~q\,
	datad => VCC,
	cin => \inst3|cnt[2][27]~282\,
	combout => \inst3|cnt[2][28]~283_combout\,
	cout => \inst3|cnt[2][28]~284\);

-- Location: FF_X29_Y14_N25
\inst3|cnt[2][28]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \inst3|cnt[2][28]~283_combout\,
	sclr => \inst3|cnt[2][2]~228_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst3|cnt[2][28]~q\);

-- Location: LCCOMB_X29_Y14_N26
\inst3|cnt[2][29]~285\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|cnt[2][29]~285_combout\ = (\inst3|cnt[2][29]~q\ & (!\inst3|cnt[2][28]~284\)) # (!\inst3|cnt[2][29]~q\ & ((\inst3|cnt[2][28]~284\) # (GND)))
-- \inst3|cnt[2][29]~286\ = CARRY((!\inst3|cnt[2][28]~284\) # (!\inst3|cnt[2][29]~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|cnt[2][29]~q\,
	datad => VCC,
	cin => \inst3|cnt[2][28]~284\,
	combout => \inst3|cnt[2][29]~285_combout\,
	cout => \inst3|cnt[2][29]~286\);

-- Location: FF_X29_Y14_N27
\inst3|cnt[2][29]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \inst3|cnt[2][29]~285_combout\,
	sclr => \inst3|cnt[2][2]~228_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst3|cnt[2][29]~q\);

-- Location: LCCOMB_X29_Y14_N28
\inst3|cnt[2][30]~287\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|cnt[2][30]~287_combout\ = (\inst3|cnt[2][30]~q\ & (\inst3|cnt[2][29]~286\ $ (GND))) # (!\inst3|cnt[2][30]~q\ & (!\inst3|cnt[2][29]~286\ & VCC))
-- \inst3|cnt[2][30]~288\ = CARRY((\inst3|cnt[2][30]~q\ & !\inst3|cnt[2][29]~286\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst3|cnt[2][30]~q\,
	datad => VCC,
	cin => \inst3|cnt[2][29]~286\,
	combout => \inst3|cnt[2][30]~287_combout\,
	cout => \inst3|cnt[2][30]~288\);

-- Location: FF_X29_Y14_N29
\inst3|cnt[2][30]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \inst3|cnt[2][30]~287_combout\,
	sclr => \inst3|cnt[2][2]~228_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst3|cnt[2][30]~q\);

-- Location: LCCOMB_X29_Y14_N30
\inst3|cnt[2][31]~289\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|cnt[2][31]~289_combout\ = \inst3|cnt[2][31]~q\ $ (\inst3|cnt[2][30]~288\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|cnt[2][31]~q\,
	cin => \inst3|cnt[2][30]~288\,
	combout => \inst3|cnt[2][31]~289_combout\);

-- Location: FF_X29_Y14_N31
\inst3|cnt[2][31]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \inst3|cnt[2][31]~289_combout\,
	sclr => \inst3|cnt[2][2]~228_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst3|cnt[2][31]~q\);

-- Location: LCCOMB_X30_Y14_N0
\inst3|Equal2~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|Equal2~9_combout\ = (\inst3|cnt[2][30]~q\) # ((\inst3|cnt[2][31]~q\) # ((\inst3|cnt[2][29]~q\) # (\inst3|cnt[2][28]~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|cnt[2][30]~q\,
	datab => \inst3|cnt[2][31]~q\,
	datac => \inst3|cnt[2][29]~q\,
	datad => \inst3|cnt[2][28]~q\,
	combout => \inst3|Equal2~9_combout\);

-- Location: LCCOMB_X30_Y14_N18
\inst3|Equal2~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|Equal2~10_combout\ = (\inst3|Equal2~4_combout\) # ((\inst3|Equal2~7_combout\) # ((\inst3|Equal2~8_combout\) # (\inst3|Equal2~9_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|Equal2~4_combout\,
	datab => \inst3|Equal2~7_combout\,
	datac => \inst3|Equal2~8_combout\,
	datad => \inst3|Equal2~9_combout\,
	combout => \inst3|Equal2~10_combout\);

-- Location: LCCOMB_X30_Y14_N12
\inst3|stable[2]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|stable[2]~2_combout\ = (\inst3|Equal2~10_combout\ & ((\inst3|stable\(2)))) # (!\inst3|Equal2~10_combout\ & (\inst3|s1\(2)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst3|s1\(2),
	datac => \inst3|stable\(2),
	datad => \inst3|Equal2~10_combout\,
	combout => \inst3|stable[2]~2_combout\);

-- Location: FF_X30_Y14_N13
\inst3|stable[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \inst3|stable[2]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst3|stable\(2));

-- Location: LCCOMB_X28_Y16_N24
\inst7|stop_d1~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst7|stop_d1~0_combout\ = !\inst3|stable\(2)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst3|stable\(2),
	combout => \inst7|stop_d1~0_combout\);

-- Location: FF_X28_Y16_N25
\inst7|stop_d1\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \inst7|stop_d1~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst7|stop_d1~q\);

-- Location: LCCOMB_X28_Y16_N26
\inst7|stop_d2~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst7|stop_d2~feeder_combout\ = \inst7|stop_d1~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst7|stop_d1~q\,
	combout => \inst7|stop_d2~feeder_combout\);

-- Location: FF_X28_Y16_N27
\inst7|stop_d2\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \inst7|stop_d2~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst7|stop_d2~q\);

-- Location: LCCOMB_X28_Y16_N10
\inst7|stop_rise~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst7|stop_rise~0_combout\ = (!\inst7|stop_d2~q\ & \inst7|stop_d1~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst7|stop_d2~q\,
	datad => \inst7|stop_d1~q\,
	combout => \inst7|stop_rise~0_combout\);

-- Location: FF_X28_Y16_N11
\inst7|stop_rise\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \inst7|stop_rise~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst7|stop_rise~q\);

-- Location: LCCOMB_X28_Y16_N6
\inst7|run_en~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst7|run_en~0_combout\ = (!\inst7|u_ctrl|song_end_r~q\ & (!\inst7|stop_rise~q\ & (\inst7|play_rise~q\ $ (\inst7|run_en~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000010100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst7|u_ctrl|song_end_r~q\,
	datab => \inst7|play_rise~q\,
	datac => \inst7|run_en~q\,
	datad => \inst7|stop_rise~q\,
	combout => \inst7|run_en~0_combout\);

-- Location: FF_X28_Y16_N7
\inst7|run_en\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \inst7|run_en~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst7|run_en~q\);

-- Location: LCCOMB_X24_Y13_N8
\inst7|u_ctrl|Disparo~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst7|u_ctrl|Disparo~feeder_combout\ = \inst7|run_en~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst7|run_en~q\,
	combout => \inst7|u_ctrl|Disparo~feeder_combout\);

-- Location: FF_X24_Y13_N9
\inst7|u_ctrl|Disparo\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \inst7|u_ctrl|Disparo~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst7|u_ctrl|Disparo~q\);

-- Location: LCCOMB_X25_Y13_N24
\inst7|u_ctrl|process_0~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst7|u_ctrl|process_0~2_combout\ = (\inst7|u_tmp|Equal0~10_combout\ & \inst7|run_en~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst7|u_tmp|Equal0~10_combout\,
	datad => \inst7|run_en~q\,
	combout => \inst7|u_ctrl|process_0~2_combout\);

-- Location: LCCOMB_X26_Y13_N26
\inst7|u_ctrl|estado_atual~62\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst7|u_ctrl|estado_atual~62_combout\ = (!\inst7|stop_pulse~q\ & ((\inst7|u_ctrl|process_0~2_combout\ & (!\inst7|u_ctrl|estado_atual.s41~q\)) # (!\inst7|u_ctrl|process_0~2_combout\ & ((\inst7|u_ctrl|estado_atual.s0~q\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001110100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst7|u_ctrl|estado_atual.s41~q\,
	datab => \inst7|u_ctrl|process_0~2_combout\,
	datac => \inst7|u_ctrl|estado_atual.s0~q\,
	datad => \inst7|stop_pulse~q\,
	combout => \inst7|u_ctrl|estado_atual~62_combout\);

-- Location: FF_X26_Y13_N27
\inst7|u_ctrl|estado_atual.s0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \inst7|u_ctrl|estado_atual~62_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst7|u_ctrl|estado_atual.s0~q\);

-- Location: LCCOMB_X25_Y16_N30
\inst7|u_ctrl|Temp_out~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst7|u_ctrl|Temp_out~0_combout\ = (\inst7|u_ctrl|estado_atual.s40~q\) # (!\inst7|u_ctrl|estado_atual.s0~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst7|u_ctrl|estado_atual.s40~q\,
	datad => \inst7|u_ctrl|estado_atual.s0~q\,
	combout => \inst7|u_ctrl|Temp_out~0_combout\);

-- Location: FF_X25_Y16_N31
\inst7|u_ctrl|Temp_out[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \inst7|u_ctrl|Temp_out~0_combout\,
	ena => \inst7|run_en~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst7|u_ctrl|Temp_out\(7));

-- Location: LCCOMB_X23_Y12_N0
\inst7|u_tmp|Add0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst7|u_tmp|Add0~0_combout\ = \inst7|u_tmp|cnt\(0) $ (VCC)
-- \inst7|u_tmp|Add0~1\ = CARRY(\inst7|u_tmp|cnt\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst7|u_tmp|cnt\(0),
	datad => VCC,
	combout => \inst7|u_tmp|Add0~0_combout\,
	cout => \inst7|u_tmp|Add0~1\);

-- Location: LCCOMB_X22_Y12_N6
\inst7|u_tmp|Add0~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst7|u_tmp|Add0~5_combout\ = (\inst7|u_tmp|Add0~0_combout\ & !\inst7|u_tmp|Equal0~10_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst7|u_tmp|Add0~0_combout\,
	datad => \inst7|u_tmp|Equal0~10_combout\,
	combout => \inst7|u_tmp|Add0~5_combout\);

-- Location: FF_X22_Y12_N7
\inst7|u_tmp|cnt[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \inst7|u_tmp|Add0~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst7|u_tmp|cnt\(0));

-- Location: LCCOMB_X23_Y12_N2
\inst7|u_tmp|Add0~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst7|u_tmp|Add0~2_combout\ = (\inst7|u_tmp|cnt\(1) & (\inst7|u_tmp|Add0~1\ & VCC)) # (!\inst7|u_tmp|cnt\(1) & (!\inst7|u_tmp|Add0~1\))
-- \inst7|u_tmp|Add0~3\ = CARRY((!\inst7|u_tmp|cnt\(1) & !\inst7|u_tmp|Add0~1\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100000101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst7|u_tmp|cnt\(1),
	datad => VCC,
	cin => \inst7|u_tmp|Add0~1\,
	combout => \inst7|u_tmp|Add0~2_combout\,
	cout => \inst7|u_tmp|Add0~3\);

-- Location: LCCOMB_X22_Y12_N16
\inst7|u_tmp|Add0~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst7|u_tmp|Add0~4_combout\ = (!\inst7|u_tmp|Equal0~10_combout\ & \inst7|u_tmp|Add0~2_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst7|u_tmp|Equal0~10_combout\,
	datad => \inst7|u_tmp|Add0~2_combout\,
	combout => \inst7|u_tmp|Add0~4_combout\);

-- Location: FF_X22_Y12_N17
\inst7|u_tmp|cnt[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \inst7|u_tmp|Add0~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst7|u_tmp|cnt\(1));

-- Location: LCCOMB_X23_Y12_N4
\inst7|u_tmp|Add0~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst7|u_tmp|Add0~6_combout\ = (\inst7|u_tmp|cnt\(2) & ((GND) # (!\inst7|u_tmp|Add0~3\))) # (!\inst7|u_tmp|cnt\(2) & (\inst7|u_tmp|Add0~3\ $ (GND)))
-- \inst7|u_tmp|Add0~7\ = CARRY((\inst7|u_tmp|cnt\(2)) # (!\inst7|u_tmp|Add0~3\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst7|u_tmp|cnt\(2),
	datad => VCC,
	cin => \inst7|u_tmp|Add0~3\,
	combout => \inst7|u_tmp|Add0~6_combout\,
	cout => \inst7|u_tmp|Add0~7\);

-- Location: LCCOMB_X22_Y12_N24
\inst7|u_tmp|Add0~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst7|u_tmp|Add0~8_combout\ = (!\inst7|u_tmp|Equal0~10_combout\ & \inst7|u_tmp|Add0~6_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst7|u_tmp|Equal0~10_combout\,
	datad => \inst7|u_tmp|Add0~6_combout\,
	combout => \inst7|u_tmp|Add0~8_combout\);

-- Location: FF_X22_Y12_N25
\inst7|u_tmp|cnt[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \inst7|u_tmp|Add0~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst7|u_tmp|cnt\(2));

-- Location: LCCOMB_X23_Y12_N6
\inst7|u_tmp|Add0~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst7|u_tmp|Add0~9_combout\ = (\inst7|u_tmp|cnt\(3) & (\inst7|u_tmp|Add0~7\ & VCC)) # (!\inst7|u_tmp|cnt\(3) & (!\inst7|u_tmp|Add0~7\))
-- \inst7|u_tmp|Add0~10\ = CARRY((!\inst7|u_tmp|cnt\(3) & !\inst7|u_tmp|Add0~7\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100000101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst7|u_tmp|cnt\(3),
	datad => VCC,
	cin => \inst7|u_tmp|Add0~7\,
	combout => \inst7|u_tmp|Add0~9_combout\,
	cout => \inst7|u_tmp|Add0~10\);

-- Location: LCCOMB_X22_Y12_N26
\inst7|u_tmp|Add0~11\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst7|u_tmp|Add0~11_combout\ = (!\inst7|u_tmp|Equal0~10_combout\ & \inst7|u_tmp|Add0~9_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst7|u_tmp|Equal0~10_combout\,
	datad => \inst7|u_tmp|Add0~9_combout\,
	combout => \inst7|u_tmp|Add0~11_combout\);

-- Location: FF_X22_Y12_N27
\inst7|u_tmp|cnt[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \inst7|u_tmp|Add0~11_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst7|u_tmp|cnt\(3));

-- Location: LCCOMB_X23_Y12_N8
\inst7|u_tmp|Add0~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst7|u_tmp|Add0~12_combout\ = (\inst7|u_tmp|cnt\(4) & ((GND) # (!\inst7|u_tmp|Add0~10\))) # (!\inst7|u_tmp|cnt\(4) & (\inst7|u_tmp|Add0~10\ $ (GND)))
-- \inst7|u_tmp|Add0~13\ = CARRY((\inst7|u_tmp|cnt\(4)) # (!\inst7|u_tmp|Add0~10\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101010101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst7|u_tmp|cnt\(4),
	datad => VCC,
	cin => \inst7|u_tmp|Add0~10\,
	combout => \inst7|u_tmp|Add0~12_combout\,
	cout => \inst7|u_tmp|Add0~13\);

-- Location: LCCOMB_X24_Y12_N4
\inst7|u_tmp|Add0~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst7|u_tmp|Add0~14_combout\ = (\inst7|u_tmp|Add0~12_combout\ & !\inst7|u_tmp|Equal0~10_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst7|u_tmp|Add0~12_combout\,
	datad => \inst7|u_tmp|Equal0~10_combout\,
	combout => \inst7|u_tmp|Add0~14_combout\);

-- Location: FF_X24_Y12_N5
\inst7|u_tmp|cnt[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \inst7|u_tmp|Add0~14_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst7|u_tmp|cnt\(4));

-- Location: LCCOMB_X23_Y12_N10
\inst7|u_tmp|Add0~15\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst7|u_tmp|Add0~15_combout\ = (\inst7|u_tmp|cnt\(5) & (\inst7|u_tmp|Add0~13\ & VCC)) # (!\inst7|u_tmp|cnt\(5) & (!\inst7|u_tmp|Add0~13\))
-- \inst7|u_tmp|Add0~16\ = CARRY((!\inst7|u_tmp|cnt\(5) & !\inst7|u_tmp|Add0~13\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100000101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst7|u_tmp|cnt\(5),
	datad => VCC,
	cin => \inst7|u_tmp|Add0~13\,
	combout => \inst7|u_tmp|Add0~15_combout\,
	cout => \inst7|u_tmp|Add0~16\);

-- Location: LCCOMB_X26_Y13_N20
\inst7|u_ctrl|estado_atual~83\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst7|u_ctrl|estado_atual~83_combout\ = (!\inst7|u_ctrl|estado_atual.s0~q\ & !\inst7|stop_pulse~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst7|u_ctrl|estado_atual.s0~q\,
	datad => \inst7|stop_pulse~q\,
	combout => \inst7|u_ctrl|estado_atual~83_combout\);

-- Location: FF_X26_Y13_N21
\inst7|u_ctrl|estado_atual.s1\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \inst7|u_ctrl|estado_atual~83_combout\,
	ena => \inst7|u_ctrl|estado_atual~45_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst7|u_ctrl|estado_atual.s1~q\);

-- Location: LCCOMB_X26_Y13_N8
\inst7|u_ctrl|estado_atual~73\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst7|u_ctrl|estado_atual~73_combout\ = (\inst7|u_ctrl|estado_atual.s1~q\ & !\inst7|stop_pulse~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst7|u_ctrl|estado_atual.s1~q\,
	datad => \inst7|stop_pulse~q\,
	combout => \inst7|u_ctrl|estado_atual~73_combout\);

-- Location: FF_X26_Y13_N9
\inst7|u_ctrl|estado_atual.s2\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \inst7|u_ctrl|estado_atual~73_combout\,
	ena => \inst7|u_ctrl|estado_atual~45_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst7|u_ctrl|estado_atual.s2~q\);

-- Location: LCCOMB_X26_Y13_N2
\inst7|u_ctrl|estado_atual~84\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst7|u_ctrl|estado_atual~84_combout\ = (\inst7|u_ctrl|estado_atual.s2~q\ & !\inst7|stop_pulse~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst7|u_ctrl|estado_atual.s2~q\,
	datad => \inst7|stop_pulse~q\,
	combout => \inst7|u_ctrl|estado_atual~84_combout\);

-- Location: FF_X26_Y13_N3
\inst7|u_ctrl|estado_atual.s3\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \inst7|u_ctrl|estado_atual~84_combout\,
	ena => \inst7|u_ctrl|estado_atual~45_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst7|u_ctrl|estado_atual.s3~q\);

-- Location: LCCOMB_X26_Y13_N10
\inst7|u_ctrl|estado_atual~74\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst7|u_ctrl|estado_atual~74_combout\ = (\inst7|u_ctrl|estado_atual.s3~q\ & !\inst7|stop_pulse~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst7|u_ctrl|estado_atual.s3~q\,
	datad => \inst7|stop_pulse~q\,
	combout => \inst7|u_ctrl|estado_atual~74_combout\);

-- Location: FF_X26_Y13_N11
\inst7|u_ctrl|estado_atual.s4\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \inst7|u_ctrl|estado_atual~74_combout\,
	ena => \inst7|u_ctrl|estado_atual~45_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst7|u_ctrl|estado_atual.s4~q\);

-- Location: LCCOMB_X26_Y13_N28
\inst7|u_ctrl|estado_atual~81\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst7|u_ctrl|estado_atual~81_combout\ = (\inst7|u_ctrl|estado_atual.s4~q\ & !\inst7|stop_pulse~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst7|u_ctrl|estado_atual.s4~q\,
	datad => \inst7|stop_pulse~q\,
	combout => \inst7|u_ctrl|estado_atual~81_combout\);

-- Location: FF_X26_Y13_N29
\inst7|u_ctrl|estado_atual.s5\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \inst7|u_ctrl|estado_atual~81_combout\,
	ena => \inst7|u_ctrl|estado_atual~45_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst7|u_ctrl|estado_atual.s5~q\);

-- Location: LCCOMB_X26_Y13_N14
\inst7|u_ctrl|estado_atual~56\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst7|u_ctrl|estado_atual~56_combout\ = (\inst7|u_ctrl|estado_atual.s5~q\ & !\inst7|stop_pulse~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst7|u_ctrl|estado_atual.s5~q\,
	datad => \inst7|stop_pulse~q\,
	combout => \inst7|u_ctrl|estado_atual~56_combout\);

-- Location: FF_X26_Y13_N15
\inst7|u_ctrl|estado_atual.s6\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \inst7|u_ctrl|estado_atual~56_combout\,
	ena => \inst7|u_ctrl|estado_atual~45_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst7|u_ctrl|estado_atual.s6~q\);

-- Location: LCCOMB_X26_Y16_N26
\inst7|u_ctrl|estado_atual~60\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst7|u_ctrl|estado_atual~60_combout\ = (!\inst7|stop_pulse~q\ & \inst7|u_ctrl|estado_atual.s6~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst7|stop_pulse~q\,
	datac => \inst7|u_ctrl|estado_atual.s6~q\,
	combout => \inst7|u_ctrl|estado_atual~60_combout\);

-- Location: FF_X26_Y16_N27
\inst7|u_ctrl|estado_atual.s7\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \inst7|u_ctrl|estado_atual~60_combout\,
	ena => \inst7|u_ctrl|estado_atual~45_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst7|u_ctrl|estado_atual.s7~q\);

-- Location: LCCOMB_X26_Y16_N2
\inst7|u_ctrl|estado_atual~77\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst7|u_ctrl|estado_atual~77_combout\ = (!\inst7|stop_pulse~q\ & \inst7|u_ctrl|estado_atual.s7~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst7|stop_pulse~q\,
	datac => \inst7|u_ctrl|estado_atual.s7~q\,
	combout => \inst7|u_ctrl|estado_atual~77_combout\);

-- Location: FF_X26_Y16_N3
\inst7|u_ctrl|estado_atual.s8\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \inst7|u_ctrl|estado_atual~77_combout\,
	ena => \inst7|u_ctrl|estado_atual~45_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst7|u_ctrl|estado_atual.s8~q\);

-- Location: LCCOMB_X26_Y16_N12
\inst7|u_ctrl|estado_atual~68\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst7|u_ctrl|estado_atual~68_combout\ = (\inst7|u_ctrl|estado_atual.s8~q\ & !\inst7|stop_pulse~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst7|u_ctrl|estado_atual.s8~q\,
	datac => \inst7|stop_pulse~q\,
	combout => \inst7|u_ctrl|estado_atual~68_combout\);

-- Location: FF_X26_Y16_N13
\inst7|u_ctrl|estado_atual.s9\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \inst7|u_ctrl|estado_atual~68_combout\,
	ena => \inst7|u_ctrl|estado_atual~45_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst7|u_ctrl|estado_atual.s9~q\);

-- Location: LCCOMB_X26_Y16_N24
\inst7|u_ctrl|estado_atual~63\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst7|u_ctrl|estado_atual~63_combout\ = (\inst7|u_ctrl|estado_atual.s9~q\ & !\inst7|stop_pulse~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst7|u_ctrl|estado_atual.s9~q\,
	datac => \inst7|stop_pulse~q\,
	combout => \inst7|u_ctrl|estado_atual~63_combout\);

-- Location: FF_X26_Y16_N25
\inst7|u_ctrl|estado_atual.s10\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \inst7|u_ctrl|estado_atual~63_combout\,
	ena => \inst7|u_ctrl|estado_atual~45_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst7|u_ctrl|estado_atual.s10~q\);

-- Location: LCCOMB_X25_Y16_N2
\inst7|u_ctrl|estado_atual~47\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst7|u_ctrl|estado_atual~47_combout\ = (\inst7|u_ctrl|estado_atual.s10~q\ & !\inst7|stop_pulse~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst7|u_ctrl|estado_atual.s10~q\,
	datac => \inst7|stop_pulse~q\,
	combout => \inst7|u_ctrl|estado_atual~47_combout\);

-- Location: FF_X25_Y16_N3
\inst7|u_ctrl|estado_atual.s11\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \inst7|u_ctrl|estado_atual~47_combout\,
	ena => \inst7|u_ctrl|estado_atual~45_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst7|u_ctrl|estado_atual.s11~q\);

-- Location: LCCOMB_X25_Y16_N28
\inst7|u_ctrl|estado_atual~49\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst7|u_ctrl|estado_atual~49_combout\ = (\inst7|u_ctrl|estado_atual.s11~q\ & !\inst7|stop_pulse~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst7|u_ctrl|estado_atual.s11~q\,
	datac => \inst7|stop_pulse~q\,
	combout => \inst7|u_ctrl|estado_atual~49_combout\);

-- Location: FF_X25_Y16_N29
\inst7|u_ctrl|estado_atual.s12\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \inst7|u_ctrl|estado_atual~49_combout\,
	ena => \inst7|u_ctrl|estado_atual~45_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst7|u_ctrl|estado_atual.s12~q\);

-- Location: LCCOMB_X26_Y16_N28
\inst7|u_ctrl|estado_atual~70\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst7|u_ctrl|estado_atual~70_combout\ = (!\inst7|stop_pulse~q\ & \inst7|u_ctrl|estado_atual.s12~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst7|stop_pulse~q\,
	datad => \inst7|u_ctrl|estado_atual.s12~q\,
	combout => \inst7|u_ctrl|estado_atual~70_combout\);

-- Location: FF_X26_Y16_N29
\inst7|u_ctrl|estado_atual.s13\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \inst7|u_ctrl|estado_atual~70_combout\,
	ena => \inst7|u_ctrl|estado_atual~45_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst7|u_ctrl|estado_atual.s13~q\);

-- Location: LCCOMB_X26_Y16_N16
\inst7|u_ctrl|estado_atual~54\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst7|u_ctrl|estado_atual~54_combout\ = (!\inst7|stop_pulse~q\ & \inst7|u_ctrl|estado_atual.s13~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst7|stop_pulse~q\,
	datad => \inst7|u_ctrl|estado_atual.s13~q\,
	combout => \inst7|u_ctrl|estado_atual~54_combout\);

-- Location: FF_X26_Y16_N17
\inst7|u_ctrl|estado_atual.s14\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \inst7|u_ctrl|estado_atual~54_combout\,
	ena => \inst7|u_ctrl|estado_atual~45_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst7|u_ctrl|estado_atual.s14~q\);

-- Location: LCCOMB_X25_Y16_N4
\inst7|u_ctrl|estado_atual~64\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst7|u_ctrl|estado_atual~64_combout\ = (!\inst7|stop_pulse~q\ & \inst7|u_ctrl|estado_atual.s14~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100010001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst7|stop_pulse~q\,
	datab => \inst7|u_ctrl|estado_atual.s14~q\,
	combout => \inst7|u_ctrl|estado_atual~64_combout\);

-- Location: FF_X25_Y16_N13
\inst7|u_ctrl|estado_atual.s15\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	asdata => \inst7|u_ctrl|estado_atual~64_combout\,
	sload => VCC,
	ena => \inst7|u_ctrl|estado_atual~45_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst7|u_ctrl|estado_atual.s15~q\);

-- Location: LCCOMB_X25_Y16_N26
\inst7|u_ctrl|estado_atual~50\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst7|u_ctrl|estado_atual~50_combout\ = (!\inst7|stop_pulse~q\ & \inst7|u_ctrl|estado_atual.s15~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst7|stop_pulse~q\,
	datad => \inst7|u_ctrl|estado_atual.s15~q\,
	combout => \inst7|u_ctrl|estado_atual~50_combout\);

-- Location: FF_X25_Y16_N27
\inst7|u_ctrl|estado_atual.s16\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \inst7|u_ctrl|estado_atual~50_combout\,
	ena => \inst7|u_ctrl|estado_atual~45_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst7|u_ctrl|estado_atual.s16~q\);

-- Location: LCCOMB_X25_Y16_N0
\inst7|u_ctrl|estado_atual~53\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst7|u_ctrl|estado_atual~53_combout\ = (!\inst7|stop_pulse~q\ & \inst7|u_ctrl|estado_atual.s16~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst7|stop_pulse~q\,
	datac => \inst7|u_ctrl|estado_atual.s16~q\,
	combout => \inst7|u_ctrl|estado_atual~53_combout\);

-- Location: FF_X25_Y16_N1
\inst7|u_ctrl|estado_atual.s17\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \inst7|u_ctrl|estado_atual~53_combout\,
	ena => \inst7|u_ctrl|estado_atual~45_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst7|u_ctrl|estado_atual.s17~q\);

-- Location: LCCOMB_X25_Y16_N6
\inst7|u_ctrl|estado_atual~57\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst7|u_ctrl|estado_atual~57_combout\ = (!\inst7|stop_pulse~q\ & \inst7|u_ctrl|estado_atual.s17~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst7|stop_pulse~q\,
	datad => \inst7|u_ctrl|estado_atual.s17~q\,
	combout => \inst7|u_ctrl|estado_atual~57_combout\);

-- Location: FF_X25_Y16_N7
\inst7|u_ctrl|estado_atual.s18\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \inst7|u_ctrl|estado_atual~57_combout\,
	ena => \inst7|u_ctrl|estado_atual~45_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst7|u_ctrl|estado_atual.s18~q\);

-- Location: LCCOMB_X25_Y16_N16
\inst7|u_ctrl|estado_atual~78\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst7|u_ctrl|estado_atual~78_combout\ = (\inst7|u_ctrl|estado_atual.s18~q\ & !\inst7|stop_pulse~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst7|u_ctrl|estado_atual.s18~q\,
	datac => \inst7|stop_pulse~q\,
	combout => \inst7|u_ctrl|estado_atual~78_combout\);

-- Location: FF_X25_Y16_N17
\inst7|u_ctrl|estado_atual.s19\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \inst7|u_ctrl|estado_atual~78_combout\,
	ena => \inst7|u_ctrl|estado_atual~45_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst7|u_ctrl|estado_atual.s19~q\);

-- Location: LCCOMB_X25_Y16_N10
\inst7|u_ctrl|estado_atual~65\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst7|u_ctrl|estado_atual~65_combout\ = (!\inst7|stop_pulse~q\ & \inst7|u_ctrl|estado_atual.s19~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst7|stop_pulse~q\,
	datad => \inst7|u_ctrl|estado_atual.s19~q\,
	combout => \inst7|u_ctrl|estado_atual~65_combout\);

-- Location: FF_X25_Y16_N11
\inst7|u_ctrl|estado_atual.s20\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \inst7|u_ctrl|estado_atual~65_combout\,
	ena => \inst7|u_ctrl|estado_atual~45_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst7|u_ctrl|estado_atual.s20~q\);

-- Location: LCCOMB_X25_Y16_N24
\inst7|u_ctrl|estado_atual~51\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst7|u_ctrl|estado_atual~51_combout\ = (!\inst7|stop_pulse~q\ & \inst7|u_ctrl|estado_atual.s20~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst7|stop_pulse~q\,
	datad => \inst7|u_ctrl|estado_atual.s20~q\,
	combout => \inst7|u_ctrl|estado_atual~51_combout\);

-- Location: FF_X25_Y16_N25
\inst7|u_ctrl|estado_atual.s21\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \inst7|u_ctrl|estado_atual~51_combout\,
	ena => \inst7|u_ctrl|estado_atual~45_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst7|u_ctrl|estado_atual.s21~q\);

-- Location: LCCOMB_X26_Y13_N24
\inst7|u_ctrl|estado_atual~85\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst7|u_ctrl|estado_atual~85_combout\ = (\inst7|u_ctrl|estado_atual.s21~q\ & !\inst7|stop_pulse~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst7|u_ctrl|estado_atual.s21~q\,
	datad => \inst7|stop_pulse~q\,
	combout => \inst7|u_ctrl|estado_atual~85_combout\);

-- Location: FF_X26_Y13_N25
\inst7|u_ctrl|estado_atual.s22\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \inst7|u_ctrl|estado_atual~85_combout\,
	ena => \inst7|u_ctrl|estado_atual~45_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst7|u_ctrl|estado_atual.s22~q\);

-- Location: LCCOMB_X26_Y13_N4
\inst7|u_ctrl|estado_atual~75\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst7|u_ctrl|estado_atual~75_combout\ = (\inst7|u_ctrl|estado_atual.s22~q\ & !\inst7|stop_pulse~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst7|u_ctrl|estado_atual.s22~q\,
	datad => \inst7|stop_pulse~q\,
	combout => \inst7|u_ctrl|estado_atual~75_combout\);

-- Location: FF_X26_Y13_N5
\inst7|u_ctrl|estado_atual.s23\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \inst7|u_ctrl|estado_atual~75_combout\,
	ena => \inst7|u_ctrl|estado_atual~45_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst7|u_ctrl|estado_atual.s23~q\);

-- Location: LCCOMB_X26_Y13_N22
\inst7|u_ctrl|estado_atual~86\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst7|u_ctrl|estado_atual~86_combout\ = (\inst7|u_ctrl|estado_atual.s23~q\ & !\inst7|stop_pulse~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst7|u_ctrl|estado_atual.s23~q\,
	datad => \inst7|stop_pulse~q\,
	combout => \inst7|u_ctrl|estado_atual~86_combout\);

-- Location: FF_X26_Y13_N23
\inst7|u_ctrl|estado_atual.s24\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \inst7|u_ctrl|estado_atual~86_combout\,
	ena => \inst7|u_ctrl|estado_atual~45_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst7|u_ctrl|estado_atual.s24~q\);

-- Location: LCCOMB_X26_Y13_N6
\inst7|u_ctrl|estado_atual~76\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst7|u_ctrl|estado_atual~76_combout\ = (\inst7|u_ctrl|estado_atual.s24~q\ & !\inst7|stop_pulse~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst7|u_ctrl|estado_atual.s24~q\,
	datad => \inst7|stop_pulse~q\,
	combout => \inst7|u_ctrl|estado_atual~76_combout\);

-- Location: FF_X26_Y13_N7
\inst7|u_ctrl|estado_atual.s25\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \inst7|u_ctrl|estado_atual~76_combout\,
	ena => \inst7|u_ctrl|estado_atual~45_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst7|u_ctrl|estado_atual.s25~q\);

-- Location: LCCOMB_X26_Y13_N30
\inst7|u_ctrl|estado_atual~82\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst7|u_ctrl|estado_atual~82_combout\ = (\inst7|u_ctrl|estado_atual.s25~q\ & !\inst7|stop_pulse~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst7|u_ctrl|estado_atual.s25~q\,
	datad => \inst7|stop_pulse~q\,
	combout => \inst7|u_ctrl|estado_atual~82_combout\);

-- Location: FF_X26_Y13_N31
\inst7|u_ctrl|estado_atual.s26\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \inst7|u_ctrl|estado_atual~82_combout\,
	ena => \inst7|u_ctrl|estado_atual~45_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst7|u_ctrl|estado_atual.s26~q\);

-- Location: LCCOMB_X26_Y13_N12
\inst7|u_ctrl|estado_atual~58\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst7|u_ctrl|estado_atual~58_combout\ = (\inst7|u_ctrl|estado_atual.s26~q\ & !\inst7|stop_pulse~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst7|u_ctrl|estado_atual.s26~q\,
	datad => \inst7|stop_pulse~q\,
	combout => \inst7|u_ctrl|estado_atual~58_combout\);

-- Location: FF_X26_Y13_N13
\inst7|u_ctrl|estado_atual.s27\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \inst7|u_ctrl|estado_atual~58_combout\,
	ena => \inst7|u_ctrl|estado_atual~45_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst7|u_ctrl|estado_atual.s27~q\);

-- Location: LCCOMB_X26_Y17_N6
\inst7|u_ctrl|estado_atual~61\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst7|u_ctrl|estado_atual~61_combout\ = (\inst7|u_ctrl|estado_atual.s27~q\ & !\inst7|stop_pulse~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst7|u_ctrl|estado_atual.s27~q\,
	datad => \inst7|stop_pulse~q\,
	combout => \inst7|u_ctrl|estado_atual~61_combout\);

-- Location: FF_X26_Y17_N7
\inst7|u_ctrl|estado_atual.s28\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \inst7|u_ctrl|estado_atual~61_combout\,
	ena => \inst7|u_ctrl|estado_atual~45_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst7|u_ctrl|estado_atual.s28~q\);

-- Location: LCCOMB_X26_Y17_N2
\inst7|u_ctrl|estado_atual~79\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst7|u_ctrl|estado_atual~79_combout\ = (\inst7|u_ctrl|estado_atual.s28~q\ & !\inst7|stop_pulse~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst7|u_ctrl|estado_atual.s28~q\,
	datad => \inst7|stop_pulse~q\,
	combout => \inst7|u_ctrl|estado_atual~79_combout\);

-- Location: FF_X26_Y17_N3
\inst7|u_ctrl|estado_atual.s29\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \inst7|u_ctrl|estado_atual~79_combout\,
	ena => \inst7|u_ctrl|estado_atual~45_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst7|u_ctrl|estado_atual.s29~q\);

-- Location: LCCOMB_X26_Y16_N14
\inst7|u_ctrl|estado_atual~69\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst7|u_ctrl|estado_atual~69_combout\ = (!\inst7|stop_pulse~q\ & \inst7|u_ctrl|estado_atual.s29~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst7|stop_pulse~q\,
	datac => \inst7|u_ctrl|estado_atual.s29~q\,
	combout => \inst7|u_ctrl|estado_atual~69_combout\);

-- Location: FF_X26_Y16_N15
\inst7|u_ctrl|estado_atual.s30\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \inst7|u_ctrl|estado_atual~69_combout\,
	ena => \inst7|u_ctrl|estado_atual~45_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst7|u_ctrl|estado_atual.s30~q\);

-- Location: LCCOMB_X26_Y16_N6
\inst7|u_ctrl|WideOr42~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst7|u_ctrl|WideOr42~0_combout\ = (!\inst7|u_ctrl|estado_atual.s35~q\ & (!\inst7|u_ctrl|estado_atual.s14~q\ & (!\inst7|u_ctrl|estado_atual.s30~q\ & !\inst7|u_ctrl|estado_atual.s9~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst7|u_ctrl|estado_atual.s35~q\,
	datab => \inst7|u_ctrl|estado_atual.s14~q\,
	datac => \inst7|u_ctrl|estado_atual.s30~q\,
	datad => \inst7|u_ctrl|estado_atual.s9~q\,
	combout => \inst7|u_ctrl|WideOr42~0_combout\);

-- Location: LCCOMB_X25_Y16_N18
\inst7|u_ctrl|WideOr43\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst7|u_ctrl|WideOr43~combout\ = (\inst7|u_ctrl|WideOr42~0_combout\ & (!\inst7|u_ctrl|estado_atual.s41~q\ & (!\inst7|u_ctrl|Temp_out~0_combout\ & !\inst7|u_ctrl|estado_atual.s19~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst7|u_ctrl|WideOr42~0_combout\,
	datab => \inst7|u_ctrl|estado_atual.s41~q\,
	datac => \inst7|u_ctrl|Temp_out~0_combout\,
	datad => \inst7|u_ctrl|estado_atual.s19~q\,
	combout => \inst7|u_ctrl|WideOr43~combout\);

-- Location: FF_X25_Y16_N19
\inst7|u_ctrl|Temp_out[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \inst7|u_ctrl|WideOr43~combout\,
	ena => \inst7|run_en~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst7|u_ctrl|Temp_out\(5));

-- Location: LCCOMB_X24_Y12_N2
\inst7|u_tmp|cnt~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst7|u_tmp|cnt~0_combout\ = (\inst7|u_tmp|Equal0~10_combout\ & (\inst7|u_ctrl|Disparo~q\ & ((\inst7|u_ctrl|Temp_out\(5))))) # (!\inst7|u_tmp|Equal0~10_combout\ & (((\inst7|u_tmp|Add0~15_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst7|u_ctrl|Disparo~q\,
	datab => \inst7|u_tmp|Add0~15_combout\,
	datac => \inst7|u_ctrl|Temp_out\(5),
	datad => \inst7|u_tmp|Equal0~10_combout\,
	combout => \inst7|u_tmp|cnt~0_combout\);

-- Location: FF_X24_Y12_N3
\inst7|u_tmp|cnt[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \inst7|u_tmp|cnt~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst7|u_tmp|cnt\(5));

-- Location: LCCOMB_X23_Y12_N12
\inst7|u_tmp|Add0~17\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst7|u_tmp|Add0~17_combout\ = (\inst7|u_tmp|cnt\(6) & ((GND) # (!\inst7|u_tmp|Add0~16\))) # (!\inst7|u_tmp|cnt\(6) & (\inst7|u_tmp|Add0~16\ $ (GND)))
-- \inst7|u_tmp|Add0~18\ = CARRY((\inst7|u_tmp|cnt\(6)) # (!\inst7|u_tmp|Add0~16\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst7|u_tmp|cnt\(6),
	datad => VCC,
	cin => \inst7|u_tmp|Add0~16\,
	combout => \inst7|u_tmp|Add0~17_combout\,
	cout => \inst7|u_tmp|Add0~18\);

-- Location: LCCOMB_X25_Y16_N20
\inst7|u_ctrl|WideOr42~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst7|u_ctrl|WideOr42~1_combout\ = (\inst7|u_ctrl|estado_atual.s19~q\) # ((\inst7|u_ctrl|estado_atual.s41~q\) # (!\inst7|u_ctrl|WideOr42~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst7|u_ctrl|estado_atual.s19~q\,
	datac => \inst7|u_ctrl|estado_atual.s41~q\,
	datad => \inst7|u_ctrl|WideOr42~0_combout\,
	combout => \inst7|u_ctrl|WideOr42~1_combout\);

-- Location: FF_X25_Y16_N21
\inst7|u_ctrl|Temp_out[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \inst7|u_ctrl|WideOr42~1_combout\,
	ena => \inst7|run_en~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst7|u_ctrl|Temp_out\(6));

-- Location: LCCOMB_X24_Y12_N8
\inst7|u_tmp|cnt~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst7|u_tmp|cnt~1_combout\ = (\inst7|u_tmp|Equal0~10_combout\ & (((\inst7|u_ctrl|Temp_out\(6) & \inst7|u_ctrl|Disparo~q\)))) # (!\inst7|u_tmp|Equal0~10_combout\ & (\inst7|u_tmp|Add0~17_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst7|u_tmp|Add0~17_combout\,
	datab => \inst7|u_ctrl|Temp_out\(6),
	datac => \inst7|u_ctrl|Disparo~q\,
	datad => \inst7|u_tmp|Equal0~10_combout\,
	combout => \inst7|u_tmp|cnt~1_combout\);

-- Location: FF_X24_Y12_N9
\inst7|u_tmp|cnt[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \inst7|u_tmp|cnt~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst7|u_tmp|cnt\(6));

-- Location: LCCOMB_X23_Y12_N14
\inst7|u_tmp|Add0~19\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst7|u_tmp|Add0~19_combout\ = (\inst7|u_tmp|cnt\(7) & (\inst7|u_tmp|Add0~18\ & VCC)) # (!\inst7|u_tmp|cnt\(7) & (!\inst7|u_tmp|Add0~18\))
-- \inst7|u_tmp|Add0~20\ = CARRY((!\inst7|u_tmp|cnt\(7) & !\inst7|u_tmp|Add0~18\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100000101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst7|u_tmp|cnt\(7),
	datad => VCC,
	cin => \inst7|u_tmp|Add0~18\,
	combout => \inst7|u_tmp|Add0~19_combout\,
	cout => \inst7|u_tmp|Add0~20\);

-- Location: LCCOMB_X24_Y12_N30
\inst7|u_tmp|cnt~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst7|u_tmp|cnt~2_combout\ = (\inst7|u_tmp|Equal0~10_combout\ & (\inst7|u_ctrl|Disparo~q\ & ((\inst7|u_ctrl|Temp_out\(7))))) # (!\inst7|u_tmp|Equal0~10_combout\ & (((\inst7|u_tmp|Add0~19_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst7|u_ctrl|Disparo~q\,
	datab => \inst7|u_tmp|Add0~19_combout\,
	datac => \inst7|u_ctrl|Temp_out\(7),
	datad => \inst7|u_tmp|Equal0~10_combout\,
	combout => \inst7|u_tmp|cnt~2_combout\);

-- Location: FF_X24_Y12_N31
\inst7|u_tmp|cnt[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \inst7|u_tmp|cnt~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst7|u_tmp|cnt\(7));

-- Location: LCCOMB_X23_Y12_N16
\inst7|u_tmp|Add0~21\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst7|u_tmp|Add0~21_combout\ = (\inst7|u_tmp|cnt\(8) & ((GND) # (!\inst7|u_tmp|Add0~20\))) # (!\inst7|u_tmp|cnt\(8) & (\inst7|u_tmp|Add0~20\ $ (GND)))
-- \inst7|u_tmp|Add0~22\ = CARRY((\inst7|u_tmp|cnt\(8)) # (!\inst7|u_tmp|Add0~20\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst7|u_tmp|cnt\(8),
	datad => VCC,
	cin => \inst7|u_tmp|Add0~20\,
	combout => \inst7|u_tmp|Add0~21_combout\,
	cout => \inst7|u_tmp|Add0~22\);

-- Location: LCCOMB_X24_Y12_N10
\inst7|u_tmp|Add0~23\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst7|u_tmp|Add0~23_combout\ = (\inst7|u_tmp|Add0~21_combout\ & !\inst7|u_tmp|Equal0~10_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst7|u_tmp|Add0~21_combout\,
	datad => \inst7|u_tmp|Equal0~10_combout\,
	combout => \inst7|u_tmp|Add0~23_combout\);

-- Location: FF_X24_Y12_N11
\inst7|u_tmp|cnt[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \inst7|u_tmp|Add0~23_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst7|u_tmp|cnt\(8));

-- Location: LCCOMB_X23_Y12_N18
\inst7|u_tmp|Add0~24\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst7|u_tmp|Add0~24_combout\ = (\inst7|u_tmp|cnt\(9) & (\inst7|u_tmp|Add0~22\ & VCC)) # (!\inst7|u_tmp|cnt\(9) & (!\inst7|u_tmp|Add0~22\))
-- \inst7|u_tmp|Add0~25\ = CARRY((!\inst7|u_tmp|cnt\(9) & !\inst7|u_tmp|Add0~22\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100000101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst7|u_tmp|cnt\(9),
	datad => VCC,
	cin => \inst7|u_tmp|Add0~22\,
	combout => \inst7|u_tmp|Add0~24_combout\,
	cout => \inst7|u_tmp|Add0~25\);

-- Location: LCCOMB_X24_Y12_N20
\inst7|u_tmp|Add0~26\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst7|u_tmp|Add0~26_combout\ = (\inst7|u_tmp|Add0~24_combout\ & !\inst7|u_tmp|Equal0~10_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst7|u_tmp|Add0~24_combout\,
	datad => \inst7|u_tmp|Equal0~10_combout\,
	combout => \inst7|u_tmp|Add0~26_combout\);

-- Location: FF_X24_Y12_N21
\inst7|u_tmp|cnt[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \inst7|u_tmp|Add0~26_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst7|u_tmp|cnt\(9));

-- Location: LCCOMB_X23_Y12_N20
\inst7|u_tmp|Add0~27\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst7|u_tmp|Add0~27_combout\ = (\inst7|u_tmp|cnt\(10) & ((GND) # (!\inst7|u_tmp|Add0~25\))) # (!\inst7|u_tmp|cnt\(10) & (\inst7|u_tmp|Add0~25\ $ (GND)))
-- \inst7|u_tmp|Add0~28\ = CARRY((\inst7|u_tmp|cnt\(10)) # (!\inst7|u_tmp|Add0~25\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101010101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst7|u_tmp|cnt\(10),
	datad => VCC,
	cin => \inst7|u_tmp|Add0~25\,
	combout => \inst7|u_tmp|Add0~27_combout\,
	cout => \inst7|u_tmp|Add0~28\);

-- Location: LCCOMB_X24_Y12_N26
\inst7|u_tmp|cnt~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst7|u_tmp|cnt~3_combout\ = (\inst7|u_tmp|Equal0~10_combout\ & (\inst7|u_ctrl|Disparo~q\ & ((\inst7|u_ctrl|Temp_out\(5))))) # (!\inst7|u_tmp|Equal0~10_combout\ & (((\inst7|u_tmp|Add0~27_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst7|u_ctrl|Disparo~q\,
	datab => \inst7|u_tmp|Add0~27_combout\,
	datac => \inst7|u_ctrl|Temp_out\(5),
	datad => \inst7|u_tmp|Equal0~10_combout\,
	combout => \inst7|u_tmp|cnt~3_combout\);

-- Location: FF_X24_Y12_N27
\inst7|u_tmp|cnt[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \inst7|u_tmp|cnt~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst7|u_tmp|cnt\(10));

-- Location: LCCOMB_X23_Y12_N22
\inst7|u_tmp|Add0~29\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst7|u_tmp|Add0~29_combout\ = (\inst7|u_tmp|cnt\(11) & (\inst7|u_tmp|Add0~28\ & VCC)) # (!\inst7|u_tmp|cnt\(11) & (!\inst7|u_tmp|Add0~28\))
-- \inst7|u_tmp|Add0~30\ = CARRY((!\inst7|u_tmp|cnt\(11) & !\inst7|u_tmp|Add0~28\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst7|u_tmp|cnt\(11),
	datad => VCC,
	cin => \inst7|u_tmp|Add0~28\,
	combout => \inst7|u_tmp|Add0~29_combout\,
	cout => \inst7|u_tmp|Add0~30\);

-- Location: LCCOMB_X24_Y12_N12
\inst7|u_tmp|cnt~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst7|u_tmp|cnt~4_combout\ = (\inst7|u_tmp|Equal0~10_combout\ & (\inst7|u_ctrl|Disparo~q\ & ((!\inst7|u_ctrl|Temp_out\(7))))) # (!\inst7|u_tmp|Equal0~10_combout\ & (((\inst7|u_tmp|Add0~29_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst7|u_ctrl|Disparo~q\,
	datab => \inst7|u_tmp|Add0~29_combout\,
	datac => \inst7|u_ctrl|Temp_out\(7),
	datad => \inst7|u_tmp|Equal0~10_combout\,
	combout => \inst7|u_tmp|cnt~4_combout\);

-- Location: FF_X24_Y12_N13
\inst7|u_tmp|cnt[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \inst7|u_tmp|cnt~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst7|u_tmp|cnt\(11));

-- Location: LCCOMB_X23_Y12_N24
\inst7|u_tmp|Add0~31\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst7|u_tmp|Add0~31_combout\ = (\inst7|u_tmp|cnt\(12) & ((GND) # (!\inst7|u_tmp|Add0~30\))) # (!\inst7|u_tmp|cnt\(12) & (\inst7|u_tmp|Add0~30\ $ (GND)))
-- \inst7|u_tmp|Add0~32\ = CARRY((\inst7|u_tmp|cnt\(12)) # (!\inst7|u_tmp|Add0~30\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst7|u_tmp|cnt\(12),
	datad => VCC,
	cin => \inst7|u_tmp|Add0~30\,
	combout => \inst7|u_tmp|Add0~31_combout\,
	cout => \inst7|u_tmp|Add0~32\);

-- Location: LCCOMB_X24_Y12_N24
\inst7|u_tmp|Add0~33\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst7|u_tmp|Add0~33_combout\ = (\inst7|u_tmp|Equal0~10_combout\ & (\inst7|u_ctrl|Disparo~q\)) # (!\inst7|u_tmp|Equal0~10_combout\ & ((\inst7|u_tmp|Add0~31_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst7|u_tmp|Equal0~10_combout\,
	datac => \inst7|u_ctrl|Disparo~q\,
	datad => \inst7|u_tmp|Add0~31_combout\,
	combout => \inst7|u_tmp|Add0~33_combout\);

-- Location: FF_X24_Y12_N25
\inst7|u_tmp|cnt[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \inst7|u_tmp|Add0~33_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst7|u_tmp|cnt\(12));

-- Location: LCCOMB_X23_Y12_N26
\inst7|u_tmp|Add0~34\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst7|u_tmp|Add0~34_combout\ = (\inst7|u_tmp|cnt\(13) & (\inst7|u_tmp|Add0~32\ & VCC)) # (!\inst7|u_tmp|cnt\(13) & (!\inst7|u_tmp|Add0~32\))
-- \inst7|u_tmp|Add0~35\ = CARRY((!\inst7|u_tmp|cnt\(13) & !\inst7|u_tmp|Add0~32\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst7|u_tmp|cnt\(13),
	datad => VCC,
	cin => \inst7|u_tmp|Add0~32\,
	combout => \inst7|u_tmp|Add0~34_combout\,
	cout => \inst7|u_tmp|Add0~35\);

-- Location: LCCOMB_X24_Y12_N18
\inst7|u_tmp|Add0~36\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst7|u_tmp|Add0~36_combout\ = (\inst7|u_tmp|Equal0~10_combout\ & (\inst7|u_ctrl|Disparo~q\)) # (!\inst7|u_tmp|Equal0~10_combout\ & ((\inst7|u_tmp|Add0~34_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst7|u_ctrl|Disparo~q\,
	datac => \inst7|u_tmp|Add0~34_combout\,
	datad => \inst7|u_tmp|Equal0~10_combout\,
	combout => \inst7|u_tmp|Add0~36_combout\);

-- Location: FF_X24_Y12_N19
\inst7|u_tmp|cnt[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \inst7|u_tmp|Add0~36_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst7|u_tmp|cnt\(13));

-- Location: LCCOMB_X23_Y12_N28
\inst7|u_tmp|Add0~37\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst7|u_tmp|Add0~37_combout\ = (\inst7|u_tmp|cnt\(14) & ((GND) # (!\inst7|u_tmp|Add0~35\))) # (!\inst7|u_tmp|cnt\(14) & (\inst7|u_tmp|Add0~35\ $ (GND)))
-- \inst7|u_tmp|Add0~38\ = CARRY((\inst7|u_tmp|cnt\(14)) # (!\inst7|u_tmp|Add0~35\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst7|u_tmp|cnt\(14),
	datad => VCC,
	cin => \inst7|u_tmp|Add0~35\,
	combout => \inst7|u_tmp|Add0~37_combout\,
	cout => \inst7|u_tmp|Add0~38\);

-- Location: LCCOMB_X24_Y12_N16
\inst7|u_tmp|cnt~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst7|u_tmp|cnt~5_combout\ = (\inst7|u_tmp|Equal0~10_combout\ & (\inst7|u_ctrl|Disparo~q\ & ((!\inst7|u_ctrl|Temp_out\(5))))) # (!\inst7|u_tmp|Equal0~10_combout\ & (((\inst7|u_tmp|Add0~37_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst7|u_ctrl|Disparo~q\,
	datab => \inst7|u_tmp|Add0~37_combout\,
	datac => \inst7|u_ctrl|Temp_out\(5),
	datad => \inst7|u_tmp|Equal0~10_combout\,
	combout => \inst7|u_tmp|cnt~5_combout\);

-- Location: FF_X24_Y12_N17
\inst7|u_tmp|cnt[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \inst7|u_tmp|cnt~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst7|u_tmp|cnt\(14));

-- Location: LCCOMB_X23_Y12_N30
\inst7|u_tmp|Add0~39\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst7|u_tmp|Add0~39_combout\ = (\inst7|u_tmp|cnt\(15) & (\inst7|u_tmp|Add0~38\ & VCC)) # (!\inst7|u_tmp|cnt\(15) & (!\inst7|u_tmp|Add0~38\))
-- \inst7|u_tmp|Add0~40\ = CARRY((!\inst7|u_tmp|cnt\(15) & !\inst7|u_tmp|Add0~38\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst7|u_tmp|cnt\(15),
	datad => VCC,
	cin => \inst7|u_tmp|Add0~38\,
	combout => \inst7|u_tmp|Add0~39_combout\,
	cout => \inst7|u_tmp|Add0~40\);

-- Location: LCCOMB_X24_Y12_N22
\inst7|u_tmp|cnt~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst7|u_tmp|cnt~6_combout\ = (\inst7|u_tmp|Equal0~10_combout\ & (((\inst7|u_ctrl|Disparo~q\ & !\inst7|u_ctrl|Temp_out\(6))))) # (!\inst7|u_tmp|Equal0~10_combout\ & (\inst7|u_tmp|Add0~39_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100010011100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst7|u_tmp|Equal0~10_combout\,
	datab => \inst7|u_tmp|Add0~39_combout\,
	datac => \inst7|u_ctrl|Disparo~q\,
	datad => \inst7|u_ctrl|Temp_out\(6),
	combout => \inst7|u_tmp|cnt~6_combout\);

-- Location: FF_X24_Y12_N23
\inst7|u_tmp|cnt[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \inst7|u_tmp|cnt~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst7|u_tmp|cnt\(15));

-- Location: LCCOMB_X23_Y11_N0
\inst7|u_tmp|Add0~41\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst7|u_tmp|Add0~41_combout\ = (\inst7|u_tmp|cnt\(16) & ((GND) # (!\inst7|u_tmp|Add0~40\))) # (!\inst7|u_tmp|cnt\(16) & (\inst7|u_tmp|Add0~40\ $ (GND)))
-- \inst7|u_tmp|Add0~42\ = CARRY((\inst7|u_tmp|cnt\(16)) # (!\inst7|u_tmp|Add0~40\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst7|u_tmp|cnt\(16),
	datad => VCC,
	cin => \inst7|u_tmp|Add0~40\,
	combout => \inst7|u_tmp|Add0~41_combout\,
	cout => \inst7|u_tmp|Add0~42\);

-- Location: LCCOMB_X24_Y11_N16
\inst7|u_tmp|cnt~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst7|u_tmp|cnt~7_combout\ = (\inst7|u_tmp|Equal0~10_combout\ & (\inst7|u_ctrl|Disparo~q\ & ((\inst7|u_ctrl|Temp_out\(6))))) # (!\inst7|u_tmp|Equal0~10_combout\ & (((\inst7|u_tmp|Add0~41_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst7|u_tmp|Equal0~10_combout\,
	datab => \inst7|u_ctrl|Disparo~q\,
	datac => \inst7|u_tmp|Add0~41_combout\,
	datad => \inst7|u_ctrl|Temp_out\(6),
	combout => \inst7|u_tmp|cnt~7_combout\);

-- Location: FF_X24_Y11_N17
\inst7|u_tmp|cnt[16]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \inst7|u_tmp|cnt~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst7|u_tmp|cnt\(16));

-- Location: LCCOMB_X23_Y11_N2
\inst7|u_tmp|Add0~43\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst7|u_tmp|Add0~43_combout\ = (\inst7|u_tmp|cnt\(17) & (\inst7|u_tmp|Add0~42\ & VCC)) # (!\inst7|u_tmp|cnt\(17) & (!\inst7|u_tmp|Add0~42\))
-- \inst7|u_tmp|Add0~44\ = CARRY((!\inst7|u_tmp|cnt\(17) & !\inst7|u_tmp|Add0~42\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100000101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst7|u_tmp|cnt\(17),
	datad => VCC,
	cin => \inst7|u_tmp|Add0~42\,
	combout => \inst7|u_tmp|Add0~43_combout\,
	cout => \inst7|u_tmp|Add0~44\);

-- Location: LCCOMB_X24_Y11_N2
\inst7|u_tmp|cnt~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst7|u_tmp|cnt~8_combout\ = (\inst7|u_tmp|Equal0~10_combout\ & (((\inst7|u_ctrl|Disparo~q\ & !\inst7|u_ctrl|Temp_out\(6))))) # (!\inst7|u_tmp|Equal0~10_combout\ & (\inst7|u_tmp|Add0~43_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101011001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst7|u_tmp|Add0~43_combout\,
	datab => \inst7|u_ctrl|Disparo~q\,
	datac => \inst7|u_tmp|Equal0~10_combout\,
	datad => \inst7|u_ctrl|Temp_out\(6),
	combout => \inst7|u_tmp|cnt~8_combout\);

-- Location: FF_X24_Y11_N3
\inst7|u_tmp|cnt[17]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \inst7|u_tmp|cnt~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst7|u_tmp|cnt\(17));

-- Location: LCCOMB_X23_Y11_N4
\inst7|u_tmp|Add0~45\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst7|u_tmp|Add0~45_combout\ = (\inst7|u_tmp|cnt\(18) & ((GND) # (!\inst7|u_tmp|Add0~44\))) # (!\inst7|u_tmp|cnt\(18) & (\inst7|u_tmp|Add0~44\ $ (GND)))
-- \inst7|u_tmp|Add0~46\ = CARRY((\inst7|u_tmp|cnt\(18)) # (!\inst7|u_tmp|Add0~44\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst7|u_tmp|cnt\(18),
	datad => VCC,
	cin => \inst7|u_tmp|Add0~44\,
	combout => \inst7|u_tmp|Add0~45_combout\,
	cout => \inst7|u_tmp|Add0~46\);

-- Location: LCCOMB_X24_Y11_N12
\inst7|u_tmp|cnt~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst7|u_tmp|cnt~9_combout\ = (\inst7|u_tmp|Equal0~10_combout\ & (!\inst7|u_ctrl|Temp_out\(7) & ((\inst7|u_ctrl|Disparo~q\)))) # (!\inst7|u_tmp|Equal0~10_combout\ & (((\inst7|u_tmp|Add0~45_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111001001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst7|u_tmp|Equal0~10_combout\,
	datab => \inst7|u_ctrl|Temp_out\(7),
	datac => \inst7|u_tmp|Add0~45_combout\,
	datad => \inst7|u_ctrl|Disparo~q\,
	combout => \inst7|u_tmp|cnt~9_combout\);

-- Location: FF_X24_Y11_N13
\inst7|u_tmp|cnt[18]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \inst7|u_tmp|cnt~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst7|u_tmp|cnt\(18));

-- Location: LCCOMB_X23_Y11_N6
\inst7|u_tmp|Add0~47\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst7|u_tmp|Add0~47_combout\ = (\inst7|u_tmp|cnt\(19) & (\inst7|u_tmp|Add0~46\ & VCC)) # (!\inst7|u_tmp|cnt\(19) & (!\inst7|u_tmp|Add0~46\))
-- \inst7|u_tmp|Add0~48\ = CARRY((!\inst7|u_tmp|cnt\(19) & !\inst7|u_tmp|Add0~46\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100000101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst7|u_tmp|cnt\(19),
	datad => VCC,
	cin => \inst7|u_tmp|Add0~46\,
	combout => \inst7|u_tmp|Add0~47_combout\,
	cout => \inst7|u_tmp|Add0~48\);

-- Location: LCCOMB_X24_Y11_N30
\inst7|u_tmp|Add0~49\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst7|u_tmp|Add0~49_combout\ = (\inst7|u_tmp|Equal0~10_combout\ & ((\inst7|u_ctrl|Disparo~q\))) # (!\inst7|u_tmp|Equal0~10_combout\ & (\inst7|u_tmp|Add0~47_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst7|u_tmp|Equal0~10_combout\,
	datac => \inst7|u_tmp|Add0~47_combout\,
	datad => \inst7|u_ctrl|Disparo~q\,
	combout => \inst7|u_tmp|Add0~49_combout\);

-- Location: FF_X24_Y11_N31
\inst7|u_tmp|cnt[19]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \inst7|u_tmp|Add0~49_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst7|u_tmp|cnt\(19));

-- Location: LCCOMB_X23_Y11_N8
\inst7|u_tmp|Add0~50\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst7|u_tmp|Add0~50_combout\ = (\inst7|u_tmp|cnt\(20) & ((GND) # (!\inst7|u_tmp|Add0~48\))) # (!\inst7|u_tmp|cnt\(20) & (\inst7|u_tmp|Add0~48\ $ (GND)))
-- \inst7|u_tmp|Add0~51\ = CARRY((\inst7|u_tmp|cnt\(20)) # (!\inst7|u_tmp|Add0~48\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst7|u_tmp|cnt\(20),
	datad => VCC,
	cin => \inst7|u_tmp|Add0~48\,
	combout => \inst7|u_tmp|Add0~50_combout\,
	cout => \inst7|u_tmp|Add0~51\);

-- Location: LCCOMB_X24_Y11_N26
\inst7|u_tmp|Add0~52\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst7|u_tmp|Add0~52_combout\ = (\inst7|u_tmp|Equal0~10_combout\ & (\inst7|u_ctrl|Disparo~q\)) # (!\inst7|u_tmp|Equal0~10_combout\ & ((\inst7|u_tmp|Add0~50_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst7|u_ctrl|Disparo~q\,
	datac => \inst7|u_tmp|Equal0~10_combout\,
	datad => \inst7|u_tmp|Add0~50_combout\,
	combout => \inst7|u_tmp|Add0~52_combout\);

-- Location: FF_X24_Y11_N27
\inst7|u_tmp|cnt[20]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \inst7|u_tmp|Add0~52_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst7|u_tmp|cnt\(20));

-- Location: LCCOMB_X23_Y11_N10
\inst7|u_tmp|Add0~53\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst7|u_tmp|Add0~53_combout\ = (\inst7|u_tmp|cnt\(21) & (\inst7|u_tmp|Add0~51\ & VCC)) # (!\inst7|u_tmp|cnt\(21) & (!\inst7|u_tmp|Add0~51\))
-- \inst7|u_tmp|Add0~54\ = CARRY((!\inst7|u_tmp|cnt\(21) & !\inst7|u_tmp|Add0~51\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100000101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst7|u_tmp|cnt\(21),
	datad => VCC,
	cin => \inst7|u_tmp|Add0~51\,
	combout => \inst7|u_tmp|Add0~53_combout\,
	cout => \inst7|u_tmp|Add0~54\);

-- Location: LCCOMB_X24_Y11_N20
\inst7|u_tmp|Add0~55\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst7|u_tmp|Add0~55_combout\ = (\inst7|u_tmp|Equal0~10_combout\ & (\inst7|u_ctrl|Disparo~q\)) # (!\inst7|u_tmp|Equal0~10_combout\ & ((\inst7|u_tmp|Add0~53_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst7|u_ctrl|Disparo~q\,
	datac => \inst7|u_tmp|Equal0~10_combout\,
	datad => \inst7|u_tmp|Add0~53_combout\,
	combout => \inst7|u_tmp|Add0~55_combout\);

-- Location: FF_X24_Y11_N21
\inst7|u_tmp|cnt[21]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \inst7|u_tmp|Add0~55_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst7|u_tmp|cnt\(21));

-- Location: LCCOMB_X23_Y11_N12
\inst7|u_tmp|Add0~56\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst7|u_tmp|Add0~56_combout\ = (\inst7|u_tmp|cnt\(22) & ((GND) # (!\inst7|u_tmp|Add0~54\))) # (!\inst7|u_tmp|cnt\(22) & (\inst7|u_tmp|Add0~54\ $ (GND)))
-- \inst7|u_tmp|Add0~57\ = CARRY((\inst7|u_tmp|cnt\(22)) # (!\inst7|u_tmp|Add0~54\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst7|u_tmp|cnt\(22),
	datad => VCC,
	cin => \inst7|u_tmp|Add0~54\,
	combout => \inst7|u_tmp|Add0~56_combout\,
	cout => \inst7|u_tmp|Add0~57\);

-- Location: LCCOMB_X24_Y11_N28
\inst7|u_tmp|cnt~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst7|u_tmp|cnt~10_combout\ = (\inst7|u_tmp|Equal0~10_combout\ & (((!\inst7|u_ctrl|Temp_out\(5) & \inst7|u_ctrl|Disparo~q\)))) # (!\inst7|u_tmp|Equal0~10_combout\ & (\inst7|u_tmp|Add0~56_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011101000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst7|u_tmp|Add0~56_combout\,
	datab => \inst7|u_ctrl|Temp_out\(5),
	datac => \inst7|u_tmp|Equal0~10_combout\,
	datad => \inst7|u_ctrl|Disparo~q\,
	combout => \inst7|u_tmp|cnt~10_combout\);

-- Location: FF_X24_Y11_N29
\inst7|u_tmp|cnt[22]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \inst7|u_tmp|cnt~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst7|u_tmp|cnt\(22));

-- Location: LCCOMB_X23_Y11_N14
\inst7|u_tmp|Add0~58\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst7|u_tmp|Add0~58_combout\ = (\inst7|u_tmp|cnt\(23) & (\inst7|u_tmp|Add0~57\ & VCC)) # (!\inst7|u_tmp|cnt\(23) & (!\inst7|u_tmp|Add0~57\))
-- \inst7|u_tmp|Add0~59\ = CARRY((!\inst7|u_tmp|cnt\(23) & !\inst7|u_tmp|Add0~57\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst7|u_tmp|cnt\(23),
	datad => VCC,
	cin => \inst7|u_tmp|Add0~57\,
	combout => \inst7|u_tmp|Add0~58_combout\,
	cout => \inst7|u_tmp|Add0~59\);

-- Location: LCCOMB_X24_Y11_N22
\inst7|u_tmp|cnt~11\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst7|u_tmp|cnt~11_combout\ = (\inst7|u_tmp|Equal0~10_combout\ & (((\inst7|u_ctrl|Disparo~q\ & !\inst7|u_ctrl|Temp_out\(6))))) # (!\inst7|u_tmp|Equal0~10_combout\ & (\inst7|u_tmp|Add0~58_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101011001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst7|u_tmp|Add0~58_combout\,
	datab => \inst7|u_ctrl|Disparo~q\,
	datac => \inst7|u_tmp|Equal0~10_combout\,
	datad => \inst7|u_ctrl|Temp_out\(6),
	combout => \inst7|u_tmp|cnt~11_combout\);

-- Location: FF_X24_Y11_N23
\inst7|u_tmp|cnt[23]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \inst7|u_tmp|cnt~11_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst7|u_tmp|cnt\(23));

-- Location: LCCOMB_X24_Y11_N18
\inst7|u_tmp|Equal0~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst7|u_tmp|Equal0~6_combout\ = (!\inst7|u_tmp|cnt\(20) & !\inst7|u_tmp|cnt\(21))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst7|u_tmp|cnt\(20),
	datad => \inst7|u_tmp|cnt\(21),
	combout => \inst7|u_tmp|Equal0~6_combout\);

-- Location: LCCOMB_X24_Y11_N4
\inst7|u_tmp|Equal0~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst7|u_tmp|Equal0~5_combout\ = (!\inst7|u_tmp|cnt\(18) & (!\inst7|u_tmp|cnt\(17) & (!\inst7|u_tmp|cnt\(19) & !\inst7|u_tmp|cnt\(16))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst7|u_tmp|cnt\(18),
	datab => \inst7|u_tmp|cnt\(17),
	datac => \inst7|u_tmp|cnt\(19),
	datad => \inst7|u_tmp|cnt\(16),
	combout => \inst7|u_tmp|Equal0~5_combout\);

-- Location: LCCOMB_X24_Y11_N24
\inst7|u_tmp|Equal0~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst7|u_tmp|Equal0~7_combout\ = (!\inst7|u_tmp|cnt\(23) & (\inst7|u_tmp|Equal0~6_combout\ & (\inst7|u_tmp|Equal0~5_combout\ & !\inst7|u_tmp|cnt\(22))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst7|u_tmp|cnt\(23),
	datab => \inst7|u_tmp|Equal0~6_combout\,
	datac => \inst7|u_tmp|Equal0~5_combout\,
	datad => \inst7|u_tmp|cnt\(22),
	combout => \inst7|u_tmp|Equal0~7_combout\);

-- Location: LCCOMB_X23_Y11_N16
\inst7|u_tmp|Add0~60\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst7|u_tmp|Add0~60_combout\ = (\inst7|u_tmp|cnt\(24) & ((GND) # (!\inst7|u_tmp|Add0~59\))) # (!\inst7|u_tmp|cnt\(24) & (\inst7|u_tmp|Add0~59\ $ (GND)))
-- \inst7|u_tmp|Add0~61\ = CARRY((\inst7|u_tmp|cnt\(24)) # (!\inst7|u_tmp|Add0~59\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst7|u_tmp|cnt\(24),
	datad => VCC,
	cin => \inst7|u_tmp|Add0~59\,
	combout => \inst7|u_tmp|Add0~60_combout\,
	cout => \inst7|u_tmp|Add0~61\);

-- Location: LCCOMB_X24_Y11_N10
\inst7|u_tmp|cnt~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst7|u_tmp|cnt~12_combout\ = (\inst7|u_tmp|Equal0~10_combout\ & (\inst7|u_ctrl|Disparo~q\ & ((\inst7|u_ctrl|Temp_out\(6))))) # (!\inst7|u_tmp|Equal0~10_combout\ & (((\inst7|u_tmp|Add0~60_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst7|u_tmp|Equal0~10_combout\,
	datab => \inst7|u_ctrl|Disparo~q\,
	datac => \inst7|u_tmp|Add0~60_combout\,
	datad => \inst7|u_ctrl|Temp_out\(6),
	combout => \inst7|u_tmp|cnt~12_combout\);

-- Location: FF_X24_Y11_N11
\inst7|u_tmp|cnt[24]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \inst7|u_tmp|cnt~12_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst7|u_tmp|cnt\(24));

-- Location: LCCOMB_X23_Y11_N18
\inst7|u_tmp|Add0~62\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst7|u_tmp|Add0~62_combout\ = (\inst7|u_tmp|cnt\(25) & (\inst7|u_tmp|Add0~61\ & VCC)) # (!\inst7|u_tmp|cnt\(25) & (!\inst7|u_tmp|Add0~61\))
-- \inst7|u_tmp|Add0~63\ = CARRY((!\inst7|u_tmp|cnt\(25) & !\inst7|u_tmp|Add0~61\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst7|u_tmp|cnt\(25),
	datad => VCC,
	cin => \inst7|u_tmp|Add0~61\,
	combout => \inst7|u_tmp|Add0~62_combout\,
	cout => \inst7|u_tmp|Add0~63\);

-- Location: LCCOMB_X24_Y11_N8
\inst7|u_tmp|cnt~13\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst7|u_tmp|cnt~13_combout\ = (\inst7|u_tmp|Equal0~10_combout\ & (\inst7|u_ctrl|Disparo~q\ & (\inst7|u_ctrl|Temp_out\(7)))) # (!\inst7|u_tmp|Equal0~10_combout\ & (((\inst7|u_tmp|Add0~62_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101010110000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst7|u_tmp|Equal0~10_combout\,
	datab => \inst7|u_ctrl|Disparo~q\,
	datac => \inst7|u_ctrl|Temp_out\(7),
	datad => \inst7|u_tmp|Add0~62_combout\,
	combout => \inst7|u_tmp|cnt~13_combout\);

-- Location: FF_X24_Y11_N9
\inst7|u_tmp|cnt[25]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \inst7|u_tmp|cnt~13_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst7|u_tmp|cnt\(25));

-- Location: LCCOMB_X23_Y11_N20
\inst7|u_tmp|Add0~64\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst7|u_tmp|Add0~64_combout\ = (\inst7|u_tmp|cnt\(26) & ((GND) # (!\inst7|u_tmp|Add0~63\))) # (!\inst7|u_tmp|cnt\(26) & (\inst7|u_tmp|Add0~63\ $ (GND)))
-- \inst7|u_tmp|Add0~65\ = CARRY((\inst7|u_tmp|cnt\(26)) # (!\inst7|u_tmp|Add0~63\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101010101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst7|u_tmp|cnt\(26),
	datad => VCC,
	cin => \inst7|u_tmp|Add0~63\,
	combout => \inst7|u_tmp|Add0~64_combout\,
	cout => \inst7|u_tmp|Add0~65\);

-- Location: LCCOMB_X22_Y12_N30
\inst7|u_tmp|Add0~66\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst7|u_tmp|Add0~66_combout\ = (!\inst7|u_tmp|Equal0~10_combout\ & \inst7|u_tmp|Add0~64_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst7|u_tmp|Equal0~10_combout\,
	datad => \inst7|u_tmp|Add0~64_combout\,
	combout => \inst7|u_tmp|Add0~66_combout\);

-- Location: FF_X22_Y12_N31
\inst7|u_tmp|cnt[26]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \inst7|u_tmp|Add0~66_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst7|u_tmp|cnt\(26));

-- Location: LCCOMB_X23_Y11_N22
\inst7|u_tmp|Add0~67\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst7|u_tmp|Add0~67_combout\ = (\inst7|u_tmp|cnt\(27) & (\inst7|u_tmp|Add0~65\ & VCC)) # (!\inst7|u_tmp|cnt\(27) & (!\inst7|u_tmp|Add0~65\))
-- \inst7|u_tmp|Add0~68\ = CARRY((!\inst7|u_tmp|cnt\(27) & !\inst7|u_tmp|Add0~65\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst7|u_tmp|cnt\(27),
	datad => VCC,
	cin => \inst7|u_tmp|Add0~65\,
	combout => \inst7|u_tmp|Add0~67_combout\,
	cout => \inst7|u_tmp|Add0~68\);

-- Location: LCCOMB_X22_Y12_N4
\inst7|u_tmp|Add0~69\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst7|u_tmp|Add0~69_combout\ = (\inst7|u_tmp|Add0~67_combout\ & !\inst7|u_tmp|Equal0~10_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst7|u_tmp|Add0~67_combout\,
	datad => \inst7|u_tmp|Equal0~10_combout\,
	combout => \inst7|u_tmp|Add0~69_combout\);

-- Location: FF_X22_Y12_N5
\inst7|u_tmp|cnt[27]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \inst7|u_tmp|Add0~69_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst7|u_tmp|cnt\(27));

-- Location: LCCOMB_X22_Y12_N18
\inst7|u_tmp|Equal0~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst7|u_tmp|Equal0~8_combout\ = (!\inst7|u_tmp|cnt\(26) & (!\inst7|u_tmp|cnt\(27) & (!\inst7|u_tmp|cnt\(25) & !\inst7|u_tmp|cnt\(24))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst7|u_tmp|cnt\(26),
	datab => \inst7|u_tmp|cnt\(27),
	datac => \inst7|u_tmp|cnt\(25),
	datad => \inst7|u_tmp|cnt\(24),
	combout => \inst7|u_tmp|Equal0~8_combout\);

-- Location: LCCOMB_X24_Y12_N6
\inst7|u_tmp|Equal0~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst7|u_tmp|Equal0~2_combout\ = (!\inst7|u_tmp|cnt\(11) & (!\inst7|u_tmp|cnt\(9) & (!\inst7|u_tmp|cnt\(10) & !\inst7|u_tmp|cnt\(8))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst7|u_tmp|cnt\(11),
	datab => \inst7|u_tmp|cnt\(9),
	datac => \inst7|u_tmp|cnt\(10),
	datad => \inst7|u_tmp|cnt\(8),
	combout => \inst7|u_tmp|Equal0~2_combout\);

-- Location: LCCOMB_X24_Y12_N0
\inst7|u_tmp|Equal0~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst7|u_tmp|Equal0~1_combout\ = (!\inst7|u_tmp|cnt\(7) & (!\inst7|u_tmp|cnt\(4) & (!\inst7|u_tmp|cnt\(6) & !\inst7|u_tmp|cnt\(5))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst7|u_tmp|cnt\(7),
	datab => \inst7|u_tmp|cnt\(4),
	datac => \inst7|u_tmp|cnt\(6),
	datad => \inst7|u_tmp|cnt\(5),
	combout => \inst7|u_tmp|Equal0~1_combout\);

-- Location: LCCOMB_X22_Y12_N8
\inst7|u_tmp|Equal0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst7|u_tmp|Equal0~0_combout\ = (!\inst7|u_tmp|cnt\(0) & (!\inst7|u_tmp|cnt\(2) & (!\inst7|u_tmp|cnt\(3) & !\inst7|u_tmp|cnt\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst7|u_tmp|cnt\(0),
	datab => \inst7|u_tmp|cnt\(2),
	datac => \inst7|u_tmp|cnt\(3),
	datad => \inst7|u_tmp|cnt\(1),
	combout => \inst7|u_tmp|Equal0~0_combout\);

-- Location: LCCOMB_X24_Y12_N28
\inst7|u_tmp|Equal0~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst7|u_tmp|Equal0~3_combout\ = (!\inst7|u_tmp|cnt\(15) & (!\inst7|u_tmp|cnt\(14) & (!\inst7|u_tmp|cnt\(12) & !\inst7|u_tmp|cnt\(13))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst7|u_tmp|cnt\(15),
	datab => \inst7|u_tmp|cnt\(14),
	datac => \inst7|u_tmp|cnt\(12),
	datad => \inst7|u_tmp|cnt\(13),
	combout => \inst7|u_tmp|Equal0~3_combout\);

-- Location: LCCOMB_X24_Y12_N14
\inst7|u_tmp|Equal0~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst7|u_tmp|Equal0~4_combout\ = (\inst7|u_tmp|Equal0~2_combout\ & (\inst7|u_tmp|Equal0~1_combout\ & (\inst7|u_tmp|Equal0~0_combout\ & \inst7|u_tmp|Equal0~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst7|u_tmp|Equal0~2_combout\,
	datab => \inst7|u_tmp|Equal0~1_combout\,
	datac => \inst7|u_tmp|Equal0~0_combout\,
	datad => \inst7|u_tmp|Equal0~3_combout\,
	combout => \inst7|u_tmp|Equal0~4_combout\);

-- Location: LCCOMB_X23_Y11_N24
\inst7|u_tmp|Add0~70\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst7|u_tmp|Add0~70_combout\ = (\inst7|u_tmp|cnt\(28) & ((GND) # (!\inst7|u_tmp|Add0~68\))) # (!\inst7|u_tmp|cnt\(28) & (\inst7|u_tmp|Add0~68\ $ (GND)))
-- \inst7|u_tmp|Add0~71\ = CARRY((\inst7|u_tmp|cnt\(28)) # (!\inst7|u_tmp|Add0~68\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101010101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst7|u_tmp|cnt\(28),
	datad => VCC,
	cin => \inst7|u_tmp|Add0~68\,
	combout => \inst7|u_tmp|Add0~70_combout\,
	cout => \inst7|u_tmp|Add0~71\);

-- Location: LCCOMB_X22_Y12_N20
\inst7|u_tmp|Add0~72\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst7|u_tmp|Add0~72_combout\ = (\inst7|u_tmp|Add0~70_combout\ & !\inst7|u_tmp|Equal0~10_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst7|u_tmp|Add0~70_combout\,
	datad => \inst7|u_tmp|Equal0~10_combout\,
	combout => \inst7|u_tmp|Add0~72_combout\);

-- Location: FF_X22_Y12_N21
\inst7|u_tmp|cnt[28]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \inst7|u_tmp|Add0~72_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst7|u_tmp|cnt\(28));

-- Location: LCCOMB_X23_Y11_N26
\inst7|u_tmp|Add0~73\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst7|u_tmp|Add0~73_combout\ = (\inst7|u_tmp|cnt\(29) & (\inst7|u_tmp|Add0~71\ & VCC)) # (!\inst7|u_tmp|cnt\(29) & (!\inst7|u_tmp|Add0~71\))
-- \inst7|u_tmp|Add0~74\ = CARRY((!\inst7|u_tmp|cnt\(29) & !\inst7|u_tmp|Add0~71\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100000101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst7|u_tmp|cnt\(29),
	datad => VCC,
	cin => \inst7|u_tmp|Add0~71\,
	combout => \inst7|u_tmp|Add0~73_combout\,
	cout => \inst7|u_tmp|Add0~74\);

-- Location: LCCOMB_X22_Y12_N10
\inst7|u_tmp|Add0~75\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst7|u_tmp|Add0~75_combout\ = (!\inst7|u_tmp|Equal0~10_combout\ & \inst7|u_tmp|Add0~73_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst7|u_tmp|Equal0~10_combout\,
	datad => \inst7|u_tmp|Add0~73_combout\,
	combout => \inst7|u_tmp|Add0~75_combout\);

-- Location: FF_X22_Y12_N11
\inst7|u_tmp|cnt[29]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \inst7|u_tmp|Add0~75_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst7|u_tmp|cnt\(29));

-- Location: LCCOMB_X23_Y11_N28
\inst7|u_tmp|Add0~76\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst7|u_tmp|Add0~76_combout\ = (\inst7|u_tmp|cnt\(30) & ((GND) # (!\inst7|u_tmp|Add0~74\))) # (!\inst7|u_tmp|cnt\(30) & (\inst7|u_tmp|Add0~74\ $ (GND)))
-- \inst7|u_tmp|Add0~77\ = CARRY((\inst7|u_tmp|cnt\(30)) # (!\inst7|u_tmp|Add0~74\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst7|u_tmp|cnt\(30),
	datad => VCC,
	cin => \inst7|u_tmp|Add0~74\,
	combout => \inst7|u_tmp|Add0~76_combout\,
	cout => \inst7|u_tmp|Add0~77\);

-- Location: LCCOMB_X22_Y12_N12
\inst7|u_tmp|Add0~78\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst7|u_tmp|Add0~78_combout\ = (!\inst7|u_tmp|Equal0~10_combout\ & \inst7|u_tmp|Add0~76_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst7|u_tmp|Equal0~10_combout\,
	datad => \inst7|u_tmp|Add0~76_combout\,
	combout => \inst7|u_tmp|Add0~78_combout\);

-- Location: FF_X22_Y12_N13
\inst7|u_tmp|cnt[30]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \inst7|u_tmp|Add0~78_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst7|u_tmp|cnt\(30));

-- Location: LCCOMB_X23_Y11_N30
\inst7|u_tmp|Add0~79\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst7|u_tmp|Add0~79_combout\ = \inst7|u_tmp|Add0~77\ $ (!\inst7|u_tmp|cnt\(31))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => \inst7|u_tmp|cnt\(31),
	cin => \inst7|u_tmp|Add0~77\,
	combout => \inst7|u_tmp|Add0~79_combout\);

-- Location: LCCOMB_X22_Y12_N22
\inst7|u_tmp|Add0~81\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst7|u_tmp|Add0~81_combout\ = (!\inst7|u_tmp|Equal0~10_combout\ & \inst7|u_tmp|Add0~79_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst7|u_tmp|Equal0~10_combout\,
	datad => \inst7|u_tmp|Add0~79_combout\,
	combout => \inst7|u_tmp|Add0~81_combout\);

-- Location: FF_X22_Y12_N23
\inst7|u_tmp|cnt[31]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \inst7|u_tmp|Add0~81_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst7|u_tmp|cnt\(31));

-- Location: LCCOMB_X22_Y12_N28
\inst7|u_tmp|Equal0~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst7|u_tmp|Equal0~9_combout\ = (!\inst7|u_tmp|cnt\(29) & (!\inst7|u_tmp|cnt\(28) & (!\inst7|u_tmp|cnt\(31) & !\inst7|u_tmp|cnt\(30))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst7|u_tmp|cnt\(29),
	datab => \inst7|u_tmp|cnt\(28),
	datac => \inst7|u_tmp|cnt\(31),
	datad => \inst7|u_tmp|cnt\(30),
	combout => \inst7|u_tmp|Equal0~9_combout\);

-- Location: LCCOMB_X22_Y12_N2
\inst7|u_tmp|Equal0~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst7|u_tmp|Equal0~10_combout\ = (\inst7|u_tmp|Equal0~7_combout\ & (\inst7|u_tmp|Equal0~8_combout\ & (\inst7|u_tmp|Equal0~4_combout\ & \inst7|u_tmp|Equal0~9_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst7|u_tmp|Equal0~7_combout\,
	datab => \inst7|u_tmp|Equal0~8_combout\,
	datac => \inst7|u_tmp|Equal0~4_combout\,
	datad => \inst7|u_tmp|Equal0~9_combout\,
	combout => \inst7|u_tmp|Equal0~10_combout\);

-- Location: LCCOMB_X26_Y13_N18
\inst7|u_ctrl|estado_atual~45\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst7|u_ctrl|estado_atual~45_combout\ = (\inst7|stop_pulse~q\) # ((\inst7|run_en~q\ & \inst7|u_tmp|Equal0~10_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst7|run_en~q\,
	datac => \inst7|u_tmp|Equal0~10_combout\,
	datad => \inst7|stop_pulse~q\,
	combout => \inst7|u_ctrl|estado_atual~45_combout\);

-- Location: FF_X26_Y16_N19
\inst7|u_ctrl|estado_atual.s34\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \inst7|u_ctrl|estado_atual~71_combout\,
	ena => \inst7|u_ctrl|estado_atual~45_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst7|u_ctrl|estado_atual.s34~q\);

-- Location: LCCOMB_X26_Y16_N10
\inst7|u_ctrl|estado_atual~55\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst7|u_ctrl|estado_atual~55_combout\ = (\inst7|u_ctrl|estado_atual.s34~q\ & !\inst7|stop_pulse~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst7|u_ctrl|estado_atual.s34~q\,
	datac => \inst7|stop_pulse~q\,
	combout => \inst7|u_ctrl|estado_atual~55_combout\);

-- Location: FF_X26_Y16_N11
\inst7|u_ctrl|estado_atual.s35\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \inst7|u_ctrl|estado_atual~55_combout\,
	ena => \inst7|u_ctrl|estado_atual~45_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst7|u_ctrl|estado_atual.s35~q\);

-- Location: LCCOMB_X26_Y16_N8
\inst7|u_ctrl|estado_atual~67\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst7|u_ctrl|estado_atual~67_combout\ = (\inst7|u_ctrl|estado_atual.s35~q\ & !\inst7|stop_pulse~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst7|u_ctrl|estado_atual.s35~q\,
	datac => \inst7|stop_pulse~q\,
	combout => \inst7|u_ctrl|estado_atual~67_combout\);

-- Location: FF_X25_Y16_N5
\inst7|u_ctrl|estado_atual.s36\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	asdata => \inst7|u_ctrl|estado_atual~67_combout\,
	sload => VCC,
	ena => \inst7|u_ctrl|estado_atual~45_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst7|u_ctrl|estado_atual.s36~q\);

-- Location: LCCOMB_X26_Y17_N18
\inst7|u_ctrl|estado_atual~46\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst7|u_ctrl|estado_atual~46_combout\ = (\inst7|u_ctrl|estado_atual.s36~q\ & !\inst7|stop_pulse~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst7|u_ctrl|estado_atual.s36~q\,
	datad => \inst7|stop_pulse~q\,
	combout => \inst7|u_ctrl|estado_atual~46_combout\);

-- Location: FF_X26_Y17_N19
\inst7|u_ctrl|estado_atual.s37\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \inst7|u_ctrl|estado_atual~46_combout\,
	ena => \inst7|u_ctrl|estado_atual~45_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst7|u_ctrl|estado_atual.s37~q\);

-- Location: LCCOMB_X26_Y17_N12
\inst7|u_ctrl|estado_atual~80\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst7|u_ctrl|estado_atual~80_combout\ = (\inst7|u_ctrl|estado_atual.s37~q\ & !\inst7|stop_pulse~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst7|u_ctrl|estado_atual.s37~q\,
	datad => \inst7|stop_pulse~q\,
	combout => \inst7|u_ctrl|estado_atual~80_combout\);

-- Location: FF_X26_Y17_N13
\inst7|u_ctrl|estado_atual.s38\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \inst7|u_ctrl|estado_atual~80_combout\,
	ena => \inst7|u_ctrl|estado_atual~45_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst7|u_ctrl|estado_atual.s38~q\);

-- Location: LCCOMB_X26_Y17_N26
\inst7|u_ctrl|estado_atual~59\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst7|u_ctrl|estado_atual~59_combout\ = (\inst7|u_ctrl|estado_atual.s38~q\ & !\inst7|stop_pulse~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst7|u_ctrl|estado_atual.s38~q\,
	datad => \inst7|stop_pulse~q\,
	combout => \inst7|u_ctrl|estado_atual~59_combout\);

-- Location: FF_X26_Y17_N27
\inst7|u_ctrl|estado_atual.s39\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \inst7|u_ctrl|estado_atual~59_combout\,
	ena => \inst7|u_ctrl|estado_atual~45_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst7|u_ctrl|estado_atual.s39~q\);

-- Location: LCCOMB_X26_Y17_N14
\inst7|u_ctrl|estado_atual~72\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst7|u_ctrl|estado_atual~72_combout\ = (\inst7|u_ctrl|estado_atual.s39~q\ & !\inst7|stop_pulse~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst7|u_ctrl|estado_atual.s39~q\,
	datad => \inst7|stop_pulse~q\,
	combout => \inst7|u_ctrl|estado_atual~72_combout\);

-- Location: FF_X26_Y17_N15
\inst7|u_ctrl|estado_atual.s40\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \inst7|u_ctrl|estado_atual~72_combout\,
	ena => \inst7|u_ctrl|estado_atual~45_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst7|u_ctrl|estado_atual.s40~q\);

-- Location: LCCOMB_X25_Y16_N8
\inst7|u_ctrl|estado_atual~44\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst7|u_ctrl|estado_atual~44_combout\ = (!\inst7|stop_pulse~q\ & \inst7|u_ctrl|estado_atual.s40~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst7|stop_pulse~q\,
	datac => \inst7|u_ctrl|estado_atual.s40~q\,
	combout => \inst7|u_ctrl|estado_atual~44_combout\);

-- Location: FF_X25_Y16_N9
\inst7|u_ctrl|estado_atual.s41\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \inst7|u_ctrl|estado_atual~44_combout\,
	ena => \inst7|u_ctrl|estado_atual~45_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst7|u_ctrl|estado_atual.s41~q\);

-- Location: LCCOMB_X26_Y13_N16
\inst7|u_ctrl|process_0~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst7|u_ctrl|process_0~1_combout\ = (\inst7|u_ctrl|estado_atual.s41~q\ & (\inst7|run_en~q\ & \inst7|u_tmp|Equal0~10_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst7|u_ctrl|estado_atual.s41~q\,
	datab => \inst7|run_en~q\,
	datac => \inst7|u_tmp|Equal0~10_combout\,
	combout => \inst7|u_ctrl|process_0~1_combout\);

-- Location: FF_X26_Y13_N17
\inst7|u_ctrl|song_end_r\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \inst7|u_ctrl|process_0~1_combout\,
	sclr => \inst7|stop_pulse~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst7|u_ctrl|song_end_r~q\);

-- Location: LCCOMB_X28_Y16_N4
\inst7|process_0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst7|process_0~0_combout\ = (\inst7|u_ctrl|song_end_r~q\) # (\inst7|stop_rise~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst7|u_ctrl|song_end_r~q\,
	datad => \inst7|stop_rise~q\,
	combout => \inst7|process_0~0_combout\);

-- Location: FF_X28_Y16_N5
\inst7|stop_pulse\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \inst7|process_0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst7|stop_pulse~q\);

-- Location: LCCOMB_X26_Y16_N22
\inst7|u_ctrl|estado_atual~66\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst7|u_ctrl|estado_atual~66_combout\ = (!\inst7|stop_pulse~q\ & \inst7|u_ctrl|estado_atual.s30~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst7|stop_pulse~q\,
	datac => \inst7|u_ctrl|estado_atual.s30~q\,
	combout => \inst7|u_ctrl|estado_atual~66_combout\);

-- Location: FF_X26_Y16_N23
\inst7|u_ctrl|estado_atual.s31\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \inst7|u_ctrl|estado_atual~66_combout\,
	ena => \inst7|u_ctrl|estado_atual~45_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst7|u_ctrl|estado_atual.s31~q\);

-- Location: LCCOMB_X26_Y16_N4
\inst7|u_ctrl|estado_atual~48\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst7|u_ctrl|estado_atual~48_combout\ = (!\inst7|stop_pulse~q\ & \inst7|u_ctrl|estado_atual.s31~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst7|stop_pulse~q\,
	datac => \inst7|u_ctrl|estado_atual.s31~q\,
	combout => \inst7|u_ctrl|estado_atual~48_combout\);

-- Location: FF_X26_Y16_N5
\inst7|u_ctrl|estado_atual.s32\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \inst7|u_ctrl|estado_atual~48_combout\,
	ena => \inst7|u_ctrl|estado_atual~45_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst7|u_ctrl|estado_atual.s32~q\);

-- Location: LCCOMB_X26_Y16_N30
\inst7|u_ctrl|estado_atual~52\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst7|u_ctrl|estado_atual~52_combout\ = (!\inst7|stop_pulse~q\ & \inst7|u_ctrl|estado_atual.s32~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst7|stop_pulse~q\,
	datac => \inst7|u_ctrl|estado_atual.s32~q\,
	combout => \inst7|u_ctrl|estado_atual~52_combout\);

-- Location: FF_X26_Y16_N31
\inst7|u_ctrl|estado_atual.s33\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \inst7|u_ctrl|estado_atual~52_combout\,
	ena => \inst7|u_ctrl|estado_atual~45_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst7|u_ctrl|estado_atual.s33~q\);

-- Location: LCCOMB_X25_Y16_N22
\inst7|u_ctrl|WideOr44~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst7|u_ctrl|WideOr44~3_combout\ = (!\inst7|u_ctrl|estado_atual.s33~q\ & (!\inst7|u_ctrl|estado_atual.s21~q\ & (!\inst7|u_ctrl|estado_atual.s16~q\ & !\inst7|u_ctrl|estado_atual.s12~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst7|u_ctrl|estado_atual.s33~q\,
	datab => \inst7|u_ctrl|estado_atual.s21~q\,
	datac => \inst7|u_ctrl|estado_atual.s16~q\,
	datad => \inst7|u_ctrl|estado_atual.s12~q\,
	combout => \inst7|u_ctrl|WideOr44~3_combout\);

-- Location: LCCOMB_X26_Y17_N24
\inst7|u_ctrl|WideOr44~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst7|u_ctrl|WideOr44~2_combout\ = (!\inst7|u_ctrl|estado_atual.s11~q\ & !\inst7|u_ctrl|estado_atual.s32~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst7|u_ctrl|estado_atual.s11~q\,
	datad => \inst7|u_ctrl|estado_atual.s32~q\,
	combout => \inst7|u_ctrl|WideOr44~2_combout\);

-- Location: LCCOMB_X25_Y16_N12
\inst7|u_ctrl|WideOr55~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst7|u_ctrl|WideOr55~2_combout\ = (!\inst7|u_ctrl|estado_atual.s20~q\ & (\inst7|u_ctrl|estado_atual.s0~q\ & (!\inst7|u_ctrl|estado_atual.s15~q\ & !\inst7|u_ctrl|estado_atual.s10~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst7|u_ctrl|estado_atual.s20~q\,
	datab => \inst7|u_ctrl|estado_atual.s0~q\,
	datac => \inst7|u_ctrl|estado_atual.s15~q\,
	datad => \inst7|u_ctrl|estado_atual.s10~q\,
	combout => \inst7|u_ctrl|WideOr55~2_combout\);

-- Location: LCCOMB_X25_Y16_N14
\inst7|u_ctrl|WideOr55~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst7|u_ctrl|WideOr55~3_combout\ = (\inst7|u_ctrl|WideOr55~2_combout\ & (!\inst7|u_ctrl|estado_atual.s36~q\ & (!\inst7|u_ctrl|estado_atual.s41~q\ & !\inst7|u_ctrl|estado_atual.s31~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst7|u_ctrl|WideOr55~2_combout\,
	datab => \inst7|u_ctrl|estado_atual.s36~q\,
	datac => \inst7|u_ctrl|estado_atual.s41~q\,
	datad => \inst7|u_ctrl|estado_atual.s31~q\,
	combout => \inst7|u_ctrl|WideOr55~3_combout\);

-- Location: LCCOMB_X25_Y17_N4
\inst7|u_ctrl|WideOr45\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst7|u_ctrl|WideOr45~combout\ = (\inst7|u_ctrl|WideOr44~3_combout\ & (\inst7|u_ctrl|WideOr44~2_combout\ & (\inst7|u_ctrl|WideOr55~3_combout\ & !\inst7|u_ctrl|estado_atual.s37~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst7|u_ctrl|WideOr44~3_combout\,
	datab => \inst7|u_ctrl|WideOr44~2_combout\,
	datac => \inst7|u_ctrl|WideOr55~3_combout\,
	datad => \inst7|u_ctrl|estado_atual.s37~q\,
	combout => \inst7|u_ctrl|WideOr45~combout\);

-- Location: FF_X25_Y17_N5
\inst7|u_ctrl|Freq_out[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \inst7|u_ctrl|WideOr45~combout\,
	ena => \inst7|run_en~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst7|u_ctrl|Freq_out\(15));

-- Location: LCCOMB_X26_Y16_N0
\inst7|u_ctrl|WideOr49~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst7|u_ctrl|WideOr49~2_combout\ = (!\inst7|u_ctrl|estado_atual.s9~q\ & (!\inst7|u_ctrl|estado_atual.s34~q\ & (!\inst7|u_ctrl|estado_atual.s30~q\ & !\inst7|u_ctrl|estado_atual.s13~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst7|u_ctrl|estado_atual.s9~q\,
	datab => \inst7|u_ctrl|estado_atual.s34~q\,
	datac => \inst7|u_ctrl|estado_atual.s30~q\,
	datad => \inst7|u_ctrl|estado_atual.s13~q\,
	combout => \inst7|u_ctrl|WideOr49~2_combout\);

-- Location: LCCOMB_X26_Y17_N4
\inst7|u_ctrl|WideOr49~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst7|u_ctrl|WideOr49~3_combout\ = (!\inst7|u_ctrl|estado_atual.s40~q\ & \inst7|u_ctrl|WideOr49~2_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst7|u_ctrl|estado_atual.s40~q\,
	datad => \inst7|u_ctrl|WideOr49~2_combout\,
	combout => \inst7|u_ctrl|WideOr49~3_combout\);

-- Location: LCCOMB_X26_Y16_N20
\inst7|u_ctrl|WideOr48~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst7|u_ctrl|WideOr48~0_combout\ = (!\inst7|u_ctrl|estado_atual.s35~q\ & (!\inst7|u_ctrl|estado_atual.s6~q\ & (!\inst7|u_ctrl|estado_atual.s18~q\ & !\inst7|u_ctrl|estado_atual.s14~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst7|u_ctrl|estado_atual.s35~q\,
	datab => \inst7|u_ctrl|estado_atual.s6~q\,
	datac => \inst7|u_ctrl|estado_atual.s18~q\,
	datad => \inst7|u_ctrl|estado_atual.s14~q\,
	combout => \inst7|u_ctrl|WideOr48~0_combout\);

-- Location: LCCOMB_X26_Y17_N0
\inst7|u_ctrl|WideOr48~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst7|u_ctrl|WideOr48~1_combout\ = (!\inst7|u_ctrl|estado_atual.s39~q\ & (\inst7|u_ctrl|WideOr48~0_combout\ & !\inst7|u_ctrl|estado_atual.s27~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010000000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst7|u_ctrl|estado_atual.s39~q\,
	datab => \inst7|u_ctrl|WideOr48~0_combout\,
	datac => \inst7|u_ctrl|estado_atual.s27~q\,
	combout => \inst7|u_ctrl|WideOr48~1_combout\);

-- Location: LCCOMB_X25_Y17_N30
\inst7|u_ctrl|WideOr46\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst7|u_ctrl|WideOr46~combout\ = (((\inst7|u_ctrl|estado_atual.s17~q\) # (!\inst7|u_ctrl|WideOr48~1_combout\)) # (!\inst7|u_ctrl|WideOr44~2_combout\)) # (!\inst7|u_ctrl|WideOr49~3_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111101111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst7|u_ctrl|WideOr49~3_combout\,
	datab => \inst7|u_ctrl|WideOr44~2_combout\,
	datac => \inst7|u_ctrl|WideOr48~1_combout\,
	datad => \inst7|u_ctrl|estado_atual.s17~q\,
	combout => \inst7|u_ctrl|WideOr46~combout\);

-- Location: FF_X25_Y17_N31
\inst7|u_ctrl|Freq_out[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \inst7|u_ctrl|WideOr46~combout\,
	ena => \inst7|run_en~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst7|u_ctrl|Freq_out\(14));

-- Location: LCCOMB_X26_Y17_N28
\inst7|u_ctrl|WideOr47~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst7|u_ctrl|WideOr47~4_combout\ = (!\inst7|u_ctrl|estado_atual.s7~q\ & !\inst7|u_ctrl|estado_atual.s28~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst7|u_ctrl|estado_atual.s7~q\,
	datad => \inst7|u_ctrl|estado_atual.s28~q\,
	combout => \inst7|u_ctrl|WideOr47~4_combout\);

-- Location: LCCOMB_X26_Y17_N22
\inst7|u_ctrl|WideOr50~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst7|u_ctrl|WideOr50~0_combout\ = (!\inst7|u_ctrl|estado_atual.s38~q\ & (!\inst7|u_ctrl|estado_atual.s8~q\ & (!\inst7|u_ctrl|estado_atual.s19~q\ & !\inst7|u_ctrl|estado_atual.s29~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst7|u_ctrl|estado_atual.s38~q\,
	datab => \inst7|u_ctrl|estado_atual.s8~q\,
	datac => \inst7|u_ctrl|estado_atual.s19~q\,
	datad => \inst7|u_ctrl|estado_atual.s29~q\,
	combout => \inst7|u_ctrl|WideOr50~0_combout\);

-- Location: LCCOMB_X25_Y17_N26
\inst7|u_ctrl|WideOr47~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst7|u_ctrl|WideOr47~5_combout\ = (!\inst7|u_ctrl|estado_atual.s17~q\ & (\inst7|u_ctrl|WideOr50~0_combout\ & (\inst7|u_ctrl|WideOr44~3_combout\ & !\inst7|u_ctrl|estado_atual.s37~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst7|u_ctrl|estado_atual.s17~q\,
	datab => \inst7|u_ctrl|WideOr50~0_combout\,
	datac => \inst7|u_ctrl|WideOr44~3_combout\,
	datad => \inst7|u_ctrl|estado_atual.s37~q\,
	combout => \inst7|u_ctrl|WideOr47~5_combout\);

-- Location: LCCOMB_X26_Y17_N16
\inst7|u_ctrl|WideOr47\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst7|u_ctrl|WideOr47~combout\ = (\inst7|u_ctrl|estado_atual.s32~q\) # (((\inst7|u_ctrl|estado_atual.s11~q\) # (!\inst7|u_ctrl|WideOr47~5_combout\)) # (!\inst7|u_ctrl|WideOr47~4_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst7|u_ctrl|estado_atual.s32~q\,
	datab => \inst7|u_ctrl|WideOr47~4_combout\,
	datac => \inst7|u_ctrl|WideOr47~5_combout\,
	datad => \inst7|u_ctrl|estado_atual.s11~q\,
	combout => \inst7|u_ctrl|WideOr47~combout\);

-- Location: FF_X26_Y17_N17
\inst7|u_ctrl|Freq_out[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \inst7|u_ctrl|WideOr47~combout\,
	ena => \inst7|run_en~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst7|u_ctrl|Freq_out\(13));

-- Location: LCCOMB_X25_Y17_N12
\inst7|u_div|LessThan0~13\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst7|u_div|LessThan0~13_combout\ = (\inst7|u_ctrl|Freq_out\(14) & (((!\inst7|u_div|cnt\(13) & \inst7|u_ctrl|Freq_out\(13))) # (!\inst7|u_div|cnt\(14)))) # (!\inst7|u_ctrl|Freq_out\(14) & (!\inst7|u_div|cnt\(14) & (!\inst7|u_div|cnt\(13) & 
-- \inst7|u_ctrl|Freq_out\(13))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010101100100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst7|u_ctrl|Freq_out\(14),
	datab => \inst7|u_div|cnt\(14),
	datac => \inst7|u_div|cnt\(13),
	datad => \inst7|u_ctrl|Freq_out\(13),
	combout => \inst7|u_div|LessThan0~13_combout\);

-- Location: LCCOMB_X25_Y17_N18
\inst7|u_div|LessThan0~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst7|u_div|LessThan0~14_combout\ = (\inst7|u_div|cnt\(15) & (\inst7|u_ctrl|Freq_out\(15) & \inst7|u_div|LessThan0~13_combout\)) # (!\inst7|u_div|cnt\(15) & ((\inst7|u_ctrl|Freq_out\(15)) # (\inst7|u_div|LessThan0~13_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001100110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst7|u_div|cnt\(15),
	datac => \inst7|u_ctrl|Freq_out\(15),
	datad => \inst7|u_div|LessThan0~13_combout\,
	combout => \inst7|u_div|LessThan0~14_combout\);

-- Location: LCCOMB_X25_Y17_N22
\inst7|u_div|LessThan0~11\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst7|u_div|LessThan0~11_combout\ = (\inst7|u_ctrl|Freq_out\(14) & (\inst7|u_div|cnt\(14) & (\inst7|u_div|cnt\(15) $ (!\inst7|u_ctrl|Freq_out\(15))))) # (!\inst7|u_ctrl|Freq_out\(14) & (!\inst7|u_div|cnt\(14) & (\inst7|u_div|cnt\(15) $ 
-- (!\inst7|u_ctrl|Freq_out\(15)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000001001000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst7|u_ctrl|Freq_out\(14),
	datab => \inst7|u_div|cnt\(15),
	datac => \inst7|u_ctrl|Freq_out\(15),
	datad => \inst7|u_div|cnt\(14),
	combout => \inst7|u_div|LessThan0~11_combout\);

-- Location: LCCOMB_X25_Y17_N16
\inst7|u_ctrl|WideOr45~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst7|u_ctrl|WideOr45~0_combout\ = (\inst7|u_ctrl|WideOr44~3_combout\ & (\inst7|u_ctrl|WideOr55~3_combout\ & !\inst7|u_ctrl|estado_atual.s37~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst7|u_ctrl|WideOr44~3_combout\,
	datac => \inst7|u_ctrl|WideOr55~3_combout\,
	datad => \inst7|u_ctrl|estado_atual.s37~q\,
	combout => \inst7|u_ctrl|WideOr45~0_combout\);

-- Location: LCCOMB_X25_Y17_N20
\inst7|u_ctrl|WideOr48\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst7|u_ctrl|WideOr48~combout\ = (\inst7|u_ctrl|WideOr47~4_combout\ & (\inst7|u_ctrl|WideOr45~0_combout\ & (\inst7|u_ctrl|WideOr48~1_combout\ & !\inst7|u_ctrl|estado_atual.s17~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst7|u_ctrl|WideOr47~4_combout\,
	datab => \inst7|u_ctrl|WideOr45~0_combout\,
	datac => \inst7|u_ctrl|WideOr48~1_combout\,
	datad => \inst7|u_ctrl|estado_atual.s17~q\,
	combout => \inst7|u_ctrl|WideOr48~combout\);

-- Location: FF_X25_Y17_N21
\inst7|u_ctrl|Freq_out[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \inst7|u_ctrl|WideOr48~combout\,
	ena => \inst7|run_en~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst7|u_ctrl|Freq_out\(12));

-- Location: LCCOMB_X26_Y13_N0
\inst7|u_ctrl|WideOr49~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst7|u_ctrl|WideOr49~4_combout\ = (!\inst7|u_ctrl|estado_atual.s4~q\ & (!\inst7|u_ctrl|estado_atual.s2~q\ & (!\inst7|u_ctrl|estado_atual.s23~q\ & !\inst7|u_ctrl|estado_atual.s25~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst7|u_ctrl|estado_atual.s4~q\,
	datab => \inst7|u_ctrl|estado_atual.s2~q\,
	datac => \inst7|u_ctrl|estado_atual.s23~q\,
	datad => \inst7|u_ctrl|estado_atual.s25~q\,
	combout => \inst7|u_ctrl|WideOr49~4_combout\);

-- Location: LCCOMB_X26_Y17_N30
\inst7|u_ctrl|WideOr49\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst7|u_ctrl|WideOr49~combout\ = (((\inst7|u_ctrl|estado_atual.s40~q\) # (!\inst7|u_ctrl|WideOr49~4_combout\)) # (!\inst7|u_ctrl|WideOr49~2_combout\)) # (!\inst7|u_ctrl|WideOr47~5_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111011111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst7|u_ctrl|WideOr47~5_combout\,
	datab => \inst7|u_ctrl|WideOr49~2_combout\,
	datac => \inst7|u_ctrl|estado_atual.s40~q\,
	datad => \inst7|u_ctrl|WideOr49~4_combout\,
	combout => \inst7|u_ctrl|WideOr49~combout\);

-- Location: FF_X26_Y17_N31
\inst7|u_ctrl|Freq_out[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \inst7|u_ctrl|WideOr49~combout\,
	ena => \inst7|run_en~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst7|u_ctrl|Freq_out\(11));

-- Location: LCCOMB_X25_Y17_N14
\inst7|u_ctrl|WideOr50\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst7|u_ctrl|WideOr50~combout\ = (\inst7|u_ctrl|WideOr45~0_combout\ & (\inst7|u_ctrl|WideOr50~0_combout\ & !\inst7|u_ctrl|estado_atual.s17~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst7|u_ctrl|WideOr45~0_combout\,
	datac => \inst7|u_ctrl|WideOr50~0_combout\,
	datad => \inst7|u_ctrl|estado_atual.s17~q\,
	combout => \inst7|u_ctrl|WideOr50~combout\);

-- Location: FF_X25_Y17_N15
\inst7|u_ctrl|Freq_out[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \inst7|u_ctrl|WideOr50~combout\,
	ena => \inst7|run_en~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst7|u_ctrl|Freq_out\(10));

-- Location: LCCOMB_X25_Y17_N6
\inst7|u_ctrl|WideOr51\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst7|u_ctrl|WideOr51~combout\ = (\inst7|u_ctrl|estado_atual.s28~q\) # (((\inst7|u_ctrl|estado_atual.s7~q\) # (\inst7|u_ctrl|estado_atual.s17~q\)) # (!\inst7|u_ctrl|WideOr50~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst7|u_ctrl|estado_atual.s28~q\,
	datab => \inst7|u_ctrl|WideOr50~0_combout\,
	datac => \inst7|u_ctrl|estado_atual.s7~q\,
	datad => \inst7|u_ctrl|estado_atual.s17~q\,
	combout => \inst7|u_ctrl|WideOr51~combout\);

-- Location: FF_X25_Y17_N7
\inst7|u_ctrl|Freq_out[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \inst7|u_ctrl|WideOr51~combout\,
	ena => \inst7|run_en~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst7|u_ctrl|Freq_out\(9));

-- Location: LCCOMB_X25_Y17_N2
\inst7|u_ctrl|WideOr52~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst7|u_ctrl|WideOr52~0_combout\ = (!\inst7|u_ctrl|estado_atual.s17~q\ & \inst7|u_ctrl|WideOr49~4_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst7|u_ctrl|estado_atual.s17~q\,
	datad => \inst7|u_ctrl|WideOr49~4_combout\,
	combout => \inst7|u_ctrl|WideOr52~0_combout\);

-- Location: LCCOMB_X25_Y17_N28
\inst7|u_ctrl|WideOr52\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst7|u_ctrl|WideOr52~combout\ = (((!\inst7|u_ctrl|WideOr44~2_combout\) # (!\inst7|u_ctrl|WideOr48~1_combout\)) # (!\inst7|u_ctrl|WideOr52~0_combout\)) # (!\inst7|u_ctrl|WideOr49~3_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst7|u_ctrl|WideOr49~3_combout\,
	datab => \inst7|u_ctrl|WideOr52~0_combout\,
	datac => \inst7|u_ctrl|WideOr48~1_combout\,
	datad => \inst7|u_ctrl|WideOr44~2_combout\,
	combout => \inst7|u_ctrl|WideOr52~combout\);

-- Location: FF_X25_Y17_N29
\inst7|u_ctrl|Freq_out[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \inst7|u_ctrl|WideOr52~combout\,
	ena => \inst7|run_en~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst7|u_ctrl|Freq_out\(8));

-- Location: LCCOMB_X25_Y17_N8
\inst7|u_ctrl|WideOr54\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst7|u_ctrl|WideOr54~combout\ = (((\inst7|u_ctrl|estado_atual.s37~q\) # (!\inst7|u_ctrl|WideOr44~3_combout\)) # (!\inst7|u_ctrl|WideOr44~2_combout\)) # (!\inst7|u_ctrl|WideOr49~3_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111101111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst7|u_ctrl|WideOr49~3_combout\,
	datab => \inst7|u_ctrl|WideOr44~2_combout\,
	datac => \inst7|u_ctrl|WideOr44~3_combout\,
	datad => \inst7|u_ctrl|estado_atual.s37~q\,
	combout => \inst7|u_ctrl|WideOr54~combout\);

-- Location: FF_X25_Y17_N9
\inst7|u_ctrl|Freq_out[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \inst7|u_ctrl|WideOr54~combout\,
	ena => \inst7|run_en~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst7|u_ctrl|Freq_out\(6));

-- Location: LCCOMB_X25_Y17_N10
\inst7|u_ctrl|WideOr55\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst7|u_ctrl|WideOr55~combout\ = (!\inst7|u_ctrl|estado_atual.s17~q\ & (\inst7|u_ctrl|WideOr55~3_combout\ & \inst7|u_ctrl|WideOr49~4_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst7|u_ctrl|estado_atual.s17~q\,
	datac => \inst7|u_ctrl|WideOr55~3_combout\,
	datad => \inst7|u_ctrl|WideOr49~4_combout\,
	combout => \inst7|u_ctrl|WideOr55~combout\);

-- Location: FF_X24_Y17_N3
\inst7|u_ctrl|Freq_out[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	asdata => \inst7|u_ctrl|WideOr55~combout\,
	sload => VCC,
	ena => \inst7|run_en~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst7|u_ctrl|Freq_out\(5));

-- Location: LCCOMB_X25_Y17_N0
\inst7|u_ctrl|WideOr56\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst7|u_ctrl|WideOr56~combout\ = (\inst7|u_ctrl|WideOr44~3_combout\ & (\inst7|u_ctrl|WideOr52~0_combout\ & (\inst7|u_ctrl|WideOr55~3_combout\ & !\inst7|u_ctrl|estado_atual.s37~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst7|u_ctrl|WideOr44~3_combout\,
	datab => \inst7|u_ctrl|WideOr52~0_combout\,
	datac => \inst7|u_ctrl|WideOr55~3_combout\,
	datad => \inst7|u_ctrl|estado_atual.s37~q\,
	combout => \inst7|u_ctrl|WideOr56~combout\);

-- Location: FF_X24_Y17_N5
\inst7|u_ctrl|Freq_out[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	asdata => \inst7|u_ctrl|WideOr56~combout\,
	sload => VCC,
	ena => \inst7|run_en~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst7|u_ctrl|Freq_out\(4));

-- Location: LCCOMB_X25_Y17_N24
\inst7|u_ctrl|WideOr58\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst7|u_ctrl|WideOr58~combout\ = (\inst7|u_ctrl|WideOr48~1_combout\ & (\inst7|u_ctrl|WideOr55~3_combout\ & \inst7|u_ctrl|WideOr50~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst7|u_ctrl|WideOr48~1_combout\,
	datac => \inst7|u_ctrl|WideOr55~3_combout\,
	datad => \inst7|u_ctrl|WideOr50~0_combout\,
	combout => \inst7|u_ctrl|WideOr58~combout\);

-- Location: FF_X25_Y17_N25
\inst7|u_ctrl|Freq_out[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \inst7|u_ctrl|WideOr58~combout\,
	ena => \inst7|run_en~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst7|u_ctrl|Freq_out\(0));

-- Location: LCCOMB_X26_Y17_N8
\inst7|u_ctrl|WideOr57\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst7|u_ctrl|WideOr57~combout\ = (((\inst7|u_ctrl|estado_atual.s40~q\) # (!\inst7|u_ctrl|WideOr44~2_combout\)) # (!\inst7|u_ctrl|WideOr49~2_combout\)) # (!\inst7|u_ctrl|WideOr50~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111011111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst7|u_ctrl|WideOr50~0_combout\,
	datab => \inst7|u_ctrl|WideOr49~2_combout\,
	datac => \inst7|u_ctrl|estado_atual.s40~q\,
	datad => \inst7|u_ctrl|WideOr44~2_combout\,
	combout => \inst7|u_ctrl|WideOr57~combout\);

-- Location: FF_X24_Y17_N15
\inst7|u_ctrl|Freq_out[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	asdata => \inst7|u_ctrl|WideOr57~combout\,
	sload => VCC,
	ena => \inst7|run_en~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst7|u_ctrl|Freq_out\(1));

-- Location: LCCOMB_X24_Y17_N14
\inst7|u_div|LessThan0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst7|u_div|LessThan0~0_combout\ = (\inst7|u_ctrl|Freq_out\(1) & (((!\inst7|u_div|cnt\(0) & \inst7|u_ctrl|Freq_out\(0))) # (!\inst7|u_div|cnt\(1)))) # (!\inst7|u_ctrl|Freq_out\(1) & (!\inst7|u_div|cnt\(0) & (\inst7|u_ctrl|Freq_out\(0) & 
-- !\inst7|u_div|cnt\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000011110100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst7|u_div|cnt\(0),
	datab => \inst7|u_ctrl|Freq_out\(0),
	datac => \inst7|u_ctrl|Freq_out\(1),
	datad => \inst7|u_div|cnt\(1),
	combout => \inst7|u_div|LessThan0~0_combout\);

-- Location: LCCOMB_X24_Y17_N20
\inst7|u_div|LessThan0~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst7|u_div|LessThan0~1_combout\ = (\inst7|u_div|cnt\(3) & (!\inst7|u_div|cnt\(2) & (\inst7|u_div|LessThan0~0_combout\ & \inst7|u_ctrl|Freq_out\(9)))) # (!\inst7|u_div|cnt\(3) & ((\inst7|u_ctrl|Freq_out\(9)) # ((!\inst7|u_div|cnt\(2) & 
-- \inst7|u_div|LessThan0~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111010100010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst7|u_div|cnt\(3),
	datab => \inst7|u_div|cnt\(2),
	datac => \inst7|u_div|LessThan0~0_combout\,
	datad => \inst7|u_ctrl|Freq_out\(9),
	combout => \inst7|u_div|LessThan0~1_combout\);

-- Location: LCCOMB_X24_Y17_N18
\inst7|u_div|LessThan0~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst7|u_div|LessThan0~2_combout\ = (\inst7|u_div|cnt\(4) & (\inst7|u_ctrl|Freq_out\(4) & \inst7|u_div|LessThan0~1_combout\)) # (!\inst7|u_div|cnt\(4) & ((\inst7|u_ctrl|Freq_out\(4)) # (\inst7|u_div|LessThan0~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010101010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst7|u_div|cnt\(4),
	datac => \inst7|u_ctrl|Freq_out\(4),
	datad => \inst7|u_div|LessThan0~1_combout\,
	combout => \inst7|u_div|LessThan0~2_combout\);

-- Location: LCCOMB_X24_Y17_N16
\inst7|u_div|LessThan0~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst7|u_div|LessThan0~3_combout\ = (\inst7|u_div|cnt\(5) & (\inst7|u_ctrl|Freq_out\(5) & \inst7|u_div|LessThan0~2_combout\)) # (!\inst7|u_div|cnt\(5) & ((\inst7|u_ctrl|Freq_out\(5)) # (\inst7|u_div|LessThan0~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001100110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst7|u_div|cnt\(5),
	datac => \inst7|u_ctrl|Freq_out\(5),
	datad => \inst7|u_div|LessThan0~2_combout\,
	combout => \inst7|u_div|LessThan0~3_combout\);

-- Location: LCCOMB_X24_Y17_N22
\inst7|u_div|LessThan0~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst7|u_div|LessThan0~4_combout\ = (\inst7|u_div|cnt\(6) & (\inst7|u_ctrl|Freq_out\(6) & \inst7|u_div|LessThan0~3_combout\)) # (!\inst7|u_div|cnt\(6) & ((\inst7|u_ctrl|Freq_out\(6)) # (\inst7|u_div|LessThan0~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010101010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst7|u_div|cnt\(6),
	datac => \inst7|u_ctrl|Freq_out\(6),
	datad => \inst7|u_div|LessThan0~3_combout\,
	combout => \inst7|u_div|LessThan0~4_combout\);

-- Location: LCCOMB_X26_Y17_N10
\inst7|u_ctrl|WideOr53\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst7|u_ctrl|WideOr53~combout\ = (((\inst7|u_ctrl|estado_atual.s40~q\) # (!\inst7|u_ctrl|WideOr48~1_combout\)) # (!\inst7|u_ctrl|WideOr49~2_combout\)) # (!\inst7|u_ctrl|WideOr50~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111011111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst7|u_ctrl|WideOr50~0_combout\,
	datab => \inst7|u_ctrl|WideOr49~2_combout\,
	datac => \inst7|u_ctrl|estado_atual.s40~q\,
	datad => \inst7|u_ctrl|WideOr48~1_combout\,
	combout => \inst7|u_ctrl|WideOr53~combout\);

-- Location: FF_X25_Y17_N3
\inst7|u_ctrl|Freq_out[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	asdata => \inst7|u_ctrl|WideOr53~combout\,
	sload => VCC,
	ena => \inst7|run_en~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst7|u_ctrl|Freq_out\(7));

-- Location: LCCOMB_X24_Y17_N12
\inst7|u_div|LessThan0~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst7|u_div|LessThan0~5_combout\ = (\inst7|u_div|cnt\(7) & (\inst7|u_div|LessThan0~4_combout\ & \inst7|u_ctrl|Freq_out\(7))) # (!\inst7|u_div|cnt\(7) & ((\inst7|u_div|LessThan0~4_combout\) # (\inst7|u_ctrl|Freq_out\(7))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010101010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst7|u_div|cnt\(7),
	datac => \inst7|u_div|LessThan0~4_combout\,
	datad => \inst7|u_ctrl|Freq_out\(7),
	combout => \inst7|u_div|LessThan0~5_combout\);

-- Location: LCCOMB_X24_Y17_N30
\inst7|u_div|LessThan0~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst7|u_div|LessThan0~6_combout\ = (\inst7|u_ctrl|Freq_out\(8) & ((\inst7|u_div|LessThan0~5_combout\) # (!\inst7|u_div|cnt\(8)))) # (!\inst7|u_ctrl|Freq_out\(8) & (!\inst7|u_div|cnt\(8) & \inst7|u_div|LessThan0~5_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111100001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst7|u_ctrl|Freq_out\(8),
	datac => \inst7|u_div|cnt\(8),
	datad => \inst7|u_div|LessThan0~5_combout\,
	combout => \inst7|u_div|LessThan0~6_combout\);

-- Location: LCCOMB_X24_Y17_N0
\inst7|u_div|LessThan0~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst7|u_div|LessThan0~7_combout\ = (\inst7|u_ctrl|Freq_out\(9) & ((\inst7|u_div|LessThan0~6_combout\) # (!\inst7|u_div|cnt\(9)))) # (!\inst7|u_ctrl|Freq_out\(9) & (\inst7|u_div|LessThan0~6_combout\ & !\inst7|u_div|cnt\(9)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000011111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst7|u_ctrl|Freq_out\(9),
	datac => \inst7|u_div|LessThan0~6_combout\,
	datad => \inst7|u_div|cnt\(9),
	combout => \inst7|u_div|LessThan0~7_combout\);

-- Location: LCCOMB_X24_Y17_N6
\inst7|u_div|LessThan0~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst7|u_div|LessThan0~8_combout\ = (\inst7|u_div|cnt\(10) & (\inst7|u_ctrl|Freq_out\(10) & \inst7|u_div|LessThan0~7_combout\)) # (!\inst7|u_div|cnt\(10) & ((\inst7|u_ctrl|Freq_out\(10)) # (\inst7|u_div|LessThan0~7_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001100110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst7|u_div|cnt\(10),
	datac => \inst7|u_ctrl|Freq_out\(10),
	datad => \inst7|u_div|LessThan0~7_combout\,
	combout => \inst7|u_div|LessThan0~8_combout\);

-- Location: LCCOMB_X24_Y17_N2
\inst7|u_div|LessThan0~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst7|u_div|LessThan0~9_combout\ = (\inst7|u_ctrl|Freq_out\(11) & ((\inst7|u_div|LessThan0~8_combout\) # (!\inst7|u_div|cnt\(11)))) # (!\inst7|u_ctrl|Freq_out\(11) & (!\inst7|u_div|cnt\(11) & \inst7|u_div|LessThan0~8_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101100100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst7|u_ctrl|Freq_out\(11),
	datab => \inst7|u_div|cnt\(11),
	datad => \inst7|u_div|LessThan0~8_combout\,
	combout => \inst7|u_div|LessThan0~9_combout\);

-- Location: LCCOMB_X24_Y17_N24
\inst7|u_div|LessThan0~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst7|u_div|LessThan0~10_combout\ = (\inst7|u_div|cnt\(12) & (\inst7|u_ctrl|Freq_out\(12) & \inst7|u_div|LessThan0~9_combout\)) # (!\inst7|u_div|cnt\(12) & ((\inst7|u_ctrl|Freq_out\(12)) # (\inst7|u_div|LessThan0~9_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001100110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst7|u_div|cnt\(12),
	datac => \inst7|u_ctrl|Freq_out\(12),
	datad => \inst7|u_div|LessThan0~9_combout\,
	combout => \inst7|u_div|LessThan0~10_combout\);

-- Location: LCCOMB_X24_Y17_N26
\inst7|u_div|LessThan0~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst7|u_div|LessThan0~12_combout\ = (\inst7|u_div|LessThan0~11_combout\ & (\inst7|u_div|LessThan0~10_combout\ & (\inst7|u_ctrl|Freq_out\(13) $ (!\inst7|u_div|cnt\(13)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000010000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst7|u_ctrl|Freq_out\(13),
	datab => \inst7|u_div|LessThan0~11_combout\,
	datac => \inst7|u_div|cnt\(13),
	datad => \inst7|u_div|LessThan0~10_combout\,
	combout => \inst7|u_div|LessThan0~12_combout\);

-- Location: LCCOMB_X26_Y17_N20
\inst7|u_ctrl|WideOr44\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst7|u_ctrl|WideOr44~combout\ = (\inst7|u_ctrl|estado_atual.s32~q\) # ((\inst7|u_ctrl|estado_atual.s37~q\) # ((\inst7|u_ctrl|estado_atual.s11~q\) # (!\inst7|u_ctrl|WideOr44~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111101111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst7|u_ctrl|estado_atual.s32~q\,
	datab => \inst7|u_ctrl|estado_atual.s37~q\,
	datac => \inst7|u_ctrl|WideOr44~3_combout\,
	datad => \inst7|u_ctrl|estado_atual.s11~q\,
	combout => \inst7|u_ctrl|WideOr44~combout\);

-- Location: FF_X26_Y17_N21
\inst7|u_ctrl|Freq_out[16]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \inst7|u_ctrl|WideOr44~combout\,
	ena => \inst7|run_en~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst7|u_ctrl|Freq_out\(16));

-- Location: LCCOMB_X24_Y17_N28
\inst7|u_div|LessThan0~15\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst7|u_div|LessThan0~15_combout\ = (\inst7|u_div|cnt\(16) & (\inst7|u_ctrl|Freq_out\(16) & ((\inst7|u_div|LessThan0~14_combout\) # (\inst7|u_div|LessThan0~12_combout\)))) # (!\inst7|u_div|cnt\(16) & ((\inst7|u_div|LessThan0~14_combout\) # 
-- ((\inst7|u_div|LessThan0~12_combout\) # (\inst7|u_ctrl|Freq_out\(16)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110101010100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst7|u_div|cnt\(16),
	datab => \inst7|u_div|LessThan0~14_combout\,
	datac => \inst7|u_div|LessThan0~12_combout\,
	datad => \inst7|u_ctrl|Freq_out\(16),
	combout => \inst7|u_div|LessThan0~15_combout\);

-- Location: LCCOMB_X24_Y17_N10
\inst7|u_div|LessThan0~20\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst7|u_div|LessThan0~20_combout\ = (\inst7|u_div|LessThan0~19_combout\ & (\inst7|u_div|LessThan0~16_combout\ & (\inst7|u_div|LessThan0~17_combout\ & \inst7|u_div|LessThan0~15_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst7|u_div|LessThan0~19_combout\,
	datab => \inst7|u_div|LessThan0~16_combout\,
	datac => \inst7|u_div|LessThan0~17_combout\,
	datad => \inst7|u_div|LessThan0~15_combout\,
	combout => \inst7|u_div|LessThan0~20_combout\);

-- Location: LCCOMB_X24_Y17_N4
\inst7|u_div|LessThan0~21\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst7|u_div|LessThan0~21_combout\ = (!\inst7|u_div|cnt\(31) & !\inst7|u_div|LessThan0~20_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst7|u_div|cnt\(31),
	datad => \inst7|u_div|LessThan0~20_combout\,
	combout => \inst7|u_div|LessThan0~21_combout\);

-- Location: FF_X23_Y17_N1
\inst7|u_div|cnt[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \inst7|u_div|cnt[0]~32_combout\,
	sclr => \inst7|u_div|LessThan0~21_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst7|u_div|cnt\(0));

-- Location: LCCOMB_X23_Y17_N2
\inst7|u_div|cnt[1]~34\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst7|u_div|cnt[1]~34_combout\ = (\inst7|u_div|cnt\(1) & (!\inst7|u_div|cnt[0]~33\)) # (!\inst7|u_div|cnt\(1) & ((\inst7|u_div|cnt[0]~33\) # (GND)))
-- \inst7|u_div|cnt[1]~35\ = CARRY((!\inst7|u_div|cnt[0]~33\) # (!\inst7|u_div|cnt\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst7|u_div|cnt\(1),
	datad => VCC,
	cin => \inst7|u_div|cnt[0]~33\,
	combout => \inst7|u_div|cnt[1]~34_combout\,
	cout => \inst7|u_div|cnt[1]~35\);

-- Location: FF_X23_Y17_N3
\inst7|u_div|cnt[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \inst7|u_div|cnt[1]~34_combout\,
	sclr => \inst7|u_div|LessThan0~21_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst7|u_div|cnt\(1));

-- Location: LCCOMB_X23_Y17_N4
\inst7|u_div|cnt[2]~36\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst7|u_div|cnt[2]~36_combout\ = (\inst7|u_div|cnt\(2) & (\inst7|u_div|cnt[1]~35\ $ (GND))) # (!\inst7|u_div|cnt\(2) & (!\inst7|u_div|cnt[1]~35\ & VCC))
-- \inst7|u_div|cnt[2]~37\ = CARRY((\inst7|u_div|cnt\(2) & !\inst7|u_div|cnt[1]~35\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst7|u_div|cnt\(2),
	datad => VCC,
	cin => \inst7|u_div|cnt[1]~35\,
	combout => \inst7|u_div|cnt[2]~36_combout\,
	cout => \inst7|u_div|cnt[2]~37\);

-- Location: FF_X23_Y17_N5
\inst7|u_div|cnt[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \inst7|u_div|cnt[2]~36_combout\,
	sclr => \inst7|u_div|LessThan0~21_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst7|u_div|cnt\(2));

-- Location: LCCOMB_X23_Y17_N6
\inst7|u_div|cnt[3]~38\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst7|u_div|cnt[3]~38_combout\ = (\inst7|u_div|cnt\(3) & (!\inst7|u_div|cnt[2]~37\)) # (!\inst7|u_div|cnt\(3) & ((\inst7|u_div|cnt[2]~37\) # (GND)))
-- \inst7|u_div|cnt[3]~39\ = CARRY((!\inst7|u_div|cnt[2]~37\) # (!\inst7|u_div|cnt\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst7|u_div|cnt\(3),
	datad => VCC,
	cin => \inst7|u_div|cnt[2]~37\,
	combout => \inst7|u_div|cnt[3]~38_combout\,
	cout => \inst7|u_div|cnt[3]~39\);

-- Location: FF_X23_Y17_N7
\inst7|u_div|cnt[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \inst7|u_div|cnt[3]~38_combout\,
	sclr => \inst7|u_div|LessThan0~21_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst7|u_div|cnt\(3));

-- Location: LCCOMB_X23_Y17_N8
\inst7|u_div|cnt[4]~40\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst7|u_div|cnt[4]~40_combout\ = (\inst7|u_div|cnt\(4) & (\inst7|u_div|cnt[3]~39\ $ (GND))) # (!\inst7|u_div|cnt\(4) & (!\inst7|u_div|cnt[3]~39\ & VCC))
-- \inst7|u_div|cnt[4]~41\ = CARRY((\inst7|u_div|cnt\(4) & !\inst7|u_div|cnt[3]~39\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst7|u_div|cnt\(4),
	datad => VCC,
	cin => \inst7|u_div|cnt[3]~39\,
	combout => \inst7|u_div|cnt[4]~40_combout\,
	cout => \inst7|u_div|cnt[4]~41\);

-- Location: FF_X23_Y17_N9
\inst7|u_div|cnt[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \inst7|u_div|cnt[4]~40_combout\,
	sclr => \inst7|u_div|LessThan0~21_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst7|u_div|cnt\(4));

-- Location: LCCOMB_X23_Y17_N10
\inst7|u_div|cnt[5]~42\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst7|u_div|cnt[5]~42_combout\ = (\inst7|u_div|cnt\(5) & (!\inst7|u_div|cnt[4]~41\)) # (!\inst7|u_div|cnt\(5) & ((\inst7|u_div|cnt[4]~41\) # (GND)))
-- \inst7|u_div|cnt[5]~43\ = CARRY((!\inst7|u_div|cnt[4]~41\) # (!\inst7|u_div|cnt\(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst7|u_div|cnt\(5),
	datad => VCC,
	cin => \inst7|u_div|cnt[4]~41\,
	combout => \inst7|u_div|cnt[5]~42_combout\,
	cout => \inst7|u_div|cnt[5]~43\);

-- Location: FF_X23_Y17_N11
\inst7|u_div|cnt[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \inst7|u_div|cnt[5]~42_combout\,
	sclr => \inst7|u_div|LessThan0~21_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst7|u_div|cnt\(5));

-- Location: LCCOMB_X23_Y17_N12
\inst7|u_div|cnt[6]~44\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst7|u_div|cnt[6]~44_combout\ = (\inst7|u_div|cnt\(6) & (\inst7|u_div|cnt[5]~43\ $ (GND))) # (!\inst7|u_div|cnt\(6) & (!\inst7|u_div|cnt[5]~43\ & VCC))
-- \inst7|u_div|cnt[6]~45\ = CARRY((\inst7|u_div|cnt\(6) & !\inst7|u_div|cnt[5]~43\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst7|u_div|cnt\(6),
	datad => VCC,
	cin => \inst7|u_div|cnt[5]~43\,
	combout => \inst7|u_div|cnt[6]~44_combout\,
	cout => \inst7|u_div|cnt[6]~45\);

-- Location: FF_X23_Y17_N13
\inst7|u_div|cnt[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \inst7|u_div|cnt[6]~44_combout\,
	sclr => \inst7|u_div|LessThan0~21_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst7|u_div|cnt\(6));

-- Location: LCCOMB_X23_Y17_N14
\inst7|u_div|cnt[7]~46\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst7|u_div|cnt[7]~46_combout\ = (\inst7|u_div|cnt\(7) & (!\inst7|u_div|cnt[6]~45\)) # (!\inst7|u_div|cnt\(7) & ((\inst7|u_div|cnt[6]~45\) # (GND)))
-- \inst7|u_div|cnt[7]~47\ = CARRY((!\inst7|u_div|cnt[6]~45\) # (!\inst7|u_div|cnt\(7)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst7|u_div|cnt\(7),
	datad => VCC,
	cin => \inst7|u_div|cnt[6]~45\,
	combout => \inst7|u_div|cnt[7]~46_combout\,
	cout => \inst7|u_div|cnt[7]~47\);

-- Location: FF_X23_Y17_N15
\inst7|u_div|cnt[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \inst7|u_div|cnt[7]~46_combout\,
	sclr => \inst7|u_div|LessThan0~21_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst7|u_div|cnt\(7));

-- Location: LCCOMB_X23_Y17_N16
\inst7|u_div|cnt[8]~48\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst7|u_div|cnt[8]~48_combout\ = (\inst7|u_div|cnt\(8) & (\inst7|u_div|cnt[7]~47\ $ (GND))) # (!\inst7|u_div|cnt\(8) & (!\inst7|u_div|cnt[7]~47\ & VCC))
-- \inst7|u_div|cnt[8]~49\ = CARRY((\inst7|u_div|cnt\(8) & !\inst7|u_div|cnt[7]~47\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst7|u_div|cnt\(8),
	datad => VCC,
	cin => \inst7|u_div|cnt[7]~47\,
	combout => \inst7|u_div|cnt[8]~48_combout\,
	cout => \inst7|u_div|cnt[8]~49\);

-- Location: FF_X23_Y17_N17
\inst7|u_div|cnt[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \inst7|u_div|cnt[8]~48_combout\,
	sclr => \inst7|u_div|LessThan0~21_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst7|u_div|cnt\(8));

-- Location: LCCOMB_X23_Y17_N18
\inst7|u_div|cnt[9]~50\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst7|u_div|cnt[9]~50_combout\ = (\inst7|u_div|cnt\(9) & (!\inst7|u_div|cnt[8]~49\)) # (!\inst7|u_div|cnt\(9) & ((\inst7|u_div|cnt[8]~49\) # (GND)))
-- \inst7|u_div|cnt[9]~51\ = CARRY((!\inst7|u_div|cnt[8]~49\) # (!\inst7|u_div|cnt\(9)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst7|u_div|cnt\(9),
	datad => VCC,
	cin => \inst7|u_div|cnt[8]~49\,
	combout => \inst7|u_div|cnt[9]~50_combout\,
	cout => \inst7|u_div|cnt[9]~51\);

-- Location: FF_X23_Y17_N19
\inst7|u_div|cnt[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \inst7|u_div|cnt[9]~50_combout\,
	sclr => \inst7|u_div|LessThan0~21_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst7|u_div|cnt\(9));

-- Location: LCCOMB_X23_Y17_N20
\inst7|u_div|cnt[10]~52\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst7|u_div|cnt[10]~52_combout\ = (\inst7|u_div|cnt\(10) & (\inst7|u_div|cnt[9]~51\ $ (GND))) # (!\inst7|u_div|cnt\(10) & (!\inst7|u_div|cnt[9]~51\ & VCC))
-- \inst7|u_div|cnt[10]~53\ = CARRY((\inst7|u_div|cnt\(10) & !\inst7|u_div|cnt[9]~51\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst7|u_div|cnt\(10),
	datad => VCC,
	cin => \inst7|u_div|cnt[9]~51\,
	combout => \inst7|u_div|cnt[10]~52_combout\,
	cout => \inst7|u_div|cnt[10]~53\);

-- Location: FF_X23_Y17_N21
\inst7|u_div|cnt[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \inst7|u_div|cnt[10]~52_combout\,
	sclr => \inst7|u_div|LessThan0~21_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst7|u_div|cnt\(10));

-- Location: LCCOMB_X23_Y17_N22
\inst7|u_div|cnt[11]~54\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst7|u_div|cnt[11]~54_combout\ = (\inst7|u_div|cnt\(11) & (!\inst7|u_div|cnt[10]~53\)) # (!\inst7|u_div|cnt\(11) & ((\inst7|u_div|cnt[10]~53\) # (GND)))
-- \inst7|u_div|cnt[11]~55\ = CARRY((!\inst7|u_div|cnt[10]~53\) # (!\inst7|u_div|cnt\(11)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst7|u_div|cnt\(11),
	datad => VCC,
	cin => \inst7|u_div|cnt[10]~53\,
	combout => \inst7|u_div|cnt[11]~54_combout\,
	cout => \inst7|u_div|cnt[11]~55\);

-- Location: FF_X23_Y17_N23
\inst7|u_div|cnt[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \inst7|u_div|cnt[11]~54_combout\,
	sclr => \inst7|u_div|LessThan0~21_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst7|u_div|cnt\(11));

-- Location: LCCOMB_X23_Y17_N24
\inst7|u_div|cnt[12]~56\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst7|u_div|cnt[12]~56_combout\ = (\inst7|u_div|cnt\(12) & (\inst7|u_div|cnt[11]~55\ $ (GND))) # (!\inst7|u_div|cnt\(12) & (!\inst7|u_div|cnt[11]~55\ & VCC))
-- \inst7|u_div|cnt[12]~57\ = CARRY((\inst7|u_div|cnt\(12) & !\inst7|u_div|cnt[11]~55\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst7|u_div|cnt\(12),
	datad => VCC,
	cin => \inst7|u_div|cnt[11]~55\,
	combout => \inst7|u_div|cnt[12]~56_combout\,
	cout => \inst7|u_div|cnt[12]~57\);

-- Location: FF_X23_Y17_N25
\inst7|u_div|cnt[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \inst7|u_div|cnt[12]~56_combout\,
	sclr => \inst7|u_div|LessThan0~21_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst7|u_div|cnt\(12));

-- Location: LCCOMB_X23_Y17_N26
\inst7|u_div|cnt[13]~58\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst7|u_div|cnt[13]~58_combout\ = (\inst7|u_div|cnt\(13) & (!\inst7|u_div|cnt[12]~57\)) # (!\inst7|u_div|cnt\(13) & ((\inst7|u_div|cnt[12]~57\) # (GND)))
-- \inst7|u_div|cnt[13]~59\ = CARRY((!\inst7|u_div|cnt[12]~57\) # (!\inst7|u_div|cnt\(13)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst7|u_div|cnt\(13),
	datad => VCC,
	cin => \inst7|u_div|cnt[12]~57\,
	combout => \inst7|u_div|cnt[13]~58_combout\,
	cout => \inst7|u_div|cnt[13]~59\);

-- Location: FF_X23_Y17_N27
\inst7|u_div|cnt[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \inst7|u_div|cnt[13]~58_combout\,
	sclr => \inst7|u_div|LessThan0~21_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst7|u_div|cnt\(13));

-- Location: LCCOMB_X23_Y17_N28
\inst7|u_div|cnt[14]~60\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst7|u_div|cnt[14]~60_combout\ = (\inst7|u_div|cnt\(14) & (\inst7|u_div|cnt[13]~59\ $ (GND))) # (!\inst7|u_div|cnt\(14) & (!\inst7|u_div|cnt[13]~59\ & VCC))
-- \inst7|u_div|cnt[14]~61\ = CARRY((\inst7|u_div|cnt\(14) & !\inst7|u_div|cnt[13]~59\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst7|u_div|cnt\(14),
	datad => VCC,
	cin => \inst7|u_div|cnt[13]~59\,
	combout => \inst7|u_div|cnt[14]~60_combout\,
	cout => \inst7|u_div|cnt[14]~61\);

-- Location: FF_X23_Y17_N29
\inst7|u_div|cnt[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \inst7|u_div|cnt[14]~60_combout\,
	sclr => \inst7|u_div|LessThan0~21_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst7|u_div|cnt\(14));

-- Location: LCCOMB_X23_Y17_N30
\inst7|u_div|cnt[15]~62\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst7|u_div|cnt[15]~62_combout\ = (\inst7|u_div|cnt\(15) & (!\inst7|u_div|cnt[14]~61\)) # (!\inst7|u_div|cnt\(15) & ((\inst7|u_div|cnt[14]~61\) # (GND)))
-- \inst7|u_div|cnt[15]~63\ = CARRY((!\inst7|u_div|cnt[14]~61\) # (!\inst7|u_div|cnt\(15)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst7|u_div|cnt\(15),
	datad => VCC,
	cin => \inst7|u_div|cnt[14]~61\,
	combout => \inst7|u_div|cnt[15]~62_combout\,
	cout => \inst7|u_div|cnt[15]~63\);

-- Location: FF_X23_Y17_N31
\inst7|u_div|cnt[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \inst7|u_div|cnt[15]~62_combout\,
	sclr => \inst7|u_div|LessThan0~21_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst7|u_div|cnt\(15));

-- Location: LCCOMB_X23_Y16_N0
\inst7|u_div|cnt[16]~64\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst7|u_div|cnt[16]~64_combout\ = (\inst7|u_div|cnt\(16) & (\inst7|u_div|cnt[15]~63\ $ (GND))) # (!\inst7|u_div|cnt\(16) & (!\inst7|u_div|cnt[15]~63\ & VCC))
-- \inst7|u_div|cnt[16]~65\ = CARRY((\inst7|u_div|cnt\(16) & !\inst7|u_div|cnt[15]~63\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst7|u_div|cnt\(16),
	datad => VCC,
	cin => \inst7|u_div|cnt[15]~63\,
	combout => \inst7|u_div|cnt[16]~64_combout\,
	cout => \inst7|u_div|cnt[16]~65\);

-- Location: FF_X23_Y16_N1
\inst7|u_div|cnt[16]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \inst7|u_div|cnt[16]~64_combout\,
	sclr => \inst7|u_div|LessThan0~21_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst7|u_div|cnt\(16));

-- Location: LCCOMB_X23_Y16_N2
\inst7|u_div|cnt[17]~66\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst7|u_div|cnt[17]~66_combout\ = (\inst7|u_div|cnt\(17) & (!\inst7|u_div|cnt[16]~65\)) # (!\inst7|u_div|cnt\(17) & ((\inst7|u_div|cnt[16]~65\) # (GND)))
-- \inst7|u_div|cnt[17]~67\ = CARRY((!\inst7|u_div|cnt[16]~65\) # (!\inst7|u_div|cnt\(17)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst7|u_div|cnt\(17),
	datad => VCC,
	cin => \inst7|u_div|cnt[16]~65\,
	combout => \inst7|u_div|cnt[17]~66_combout\,
	cout => \inst7|u_div|cnt[17]~67\);

-- Location: FF_X23_Y16_N3
\inst7|u_div|cnt[17]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \inst7|u_div|cnt[17]~66_combout\,
	sclr => \inst7|u_div|LessThan0~21_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst7|u_div|cnt\(17));

-- Location: LCCOMB_X23_Y16_N4
\inst7|u_div|cnt[18]~68\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst7|u_div|cnt[18]~68_combout\ = (\inst7|u_div|cnt\(18) & (\inst7|u_div|cnt[17]~67\ $ (GND))) # (!\inst7|u_div|cnt\(18) & (!\inst7|u_div|cnt[17]~67\ & VCC))
-- \inst7|u_div|cnt[18]~69\ = CARRY((\inst7|u_div|cnt\(18) & !\inst7|u_div|cnt[17]~67\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst7|u_div|cnt\(18),
	datad => VCC,
	cin => \inst7|u_div|cnt[17]~67\,
	combout => \inst7|u_div|cnt[18]~68_combout\,
	cout => \inst7|u_div|cnt[18]~69\);

-- Location: FF_X23_Y16_N5
\inst7|u_div|cnt[18]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \inst7|u_div|cnt[18]~68_combout\,
	sclr => \inst7|u_div|LessThan0~21_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst7|u_div|cnt\(18));

-- Location: LCCOMB_X23_Y16_N6
\inst7|u_div|cnt[19]~70\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst7|u_div|cnt[19]~70_combout\ = (\inst7|u_div|cnt\(19) & (!\inst7|u_div|cnt[18]~69\)) # (!\inst7|u_div|cnt\(19) & ((\inst7|u_div|cnt[18]~69\) # (GND)))
-- \inst7|u_div|cnt[19]~71\ = CARRY((!\inst7|u_div|cnt[18]~69\) # (!\inst7|u_div|cnt\(19)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst7|u_div|cnt\(19),
	datad => VCC,
	cin => \inst7|u_div|cnt[18]~69\,
	combout => \inst7|u_div|cnt[19]~70_combout\,
	cout => \inst7|u_div|cnt[19]~71\);

-- Location: FF_X23_Y16_N7
\inst7|u_div|cnt[19]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \inst7|u_div|cnt[19]~70_combout\,
	sclr => \inst7|u_div|LessThan0~21_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst7|u_div|cnt\(19));

-- Location: LCCOMB_X23_Y16_N8
\inst7|u_div|cnt[20]~72\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst7|u_div|cnt[20]~72_combout\ = (\inst7|u_div|cnt\(20) & (\inst7|u_div|cnt[19]~71\ $ (GND))) # (!\inst7|u_div|cnt\(20) & (!\inst7|u_div|cnt[19]~71\ & VCC))
-- \inst7|u_div|cnt[20]~73\ = CARRY((\inst7|u_div|cnt\(20) & !\inst7|u_div|cnt[19]~71\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst7|u_div|cnt\(20),
	datad => VCC,
	cin => \inst7|u_div|cnt[19]~71\,
	combout => \inst7|u_div|cnt[20]~72_combout\,
	cout => \inst7|u_div|cnt[20]~73\);

-- Location: FF_X23_Y16_N9
\inst7|u_div|cnt[20]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \inst7|u_div|cnt[20]~72_combout\,
	sclr => \inst7|u_div|LessThan0~21_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst7|u_div|cnt\(20));

-- Location: LCCOMB_X23_Y16_N10
\inst7|u_div|cnt[21]~74\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst7|u_div|cnt[21]~74_combout\ = (\inst7|u_div|cnt\(21) & (!\inst7|u_div|cnt[20]~73\)) # (!\inst7|u_div|cnt\(21) & ((\inst7|u_div|cnt[20]~73\) # (GND)))
-- \inst7|u_div|cnt[21]~75\ = CARRY((!\inst7|u_div|cnt[20]~73\) # (!\inst7|u_div|cnt\(21)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst7|u_div|cnt\(21),
	datad => VCC,
	cin => \inst7|u_div|cnt[20]~73\,
	combout => \inst7|u_div|cnt[21]~74_combout\,
	cout => \inst7|u_div|cnt[21]~75\);

-- Location: FF_X23_Y16_N11
\inst7|u_div|cnt[21]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \inst7|u_div|cnt[21]~74_combout\,
	sclr => \inst7|u_div|LessThan0~21_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst7|u_div|cnt\(21));

-- Location: LCCOMB_X23_Y16_N12
\inst7|u_div|cnt[22]~76\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst7|u_div|cnt[22]~76_combout\ = (\inst7|u_div|cnt\(22) & (\inst7|u_div|cnt[21]~75\ $ (GND))) # (!\inst7|u_div|cnt\(22) & (!\inst7|u_div|cnt[21]~75\ & VCC))
-- \inst7|u_div|cnt[22]~77\ = CARRY((\inst7|u_div|cnt\(22) & !\inst7|u_div|cnt[21]~75\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst7|u_div|cnt\(22),
	datad => VCC,
	cin => \inst7|u_div|cnt[21]~75\,
	combout => \inst7|u_div|cnt[22]~76_combout\,
	cout => \inst7|u_div|cnt[22]~77\);

-- Location: FF_X23_Y16_N13
\inst7|u_div|cnt[22]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \inst7|u_div|cnt[22]~76_combout\,
	sclr => \inst7|u_div|LessThan0~21_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst7|u_div|cnt\(22));

-- Location: LCCOMB_X23_Y16_N14
\inst7|u_div|cnt[23]~78\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst7|u_div|cnt[23]~78_combout\ = (\inst7|u_div|cnt\(23) & (!\inst7|u_div|cnt[22]~77\)) # (!\inst7|u_div|cnt\(23) & ((\inst7|u_div|cnt[22]~77\) # (GND)))
-- \inst7|u_div|cnt[23]~79\ = CARRY((!\inst7|u_div|cnt[22]~77\) # (!\inst7|u_div|cnt\(23)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst7|u_div|cnt\(23),
	datad => VCC,
	cin => \inst7|u_div|cnt[22]~77\,
	combout => \inst7|u_div|cnt[23]~78_combout\,
	cout => \inst7|u_div|cnt[23]~79\);

-- Location: FF_X23_Y16_N15
\inst7|u_div|cnt[23]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \inst7|u_div|cnt[23]~78_combout\,
	sclr => \inst7|u_div|LessThan0~21_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst7|u_div|cnt\(23));

-- Location: LCCOMB_X23_Y16_N16
\inst7|u_div|cnt[24]~80\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst7|u_div|cnt[24]~80_combout\ = (\inst7|u_div|cnt\(24) & (\inst7|u_div|cnt[23]~79\ $ (GND))) # (!\inst7|u_div|cnt\(24) & (!\inst7|u_div|cnt[23]~79\ & VCC))
-- \inst7|u_div|cnt[24]~81\ = CARRY((\inst7|u_div|cnt\(24) & !\inst7|u_div|cnt[23]~79\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst7|u_div|cnt\(24),
	datad => VCC,
	cin => \inst7|u_div|cnt[23]~79\,
	combout => \inst7|u_div|cnt[24]~80_combout\,
	cout => \inst7|u_div|cnt[24]~81\);

-- Location: FF_X23_Y16_N17
\inst7|u_div|cnt[24]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \inst7|u_div|cnt[24]~80_combout\,
	sclr => \inst7|u_div|LessThan0~21_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst7|u_div|cnt\(24));

-- Location: LCCOMB_X23_Y16_N18
\inst7|u_div|cnt[25]~82\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst7|u_div|cnt[25]~82_combout\ = (\inst7|u_div|cnt\(25) & (!\inst7|u_div|cnt[24]~81\)) # (!\inst7|u_div|cnt\(25) & ((\inst7|u_div|cnt[24]~81\) # (GND)))
-- \inst7|u_div|cnt[25]~83\ = CARRY((!\inst7|u_div|cnt[24]~81\) # (!\inst7|u_div|cnt\(25)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst7|u_div|cnt\(25),
	datad => VCC,
	cin => \inst7|u_div|cnt[24]~81\,
	combout => \inst7|u_div|cnt[25]~82_combout\,
	cout => \inst7|u_div|cnt[25]~83\);

-- Location: FF_X23_Y16_N19
\inst7|u_div|cnt[25]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \inst7|u_div|cnt[25]~82_combout\,
	sclr => \inst7|u_div|LessThan0~21_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst7|u_div|cnt\(25));

-- Location: LCCOMB_X23_Y16_N20
\inst7|u_div|cnt[26]~84\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst7|u_div|cnt[26]~84_combout\ = (\inst7|u_div|cnt\(26) & (\inst7|u_div|cnt[25]~83\ $ (GND))) # (!\inst7|u_div|cnt\(26) & (!\inst7|u_div|cnt[25]~83\ & VCC))
-- \inst7|u_div|cnt[26]~85\ = CARRY((\inst7|u_div|cnt\(26) & !\inst7|u_div|cnt[25]~83\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst7|u_div|cnt\(26),
	datad => VCC,
	cin => \inst7|u_div|cnt[25]~83\,
	combout => \inst7|u_div|cnt[26]~84_combout\,
	cout => \inst7|u_div|cnt[26]~85\);

-- Location: FF_X23_Y16_N21
\inst7|u_div|cnt[26]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \inst7|u_div|cnt[26]~84_combout\,
	sclr => \inst7|u_div|LessThan0~21_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst7|u_div|cnt\(26));

-- Location: LCCOMB_X23_Y16_N22
\inst7|u_div|cnt[27]~86\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst7|u_div|cnt[27]~86_combout\ = (\inst7|u_div|cnt\(27) & (!\inst7|u_div|cnt[26]~85\)) # (!\inst7|u_div|cnt\(27) & ((\inst7|u_div|cnt[26]~85\) # (GND)))
-- \inst7|u_div|cnt[27]~87\ = CARRY((!\inst7|u_div|cnt[26]~85\) # (!\inst7|u_div|cnt\(27)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst7|u_div|cnt\(27),
	datad => VCC,
	cin => \inst7|u_div|cnt[26]~85\,
	combout => \inst7|u_div|cnt[27]~86_combout\,
	cout => \inst7|u_div|cnt[27]~87\);

-- Location: FF_X23_Y16_N23
\inst7|u_div|cnt[27]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \inst7|u_div|cnt[27]~86_combout\,
	sclr => \inst7|u_div|LessThan0~21_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst7|u_div|cnt\(27));

-- Location: LCCOMB_X23_Y16_N24
\inst7|u_div|cnt[28]~88\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst7|u_div|cnt[28]~88_combout\ = (\inst7|u_div|cnt\(28) & (\inst7|u_div|cnt[27]~87\ $ (GND))) # (!\inst7|u_div|cnt\(28) & (!\inst7|u_div|cnt[27]~87\ & VCC))
-- \inst7|u_div|cnt[28]~89\ = CARRY((\inst7|u_div|cnt\(28) & !\inst7|u_div|cnt[27]~87\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst7|u_div|cnt\(28),
	datad => VCC,
	cin => \inst7|u_div|cnt[27]~87\,
	combout => \inst7|u_div|cnt[28]~88_combout\,
	cout => \inst7|u_div|cnt[28]~89\);

-- Location: FF_X23_Y16_N25
\inst7|u_div|cnt[28]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \inst7|u_div|cnt[28]~88_combout\,
	sclr => \inst7|u_div|LessThan0~21_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst7|u_div|cnt\(28));

-- Location: LCCOMB_X23_Y16_N26
\inst7|u_div|cnt[29]~90\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst7|u_div|cnt[29]~90_combout\ = (\inst7|u_div|cnt\(29) & (!\inst7|u_div|cnt[28]~89\)) # (!\inst7|u_div|cnt\(29) & ((\inst7|u_div|cnt[28]~89\) # (GND)))
-- \inst7|u_div|cnt[29]~91\ = CARRY((!\inst7|u_div|cnt[28]~89\) # (!\inst7|u_div|cnt\(29)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst7|u_div|cnt\(29),
	datad => VCC,
	cin => \inst7|u_div|cnt[28]~89\,
	combout => \inst7|u_div|cnt[29]~90_combout\,
	cout => \inst7|u_div|cnt[29]~91\);

-- Location: FF_X23_Y16_N27
\inst7|u_div|cnt[29]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \inst7|u_div|cnt[29]~90_combout\,
	sclr => \inst7|u_div|LessThan0~21_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst7|u_div|cnt\(29));

-- Location: LCCOMB_X23_Y16_N28
\inst7|u_div|cnt[30]~92\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst7|u_div|cnt[30]~92_combout\ = (\inst7|u_div|cnt\(30) & (\inst7|u_div|cnt[29]~91\ $ (GND))) # (!\inst7|u_div|cnt\(30) & (!\inst7|u_div|cnt[29]~91\ & VCC))
-- \inst7|u_div|cnt[30]~93\ = CARRY((\inst7|u_div|cnt\(30) & !\inst7|u_div|cnt[29]~91\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst7|u_div|cnt\(30),
	datad => VCC,
	cin => \inst7|u_div|cnt[29]~91\,
	combout => \inst7|u_div|cnt[30]~92_combout\,
	cout => \inst7|u_div|cnt[30]~93\);

-- Location: FF_X23_Y16_N29
\inst7|u_div|cnt[30]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \inst7|u_div|cnt[30]~92_combout\,
	sclr => \inst7|u_div|LessThan0~21_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst7|u_div|cnt\(30));

-- Location: LCCOMB_X23_Y16_N30
\inst7|u_div|cnt[31]~94\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst7|u_div|cnt[31]~94_combout\ = \inst7|u_div|cnt\(31) $ (\inst7|u_div|cnt[30]~93\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst7|u_div|cnt\(31),
	cin => \inst7|u_div|cnt[30]~93\,
	combout => \inst7|u_div|cnt[31]~94_combout\);

-- Location: FF_X23_Y16_N31
\inst7|u_div|cnt[31]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \inst7|u_div|cnt[31]~94_combout\,
	sclr => \inst7|u_div|LessThan0~21_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst7|u_div|cnt\(31));

-- Location: LCCOMB_X24_Y17_N8
\inst7|u_div|toggle~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst7|u_div|toggle~0_combout\ = \inst7|u_div|toggle~q\ $ (((!\inst7|u_div|cnt\(31) & !\inst7|u_div|LessThan0~20_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011000011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst7|u_div|cnt\(31),
	datac => \inst7|u_div|toggle~q\,
	datad => \inst7|u_div|LessThan0~20_combout\,
	combout => \inst7|u_div|toggle~0_combout\);

-- Location: FF_X24_Y17_N9
\inst7|u_div|toggle\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \inst7|u_div|toggle~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst7|u_div|toggle~q\);

-- Location: LCCOMB_X28_Y16_N12
\inst7|buzzer~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst7|buzzer~0_combout\ = (\inst7|mute_en~q\ & (\inst7|u_div|toggle~q\ & \inst7|run_en~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst7|mute_en~q\,
	datac => \inst7|u_div|toggle~q\,
	datad => \inst7|run_en~q\,
	combout => \inst7|buzzer~0_combout\);

-- Location: LCCOMB_X22_Y14_N0
\inst1|lcd_bus[7]~59\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|lcd_bus[7]~59_combout\ = !\inst1|Mux0~2_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst1|Mux0~2_combout\,
	combout => \inst1|lcd_bus[7]~59_combout\);

-- Location: FF_X22_Y14_N1
\inst1|lcd_bus[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \inst1|lcd_bus[7]~59_combout\,
	ena => \inst1|lcd_bus[9]~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|lcd_bus\(7));

-- Location: LCCOMB_X21_Y14_N24
\inst2|Selector38~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|Selector38~0_combout\ = (\inst2|estado.PRONTO~q\ & (\inst1|lcd_bus\(7) & \inst1|lcd_enable~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|estado.PRONTO~q\,
	datab => \inst1|lcd_bus\(7),
	datac => \inst1|lcd_enable~q\,
	combout => \inst2|Selector38~0_combout\);

-- Location: LCCOMB_X19_Y14_N4
\inst2|lcd_data[2]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|lcd_data[2]~1_combout\ = (\inst2|estado.INICIALIZACAO~q\ & (!\inst2|Add0~62_combout\ & ((\inst2|Add0~60_combout\) # (!\inst2|busy~8_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|Add0~60_combout\,
	datab => \inst2|estado.INICIALIZACAO~q\,
	datac => \inst2|Add0~62_combout\,
	datad => \inst2|busy~8_combout\,
	combout => \inst2|lcd_data[2]~1_combout\);

-- Location: LCCOMB_X21_Y14_N14
\inst2|lcd_data[2]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|lcd_data[2]~2_combout\ = (\inst2|rs~3_combout\ & (!\inst2|estado.ENVIAR~q\ & ((!\inst2|lcd_data[2]~1_combout\) # (!\inst2|lcd_data[2]~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|rs~3_combout\,
	datab => \inst2|estado.ENVIAR~q\,
	datac => \inst2|lcd_data[2]~0_combout\,
	datad => \inst2|lcd_data[2]~1_combout\,
	combout => \inst2|lcd_data[2]~2_combout\);

-- Location: FF_X21_Y14_N25
\inst2|lcd_data[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \inst2|Selector38~0_combout\,
	ena => \inst2|lcd_data[2]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst2|lcd_data\(7));

-- Location: LCCOMB_X22_Y14_N12
\inst1|Mux3~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|Mux3~0_combout\ = (\inst1|Add0~2_combout\) # (\inst1|Add0~8_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101011111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|Add0~2_combout\,
	datac => \inst1|Add0~8_combout\,
	combout => \inst1|Mux3~0_combout\);

-- Location: LCCOMB_X28_Y16_N30
\inst1|key1_d1~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|key1_d1~feeder_combout\ = \inst3|stable\(1)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst3|stable\(1),
	combout => \inst1|key1_d1~feeder_combout\);

-- Location: FF_X28_Y16_N31
\inst1|key1_d1\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \inst1|key1_d1~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|key1_d1~q\);

-- Location: LCCOMB_X26_Y15_N2
\inst1|key1_d2~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|key1_d2~feeder_combout\ = \inst1|key1_d1~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst1|key1_d1~q\,
	combout => \inst1|key1_d2~feeder_combout\);

-- Location: FF_X26_Y15_N3
\inst1|key1_d2\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \inst1|key1_d2~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|key1_d2~q\);

-- Location: LCCOMB_X26_Y15_N18
\inst1|key1_rise~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|key1_rise~0_combout\ = (\inst1|key1_d1~q\ & !\inst1|key1_d2~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst1|key1_d1~q\,
	datad => \inst1|key1_d2~q\,
	combout => \inst1|key1_rise~0_combout\);

-- Location: FF_X26_Y15_N19
\inst1|key1_rise\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \inst1|key1_rise~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|key1_rise~q\);

-- Location: LCCOMB_X26_Y15_N12
\inst1|Selector94~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|Selector94~0_combout\ = (\inst1|state.PLAYING~q\ & \inst7|u_ctrl|song_end_r~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|state.PLAYING~q\,
	datad => \inst7|u_ctrl|song_end_r~q\,
	combout => \inst1|Selector94~0_combout\);

-- Location: FF_X26_Y15_N13
\inst1|state.BACK_MENU\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \inst1|Selector94~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|state.BACK_MENU~q\);

-- Location: LCCOMB_X26_Y15_N16
\inst1|key2_d1~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|key2_d1~feeder_combout\ = \inst3|stable\(2)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst3|stable\(2),
	combout => \inst1|key2_d1~feeder_combout\);

-- Location: FF_X26_Y15_N17
\inst1|key2_d1\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \inst1|key2_d1~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|key2_d1~q\);

-- Location: LCCOMB_X26_Y15_N26
\inst1|key2_d2~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|key2_d2~feeder_combout\ = \inst1|key2_d1~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst1|key2_d1~q\,
	combout => \inst1|key2_d2~feeder_combout\);

-- Location: FF_X26_Y15_N27
\inst1|key2_d2\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \inst1|key2_d2~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|key2_d2~q\);

-- Location: LCCOMB_X26_Y15_N28
\inst1|key2_rise~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|key2_rise~0_combout\ = (!\inst1|key2_d2~q\ & \inst1|key2_d1~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst1|key2_d2~q\,
	datad => \inst1|key2_d1~q\,
	combout => \inst1|key2_rise~0_combout\);

-- Location: FF_X26_Y15_N29
\inst1|key2_rise\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \inst1|key2_rise~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|key2_rise~q\);

-- Location: LCCOMB_X26_Y15_N6
\inst1|Selector93~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|Selector93~0_combout\ = (\inst1|state.PLAYING~q\ & (\inst1|key1_rise~q\ & (!\inst1|state.SHOW_MENU~q\))) # (!\inst1|state.PLAYING~q\ & ((\inst1|key2_rise~q\) # ((\inst1|key1_rise~q\ & !\inst1|state.SHOW_MENU~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101110100001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|state.PLAYING~q\,
	datab => \inst1|key1_rise~q\,
	datac => \inst1|state.SHOW_MENU~q\,
	datad => \inst1|key2_rise~q\,
	combout => \inst1|Selector93~0_combout\);

-- Location: LCCOMB_X26_Y15_N20
\inst1|Selector93~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|Selector93~1_combout\ = (\inst1|Selector94~0_combout\) # ((\inst1|state~12_combout\) # ((\inst1|state.BACK_MENU~q\) # (\inst1|Selector93~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|Selector94~0_combout\,
	datab => \inst1|state~12_combout\,
	datac => \inst1|state.BACK_MENU~q\,
	datad => \inst1|Selector93~0_combout\,
	combout => \inst1|Selector93~1_combout\);

-- Location: LCCOMB_X26_Y15_N14
\inst1|state.SHOW_MENU~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|state.SHOW_MENU~0_combout\ = (\inst1|Selector93~1_combout\ & (!\inst1|state.BACK_MENU~q\)) # (!\inst1|Selector93~1_combout\ & ((\inst1|state.SHOW_MENU~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst1|state.BACK_MENU~q\,
	datac => \inst1|state.SHOW_MENU~q\,
	datad => \inst1|Selector93~1_combout\,
	combout => \inst1|state.SHOW_MENU~0_combout\);

-- Location: FF_X26_Y15_N15
\inst1|state.SHOW_MENU\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \inst1|state.SHOW_MENU~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|state.SHOW_MENU~q\);

-- Location: LCCOMB_X26_Y15_N10
\inst1|Selector93~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|Selector93~3_combout\ = (\inst1|key1_rise~q\ & !\inst1|state.SHOW_MENU~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst1|key1_rise~q\,
	datac => \inst1|state.SHOW_MENU~q\,
	combout => \inst1|Selector93~3_combout\);

-- Location: FF_X26_Y15_N11
\inst1|state.SONG1\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \inst1|Selector93~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|state.SONG1~q\);

-- Location: LCCOMB_X26_Y15_N24
\inst1|Selector92~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|Selector92~0_combout\ = (\inst1|key2_rise~q\ & (!\inst1|state.SHOW_MENU~q\ & !\inst1|key1_rise~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst1|key2_rise~q\,
	datac => \inst1|state.SHOW_MENU~q\,
	datad => \inst1|key1_rise~q\,
	combout => \inst1|Selector92~0_combout\);

-- Location: FF_X26_Y15_N25
\inst1|state.SONG2\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \inst1|Selector92~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|state.SONG2~q\);

-- Location: LCCOMB_X25_Y15_N30
\inst1|state~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|state~12_combout\ = (\inst1|state.SONG1~q\) # (\inst1|state.SONG2~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst1|state.SONG1~q\,
	datad => \inst1|state.SONG2~q\,
	combout => \inst1|state~12_combout\);

-- Location: LCCOMB_X26_Y15_N4
\inst1|Selector93~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|Selector93~2_combout\ = (\inst1|state~12_combout\ & (((\inst1|state.PLAYING~q\ & !\inst1|Selector93~1_combout\)) # (!\inst1|state.BACK_MENU~q\))) # (!\inst1|state~12_combout\ & (((\inst1|state.PLAYING~q\ & !\inst1|Selector93~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010001011110010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|state~12_combout\,
	datab => \inst1|state.BACK_MENU~q\,
	datac => \inst1|state.PLAYING~q\,
	datad => \inst1|Selector93~1_combout\,
	combout => \inst1|Selector93~2_combout\);

-- Location: FF_X26_Y15_N5
\inst1|state.PLAYING\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \inst1|Selector93~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|state.PLAYING~q\);

-- Location: LCCOMB_X25_Y15_N18
\inst1|Selector71~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|Selector71~0_combout\ = (\inst7|run_en~q\) # (!\inst1|state.PLAYING~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst7|run_en~q\,
	datad => \inst1|state.PLAYING~q\,
	combout => \inst1|Selector71~0_combout\);

-- Location: FF_X23_Y15_N9
\inst1|L2[53]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	asdata => \inst1|state.PLAYING~q\,
	sload => VCC,
	ena => \inst1|Selector71~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|L2\(53));

-- Location: LCCOMB_X25_Y15_N20
\inst1|Selector45~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|Selector45~0_combout\ = (\inst1|state.BACK_MENU~q\) # (\inst1|state.PLAYING~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|state.BACK_MENU~q\,
	datad => \inst1|state.PLAYING~q\,
	combout => \inst1|Selector45~0_combout\);

-- Location: FF_X25_Y15_N21
\inst1|L2[105]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \inst1|Selector45~0_combout\,
	ena => \inst1|Selector71~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|L2\(105));

-- Location: LCCOMB_X23_Y15_N26
\inst1|Mux3~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|Mux3~12_combout\ = (\inst1|LessThan0~0_combout\ & ((\inst1|Add0~2_combout\) # ((\inst1|Add0~0_combout\)))) # (!\inst1|LessThan0~0_combout\ & (!\inst1|char\(5) & ((\inst1|Add0~2_combout\) # (\inst1|Add0~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010100011111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|LessThan0~0_combout\,
	datab => \inst1|Add0~2_combout\,
	datac => \inst1|Add0~0_combout\,
	datad => \inst1|char\(5),
	combout => \inst1|Mux3~12_combout\);

-- Location: LCCOMB_X23_Y14_N22
\inst1|Mux3~13\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|Mux3~13_combout\ = (!\inst1|Mux3~12_combout\ & ((\inst1|char~0_combout\ & ((!\inst1|L2\(105)))) # (!\inst1|char~0_combout\ & (\inst1|L2\(53)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001100001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|L2\(53),
	datab => \inst1|L2\(105),
	datac => \inst1|Mux3~12_combout\,
	datad => \inst1|char~0_combout\,
	combout => \inst1|Mux3~13_combout\);

-- Location: LCCOMB_X26_Y15_N0
\inst1|Selector4~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|Selector4~0_combout\ = (\inst1|state.PLAYING~q\) # (!\inst1|state.SHOW_MENU~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst1|state.SHOW_MENU~q\,
	datad => \inst1|state.PLAYING~q\,
	combout => \inst1|Selector4~0_combout\);

-- Location: FF_X26_Y15_N1
\inst1|L1[113]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \inst1|Selector4~0_combout\,
	ena => \inst1|Selector71~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|L1\(113));

-- Location: LCCOMB_X23_Y15_N6
\inst1|Mux3~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|Mux3~1_combout\ = ((\inst1|L1\(113)) # ((!\inst1|LessThan0~0_combout\ & \inst1|char\(5)))) # (!\inst1|Add0~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111011111110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|LessThan0~0_combout\,
	datab => \inst1|Add0~0_combout\,
	datac => \inst1|L1\(113),
	datad => \inst1|char\(5),
	combout => \inst1|Mux3~1_combout\);

-- Location: FF_X23_Y15_N1
\inst1|L1[52]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	asdata => \inst1|state.BACK_MENU~q\,
	sload => VCC,
	ena => \inst1|Selector71~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|L1\(52));

-- Location: LCCOMB_X24_Y14_N12
\inst1|Mux3~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|Mux3~2_combout\ = (\inst1|char~1_combout\ & ((\inst1|L1\(52)))) # (!\inst1|char~1_combout\ & (!\inst1|L2\(105)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000001010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|L2\(105),
	datac => \inst1|L1\(52),
	datad => \inst1|char~1_combout\,
	combout => \inst1|Mux3~2_combout\);

-- Location: FF_X25_Y15_N23
\inst1|L1[70]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	asdata => \inst1|state.SHOW_MENU~q\,
	sload => VCC,
	ena => \inst1|Selector71~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|L1\(70));

-- Location: LCCOMB_X23_Y15_N30
\inst1|Mux3~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|Mux3~3_combout\ = (\inst1|L1\(70)) # ((\inst1|Add0~0_combout\ & ((\inst1|LessThan0~0_combout\) # (!\inst1|char\(5)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101010111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|L1\(70),
	datab => \inst1|char\(5),
	datac => \inst1|Add0~0_combout\,
	datad => \inst1|LessThan0~0_combout\,
	combout => \inst1|Mux3~3_combout\);

-- Location: LCCOMB_X23_Y14_N16
\inst1|Mux3~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|Mux3~4_combout\ = (\inst1|char~0_combout\ & ((\inst1|char~5_combout\) # ((\inst1|Mux3~2_combout\)))) # (!\inst1|char~0_combout\ & (!\inst1|char~5_combout\ & ((\inst1|Mux3~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100110101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|char~0_combout\,
	datab => \inst1|char~5_combout\,
	datac => \inst1|Mux3~2_combout\,
	datad => \inst1|Mux3~3_combout\,
	combout => \inst1|Mux3~4_combout\);

-- Location: LCCOMB_X23_Y15_N2
\inst1|Mux3~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|Mux3~5_combout\ = ((\inst1|Add0~0_combout\ & ((\inst1|LessThan0~0_combout\) # (!\inst1|char\(5))))) # (!\inst1|L2\(53))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011001111110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|LessThan0~0_combout\,
	datab => \inst1|L2\(53),
	datac => \inst1|Add0~0_combout\,
	datad => \inst1|char\(5),
	combout => \inst1|Mux3~5_combout\);

-- Location: LCCOMB_X23_Y14_N26
\inst1|Mux3~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|Mux3~6_combout\ = (\inst1|Mux3~4_combout\ & (((\inst1|Mux3~5_combout\) # (!\inst1|char~5_combout\)))) # (!\inst1|Mux3~4_combout\ & (\inst1|Mux3~1_combout\ & ((\inst1|char~5_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110001011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|Mux3~1_combout\,
	datab => \inst1|Mux3~4_combout\,
	datac => \inst1|Mux3~5_combout\,
	datad => \inst1|char~5_combout\,
	combout => \inst1|Mux3~6_combout\);

-- Location: LCCOMB_X24_Y14_N6
\inst1|Mux3~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|Mux3~7_combout\ = (\inst1|char~0_combout\ & ((!\inst1|L2\(105)))) # (!\inst1|char~0_combout\ & (\inst1|L2\(53)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101011111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|L2\(53),
	datac => \inst1|char~0_combout\,
	datad => \inst1|L2\(105),
	combout => \inst1|Mux3~7_combout\);

-- Location: LCCOMB_X24_Y14_N4
\inst1|Mux3~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|Mux3~8_combout\ = ((\inst1|char~5_combout\) # (\inst1|char~1_combout\ $ (!\inst1|char~0_combout\))) # (!\inst1|Mux3~7_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111010111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|Mux3~7_combout\,
	datab => \inst1|char~1_combout\,
	datac => \inst1|char~0_combout\,
	datad => \inst1|char~5_combout\,
	combout => \inst1|Mux3~8_combout\);

-- Location: LCCOMB_X23_Y14_N12
\inst1|Mux3~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|Mux3~9_combout\ = (\inst1|L2\(53) & (\inst1|char~5_combout\ & !\inst1|char~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|L2\(53),
	datab => \inst1|char~5_combout\,
	datad => \inst1|char~0_combout\,
	combout => \inst1|Mux3~9_combout\);

-- Location: LCCOMB_X23_Y15_N24
\inst1|Mux3~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|Mux3~10_combout\ = ((\inst1|L1\(52)) # ((!\inst1|LessThan0~0_combout\ & \inst1|char\(5)))) # (!\inst1|Add0~2_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111101001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|LessThan0~0_combout\,
	datab => \inst1|char\(5),
	datac => \inst1|Add0~2_combout\,
	datad => \inst1|L1\(52),
	combout => \inst1|Mux3~10_combout\);

-- Location: LCCOMB_X23_Y14_N30
\inst1|Mux3~11\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|Mux3~11_combout\ = (\inst1|Mux3~9_combout\) # ((\inst1|char~0_combout\ & (\inst1|Mux3~10_combout\ & \inst1|char~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|Mux3~9_combout\,
	datab => \inst1|char~0_combout\,
	datac => \inst1|Mux3~10_combout\,
	datad => \inst1|char~1_combout\,
	combout => \inst1|Mux3~11_combout\);

-- Location: LCCOMB_X23_Y14_N20
\inst1|lcd_bus[6]~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|lcd_bus[6]~8_combout\ = (\inst1|char~3_combout\ & (((\inst1|char~4_combout\)))) # (!\inst1|char~3_combout\ & ((\inst1|char~4_combout\ & (\inst1|Mux3~8_combout\)) # (!\inst1|char~4_combout\ & ((\inst1|Mux3~11_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|Mux3~8_combout\,
	datab => \inst1|char~3_combout\,
	datac => \inst1|Mux3~11_combout\,
	datad => \inst1|char~4_combout\,
	combout => \inst1|lcd_bus[6]~8_combout\);

-- Location: LCCOMB_X23_Y14_N4
\inst1|lcd_bus[6]~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|lcd_bus[6]~9_combout\ = (\inst1|char~3_combout\ & ((\inst1|lcd_bus[6]~8_combout\ & (\inst1|Mux3~13_combout\)) # (!\inst1|lcd_bus[6]~8_combout\ & ((\inst1|Mux3~6_combout\))))) # (!\inst1|char~3_combout\ & (((\inst1|lcd_bus[6]~8_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|Mux3~13_combout\,
	datab => \inst1|char~3_combout\,
	datac => \inst1|Mux3~6_combout\,
	datad => \inst1|lcd_bus[6]~8_combout\,
	combout => \inst1|lcd_bus[6]~9_combout\);

-- Location: LCCOMB_X22_Y14_N10
\inst1|lcd_bus[6]~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|lcd_bus[6]~10_combout\ = (\inst1|char~2_combout\ & (\inst1|Mux3~0_combout\ & (\inst1|lcd_bus\(6)))) # (!\inst1|char~2_combout\ & (((\inst1|lcd_bus[6]~9_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011001110000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|Mux3~0_combout\,
	datab => \inst1|char~2_combout\,
	datac => \inst1|lcd_bus\(6),
	datad => \inst1|lcd_bus[6]~9_combout\,
	combout => \inst1|lcd_bus[6]~10_combout\);

-- Location: LCCOMB_X22_Y14_N30
\inst1|lcd_bus[0]~11\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|lcd_bus[0]~11_combout\ = (\inst1|process_1~0_combout\ & (((!\inst1|Add0~6_combout\ & !\inst1|Add0~4_combout\)) # (!\inst1|char~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|Add0~6_combout\,
	datab => \inst1|process_1~0_combout\,
	datac => \inst1|Add0~4_combout\,
	datad => \inst1|char~2_combout\,
	combout => \inst1|lcd_bus[0]~11_combout\);

-- Location: FF_X22_Y14_N11
\inst1|lcd_bus[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \inst1|lcd_bus[6]~10_combout\,
	ena => \inst1|lcd_bus[0]~11_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|lcd_bus\(6));

-- Location: LCCOMB_X21_Y14_N30
\inst2|Selector39~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|Selector39~0_combout\ = (\inst1|lcd_bus\(6) & (\inst1|lcd_enable~q\ & \inst2|estado.PRONTO~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst1|lcd_bus\(6),
	datac => \inst1|lcd_enable~q\,
	datad => \inst2|estado.PRONTO~q\,
	combout => \inst2|Selector39~0_combout\);

-- Location: FF_X21_Y14_N31
\inst2|lcd_data[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \inst2|Selector39~0_combout\,
	ena => \inst2|lcd_data[2]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst2|lcd_data\(6));

-- Location: LCCOMB_X23_Y14_N18
\inst1|Mux3~20\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|Mux3~20_combout\ = (\inst1|char~5_combout\ & (!\inst1|L2\(53))) # (!\inst1|char~5_combout\ & ((\inst1|char~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111011101000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|L2\(53),
	datab => \inst1|char~5_combout\,
	datad => \inst1|char~1_combout\,
	combout => \inst1|Mux3~20_combout\);

-- Location: LCCOMB_X23_Y14_N8
\inst1|Mux3~21\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|Mux3~21_combout\ = (\inst1|char~0_combout\ & (((!\inst1|Mux3~10_combout\)) # (!\inst1|char~1_combout\))) # (!\inst1|char~0_combout\ & (((\inst1|Mux3~20_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111111100101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|char~0_combout\,
	datab => \inst1|char~1_combout\,
	datac => \inst1|Mux3~10_combout\,
	datad => \inst1|Mux3~20_combout\,
	combout => \inst1|Mux3~21_combout\);

-- Location: LCCOMB_X23_Y15_N28
\inst1|Mux3~18\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|Mux3~18_combout\ = (\inst1|Add0~8_combout\ & (\inst1|L1\(52) & ((\inst1|LessThan0~0_combout\) # (!\inst1|char\(5)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|Add0~8_combout\,
	datab => \inst1|L1\(52),
	datac => \inst1|LessThan0~0_combout\,
	datad => \inst1|char\(5),
	combout => \inst1|Mux3~18_combout\);

-- Location: LCCOMB_X23_Y14_N14
\inst1|Mux3~17\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|Mux3~17_combout\ = (!\inst1|char~5_combout\ & ((\inst1|L2\(53) & (\inst1|char~1_combout\ & !\inst1|char~0_combout\)) # (!\inst1|L2\(53) & (!\inst1|char~1_combout\ & \inst1|char~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|L2\(53),
	datab => \inst1|char~1_combout\,
	datac => \inst1|char~0_combout\,
	datad => \inst1|char~5_combout\,
	combout => \inst1|Mux3~17_combout\);

-- Location: LCCOMB_X23_Y14_N24
\inst1|Mux3~19\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|Mux3~19_combout\ = (\inst1|Mux3~17_combout\) # ((\inst1|Mux3~18_combout\ & ((\inst1|char~1_combout\) # (\inst1|char~5_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110011111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|char~1_combout\,
	datab => \inst1|Mux3~18_combout\,
	datac => \inst1|Mux3~17_combout\,
	datad => \inst1|char~5_combout\,
	combout => \inst1|Mux3~19_combout\);

-- Location: LCCOMB_X23_Y14_N10
\inst1|lcd_bus[5]~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|lcd_bus[5]~12_combout\ = (\inst1|char~4_combout\ & ((\inst1|char~3_combout\) # ((\inst1|Mux3~19_combout\)))) # (!\inst1|char~4_combout\ & (!\inst1|char~3_combout\ & (\inst1|Mux3~21_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|char~4_combout\,
	datab => \inst1|char~3_combout\,
	datac => \inst1|Mux3~21_combout\,
	datad => \inst1|Mux3~19_combout\,
	combout => \inst1|lcd_bus[5]~12_combout\);

-- Location: LCCOMB_X24_Y14_N10
\inst1|Mux3~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|Mux3~14_combout\ = (\inst1|char~1_combout\ & ((!\inst1|L1\(52)))) # (!\inst1|char~1_combout\ & (\inst1|L2\(105)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|L2\(105),
	datac => \inst1|L1\(52),
	datad => \inst1|char~1_combout\,
	combout => \inst1|Mux3~14_combout\);

-- Location: LCCOMB_X23_Y14_N6
\inst1|Mux3~15\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|Mux3~15_combout\ = (\inst1|char~0_combout\ & ((\inst1|char~5_combout\) # ((\inst1|Mux3~14_combout\)))) # (!\inst1|char~0_combout\ & (!\inst1|char~5_combout\ & ((!\inst1|Mux3~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010100010111001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|char~0_combout\,
	datab => \inst1|char~5_combout\,
	datac => \inst1|Mux3~14_combout\,
	datad => \inst1|Mux3~3_combout\,
	combout => \inst1|Mux3~15_combout\);

-- Location: LCCOMB_X23_Y14_N28
\inst1|Mux3~16\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|Mux3~16_combout\ = (\inst1|char~5_combout\ & ((\inst1|Mux3~15_combout\ & (\inst1|L2\(53))) # (!\inst1|Mux3~15_combout\ & ((!\inst1|Mux3~1_combout\))))) # (!\inst1|char~5_combout\ & (((\inst1|Mux3~15_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101100001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|L2\(53),
	datab => \inst1|char~5_combout\,
	datac => \inst1|Mux3~1_combout\,
	datad => \inst1|Mux3~15_combout\,
	combout => \inst1|Mux3~16_combout\);

-- Location: LCCOMB_X23_Y14_N0
\inst1|Mux3~22\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|Mux3~22_combout\ = (\inst1|Mux3~12_combout\) # ((\inst1|char~0_combout\ & ((\inst1|L2\(105)))) # (!\inst1|char~0_combout\ & (!\inst1|L2\(53))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110011110101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|L2\(53),
	datab => \inst1|L2\(105),
	datac => \inst1|Mux3~12_combout\,
	datad => \inst1|char~0_combout\,
	combout => \inst1|Mux3~22_combout\);

-- Location: LCCOMB_X23_Y14_N2
\inst1|lcd_bus[5]~13\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|lcd_bus[5]~13_combout\ = (\inst1|lcd_bus[5]~12_combout\ & (((\inst1|Mux3~22_combout\)) # (!\inst1|char~3_combout\))) # (!\inst1|lcd_bus[5]~12_combout\ & (\inst1|char~3_combout\ & (\inst1|Mux3~16_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101001100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|lcd_bus[5]~12_combout\,
	datab => \inst1|char~3_combout\,
	datac => \inst1|Mux3~16_combout\,
	datad => \inst1|Mux3~22_combout\,
	combout => \inst1|lcd_bus[5]~13_combout\);

-- Location: LCCOMB_X22_Y14_N16
\inst1|lcd_bus[5]~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|lcd_bus[5]~14_combout\ = (\inst1|char~2_combout\ & (((\inst1|lcd_bus\(5))) # (!\inst1|Mux3~0_combout\))) # (!\inst1|char~2_combout\ & (((\inst1|lcd_bus[5]~13_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111011111000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|Mux3~0_combout\,
	datab => \inst1|char~2_combout\,
	datac => \inst1|lcd_bus\(5),
	datad => \inst1|lcd_bus[5]~13_combout\,
	combout => \inst1|lcd_bus[5]~14_combout\);

-- Location: FF_X22_Y14_N17
\inst1|lcd_bus[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \inst1|lcd_bus[5]~14_combout\,
	ena => \inst1|lcd_bus[0]~11_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|lcd_bus\(5));

-- Location: LCCOMB_X21_Y14_N28
\inst2|Selector40~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|Selector40~2_combout\ = (!\inst2|estado.PRONTO~q\ & ((\inst2|Add0~62_combout\) # (!\inst2|estado.INICIALIZACAO~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000001010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|estado.PRONTO~q\,
	datac => \inst2|Add0~62_combout\,
	datad => \inst2|estado.INICIALIZACAO~q\,
	combout => \inst2|Selector40~2_combout\);

-- Location: LCCOMB_X21_Y14_N18
\inst2|Selector40~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|Selector40~3_combout\ = (\inst2|Selector40~2_combout\) # ((!\inst2|estado.PRONTO~q\ & (!\inst2|Add0~60_combout\ & \inst2|LessThan1~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|estado.PRONTO~q\,
	datab => \inst2|Selector40~2_combout\,
	datac => \inst2|Add0~60_combout\,
	datad => \inst2|LessThan1~2_combout\,
	combout => \inst2|Selector40~3_combout\);

-- Location: LCCOMB_X21_Y14_N8
\inst2|Selector40~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|Selector40~4_combout\ = (\inst2|Selector40~3_combout\) # ((\inst2|estado.PRONTO~q\ & (\inst1|lcd_bus\(5) & \inst1|lcd_enable~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|estado.PRONTO~q\,
	datab => \inst1|lcd_bus\(5),
	datac => \inst1|lcd_enable~q\,
	datad => \inst2|Selector40~3_combout\,
	combout => \inst2|Selector40~4_combout\);

-- Location: FF_X21_Y14_N9
\inst2|lcd_data[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \inst2|Selector40~4_combout\,
	ena => \inst2|lcd_data[2]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst2|lcd_data\(5));

-- Location: FF_X25_Y15_N31
\inst1|L1[67]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \inst1|state~12_combout\,
	ena => \inst1|Selector71~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|L1\(67));

-- Location: LCCOMB_X25_Y14_N26
\inst1|Mux3~26\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|Mux3~26_combout\ = (!\inst1|char~0_combout\ & ((\inst1|char~1_combout\ & ((\inst1|L1\(67)))) # (!\inst1|char~1_combout\ & (\inst1|L2\(53)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|char~0_combout\,
	datab => \inst1|L2\(53),
	datac => \inst1|L1\(67),
	datad => \inst1|char~1_combout\,
	combout => \inst1|Mux3~26_combout\);

-- Location: LCCOMB_X26_Y14_N30
\inst1|Mux3~27\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|Mux3~27_combout\ = (\inst1|Mux3~26_combout\) # ((\inst1|L1\(52) & \inst1|char~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst1|L1\(52),
	datac => \inst1|Mux3~26_combout\,
	datad => \inst1|char~0_combout\,
	combout => \inst1|Mux3~27_combout\);

-- Location: LCCOMB_X26_Y14_N12
\inst1|Mux3~23\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|Mux3~23_combout\ = \inst1|char~1_combout\ $ (((\inst1|char~0_combout\ & ((\inst1|L2\(105)))) # (!\inst1|char~0_combout\ & (!\inst1|L1\(52)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101010011001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|char~1_combout\,
	datab => \inst1|L1\(52),
	datac => \inst1|L2\(105),
	datad => \inst1|char~0_combout\,
	combout => \inst1|Mux3~23_combout\);

-- Location: LCCOMB_X25_Y14_N18
\inst1|Mux3~25\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|Mux3~25_combout\ = (\inst1|L1\(70)) # ((\inst1|char~0_combout\) # (!\inst1|char~1_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110111011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|L1\(70),
	datab => \inst1|char~1_combout\,
	datad => \inst1|char~0_combout\,
	combout => \inst1|Mux3~25_combout\);

-- Location: LCCOMB_X25_Y15_N0
\inst1|L2~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|L2~0_combout\ = (\inst1|state.BACK_MENU~q\) # (!\inst1|state.SHOW_MENU~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst1|state.SHOW_MENU~q\,
	datad => \inst1|state.BACK_MENU~q\,
	combout => \inst1|L2~0_combout\);

-- Location: FF_X25_Y15_N1
\inst1|L1[73]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \inst1|L2~0_combout\,
	ena => \inst1|Selector71~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|L1\(73));

-- Location: LCCOMB_X25_Y14_N0
\inst1|Mux3~24\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|Mux3~24_combout\ = ((\inst1|char~0_combout\ & (\inst1|char~1_combout\ & \inst1|L1\(73)))) # (!\inst1|Mux3~3_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|char~0_combout\,
	datab => \inst1|char~1_combout\,
	datac => \inst1|L1\(73),
	datad => \inst1|Mux3~3_combout\,
	combout => \inst1|Mux3~24_combout\);

-- Location: LCCOMB_X25_Y14_N12
\inst1|lcd_bus[4]~15\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|lcd_bus[4]~15_combout\ = (\inst1|char~5_combout\ & (((\inst1|char~4_combout\) # (\inst1|Mux3~24_combout\)))) # (!\inst1|char~5_combout\ & (!\inst1|Mux3~25_combout\ & (!\inst1|char~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110111000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|Mux3~25_combout\,
	datab => \inst1|char~5_combout\,
	datac => \inst1|char~4_combout\,
	datad => \inst1|Mux3~24_combout\,
	combout => \inst1|lcd_bus[4]~15_combout\);

-- Location: LCCOMB_X26_Y14_N20
\inst1|lcd_bus[4]~16\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|lcd_bus[4]~16_combout\ = (\inst1|char~4_combout\ & ((\inst1|lcd_bus[4]~15_combout\ & (\inst1|Mux3~27_combout\)) # (!\inst1|lcd_bus[4]~15_combout\ & ((\inst1|Mux3~23_combout\))))) # (!\inst1|char~4_combout\ & (((\inst1|lcd_bus[4]~15_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|Mux3~27_combout\,
	datab => \inst1|Mux3~23_combout\,
	datac => \inst1|char~4_combout\,
	datad => \inst1|lcd_bus[4]~15_combout\,
	combout => \inst1|lcd_bus[4]~16_combout\);

-- Location: LCCOMB_X26_Y14_N26
\inst1|Mux3~28\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|Mux3~28_combout\ = (\inst1|L1\(52) & (!\inst1|char~1_combout\ & \inst1|char~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst1|L1\(52),
	datac => \inst1|char~1_combout\,
	datad => \inst1|char~0_combout\,
	combout => \inst1|Mux3~28_combout\);

-- Location: LCCOMB_X26_Y15_N30
\inst1|Selector69~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|Selector69~0_combout\ = (\inst1|state.SONG2~q\) # ((\inst1|state.PLAYING~q\) # (!\inst1|state.SHOW_MENU~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst1|state.SONG2~q\,
	datac => \inst1|state.PLAYING~q\,
	datad => \inst1|state.SHOW_MENU~q\,
	combout => \inst1|Selector69~0_combout\);

-- Location: FF_X26_Y15_N31
\inst1|L2[60]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \inst1|Selector69~0_combout\,
	ena => \inst1|Selector71~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|L2\(60));

-- Location: LCCOMB_X25_Y15_N12
\inst1|L2[48]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|L2[48]~1_combout\ = !\inst1|state.SONG1~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst1|state.SONG1~q\,
	combout => \inst1|L2[48]~1_combout\);

-- Location: FF_X25_Y15_N13
\inst1|L2[48]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \inst1|L2[48]~1_combout\,
	ena => \inst1|Selector71~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|L2\(48));

-- Location: LCCOMB_X26_Y14_N4
\inst1|lcd_bus[4]~17\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|lcd_bus[4]~17_combout\ = (\inst1|char~0_combout\ & ((\inst1|char~1_combout\ & ((\inst1|L2\(48)))) # (!\inst1|char~1_combout\ & (\inst1|L2\(60)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|L2\(60),
	datab => \inst1|L2\(48),
	datac => \inst1|char~1_combout\,
	datad => \inst1|char~0_combout\,
	combout => \inst1|lcd_bus[4]~17_combout\);

-- Location: LCCOMB_X26_Y14_N18
\inst1|lcd_bus[4]~18\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|lcd_bus[4]~18_combout\ = (\inst1|lcd_bus[4]~17_combout\) # ((!\inst1|char~1_combout\ & (\inst1|L1\(52) & !\inst1|char~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|char~1_combout\,
	datab => \inst1|L1\(52),
	datac => \inst1|lcd_bus[4]~17_combout\,
	datad => \inst1|char~0_combout\,
	combout => \inst1|lcd_bus[4]~18_combout\);

-- Location: LCCOMB_X26_Y14_N0
\inst1|lcd_bus[4]~19\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|lcd_bus[4]~19_combout\ = (\inst1|char~5_combout\ & (((\inst1|lcd_bus[4]~18_combout\)))) # (!\inst1|char~5_combout\ & (\inst1|char~1_combout\ & (\inst1|L2\(53))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100000001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|char~1_combout\,
	datab => \inst1|L2\(53),
	datac => \inst1|char~5_combout\,
	datad => \inst1|lcd_bus[4]~18_combout\,
	combout => \inst1|lcd_bus[4]~19_combout\);

-- Location: LCCOMB_X26_Y14_N22
\inst1|lcd_bus[4]~20\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|lcd_bus[4]~20_combout\ = (\inst1|char~4_combout\ & (\inst1|Mux3~28_combout\)) # (!\inst1|char~4_combout\ & ((\inst1|lcd_bus[4]~19_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|Mux3~28_combout\,
	datac => \inst1|char~4_combout\,
	datad => \inst1|lcd_bus[4]~19_combout\,
	combout => \inst1|lcd_bus[4]~20_combout\);

-- Location: LCCOMB_X22_Y14_N28
\inst1|lcd_bus[4]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|lcd_bus[4]~0_combout\ = (\inst1|char~3_combout\ & ((\inst1|lcd_bus[4]~20_combout\))) # (!\inst1|char~3_combout\ & (\inst1|lcd_bus[4]~16_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|char~3_combout\,
	datab => \inst1|lcd_bus[4]~16_combout\,
	datad => \inst1|lcd_bus[4]~20_combout\,
	combout => \inst1|lcd_bus[4]~0_combout\);

-- Location: LCCOMB_X22_Y14_N8
\inst1|Mux5~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|Mux5~0_combout\ = (\inst1|lcd_bus\(4) & ((\inst1|Add0~8_combout\) # (\inst1|Add0~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|Add0~8_combout\,
	datac => \inst1|Add0~2_combout\,
	datad => \inst1|lcd_bus\(4),
	combout => \inst1|Mux5~0_combout\);

-- Location: FF_X22_Y14_N29
\inst1|lcd_bus[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \inst1|lcd_bus[4]~0_combout\,
	asdata => \inst1|Mux5~0_combout\,
	sload => \inst1|char~2_combout\,
	ena => \inst1|lcd_bus[0]~11_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|lcd_bus\(4));

-- Location: LCCOMB_X21_Y14_N2
\inst2|Selector41~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|Selector41~2_combout\ = (\inst2|Selector40~3_combout\) # ((\inst2|estado.PRONTO~q\ & (\inst1|lcd_bus\(4) & \inst1|lcd_enable~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|estado.PRONTO~q\,
	datab => \inst1|lcd_bus\(4),
	datac => \inst1|lcd_enable~q\,
	datad => \inst2|Selector40~3_combout\,
	combout => \inst2|Selector41~2_combout\);

-- Location: FF_X21_Y14_N3
\inst2|lcd_data[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \inst2|Selector41~2_combout\,
	ena => \inst2|lcd_data[2]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst2|lcd_data\(4));

-- Location: LCCOMB_X23_Y15_N16
\inst1|Mux6~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|Mux6~1_combout\ = (\inst1|Add0~4_combout\ & (((\inst1|LessThan0~0_combout\)) # (!\inst1|char\(5)))) # (!\inst1|Add0~4_combout\ & (\inst1|Add0~2_combout\ & ((\inst1|LessThan0~0_combout\) # (!\inst1|char\(5)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101000110010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|Add0~4_combout\,
	datab => \inst1|char\(5),
	datac => \inst1|Add0~2_combout\,
	datad => \inst1|LessThan0~0_combout\,
	combout => \inst1|Mux6~1_combout\);

-- Location: LCCOMB_X24_Y15_N10
\inst1|lcd_bus[2]~32\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|lcd_bus[2]~32_combout\ = (!\inst1|char~3_combout\ & (\inst1|char~0_combout\ & (!\inst1|Mux6~1_combout\ & \inst1|char~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|char~3_combout\,
	datab => \inst1|char~0_combout\,
	datac => \inst1|Mux6~1_combout\,
	datad => \inst1|char~2_combout\,
	combout => \inst1|lcd_bus[2]~32_combout\);

-- Location: LCCOMB_X24_Y15_N2
\inst1|Mux6~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|Mux6~0_combout\ = (\inst1|char~2_combout\ & ((\inst1|char~4_combout\) # ((\inst1|char~5_combout\) # (\inst1|char~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|char~4_combout\,
	datab => \inst1|char~5_combout\,
	datac => \inst1|char~3_combout\,
	datad => \inst1|char~2_combout\,
	combout => \inst1|Mux6~0_combout\);

-- Location: LCCOMB_X24_Y15_N6
\inst1|lcd_bus[3]~58\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|lcd_bus[3]~58_combout\ = (\inst1|lcd_bus[2]~32_combout\) # ((\inst1|lcd_enable~q\) # ((\inst1|Mux6~0_combout\) # (!\inst2|busy~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111101111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|lcd_bus[2]~32_combout\,
	datab => \inst1|lcd_enable~q\,
	datac => \inst2|busy~q\,
	datad => \inst1|Mux6~0_combout\,
	combout => \inst1|lcd_bus[3]~58_combout\);

-- Location: LCCOMB_X24_Y15_N4
\inst1|lcd_bus[2]~57\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|lcd_bus[2]~57_combout\ = (\inst2|busy~q\ & (!\inst1|lcd_enable~q\ & (!\inst1|Mux6~0_combout\ & !\inst1|char~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|busy~q\,
	datab => \inst1|lcd_enable~q\,
	datac => \inst1|Mux6~0_combout\,
	datad => \inst1|char~2_combout\,
	combout => \inst1|lcd_bus[2]~57_combout\);

-- Location: LCCOMB_X25_Y15_N22
\inst1|Mux3~33\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|Mux3~33_combout\ = (\inst1|char~1_combout\ & (((\inst1|L1\(70)) # (\inst1|char~0_combout\)))) # (!\inst1|char~1_combout\ & (\inst1|L1\(73) & ((!\inst1|char~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|L1\(73),
	datab => \inst1|char~1_combout\,
	datac => \inst1|L1\(70),
	datad => \inst1|char~0_combout\,
	combout => \inst1|Mux3~33_combout\);

-- Location: LCCOMB_X24_Y15_N0
\inst1|Mux3~34\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|Mux3~34_combout\ = (\inst1|char~0_combout\ & ((\inst1|Mux3~33_combout\ & (!\inst1|L1\(52))) # (!\inst1|Mux3~33_combout\ & ((!\inst1|L2\(105)))))) # (!\inst1|char~0_combout\ & (((\inst1|Mux3~33_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111011100001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|L1\(52),
	datab => \inst1|char~0_combout\,
	datac => \inst1|L2\(105),
	datad => \inst1|Mux3~33_combout\,
	combout => \inst1|Mux3~34_combout\);

-- Location: LCCOMB_X24_Y15_N22
\inst1|lcd_bus[3]~30\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|lcd_bus[3]~30_combout\ = (\inst1|char~4_combout\ & (\inst1|Mux3~34_combout\ & (\inst1|char~5_combout\ & !\inst1|char~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|char~4_combout\,
	datab => \inst1|Mux3~34_combout\,
	datac => \inst1|char~5_combout\,
	datad => \inst1|char~3_combout\,
	combout => \inst1|lcd_bus[3]~30_combout\);

-- Location: LCCOMB_X22_Y15_N22
\inst1|lcd_bus[0]~27\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|lcd_bus[0]~27_combout\ = (\inst1|Add0~2_combout\ & (!\inst1|Add0~4_combout\ & ((\inst1|LessThan0~0_combout\) # (!\inst1|char\(5)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101000000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|Add0~2_combout\,
	datab => \inst1|char\(5),
	datac => \inst1|Add0~4_combout\,
	datad => \inst1|LessThan0~0_combout\,
	combout => \inst1|lcd_bus[0]~27_combout\);

-- Location: LCCOMB_X25_Y15_N6
\inst1|Selector71~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|Selector71~1_combout\ = (\inst1|state.SONG1~q\) # ((!\inst7|run_en~q\ & (\inst1|L2\(57) & \inst1|state.PLAYING~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst7|run_en~q\,
	datab => \inst1|state.SONG1~q\,
	datac => \inst1|L2\(57),
	datad => \inst1|state.PLAYING~q\,
	combout => \inst1|Selector71~1_combout\);

-- Location: FF_X25_Y15_N7
\inst1|L2[57]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \inst1|Selector71~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|L2\(57));

-- Location: LCCOMB_X25_Y15_N24
\inst1|Selector28~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|Selector28~0_combout\ = (\inst1|state.BACK_MENU~q\) # ((\inst1|state.PLAYING~q\) # (!\inst1|state.SHOW_MENU~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110111011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|state.BACK_MENU~q\,
	datab => \inst1|state.SHOW_MENU~q\,
	datad => \inst1|state.PLAYING~q\,
	combout => \inst1|Selector28~0_combout\);

-- Location: FF_X25_Y15_N25
\inst1|L1[51]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \inst1|Selector28~0_combout\,
	ena => \inst1|Selector71~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|L1\(51));

-- Location: LCCOMB_X25_Y15_N10
\inst1|Mux3~30\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|Mux3~30_combout\ = (\inst1|char~1_combout\ & (((\inst1|char~0_combout\)))) # (!\inst1|char~1_combout\ & ((\inst1|char~0_combout\ & (\inst1|L2\(57))) # (!\inst1|char~0_combout\ & ((\inst1|L1\(51))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|L2\(57),
	datab => \inst1|L1\(51),
	datac => \inst1|char~1_combout\,
	datad => \inst1|char~0_combout\,
	combout => \inst1|Mux3~30_combout\);

-- Location: LCCOMB_X26_Y15_N22
\inst1|Selector74~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|Selector74~0_combout\ = (\inst1|state.SONG1~q\) # ((\inst1|state.BACK_MENU~q\) # ((\inst1|L2\(51) & !\inst1|Selector71~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111011111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|state.SONG1~q\,
	datab => \inst1|state.BACK_MENU~q\,
	datac => \inst1|L2\(51),
	datad => \inst1|Selector71~0_combout\,
	combout => \inst1|Selector74~0_combout\);

-- Location: FF_X26_Y15_N23
\inst1|L2[51]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \inst1|Selector74~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|L2\(51));

-- Location: LCCOMB_X25_Y15_N8
\inst1|Mux3~31\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|Mux3~31_combout\ = (\inst1|Mux3~30_combout\ & (((\inst1|L2\(51))) # (!\inst1|char~1_combout\))) # (!\inst1|Mux3~30_combout\ & (\inst1|char~1_combout\ & (\inst1|L2\(53))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101001100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|Mux3~30_combout\,
	datab => \inst1|char~1_combout\,
	datac => \inst1|L2\(53),
	datad => \inst1|L2\(51),
	combout => \inst1|Mux3~31_combout\);

-- Location: LCCOMB_X25_Y14_N4
\inst1|Mux3~32\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|Mux3~32_combout\ = (!\inst1|char~0_combout\ & ((\inst1|char~1_combout\ & (\inst1|L2\(53))) # (!\inst1|char~1_combout\ & ((\inst1|L1\(113))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100010001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|char~0_combout\,
	datab => \inst1|L2\(53),
	datac => \inst1|L1\(113),
	datad => \inst1|char~1_combout\,
	combout => \inst1|Mux3~32_combout\);

-- Location: LCCOMB_X25_Y14_N2
\inst1|lcd_bus[3]~28\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|lcd_bus[3]~28_combout\ = (\inst1|Mux3~32_combout\) # ((!\inst1|L1\(70) & (\inst1|char~1_combout\ & \inst1|char~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|L1\(70),
	datab => \inst1|char~1_combout\,
	datac => \inst1|Mux3~32_combout\,
	datad => \inst1|char~0_combout\,
	combout => \inst1|lcd_bus[3]~28_combout\);

-- Location: LCCOMB_X24_Y15_N14
\inst1|lcd_bus[3]~29\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|lcd_bus[3]~29_combout\ = (\inst1|lcd_bus[0]~27_combout\ & ((\inst1|char~3_combout\ & (\inst1|Mux3~31_combout\)) # (!\inst1|char~3_combout\ & ((\inst1|lcd_bus[3]~28_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100010010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|char~3_combout\,
	datab => \inst1|lcd_bus[0]~27_combout\,
	datac => \inst1|Mux3~31_combout\,
	datad => \inst1|lcd_bus[3]~28_combout\,
	combout => \inst1|lcd_bus[3]~29_combout\);

-- Location: LCCOMB_X24_Y15_N30
\inst1|lcd_bus[3]~24\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|lcd_bus[3]~24_combout\ = (\inst1|char~0_combout\ & (((\inst1|L2\(105) & \inst1|char~1_combout\)))) # (!\inst1|char~0_combout\ & ((\inst1|L1\(67)) # ((\inst1|char~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001100100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|L1\(67),
	datab => \inst1|char~0_combout\,
	datac => \inst1|L2\(105),
	datad => \inst1|char~1_combout\,
	combout => \inst1|lcd_bus[3]~24_combout\);

-- Location: LCCOMB_X23_Y15_N4
\inst1|lcd_bus[3]~21\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|lcd_bus[3]~21_combout\ = (\inst1|char~1_combout\ & (!\inst1|L2\(105))) # (!\inst1|char~1_combout\ & ((\inst1|L1\(52))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101111100001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|char~1_combout\,
	datac => \inst1|L2\(105),
	datad => \inst1|L1\(52),
	combout => \inst1|lcd_bus[3]~21_combout\);

-- Location: LCCOMB_X23_Y15_N22
\inst1|lcd_bus[3]~22\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|lcd_bus[3]~22_combout\ = (\inst1|char~0_combout\ & (\inst1|char~1_combout\ & (\inst1|L2\(53)))) # (!\inst1|char~0_combout\ & (((\inst1|lcd_bus[3]~21_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|char~1_combout\,
	datab => \inst1|L2\(53),
	datac => \inst1|lcd_bus[3]~21_combout\,
	datad => \inst1|char~0_combout\,
	combout => \inst1|lcd_bus[3]~22_combout\);

-- Location: LCCOMB_X26_Y15_N8
\inst1|Selector69~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|Selector69~1_combout\ = (\inst1|state.SONG2~q\) # (!\inst1|state.SHOW_MENU~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111111001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst1|state.SONG2~q\,
	datac => \inst1|state.SHOW_MENU~q\,
	combout => \inst1|Selector69~1_combout\);

-- Location: FF_X26_Y15_N9
\inst1|L2[41]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \inst1|Selector69~1_combout\,
	ena => \inst1|Selector71~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|L2\(41));

-- Location: LCCOMB_X23_Y15_N18
\inst1|Mux3~29\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|Mux3~29_combout\ = (\inst1|char~0_combout\ & ((\inst1|char~1_combout\ & (\inst1|L1\(52))) # (!\inst1|char~1_combout\ & ((\inst1|L2\(41))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|char~1_combout\,
	datab => \inst1|L1\(52),
	datac => \inst1|L2\(41),
	datad => \inst1|char~0_combout\,
	combout => \inst1|Mux3~29_combout\);

-- Location: LCCOMB_X24_Y15_N8
\inst1|lcd_bus[3]~23\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|lcd_bus[3]~23_combout\ = (\inst1|char~4_combout\ & ((\inst1|char~3_combout\ & ((\inst1|Mux3~29_combout\))) # (!\inst1|char~3_combout\ & (\inst1|lcd_bus[3]~22_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010100000001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|char~4_combout\,
	datab => \inst1|lcd_bus[3]~22_combout\,
	datac => \inst1|char~3_combout\,
	datad => \inst1|Mux3~29_combout\,
	combout => \inst1|lcd_bus[3]~23_combout\);

-- Location: LCCOMB_X22_Y15_N16
\inst1|lcd_bus[2]~25\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|lcd_bus[2]~25_combout\ = (\inst1|Add0~6_combout\ & (!\inst1|Add0~4_combout\ & ((\inst1|LessThan0~0_combout\) # (!\inst1|char\(5)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|Add0~6_combout\,
	datab => \inst1|LessThan0~0_combout\,
	datac => \inst1|Add0~4_combout\,
	datad => \inst1|char\(5),
	combout => \inst1|lcd_bus[2]~25_combout\);

-- Location: LCCOMB_X24_Y15_N12
\inst1|lcd_bus[3]~26\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|lcd_bus[3]~26_combout\ = (!\inst1|char~5_combout\ & ((\inst1|lcd_bus[3]~23_combout\) # ((\inst1|lcd_bus[3]~24_combout\ & \inst1|lcd_bus[2]~25_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|lcd_bus[3]~24_combout\,
	datab => \inst1|char~5_combout\,
	datac => \inst1|lcd_bus[3]~23_combout\,
	datad => \inst1|lcd_bus[2]~25_combout\,
	combout => \inst1|lcd_bus[3]~26_combout\);

-- Location: LCCOMB_X24_Y15_N16
\inst1|lcd_bus[3]~31\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|lcd_bus[3]~31_combout\ = (\inst1|lcd_bus[3]~30_combout\) # ((\inst1|lcd_bus[3]~29_combout\) # (\inst1|lcd_bus[3]~26_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|lcd_bus[3]~30_combout\,
	datac => \inst1|lcd_bus[3]~29_combout\,
	datad => \inst1|lcd_bus[3]~26_combout\,
	combout => \inst1|lcd_bus[3]~31_combout\);

-- Location: LCCOMB_X24_Y15_N26
\inst1|lcd_bus[3]~33\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|lcd_bus[3]~33_combout\ = (\inst1|lcd_bus[3]~58_combout\ & ((\inst1|lcd_bus\(3)) # ((\inst1|lcd_bus[2]~57_combout\ & \inst1|lcd_bus[3]~31_combout\)))) # (!\inst1|lcd_bus[3]~58_combout\ & (\inst1|lcd_bus[2]~57_combout\ & 
-- ((\inst1|lcd_bus[3]~31_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|lcd_bus[3]~58_combout\,
	datab => \inst1|lcd_bus[2]~57_combout\,
	datac => \inst1|lcd_bus\(3),
	datad => \inst1|lcd_bus[3]~31_combout\,
	combout => \inst1|lcd_bus[3]~33_combout\);

-- Location: FF_X24_Y15_N27
\inst1|lcd_bus[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \inst1|lcd_bus[3]~33_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|lcd_bus\(3));

-- Location: LCCOMB_X21_Y14_N20
\inst2|Selector42~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|Selector42~1_combout\ = (\inst2|Add0~62_combout\) # ((!\inst2|Add0~60_combout\ & ((\inst2|Selector42~0_combout\) # (\inst2|LessThan1~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010111110100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|Add0~60_combout\,
	datab => \inst2|Selector42~0_combout\,
	datac => \inst2|Add0~62_combout\,
	datad => \inst2|LessThan1~2_combout\,
	combout => \inst2|Selector42~1_combout\);

-- Location: LCCOMB_X21_Y14_N4
\inst2|Selector42~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|Selector42~2_combout\ = (\inst2|rs~0_combout\ & (((\inst1|lcd_bus\(3))))) # (!\inst2|rs~0_combout\ & (\inst2|estado.INICIALIZACAO~q\ & ((\inst2|Selector42~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|rs~0_combout\,
	datab => \inst2|estado.INICIALIZACAO~q\,
	datac => \inst1|lcd_bus\(3),
	datad => \inst2|Selector42~1_combout\,
	combout => \inst2|Selector42~2_combout\);

-- Location: FF_X21_Y14_N5
\inst2|lcd_data[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \inst2|Selector42~2_combout\,
	ena => \inst2|lcd_data[2]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst2|lcd_data\(3));

-- Location: LCCOMB_X24_Y14_N22
\inst1|lcd_bus[2]~36\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|lcd_bus[2]~36_combout\ = (\inst1|char~0_combout\ & (((\inst1|char~1_combout\ & \inst1|L2\(105))))) # (!\inst1|char~0_combout\ & (\inst1|L2\(53) $ ((\inst1|char~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100011000000110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|L2\(53),
	datab => \inst1|char~1_combout\,
	datac => \inst1|char~0_combout\,
	datad => \inst1|L2\(105),
	combout => \inst1|lcd_bus[2]~36_combout\);

-- Location: LCCOMB_X24_Y14_N16
\inst1|lcd_bus[2]~35\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|lcd_bus[2]~35_combout\ = (\inst1|char~0_combout\ & (((\inst1|Mux3~2_combout\)))) # (!\inst1|char~0_combout\ & (\inst1|L2\(53) & (!\inst1|char~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001000000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|L2\(53),
	datab => \inst1|char~1_combout\,
	datac => \inst1|char~0_combout\,
	datad => \inst1|Mux3~2_combout\,
	combout => \inst1|lcd_bus[2]~35_combout\);

-- Location: LCCOMB_X24_Y14_N8
\inst1|lcd_bus[2]~37\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|lcd_bus[2]~37_combout\ = (\inst1|char~3_combout\ & ((\inst1|lcd_bus[2]~35_combout\))) # (!\inst1|char~3_combout\ & (\inst1|lcd_bus[2]~36_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst1|char~3_combout\,
	datac => \inst1|lcd_bus[2]~36_combout\,
	datad => \inst1|lcd_bus[2]~35_combout\,
	combout => \inst1|lcd_bus[2]~37_combout\);

-- Location: LCCOMB_X24_Y14_N24
\inst1|Mux3~37\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|Mux3~37_combout\ = (\inst1|char~0_combout\ & (!\inst1|L2\(105) & ((!\inst1|char~1_combout\)))) # (!\inst1|char~0_combout\ & (((!\inst1|L2\(53) & \inst1|char~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001101010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|L2\(105),
	datab => \inst1|L2\(53),
	datac => \inst1|char~0_combout\,
	datad => \inst1|char~1_combout\,
	combout => \inst1|Mux3~37_combout\);

-- Location: LCCOMB_X23_Y15_N14
\inst1|Mux3~35\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|Mux3~35_combout\ = (\inst1|char~1_combout\ & (((\inst1|L1\(113) & !\inst1|char~0_combout\)))) # (!\inst1|char~1_combout\ & (!\inst1|L2\(53) & ((\inst1|char~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|char~1_combout\,
	datab => \inst1|L2\(53),
	datac => \inst1|L1\(113),
	datad => \inst1|char~0_combout\,
	combout => \inst1|Mux3~35_combout\);

-- Location: LCCOMB_X23_Y15_N20
\inst1|Mux3~36\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|Mux3~36_combout\ = (\inst1|Mux3~35_combout\) # ((!\inst1|L2\(105) & (\inst1|char~0_combout\ $ (!\inst1|char~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010011110001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|L2\(105),
	datab => \inst1|char~0_combout\,
	datac => \inst1|Mux3~35_combout\,
	datad => \inst1|char~1_combout\,
	combout => \inst1|Mux3~36_combout\);

-- Location: LCCOMB_X24_Y14_N18
\inst1|lcd_bus[2]~34\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|lcd_bus[2]~34_combout\ = (\inst1|lcd_bus[2]~25_combout\ & ((\inst1|char~5_combout\ & ((\inst1|Mux3~36_combout\))) # (!\inst1|char~5_combout\ & (\inst1|Mux3~37_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|lcd_bus[2]~25_combout\,
	datab => \inst1|Mux3~37_combout\,
	datac => \inst1|Mux3~36_combout\,
	datad => \inst1|char~5_combout\,
	combout => \inst1|lcd_bus[2]~34_combout\);

-- Location: LCCOMB_X24_Y14_N30
\inst1|lcd_bus[2]~38\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|lcd_bus[2]~38_combout\ = (\inst1|lcd_bus[2]~34_combout\) # ((!\inst1|char~5_combout\ & (\inst1|char~4_combout\ & \inst1|lcd_bus[2]~37_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111101000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|char~5_combout\,
	datab => \inst1|char~4_combout\,
	datac => \inst1|lcd_bus[2]~37_combout\,
	datad => \inst1|lcd_bus[2]~34_combout\,
	combout => \inst1|lcd_bus[2]~38_combout\);

-- Location: LCCOMB_X25_Y14_N28
\inst1|Mux3~38\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|Mux3~38_combout\ = (\inst1|char~1_combout\ & ((\inst1|L1\(113)))) # (!\inst1|char~1_combout\ & (\inst1|L1\(73)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|L1\(73),
	datac => \inst1|L1\(113),
	datad => \inst1|char~1_combout\,
	combout => \inst1|Mux3~38_combout\);

-- Location: LCCOMB_X24_Y14_N20
\inst1|lcd_bus[2]~39\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|lcd_bus[2]~39_combout\ = (\inst1|char~4_combout\ & ((\inst1|char~0_combout\ & (!\inst1|L2\(105))) # (!\inst1|char~0_combout\ & ((\inst1|Mux3~38_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100110001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|L2\(105),
	datab => \inst1|char~4_combout\,
	datac => \inst1|char~0_combout\,
	datad => \inst1|Mux3~38_combout\,
	combout => \inst1|lcd_bus[2]~39_combout\);

-- Location: LCCOMB_X24_Y14_N2
\inst1|lcd_bus[2]~40\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|lcd_bus[2]~40_combout\ = (\inst1|lcd_bus[2]~39_combout\) # ((\inst1|L2\(53) & (!\inst1|char~4_combout\ & !\inst1|char~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|L2\(53),
	datab => \inst1|char~4_combout\,
	datac => \inst1|char~0_combout\,
	datad => \inst1|lcd_bus[2]~39_combout\,
	combout => \inst1|lcd_bus[2]~40_combout\);

-- Location: LCCOMB_X24_Y14_N0
\inst1|lcd_bus[2]~41\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|lcd_bus[2]~41_combout\ = (\inst1|lcd_bus[2]~38_combout\) # ((!\inst1|char~3_combout\ & (\inst1|char~5_combout\ & \inst1|lcd_bus[2]~40_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|lcd_bus[2]~38_combout\,
	datab => \inst1|char~3_combout\,
	datac => \inst1|char~5_combout\,
	datad => \inst1|lcd_bus[2]~40_combout\,
	combout => \inst1|lcd_bus[2]~41_combout\);

-- Location: LCCOMB_X24_Y15_N28
\inst1|lcd_bus[2]~42\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|lcd_bus[2]~42_combout\ = (\inst1|lcd_bus[3]~58_combout\ & ((\inst1|lcd_bus\(2)) # ((\inst1|lcd_bus[2]~57_combout\ & \inst1|lcd_bus[2]~41_combout\)))) # (!\inst1|lcd_bus[3]~58_combout\ & (\inst1|lcd_bus[2]~57_combout\ & 
-- ((\inst1|lcd_bus[2]~41_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|lcd_bus[3]~58_combout\,
	datab => \inst1|lcd_bus[2]~57_combout\,
	datac => \inst1|lcd_bus\(2),
	datad => \inst1|lcd_bus[2]~41_combout\,
	combout => \inst1|lcd_bus[2]~42_combout\);

-- Location: FF_X24_Y15_N29
\inst1|lcd_bus[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \inst1|lcd_bus[2]~42_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|lcd_bus\(2));

-- Location: LCCOMB_X19_Y14_N6
\inst2|Selector45~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|Selector45~0_combout\ = (!\inst2|Add0~60_combout\ & (\inst2|estado.INICIALIZACAO~q\ & (!\inst2|Add0~62_combout\ & !\inst2|rs~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|Add0~60_combout\,
	datab => \inst2|estado.INICIALIZACAO~q\,
	datac => \inst2|Add0~62_combout\,
	datad => \inst2|rs~0_combout\,
	combout => \inst2|Selector45~0_combout\);

-- Location: LCCOMB_X17_Y14_N2
\inst2|Selector43~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|Selector43~2_combout\ = (!\inst2|busy~5_combout\ & \inst2|LessThan7~2_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst2|busy~5_combout\,
	datad => \inst2|LessThan7~2_combout\,
	combout => \inst2|Selector43~2_combout\);

-- Location: LCCOMB_X21_Y14_N6
\inst2|Selector43~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|Selector43~3_combout\ = (\inst2|Selector43~2_combout\ & ((\inst2|Add0~60_combout\) # ((!\inst2|LessThan5~4_combout\ & !\inst2|LessThan4~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100010001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|Add0~60_combout\,
	datab => \inst2|Selector43~2_combout\,
	datac => \inst2|LessThan5~4_combout\,
	datad => \inst2|LessThan4~3_combout\,
	combout => \inst2|Selector43~3_combout\);

-- Location: LCCOMB_X21_Y14_N16
\inst2|Selector43~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|Selector43~4_combout\ = (\inst2|Selector45~0_combout\ & (\inst2|clk_count~0_combout\ & ((\inst2|LessThan3~14_combout\) # (\inst2|Selector43~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|LessThan3~14_combout\,
	datab => \inst2|Selector45~0_combout\,
	datac => \inst2|clk_count~0_combout\,
	datad => \inst2|Selector43~3_combout\,
	combout => \inst2|Selector43~4_combout\);

-- Location: LCCOMB_X21_Y14_N10
\inst2|Selector43~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|Selector43~5_combout\ = (\inst2|Selector43~4_combout\) # ((\inst2|estado.PRONTO~q\ & (\inst1|lcd_bus\(2) & \inst1|lcd_enable~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|estado.PRONTO~q\,
	datab => \inst1|lcd_bus\(2),
	datac => \inst1|lcd_enable~q\,
	datad => \inst2|Selector43~4_combout\,
	combout => \inst2|Selector43~5_combout\);

-- Location: FF_X21_Y14_N11
\inst2|lcd_data[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \inst2|Selector43~5_combout\,
	ena => \inst2|lcd_data[2]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst2|lcd_data\(2));

-- Location: LCCOMB_X24_Y14_N14
\inst1|lcd_bus[1]~46\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|lcd_bus[1]~46_combout\ = (\inst1|char~0_combout\ & ((\inst1|Add0~2_combout\) # ((\inst1|Mux3~14_combout\ & !\inst1|char~5_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000011001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|Mux3~14_combout\,
	datab => \inst1|char~0_combout\,
	datac => \inst1|Add0~2_combout\,
	datad => \inst1|char~5_combout\,
	combout => \inst1|lcd_bus[1]~46_combout\);

-- Location: LCCOMB_X25_Y14_N30
\inst1|lcd_bus[1]~43\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|lcd_bus[1]~43_combout\ = (\inst1|lcd_bus[0]~27_combout\ & ((\inst1|Mux3~32_combout\) # ((!\inst1|L1\(70) & \inst1|char~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|L1\(70),
	datab => \inst1|Mux3~32_combout\,
	datac => \inst1|lcd_bus[0]~27_combout\,
	datad => \inst1|char~0_combout\,
	combout => \inst1|lcd_bus[1]~43_combout\);

-- Location: LCCOMB_X25_Y15_N14
\inst1|lcd_bus[1]~44\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|lcd_bus[1]~44_combout\ = (!\inst1|char~5_combout\ & ((\inst1|char~1_combout\ & (!\inst1|L1\(70))) # (!\inst1|char~1_combout\ & ((\inst1|L1\(51))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001011100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|L1\(70),
	datab => \inst1|L1\(51),
	datac => \inst1|char~1_combout\,
	datad => \inst1|char~5_combout\,
	combout => \inst1|lcd_bus[1]~44_combout\);

-- Location: LCCOMB_X25_Y15_N4
\inst1|lcd_bus[1]~45\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|lcd_bus[1]~45_combout\ = (!\inst1|char~0_combout\ & ((\inst1|lcd_bus[1]~44_combout\) # ((\inst1|L1\(73) & \inst1|char~5_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|L1\(73),
	datab => \inst1|char~0_combout\,
	datac => \inst1|lcd_bus[1]~44_combout\,
	datad => \inst1|char~5_combout\,
	combout => \inst1|lcd_bus[1]~45_combout\);

-- Location: LCCOMB_X25_Y14_N20
\inst1|lcd_bus[1]~47\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|lcd_bus[1]~47_combout\ = (\inst1|lcd_bus[1]~43_combout\) # ((\inst1|char~4_combout\ & ((\inst1|lcd_bus[1]~46_combout\) # (\inst1|lcd_bus[1]~45_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110011111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|lcd_bus[1]~46_combout\,
	datab => \inst1|char~4_combout\,
	datac => \inst1|lcd_bus[1]~43_combout\,
	datad => \inst1|lcd_bus[1]~45_combout\,
	combout => \inst1|lcd_bus[1]~47_combout\);

-- Location: LCCOMB_X23_Y15_N10
\inst1|Mux3~39\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|Mux3~39_combout\ = (\inst1|Mux3~29_combout\) # ((!\inst1|char~0_combout\ & !\inst1|Mux3~5_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst1|char~0_combout\,
	datac => \inst1|Mux3~5_combout\,
	datad => \inst1|Mux3~29_combout\,
	combout => \inst1|Mux3~39_combout\);

-- Location: LCCOMB_X26_Y14_N8
\inst1|Mux3~40\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|Mux3~40_combout\ = (\inst1|char~1_combout\ & ((\inst1|L2\(53)) # ((\inst1|char~0_combout\)))) # (!\inst1|char~1_combout\ & (((!\inst1|L2\(105) & !\inst1|char~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101010001101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|char~1_combout\,
	datab => \inst1|L2\(53),
	datac => \inst1|L2\(105),
	datad => \inst1|char~0_combout\,
	combout => \inst1|Mux3~40_combout\);

-- Location: LCCOMB_X26_Y14_N6
\inst1|Mux3~41\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|Mux3~41_combout\ = (\inst1|Mux3~40_combout\ & (((!\inst1|char~0_combout\) # (!\inst1|L1\(52))))) # (!\inst1|Mux3~40_combout\ & (\inst1|L2\(57) & ((\inst1|char~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|L2\(57),
	datab => \inst1|L1\(52),
	datac => \inst1|Mux3~40_combout\,
	datad => \inst1|char~0_combout\,
	combout => \inst1|Mux3~41_combout\);

-- Location: LCCOMB_X25_Y14_N14
\inst1|Mux3~42\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|Mux3~42_combout\ = (\inst1|Mux3~37_combout\) # ((\inst1|L1\(52) & (\inst1|char~0_combout\ $ (!\inst1|char~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|char~0_combout\,
	datab => \inst1|char~1_combout\,
	datac => \inst1|L1\(52),
	datad => \inst1|Mux3~37_combout\,
	combout => \inst1|Mux3~42_combout\);

-- Location: LCCOMB_X26_Y14_N16
\inst1|lcd_bus[1]~48\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|lcd_bus[1]~48_combout\ = (\inst1|char~4_combout\ & (((\inst1|char~5_combout\)))) # (!\inst1|char~4_combout\ & ((\inst1|char~5_combout\ & (\inst1|Mux3~41_combout\)) # (!\inst1|char~5_combout\ & ((\inst1|Mux3~42_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110001111100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|Mux3~41_combout\,
	datab => \inst1|char~4_combout\,
	datac => \inst1|char~5_combout\,
	datad => \inst1|Mux3~42_combout\,
	combout => \inst1|lcd_bus[1]~48_combout\);

-- Location: LCCOMB_X26_Y14_N14
\inst1|lcd_bus[1]~49\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|lcd_bus[1]~49_combout\ = (\inst1|char~4_combout\ & ((\inst1|lcd_bus[1]~48_combout\ & (\inst1|Mux3~28_combout\)) # (!\inst1|lcd_bus[1]~48_combout\ & ((\inst1|Mux3~39_combout\))))) # (!\inst1|char~4_combout\ & (((\inst1|lcd_bus[1]~48_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|Mux3~28_combout\,
	datab => \inst1|char~4_combout\,
	datac => \inst1|Mux3~39_combout\,
	datad => \inst1|lcd_bus[1]~48_combout\,
	combout => \inst1|lcd_bus[1]~49_combout\);

-- Location: LCCOMB_X22_Y14_N6
\inst1|lcd_bus[1]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|lcd_bus[1]~1_combout\ = (\inst1|char~3_combout\ & ((\inst1|lcd_bus[1]~49_combout\))) # (!\inst1|char~3_combout\ & (\inst1|lcd_bus[1]~47_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|char~3_combout\,
	datab => \inst1|lcd_bus[1]~47_combout\,
	datad => \inst1|lcd_bus[1]~49_combout\,
	combout => \inst1|lcd_bus[1]~1_combout\);

-- Location: LCCOMB_X22_Y14_N26
\inst1|Mux5~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|Mux5~1_combout\ = (\inst1|lcd_bus\(1) & ((\inst1|Add0~2_combout\) # (\inst1|Add0~8_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|Add0~2_combout\,
	datac => \inst1|Add0~8_combout\,
	datad => \inst1|lcd_bus\(1),
	combout => \inst1|Mux5~1_combout\);

-- Location: FF_X22_Y14_N7
\inst1|lcd_bus[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \inst1|lcd_bus[1]~1_combout\,
	asdata => \inst1|Mux5~1_combout\,
	sload => \inst1|char~2_combout\,
	ena => \inst1|lcd_bus[0]~11_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|lcd_bus\(1));

-- Location: LCCOMB_X21_Y14_N22
\inst2|Selector44~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|Selector44~0_combout\ = (!\inst2|rs~0_combout\ & (\inst2|estado.INICIALIZACAO~q\ & (!\inst2|Add0~62_combout\ & !\inst2|busy~8_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|rs~0_combout\,
	datab => \inst2|estado.INICIALIZACAO~q\,
	datac => \inst2|Add0~62_combout\,
	datad => \inst2|busy~8_combout\,
	combout => \inst2|Selector44~0_combout\);

-- Location: LCCOMB_X21_Y14_N0
\inst2|Selector44~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|Selector44~1_combout\ = (\inst1|lcd_bus\(1) & ((\inst2|rs~0_combout\) # ((\inst2|Selector44~0_combout\ & \inst2|Selector43~3_combout\)))) # (!\inst1|lcd_bus\(1) & (((\inst2|Selector44~0_combout\ & \inst2|Selector43~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|lcd_bus\(1),
	datab => \inst2|rs~0_combout\,
	datac => \inst2|Selector44~0_combout\,
	datad => \inst2|Selector43~3_combout\,
	combout => \inst2|Selector44~1_combout\);

-- Location: FF_X21_Y14_N1
\inst2|lcd_data[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \inst2|Selector44~1_combout\,
	ena => \inst2|lcd_data[2]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst2|lcd_data\(1));

-- Location: LCCOMB_X25_Y15_N2
\inst1|Selector31~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|Selector31~0_combout\ = (\inst1|state.PLAYING~q\) # ((\inst1|state.SONG1~q\) # (\inst1|state.SONG2~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|state.PLAYING~q\,
	datac => \inst1|state.SONG1~q\,
	datad => \inst1|state.SONG2~q\,
	combout => \inst1|Selector31~0_combout\);

-- Location: FF_X25_Y15_N3
\inst1|L1[48]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \inst1|Selector31~0_combout\,
	ena => \inst1|Selector71~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|L1\(48));

-- Location: LCCOMB_X25_Y15_N16
\inst1|Mux3~46\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|Mux3~46_combout\ = (\inst1|char~0_combout\ & (((\inst1|char~1_combout\) # (\inst1|L2\(51))))) # (!\inst1|char~0_combout\ & (\inst1|L1\(48) & (!\inst1|char~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111010100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|char~0_combout\,
	datab => \inst1|L1\(48),
	datac => \inst1|char~1_combout\,
	datad => \inst1|L2\(51),
	combout => \inst1|Mux3~46_combout\);

-- Location: LCCOMB_X25_Y15_N26
\inst1|Mux3~47\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|Mux3~47_combout\ = (\inst1|Mux3~46_combout\ & (((\inst1|L2\(48)) # (!\inst1|char~1_combout\)))) # (!\inst1|Mux3~46_combout\ & (!\inst1|L1\(70) & (\inst1|char~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110000011100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|L1\(70),
	datab => \inst1|Mux3~46_combout\,
	datac => \inst1|char~1_combout\,
	datad => \inst1|L2\(48),
	combout => \inst1|Mux3~47_combout\);

-- Location: LCCOMB_X26_Y14_N10
\inst1|lcd_bus[2]~53\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|lcd_bus[2]~53_combout\ = (\inst1|char~0_combout\ & ((\inst1|char~1_combout\ & (\inst1|L1\(52))) # (!\inst1|char~1_combout\ & ((!\inst1|L2\(105))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000110100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|char~1_combout\,
	datab => \inst1|L1\(52),
	datac => \inst1|L2\(105),
	datad => \inst1|char~0_combout\,
	combout => \inst1|lcd_bus[2]~53_combout\);

-- Location: LCCOMB_X25_Y15_N28
\inst1|lcd_bus[0]~54\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|lcd_bus[0]~54_combout\ = (!\inst1|char~0_combout\ & ((\inst1|char~1_combout\ & (\inst1|L1\(51))) # (!\inst1|char~1_combout\ & ((\inst1|L1\(48))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100010101000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|char~0_combout\,
	datab => \inst1|L1\(51),
	datac => \inst1|char~1_combout\,
	datad => \inst1|L1\(48),
	combout => \inst1|lcd_bus[0]~54_combout\);

-- Location: LCCOMB_X26_Y14_N28
\inst1|lcd_bus[0]~52\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|lcd_bus[0]~52_combout\ = (\inst1|char~1_combout\ & (\inst1|L1\(52) & ((\inst1|char~0_combout\)))) # (!\inst1|char~1_combout\ & ((\inst1|L2\(53) $ (\inst1|char~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000110101010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|char~1_combout\,
	datab => \inst1|L1\(52),
	datac => \inst1|L2\(53),
	datad => \inst1|char~0_combout\,
	combout => \inst1|lcd_bus[0]~52_combout\);

-- Location: LCCOMB_X26_Y14_N24
\inst1|lcd_bus[0]~55\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|lcd_bus[0]~55_combout\ = (\inst1|char~4_combout\ & (((\inst1|lcd_bus[0]~52_combout\)))) # (!\inst1|char~4_combout\ & ((\inst1|lcd_bus[2]~53_combout\) # ((\inst1|lcd_bus[0]~54_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111000110010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|lcd_bus[2]~53_combout\,
	datab => \inst1|char~4_combout\,
	datac => \inst1|lcd_bus[0]~54_combout\,
	datad => \inst1|lcd_bus[0]~52_combout\,
	combout => \inst1|lcd_bus[0]~55_combout\);

-- Location: LCCOMB_X25_Y14_N6
\inst1|lcd_bus[0]~56\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|lcd_bus[0]~56_combout\ = (\inst1|Mux3~47_combout\ & ((\inst1|lcd_bus[0]~27_combout\) # ((!\inst1|char~5_combout\ & \inst1|lcd_bus[0]~55_combout\)))) # (!\inst1|Mux3~47_combout\ & (!\inst1|char~5_combout\ & ((\inst1|lcd_bus[0]~55_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011001110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|Mux3~47_combout\,
	datab => \inst1|char~5_combout\,
	datac => \inst1|lcd_bus[0]~27_combout\,
	datad => \inst1|lcd_bus[0]~55_combout\,
	combout => \inst1|lcd_bus[0]~56_combout\);

-- Location: LCCOMB_X25_Y14_N10
\inst1|Mux3~45\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|Mux3~45_combout\ = (\inst1|char~1_combout\ & (((!\inst1|Mux3~7_combout\)))) # (!\inst1|char~1_combout\ & ((\inst1|L1\(67)) # ((\inst1|char~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011111100101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|L1\(67),
	datab => \inst1|char~1_combout\,
	datac => \inst1|Mux3~7_combout\,
	datad => \inst1|char~0_combout\,
	combout => \inst1|Mux3~45_combout\);

-- Location: LCCOMB_X25_Y14_N24
\inst1|Mux3~43\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|Mux3~43_combout\ = (\inst1|char~1_combout\ & (((\inst1|L1\(73)) # (\inst1|char~0_combout\)))) # (!\inst1|char~1_combout\ & (\inst1|L1\(113) & ((!\inst1|char~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|L1\(113),
	datab => \inst1|char~1_combout\,
	datac => \inst1|L1\(73),
	datad => \inst1|char~0_combout\,
	combout => \inst1|Mux3~43_combout\);

-- Location: LCCOMB_X25_Y14_N22
\inst1|Mux3~44\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|Mux3~44_combout\ = (!\inst1|char~0_combout\ & (\inst1|L2\(53) & \inst1|char~1_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100010000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|char~0_combout\,
	datab => \inst1|L2\(53),
	datad => \inst1|char~1_combout\,
	combout => \inst1|Mux3~44_combout\);

-- Location: LCCOMB_X25_Y14_N16
\inst1|lcd_bus[0]~50\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|lcd_bus[0]~50_combout\ = (\inst1|char~4_combout\ & (((\inst1|char~5_combout\)))) # (!\inst1|char~4_combout\ & ((\inst1|char~5_combout\ & ((\inst1|Mux3~44_combout\))) # (!\inst1|char~5_combout\ & (!\inst1|Mux3~25_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000010001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|Mux3~25_combout\,
	datab => \inst1|char~4_combout\,
	datac => \inst1|Mux3~44_combout\,
	datad => \inst1|char~5_combout\,
	combout => \inst1|lcd_bus[0]~50_combout\);

-- Location: LCCOMB_X25_Y14_N8
\inst1|lcd_bus[0]~51\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|lcd_bus[0]~51_combout\ = (\inst1|char~4_combout\ & ((\inst1|lcd_bus[0]~50_combout\ & (\inst1|Mux3~45_combout\)) # (!\inst1|lcd_bus[0]~50_combout\ & ((\inst1|Mux3~43_combout\))))) # (!\inst1|char~4_combout\ & (((\inst1|lcd_bus[0]~50_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|Mux3~45_combout\,
	datab => \inst1|Mux3~43_combout\,
	datac => \inst1|char~4_combout\,
	datad => \inst1|lcd_bus[0]~50_combout\,
	combout => \inst1|lcd_bus[0]~51_combout\);

-- Location: LCCOMB_X22_Y14_N24
\inst1|lcd_bus[0]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|lcd_bus[0]~2_combout\ = (\inst1|char~3_combout\ & (\inst1|lcd_bus[0]~56_combout\)) # (!\inst1|char~3_combout\ & ((\inst1|lcd_bus[0]~51_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|char~3_combout\,
	datab => \inst1|lcd_bus[0]~56_combout\,
	datad => \inst1|lcd_bus[0]~51_combout\,
	combout => \inst1|lcd_bus[0]~2_combout\);

-- Location: LCCOMB_X22_Y14_N4
\inst1|Mux5~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|Mux5~2_combout\ = (\inst1|lcd_bus\(0) & ((\inst1|Add0~8_combout\) # (\inst1|Add0~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|Add0~8_combout\,
	datac => \inst1|Add0~2_combout\,
	datad => \inst1|lcd_bus\(0),
	combout => \inst1|Mux5~2_combout\);

-- Location: FF_X22_Y14_N25
\inst1|lcd_bus[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \inst1|lcd_bus[0]~2_combout\,
	asdata => \inst1|Mux5~2_combout\,
	sload => \inst1|char~2_combout\,
	ena => \inst1|lcd_bus[0]~11_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|lcd_bus\(0));

-- Location: LCCOMB_X19_Y14_N8
\inst2|Selector45~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|Selector45~1_combout\ = (\inst2|Selector45~0_combout\ & (!\inst2|busy~6_combout\ & ((\inst2|Add0~60_combout\) # (!\inst2|LessThan4~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|Selector45~0_combout\,
	datab => \inst2|Add0~60_combout\,
	datac => \inst2|LessThan4~3_combout\,
	datad => \inst2|busy~6_combout\,
	combout => \inst2|Selector45~1_combout\);

-- Location: LCCOMB_X21_Y14_N26
\inst2|Selector45~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|Selector45~2_combout\ = (\inst2|rs~0_combout\ & ((\inst1|lcd_bus\(0)) # ((\inst2|LessThan5~4_combout\ & \inst2|Selector45~1_combout\)))) # (!\inst2|rs~0_combout\ & (((\inst2|LessThan5~4_combout\ & \inst2|Selector45~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|rs~0_combout\,
	datab => \inst1|lcd_bus\(0),
	datac => \inst2|LessThan5~4_combout\,
	datad => \inst2|Selector45~1_combout\,
	combout => \inst2|Selector45~2_combout\);

-- Location: FF_X21_Y14_N27
\inst2|lcd_data[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \inst2|Selector45~2_combout\,
	ena => \inst2|lcd_data[2]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst2|lcd_data\(0));

-- Location: IOIBUF_X34_Y12_N1
\key[4]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_key(4),
	o => \key[4]~input_o\);

ww_lcd_rw <= \lcd_rw~output_o\;

ww_lcd_en <= \lcd_en~output_o\;

ww_lcd_rs <= \lcd_rs~output_o\;

ww_buzzer <= \buzzer~output_o\;

ww_lcd_d(7) <= \lcd_d[7]~output_o\;

ww_lcd_d(6) <= \lcd_d[6]~output_o\;

ww_lcd_d(5) <= \lcd_d[5]~output_o\;

ww_lcd_d(4) <= \lcd_d[4]~output_o\;

ww_lcd_d(3) <= \lcd_d[3]~output_o\;

ww_lcd_d(2) <= \lcd_d[2]~output_o\;

ww_lcd_d(1) <= \lcd_d[1]~output_o\;

ww_lcd_d(0) <= \lcd_d[0]~output_o\;
END structure;


