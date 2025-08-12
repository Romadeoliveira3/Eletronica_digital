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

-- DATE "08/11/2025 22:42:26"

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
-- key[3]	=>  Location: PIN_90,	 I/O Standard: 2.5 V,	 Current Strength: Default
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
SIGNAL \key[3]~input_o\ : std_logic;
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
SIGNAL \inst2|Add0~0_combout\ : std_logic;
SIGNAL \inst1|char~4_combout\ : std_logic;
SIGNAL \inst2|Selector1~0_combout\ : std_logic;
SIGNAL \inst2|Add0~61\ : std_logic;
SIGNAL \inst2|Add0~62_combout\ : std_logic;
SIGNAL \inst2|LessThan3~3_combout\ : std_logic;
SIGNAL \inst2|LessThan3~10_combout\ : std_logic;
SIGNAL \inst2|LessThan3~7_combout\ : std_logic;
SIGNAL \inst2|LessThan3~9_combout\ : std_logic;
SIGNAL \inst2|LessThan3~11_combout\ : std_logic;
SIGNAL \inst2|LessThan3~0_combout\ : std_logic;
SIGNAL \inst2|LessThan3~2_combout\ : std_logic;
SIGNAL \inst2|LessThan3~12_combout\ : std_logic;
SIGNAL \inst2|LessThan3~13_combout\ : std_logic;
SIGNAL \inst2|busy~10_combout\ : std_logic;
SIGNAL \inst2|busy~12_combout\ : std_logic;
SIGNAL \inst2|LessThan1~0_combout\ : std_logic;
SIGNAL \inst2|LessThan8~0_combout\ : std_logic;
SIGNAL \inst2|LessThan7~0_combout\ : std_logic;
SIGNAL \inst2|LessThan7~1_combout\ : std_logic;
SIGNAL \inst2|busy~5_combout\ : std_logic;
SIGNAL \inst2|LessThan6~2_combout\ : std_logic;
SIGNAL \inst2|LessThan6~0_combout\ : std_logic;
SIGNAL \inst2|LessThan6~1_combout\ : std_logic;
SIGNAL \inst2|LessThan8~1_combout\ : std_logic;
SIGNAL \inst2|LessThan8~6_combout\ : std_logic;
SIGNAL \inst2|LessThan8~7_combout\ : std_logic;
SIGNAL \inst2|lcd_data[2]~0_combout\ : std_logic;
SIGNAL \inst2|LessThan3~5_combout\ : std_logic;
SIGNAL \inst2|LessThan3~4_combout\ : std_logic;
SIGNAL \inst2|LessThan3~6_combout\ : std_logic;
SIGNAL \inst2|lcd_data[2]~1_combout\ : std_logic;
SIGNAL \inst2|busy~11_combout\ : std_logic;
SIGNAL \inst2|Selector34~0_combout\ : std_logic;
SIGNAL \inst2|busy~q\ : std_logic;
SIGNAL \inst1|process_0~0_combout\ : std_logic;
SIGNAL \inst1|char~1_combout\ : std_logic;
SIGNAL \inst1|Add0~0_combout\ : std_logic;
SIGNAL \inst1|lcd_bus[0]~23_combout\ : std_logic;
SIGNAL \inst1|char~0_combout\ : std_logic;
SIGNAL \inst1|char[5]~6_combout\ : std_logic;
SIGNAL \inst1|lcd_bus[5]~21_combout\ : std_logic;
SIGNAL \inst1|LessThan0~0_combout\ : std_logic;
SIGNAL \inst1|char~2_combout\ : std_logic;
SIGNAL \inst1|Add0~2_combout\ : std_logic;
SIGNAL \inst1|char~3_combout\ : std_logic;
SIGNAL \inst1|lcd_enable~2_combout\ : std_logic;
SIGNAL \inst1|lcd_enable~3_combout\ : std_logic;
SIGNAL \inst1|lcd_enable~q\ : std_logic;
SIGNAL \inst2|rs~0_combout\ : std_logic;
SIGNAL \inst2|LessThan9~6_combout\ : std_logic;
SIGNAL \inst2|LessThan9~7_combout\ : std_logic;
SIGNAL \inst2|LessThan9~8_combout\ : std_logic;
SIGNAL \inst2|LessThan0~0_combout\ : std_logic;
SIGNAL \inst2|LessThan9~2_combout\ : std_logic;
SIGNAL \inst2|LessThan9~0_combout\ : std_logic;
SIGNAL \inst2|LessThan9~1_combout\ : std_logic;
SIGNAL \inst2|LessThan9~3_combout\ : std_logic;
SIGNAL \inst2|LessThan9~4_combout\ : std_logic;
SIGNAL \inst2|LessThan9~9_combout\ : std_logic;
SIGNAL \inst2|Selector35~0_combout\ : std_logic;
SIGNAL \inst2|estado.ENVIAR~q\ : std_logic;
SIGNAL \inst2|Selector34~1_combout\ : std_logic;
SIGNAL \inst2|estado.PRONTO~q\ : std_logic;
SIGNAL \inst2|rs~3_combout\ : std_logic;
SIGNAL \inst2|estado.ENERGIZACAO~q\ : std_logic;
SIGNAL \inst2|LessThan4~0_combout\ : std_logic;
SIGNAL \inst2|LessThan4~1_combout\ : std_logic;
SIGNAL \inst2|LessThan4~2_combout\ : std_logic;
SIGNAL \inst2|busy~4_combout\ : std_logic;
SIGNAL \inst2|LessThan3~1_combout\ : std_logic;
SIGNAL \inst2|LessThan3~8_combout\ : std_logic;
SIGNAL \inst2|LessThan4~4_combout\ : std_logic;
SIGNAL \inst2|LessThan5~0_combout\ : std_logic;
SIGNAL \inst2|LessThan5~1_combout\ : std_logic;
SIGNAL \inst2|LessThan5~2_combout\ : std_logic;
SIGNAL \inst2|LessThan5~3_combout\ : std_logic;
SIGNAL \inst2|LessThan5~4_combout\ : std_logic;
SIGNAL \inst2|LessThan3~14_combout\ : std_logic;
SIGNAL \inst2|LessThan2~1_combout\ : std_logic;
SIGNAL \inst2|LessThan2~0_combout\ : std_logic;
SIGNAL \inst2|LessThan2~2_combout\ : std_logic;
SIGNAL \inst2|LessThan1~1_combout\ : std_logic;
SIGNAL \inst2|clk_count~0_combout\ : std_logic;
SIGNAL \inst2|clk_count~1_combout\ : std_logic;
SIGNAL \inst2|clk_count[11]~2_combout\ : std_logic;
SIGNAL \inst2|clk_count[11]~3_combout\ : std_logic;
SIGNAL \inst2|clk_count[11]~4_combout\ : std_logic;
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
SIGNAL \inst2|Add0~31\ : std_logic;
SIGNAL \inst2|Add0~32_combout\ : std_logic;
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
SIGNAL \inst2|LessThan9~5_combout\ : std_logic;
SIGNAL \inst2|LessThan0~1_combout\ : std_logic;
SIGNAL \inst2|LessThan0~2_combout\ : std_logic;
SIGNAL \inst2|LessThan0~3_combout\ : std_logic;
SIGNAL \inst2|LessThan0~4_combout\ : std_logic;
SIGNAL \inst2|LessThan0~5_combout\ : std_logic;
SIGNAL \inst2|LessThan0~6_combout\ : std_logic;
SIGNAL \inst2|Selector33~0_combout\ : std_logic;
SIGNAL \inst2|estado.INICIALIZACAO~q\ : std_logic;
SIGNAL \inst2|Selector46~13_combout\ : std_logic;
SIGNAL \inst2|LessThan9~10_combout\ : std_logic;
SIGNAL \inst2|LessThan12~1_combout\ : std_logic;
SIGNAL \inst2|LessThan12~2_combout\ : std_logic;
SIGNAL \inst2|LessThan10~3_combout\ : std_logic;
SIGNAL \inst2|LessThan10~1_combout\ : std_logic;
SIGNAL \inst2|LessThan10~2_combout\ : std_logic;
SIGNAL \inst2|LessThan12~0_combout\ : std_logic;
SIGNAL \inst2|LessThan10~4_combout\ : std_logic;
SIGNAL \inst2|Selector46~1_combout\ : std_logic;
SIGNAL \inst2|LessThan11~0_combout\ : std_logic;
SIGNAL \inst2|LessThan11~1_combout\ : std_logic;
SIGNAL \inst2|LessThan10~0_combout\ : std_logic;
SIGNAL \inst2|Selector46~0_combout\ : std_logic;
SIGNAL \inst2|Selector46~2_combout\ : std_logic;
SIGNAL \inst2|Selector46~3_combout\ : std_logic;
SIGNAL \inst2|Selector46~5_combout\ : std_logic;
SIGNAL \inst2|LessThan1~2_combout\ : std_logic;
SIGNAL \inst2|Selector42~0_combout\ : std_logic;
SIGNAL \inst2|Selector46~12_combout\ : std_logic;
SIGNAL \inst2|LessThan2~3_combout\ : std_logic;
SIGNAL \inst2|LessThan4~3_combout\ : std_logic;
SIGNAL \inst2|Selector46~10_combout\ : std_logic;
SIGNAL \inst2|LessThan8~2_combout\ : std_logic;
SIGNAL \inst2|LessThan8~3_combout\ : std_logic;
SIGNAL \inst2|LessThan8~4_combout\ : std_logic;
SIGNAL \inst2|LessThan8~5_combout\ : std_logic;
SIGNAL \inst2|LessThan7~2_combout\ : std_logic;
SIGNAL \inst2|Selector46~4_combout\ : std_logic;
SIGNAL \inst2|Selector46~6_combout\ : std_logic;
SIGNAL \inst2|Selector46~7_combout\ : std_logic;
SIGNAL \inst2|busy~6_combout\ : std_logic;
SIGNAL \inst2|busy~7_combout\ : std_logic;
SIGNAL \inst2|busy~8_combout\ : std_logic;
SIGNAL \inst2|busy~9_combout\ : std_logic;
SIGNAL \inst2|Selector46~8_combout\ : std_logic;
SIGNAL \inst2|Selector46~9_combout\ : std_logic;
SIGNAL \inst2|Selector46~11_combout\ : std_logic;
SIGNAL \inst2|Selector46~14_combout\ : std_logic;
SIGNAL \inst2|e~q\ : std_logic;
SIGNAL \inst1|Mux0~0_combout\ : std_logic;
SIGNAL \inst1|Mux0~1_combout\ : std_logic;
SIGNAL \inst1|Add0~1_combout\ : std_logic;
SIGNAL \inst1|Mux0~2_combout\ : std_logic;
SIGNAL \inst1|LessThan0~1_combout\ : std_logic;
SIGNAL \inst1|lcd_bus[9]~22_combout\ : std_logic;
SIGNAL \inst2|rs~1_combout\ : std_logic;
SIGNAL \inst2|rs~2_combout\ : std_logic;
SIGNAL \inst2|rs~q\ : std_logic;
SIGNAL \key[2]~input_o\ : std_logic;
SIGNAL \inst3|cnt[2][0]~129_combout\ : std_logic;
SIGNAL \inst3|cnt[2][17]~131_combout\ : std_logic;
SIGNAL \inst3|cnt[2][0]~q\ : std_logic;
SIGNAL \inst3|cnt[2][0]~130\ : std_logic;
SIGNAL \inst3|cnt[2][1]~132_combout\ : std_logic;
SIGNAL \inst3|cnt[2][1]~q\ : std_logic;
SIGNAL \inst3|cnt[2][1]~133\ : std_logic;
SIGNAL \inst3|cnt[2][2]~134_combout\ : std_logic;
SIGNAL \inst3|cnt[2][2]~q\ : std_logic;
SIGNAL \inst3|cnt[2][2]~135\ : std_logic;
SIGNAL \inst3|cnt[2][3]~136_combout\ : std_logic;
SIGNAL \inst3|cnt[2][3]~q\ : std_logic;
SIGNAL \inst3|cnt[2][3]~137\ : std_logic;
SIGNAL \inst3|cnt[2][4]~138_combout\ : std_logic;
SIGNAL \inst3|cnt[2][4]~q\ : std_logic;
SIGNAL \inst3|cnt[2][4]~139\ : std_logic;
SIGNAL \inst3|cnt[2][5]~140_combout\ : std_logic;
SIGNAL \inst3|cnt[2][5]~q\ : std_logic;
SIGNAL \inst3|cnt[2][5]~141\ : std_logic;
SIGNAL \inst3|cnt[2][6]~142_combout\ : std_logic;
SIGNAL \inst3|cnt[2][6]~q\ : std_logic;
SIGNAL \inst3|cnt[2][6]~143\ : std_logic;
SIGNAL \inst3|cnt[2][7]~144_combout\ : std_logic;
SIGNAL \inst3|cnt[2][7]~q\ : std_logic;
SIGNAL \inst3|cnt[2][7]~145\ : std_logic;
SIGNAL \inst3|cnt[2][8]~146_combout\ : std_logic;
SIGNAL \inst3|cnt[2][8]~q\ : std_logic;
SIGNAL \inst3|cnt[2][8]~147\ : std_logic;
SIGNAL \inst3|cnt[2][9]~148_combout\ : std_logic;
SIGNAL \inst3|cnt[2][9]~q\ : std_logic;
SIGNAL \inst3|cnt[2][9]~149\ : std_logic;
SIGNAL \inst3|cnt[2][10]~150_combout\ : std_logic;
SIGNAL \inst3|cnt[2][10]~q\ : std_logic;
SIGNAL \inst3|cnt[2][10]~151\ : std_logic;
SIGNAL \inst3|cnt[2][11]~152_combout\ : std_logic;
SIGNAL \inst3|cnt[2][11]~q\ : std_logic;
SIGNAL \inst3|cnt[2][11]~153\ : std_logic;
SIGNAL \inst3|cnt[2][12]~154_combout\ : std_logic;
SIGNAL \inst3|cnt[2][12]~q\ : std_logic;
SIGNAL \inst3|cnt[2][12]~155\ : std_logic;
SIGNAL \inst3|cnt[2][13]~156_combout\ : std_logic;
SIGNAL \inst3|cnt[2][13]~q\ : std_logic;
SIGNAL \inst3|cnt[2][13]~157\ : std_logic;
SIGNAL \inst3|cnt[2][14]~158_combout\ : std_logic;
SIGNAL \inst3|cnt[2][14]~q\ : std_logic;
SIGNAL \inst3|cnt[2][14]~159\ : std_logic;
SIGNAL \inst3|cnt[2][15]~160_combout\ : std_logic;
SIGNAL \inst3|cnt[2][15]~q\ : std_logic;
SIGNAL \inst3|cnt[2][15]~161\ : std_logic;
SIGNAL \inst3|cnt[2][16]~162_combout\ : std_logic;
SIGNAL \inst3|cnt[2][16]~q\ : std_logic;
SIGNAL \inst3|cnt[2][16]~163\ : std_logic;
SIGNAL \inst3|cnt[2][17]~164_combout\ : std_logic;
SIGNAL \inst3|cnt[2][17]~q\ : std_logic;
SIGNAL \inst3|cnt[2][17]~165\ : std_logic;
SIGNAL \inst3|cnt[2][18]~166_combout\ : std_logic;
SIGNAL \inst3|cnt[2][18]~q\ : std_logic;
SIGNAL \inst3|cnt[2][18]~167\ : std_logic;
SIGNAL \inst3|cnt[2][19]~168_combout\ : std_logic;
SIGNAL \inst3|cnt[2][19]~q\ : std_logic;
SIGNAL \inst3|cnt[2][19]~169\ : std_logic;
SIGNAL \inst3|cnt[2][20]~170_combout\ : std_logic;
SIGNAL \inst3|cnt[2][20]~q\ : std_logic;
SIGNAL \inst3|cnt[2][20]~171\ : std_logic;
SIGNAL \inst3|cnt[2][21]~172_combout\ : std_logic;
SIGNAL \inst3|cnt[2][21]~q\ : std_logic;
SIGNAL \inst3|cnt[2][21]~173\ : std_logic;
SIGNAL \inst3|cnt[2][22]~174_combout\ : std_logic;
SIGNAL \inst3|cnt[2][22]~q\ : std_logic;
SIGNAL \inst3|cnt[2][22]~175\ : std_logic;
SIGNAL \inst3|cnt[2][23]~176_combout\ : std_logic;
SIGNAL \inst3|cnt[2][23]~q\ : std_logic;
SIGNAL \inst3|cnt[2][23]~177\ : std_logic;
SIGNAL \inst3|cnt[2][24]~178_combout\ : std_logic;
SIGNAL \inst3|cnt[2][24]~q\ : std_logic;
SIGNAL \inst3|cnt[2][24]~179\ : std_logic;
SIGNAL \inst3|cnt[2][25]~180_combout\ : std_logic;
SIGNAL \inst3|cnt[2][25]~q\ : std_logic;
SIGNAL \inst3|cnt[2][25]~181\ : std_logic;
SIGNAL \inst3|cnt[2][26]~182_combout\ : std_logic;
SIGNAL \inst3|cnt[2][26]~q\ : std_logic;
SIGNAL \inst3|cnt[2][26]~183\ : std_logic;
SIGNAL \inst3|cnt[2][27]~184_combout\ : std_logic;
SIGNAL \inst3|cnt[2][27]~q\ : std_logic;
SIGNAL \inst3|Equal2~8_combout\ : std_logic;
SIGNAL \inst3|cnt[2][27]~185\ : std_logic;
SIGNAL \inst3|cnt[2][28]~186_combout\ : std_logic;
SIGNAL \inst3|cnt[2][28]~q\ : std_logic;
SIGNAL \inst3|cnt[2][28]~187\ : std_logic;
SIGNAL \inst3|cnt[2][29]~188_combout\ : std_logic;
SIGNAL \inst3|cnt[2][29]~q\ : std_logic;
SIGNAL \inst3|cnt[2][29]~189\ : std_logic;
SIGNAL \inst3|cnt[2][30]~190_combout\ : std_logic;
SIGNAL \inst3|cnt[2][30]~q\ : std_logic;
SIGNAL \inst3|cnt[2][30]~191\ : std_logic;
SIGNAL \inst3|cnt[2][31]~192_combout\ : std_logic;
SIGNAL \inst3|cnt[2][31]~q\ : std_logic;
SIGNAL \inst3|Equal2~9_combout\ : std_logic;
SIGNAL \inst3|Equal2~3_combout\ : std_logic;
SIGNAL \inst3|Equal2~0_combout\ : std_logic;
SIGNAL \inst3|Equal2~2_combout\ : std_logic;
SIGNAL \inst3|Equal2~1_combout\ : std_logic;
SIGNAL \inst3|Equal2~4_combout\ : std_logic;
SIGNAL \inst3|Equal2~6_combout\ : std_logic;
SIGNAL \inst3|Equal2~5_combout\ : std_logic;
SIGNAL \inst3|Equal2~7_combout\ : std_logic;
SIGNAL \inst3|Equal2~10_combout\ : std_logic;
SIGNAL \inst3|stable[2]~1_combout\ : std_logic;
SIGNAL \inst10|stop_d1~0_combout\ : std_logic;
SIGNAL \inst10|stop_d1~q\ : std_logic;
SIGNAL \inst10|stop_d2~feeder_combout\ : std_logic;
SIGNAL \inst10|stop_d2~q\ : std_logic;
SIGNAL \inst10|stop_rise~0_combout\ : std_logic;
SIGNAL \inst10|stop_rise~q\ : std_logic;
SIGNAL \key[1]~input_o\ : std_logic;
SIGNAL \inst3|s0[1]~feeder_combout\ : std_logic;
SIGNAL \inst3|cnt[1][0]~64_combout\ : std_logic;
SIGNAL \inst3|cnt[1][7]~66_combout\ : std_logic;
SIGNAL \inst3|cnt[1][0]~q\ : std_logic;
SIGNAL \inst3|cnt[1][0]~65\ : std_logic;
SIGNAL \inst3|cnt[1][1]~67_combout\ : std_logic;
SIGNAL \inst3|cnt[1][1]~q\ : std_logic;
SIGNAL \inst3|cnt[1][1]~68\ : std_logic;
SIGNAL \inst3|cnt[1][2]~69_combout\ : std_logic;
SIGNAL \inst3|cnt[1][2]~q\ : std_logic;
SIGNAL \inst3|cnt[1][2]~70\ : std_logic;
SIGNAL \inst3|cnt[1][3]~71_combout\ : std_logic;
SIGNAL \inst3|cnt[1][3]~q\ : std_logic;
SIGNAL \inst3|cnt[1][3]~72\ : std_logic;
SIGNAL \inst3|cnt[1][4]~73_combout\ : std_logic;
SIGNAL \inst3|cnt[1][4]~q\ : std_logic;
SIGNAL \inst3|cnt[1][4]~74\ : std_logic;
SIGNAL \inst3|cnt[1][5]~75_combout\ : std_logic;
SIGNAL \inst3|cnt[1][5]~q\ : std_logic;
SIGNAL \inst3|cnt[1][5]~76\ : std_logic;
SIGNAL \inst3|cnt[1][6]~77_combout\ : std_logic;
SIGNAL \inst3|cnt[1][6]~q\ : std_logic;
SIGNAL \inst3|cnt[1][6]~78\ : std_logic;
SIGNAL \inst3|cnt[1][7]~79_combout\ : std_logic;
SIGNAL \inst3|cnt[1][7]~q\ : std_logic;
SIGNAL \inst3|cnt[1][7]~80\ : std_logic;
SIGNAL \inst3|cnt[1][8]~81_combout\ : std_logic;
SIGNAL \inst3|cnt[1][8]~q\ : std_logic;
SIGNAL \inst3|cnt[1][8]~82\ : std_logic;
SIGNAL \inst3|cnt[1][9]~83_combout\ : std_logic;
SIGNAL \inst3|cnt[1][9]~q\ : std_logic;
SIGNAL \inst3|cnt[1][9]~84\ : std_logic;
SIGNAL \inst3|cnt[1][10]~85_combout\ : std_logic;
SIGNAL \inst3|cnt[1][10]~q\ : std_logic;
SIGNAL \inst3|cnt[1][10]~86\ : std_logic;
SIGNAL \inst3|cnt[1][11]~87_combout\ : std_logic;
SIGNAL \inst3|cnt[1][11]~q\ : std_logic;
SIGNAL \inst3|Equal3~3_combout\ : std_logic;
SIGNAL \inst3|cnt[1][11]~88\ : std_logic;
SIGNAL \inst3|cnt[1][12]~89_combout\ : std_logic;
SIGNAL \inst3|cnt[1][12]~q\ : std_logic;
SIGNAL \inst3|cnt[1][12]~90\ : std_logic;
SIGNAL \inst3|cnt[1][13]~91_combout\ : std_logic;
SIGNAL \inst3|cnt[1][13]~q\ : std_logic;
SIGNAL \inst3|cnt[1][13]~92\ : std_logic;
SIGNAL \inst3|cnt[1][14]~93_combout\ : std_logic;
SIGNAL \inst3|cnt[1][14]~q\ : std_logic;
SIGNAL \inst3|cnt[1][14]~94\ : std_logic;
SIGNAL \inst3|cnt[1][15]~95_combout\ : std_logic;
SIGNAL \inst3|cnt[1][15]~q\ : std_logic;
SIGNAL \inst3|cnt[1][15]~96\ : std_logic;
SIGNAL \inst3|cnt[1][16]~97_combout\ : std_logic;
SIGNAL \inst3|cnt[1][16]~q\ : std_logic;
SIGNAL \inst3|cnt[1][16]~98\ : std_logic;
SIGNAL \inst3|cnt[1][17]~99_combout\ : std_logic;
SIGNAL \inst3|cnt[1][17]~q\ : std_logic;
SIGNAL \inst3|cnt[1][17]~100\ : std_logic;
SIGNAL \inst3|cnt[1][18]~101_combout\ : std_logic;
SIGNAL \inst3|cnt[1][18]~q\ : std_logic;
SIGNAL \inst3|cnt[1][18]~102\ : std_logic;
SIGNAL \inst3|cnt[1][19]~103_combout\ : std_logic;
SIGNAL \inst3|cnt[1][19]~q\ : std_logic;
SIGNAL \inst3|cnt[1][19]~104\ : std_logic;
SIGNAL \inst3|cnt[1][20]~105_combout\ : std_logic;
SIGNAL \inst3|cnt[1][20]~q\ : std_logic;
SIGNAL \inst3|cnt[1][20]~106\ : std_logic;
SIGNAL \inst3|cnt[1][21]~107_combout\ : std_logic;
SIGNAL \inst3|cnt[1][21]~q\ : std_logic;
SIGNAL \inst3|cnt[1][21]~108\ : std_logic;
SIGNAL \inst3|cnt[1][22]~109_combout\ : std_logic;
SIGNAL \inst3|cnt[1][22]~q\ : std_logic;
SIGNAL \inst3|cnt[1][22]~110\ : std_logic;
SIGNAL \inst3|cnt[1][23]~111_combout\ : std_logic;
SIGNAL \inst3|cnt[1][23]~q\ : std_logic;
SIGNAL \inst3|cnt[1][23]~112\ : std_logic;
SIGNAL \inst3|cnt[1][24]~113_combout\ : std_logic;
SIGNAL \inst3|cnt[1][24]~q\ : std_logic;
SIGNAL \inst3|cnt[1][24]~114\ : std_logic;
SIGNAL \inst3|cnt[1][25]~115_combout\ : std_logic;
SIGNAL \inst3|cnt[1][25]~q\ : std_logic;
SIGNAL \inst3|cnt[1][25]~116\ : std_logic;
SIGNAL \inst3|cnt[1][26]~117_combout\ : std_logic;
SIGNAL \inst3|cnt[1][26]~q\ : std_logic;
SIGNAL \inst3|cnt[1][26]~118\ : std_logic;
SIGNAL \inst3|cnt[1][27]~119_combout\ : std_logic;
SIGNAL \inst3|cnt[1][27]~q\ : std_logic;
SIGNAL \inst3|Equal3~7_combout\ : std_logic;
SIGNAL \inst3|cnt[1][27]~120\ : std_logic;
SIGNAL \inst3|cnt[1][28]~121_combout\ : std_logic;
SIGNAL \inst3|cnt[1][28]~q\ : std_logic;
SIGNAL \inst3|cnt[1][28]~122\ : std_logic;
SIGNAL \inst3|cnt[1][29]~123_combout\ : std_logic;
SIGNAL \inst3|cnt[1][29]~q\ : std_logic;
SIGNAL \inst3|cnt[1][29]~124\ : std_logic;
SIGNAL \inst3|cnt[1][30]~125_combout\ : std_logic;
SIGNAL \inst3|cnt[1][30]~q\ : std_logic;
SIGNAL \inst3|cnt[1][30]~126\ : std_logic;
SIGNAL \inst3|cnt[1][31]~127_combout\ : std_logic;
SIGNAL \inst3|cnt[1][31]~q\ : std_logic;
SIGNAL \inst3|Equal3~8_combout\ : std_logic;
SIGNAL \inst3|Equal3~5_combout\ : std_logic;
SIGNAL \inst3|Equal3~6_combout\ : std_logic;
SIGNAL \inst3|Equal3~9_combout\ : std_logic;
SIGNAL \inst3|Equal3~1_combout\ : std_logic;
SIGNAL \inst3|Equal3~0_combout\ : std_logic;
SIGNAL \inst3|Equal3~2_combout\ : std_logic;
SIGNAL \inst3|Equal3~4_combout\ : std_logic;
SIGNAL \inst3|Equal3~10_combout\ : std_logic;
SIGNAL \inst3|stable[1]~0_combout\ : std_logic;
SIGNAL \inst10|play_d1~0_combout\ : std_logic;
SIGNAL \inst10|play_d1~q\ : std_logic;
SIGNAL \inst10|play_d2~feeder_combout\ : std_logic;
SIGNAL \inst10|play_d2~q\ : std_logic;
SIGNAL \inst10|play_rise~0_combout\ : std_logic;
SIGNAL \inst10|play_rise~q\ : std_logic;
SIGNAL \inst10|run_en~0_combout\ : std_logic;
SIGNAL \inst10|run_en~q\ : std_logic;
SIGNAL \inst10|u_div|cnt[0]~32_combout\ : std_logic;
SIGNAL \inst10|u_div|LessThan0~17_combout\ : std_logic;
SIGNAL \inst10|u_div|LessThan0~16_combout\ : std_logic;
SIGNAL \inst10|stop_pulse~feeder_combout\ : std_logic;
SIGNAL \inst10|stop_pulse~q\ : std_logic;
SIGNAL \inst10|u_tmp|cnt[0]~32_combout\ : std_logic;
SIGNAL \~GND~combout\ : std_logic;
SIGNAL \inst10|u_tmp|cnt[0]~33\ : std_logic;
SIGNAL \inst10|u_tmp|cnt[1]~34_combout\ : std_logic;
SIGNAL \inst10|u_tmp|cnt[1]~35\ : std_logic;
SIGNAL \inst10|u_tmp|cnt[2]~36_combout\ : std_logic;
SIGNAL \inst10|u_tmp|cnt[2]~37\ : std_logic;
SIGNAL \inst10|u_tmp|cnt[3]~38_combout\ : std_logic;
SIGNAL \inst10|u_tmp|cnt[3]~39\ : std_logic;
SIGNAL \inst10|u_tmp|cnt[4]~40_combout\ : std_logic;
SIGNAL \inst10|u_tmp|cnt[4]~41\ : std_logic;
SIGNAL \inst10|u_tmp|cnt[5]~42_combout\ : std_logic;
SIGNAL \inst10|u_ctrl|Disparo~feeder_combout\ : std_logic;
SIGNAL \inst10|u_ctrl|Disparo~q\ : std_logic;
SIGNAL \inst10|u_tmp|cnt[5]~43\ : std_logic;
SIGNAL \inst10|u_tmp|cnt[6]~44_combout\ : std_logic;
SIGNAL \inst10|u_tmp|cnt[6]~45\ : std_logic;
SIGNAL \inst10|u_tmp|cnt[7]~46_combout\ : std_logic;
SIGNAL \inst10|u_tmp|cnt[7]~47\ : std_logic;
SIGNAL \inst10|u_tmp|cnt[8]~48_combout\ : std_logic;
SIGNAL \inst10|u_tmp|cnt[8]~49\ : std_logic;
SIGNAL \inst10|u_tmp|cnt[9]~50_combout\ : std_logic;
SIGNAL \inst10|u_tmp|cnt[9]~51\ : std_logic;
SIGNAL \inst10|u_tmp|cnt[10]~52_combout\ : std_logic;
SIGNAL \inst10|u_tmp|cnt[10]~53\ : std_logic;
SIGNAL \inst10|u_tmp|cnt[11]~54_combout\ : std_logic;
SIGNAL \inst10|u_tmp|cnt[11]~55\ : std_logic;
SIGNAL \inst10|u_tmp|cnt[12]~56_combout\ : std_logic;
SIGNAL \inst10|u_tmp|cnt[12]~57\ : std_logic;
SIGNAL \inst10|u_tmp|cnt[13]~58_combout\ : std_logic;
SIGNAL \inst10|u_tmp|cnt[13]~59\ : std_logic;
SIGNAL \inst10|u_tmp|cnt[14]~60_combout\ : std_logic;
SIGNAL \inst10|u_tmp|cnt[14]~61\ : std_logic;
SIGNAL \inst10|u_tmp|cnt[15]~62_combout\ : std_logic;
SIGNAL \inst10|u_tmp|cnt[15]~63\ : std_logic;
SIGNAL \inst10|u_tmp|cnt[16]~64_combout\ : std_logic;
SIGNAL \inst10|u_tmp|cnt[16]~65\ : std_logic;
SIGNAL \inst10|u_tmp|cnt[17]~66_combout\ : std_logic;
SIGNAL \inst10|u_tmp|cnt[17]~67\ : std_logic;
SIGNAL \inst10|u_tmp|cnt[18]~68_combout\ : std_logic;
SIGNAL \inst10|u_tmp|cnt[18]~69\ : std_logic;
SIGNAL \inst10|u_tmp|cnt[19]~70_combout\ : std_logic;
SIGNAL \inst10|u_tmp|cnt[19]~71\ : std_logic;
SIGNAL \inst10|u_tmp|cnt[20]~72_combout\ : std_logic;
SIGNAL \inst10|u_tmp|cnt[20]~73\ : std_logic;
SIGNAL \inst10|u_tmp|cnt[21]~74_combout\ : std_logic;
SIGNAL \inst10|u_tmp|cnt[21]~75\ : std_logic;
SIGNAL \inst10|u_tmp|cnt[22]~76_combout\ : std_logic;
SIGNAL \inst10|u_tmp|cnt[22]~77\ : std_logic;
SIGNAL \inst10|u_tmp|cnt[23]~78_combout\ : std_logic;
SIGNAL \inst10|u_tmp|cnt[23]~79\ : std_logic;
SIGNAL \inst10|u_tmp|cnt[24]~80_combout\ : std_logic;
SIGNAL \inst10|u_tmp|cnt[24]~81\ : std_logic;
SIGNAL \inst10|u_tmp|cnt[25]~82_combout\ : std_logic;
SIGNAL \inst10|u_tmp|cnt[25]~83\ : std_logic;
SIGNAL \inst10|u_tmp|cnt[26]~84_combout\ : std_logic;
SIGNAL \inst10|u_tmp|cnt[26]~85\ : std_logic;
SIGNAL \inst10|u_tmp|cnt[27]~86_combout\ : std_logic;
SIGNAL \inst10|u_tmp|cnt[27]~87\ : std_logic;
SIGNAL \inst10|u_tmp|cnt[28]~88_combout\ : std_logic;
SIGNAL \inst10|u_tmp|cnt[28]~89\ : std_logic;
SIGNAL \inst10|u_tmp|cnt[29]~90_combout\ : std_logic;
SIGNAL \inst10|u_tmp|cnt[29]~91\ : std_logic;
SIGNAL \inst10|u_tmp|cnt[30]~92_combout\ : std_logic;
SIGNAL \inst10|u_tmp|cnt[30]~93\ : std_logic;
SIGNAL \inst10|u_tmp|cnt[31]~94_combout\ : std_logic;
SIGNAL \inst10|u_tmp|Equal0~9_combout\ : std_logic;
SIGNAL \inst10|u_tmp|Equal0~8_combout\ : std_logic;
SIGNAL \inst10|u_tmp|Equal0~5_combout\ : std_logic;
SIGNAL \inst10|u_tmp|Equal0~6_combout\ : std_logic;
SIGNAL \inst10|u_tmp|Equal0~7_combout\ : std_logic;
SIGNAL \inst10|u_tmp|Equal0~1_combout\ : std_logic;
SIGNAL \inst10|u_tmp|Equal0~2_combout\ : std_logic;
SIGNAL \inst10|u_tmp|Equal0~0_combout\ : std_logic;
SIGNAL \inst10|u_tmp|Equal0~3_combout\ : std_logic;
SIGNAL \inst10|u_tmp|Equal0~4_combout\ : std_logic;
SIGNAL \inst10|u_tmp|Equal0~10_combout\ : std_logic;
SIGNAL \inst10|u_ctrl|Selector26~0_combout\ : std_logic;
SIGNAL \inst10|u_ctrl|Selector2~0_combout\ : std_logic;
SIGNAL \inst10|u_ctrl|estado_atual.s26~q\ : std_logic;
SIGNAL \inst10|u_ctrl|Selector27~0_combout\ : std_logic;
SIGNAL \inst10|u_ctrl|estado_atual.s27~q\ : std_logic;
SIGNAL \inst10|u_ctrl|Selector28~0_combout\ : std_logic;
SIGNAL \inst10|u_ctrl|estado_atual.s28~q\ : std_logic;
SIGNAL \inst10|u_ctrl|Selector29~0_combout\ : std_logic;
SIGNAL \inst10|u_ctrl|estado_atual.s29~q\ : std_logic;
SIGNAL \inst10|u_ctrl|Selector30~0_combout\ : std_logic;
SIGNAL \inst10|u_ctrl|Selector30~1_combout\ : std_logic;
SIGNAL \inst10|u_ctrl|estado_atual.s30~q\ : std_logic;
SIGNAL \inst10|u_ctrl|armed~0_combout\ : std_logic;
SIGNAL \inst10|u_ctrl|Selector0~1_combout\ : std_logic;
SIGNAL \inst10|u_ctrl|Selector0~0_combout\ : std_logic;
SIGNAL \inst10|u_ctrl|Selector0~2_combout\ : std_logic;
SIGNAL \inst10|u_ctrl|estado_atual.s0~q\ : std_logic;
SIGNAL \inst10|u_ctrl|armed~1_combout\ : std_logic;
SIGNAL \inst10|u_ctrl|armed~q\ : std_logic;
SIGNAL \inst10|u_ctrl|process_0~2_combout\ : std_logic;
SIGNAL \inst10|u_ctrl|enable~0_combout\ : std_logic;
SIGNAL \inst10|u_ctrl|enable~q\ : std_logic;
SIGNAL \inst10|u_ctrl|Selector1~0_combout\ : std_logic;
SIGNAL \inst10|u_ctrl|Selector1~1_combout\ : std_logic;
SIGNAL \inst10|u_ctrl|estado_atual.s1~q\ : std_logic;
SIGNAL \inst10|u_ctrl|Selector2~1_combout\ : std_logic;
SIGNAL \inst10|u_ctrl|estado_atual.s2~q\ : std_logic;
SIGNAL \inst10|u_ctrl|Selector3~0_combout\ : std_logic;
SIGNAL \inst10|u_ctrl|estado_atual.s3~q\ : std_logic;
SIGNAL \inst10|u_ctrl|Selector4~0_combout\ : std_logic;
SIGNAL \inst10|u_ctrl|estado_atual.s4~q\ : std_logic;
SIGNAL \inst10|u_ctrl|Selector5~0_combout\ : std_logic;
SIGNAL \inst10|u_ctrl|estado_atual.s5~q\ : std_logic;
SIGNAL \inst10|u_ctrl|Selector6~0_combout\ : std_logic;
SIGNAL \inst10|u_ctrl|estado_atual.s6~q\ : std_logic;
SIGNAL \inst10|u_ctrl|Selector7~0_combout\ : std_logic;
SIGNAL \inst10|u_ctrl|estado_atual.s7~q\ : std_logic;
SIGNAL \inst10|u_ctrl|Selector8~0_combout\ : std_logic;
SIGNAL \inst10|u_ctrl|estado_atual.s8~q\ : std_logic;
SIGNAL \inst10|u_ctrl|Selector9~0_combout\ : std_logic;
SIGNAL \inst10|u_ctrl|estado_atual.s9~q\ : std_logic;
SIGNAL \inst10|u_ctrl|Selector10~0_combout\ : std_logic;
SIGNAL \inst10|u_ctrl|estado_atual.s10~q\ : std_logic;
SIGNAL \inst10|u_ctrl|Selector11~0_combout\ : std_logic;
SIGNAL \inst10|u_ctrl|estado_atual.s11~q\ : std_logic;
SIGNAL \inst10|u_ctrl|Selector12~0_combout\ : std_logic;
SIGNAL \inst10|u_ctrl|estado_atual.s12~q\ : std_logic;
SIGNAL \inst10|u_ctrl|Selector13~0_combout\ : std_logic;
SIGNAL \inst10|u_ctrl|estado_atual.s13~q\ : std_logic;
SIGNAL \inst10|u_ctrl|Selector14~0_combout\ : std_logic;
SIGNAL \inst10|u_ctrl|estado_atual.s14~q\ : std_logic;
SIGNAL \inst10|u_ctrl|Selector15~0_combout\ : std_logic;
SIGNAL \inst10|u_ctrl|estado_atual.s15~q\ : std_logic;
SIGNAL \inst10|u_ctrl|Selector16~0_combout\ : std_logic;
SIGNAL \inst10|u_ctrl|estado_atual.s16~q\ : std_logic;
SIGNAL \inst10|u_ctrl|Selector17~0_combout\ : std_logic;
SIGNAL \inst10|u_ctrl|estado_atual.s17~q\ : std_logic;
SIGNAL \inst10|u_ctrl|Selector18~0_combout\ : std_logic;
SIGNAL \inst10|u_ctrl|estado_atual.s18~q\ : std_logic;
SIGNAL \inst10|u_ctrl|Selector19~0_combout\ : std_logic;
SIGNAL \inst10|u_ctrl|estado_atual.s19~q\ : std_logic;
SIGNAL \inst10|u_ctrl|Selector20~0_combout\ : std_logic;
SIGNAL \inst10|u_ctrl|estado_atual.s20~q\ : std_logic;
SIGNAL \inst10|u_ctrl|Selector21~0_combout\ : std_logic;
SIGNAL \inst10|u_ctrl|estado_atual.s21~q\ : std_logic;
SIGNAL \inst10|u_ctrl|Selector22~0_combout\ : std_logic;
SIGNAL \inst10|u_ctrl|estado_atual.s22~q\ : std_logic;
SIGNAL \inst10|u_ctrl|Selector23~0_combout\ : std_logic;
SIGNAL \inst10|u_ctrl|estado_atual.s23~q\ : std_logic;
SIGNAL \inst10|u_ctrl|Selector24~0_combout\ : std_logic;
SIGNAL \inst10|u_ctrl|estado_atual.s24~q\ : std_logic;
SIGNAL \inst10|u_ctrl|Selector25~0_combout\ : std_logic;
SIGNAL \inst10|u_ctrl|estado_atual.s25~q\ : std_logic;
SIGNAL \inst10|u_ctrl|WideOr31~0_combout\ : std_logic;
SIGNAL \inst10|u_ctrl|WideOr32~0_combout\ : std_logic;
SIGNAL \inst10|u_ctrl|WideOr32~combout\ : std_logic;
SIGNAL \inst10|u_ctrl|WideOr34~1_combout\ : std_logic;
SIGNAL \inst10|u_ctrl|WideOr33~0_combout\ : std_logic;
SIGNAL \inst10|u_ctrl|WideOr34~0_combout\ : std_logic;
SIGNAL \inst10|u_ctrl|WideOr34~2_combout\ : std_logic;
SIGNAL \inst10|u_ctrl|WideOr36~0_combout\ : std_logic;
SIGNAL \inst10|u_ctrl|WideOr31~1_combout\ : std_logic;
SIGNAL \inst10|u_ctrl|WideOr35~combout\ : std_logic;
SIGNAL \inst10|u_div|LessThan0~14_combout\ : std_logic;
SIGNAL \inst10|u_ctrl|WideOr33~1_combout\ : std_logic;
SIGNAL \inst10|u_div|LessThan0~15_combout\ : std_logic;
SIGNAL \inst10|u_div|LessThan0~12_combout\ : std_logic;
SIGNAL \inst10|u_ctrl|WideOr36~combout\ : std_logic;
SIGNAL \inst10|u_ctrl|WideOr33~2_combout\ : std_logic;
SIGNAL \inst10|u_ctrl|WideOr38~combout\ : std_logic;
SIGNAL \inst10|u_ctrl|WideOr39~combout\ : std_logic;
SIGNAL \inst10|u_ctrl|WideOr40~0_combout\ : std_logic;
SIGNAL \inst10|u_ctrl|WideOr42~combout\ : std_logic;
SIGNAL \inst10|u_ctrl|WideOr43~2_combout\ : std_logic;
SIGNAL \inst10|u_ctrl|WideOr46~combout\ : std_logic;
SIGNAL \inst10|u_ctrl|WideOr45~1_combout\ : std_logic;
SIGNAL \inst10|u_ctrl|WideOr45~2_combout\ : std_logic;
SIGNAL \inst10|u_ctrl|WideOr45~0_combout\ : std_logic;
SIGNAL \inst10|u_ctrl|WideOr45~3_combout\ : std_logic;
SIGNAL \inst10|u_div|LessThan0~2_combout\ : std_logic;
SIGNAL \inst10|u_div|LessThan0~3_combout\ : std_logic;
SIGNAL \inst10|u_div|LessThan0~4_combout\ : std_logic;
SIGNAL \inst10|u_div|LessThan0~22_combout\ : std_logic;
SIGNAL \inst10|u_ctrl|WideOr38~0_combout\ : std_logic;
SIGNAL \inst10|u_div|LessThan0~5_combout\ : std_logic;
SIGNAL \inst10|u_div|LessThan0~6_combout\ : std_logic;
SIGNAL \inst10|u_div|LessThan0~7_combout\ : std_logic;
SIGNAL \inst10|u_div|LessThan0~8_combout\ : std_logic;
SIGNAL \inst10|u_div|LessThan0~9_combout\ : std_logic;
SIGNAL \inst10|u_div|LessThan0~10_combout\ : std_logic;
SIGNAL \inst10|u_div|LessThan0~11_combout\ : std_logic;
SIGNAL \inst10|u_div|LessThan0~13_combout\ : std_logic;
SIGNAL \inst10|u_div|LessThan0~23_combout\ : std_logic;
SIGNAL \inst10|u_div|LessThan0~24_combout\ : std_logic;
SIGNAL \inst10|u_div|LessThan0~18_combout\ : std_logic;
SIGNAL \inst10|u_div|LessThan0~19_combout\ : std_logic;
SIGNAL \inst10|u_div|LessThan0~20_combout\ : std_logic;
SIGNAL \inst10|u_div|LessThan0~21_combout\ : std_logic;
SIGNAL \inst10|u_div|cnt[0]~33\ : std_logic;
SIGNAL \inst10|u_div|cnt[1]~34_combout\ : std_logic;
SIGNAL \inst10|u_div|cnt[1]~35\ : std_logic;
SIGNAL \inst10|u_div|cnt[2]~36_combout\ : std_logic;
SIGNAL \inst10|u_div|cnt[2]~37\ : std_logic;
SIGNAL \inst10|u_div|cnt[3]~38_combout\ : std_logic;
SIGNAL \inst10|u_div|cnt[3]~39\ : std_logic;
SIGNAL \inst10|u_div|cnt[4]~40_combout\ : std_logic;
SIGNAL \inst10|u_div|cnt[4]~41\ : std_logic;
SIGNAL \inst10|u_div|cnt[5]~42_combout\ : std_logic;
SIGNAL \inst10|u_div|cnt[5]~43\ : std_logic;
SIGNAL \inst10|u_div|cnt[6]~44_combout\ : std_logic;
SIGNAL \inst10|u_div|cnt[6]~45\ : std_logic;
SIGNAL \inst10|u_div|cnt[7]~46_combout\ : std_logic;
SIGNAL \inst10|u_div|cnt[7]~47\ : std_logic;
SIGNAL \inst10|u_div|cnt[8]~48_combout\ : std_logic;
SIGNAL \inst10|u_div|cnt[8]~49\ : std_logic;
SIGNAL \inst10|u_div|cnt[9]~50_combout\ : std_logic;
SIGNAL \inst10|u_div|cnt[9]~51\ : std_logic;
SIGNAL \inst10|u_div|cnt[10]~52_combout\ : std_logic;
SIGNAL \inst10|u_div|cnt[10]~53\ : std_logic;
SIGNAL \inst10|u_div|cnt[11]~54_combout\ : std_logic;
SIGNAL \inst10|u_div|cnt[11]~55\ : std_logic;
SIGNAL \inst10|u_div|cnt[12]~56_combout\ : std_logic;
SIGNAL \inst10|u_div|cnt[12]~57\ : std_logic;
SIGNAL \inst10|u_div|cnt[13]~58_combout\ : std_logic;
SIGNAL \inst10|u_div|cnt[13]~59\ : std_logic;
SIGNAL \inst10|u_div|cnt[14]~60_combout\ : std_logic;
SIGNAL \inst10|u_div|cnt[14]~61\ : std_logic;
SIGNAL \inst10|u_div|cnt[15]~62_combout\ : std_logic;
SIGNAL \inst10|u_div|cnt[15]~63\ : std_logic;
SIGNAL \inst10|u_div|cnt[16]~64_combout\ : std_logic;
SIGNAL \inst10|u_div|cnt[16]~65\ : std_logic;
SIGNAL \inst10|u_div|cnt[17]~66_combout\ : std_logic;
SIGNAL \inst10|u_div|cnt[17]~67\ : std_logic;
SIGNAL \inst10|u_div|cnt[18]~68_combout\ : std_logic;
SIGNAL \inst10|u_div|cnt[18]~69\ : std_logic;
SIGNAL \inst10|u_div|cnt[19]~70_combout\ : std_logic;
SIGNAL \inst10|u_div|cnt[19]~71\ : std_logic;
SIGNAL \inst10|u_div|cnt[20]~72_combout\ : std_logic;
SIGNAL \inst10|u_div|cnt[20]~73\ : std_logic;
SIGNAL \inst10|u_div|cnt[21]~74_combout\ : std_logic;
SIGNAL \inst10|u_div|cnt[21]~75\ : std_logic;
SIGNAL \inst10|u_div|cnt[22]~76_combout\ : std_logic;
SIGNAL \inst10|u_div|cnt[22]~77\ : std_logic;
SIGNAL \inst10|u_div|cnt[23]~78_combout\ : std_logic;
SIGNAL \inst10|u_div|cnt[23]~79\ : std_logic;
SIGNAL \inst10|u_div|cnt[24]~80_combout\ : std_logic;
SIGNAL \inst10|u_div|cnt[24]~81\ : std_logic;
SIGNAL \inst10|u_div|cnt[25]~82_combout\ : std_logic;
SIGNAL \inst10|u_div|cnt[25]~83\ : std_logic;
SIGNAL \inst10|u_div|cnt[26]~84_combout\ : std_logic;
SIGNAL \inst10|u_div|cnt[26]~85\ : std_logic;
SIGNAL \inst10|u_div|cnt[27]~86_combout\ : std_logic;
SIGNAL \inst10|u_div|cnt[27]~87\ : std_logic;
SIGNAL \inst10|u_div|cnt[28]~88_combout\ : std_logic;
SIGNAL \inst10|u_div|cnt[28]~89\ : std_logic;
SIGNAL \inst10|u_div|cnt[29]~90_combout\ : std_logic;
SIGNAL \inst10|u_div|cnt[29]~91\ : std_logic;
SIGNAL \inst10|u_div|cnt[30]~92_combout\ : std_logic;
SIGNAL \inst10|u_div|cnt[30]~93\ : std_logic;
SIGNAL \inst10|u_div|cnt[31]~94_combout\ : std_logic;
SIGNAL \inst10|u_div|toggle~0_combout\ : std_logic;
SIGNAL \inst10|u_div|toggle~q\ : std_logic;
SIGNAL \inst10|buzzer~0_combout\ : std_logic;
SIGNAL \inst2|Selector38~0_combout\ : std_logic;
SIGNAL \inst2|lcd_data[2]~2_combout\ : std_logic;
SIGNAL \inst1|Mux3~4_combout\ : std_logic;
SIGNAL \inst1|Add0~3_combout\ : std_logic;
SIGNAL \inst1|Mux3~13_combout\ : std_logic;
SIGNAL \inst1|lcd_bus[6]~0_combout\ : std_logic;
SIGNAL \inst1|lcd_bus[6]~27_combout\ : std_logic;
SIGNAL \inst1|lcd_bus[6]~26_combout\ : std_logic;
SIGNAL \inst1|lcd_bus[6]~28_combout\ : std_logic;
SIGNAL \inst1|lcd_bus[6]~24_combout\ : std_logic;
SIGNAL \inst1|lcd_bus[6]~25_combout\ : std_logic;
SIGNAL \inst1|lcd_bus[6]~53_combout\ : std_logic;
SIGNAL \inst2|Selector39~0_combout\ : std_logic;
SIGNAL \inst1|lcd_bus[5]~1_combout\ : std_logic;
SIGNAL \inst1|lcd_bus[5]~29_combout\ : std_logic;
SIGNAL \inst1|lcd_bus[5]~30_combout\ : std_logic;
SIGNAL \inst1|lcd_bus[5]~31_combout\ : std_logic;
SIGNAL \inst1|lcd_bus[5]~32_combout\ : std_logic;
SIGNAL \inst1|lcd_bus[5]~33_combout\ : std_logic;
SIGNAL \inst1|lcd_bus[5]~34_combout\ : std_logic;
SIGNAL \inst2|Selector40~2_combout\ : std_logic;
SIGNAL \inst2|Selector40~3_combout\ : std_logic;
SIGNAL \inst2|Selector40~4_combout\ : std_logic;
SIGNAL \inst1|lcd_bus[4]~55_combout\ : std_logic;
SIGNAL \inst1|lcd_bus[4]~54_combout\ : std_logic;
SIGNAL \inst1|lcd_bus[4]~36_combout\ : std_logic;
SIGNAL \inst1|lcd_bus[4]~35_combout\ : std_logic;
SIGNAL \inst1|lcd_bus[4]~37_combout\ : std_logic;
SIGNAL \inst1|lcd_bus[4]~38_combout\ : std_logic;
SIGNAL \inst1|lcd_bus[4]~39_combout\ : std_logic;
SIGNAL \inst1|lcd_bus[4]~40_combout\ : std_logic;
SIGNAL \inst1|lcd_bus[4]~2_combout\ : std_logic;
SIGNAL \inst1|Mux3~5_combout\ : std_logic;
SIGNAL \inst2|Selector41~2_combout\ : std_logic;
SIGNAL \inst1|lcd_bus[3]~57_combout\ : std_logic;
SIGNAL \inst1|lcd_bus[3]~42_combout\ : std_logic;
SIGNAL \inst1|lcd_bus[3]~43_combout\ : std_logic;
SIGNAL \inst1|lcd_bus[3]~41_combout\ : std_logic;
SIGNAL \inst1|lcd_bus[3]~56_combout\ : std_logic;
SIGNAL \inst1|lcd_bus[3]~3_combout\ : std_logic;
SIGNAL \inst1|Mux3~7_combout\ : std_logic;
SIGNAL \inst2|Selector42~1_combout\ : std_logic;
SIGNAL \inst2|Selector42~2_combout\ : std_logic;
SIGNAL \inst1|Mux3~8_combout\ : std_logic;
SIGNAL \inst1|lcd_bus[2]~58_combout\ : std_logic;
SIGNAL \inst1|lcd_bus[2]~45_combout\ : std_logic;
SIGNAL \inst1|lcd_bus[2]~44_combout\ : std_logic;
SIGNAL \inst1|lcd_bus[2]~46_combout\ : std_logic;
SIGNAL \inst1|lcd_bus[2]~4_combout\ : std_logic;
SIGNAL \inst1|Mux3~9_combout\ : std_logic;
SIGNAL \inst2|Selector45~0_combout\ : std_logic;
SIGNAL \inst2|Selector43~2_combout\ : std_logic;
SIGNAL \inst2|Selector43~3_combout\ : std_logic;
SIGNAL \inst2|Selector43~4_combout\ : std_logic;
SIGNAL \inst2|Selector43~5_combout\ : std_logic;
SIGNAL \inst1|lcd_bus[1]~47_combout\ : std_logic;
SIGNAL \inst1|lcd_bus[1]~48_combout\ : std_logic;
SIGNAL \inst1|lcd_bus[1]~49_combout\ : std_logic;
SIGNAL \inst1|lcd_bus[1]~59_combout\ : std_logic;
SIGNAL \inst1|lcd_bus[1]~5_combout\ : std_logic;
SIGNAL \inst1|Mux3~10_combout\ : std_logic;
SIGNAL \inst2|Selector44~0_combout\ : std_logic;
SIGNAL \inst2|Selector44~1_combout\ : std_logic;
SIGNAL \inst1|lcd_bus[0]~6_combout\ : std_logic;
SIGNAL \inst1|Mux3~12_combout\ : std_logic;
SIGNAL \inst1|lcd_bus[0]~50_combout\ : std_logic;
SIGNAL \inst1|Mux3~6_combout\ : std_logic;
SIGNAL \inst1|Mux3~11_combout\ : std_logic;
SIGNAL \inst1|lcd_bus[0]~51_combout\ : std_logic;
SIGNAL \inst1|lcd_bus[0]~52_combout\ : std_logic;
SIGNAL \inst2|Selector45~1_combout\ : std_logic;
SIGNAL \inst2|Selector45~2_combout\ : std_logic;
SIGNAL \inst10|u_div|cnt\ : std_logic_vector(31 DOWNTO 0);
SIGNAL \inst1|lcd_bus\ : std_logic_vector(9 DOWNTO 0);
SIGNAL \inst2|clk_count\ : std_logic_vector(31 DOWNTO 0);
SIGNAL \inst10|u_tmp|cnt\ : std_logic_vector(31 DOWNTO 0);
SIGNAL \inst2|lcd_data\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \inst1|char\ : std_logic_vector(5 DOWNTO 0);
SIGNAL \inst10|u_ctrl|Freq_out\ : std_logic_vector(27 DOWNTO 0);
SIGNAL \inst3|stable\ : std_logic_vector(4 DOWNTO 1);
SIGNAL \inst3|s1\ : std_logic_vector(4 DOWNTO 1);
SIGNAL \inst3|s0\ : std_logic_vector(4 DOWNTO 1);
SIGNAL \inst1|ALT_INV_char~0_combout\ : std_logic;

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
\inst1|ALT_INV_char~0_combout\ <= NOT \inst1|char~0_combout\;
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
	i => \inst10|buzzer~0_combout\,
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

-- Location: LCCOMB_X22_Y13_N0
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

-- Location: LCCOMB_X24_Y16_N24
\inst1|char~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|char~4_combout\ = (!\inst1|char\(0) & \inst1|LessThan0~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst1|char\(0),
	datad => \inst1|LessThan0~0_combout\,
	combout => \inst1|char~4_combout\);

-- Location: LCCOMB_X23_Y13_N20
\inst2|Selector1~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|Selector1~0_combout\ = (\inst2|Add0~62_combout\ & \inst2|clk_count[11]~4_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst2|Add0~62_combout\,
	datad => \inst2|clk_count[11]~4_combout\,
	combout => \inst2|Selector1~0_combout\);

-- Location: FF_X23_Y13_N21
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

-- Location: LCCOMB_X22_Y12_N28
\inst2|Add0~60\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|Add0~60_combout\ = (\inst2|clk_count\(30) & (\inst2|Add0~59\ $ (GND))) # (!\inst2|clk_count\(30) & (!\inst2|Add0~59\ & VCC))
-- \inst2|Add0~61\ = CARRY((\inst2|clk_count\(30) & !\inst2|Add0~59\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|clk_count\(30),
	datad => VCC,
	cin => \inst2|Add0~59\,
	combout => \inst2|Add0~60_combout\,
	cout => \inst2|Add0~61\);

-- Location: LCCOMB_X22_Y12_N30
\inst2|Add0~62\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|Add0~62_combout\ = \inst2|clk_count\(31) $ (\inst2|Add0~61\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst2|clk_count\(31),
	cin => \inst2|Add0~61\,
	combout => \inst2|Add0~62_combout\);

-- Location: LCCOMB_X23_Y13_N24
\inst2|LessThan3~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|LessThan3~3_combout\ = (!\inst2|Add0~28_combout\ & (!\inst2|Add0~30_combout\ & (!\inst2|Add0~26_combout\ & !\inst2|Add0~32_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|Add0~28_combout\,
	datab => \inst2|Add0~30_combout\,
	datac => \inst2|Add0~26_combout\,
	datad => \inst2|Add0~32_combout\,
	combout => \inst2|LessThan3~3_combout\);

-- Location: LCCOMB_X21_Y13_N4
\inst2|LessThan3~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|LessThan3~10_combout\ = ((!\inst2|Add0~8_combout\ & ((!\inst2|Add0~6_combout\) # (!\inst2|Add0~4_combout\)))) # (!\inst2|Add0~10_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001111100111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|Add0~4_combout\,
	datab => \inst2|Add0~8_combout\,
	datac => \inst2|Add0~10_combout\,
	datad => \inst2|Add0~6_combout\,
	combout => \inst2|LessThan3~10_combout\);

-- Location: LCCOMB_X21_Y11_N24
\inst2|LessThan3~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|LessThan3~7_combout\ = (\inst2|Add0~22_combout\ & \inst2|Add0~20_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst2|Add0~22_combout\,
	datad => \inst2|Add0~20_combout\,
	combout => \inst2|LessThan3~7_combout\);

-- Location: LCCOMB_X21_Y11_N28
\inst2|LessThan3~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|LessThan3~9_combout\ = ((!\inst2|Add0~18_combout\ & ((!\inst2|Add0~16_combout\) # (!\inst2|Add0~14_combout\)))) # (!\inst2|LessThan3~7_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000011111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|Add0~14_combout\,
	datab => \inst2|Add0~16_combout\,
	datac => \inst2|Add0~18_combout\,
	datad => \inst2|LessThan3~7_combout\,
	combout => \inst2|LessThan3~9_combout\);

-- Location: LCCOMB_X21_Y11_N6
\inst2|LessThan3~11\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|LessThan3~11_combout\ = (\inst2|LessThan3~9_combout\) # ((\inst2|LessThan3~10_combout\ & (!\inst2|Add0~12_combout\ & !\inst2|Add0~18_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|LessThan3~10_combout\,
	datab => \inst2|Add0~12_combout\,
	datac => \inst2|Add0~18_combout\,
	datad => \inst2|LessThan3~9_combout\,
	combout => \inst2|LessThan3~11_combout\);

-- Location: LCCOMB_X21_Y12_N20
\inst2|LessThan3~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|LessThan3~0_combout\ = (!\inst2|Add0~44_combout\ & (!\inst2|Add0~46_combout\ & (!\inst2|Add0~42_combout\ & !\inst2|Add0~48_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|Add0~44_combout\,
	datab => \inst2|Add0~46_combout\,
	datac => \inst2|Add0~42_combout\,
	datad => \inst2|Add0~48_combout\,
	combout => \inst2|LessThan3~0_combout\);

-- Location: LCCOMB_X21_Y12_N28
\inst2|LessThan3~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|LessThan3~2_combout\ = (!\inst2|Add0~36_combout\ & (!\inst2|Add0~40_combout\ & (!\inst2|Add0~34_combout\ & !\inst2|Add0~38_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|Add0~36_combout\,
	datab => \inst2|Add0~40_combout\,
	datac => \inst2|Add0~34_combout\,
	datad => \inst2|Add0~38_combout\,
	combout => \inst2|LessThan3~2_combout\);

-- Location: LCCOMB_X21_Y15_N10
\inst2|LessThan3~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|LessThan3~12_combout\ = (!\inst2|Add0~50_combout\ & \inst2|LessThan3~2_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|Add0~50_combout\,
	datac => \inst2|LessThan3~2_combout\,
	combout => \inst2|LessThan3~12_combout\);

-- Location: LCCOMB_X21_Y15_N24
\inst2|LessThan3~13\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|LessThan3~13_combout\ = (!\inst2|Add0~52_combout\ & (!\inst2|Add0~54_combout\ & (\inst2|LessThan3~0_combout\ & \inst2|LessThan3~12_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|Add0~52_combout\,
	datab => \inst2|Add0~54_combout\,
	datac => \inst2|LessThan3~0_combout\,
	datad => \inst2|LessThan3~12_combout\,
	combout => \inst2|LessThan3~13_combout\);

-- Location: LCCOMB_X21_Y15_N28
\inst2|busy~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|busy~10_combout\ = (\inst2|LessThan3~3_combout\ & (!\inst2|Add0~24_combout\ & (\inst2|LessThan3~11_combout\ & \inst2|LessThan3~13_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|LessThan3~3_combout\,
	datab => \inst2|Add0~24_combout\,
	datac => \inst2|LessThan3~11_combout\,
	datad => \inst2|LessThan3~13_combout\,
	combout => \inst2|busy~10_combout\);

-- Location: LCCOMB_X22_Y15_N14
\inst2|busy~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|busy~12_combout\ = (!\inst2|Add0~58_combout\ & (!\inst2|Add0~56_combout\ & \inst2|busy~10_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst2|Add0~58_combout\,
	datac => \inst2|Add0~56_combout\,
	datad => \inst2|busy~10_combout\,
	combout => \inst2|busy~12_combout\);

-- Location: LCCOMB_X21_Y11_N2
\inst2|LessThan1~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|LessThan1~0_combout\ = (!\inst2|Add0~20_combout\ & (!\inst2|Add0~18_combout\ & (!\inst2|Add0~22_combout\ & !\inst2|Add0~24_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|Add0~20_combout\,
	datab => \inst2|Add0~18_combout\,
	datac => \inst2|Add0~22_combout\,
	datad => \inst2|Add0~24_combout\,
	combout => \inst2|LessThan1~0_combout\);

-- Location: LCCOMB_X21_Y13_N30
\inst2|LessThan8~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|LessThan8~0_combout\ = (\inst2|Add0~8_combout\ & \inst2|Add0~10_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst2|Add0~8_combout\,
	datac => \inst2|Add0~10_combout\,
	combout => \inst2|LessThan8~0_combout\);

-- Location: LCCOMB_X21_Y11_N0
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

-- Location: LCCOMB_X21_Y11_N14
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

-- Location: LCCOMB_X21_Y13_N28
\inst2|busy~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|busy~5_combout\ = (!\inst2|Add0~4_combout\ & (!\inst2|Add0~8_combout\ & (!\inst2|Add0~10_combout\ & !\inst2|Add0~6_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|Add0~4_combout\,
	datab => \inst2|Add0~8_combout\,
	datac => \inst2|Add0~10_combout\,
	datad => \inst2|Add0~6_combout\,
	combout => \inst2|busy~5_combout\);

-- Location: LCCOMB_X21_Y11_N12
\inst2|LessThan6~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|LessThan6~2_combout\ = (\inst2|busy~5_combout\ & (!\inst2|Add0~12_combout\ & (!\inst2|Add0~16_combout\ & !\inst2|Add0~14_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|busy~5_combout\,
	datab => \inst2|Add0~12_combout\,
	datac => \inst2|Add0~16_combout\,
	datad => \inst2|Add0~14_combout\,
	combout => \inst2|LessThan6~2_combout\);

-- Location: LCCOMB_X21_Y11_N4
\inst2|LessThan6~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|LessThan6~0_combout\ = (\inst2|Add0~30_combout\ & (\inst2|Add0~32_combout\ & ((\inst2|Add0~28_combout\) # (\inst2|Add0~26_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|Add0~28_combout\,
	datab => \inst2|Add0~26_combout\,
	datac => \inst2|Add0~30_combout\,
	datad => \inst2|Add0~32_combout\,
	combout => \inst2|LessThan6~0_combout\);

-- Location: LCCOMB_X21_Y11_N30
\inst2|LessThan6~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|LessThan6~1_combout\ = (!\inst2|Add0~28_combout\ & \inst2|LessThan1~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst2|Add0~28_combout\,
	datad => \inst2|LessThan1~0_combout\,
	combout => \inst2|LessThan6~1_combout\);

-- Location: LCCOMB_X21_Y11_N10
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

-- Location: LCCOMB_X21_Y11_N22
\inst2|LessThan8~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|LessThan8~6_combout\ = (!\inst2|Add0~28_combout\ & !\inst2|Add0~24_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst2|Add0~28_combout\,
	datad => \inst2|Add0~24_combout\,
	combout => \inst2|LessThan8~6_combout\);

-- Location: LCCOMB_X21_Y11_N20
\inst2|LessThan8~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|LessThan8~7_combout\ = (\inst2|LessThan8~6_combout\ & (((\inst2|LessThan8~1_combout\ & !\inst2|Add0~18_combout\)) # (!\inst2|LessThan3~7_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|LessThan8~1_combout\,
	datab => \inst2|Add0~18_combout\,
	datac => \inst2|LessThan8~6_combout\,
	datad => \inst2|LessThan3~7_combout\,
	combout => \inst2|LessThan8~7_combout\);

-- Location: LCCOMB_X21_Y11_N26
\inst2|lcd_data[2]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|lcd_data[2]~0_combout\ = (\inst2|LessThan6~0_combout\ & (!\inst2|LessThan8~7_combout\ & ((!\inst2|LessThan6~1_combout\) # (!\inst2|LessThan6~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|LessThan6~2_combout\,
	datab => \inst2|LessThan6~0_combout\,
	datac => \inst2|LessThan6~1_combout\,
	datad => \inst2|LessThan8~7_combout\,
	combout => \inst2|lcd_data[2]~0_combout\);

-- Location: LCCOMB_X21_Y12_N14
\inst2|LessThan3~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|LessThan3~5_combout\ = (\inst2|LessThan3~2_combout\ & \inst2|LessThan3~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst2|LessThan3~2_combout\,
	datad => \inst2|LessThan3~0_combout\,
	combout => \inst2|LessThan3~5_combout\);

-- Location: LCCOMB_X21_Y15_N12
\inst2|LessThan3~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|LessThan3~4_combout\ = (!\inst2|Add0~54_combout\ & (!\inst2|Add0~50_combout\ & !\inst2|Add0~52_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst2|Add0~54_combout\,
	datac => \inst2|Add0~50_combout\,
	datad => \inst2|Add0~52_combout\,
	combout => \inst2|LessThan3~4_combout\);

-- Location: LCCOMB_X22_Y11_N20
\inst2|LessThan3~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|LessThan3~6_combout\ = (!\inst2|Add0~58_combout\ & (!\inst2|Add0~56_combout\ & (\inst2|LessThan3~5_combout\ & \inst2|LessThan3~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|Add0~58_combout\,
	datab => \inst2|Add0~56_combout\,
	datac => \inst2|LessThan3~5_combout\,
	datad => \inst2|LessThan3~4_combout\,
	combout => \inst2|LessThan3~6_combout\);

-- Location: LCCOMB_X22_Y11_N6
\inst2|lcd_data[2]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|lcd_data[2]~1_combout\ = (\inst2|Add0~60_combout\) # (((!\inst2|LessThan7~1_combout\ & \inst2|lcd_data[2]~0_combout\)) # (!\inst2|LessThan3~6_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|LessThan7~1_combout\,
	datab => \inst2|Add0~60_combout\,
	datac => \inst2|lcd_data[2]~0_combout\,
	datad => \inst2|LessThan3~6_combout\,
	combout => \inst2|lcd_data[2]~1_combout\);

-- Location: LCCOMB_X22_Y15_N2
\inst2|busy~11\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|busy~11_combout\ = (!\inst2|Add0~62_combout\ & (\inst2|lcd_data[2]~1_combout\ & ((\inst2|Add0~60_combout\) # (!\inst2|busy~12_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100010100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|Add0~62_combout\,
	datab => \inst2|Add0~60_combout\,
	datac => \inst2|busy~12_combout\,
	datad => \inst2|lcd_data[2]~1_combout\,
	combout => \inst2|busy~11_combout\);

-- Location: LCCOMB_X22_Y15_N12
\inst2|Selector34~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|Selector34~0_combout\ = (\inst2|estado.INICIALIZACAO~q\ & ((\inst2|busy~11_combout\) # ((!\inst1|lcd_enable~q\ & \inst2|estado.PRONTO~q\)))) # (!\inst2|estado.INICIALIZACAO~q\ & (!\inst1|lcd_enable~q\ & (\inst2|estado.PRONTO~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|estado.INICIALIZACAO~q\,
	datab => \inst1|lcd_enable~q\,
	datac => \inst2|estado.PRONTO~q\,
	datad => \inst2|busy~11_combout\,
	combout => \inst2|Selector34~0_combout\);

-- Location: FF_X22_Y15_N13
\inst2|busy\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \inst2|Selector34~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst2|busy~q\);

-- Location: LCCOMB_X24_Y15_N2
\inst1|process_0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|process_0~0_combout\ = (\inst2|busy~q\ & !\inst1|lcd_enable~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst2|busy~q\,
	datad => \inst1|lcd_enable~q\,
	combout => \inst1|process_0~0_combout\);

-- Location: FF_X24_Y16_N5
\inst1|char[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	asdata => \inst1|char~4_combout\,
	sload => VCC,
	ena => \inst1|process_0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|char\(0));

-- Location: LCCOMB_X25_Y16_N16
\inst1|char~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|char~1_combout\ = (\inst1|LessThan0~0_combout\ & (\inst1|char\(2) $ (((\inst1|char\(1) & \inst1|char\(0))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|char\(1),
	datab => \inst1|char\(0),
	datac => \inst1|LessThan0~0_combout\,
	datad => \inst1|char\(2),
	combout => \inst1|char~1_combout\);

-- Location: FF_X24_Y16_N29
\inst1|char[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	asdata => \inst1|char~1_combout\,
	sload => VCC,
	ena => \inst1|process_0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|char\(2));

-- Location: FF_X24_Y16_N23
\inst1|char[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \inst1|char~3_combout\,
	ena => \inst1|process_0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|char\(3));

-- Location: LCCOMB_X24_Y16_N10
\inst1|Add0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|Add0~0_combout\ = (\inst1|char\(1) & (\inst1|char\(3) & (\inst1|char\(0) & \inst1|char\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|char\(1),
	datab => \inst1|char\(3),
	datac => \inst1|char\(0),
	datad => \inst1|char\(2),
	combout => \inst1|Add0~0_combout\);

-- Location: LCCOMB_X24_Y17_N14
\inst1|lcd_bus[0]~23\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|lcd_bus[0]~23_combout\ = (\inst1|LessThan0~0_combout\ & (\inst1|char\(4) $ (\inst1|Add0~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|char\(4),
	datac => \inst1|Add0~0_combout\,
	datad => \inst1|LessThan0~0_combout\,
	combout => \inst1|lcd_bus[0]~23_combout\);

-- Location: FF_X25_Y17_N21
\inst1|char[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	asdata => \inst1|lcd_bus[0]~23_combout\,
	sload => VCC,
	ena => \inst1|process_0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|char\(4));

-- Location: LCCOMB_X25_Y16_N14
\inst1|char~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|char~0_combout\ = (\inst1|char\(5) $ (((!\inst1|char\(4)) # (!\inst1|Add0~0_combout\)))) # (!\inst1|LessThan0~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011011100111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|Add0~0_combout\,
	datab => \inst1|LessThan0~0_combout\,
	datac => \inst1|char\(5),
	datad => \inst1|char\(4),
	combout => \inst1|char~0_combout\);

-- Location: LCCOMB_X24_Y17_N20
\inst1|char[5]~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|char[5]~6_combout\ = !\inst1|char~0_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst1|char~0_combout\,
	combout => \inst1|char[5]~6_combout\);

-- Location: FF_X24_Y17_N21
\inst1|char[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \inst1|char[5]~6_combout\,
	ena => \inst1|process_0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|char\(5));

-- Location: LCCOMB_X24_Y16_N12
\inst1|lcd_bus[5]~21\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|lcd_bus[5]~21_combout\ = (!\inst1|char\(3) & !\inst1|char\(4))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst1|char\(3),
	datad => \inst1|char\(4),
	combout => \inst1|lcd_bus[5]~21_combout\);

-- Location: LCCOMB_X24_Y16_N6
\inst1|LessThan0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|LessThan0~0_combout\ = ((!\inst1|char\(1) & (!\inst1|char\(2) & \inst1|lcd_bus[5]~21_combout\))) # (!\inst1|char\(5))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|char\(1),
	datab => \inst1|char\(2),
	datac => \inst1|char\(5),
	datad => \inst1|lcd_bus[5]~21_combout\,
	combout => \inst1|LessThan0~0_combout\);

-- Location: LCCOMB_X24_Y16_N16
\inst1|char~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|char~2_combout\ = (\inst1|LessThan0~0_combout\ & (\inst1|char\(0) $ (\inst1|char\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010100000101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|LessThan0~0_combout\,
	datab => \inst1|char\(0),
	datac => \inst1|char\(1),
	combout => \inst1|char~2_combout\);

-- Location: FF_X24_Y16_N3
\inst1|char[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	asdata => \inst1|char~2_combout\,
	sload => VCC,
	ena => \inst1|process_0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|char\(1));

-- Location: LCCOMB_X24_Y16_N4
\inst1|Add0~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|Add0~2_combout\ = \inst1|char\(3) $ (((\inst1|char\(1) & (\inst1|char\(0) & \inst1|char\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110110011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|char\(1),
	datab => \inst1|char\(3),
	datac => \inst1|char\(0),
	datad => \inst1|char\(2),
	combout => \inst1|Add0~2_combout\);

-- Location: LCCOMB_X24_Y16_N22
\inst1|char~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|char~3_combout\ = (\inst1|Add0~2_combout\ & \inst1|LessThan0~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst1|Add0~2_combout\,
	datad => \inst1|LessThan0~0_combout\,
	combout => \inst1|char~3_combout\);

-- Location: LCCOMB_X24_Y16_N30
\inst1|lcd_enable~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|lcd_enable~2_combout\ = (!\inst1|char~3_combout\ & (!\inst1|char~2_combout\ & (!\inst1|lcd_bus[0]~23_combout\ & !\inst1|char~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|char~3_combout\,
	datab => \inst1|char~2_combout\,
	datac => \inst1|lcd_bus[0]~23_combout\,
	datad => \inst1|char~1_combout\,
	combout => \inst1|lcd_enable~2_combout\);

-- Location: LCCOMB_X24_Y15_N20
\inst1|lcd_enable~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|lcd_enable~3_combout\ = (\inst2|busy~q\ & (!\inst1|lcd_enable~q\ & ((\inst1|lcd_enable~2_combout\) # (\inst1|char~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110000001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|lcd_enable~2_combout\,
	datab => \inst2|busy~q\,
	datac => \inst1|lcd_enable~q\,
	datad => \inst1|char~0_combout\,
	combout => \inst1|lcd_enable~3_combout\);

-- Location: FF_X24_Y15_N21
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

-- Location: LCCOMB_X23_Y15_N20
\inst2|rs~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|rs~0_combout\ = (\inst1|lcd_enable~q\ & \inst2|estado.PRONTO~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst1|lcd_enable~q\,
	datad => \inst2|estado.PRONTO~q\,
	combout => \inst2|rs~0_combout\);

-- Location: LCCOMB_X21_Y13_N24
\inst2|LessThan9~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|LessThan9~6_combout\ = (!\inst2|clk_count\(5) & (!\inst2|clk_count\(3) & (!\inst2|clk_count\(4) & !\inst2|clk_count\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|clk_count\(5),
	datab => \inst2|clk_count\(3),
	datac => \inst2|clk_count\(4),
	datad => \inst2|clk_count\(2),
	combout => \inst2|LessThan9~6_combout\);

-- Location: LCCOMB_X23_Y11_N28
\inst2|LessThan9~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|LessThan9~7_combout\ = ((!\inst2|clk_count\(7)) # (!\inst2|clk_count\(8))) # (!\inst2|clk_count\(6))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|clk_count\(6),
	datac => \inst2|clk_count\(8),
	datad => \inst2|clk_count\(7),
	combout => \inst2|LessThan9~7_combout\);

-- Location: LCCOMB_X23_Y11_N0
\inst2|LessThan9~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|LessThan9~8_combout\ = (!\inst2|clk_count\(9) & (!\inst2|clk_count\(10) & ((\inst2|LessThan9~6_combout\) # (\inst2|LessThan9~7_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|LessThan9~6_combout\,
	datab => \inst2|LessThan9~7_combout\,
	datac => \inst2|clk_count\(9),
	datad => \inst2|clk_count\(10),
	combout => \inst2|LessThan9~8_combout\);

-- Location: LCCOMB_X23_Y13_N28
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

-- Location: LCCOMB_X23_Y12_N8
\inst2|LessThan9~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|LessThan9~2_combout\ = (!\inst2|clk_count\(20) & (!\inst2|clk_count\(13) & (!\inst2|clk_count\(17) & !\inst2|clk_count\(19))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|clk_count\(20),
	datab => \inst2|clk_count\(13),
	datac => \inst2|clk_count\(17),
	datad => \inst2|clk_count\(19),
	combout => \inst2|LessThan9~2_combout\);

-- Location: LCCOMB_X21_Y12_N24
\inst2|LessThan9~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|LessThan9~0_combout\ = (!\inst2|clk_count\(23) & (!\inst2|clk_count\(22) & (!\inst2|clk_count\(24) & !\inst2|clk_count\(25))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|clk_count\(23),
	datab => \inst2|clk_count\(22),
	datac => \inst2|clk_count\(24),
	datad => \inst2|clk_count\(25),
	combout => \inst2|LessThan9~0_combout\);

-- Location: LCCOMB_X21_Y12_N16
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

-- Location: LCCOMB_X23_Y12_N16
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

-- Location: LCCOMB_X23_Y12_N14
\inst2|LessThan9~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|LessThan9~4_combout\ = (!\inst2|clk_count\(21) & (!\inst2|clk_count\(18) & \inst2|LessThan9~3_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst2|clk_count\(21),
	datac => \inst2|clk_count\(18),
	datad => \inst2|LessThan9~3_combout\,
	combout => \inst2|LessThan9~4_combout\);

-- Location: LCCOMB_X23_Y11_N14
\inst2|LessThan9~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|LessThan9~9_combout\ = (\inst2|LessThan9~5_combout\ & (\inst2|LessThan9~4_combout\ & ((\inst2|LessThan9~8_combout\) # (!\inst2|clk_count\(11)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|clk_count\(11),
	datab => \inst2|LessThan9~8_combout\,
	datac => \inst2|LessThan9~5_combout\,
	datad => \inst2|LessThan9~4_combout\,
	combout => \inst2|LessThan9~9_combout\);

-- Location: LCCOMB_X23_Y15_N8
\inst2|Selector35~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|Selector35~0_combout\ = (\inst2|rs~0_combout\) # ((\inst2|estado.ENVIAR~q\ & ((\inst2|LessThan9~9_combout\) # (\inst2|clk_count\(31)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101011101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|rs~0_combout\,
	datab => \inst2|LessThan9~9_combout\,
	datac => \inst2|estado.ENVIAR~q\,
	datad => \inst2|clk_count\(31),
	combout => \inst2|Selector35~0_combout\);

-- Location: FF_X23_Y15_N9
\inst2|estado.ENVIAR\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \inst2|Selector35~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst2|estado.ENVIAR~q\);

-- Location: LCCOMB_X22_Y15_N20
\inst2|Selector34~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|Selector34~1_combout\ = (\inst2|Selector34~0_combout\) # ((\inst2|estado.ENVIAR~q\ & (!\inst2|clk_count\(31) & !\inst2|LessThan9~9_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|estado.ENVIAR~q\,
	datab => \inst2|clk_count\(31),
	datac => \inst2|LessThan9~9_combout\,
	datad => \inst2|Selector34~0_combout\,
	combout => \inst2|Selector34~1_combout\);

-- Location: FF_X22_Y15_N21
\inst2|estado.PRONTO\ : dffeas
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
	q => \inst2|estado.PRONTO~q\);

-- Location: LCCOMB_X23_Y15_N14
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

-- Location: FF_X23_Y15_N15
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

-- Location: LCCOMB_X23_Y13_N14
\inst2|LessThan4~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|LessThan4~0_combout\ = ((!\inst2|Add0~18_combout\) # (!\inst2|Add0~16_combout\)) # (!\inst2|Add0~20_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst2|Add0~20_combout\,
	datac => \inst2|Add0~16_combout\,
	datad => \inst2|Add0~18_combout\,
	combout => \inst2|LessThan4~0_combout\);

-- Location: LCCOMB_X23_Y13_N16
\inst2|LessThan4~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|LessThan4~1_combout\ = (\inst2|Add0~8_combout\ & (\inst2|Add0~10_combout\ & \inst2|Add0~12_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|Add0~8_combout\,
	datac => \inst2|Add0~10_combout\,
	datad => \inst2|Add0~12_combout\,
	combout => \inst2|LessThan4~1_combout\);

-- Location: LCCOMB_X23_Y13_N6
\inst2|LessThan4~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|LessThan4~2_combout\ = (!\inst2|Add0~22_combout\ & ((\inst2|LessThan4~0_combout\) # ((!\inst2|Add0~14_combout\ & !\inst2|LessThan4~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000000110001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|Add0~14_combout\,
	datab => \inst2|Add0~22_combout\,
	datac => \inst2|LessThan4~0_combout\,
	datad => \inst2|LessThan4~1_combout\,
	combout => \inst2|LessThan4~2_combout\);

-- Location: LCCOMB_X22_Y11_N26
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

-- Location: LCCOMB_X21_Y12_N6
\inst2|LessThan3~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|LessThan3~1_combout\ = (!\inst2|Add0~52_combout\ & (!\inst2|Add0~54_combout\ & (!\inst2|Add0~50_combout\ & \inst2|LessThan3~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|Add0~52_combout\,
	datab => \inst2|Add0~54_combout\,
	datac => \inst2|Add0~50_combout\,
	datad => \inst2|LessThan3~0_combout\,
	combout => \inst2|LessThan3~1_combout\);

-- Location: LCCOMB_X22_Y11_N0
\inst2|LessThan3~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|LessThan3~8_combout\ = (\inst2|LessThan3~3_combout\ & (\inst2|LessThan3~2_combout\ & (\inst2|busy~4_combout\ & \inst2|LessThan3~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|LessThan3~3_combout\,
	datab => \inst2|LessThan3~2_combout\,
	datac => \inst2|busy~4_combout\,
	datad => \inst2|LessThan3~1_combout\,
	combout => \inst2|LessThan3~8_combout\);

-- Location: LCCOMB_X22_Y11_N30
\inst2|LessThan4~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|LessThan4~4_combout\ = (!\inst2|Add0~60_combout\ & (\inst2|LessThan3~8_combout\ & ((\inst2|LessThan4~2_combout\) # (!\inst2|Add0~24_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|Add0~24_combout\,
	datab => \inst2|LessThan4~2_combout\,
	datac => \inst2|Add0~60_combout\,
	datad => \inst2|LessThan3~8_combout\,
	combout => \inst2|LessThan4~4_combout\);

-- Location: LCCOMB_X23_Y13_N0
\inst2|LessThan5~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|LessThan5~0_combout\ = ((!\inst2|Add0~8_combout\ & (!\inst2|Add0~6_combout\ & !\inst2|Add0~4_combout\))) # (!\inst2|Add0~12_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|Add0~8_combout\,
	datab => \inst2|Add0~6_combout\,
	datac => \inst2|Add0~4_combout\,
	datad => \inst2|Add0~12_combout\,
	combout => \inst2|LessThan5~0_combout\);

-- Location: LCCOMB_X23_Y13_N30
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

-- Location: LCCOMB_X23_Y13_N8
\inst2|LessThan5~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|LessThan5~2_combout\ = ((!\inst2|Add0~18_combout\ & (\inst2|LessThan5~1_combout\ & !\inst2|Add0~20_combout\))) # (!\inst2|Add0~24_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010101110101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|Add0~24_combout\,
	datab => \inst2|Add0~18_combout\,
	datac => \inst2|LessThan5~1_combout\,
	datad => \inst2|Add0~20_combout\,
	combout => \inst2|LessThan5~2_combout\);

-- Location: LCCOMB_X23_Y13_N2
\inst2|LessThan5~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|LessThan5~3_combout\ = (\inst2|LessThan3~3_combout\ & ((\inst2|LessThan5~2_combout\) # (!\inst2|Add0~22_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst2|Add0~22_combout\,
	datac => \inst2|LessThan5~2_combout\,
	datad => \inst2|LessThan3~3_combout\,
	combout => \inst2|LessThan5~3_combout\);

-- Location: LCCOMB_X22_Y11_N12
\inst2|LessThan5~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|LessThan5~4_combout\ = (\inst2|busy~4_combout\ & (\inst2|LessThan3~2_combout\ & (\inst2|LessThan5~3_combout\ & \inst2|LessThan3~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|busy~4_combout\,
	datab => \inst2|LessThan3~2_combout\,
	datac => \inst2|LessThan5~3_combout\,
	datad => \inst2|LessThan3~1_combout\,
	combout => \inst2|LessThan5~4_combout\);

-- Location: LCCOMB_X22_Y11_N4
\inst2|LessThan3~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|LessThan3~14_combout\ = (\inst2|LessThan3~3_combout\ & (!\inst2|Add0~24_combout\ & (\inst2|LessThan3~11_combout\ & \inst2|LessThan3~6_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|LessThan3~3_combout\,
	datab => \inst2|Add0~24_combout\,
	datac => \inst2|LessThan3~11_combout\,
	datad => \inst2|LessThan3~6_combout\,
	combout => \inst2|LessThan3~14_combout\);

-- Location: LCCOMB_X23_Y13_N12
\inst2|LessThan2~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|LessThan2~1_combout\ = ((!\inst2|Add0~18_combout\) # (!\inst2|Add0~16_combout\)) # (!\inst2|Add0~14_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|Add0~14_combout\,
	datac => \inst2|Add0~16_combout\,
	datad => \inst2|Add0~18_combout\,
	combout => \inst2|LessThan2~1_combout\);

-- Location: LCCOMB_X23_Y13_N22
\inst2|LessThan2~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|LessThan2~0_combout\ = (!\inst2|Add0~12_combout\ & (((!\inst2|Add0~6_combout\) # (!\inst2|Add0~10_combout\)) # (!\inst2|Add0~8_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|Add0~8_combout\,
	datab => \inst2|Add0~10_combout\,
	datac => \inst2|Add0~6_combout\,
	datad => \inst2|Add0~12_combout\,
	combout => \inst2|LessThan2~0_combout\);

-- Location: LCCOMB_X23_Y13_N18
\inst2|LessThan2~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|LessThan2~2_combout\ = ((!\inst2|Add0~20_combout\ & ((\inst2|LessThan2~1_combout\) # (\inst2|LessThan2~0_combout\)))) # (!\inst2|Add0~22_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|LessThan2~1_combout\,
	datab => \inst2|Add0~20_combout\,
	datac => \inst2|LessThan2~0_combout\,
	datad => \inst2|Add0~22_combout\,
	combout => \inst2|LessThan2~2_combout\);

-- Location: LCCOMB_X21_Y11_N16
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

-- Location: LCCOMB_X22_Y11_N2
\inst2|clk_count~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|clk_count~0_combout\ = ((!\inst2|LessThan1~1_combout\ & ((\inst2|Add0~24_combout\) # (!\inst2|LessThan2~2_combout\)))) # (!\inst2|LessThan3~8_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|LessThan2~2_combout\,
	datab => \inst2|Add0~24_combout\,
	datac => \inst2|LessThan1~1_combout\,
	datad => \inst2|LessThan3~8_combout\,
	combout => \inst2|clk_count~0_combout\);

-- Location: LCCOMB_X22_Y11_N16
\inst2|clk_count~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|clk_count~1_combout\ = (!\inst2|Add0~60_combout\ & ((\inst2|LessThan5~4_combout\) # ((\inst2|LessThan3~14_combout\) # (!\inst2|clk_count~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001000110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|LessThan5~4_combout\,
	datab => \inst2|Add0~60_combout\,
	datac => \inst2|LessThan3~14_combout\,
	datad => \inst2|clk_count~0_combout\,
	combout => \inst2|clk_count~1_combout\);

-- Location: LCCOMB_X22_Y11_N18
\inst2|clk_count[11]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|clk_count[11]~2_combout\ = (\inst2|lcd_data[2]~1_combout\ & (!\inst2|Add0~62_combout\ & (!\inst2|LessThan4~4_combout\ & !\inst2|clk_count~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|lcd_data[2]~1_combout\,
	datab => \inst2|Add0~62_combout\,
	datac => \inst2|LessThan4~4_combout\,
	datad => \inst2|clk_count~1_combout\,
	combout => \inst2|clk_count[11]~2_combout\);

-- Location: LCCOMB_X22_Y11_N28
\inst2|clk_count[11]~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|clk_count[11]~3_combout\ = (\inst2|estado.ENVIAR~q\ & (!\inst2|clk_count\(31) & (!\inst2|LessThan9~9_combout\))) # (!\inst2|estado.ENVIAR~q\ & (((\inst2|clk_count[11]~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011011100000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|clk_count\(31),
	datab => \inst2|estado.ENVIAR~q\,
	datac => \inst2|LessThan9~9_combout\,
	datad => \inst2|clk_count[11]~2_combout\,
	combout => \inst2|clk_count[11]~3_combout\);

-- Location: LCCOMB_X22_Y11_N10
\inst2|clk_count[11]~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|clk_count[11]~4_combout\ = (!\inst2|estado.PRONTO~q\ & ((\inst2|estado.ENERGIZACAO~q\ & ((!\inst2|clk_count[11]~3_combout\))) # (!\inst2|estado.ENERGIZACAO~q\ & (\inst2|LessThan0~6_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000001010100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|estado.PRONTO~q\,
	datab => \inst2|estado.ENERGIZACAO~q\,
	datac => \inst2|LessThan0~6_combout\,
	datad => \inst2|clk_count[11]~3_combout\,
	combout => \inst2|clk_count[11]~4_combout\);

-- Location: LCCOMB_X21_Y13_N14
\inst2|Selector32~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|Selector32~0_combout\ = (\inst2|Add0~0_combout\ & \inst2|clk_count[11]~4_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst2|Add0~0_combout\,
	datad => \inst2|clk_count[11]~4_combout\,
	combout => \inst2|Selector32~0_combout\);

-- Location: FF_X21_Y13_N15
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

-- Location: LCCOMB_X22_Y13_N2
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

-- Location: LCCOMB_X21_Y13_N6
\inst2|Selector31~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|Selector31~0_combout\ = (\inst2|Add0~2_combout\ & \inst2|clk_count[11]~4_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst2|Add0~2_combout\,
	datad => \inst2|clk_count[11]~4_combout\,
	combout => \inst2|Selector31~0_combout\);

-- Location: FF_X21_Y13_N7
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

-- Location: LCCOMB_X22_Y13_N4
\inst2|Add0~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|Add0~4_combout\ = (\inst2|clk_count\(2) & (\inst2|Add0~3\ $ (GND))) # (!\inst2|clk_count\(2) & (!\inst2|Add0~3\ & VCC))
-- \inst2|Add0~5\ = CARRY((\inst2|clk_count\(2) & !\inst2|Add0~3\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|clk_count\(2),
	datad => VCC,
	cin => \inst2|Add0~3\,
	combout => \inst2|Add0~4_combout\,
	cout => \inst2|Add0~5\);

-- Location: LCCOMB_X21_Y13_N16
\inst2|Selector30~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|Selector30~0_combout\ = (\inst2|Add0~4_combout\ & \inst2|clk_count[11]~4_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|Add0~4_combout\,
	datad => \inst2|clk_count[11]~4_combout\,
	combout => \inst2|Selector30~0_combout\);

-- Location: FF_X21_Y13_N17
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

-- Location: LCCOMB_X22_Y13_N6
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

-- Location: LCCOMB_X21_Y13_N18
\inst2|Selector29~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|Selector29~0_combout\ = (\inst2|Add0~6_combout\ & \inst2|clk_count[11]~4_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|Add0~6_combout\,
	datad => \inst2|clk_count[11]~4_combout\,
	combout => \inst2|Selector29~0_combout\);

-- Location: FF_X21_Y13_N19
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

-- Location: LCCOMB_X22_Y13_N8
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

-- Location: LCCOMB_X21_Y13_N8
\inst2|Selector28~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|Selector28~0_combout\ = (\inst2|Add0~8_combout\ & \inst2|clk_count[11]~4_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst2|Add0~8_combout\,
	datad => \inst2|clk_count[11]~4_combout\,
	combout => \inst2|Selector28~0_combout\);

-- Location: FF_X21_Y13_N9
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

-- Location: LCCOMB_X22_Y13_N10
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

-- Location: LCCOMB_X21_Y13_N26
\inst2|Selector27~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|Selector27~0_combout\ = (\inst2|Add0~10_combout\ & \inst2|clk_count[11]~4_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst2|Add0~10_combout\,
	datad => \inst2|clk_count[11]~4_combout\,
	combout => \inst2|Selector27~0_combout\);

-- Location: FF_X21_Y13_N27
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

-- Location: LCCOMB_X22_Y13_N12
\inst2|Add0~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|Add0~12_combout\ = (\inst2|clk_count\(6) & (\inst2|Add0~11\ $ (GND))) # (!\inst2|clk_count\(6) & (!\inst2|Add0~11\ & VCC))
-- \inst2|Add0~13\ = CARRY((\inst2|clk_count\(6) & !\inst2|Add0~11\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|clk_count\(6),
	datad => VCC,
	cin => \inst2|Add0~11\,
	combout => \inst2|Add0~12_combout\,
	cout => \inst2|Add0~13\);

-- Location: LCCOMB_X23_Y11_N10
\inst2|Selector26~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|Selector26~0_combout\ = (\inst2|Add0~12_combout\ & \inst2|clk_count[11]~4_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst2|Add0~12_combout\,
	datad => \inst2|clk_count[11]~4_combout\,
	combout => \inst2|Selector26~0_combout\);

-- Location: FF_X23_Y11_N11
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

-- Location: LCCOMB_X22_Y13_N14
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

-- Location: LCCOMB_X23_Y11_N24
\inst2|Selector25~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|Selector25~0_combout\ = (\inst2|Add0~14_combout\ & \inst2|clk_count[11]~4_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst2|Add0~14_combout\,
	datad => \inst2|clk_count[11]~4_combout\,
	combout => \inst2|Selector25~0_combout\);

-- Location: FF_X23_Y11_N25
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

-- Location: LCCOMB_X22_Y13_N16
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

-- Location: LCCOMB_X23_Y11_N26
\inst2|Selector24~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|Selector24~0_combout\ = (\inst2|Add0~16_combout\ & \inst2|clk_count[11]~4_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst2|Add0~16_combout\,
	datad => \inst2|clk_count[11]~4_combout\,
	combout => \inst2|Selector24~0_combout\);

-- Location: FF_X23_Y11_N27
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

-- Location: LCCOMB_X22_Y13_N18
\inst2|Add0~18\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|Add0~18_combout\ = (\inst2|clk_count\(9) & (!\inst2|Add0~17\)) # (!\inst2|clk_count\(9) & ((\inst2|Add0~17\) # (GND)))
-- \inst2|Add0~19\ = CARRY((!\inst2|Add0~17\) # (!\inst2|clk_count\(9)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|clk_count\(9),
	datad => VCC,
	cin => \inst2|Add0~17\,
	combout => \inst2|Add0~18_combout\,
	cout => \inst2|Add0~19\);

-- Location: LCCOMB_X23_Y11_N30
\inst2|Selector23~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|Selector23~0_combout\ = (\inst2|Add0~18_combout\ & \inst2|clk_count[11]~4_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|Add0~18_combout\,
	datad => \inst2|clk_count[11]~4_combout\,
	combout => \inst2|Selector23~0_combout\);

-- Location: FF_X23_Y11_N31
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

-- Location: LCCOMB_X22_Y13_N20
\inst2|Add0~20\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|Add0~20_combout\ = (\inst2|clk_count\(10) & (\inst2|Add0~19\ $ (GND))) # (!\inst2|clk_count\(10) & (!\inst2|Add0~19\ & VCC))
-- \inst2|Add0~21\ = CARRY((\inst2|clk_count\(10) & !\inst2|Add0~19\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst2|clk_count\(10),
	datad => VCC,
	cin => \inst2|Add0~19\,
	combout => \inst2|Add0~20_combout\,
	cout => \inst2|Add0~21\);

-- Location: LCCOMB_X23_Y13_N10
\inst2|Selector22~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|Selector22~0_combout\ = (\inst2|Add0~20_combout\ & \inst2|clk_count[11]~4_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst2|Add0~20_combout\,
	datad => \inst2|clk_count[11]~4_combout\,
	combout => \inst2|Selector22~0_combout\);

-- Location: FF_X23_Y13_N11
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

-- Location: LCCOMB_X22_Y13_N22
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

-- Location: LCCOMB_X23_Y12_N0
\inst2|Selector21~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|Selector21~0_combout\ = (\inst2|Add0~22_combout\ & \inst2|clk_count[11]~4_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|Add0~22_combout\,
	datad => \inst2|clk_count[11]~4_combout\,
	combout => \inst2|Selector21~0_combout\);

-- Location: FF_X23_Y12_N1
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

-- Location: LCCOMB_X22_Y13_N24
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

-- Location: LCCOMB_X23_Y12_N10
\inst2|Selector20~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|Selector20~0_combout\ = (\inst2|Add0~24_combout\ & \inst2|clk_count[11]~4_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst2|Add0~24_combout\,
	datad => \inst2|clk_count[11]~4_combout\,
	combout => \inst2|Selector20~0_combout\);

-- Location: FF_X23_Y12_N11
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

-- Location: LCCOMB_X22_Y13_N26
\inst2|Add0~26\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|Add0~26_combout\ = (\inst2|clk_count\(13) & (!\inst2|Add0~25\)) # (!\inst2|clk_count\(13) & ((\inst2|Add0~25\) # (GND)))
-- \inst2|Add0~27\ = CARRY((!\inst2|Add0~25\) # (!\inst2|clk_count\(13)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|clk_count\(13),
	datad => VCC,
	cin => \inst2|Add0~25\,
	combout => \inst2|Add0~26_combout\,
	cout => \inst2|Add0~27\);

-- Location: LCCOMB_X23_Y12_N24
\inst2|Selector19~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|Selector19~0_combout\ = (\inst2|Add0~26_combout\ & \inst2|clk_count[11]~4_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst2|Add0~26_combout\,
	datad => \inst2|clk_count[11]~4_combout\,
	combout => \inst2|Selector19~0_combout\);

-- Location: FF_X23_Y12_N25
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

-- Location: LCCOMB_X22_Y13_N28
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

-- Location: LCCOMB_X23_Y13_N4
\inst2|Selector18~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|Selector18~0_combout\ = (\inst2|Add0~28_combout\ & \inst2|clk_count[11]~4_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst2|Add0~28_combout\,
	datad => \inst2|clk_count[11]~4_combout\,
	combout => \inst2|Selector18~0_combout\);

-- Location: FF_X23_Y13_N5
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

-- Location: LCCOMB_X22_Y13_N30
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

-- Location: LCCOMB_X23_Y13_N26
\inst2|Selector17~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|Selector17~0_combout\ = (\inst2|Add0~30_combout\ & \inst2|clk_count[11]~4_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst2|Add0~30_combout\,
	datad => \inst2|clk_count[11]~4_combout\,
	combout => \inst2|Selector17~0_combout\);

-- Location: FF_X23_Y13_N27
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

-- Location: LCCOMB_X22_Y12_N0
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

-- Location: LCCOMB_X23_Y12_N20
\inst2|Selector16~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|Selector16~0_combout\ = (\inst2|Add0~32_combout\ & \inst2|clk_count[11]~4_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|Add0~32_combout\,
	datad => \inst2|clk_count[11]~4_combout\,
	combout => \inst2|Selector16~0_combout\);

-- Location: FF_X23_Y12_N21
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

-- Location: LCCOMB_X22_Y12_N2
\inst2|Add0~34\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|Add0~34_combout\ = (\inst2|clk_count\(17) & (!\inst2|Add0~33\)) # (!\inst2|clk_count\(17) & ((\inst2|Add0~33\) # (GND)))
-- \inst2|Add0~35\ = CARRY((!\inst2|Add0~33\) # (!\inst2|clk_count\(17)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|clk_count\(17),
	datad => VCC,
	cin => \inst2|Add0~33\,
	combout => \inst2|Add0~34_combout\,
	cout => \inst2|Add0~35\);

-- Location: LCCOMB_X23_Y12_N30
\inst2|Selector15~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|Selector15~0_combout\ = (\inst2|Add0~34_combout\ & \inst2|clk_count[11]~4_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst2|Add0~34_combout\,
	datad => \inst2|clk_count[11]~4_combout\,
	combout => \inst2|Selector15~0_combout\);

-- Location: FF_X23_Y12_N31
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

-- Location: LCCOMB_X22_Y12_N4
\inst2|Add0~36\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|Add0~36_combout\ = (\inst2|clk_count\(18) & (\inst2|Add0~35\ $ (GND))) # (!\inst2|clk_count\(18) & (!\inst2|Add0~35\ & VCC))
-- \inst2|Add0~37\ = CARRY((\inst2|clk_count\(18) & !\inst2|Add0~35\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst2|clk_count\(18),
	datad => VCC,
	cin => \inst2|Add0~35\,
	combout => \inst2|Add0~36_combout\,
	cout => \inst2|Add0~37\);

-- Location: LCCOMB_X23_Y12_N22
\inst2|Selector14~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|Selector14~0_combout\ = (\inst2|Add0~36_combout\ & \inst2|clk_count[11]~4_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst2|Add0~36_combout\,
	datad => \inst2|clk_count[11]~4_combout\,
	combout => \inst2|Selector14~0_combout\);

-- Location: FF_X23_Y12_N23
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

-- Location: LCCOMB_X22_Y12_N6
\inst2|Add0~38\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|Add0~38_combout\ = (\inst2|clk_count\(19) & (!\inst2|Add0~37\)) # (!\inst2|clk_count\(19) & ((\inst2|Add0~37\) # (GND)))
-- \inst2|Add0~39\ = CARRY((!\inst2|Add0~37\) # (!\inst2|clk_count\(19)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|clk_count\(19),
	datad => VCC,
	cin => \inst2|Add0~37\,
	combout => \inst2|Add0~38_combout\,
	cout => \inst2|Add0~39\);

-- Location: LCCOMB_X21_Y12_N10
\inst2|Selector13~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|Selector13~0_combout\ = (\inst2|Add0~38_combout\ & \inst2|clk_count[11]~4_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|Add0~38_combout\,
	datad => \inst2|clk_count[11]~4_combout\,
	combout => \inst2|Selector13~0_combout\);

-- Location: FF_X21_Y12_N11
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

-- Location: LCCOMB_X22_Y12_N8
\inst2|Add0~40\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|Add0~40_combout\ = (\inst2|clk_count\(20) & (\inst2|Add0~39\ $ (GND))) # (!\inst2|clk_count\(20) & (!\inst2|Add0~39\ & VCC))
-- \inst2|Add0~41\ = CARRY((\inst2|clk_count\(20) & !\inst2|Add0~39\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst2|clk_count\(20),
	datad => VCC,
	cin => \inst2|Add0~39\,
	combout => \inst2|Add0~40_combout\,
	cout => \inst2|Add0~41\);

-- Location: LCCOMB_X23_Y12_N26
\inst2|Selector12~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|Selector12~0_combout\ = (\inst2|Add0~40_combout\ & \inst2|clk_count[11]~4_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|Add0~40_combout\,
	datad => \inst2|clk_count[11]~4_combout\,
	combout => \inst2|Selector12~0_combout\);

-- Location: FF_X23_Y12_N27
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

-- Location: LCCOMB_X22_Y12_N10
\inst2|Add0~42\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|Add0~42_combout\ = (\inst2|clk_count\(21) & (!\inst2|Add0~41\)) # (!\inst2|clk_count\(21) & ((\inst2|Add0~41\) # (GND)))
-- \inst2|Add0~43\ = CARRY((!\inst2|Add0~41\) # (!\inst2|clk_count\(21)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|clk_count\(21),
	datad => VCC,
	cin => \inst2|Add0~41\,
	combout => \inst2|Add0~42_combout\,
	cout => \inst2|Add0~43\);

-- Location: LCCOMB_X23_Y12_N4
\inst2|Selector11~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|Selector11~0_combout\ = (\inst2|Add0~42_combout\ & \inst2|clk_count[11]~4_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|Add0~42_combout\,
	datad => \inst2|clk_count[11]~4_combout\,
	combout => \inst2|Selector11~0_combout\);

-- Location: FF_X23_Y12_N5
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

-- Location: LCCOMB_X22_Y12_N12
\inst2|Add0~44\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|Add0~44_combout\ = (\inst2|clk_count\(22) & (\inst2|Add0~43\ $ (GND))) # (!\inst2|clk_count\(22) & (!\inst2|Add0~43\ & VCC))
-- \inst2|Add0~45\ = CARRY((\inst2|clk_count\(22) & !\inst2|Add0~43\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst2|clk_count\(22),
	datad => VCC,
	cin => \inst2|Add0~43\,
	combout => \inst2|Add0~44_combout\,
	cout => \inst2|Add0~45\);

-- Location: LCCOMB_X21_Y12_N4
\inst2|Selector10~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|Selector10~0_combout\ = (\inst2|Add0~44_combout\ & \inst2|clk_count[11]~4_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst2|Add0~44_combout\,
	datad => \inst2|clk_count[11]~4_combout\,
	combout => \inst2|Selector10~0_combout\);

-- Location: FF_X21_Y12_N5
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

-- Location: LCCOMB_X22_Y12_N14
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

-- Location: LCCOMB_X21_Y12_N2
\inst2|Selector9~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|Selector9~0_combout\ = (\inst2|Add0~46_combout\ & \inst2|clk_count[11]~4_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst2|Add0~46_combout\,
	datad => \inst2|clk_count[11]~4_combout\,
	combout => \inst2|Selector9~0_combout\);

-- Location: FF_X21_Y12_N3
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

-- Location: LCCOMB_X22_Y12_N16
\inst2|Add0~48\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|Add0~48_combout\ = (\inst2|clk_count\(24) & (\inst2|Add0~47\ $ (GND))) # (!\inst2|clk_count\(24) & (!\inst2|Add0~47\ & VCC))
-- \inst2|Add0~49\ = CARRY((\inst2|clk_count\(24) & !\inst2|Add0~47\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|clk_count\(24),
	datad => VCC,
	cin => \inst2|Add0~47\,
	combout => \inst2|Add0~48_combout\,
	cout => \inst2|Add0~49\);

-- Location: LCCOMB_X21_Y12_N8
\inst2|Selector8~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|Selector8~0_combout\ = (\inst2|Add0~48_combout\ & \inst2|clk_count[11]~4_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst2|Add0~48_combout\,
	datad => \inst2|clk_count[11]~4_combout\,
	combout => \inst2|Selector8~0_combout\);

-- Location: FF_X21_Y12_N9
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

-- Location: LCCOMB_X22_Y12_N18
\inst2|Add0~50\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|Add0~50_combout\ = (\inst2|clk_count\(25) & (!\inst2|Add0~49\)) # (!\inst2|clk_count\(25) & ((\inst2|Add0~49\) # (GND)))
-- \inst2|Add0~51\ = CARRY((!\inst2|Add0~49\) # (!\inst2|clk_count\(25)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst2|clk_count\(25),
	datad => VCC,
	cin => \inst2|Add0~49\,
	combout => \inst2|Add0~50_combout\,
	cout => \inst2|Add0~51\);

-- Location: LCCOMB_X21_Y12_N18
\inst2|Selector7~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|Selector7~0_combout\ = (\inst2|Add0~50_combout\ & \inst2|clk_count[11]~4_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst2|Add0~50_combout\,
	datad => \inst2|clk_count[11]~4_combout\,
	combout => \inst2|Selector7~0_combout\);

-- Location: FF_X21_Y12_N19
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

-- Location: LCCOMB_X22_Y12_N20
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

-- Location: LCCOMB_X21_Y12_N22
\inst2|Selector6~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|Selector6~0_combout\ = (\inst2|Add0~52_combout\ & \inst2|clk_count[11]~4_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst2|Add0~52_combout\,
	datad => \inst2|clk_count[11]~4_combout\,
	combout => \inst2|Selector6~0_combout\);

-- Location: FF_X21_Y12_N23
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

-- Location: LCCOMB_X22_Y12_N22
\inst2|Add0~54\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|Add0~54_combout\ = (\inst2|clk_count\(27) & (!\inst2|Add0~53\)) # (!\inst2|clk_count\(27) & ((\inst2|Add0~53\) # (GND)))
-- \inst2|Add0~55\ = CARRY((!\inst2|Add0~53\) # (!\inst2|clk_count\(27)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|clk_count\(27),
	datad => VCC,
	cin => \inst2|Add0~53\,
	combout => \inst2|Add0~54_combout\,
	cout => \inst2|Add0~55\);

-- Location: LCCOMB_X21_Y12_N0
\inst2|Selector5~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|Selector5~0_combout\ = (\inst2|Add0~54_combout\ & \inst2|clk_count[11]~4_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst2|Add0~54_combout\,
	datad => \inst2|clk_count[11]~4_combout\,
	combout => \inst2|Selector5~0_combout\);

-- Location: FF_X21_Y12_N1
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

-- Location: LCCOMB_X22_Y12_N24
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

-- Location: LCCOMB_X21_Y12_N26
\inst2|Selector4~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|Selector4~0_combout\ = (\inst2|Add0~56_combout\ & \inst2|clk_count[11]~4_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst2|Add0~56_combout\,
	datad => \inst2|clk_count[11]~4_combout\,
	combout => \inst2|Selector4~0_combout\);

-- Location: FF_X21_Y12_N27
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

-- Location: LCCOMB_X22_Y12_N26
\inst2|Add0~58\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|Add0~58_combout\ = (\inst2|clk_count\(29) & (!\inst2|Add0~57\)) # (!\inst2|clk_count\(29) & ((\inst2|Add0~57\) # (GND)))
-- \inst2|Add0~59\ = CARRY((!\inst2|Add0~57\) # (!\inst2|clk_count\(29)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|clk_count\(29),
	datad => VCC,
	cin => \inst2|Add0~57\,
	combout => \inst2|Add0~58_combout\,
	cout => \inst2|Add0~59\);

-- Location: LCCOMB_X22_Y11_N8
\inst2|Selector3~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|Selector3~0_combout\ = (\inst2|Add0~58_combout\ & \inst2|clk_count[11]~4_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|Add0~58_combout\,
	datad => \inst2|clk_count[11]~4_combout\,
	combout => \inst2|Selector3~0_combout\);

-- Location: FF_X22_Y11_N9
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

-- Location: LCCOMB_X21_Y12_N12
\inst2|Selector2~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|Selector2~0_combout\ = (\inst2|Add0~60_combout\ & \inst2|clk_count[11]~4_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst2|Add0~60_combout\,
	datad => \inst2|clk_count[11]~4_combout\,
	combout => \inst2|Selector2~0_combout\);

-- Location: FF_X21_Y12_N13
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

-- Location: LCCOMB_X21_Y12_N30
\inst2|LessThan9~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|LessThan9~5_combout\ = (!\inst2|clk_count\(30) & (!\inst2|clk_count\(28) & (!\inst2|clk_count\(29) & !\inst2|clk_count\(27))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|clk_count\(30),
	datab => \inst2|clk_count\(28),
	datac => \inst2|clk_count\(29),
	datad => \inst2|clk_count\(27),
	combout => \inst2|LessThan9~5_combout\);

-- Location: LCCOMB_X23_Y11_N4
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

-- Location: LCCOMB_X23_Y11_N2
\inst2|LessThan0~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|LessThan0~2_combout\ = ((!\inst2|clk_count\(9) & \inst2|LessThan0~1_combout\)) # (!\inst2|clk_count\(10))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|clk_count\(9),
	datac => \inst2|LessThan0~1_combout\,
	datad => \inst2|clk_count\(10),
	combout => \inst2|LessThan0~2_combout\);

-- Location: LCCOMB_X23_Y12_N28
\inst2|LessThan0~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|LessThan0~3_combout\ = ((!\inst2|clk_count\(12) & (\inst2|LessThan0~2_combout\ & !\inst2|clk_count\(11)))) # (!\inst2|clk_count\(13))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001101110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|clk_count\(12),
	datab => \inst2|clk_count\(13),
	datac => \inst2|LessThan0~2_combout\,
	datad => \inst2|clk_count\(11),
	combout => \inst2|LessThan0~3_combout\);

-- Location: LCCOMB_X23_Y12_N6
\inst2|LessThan0~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|LessThan0~4_combout\ = (((\inst2|LessThan0~0_combout\ & \inst2|LessThan0~3_combout\)) # (!\inst2|clk_count\(17))) # (!\inst2|clk_count\(18))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101111101011111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|clk_count\(18),
	datab => \inst2|LessThan0~0_combout\,
	datac => \inst2|clk_count\(17),
	datad => \inst2|LessThan0~3_combout\,
	combout => \inst2|LessThan0~4_combout\);

-- Location: LCCOMB_X23_Y12_N12
\inst2|LessThan0~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|LessThan0~5_combout\ = ((!\inst2|clk_count\(19) & (!\inst2|clk_count\(20) & \inst2|LessThan0~4_combout\))) # (!\inst2|clk_count\(21))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011011100110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|clk_count\(19),
	datab => \inst2|clk_count\(21),
	datac => \inst2|clk_count\(20),
	datad => \inst2|LessThan0~4_combout\,
	combout => \inst2|LessThan0~5_combout\);

-- Location: LCCOMB_X23_Y12_N2
\inst2|LessThan0~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|LessThan0~6_combout\ = (\inst2|clk_count\(31)) # ((\inst2|LessThan9~5_combout\ & (\inst2|LessThan9~1_combout\ & \inst2|LessThan0~5_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|LessThan9~5_combout\,
	datab => \inst2|LessThan9~1_combout\,
	datac => \inst2|clk_count\(31),
	datad => \inst2|LessThan0~5_combout\,
	combout => \inst2|LessThan0~6_combout\);

-- Location: LCCOMB_X22_Y15_N30
\inst2|Selector33~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|Selector33~0_combout\ = (\inst2|LessThan0~6_combout\ & (((\inst2|estado.INICIALIZACAO~q\ & !\inst2|busy~11_combout\)))) # (!\inst2|LessThan0~6_combout\ & (((\inst2|estado.INICIALIZACAO~q\ & !\inst2|busy~11_combout\)) # 
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
	datad => \inst2|busy~11_combout\,
	combout => \inst2|Selector33~0_combout\);

-- Location: FF_X22_Y15_N31
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

-- Location: LCCOMB_X22_Y14_N26
\inst2|Selector46~13\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|Selector46~13_combout\ = (!\inst2|estado.ENVIAR~q\ & ((\inst2|estado.INICIALIZACAO~q\ & ((\inst2|Add0~62_combout\))) # (!\inst2|estado.INICIALIZACAO~q\ & (\inst2|e~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|estado.INICIALIZACAO~q\,
	datab => \inst2|e~q\,
	datac => \inst2|Add0~62_combout\,
	datad => \inst2|estado.ENVIAR~q\,
	combout => \inst2|Selector46~13_combout\);

-- Location: LCCOMB_X21_Y13_N10
\inst2|LessThan9~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|LessThan9~10_combout\ = (!\inst2|clk_count\(5) & (!\inst2|clk_count\(3) & !\inst2|clk_count\(4)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000100000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|clk_count\(5),
	datab => \inst2|clk_count\(3),
	datac => \inst2|clk_count\(4),
	combout => \inst2|LessThan9~10_combout\);

-- Location: LCCOMB_X21_Y13_N0
\inst2|LessThan12~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|LessThan12~1_combout\ = ((\inst2|LessThan9~10_combout\ & ((!\inst2|clk_count\(2)) # (!\inst2|clk_count\(1))))) # (!\inst2|clk_count\(6))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|clk_count\(1),
	datab => \inst2|clk_count\(2),
	datac => \inst2|clk_count\(6),
	datad => \inst2|LessThan9~10_combout\,
	combout => \inst2|LessThan12~1_combout\);

-- Location: LCCOMB_X23_Y11_N12
\inst2|LessThan12~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|LessThan12~2_combout\ = (!\inst2|clk_count\(9) & (((\inst2|LessThan12~1_combout\ & !\inst2|clk_count\(7))) # (!\inst2|clk_count\(8))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010100001101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|clk_count\(8),
	datab => \inst2|LessThan12~1_combout\,
	datac => \inst2|clk_count\(9),
	datad => \inst2|clk_count\(7),
	combout => \inst2|LessThan12~2_combout\);

-- Location: LCCOMB_X23_Y11_N6
\inst2|LessThan10~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|LessThan10~3_combout\ = (!\inst2|clk_count\(9) & (!\inst2|clk_count\(7) & (!\inst2|clk_count\(8) & !\inst2|clk_count\(6))))

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
	combout => \inst2|LessThan10~3_combout\);

-- Location: LCCOMB_X21_Y13_N22
\inst2|LessThan10~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|LessThan10~1_combout\ = (\inst2|clk_count\(4) & \inst2|clk_count\(5))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst2|clk_count\(4),
	datac => \inst2|clk_count\(5),
	combout => \inst2|LessThan10~1_combout\);

-- Location: LCCOMB_X21_Y13_N12
\inst2|LessThan10~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|LessThan10~2_combout\ = ((!\inst2|clk_count\(1) & (!\inst2|clk_count\(3) & !\inst2|clk_count\(2)))) # (!\inst2|LessThan10~1_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100011111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|clk_count\(1),
	datab => \inst2|clk_count\(3),
	datac => \inst2|LessThan10~1_combout\,
	datad => \inst2|clk_count\(2),
	combout => \inst2|LessThan10~2_combout\);

-- Location: LCCOMB_X23_Y12_N18
\inst2|LessThan12~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|LessThan12~0_combout\ = (!\inst2|clk_count\(18) & (!\inst2|clk_count\(11) & (!\inst2|clk_count\(21) & \inst2|LessThan9~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|clk_count\(18),
	datab => \inst2|clk_count\(11),
	datac => \inst2|clk_count\(21),
	datad => \inst2|LessThan9~3_combout\,
	combout => \inst2|LessThan12~0_combout\);

-- Location: LCCOMB_X23_Y11_N8
\inst2|LessThan10~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|LessThan10~4_combout\ = (\inst2|LessThan10~3_combout\ & (!\inst2|clk_count\(10) & (\inst2|LessThan10~2_combout\ & \inst2|LessThan12~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|LessThan10~3_combout\,
	datab => \inst2|clk_count\(10),
	datac => \inst2|LessThan10~2_combout\,
	datad => \inst2|LessThan12~0_combout\,
	combout => \inst2|LessThan10~4_combout\);

-- Location: LCCOMB_X23_Y11_N18
\inst2|Selector46~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|Selector46~1_combout\ = (!\inst2|LessThan10~4_combout\ & (((!\inst2|LessThan12~2_combout\ & \inst2|clk_count\(10))) # (!\inst2|LessThan12~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010000001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|LessThan12~2_combout\,
	datab => \inst2|clk_count\(10),
	datac => \inst2|LessThan10~4_combout\,
	datad => \inst2|LessThan12~0_combout\,
	combout => \inst2|Selector46~1_combout\);

-- Location: LCCOMB_X21_Y13_N20
\inst2|LessThan11~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|LessThan11~0_combout\ = (!\inst2|clk_count\(6) & (((!\inst2|clk_count\(2)) # (!\inst2|clk_count\(3))) # (!\inst2|LessThan10~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000011100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|LessThan10~1_combout\,
	datab => \inst2|clk_count\(3),
	datac => \inst2|clk_count\(6),
	datad => \inst2|clk_count\(2),
	combout => \inst2|LessThan11~0_combout\);

-- Location: LCCOMB_X23_Y11_N20
\inst2|LessThan11~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|LessThan11~1_combout\ = ((!\inst2|clk_count\(8) & ((\inst2|LessThan11~0_combout\) # (!\inst2|clk_count\(7))))) # (!\inst2|clk_count\(9))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100111101011111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|clk_count\(8),
	datab => \inst2|LessThan11~0_combout\,
	datac => \inst2|clk_count\(9),
	datad => \inst2|clk_count\(7),
	combout => \inst2|LessThan11~1_combout\);

-- Location: LCCOMB_X23_Y11_N16
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

-- Location: LCCOMB_X23_Y11_N22
\inst2|Selector46~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|Selector46~0_combout\ = (\inst2|LessThan11~1_combout\ & (!\inst2|LessThan10~4_combout\ & (\inst2|LessThan9~9_combout\ & \inst2|LessThan10~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|LessThan11~1_combout\,
	datab => \inst2|LessThan10~4_combout\,
	datac => \inst2|LessThan9~9_combout\,
	datad => \inst2|LessThan10~0_combout\,
	combout => \inst2|Selector46~0_combout\);

-- Location: LCCOMB_X22_Y14_N14
\inst2|Selector46~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|Selector46~2_combout\ = (\inst2|Selector46~0_combout\) # ((\inst2|e~q\ & ((\inst2|Selector46~1_combout\) # (!\inst2|LessThan9~9_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|LessThan9~9_combout\,
	datab => \inst2|Selector46~1_combout\,
	datac => \inst2|e~q\,
	datad => \inst2|Selector46~0_combout\,
	combout => \inst2|Selector46~2_combout\);

-- Location: LCCOMB_X22_Y14_N28
\inst2|Selector46~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|Selector46~3_combout\ = (!\inst2|clk_count\(31) & (\inst2|Selector46~2_combout\ & \inst2|estado.ENVIAR~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst2|clk_count\(31),
	datac => \inst2|Selector46~2_combout\,
	datad => \inst2|estado.ENVIAR~q\,
	combout => \inst2|Selector46~3_combout\);

-- Location: LCCOMB_X22_Y14_N12
\inst2|Selector46~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|Selector46~5_combout\ = (!\inst2|estado.ENVIAR~q\ & \inst2|estado.INICIALIZACAO~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst2|estado.ENVIAR~q\,
	datac => \inst2|estado.INICIALIZACAO~q\,
	combout => \inst2|Selector46~5_combout\);

-- Location: LCCOMB_X21_Y15_N26
\inst2|LessThan1~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|LessThan1~2_combout\ = (\inst2|LessThan3~3_combout\ & (\inst2|LessThan3~13_combout\ & (\inst2|LessThan1~1_combout\ & \inst2|busy~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|LessThan3~3_combout\,
	datab => \inst2|LessThan3~13_combout\,
	datac => \inst2|LessThan1~1_combout\,
	datad => \inst2|busy~4_combout\,
	combout => \inst2|LessThan1~2_combout\);

-- Location: LCCOMB_X22_Y14_N18
\inst2|Selector42~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|Selector42~0_combout\ = (!\inst2|LessThan2~2_combout\ & (!\inst2|Add0~24_combout\ & (\inst2|LessThan3~11_combout\ & \inst2|LessThan3~8_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|LessThan2~2_combout\,
	datab => \inst2|Add0~24_combout\,
	datac => \inst2|LessThan3~11_combout\,
	datad => \inst2|LessThan3~8_combout\,
	combout => \inst2|Selector42~0_combout\);

-- Location: LCCOMB_X22_Y14_N8
\inst2|Selector46~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|Selector46~12_combout\ = (!\inst2|Add0~60_combout\ & (\inst2|Selector46~5_combout\ & ((\inst2|LessThan1~2_combout\) # (\inst2|Selector42~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100010001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|Add0~60_combout\,
	datab => \inst2|Selector46~5_combout\,
	datac => \inst2|LessThan1~2_combout\,
	datad => \inst2|Selector42~0_combout\,
	combout => \inst2|Selector46~12_combout\);

-- Location: LCCOMB_X22_Y11_N22
\inst2|LessThan2~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|LessThan2~3_combout\ = (\inst2|LessThan2~2_combout\ & (!\inst2|Add0~24_combout\ & (\inst2|LessThan3~3_combout\ & \inst2|LessThan3~6_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|LessThan2~2_combout\,
	datab => \inst2|Add0~24_combout\,
	datac => \inst2|LessThan3~3_combout\,
	datad => \inst2|LessThan3~6_combout\,
	combout => \inst2|LessThan2~3_combout\);

-- Location: LCCOMB_X22_Y11_N14
\inst2|LessThan4~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|LessThan4~3_combout\ = (\inst2|LessThan3~3_combout\ & (\inst2|LessThan3~6_combout\ & ((\inst2|LessThan4~2_combout\) # (!\inst2|Add0~24_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|LessThan3~3_combout\,
	datab => \inst2|LessThan4~2_combout\,
	datac => \inst2|Add0~24_combout\,
	datad => \inst2|LessThan3~6_combout\,
	combout => \inst2|LessThan4~3_combout\);

-- Location: LCCOMB_X22_Y14_N22
\inst2|Selector46~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|Selector46~10_combout\ = (\inst2|estado.INICIALIZACAO~q\ & (!\inst2|estado.ENVIAR~q\ & (!\inst2|LessThan2~3_combout\ & !\inst2|LessThan4~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|estado.INICIALIZACAO~q\,
	datab => \inst2|estado.ENVIAR~q\,
	datac => \inst2|LessThan2~3_combout\,
	datad => \inst2|LessThan4~3_combout\,
	combout => \inst2|Selector46~10_combout\);

-- Location: LCCOMB_X21_Y15_N18
\inst2|LessThan8~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|LessThan8~2_combout\ = (!\inst2|Add0~28_combout\ & (((!\inst2|Add0~18_combout\ & \inst2|LessThan8~1_combout\)) # (!\inst2|LessThan3~7_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000011100000011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|Add0~18_combout\,
	datab => \inst2|LessThan3~7_combout\,
	datac => \inst2|Add0~28_combout\,
	datad => \inst2|LessThan8~1_combout\,
	combout => \inst2|LessThan8~2_combout\);

-- Location: LCCOMB_X21_Y15_N16
\inst2|LessThan8~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|LessThan8~3_combout\ = (\inst2|LessThan3~2_combout\ & (((!\inst2|Add0~24_combout\ & \inst2|LessThan8~2_combout\)) # (!\inst2|LessThan6~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010101000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|LessThan3~2_combout\,
	datab => \inst2|Add0~24_combout\,
	datac => \inst2|LessThan6~0_combout\,
	datad => \inst2|LessThan8~2_combout\,
	combout => \inst2|LessThan8~3_combout\);

-- Location: LCCOMB_X21_Y15_N14
\inst2|LessThan8~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|LessThan8~4_combout\ = (\inst2|LessThan3~0_combout\ & \inst2|LessThan8~3_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst2|LessThan3~0_combout\,
	datad => \inst2|LessThan8~3_combout\,
	combout => \inst2|LessThan8~4_combout\);

-- Location: LCCOMB_X21_Y15_N0
\inst2|LessThan8~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|LessThan8~5_combout\ = (!\inst2|Add0~60_combout\ & (\inst2|LessThan3~4_combout\ & (\inst2|LessThan8~4_combout\ & \inst2|busy~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|Add0~60_combout\,
	datab => \inst2|LessThan3~4_combout\,
	datac => \inst2|LessThan8~4_combout\,
	datad => \inst2|busy~4_combout\,
	combout => \inst2|LessThan8~5_combout\);

-- Location: LCCOMB_X23_Y15_N30
\inst2|LessThan7~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|LessThan7~2_combout\ = (!\inst2|Add0~60_combout\ & (\inst2|LessThan3~6_combout\ & ((\inst2|LessThan7~1_combout\) # (!\inst2|LessThan6~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|Add0~60_combout\,
	datab => \inst2|LessThan6~0_combout\,
	datac => \inst2|LessThan7~1_combout\,
	datad => \inst2|LessThan3~6_combout\,
	combout => \inst2|LessThan7~2_combout\);

-- Location: LCCOMB_X22_Y14_N30
\inst2|Selector46~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|Selector46~4_combout\ = (!\inst2|estado.ENVIAR~q\ & (\inst2|estado.INICIALIZACAO~q\ & \inst2|Add0~60_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst2|estado.ENVIAR~q\,
	datac => \inst2|estado.INICIALIZACAO~q\,
	datad => \inst2|Add0~60_combout\,
	combout => \inst2|Selector46~4_combout\);

-- Location: LCCOMB_X22_Y14_N10
\inst2|Selector46~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|Selector46~6_combout\ = (((\inst2|Add0~24_combout\ & !\inst2|LessThan4~2_combout\)) # (!\inst2|LessThan3~2_combout\)) # (!\inst2|LessThan3~3_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101110111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|LessThan3~3_combout\,
	datab => \inst2|Add0~24_combout\,
	datac => \inst2|LessThan4~2_combout\,
	datad => \inst2|LessThan3~2_combout\,
	combout => \inst2|Selector46~6_combout\);

-- Location: LCCOMB_X22_Y14_N24
\inst2|Selector46~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|Selector46~7_combout\ = (\inst2|Selector46~5_combout\ & (((\inst2|Selector46~6_combout\) # (!\inst2|busy~4_combout\)) # (!\inst2|LessThan3~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|Selector46~5_combout\,
	datab => \inst2|LessThan3~1_combout\,
	datac => \inst2|busy~4_combout\,
	datad => \inst2|Selector46~6_combout\,
	combout => \inst2|Selector46~7_combout\);

-- Location: LCCOMB_X21_Y11_N8
\inst2|busy~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|busy~6_combout\ = (!\inst2|Add0~14_combout\ & (!\inst2|Add0~16_combout\ & (\inst2|busy~5_combout\ & !\inst2|Add0~12_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|Add0~14_combout\,
	datab => \inst2|Add0~16_combout\,
	datac => \inst2|busy~5_combout\,
	datad => \inst2|Add0~12_combout\,
	combout => \inst2|busy~6_combout\);

-- Location: LCCOMB_X21_Y11_N18
\inst2|busy~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|busy~7_combout\ = ((!\inst2|Add0~28_combout\ & (\inst2|busy~6_combout\ & \inst2|LessThan1~0_combout\))) # (!\inst2|LessThan6~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111001100110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|Add0~28_combout\,
	datab => \inst2|LessThan6~0_combout\,
	datac => \inst2|busy~6_combout\,
	datad => \inst2|LessThan1~0_combout\,
	combout => \inst2|busy~7_combout\);

-- Location: LCCOMB_X21_Y15_N22
\inst2|busy~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|busy~8_combout\ = (\inst2|LessThan3~2_combout\ & \inst2|busy~7_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst2|LessThan3~2_combout\,
	datad => \inst2|busy~7_combout\,
	combout => \inst2|busy~8_combout\);

-- Location: LCCOMB_X21_Y15_N20
\inst2|busy~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|busy~9_combout\ = (\inst2|LessThan3~0_combout\ & (\inst2|LessThan3~4_combout\ & (\inst2|busy~8_combout\ & \inst2|busy~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|LessThan3~0_combout\,
	datab => \inst2|LessThan3~4_combout\,
	datac => \inst2|busy~8_combout\,
	datad => \inst2|busy~4_combout\,
	combout => \inst2|busy~9_combout\);

-- Location: LCCOMB_X22_Y14_N2
\inst2|Selector46~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|Selector46~8_combout\ = (\inst2|Selector46~4_combout\) # ((\inst2|Selector46~7_combout\ & (!\inst2|LessThan2~3_combout\ & !\inst2|busy~9_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101010101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|Selector46~4_combout\,
	datab => \inst2|Selector46~7_combout\,
	datac => \inst2|LessThan2~3_combout\,
	datad => \inst2|busy~9_combout\,
	combout => \inst2|Selector46~8_combout\);

-- Location: LCCOMB_X22_Y14_N16
\inst2|Selector46~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|Selector46~9_combout\ = (\inst2|Selector46~8_combout\ & ((\inst2|LessThan7~2_combout\) # ((!\inst2|LessThan8~5_combout\ & \inst2|e~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|LessThan8~5_combout\,
	datab => \inst2|e~q\,
	datac => \inst2|LessThan7~2_combout\,
	datad => \inst2|Selector46~8_combout\,
	combout => \inst2|Selector46~9_combout\);

-- Location: LCCOMB_X22_Y14_N20
\inst2|Selector46~11\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|Selector46~11_combout\ = (\inst2|Selector46~9_combout\) # ((\inst2|LessThan5~4_combout\ & (!\inst2|Add0~60_combout\ & \inst2|Selector46~10_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|LessThan5~4_combout\,
	datab => \inst2|Add0~60_combout\,
	datac => \inst2|Selector46~10_combout\,
	datad => \inst2|Selector46~9_combout\,
	combout => \inst2|Selector46~11_combout\);

-- Location: LCCOMB_X22_Y14_N4
\inst2|Selector46~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|Selector46~14_combout\ = (\inst2|Selector46~13_combout\) # ((\inst2|Selector46~3_combout\) # ((\inst2|Selector46~12_combout\) # (\inst2|Selector46~11_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|Selector46~13_combout\,
	datab => \inst2|Selector46~3_combout\,
	datac => \inst2|Selector46~12_combout\,
	datad => \inst2|Selector46~11_combout\,
	combout => \inst2|Selector46~14_combout\);

-- Location: FF_X22_Y14_N5
\inst2|e\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \inst2|Selector46~14_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst2|e~q\);

-- Location: LCCOMB_X24_Y16_N28
\inst1|Mux0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|Mux0~0_combout\ = (\inst1|char\(1) & (((!\inst1|char\(3)) # (!\inst1|char\(2))) # (!\inst1|char\(0)))) # (!\inst1|char\(1) & ((\inst1|char\(0)) # ((\inst1|char\(2)) # (\inst1|char\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|char\(1),
	datab => \inst1|char\(0),
	datac => \inst1|char\(2),
	datad => \inst1|char\(3),
	combout => \inst1|Mux0~0_combout\);

-- Location: LCCOMB_X24_Y16_N0
\inst1|Mux0~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|Mux0~1_combout\ = (\inst1|Mux0~0_combout\) # (\inst1|char\(5) $ (((\inst1|Add0~0_combout\ & \inst1|char\(4)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101111011111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|Add0~0_combout\,
	datab => \inst1|Mux0~0_combout\,
	datac => \inst1|char\(5),
	datad => \inst1|char\(4),
	combout => \inst1|Mux0~1_combout\);

-- Location: LCCOMB_X26_Y17_N28
\inst1|Add0~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|Add0~1_combout\ = \inst1|char\(4) $ (\inst1|Add0~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst1|char\(4),
	datad => \inst1|Add0~0_combout\,
	combout => \inst1|Add0~1_combout\);

-- Location: LCCOMB_X24_Y16_N8
\inst1|Mux0~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|Mux0~2_combout\ = (\inst1|LessThan0~0_combout\ & ((\inst1|Mux0~1_combout\) # (\inst1|char\(0) $ (!\inst1|Add0~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010100010001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|LessThan0~0_combout\,
	datab => \inst1|Mux0~1_combout\,
	datac => \inst1|char\(0),
	datad => \inst1|Add0~1_combout\,
	combout => \inst1|Mux0~2_combout\);

-- Location: LCCOMB_X24_Y16_N2
\inst1|LessThan0~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|LessThan0~1_combout\ = (!\inst1|char\(4) & (!\inst1|char\(2) & (!\inst1|char\(1) & !\inst1|char\(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|char\(4),
	datab => \inst1|char\(2),
	datac => \inst1|char\(1),
	datad => \inst1|char\(3),
	combout => \inst1|LessThan0~1_combout\);

-- Location: LCCOMB_X24_Y16_N18
\inst1|lcd_bus[9]~22\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|lcd_bus[9]~22_combout\ = (\inst1|process_0~0_combout\ & (((!\inst1|LessThan0~1_combout\) # (!\inst1|char\(0))) # (!\inst1|char\(5))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010101010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|process_0~0_combout\,
	datab => \inst1|char\(5),
	datac => \inst1|char\(0),
	datad => \inst1|LessThan0~1_combout\,
	combout => \inst1|lcd_bus[9]~22_combout\);

-- Location: FF_X24_Y16_N9
\inst1|lcd_bus[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \inst1|Mux0~2_combout\,
	ena => \inst1|lcd_bus[9]~22_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|lcd_bus\(9));

-- Location: LCCOMB_X23_Y15_N16
\inst2|rs~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|rs~1_combout\ = (!\inst2|estado.ENVIAR~q\ & (!\inst2|estado.INICIALIZACAO~q\ & ((\inst2|estado.ENERGIZACAO~q\) # (!\inst2|LessThan0~6_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000110001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|LessThan0~6_combout\,
	datab => \inst2|estado.ENVIAR~q\,
	datac => \inst2|estado.ENERGIZACAO~q\,
	datad => \inst2|estado.INICIALIZACAO~q\,
	combout => \inst2|rs~1_combout\);

-- Location: LCCOMB_X22_Y15_N28
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

-- Location: FF_X22_Y15_N29
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

-- Location: FF_X29_Y12_N1
\inst3|s0[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	asdata => \key[2]~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst3|s0\(2));

-- Location: FF_X28_Y12_N1
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

-- Location: LCCOMB_X26_Y13_N0
\inst3|cnt[2][0]~129\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|cnt[2][0]~129_combout\ = \inst3|cnt[2][0]~q\ $ (VCC)
-- \inst3|cnt[2][0]~130\ = CARRY(\inst3|cnt[2][0]~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst3|cnt[2][0]~q\,
	datad => VCC,
	combout => \inst3|cnt[2][0]~129_combout\,
	cout => \inst3|cnt[2][0]~130\);

-- Location: LCCOMB_X28_Y12_N0
\inst3|cnt[2][17]~131\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|cnt[2][17]~131_combout\ = (\inst3|stable\(2) $ (!\inst3|s1\(2))) # (!\inst3|Equal2~10_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst3|stable\(2),
	datac => \inst3|s1\(2),
	datad => \inst3|Equal2~10_combout\,
	combout => \inst3|cnt[2][17]~131_combout\);

-- Location: FF_X26_Y13_N1
\inst3|cnt[2][0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \inst3|cnt[2][0]~129_combout\,
	sclr => \inst3|cnt[2][17]~131_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst3|cnt[2][0]~q\);

-- Location: LCCOMB_X26_Y13_N2
\inst3|cnt[2][1]~132\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|cnt[2][1]~132_combout\ = (\inst3|cnt[2][1]~q\ & (!\inst3|cnt[2][0]~130\)) # (!\inst3|cnt[2][1]~q\ & ((\inst3|cnt[2][0]~130\) # (GND)))
-- \inst3|cnt[2][1]~133\ = CARRY((!\inst3|cnt[2][0]~130\) # (!\inst3|cnt[2][1]~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst3|cnt[2][1]~q\,
	datad => VCC,
	cin => \inst3|cnt[2][0]~130\,
	combout => \inst3|cnt[2][1]~132_combout\,
	cout => \inst3|cnt[2][1]~133\);

-- Location: FF_X26_Y13_N3
\inst3|cnt[2][1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \inst3|cnt[2][1]~132_combout\,
	sclr => \inst3|cnt[2][17]~131_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst3|cnt[2][1]~q\);

-- Location: LCCOMB_X26_Y13_N4
\inst3|cnt[2][2]~134\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|cnt[2][2]~134_combout\ = (\inst3|cnt[2][2]~q\ & (\inst3|cnt[2][1]~133\ $ (GND))) # (!\inst3|cnt[2][2]~q\ & (!\inst3|cnt[2][1]~133\ & VCC))
-- \inst3|cnt[2][2]~135\ = CARRY((\inst3|cnt[2][2]~q\ & !\inst3|cnt[2][1]~133\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst3|cnt[2][2]~q\,
	datad => VCC,
	cin => \inst3|cnt[2][1]~133\,
	combout => \inst3|cnt[2][2]~134_combout\,
	cout => \inst3|cnt[2][2]~135\);

-- Location: FF_X26_Y13_N5
\inst3|cnt[2][2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \inst3|cnt[2][2]~134_combout\,
	sclr => \inst3|cnt[2][17]~131_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst3|cnt[2][2]~q\);

-- Location: LCCOMB_X26_Y13_N6
\inst3|cnt[2][3]~136\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|cnt[2][3]~136_combout\ = (\inst3|cnt[2][3]~q\ & (!\inst3|cnt[2][2]~135\)) # (!\inst3|cnt[2][3]~q\ & ((\inst3|cnt[2][2]~135\) # (GND)))
-- \inst3|cnt[2][3]~137\ = CARRY((!\inst3|cnt[2][2]~135\) # (!\inst3|cnt[2][3]~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|cnt[2][3]~q\,
	datad => VCC,
	cin => \inst3|cnt[2][2]~135\,
	combout => \inst3|cnt[2][3]~136_combout\,
	cout => \inst3|cnt[2][3]~137\);

-- Location: FF_X26_Y13_N7
\inst3|cnt[2][3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \inst3|cnt[2][3]~136_combout\,
	sclr => \inst3|cnt[2][17]~131_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst3|cnt[2][3]~q\);

-- Location: LCCOMB_X26_Y13_N8
\inst3|cnt[2][4]~138\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|cnt[2][4]~138_combout\ = (\inst3|cnt[2][4]~q\ & (\inst3|cnt[2][3]~137\ $ (GND))) # (!\inst3|cnt[2][4]~q\ & (!\inst3|cnt[2][3]~137\ & VCC))
-- \inst3|cnt[2][4]~139\ = CARRY((\inst3|cnt[2][4]~q\ & !\inst3|cnt[2][3]~137\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst3|cnt[2][4]~q\,
	datad => VCC,
	cin => \inst3|cnt[2][3]~137\,
	combout => \inst3|cnt[2][4]~138_combout\,
	cout => \inst3|cnt[2][4]~139\);

-- Location: FF_X26_Y13_N9
\inst3|cnt[2][4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \inst3|cnt[2][4]~138_combout\,
	sclr => \inst3|cnt[2][17]~131_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst3|cnt[2][4]~q\);

-- Location: LCCOMB_X26_Y13_N10
\inst3|cnt[2][5]~140\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|cnt[2][5]~140_combout\ = (\inst3|cnt[2][5]~q\ & (!\inst3|cnt[2][4]~139\)) # (!\inst3|cnt[2][5]~q\ & ((\inst3|cnt[2][4]~139\) # (GND)))
-- \inst3|cnt[2][5]~141\ = CARRY((!\inst3|cnt[2][4]~139\) # (!\inst3|cnt[2][5]~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|cnt[2][5]~q\,
	datad => VCC,
	cin => \inst3|cnt[2][4]~139\,
	combout => \inst3|cnt[2][5]~140_combout\,
	cout => \inst3|cnt[2][5]~141\);

-- Location: FF_X26_Y13_N11
\inst3|cnt[2][5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \inst3|cnt[2][5]~140_combout\,
	sclr => \inst3|cnt[2][17]~131_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst3|cnt[2][5]~q\);

-- Location: LCCOMB_X26_Y13_N12
\inst3|cnt[2][6]~142\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|cnt[2][6]~142_combout\ = (\inst3|cnt[2][6]~q\ & (\inst3|cnt[2][5]~141\ $ (GND))) # (!\inst3|cnt[2][6]~q\ & (!\inst3|cnt[2][5]~141\ & VCC))
-- \inst3|cnt[2][6]~143\ = CARRY((\inst3|cnt[2][6]~q\ & !\inst3|cnt[2][5]~141\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|cnt[2][6]~q\,
	datad => VCC,
	cin => \inst3|cnt[2][5]~141\,
	combout => \inst3|cnt[2][6]~142_combout\,
	cout => \inst3|cnt[2][6]~143\);

-- Location: FF_X26_Y13_N13
\inst3|cnt[2][6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \inst3|cnt[2][6]~142_combout\,
	sclr => \inst3|cnt[2][17]~131_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst3|cnt[2][6]~q\);

-- Location: LCCOMB_X26_Y13_N14
\inst3|cnt[2][7]~144\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|cnt[2][7]~144_combout\ = (\inst3|cnt[2][7]~q\ & (!\inst3|cnt[2][6]~143\)) # (!\inst3|cnt[2][7]~q\ & ((\inst3|cnt[2][6]~143\) # (GND)))
-- \inst3|cnt[2][7]~145\ = CARRY((!\inst3|cnt[2][6]~143\) # (!\inst3|cnt[2][7]~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst3|cnt[2][7]~q\,
	datad => VCC,
	cin => \inst3|cnt[2][6]~143\,
	combout => \inst3|cnt[2][7]~144_combout\,
	cout => \inst3|cnt[2][7]~145\);

-- Location: FF_X26_Y13_N15
\inst3|cnt[2][7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \inst3|cnt[2][7]~144_combout\,
	sclr => \inst3|cnt[2][17]~131_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst3|cnt[2][7]~q\);

-- Location: LCCOMB_X26_Y13_N16
\inst3|cnt[2][8]~146\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|cnt[2][8]~146_combout\ = (\inst3|cnt[2][8]~q\ & (\inst3|cnt[2][7]~145\ $ (GND))) # (!\inst3|cnt[2][8]~q\ & (!\inst3|cnt[2][7]~145\ & VCC))
-- \inst3|cnt[2][8]~147\ = CARRY((\inst3|cnt[2][8]~q\ & !\inst3|cnt[2][7]~145\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst3|cnt[2][8]~q\,
	datad => VCC,
	cin => \inst3|cnt[2][7]~145\,
	combout => \inst3|cnt[2][8]~146_combout\,
	cout => \inst3|cnt[2][8]~147\);

-- Location: FF_X26_Y13_N17
\inst3|cnt[2][8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \inst3|cnt[2][8]~146_combout\,
	sclr => \inst3|cnt[2][17]~131_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst3|cnt[2][8]~q\);

-- Location: LCCOMB_X26_Y13_N18
\inst3|cnt[2][9]~148\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|cnt[2][9]~148_combout\ = (\inst3|cnt[2][9]~q\ & (!\inst3|cnt[2][8]~147\)) # (!\inst3|cnt[2][9]~q\ & ((\inst3|cnt[2][8]~147\) # (GND)))
-- \inst3|cnt[2][9]~149\ = CARRY((!\inst3|cnt[2][8]~147\) # (!\inst3|cnt[2][9]~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst3|cnt[2][9]~q\,
	datad => VCC,
	cin => \inst3|cnt[2][8]~147\,
	combout => \inst3|cnt[2][9]~148_combout\,
	cout => \inst3|cnt[2][9]~149\);

-- Location: FF_X26_Y13_N19
\inst3|cnt[2][9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \inst3|cnt[2][9]~148_combout\,
	sclr => \inst3|cnt[2][17]~131_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst3|cnt[2][9]~q\);

-- Location: LCCOMB_X26_Y13_N20
\inst3|cnt[2][10]~150\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|cnt[2][10]~150_combout\ = (\inst3|cnt[2][10]~q\ & (\inst3|cnt[2][9]~149\ $ (GND))) # (!\inst3|cnt[2][10]~q\ & (!\inst3|cnt[2][9]~149\ & VCC))
-- \inst3|cnt[2][10]~151\ = CARRY((\inst3|cnt[2][10]~q\ & !\inst3|cnt[2][9]~149\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst3|cnt[2][10]~q\,
	datad => VCC,
	cin => \inst3|cnt[2][9]~149\,
	combout => \inst3|cnt[2][10]~150_combout\,
	cout => \inst3|cnt[2][10]~151\);

-- Location: FF_X26_Y13_N21
\inst3|cnt[2][10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \inst3|cnt[2][10]~150_combout\,
	sclr => \inst3|cnt[2][17]~131_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst3|cnt[2][10]~q\);

-- Location: LCCOMB_X26_Y13_N22
\inst3|cnt[2][11]~152\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|cnt[2][11]~152_combout\ = (\inst3|cnt[2][11]~q\ & (!\inst3|cnt[2][10]~151\)) # (!\inst3|cnt[2][11]~q\ & ((\inst3|cnt[2][10]~151\) # (GND)))
-- \inst3|cnt[2][11]~153\ = CARRY((!\inst3|cnt[2][10]~151\) # (!\inst3|cnt[2][11]~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|cnt[2][11]~q\,
	datad => VCC,
	cin => \inst3|cnt[2][10]~151\,
	combout => \inst3|cnt[2][11]~152_combout\,
	cout => \inst3|cnt[2][11]~153\);

-- Location: FF_X26_Y13_N23
\inst3|cnt[2][11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \inst3|cnt[2][11]~152_combout\,
	sclr => \inst3|cnt[2][17]~131_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst3|cnt[2][11]~q\);

-- Location: LCCOMB_X26_Y13_N24
\inst3|cnt[2][12]~154\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|cnt[2][12]~154_combout\ = (\inst3|cnt[2][12]~q\ & (\inst3|cnt[2][11]~153\ $ (GND))) # (!\inst3|cnt[2][12]~q\ & (!\inst3|cnt[2][11]~153\ & VCC))
-- \inst3|cnt[2][12]~155\ = CARRY((\inst3|cnt[2][12]~q\ & !\inst3|cnt[2][11]~153\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst3|cnt[2][12]~q\,
	datad => VCC,
	cin => \inst3|cnt[2][11]~153\,
	combout => \inst3|cnt[2][12]~154_combout\,
	cout => \inst3|cnt[2][12]~155\);

-- Location: FF_X26_Y13_N25
\inst3|cnt[2][12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \inst3|cnt[2][12]~154_combout\,
	sclr => \inst3|cnt[2][17]~131_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst3|cnt[2][12]~q\);

-- Location: LCCOMB_X26_Y13_N26
\inst3|cnt[2][13]~156\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|cnt[2][13]~156_combout\ = (\inst3|cnt[2][13]~q\ & (!\inst3|cnt[2][12]~155\)) # (!\inst3|cnt[2][13]~q\ & ((\inst3|cnt[2][12]~155\) # (GND)))
-- \inst3|cnt[2][13]~157\ = CARRY((!\inst3|cnt[2][12]~155\) # (!\inst3|cnt[2][13]~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|cnt[2][13]~q\,
	datad => VCC,
	cin => \inst3|cnt[2][12]~155\,
	combout => \inst3|cnt[2][13]~156_combout\,
	cout => \inst3|cnt[2][13]~157\);

-- Location: FF_X26_Y13_N27
\inst3|cnt[2][13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \inst3|cnt[2][13]~156_combout\,
	sclr => \inst3|cnt[2][17]~131_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst3|cnt[2][13]~q\);

-- Location: LCCOMB_X26_Y13_N28
\inst3|cnt[2][14]~158\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|cnt[2][14]~158_combout\ = (\inst3|cnt[2][14]~q\ & (\inst3|cnt[2][13]~157\ $ (GND))) # (!\inst3|cnt[2][14]~q\ & (!\inst3|cnt[2][13]~157\ & VCC))
-- \inst3|cnt[2][14]~159\ = CARRY((\inst3|cnt[2][14]~q\ & !\inst3|cnt[2][13]~157\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst3|cnt[2][14]~q\,
	datad => VCC,
	cin => \inst3|cnt[2][13]~157\,
	combout => \inst3|cnt[2][14]~158_combout\,
	cout => \inst3|cnt[2][14]~159\);

-- Location: FF_X26_Y13_N29
\inst3|cnt[2][14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \inst3|cnt[2][14]~158_combout\,
	sclr => \inst3|cnt[2][17]~131_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst3|cnt[2][14]~q\);

-- Location: LCCOMB_X26_Y13_N30
\inst3|cnt[2][15]~160\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|cnt[2][15]~160_combout\ = (\inst3|cnt[2][15]~q\ & (!\inst3|cnt[2][14]~159\)) # (!\inst3|cnt[2][15]~q\ & ((\inst3|cnt[2][14]~159\) # (GND)))
-- \inst3|cnt[2][15]~161\ = CARRY((!\inst3|cnt[2][14]~159\) # (!\inst3|cnt[2][15]~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|cnt[2][15]~q\,
	datad => VCC,
	cin => \inst3|cnt[2][14]~159\,
	combout => \inst3|cnt[2][15]~160_combout\,
	cout => \inst3|cnt[2][15]~161\);

-- Location: FF_X26_Y13_N31
\inst3|cnt[2][15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \inst3|cnt[2][15]~160_combout\,
	sclr => \inst3|cnt[2][17]~131_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst3|cnt[2][15]~q\);

-- Location: LCCOMB_X26_Y12_N0
\inst3|cnt[2][16]~162\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|cnt[2][16]~162_combout\ = (\inst3|cnt[2][16]~q\ & (\inst3|cnt[2][15]~161\ $ (GND))) # (!\inst3|cnt[2][16]~q\ & (!\inst3|cnt[2][15]~161\ & VCC))
-- \inst3|cnt[2][16]~163\ = CARRY((\inst3|cnt[2][16]~q\ & !\inst3|cnt[2][15]~161\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst3|cnt[2][16]~q\,
	datad => VCC,
	cin => \inst3|cnt[2][15]~161\,
	combout => \inst3|cnt[2][16]~162_combout\,
	cout => \inst3|cnt[2][16]~163\);

-- Location: FF_X26_Y12_N1
\inst3|cnt[2][16]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \inst3|cnt[2][16]~162_combout\,
	sclr => \inst3|cnt[2][17]~131_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst3|cnt[2][16]~q\);

-- Location: LCCOMB_X26_Y12_N2
\inst3|cnt[2][17]~164\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|cnt[2][17]~164_combout\ = (\inst3|cnt[2][17]~q\ & (!\inst3|cnt[2][16]~163\)) # (!\inst3|cnt[2][17]~q\ & ((\inst3|cnt[2][16]~163\) # (GND)))
-- \inst3|cnt[2][17]~165\ = CARRY((!\inst3|cnt[2][16]~163\) # (!\inst3|cnt[2][17]~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst3|cnt[2][17]~q\,
	datad => VCC,
	cin => \inst3|cnt[2][16]~163\,
	combout => \inst3|cnt[2][17]~164_combout\,
	cout => \inst3|cnt[2][17]~165\);

-- Location: FF_X26_Y12_N3
\inst3|cnt[2][17]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \inst3|cnt[2][17]~164_combout\,
	sclr => \inst3|cnt[2][17]~131_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst3|cnt[2][17]~q\);

-- Location: LCCOMB_X26_Y12_N4
\inst3|cnt[2][18]~166\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|cnt[2][18]~166_combout\ = (\inst3|cnt[2][18]~q\ & (\inst3|cnt[2][17]~165\ $ (GND))) # (!\inst3|cnt[2][18]~q\ & (!\inst3|cnt[2][17]~165\ & VCC))
-- \inst3|cnt[2][18]~167\ = CARRY((\inst3|cnt[2][18]~q\ & !\inst3|cnt[2][17]~165\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst3|cnt[2][18]~q\,
	datad => VCC,
	cin => \inst3|cnt[2][17]~165\,
	combout => \inst3|cnt[2][18]~166_combout\,
	cout => \inst3|cnt[2][18]~167\);

-- Location: FF_X26_Y12_N5
\inst3|cnt[2][18]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \inst3|cnt[2][18]~166_combout\,
	sclr => \inst3|cnt[2][17]~131_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst3|cnt[2][18]~q\);

-- Location: LCCOMB_X26_Y12_N6
\inst3|cnt[2][19]~168\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|cnt[2][19]~168_combout\ = (\inst3|cnt[2][19]~q\ & (!\inst3|cnt[2][18]~167\)) # (!\inst3|cnt[2][19]~q\ & ((\inst3|cnt[2][18]~167\) # (GND)))
-- \inst3|cnt[2][19]~169\ = CARRY((!\inst3|cnt[2][18]~167\) # (!\inst3|cnt[2][19]~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|cnt[2][19]~q\,
	datad => VCC,
	cin => \inst3|cnt[2][18]~167\,
	combout => \inst3|cnt[2][19]~168_combout\,
	cout => \inst3|cnt[2][19]~169\);

-- Location: FF_X26_Y12_N7
\inst3|cnt[2][19]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \inst3|cnt[2][19]~168_combout\,
	sclr => \inst3|cnt[2][17]~131_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst3|cnt[2][19]~q\);

-- Location: LCCOMB_X26_Y12_N8
\inst3|cnt[2][20]~170\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|cnt[2][20]~170_combout\ = (\inst3|cnt[2][20]~q\ & (\inst3|cnt[2][19]~169\ $ (GND))) # (!\inst3|cnt[2][20]~q\ & (!\inst3|cnt[2][19]~169\ & VCC))
-- \inst3|cnt[2][20]~171\ = CARRY((\inst3|cnt[2][20]~q\ & !\inst3|cnt[2][19]~169\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst3|cnt[2][20]~q\,
	datad => VCC,
	cin => \inst3|cnt[2][19]~169\,
	combout => \inst3|cnt[2][20]~170_combout\,
	cout => \inst3|cnt[2][20]~171\);

-- Location: FF_X26_Y12_N9
\inst3|cnt[2][20]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \inst3|cnt[2][20]~170_combout\,
	sclr => \inst3|cnt[2][17]~131_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst3|cnt[2][20]~q\);

-- Location: LCCOMB_X26_Y12_N10
\inst3|cnt[2][21]~172\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|cnt[2][21]~172_combout\ = (\inst3|cnt[2][21]~q\ & (!\inst3|cnt[2][20]~171\)) # (!\inst3|cnt[2][21]~q\ & ((\inst3|cnt[2][20]~171\) # (GND)))
-- \inst3|cnt[2][21]~173\ = CARRY((!\inst3|cnt[2][20]~171\) # (!\inst3|cnt[2][21]~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|cnt[2][21]~q\,
	datad => VCC,
	cin => \inst3|cnt[2][20]~171\,
	combout => \inst3|cnt[2][21]~172_combout\,
	cout => \inst3|cnt[2][21]~173\);

-- Location: FF_X26_Y12_N11
\inst3|cnt[2][21]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \inst3|cnt[2][21]~172_combout\,
	sclr => \inst3|cnt[2][17]~131_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst3|cnt[2][21]~q\);

-- Location: LCCOMB_X26_Y12_N12
\inst3|cnt[2][22]~174\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|cnt[2][22]~174_combout\ = (\inst3|cnt[2][22]~q\ & (\inst3|cnt[2][21]~173\ $ (GND))) # (!\inst3|cnt[2][22]~q\ & (!\inst3|cnt[2][21]~173\ & VCC))
-- \inst3|cnt[2][22]~175\ = CARRY((\inst3|cnt[2][22]~q\ & !\inst3|cnt[2][21]~173\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|cnt[2][22]~q\,
	datad => VCC,
	cin => \inst3|cnt[2][21]~173\,
	combout => \inst3|cnt[2][22]~174_combout\,
	cout => \inst3|cnt[2][22]~175\);

-- Location: FF_X26_Y12_N13
\inst3|cnt[2][22]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \inst3|cnt[2][22]~174_combout\,
	sclr => \inst3|cnt[2][17]~131_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst3|cnt[2][22]~q\);

-- Location: LCCOMB_X26_Y12_N14
\inst3|cnt[2][23]~176\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|cnt[2][23]~176_combout\ = (\inst3|cnt[2][23]~q\ & (!\inst3|cnt[2][22]~175\)) # (!\inst3|cnt[2][23]~q\ & ((\inst3|cnt[2][22]~175\) # (GND)))
-- \inst3|cnt[2][23]~177\ = CARRY((!\inst3|cnt[2][22]~175\) # (!\inst3|cnt[2][23]~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst3|cnt[2][23]~q\,
	datad => VCC,
	cin => \inst3|cnt[2][22]~175\,
	combout => \inst3|cnt[2][23]~176_combout\,
	cout => \inst3|cnt[2][23]~177\);

-- Location: FF_X26_Y12_N15
\inst3|cnt[2][23]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \inst3|cnt[2][23]~176_combout\,
	sclr => \inst3|cnt[2][17]~131_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst3|cnt[2][23]~q\);

-- Location: LCCOMB_X26_Y12_N16
\inst3|cnt[2][24]~178\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|cnt[2][24]~178_combout\ = (\inst3|cnt[2][24]~q\ & (\inst3|cnt[2][23]~177\ $ (GND))) # (!\inst3|cnt[2][24]~q\ & (!\inst3|cnt[2][23]~177\ & VCC))
-- \inst3|cnt[2][24]~179\ = CARRY((\inst3|cnt[2][24]~q\ & !\inst3|cnt[2][23]~177\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst3|cnt[2][24]~q\,
	datad => VCC,
	cin => \inst3|cnt[2][23]~177\,
	combout => \inst3|cnt[2][24]~178_combout\,
	cout => \inst3|cnt[2][24]~179\);

-- Location: FF_X26_Y12_N17
\inst3|cnt[2][24]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \inst3|cnt[2][24]~178_combout\,
	sclr => \inst3|cnt[2][17]~131_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst3|cnt[2][24]~q\);

-- Location: LCCOMB_X26_Y12_N18
\inst3|cnt[2][25]~180\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|cnt[2][25]~180_combout\ = (\inst3|cnt[2][25]~q\ & (!\inst3|cnt[2][24]~179\)) # (!\inst3|cnt[2][25]~q\ & ((\inst3|cnt[2][24]~179\) # (GND)))
-- \inst3|cnt[2][25]~181\ = CARRY((!\inst3|cnt[2][24]~179\) # (!\inst3|cnt[2][25]~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst3|cnt[2][25]~q\,
	datad => VCC,
	cin => \inst3|cnt[2][24]~179\,
	combout => \inst3|cnt[2][25]~180_combout\,
	cout => \inst3|cnt[2][25]~181\);

-- Location: FF_X26_Y12_N19
\inst3|cnt[2][25]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \inst3|cnt[2][25]~180_combout\,
	sclr => \inst3|cnt[2][17]~131_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst3|cnt[2][25]~q\);

-- Location: LCCOMB_X26_Y12_N20
\inst3|cnt[2][26]~182\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|cnt[2][26]~182_combout\ = (\inst3|cnt[2][26]~q\ & (\inst3|cnt[2][25]~181\ $ (GND))) # (!\inst3|cnt[2][26]~q\ & (!\inst3|cnt[2][25]~181\ & VCC))
-- \inst3|cnt[2][26]~183\ = CARRY((\inst3|cnt[2][26]~q\ & !\inst3|cnt[2][25]~181\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst3|cnt[2][26]~q\,
	datad => VCC,
	cin => \inst3|cnt[2][25]~181\,
	combout => \inst3|cnt[2][26]~182_combout\,
	cout => \inst3|cnt[2][26]~183\);

-- Location: FF_X26_Y12_N21
\inst3|cnt[2][26]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \inst3|cnt[2][26]~182_combout\,
	sclr => \inst3|cnt[2][17]~131_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst3|cnt[2][26]~q\);

-- Location: LCCOMB_X26_Y12_N22
\inst3|cnt[2][27]~184\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|cnt[2][27]~184_combout\ = (\inst3|cnt[2][27]~q\ & (!\inst3|cnt[2][26]~183\)) # (!\inst3|cnt[2][27]~q\ & ((\inst3|cnt[2][26]~183\) # (GND)))
-- \inst3|cnt[2][27]~185\ = CARRY((!\inst3|cnt[2][26]~183\) # (!\inst3|cnt[2][27]~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|cnt[2][27]~q\,
	datad => VCC,
	cin => \inst3|cnt[2][26]~183\,
	combout => \inst3|cnt[2][27]~184_combout\,
	cout => \inst3|cnt[2][27]~185\);

-- Location: FF_X26_Y12_N23
\inst3|cnt[2][27]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \inst3|cnt[2][27]~184_combout\,
	sclr => \inst3|cnt[2][17]~131_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst3|cnt[2][27]~q\);

-- Location: LCCOMB_X25_Y12_N6
\inst3|Equal2~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|Equal2~8_combout\ = (\inst3|cnt[2][25]~q\) # ((\inst3|cnt[2][24]~q\) # ((\inst3|cnt[2][26]~q\) # (\inst3|cnt[2][27]~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|cnt[2][25]~q\,
	datab => \inst3|cnt[2][24]~q\,
	datac => \inst3|cnt[2][26]~q\,
	datad => \inst3|cnt[2][27]~q\,
	combout => \inst3|Equal2~8_combout\);

-- Location: LCCOMB_X26_Y12_N24
\inst3|cnt[2][28]~186\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|cnt[2][28]~186_combout\ = (\inst3|cnt[2][28]~q\ & (\inst3|cnt[2][27]~185\ $ (GND))) # (!\inst3|cnt[2][28]~q\ & (!\inst3|cnt[2][27]~185\ & VCC))
-- \inst3|cnt[2][28]~187\ = CARRY((\inst3|cnt[2][28]~q\ & !\inst3|cnt[2][27]~185\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst3|cnt[2][28]~q\,
	datad => VCC,
	cin => \inst3|cnt[2][27]~185\,
	combout => \inst3|cnt[2][28]~186_combout\,
	cout => \inst3|cnt[2][28]~187\);

-- Location: FF_X26_Y12_N25
\inst3|cnt[2][28]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \inst3|cnt[2][28]~186_combout\,
	sclr => \inst3|cnt[2][17]~131_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst3|cnt[2][28]~q\);

-- Location: LCCOMB_X26_Y12_N26
\inst3|cnt[2][29]~188\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|cnt[2][29]~188_combout\ = (\inst3|cnt[2][29]~q\ & (!\inst3|cnt[2][28]~187\)) # (!\inst3|cnt[2][29]~q\ & ((\inst3|cnt[2][28]~187\) # (GND)))
-- \inst3|cnt[2][29]~189\ = CARRY((!\inst3|cnt[2][28]~187\) # (!\inst3|cnt[2][29]~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|cnt[2][29]~q\,
	datad => VCC,
	cin => \inst3|cnt[2][28]~187\,
	combout => \inst3|cnt[2][29]~188_combout\,
	cout => \inst3|cnt[2][29]~189\);

-- Location: FF_X26_Y12_N27
\inst3|cnt[2][29]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \inst3|cnt[2][29]~188_combout\,
	sclr => \inst3|cnt[2][17]~131_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst3|cnt[2][29]~q\);

-- Location: LCCOMB_X26_Y12_N28
\inst3|cnt[2][30]~190\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|cnt[2][30]~190_combout\ = (\inst3|cnt[2][30]~q\ & (\inst3|cnt[2][29]~189\ $ (GND))) # (!\inst3|cnt[2][30]~q\ & (!\inst3|cnt[2][29]~189\ & VCC))
-- \inst3|cnt[2][30]~191\ = CARRY((\inst3|cnt[2][30]~q\ & !\inst3|cnt[2][29]~189\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst3|cnt[2][30]~q\,
	datad => VCC,
	cin => \inst3|cnt[2][29]~189\,
	combout => \inst3|cnt[2][30]~190_combout\,
	cout => \inst3|cnt[2][30]~191\);

-- Location: FF_X26_Y12_N29
\inst3|cnt[2][30]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \inst3|cnt[2][30]~190_combout\,
	sclr => \inst3|cnt[2][17]~131_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst3|cnt[2][30]~q\);

-- Location: LCCOMB_X26_Y12_N30
\inst3|cnt[2][31]~192\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|cnt[2][31]~192_combout\ = \inst3|cnt[2][31]~q\ $ (\inst3|cnt[2][30]~191\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|cnt[2][31]~q\,
	cin => \inst3|cnt[2][30]~191\,
	combout => \inst3|cnt[2][31]~192_combout\);

-- Location: FF_X26_Y12_N31
\inst3|cnt[2][31]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \inst3|cnt[2][31]~192_combout\,
	sclr => \inst3|cnt[2][17]~131_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst3|cnt[2][31]~q\);

-- Location: LCCOMB_X25_Y12_N16
\inst3|Equal2~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|Equal2~9_combout\ = (\inst3|cnt[2][28]~q\) # ((\inst3|cnt[2][30]~q\) # ((\inst3|cnt[2][31]~q\) # (\inst3|cnt[2][29]~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|cnt[2][28]~q\,
	datab => \inst3|cnt[2][30]~q\,
	datac => \inst3|cnt[2][31]~q\,
	datad => \inst3|cnt[2][29]~q\,
	combout => \inst3|Equal2~9_combout\);

-- Location: LCCOMB_X25_Y13_N10
\inst3|Equal2~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|Equal2~3_combout\ = (\inst3|cnt[2][13]~q\) # (((\inst3|cnt[2][15]~q\) # (\inst3|cnt[2][12]~q\)) # (!\inst3|cnt[2][14]~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|cnt[2][13]~q\,
	datab => \inst3|cnt[2][14]~q\,
	datac => \inst3|cnt[2][15]~q\,
	datad => \inst3|cnt[2][12]~q\,
	combout => \inst3|Equal2~3_combout\);

-- Location: LCCOMB_X25_Y13_N28
\inst3|Equal2~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|Equal2~0_combout\ = (((!\inst3|cnt[2][1]~q\) # (!\inst3|cnt[2][0]~q\)) # (!\inst3|cnt[2][2]~q\)) # (!\inst3|cnt[2][3]~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|cnt[2][3]~q\,
	datab => \inst3|cnt[2][2]~q\,
	datac => \inst3|cnt[2][0]~q\,
	datad => \inst3|cnt[2][1]~q\,
	combout => \inst3|Equal2~0_combout\);

-- Location: LCCOMB_X25_Y13_N8
\inst3|Equal2~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|Equal2~2_combout\ = (\inst3|cnt[2][10]~q\) # (((\inst3|cnt[2][8]~q\) # (\inst3|cnt[2][11]~q\)) # (!\inst3|cnt[2][9]~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|cnt[2][10]~q\,
	datab => \inst3|cnt[2][9]~q\,
	datac => \inst3|cnt[2][8]~q\,
	datad => \inst3|cnt[2][11]~q\,
	combout => \inst3|Equal2~2_combout\);

-- Location: LCCOMB_X25_Y13_N18
\inst3|Equal2~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|Equal2~1_combout\ = (((\inst3|cnt[2][6]~q\) # (\inst3|cnt[2][7]~q\)) # (!\inst3|cnt[2][5]~q\)) # (!\inst3|cnt[2][4]~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111110111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|cnt[2][4]~q\,
	datab => \inst3|cnt[2][5]~q\,
	datac => \inst3|cnt[2][6]~q\,
	datad => \inst3|cnt[2][7]~q\,
	combout => \inst3|Equal2~1_combout\);

-- Location: LCCOMB_X25_Y13_N20
\inst3|Equal2~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|Equal2~4_combout\ = (\inst3|Equal2~3_combout\) # ((\inst3|Equal2~0_combout\) # ((\inst3|Equal2~2_combout\) # (\inst3|Equal2~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|Equal2~3_combout\,
	datab => \inst3|Equal2~0_combout\,
	datac => \inst3|Equal2~2_combout\,
	datad => \inst3|Equal2~1_combout\,
	combout => \inst3|Equal2~4_combout\);

-- Location: LCCOMB_X25_Y12_N10
\inst3|Equal2~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|Equal2~6_combout\ = (\inst3|cnt[2][21]~q\) # ((\inst3|cnt[2][23]~q\) # ((\inst3|cnt[2][20]~q\) # (\inst3|cnt[2][22]~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|cnt[2][21]~q\,
	datab => \inst3|cnt[2][23]~q\,
	datac => \inst3|cnt[2][20]~q\,
	datad => \inst3|cnt[2][22]~q\,
	combout => \inst3|Equal2~6_combout\);

-- Location: LCCOMB_X25_Y12_N28
\inst3|Equal2~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|Equal2~5_combout\ = (!\inst3|cnt[2][18]~q\) # (!\inst3|cnt[2][19]~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|cnt[2][19]~q\,
	datad => \inst3|cnt[2][18]~q\,
	combout => \inst3|Equal2~5_combout\);

-- Location: LCCOMB_X25_Y12_N12
\inst3|Equal2~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|Equal2~7_combout\ = (\inst3|Equal2~6_combout\) # ((\inst3|Equal2~5_combout\) # ((!\inst3|cnt[2][17]~q\) # (!\inst3|cnt[2][16]~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|Equal2~6_combout\,
	datab => \inst3|Equal2~5_combout\,
	datac => \inst3|cnt[2][16]~q\,
	datad => \inst3|cnt[2][17]~q\,
	combout => \inst3|Equal2~7_combout\);

-- Location: LCCOMB_X25_Y12_N18
\inst3|Equal2~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|Equal2~10_combout\ = (\inst3|Equal2~8_combout\) # ((\inst3|Equal2~9_combout\) # ((\inst3|Equal2~4_combout\) # (\inst3|Equal2~7_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|Equal2~8_combout\,
	datab => \inst3|Equal2~9_combout\,
	datac => \inst3|Equal2~4_combout\,
	datad => \inst3|Equal2~7_combout\,
	combout => \inst3|Equal2~10_combout\);

-- Location: LCCOMB_X28_Y12_N18
\inst3|stable[2]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|stable[2]~1_combout\ = (\inst3|Equal2~10_combout\ & ((\inst3|stable\(2)))) # (!\inst3|Equal2~10_combout\ & (\inst3|s1\(2)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst3|s1\(2),
	datac => \inst3|stable\(2),
	datad => \inst3|Equal2~10_combout\,
	combout => \inst3|stable[2]~1_combout\);

-- Location: FF_X28_Y12_N19
\inst3|stable[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \inst3|stable[2]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst3|stable\(2));

-- Location: LCCOMB_X28_Y12_N24
\inst10|stop_d1~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst10|stop_d1~0_combout\ = !\inst3|stable\(2)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst3|stable\(2),
	combout => \inst10|stop_d1~0_combout\);

-- Location: FF_X28_Y12_N25
\inst10|stop_d1\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \inst10|stop_d1~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst10|stop_d1~q\);

-- Location: LCCOMB_X29_Y12_N18
\inst10|stop_d2~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst10|stop_d2~feeder_combout\ = \inst10|stop_d1~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst10|stop_d1~q\,
	combout => \inst10|stop_d2~feeder_combout\);

-- Location: FF_X29_Y12_N19
\inst10|stop_d2\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \inst10|stop_d2~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst10|stop_d2~q\);

-- Location: LCCOMB_X29_Y12_N4
\inst10|stop_rise~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst10|stop_rise~0_combout\ = (\inst10|stop_d1~q\ & !\inst10|stop_d2~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst10|stop_d1~q\,
	datad => \inst10|stop_d2~q\,
	combout => \inst10|stop_rise~0_combout\);

-- Location: FF_X29_Y12_N5
\inst10|stop_rise\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \inst10|stop_rise~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst10|stop_rise~q\);

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

-- Location: LCCOMB_X30_Y12_N14
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

-- Location: FF_X30_Y12_N15
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

-- Location: FF_X30_Y12_N17
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

-- Location: LCCOMB_X31_Y13_N0
\inst3|cnt[1][0]~64\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|cnt[1][0]~64_combout\ = \inst3|cnt[1][0]~q\ $ (VCC)
-- \inst3|cnt[1][0]~65\ = CARRY(\inst3|cnt[1][0]~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst3|cnt[1][0]~q\,
	datad => VCC,
	combout => \inst3|cnt[1][0]~64_combout\,
	cout => \inst3|cnt[1][0]~65\);

-- Location: LCCOMB_X30_Y12_N16
\inst3|cnt[1][7]~66\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|cnt[1][7]~66_combout\ = (\inst3|stable\(1) $ (!\inst3|s1\(1))) # (!\inst3|Equal3~10_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|stable\(1),
	datac => \inst3|s1\(1),
	datad => \inst3|Equal3~10_combout\,
	combout => \inst3|cnt[1][7]~66_combout\);

-- Location: FF_X31_Y13_N1
\inst3|cnt[1][0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \inst3|cnt[1][0]~64_combout\,
	sclr => \inst3|cnt[1][7]~66_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst3|cnt[1][0]~q\);

-- Location: LCCOMB_X31_Y13_N2
\inst3|cnt[1][1]~67\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|cnt[1][1]~67_combout\ = (\inst3|cnt[1][1]~q\ & (!\inst3|cnt[1][0]~65\)) # (!\inst3|cnt[1][1]~q\ & ((\inst3|cnt[1][0]~65\) # (GND)))
-- \inst3|cnt[1][1]~68\ = CARRY((!\inst3|cnt[1][0]~65\) # (!\inst3|cnt[1][1]~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst3|cnt[1][1]~q\,
	datad => VCC,
	cin => \inst3|cnt[1][0]~65\,
	combout => \inst3|cnt[1][1]~67_combout\,
	cout => \inst3|cnt[1][1]~68\);

-- Location: FF_X31_Y13_N3
\inst3|cnt[1][1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \inst3|cnt[1][1]~67_combout\,
	sclr => \inst3|cnt[1][7]~66_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst3|cnt[1][1]~q\);

-- Location: LCCOMB_X31_Y13_N4
\inst3|cnt[1][2]~69\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|cnt[1][2]~69_combout\ = (\inst3|cnt[1][2]~q\ & (\inst3|cnt[1][1]~68\ $ (GND))) # (!\inst3|cnt[1][2]~q\ & (!\inst3|cnt[1][1]~68\ & VCC))
-- \inst3|cnt[1][2]~70\ = CARRY((\inst3|cnt[1][2]~q\ & !\inst3|cnt[1][1]~68\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst3|cnt[1][2]~q\,
	datad => VCC,
	cin => \inst3|cnt[1][1]~68\,
	combout => \inst3|cnt[1][2]~69_combout\,
	cout => \inst3|cnt[1][2]~70\);

-- Location: FF_X31_Y13_N5
\inst3|cnt[1][2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \inst3|cnt[1][2]~69_combout\,
	sclr => \inst3|cnt[1][7]~66_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst3|cnt[1][2]~q\);

-- Location: LCCOMB_X31_Y13_N6
\inst3|cnt[1][3]~71\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|cnt[1][3]~71_combout\ = (\inst3|cnt[1][3]~q\ & (!\inst3|cnt[1][2]~70\)) # (!\inst3|cnt[1][3]~q\ & ((\inst3|cnt[1][2]~70\) # (GND)))
-- \inst3|cnt[1][3]~72\ = CARRY((!\inst3|cnt[1][2]~70\) # (!\inst3|cnt[1][3]~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|cnt[1][3]~q\,
	datad => VCC,
	cin => \inst3|cnt[1][2]~70\,
	combout => \inst3|cnt[1][3]~71_combout\,
	cout => \inst3|cnt[1][3]~72\);

-- Location: FF_X31_Y13_N7
\inst3|cnt[1][3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \inst3|cnt[1][3]~71_combout\,
	sclr => \inst3|cnt[1][7]~66_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst3|cnt[1][3]~q\);

-- Location: LCCOMB_X31_Y13_N8
\inst3|cnt[1][4]~73\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|cnt[1][4]~73_combout\ = (\inst3|cnt[1][4]~q\ & (\inst3|cnt[1][3]~72\ $ (GND))) # (!\inst3|cnt[1][4]~q\ & (!\inst3|cnt[1][3]~72\ & VCC))
-- \inst3|cnt[1][4]~74\ = CARRY((\inst3|cnt[1][4]~q\ & !\inst3|cnt[1][3]~72\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst3|cnt[1][4]~q\,
	datad => VCC,
	cin => \inst3|cnt[1][3]~72\,
	combout => \inst3|cnt[1][4]~73_combout\,
	cout => \inst3|cnt[1][4]~74\);

-- Location: FF_X31_Y13_N9
\inst3|cnt[1][4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \inst3|cnt[1][4]~73_combout\,
	sclr => \inst3|cnt[1][7]~66_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst3|cnt[1][4]~q\);

-- Location: LCCOMB_X31_Y13_N10
\inst3|cnt[1][5]~75\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|cnt[1][5]~75_combout\ = (\inst3|cnt[1][5]~q\ & (!\inst3|cnt[1][4]~74\)) # (!\inst3|cnt[1][5]~q\ & ((\inst3|cnt[1][4]~74\) # (GND)))
-- \inst3|cnt[1][5]~76\ = CARRY((!\inst3|cnt[1][4]~74\) # (!\inst3|cnt[1][5]~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|cnt[1][5]~q\,
	datad => VCC,
	cin => \inst3|cnt[1][4]~74\,
	combout => \inst3|cnt[1][5]~75_combout\,
	cout => \inst3|cnt[1][5]~76\);

-- Location: FF_X31_Y13_N11
\inst3|cnt[1][5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \inst3|cnt[1][5]~75_combout\,
	sclr => \inst3|cnt[1][7]~66_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst3|cnt[1][5]~q\);

-- Location: LCCOMB_X31_Y13_N12
\inst3|cnt[1][6]~77\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|cnt[1][6]~77_combout\ = (\inst3|cnt[1][6]~q\ & (\inst3|cnt[1][5]~76\ $ (GND))) # (!\inst3|cnt[1][6]~q\ & (!\inst3|cnt[1][5]~76\ & VCC))
-- \inst3|cnt[1][6]~78\ = CARRY((\inst3|cnt[1][6]~q\ & !\inst3|cnt[1][5]~76\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|cnt[1][6]~q\,
	datad => VCC,
	cin => \inst3|cnt[1][5]~76\,
	combout => \inst3|cnt[1][6]~77_combout\,
	cout => \inst3|cnt[1][6]~78\);

-- Location: FF_X31_Y13_N13
\inst3|cnt[1][6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \inst3|cnt[1][6]~77_combout\,
	sclr => \inst3|cnt[1][7]~66_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst3|cnt[1][6]~q\);

-- Location: LCCOMB_X31_Y13_N14
\inst3|cnt[1][7]~79\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|cnt[1][7]~79_combout\ = (\inst3|cnt[1][7]~q\ & (!\inst3|cnt[1][6]~78\)) # (!\inst3|cnt[1][7]~q\ & ((\inst3|cnt[1][6]~78\) # (GND)))
-- \inst3|cnt[1][7]~80\ = CARRY((!\inst3|cnt[1][6]~78\) # (!\inst3|cnt[1][7]~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst3|cnt[1][7]~q\,
	datad => VCC,
	cin => \inst3|cnt[1][6]~78\,
	combout => \inst3|cnt[1][7]~79_combout\,
	cout => \inst3|cnt[1][7]~80\);

-- Location: FF_X31_Y13_N15
\inst3|cnt[1][7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \inst3|cnt[1][7]~79_combout\,
	sclr => \inst3|cnt[1][7]~66_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst3|cnt[1][7]~q\);

-- Location: LCCOMB_X31_Y13_N16
\inst3|cnt[1][8]~81\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|cnt[1][8]~81_combout\ = (\inst3|cnt[1][8]~q\ & (\inst3|cnt[1][7]~80\ $ (GND))) # (!\inst3|cnt[1][8]~q\ & (!\inst3|cnt[1][7]~80\ & VCC))
-- \inst3|cnt[1][8]~82\ = CARRY((\inst3|cnt[1][8]~q\ & !\inst3|cnt[1][7]~80\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst3|cnt[1][8]~q\,
	datad => VCC,
	cin => \inst3|cnt[1][7]~80\,
	combout => \inst3|cnt[1][8]~81_combout\,
	cout => \inst3|cnt[1][8]~82\);

-- Location: FF_X31_Y13_N17
\inst3|cnt[1][8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \inst3|cnt[1][8]~81_combout\,
	sclr => \inst3|cnt[1][7]~66_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst3|cnt[1][8]~q\);

-- Location: LCCOMB_X31_Y13_N18
\inst3|cnt[1][9]~83\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|cnt[1][9]~83_combout\ = (\inst3|cnt[1][9]~q\ & (!\inst3|cnt[1][8]~82\)) # (!\inst3|cnt[1][9]~q\ & ((\inst3|cnt[1][8]~82\) # (GND)))
-- \inst3|cnt[1][9]~84\ = CARRY((!\inst3|cnt[1][8]~82\) # (!\inst3|cnt[1][9]~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst3|cnt[1][9]~q\,
	datad => VCC,
	cin => \inst3|cnt[1][8]~82\,
	combout => \inst3|cnt[1][9]~83_combout\,
	cout => \inst3|cnt[1][9]~84\);

-- Location: FF_X31_Y13_N19
\inst3|cnt[1][9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \inst3|cnt[1][9]~83_combout\,
	sclr => \inst3|cnt[1][7]~66_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst3|cnt[1][9]~q\);

-- Location: LCCOMB_X31_Y13_N20
\inst3|cnt[1][10]~85\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|cnt[1][10]~85_combout\ = (\inst3|cnt[1][10]~q\ & (\inst3|cnt[1][9]~84\ $ (GND))) # (!\inst3|cnt[1][10]~q\ & (!\inst3|cnt[1][9]~84\ & VCC))
-- \inst3|cnt[1][10]~86\ = CARRY((\inst3|cnt[1][10]~q\ & !\inst3|cnt[1][9]~84\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst3|cnt[1][10]~q\,
	datad => VCC,
	cin => \inst3|cnt[1][9]~84\,
	combout => \inst3|cnt[1][10]~85_combout\,
	cout => \inst3|cnt[1][10]~86\);

-- Location: FF_X31_Y13_N21
\inst3|cnt[1][10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \inst3|cnt[1][10]~85_combout\,
	sclr => \inst3|cnt[1][7]~66_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst3|cnt[1][10]~q\);

-- Location: LCCOMB_X31_Y13_N22
\inst3|cnt[1][11]~87\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|cnt[1][11]~87_combout\ = (\inst3|cnt[1][11]~q\ & (!\inst3|cnt[1][10]~86\)) # (!\inst3|cnt[1][11]~q\ & ((\inst3|cnt[1][10]~86\) # (GND)))
-- \inst3|cnt[1][11]~88\ = CARRY((!\inst3|cnt[1][10]~86\) # (!\inst3|cnt[1][11]~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|cnt[1][11]~q\,
	datad => VCC,
	cin => \inst3|cnt[1][10]~86\,
	combout => \inst3|cnt[1][11]~87_combout\,
	cout => \inst3|cnt[1][11]~88\);

-- Location: FF_X31_Y13_N23
\inst3|cnt[1][11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \inst3|cnt[1][11]~87_combout\,
	sclr => \inst3|cnt[1][7]~66_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst3|cnt[1][11]~q\);

-- Location: LCCOMB_X30_Y13_N30
\inst3|Equal3~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|Equal3~3_combout\ = (\inst3|cnt[1][11]~q\) # (((\inst3|cnt[1][10]~q\) # (\inst3|cnt[1][8]~q\)) # (!\inst3|cnt[1][9]~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|cnt[1][11]~q\,
	datab => \inst3|cnt[1][9]~q\,
	datac => \inst3|cnt[1][10]~q\,
	datad => \inst3|cnt[1][8]~q\,
	combout => \inst3|Equal3~3_combout\);

-- Location: LCCOMB_X31_Y13_N24
\inst3|cnt[1][12]~89\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|cnt[1][12]~89_combout\ = (\inst3|cnt[1][12]~q\ & (\inst3|cnt[1][11]~88\ $ (GND))) # (!\inst3|cnt[1][12]~q\ & (!\inst3|cnt[1][11]~88\ & VCC))
-- \inst3|cnt[1][12]~90\ = CARRY((\inst3|cnt[1][12]~q\ & !\inst3|cnt[1][11]~88\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst3|cnt[1][12]~q\,
	datad => VCC,
	cin => \inst3|cnt[1][11]~88\,
	combout => \inst3|cnt[1][12]~89_combout\,
	cout => \inst3|cnt[1][12]~90\);

-- Location: FF_X31_Y13_N25
\inst3|cnt[1][12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \inst3|cnt[1][12]~89_combout\,
	sclr => \inst3|cnt[1][7]~66_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst3|cnt[1][12]~q\);

-- Location: LCCOMB_X31_Y13_N26
\inst3|cnt[1][13]~91\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|cnt[1][13]~91_combout\ = (\inst3|cnt[1][13]~q\ & (!\inst3|cnt[1][12]~90\)) # (!\inst3|cnt[1][13]~q\ & ((\inst3|cnt[1][12]~90\) # (GND)))
-- \inst3|cnt[1][13]~92\ = CARRY((!\inst3|cnt[1][12]~90\) # (!\inst3|cnt[1][13]~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|cnt[1][13]~q\,
	datad => VCC,
	cin => \inst3|cnt[1][12]~90\,
	combout => \inst3|cnt[1][13]~91_combout\,
	cout => \inst3|cnt[1][13]~92\);

-- Location: FF_X31_Y13_N27
\inst3|cnt[1][13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \inst3|cnt[1][13]~91_combout\,
	sclr => \inst3|cnt[1][7]~66_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst3|cnt[1][13]~q\);

-- Location: LCCOMB_X31_Y13_N28
\inst3|cnt[1][14]~93\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|cnt[1][14]~93_combout\ = (\inst3|cnt[1][14]~q\ & (\inst3|cnt[1][13]~92\ $ (GND))) # (!\inst3|cnt[1][14]~q\ & (!\inst3|cnt[1][13]~92\ & VCC))
-- \inst3|cnt[1][14]~94\ = CARRY((\inst3|cnt[1][14]~q\ & !\inst3|cnt[1][13]~92\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst3|cnt[1][14]~q\,
	datad => VCC,
	cin => \inst3|cnt[1][13]~92\,
	combout => \inst3|cnt[1][14]~93_combout\,
	cout => \inst3|cnt[1][14]~94\);

-- Location: FF_X31_Y13_N29
\inst3|cnt[1][14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \inst3|cnt[1][14]~93_combout\,
	sclr => \inst3|cnt[1][7]~66_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst3|cnt[1][14]~q\);

-- Location: LCCOMB_X31_Y13_N30
\inst3|cnt[1][15]~95\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|cnt[1][15]~95_combout\ = (\inst3|cnt[1][15]~q\ & (!\inst3|cnt[1][14]~94\)) # (!\inst3|cnt[1][15]~q\ & ((\inst3|cnt[1][14]~94\) # (GND)))
-- \inst3|cnt[1][15]~96\ = CARRY((!\inst3|cnt[1][14]~94\) # (!\inst3|cnt[1][15]~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|cnt[1][15]~q\,
	datad => VCC,
	cin => \inst3|cnt[1][14]~94\,
	combout => \inst3|cnt[1][15]~95_combout\,
	cout => \inst3|cnt[1][15]~96\);

-- Location: FF_X31_Y13_N31
\inst3|cnt[1][15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \inst3|cnt[1][15]~95_combout\,
	sclr => \inst3|cnt[1][7]~66_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst3|cnt[1][15]~q\);

-- Location: LCCOMB_X31_Y12_N0
\inst3|cnt[1][16]~97\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|cnt[1][16]~97_combout\ = (\inst3|cnt[1][16]~q\ & (\inst3|cnt[1][15]~96\ $ (GND))) # (!\inst3|cnt[1][16]~q\ & (!\inst3|cnt[1][15]~96\ & VCC))
-- \inst3|cnt[1][16]~98\ = CARRY((\inst3|cnt[1][16]~q\ & !\inst3|cnt[1][15]~96\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst3|cnt[1][16]~q\,
	datad => VCC,
	cin => \inst3|cnt[1][15]~96\,
	combout => \inst3|cnt[1][16]~97_combout\,
	cout => \inst3|cnt[1][16]~98\);

-- Location: FF_X31_Y12_N1
\inst3|cnt[1][16]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \inst3|cnt[1][16]~97_combout\,
	sclr => \inst3|cnt[1][7]~66_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst3|cnt[1][16]~q\);

-- Location: LCCOMB_X31_Y12_N2
\inst3|cnt[1][17]~99\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|cnt[1][17]~99_combout\ = (\inst3|cnt[1][17]~q\ & (!\inst3|cnt[1][16]~98\)) # (!\inst3|cnt[1][17]~q\ & ((\inst3|cnt[1][16]~98\) # (GND)))
-- \inst3|cnt[1][17]~100\ = CARRY((!\inst3|cnt[1][16]~98\) # (!\inst3|cnt[1][17]~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst3|cnt[1][17]~q\,
	datad => VCC,
	cin => \inst3|cnt[1][16]~98\,
	combout => \inst3|cnt[1][17]~99_combout\,
	cout => \inst3|cnt[1][17]~100\);

-- Location: FF_X31_Y12_N3
\inst3|cnt[1][17]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \inst3|cnt[1][17]~99_combout\,
	sclr => \inst3|cnt[1][7]~66_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst3|cnt[1][17]~q\);

-- Location: LCCOMB_X31_Y12_N4
\inst3|cnt[1][18]~101\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|cnt[1][18]~101_combout\ = (\inst3|cnt[1][18]~q\ & (\inst3|cnt[1][17]~100\ $ (GND))) # (!\inst3|cnt[1][18]~q\ & (!\inst3|cnt[1][17]~100\ & VCC))
-- \inst3|cnt[1][18]~102\ = CARRY((\inst3|cnt[1][18]~q\ & !\inst3|cnt[1][17]~100\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst3|cnt[1][18]~q\,
	datad => VCC,
	cin => \inst3|cnt[1][17]~100\,
	combout => \inst3|cnt[1][18]~101_combout\,
	cout => \inst3|cnt[1][18]~102\);

-- Location: FF_X31_Y12_N5
\inst3|cnt[1][18]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \inst3|cnt[1][18]~101_combout\,
	sclr => \inst3|cnt[1][7]~66_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst3|cnt[1][18]~q\);

-- Location: LCCOMB_X31_Y12_N6
\inst3|cnt[1][19]~103\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|cnt[1][19]~103_combout\ = (\inst3|cnt[1][19]~q\ & (!\inst3|cnt[1][18]~102\)) # (!\inst3|cnt[1][19]~q\ & ((\inst3|cnt[1][18]~102\) # (GND)))
-- \inst3|cnt[1][19]~104\ = CARRY((!\inst3|cnt[1][18]~102\) # (!\inst3|cnt[1][19]~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|cnt[1][19]~q\,
	datad => VCC,
	cin => \inst3|cnt[1][18]~102\,
	combout => \inst3|cnt[1][19]~103_combout\,
	cout => \inst3|cnt[1][19]~104\);

-- Location: FF_X31_Y12_N7
\inst3|cnt[1][19]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \inst3|cnt[1][19]~103_combout\,
	sclr => \inst3|cnt[1][7]~66_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst3|cnt[1][19]~q\);

-- Location: LCCOMB_X31_Y12_N8
\inst3|cnt[1][20]~105\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|cnt[1][20]~105_combout\ = (\inst3|cnt[1][20]~q\ & (\inst3|cnt[1][19]~104\ $ (GND))) # (!\inst3|cnt[1][20]~q\ & (!\inst3|cnt[1][19]~104\ & VCC))
-- \inst3|cnt[1][20]~106\ = CARRY((\inst3|cnt[1][20]~q\ & !\inst3|cnt[1][19]~104\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst3|cnt[1][20]~q\,
	datad => VCC,
	cin => \inst3|cnt[1][19]~104\,
	combout => \inst3|cnt[1][20]~105_combout\,
	cout => \inst3|cnt[1][20]~106\);

-- Location: FF_X31_Y12_N9
\inst3|cnt[1][20]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \inst3|cnt[1][20]~105_combout\,
	sclr => \inst3|cnt[1][7]~66_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst3|cnt[1][20]~q\);

-- Location: LCCOMB_X31_Y12_N10
\inst3|cnt[1][21]~107\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|cnt[1][21]~107_combout\ = (\inst3|cnt[1][21]~q\ & (!\inst3|cnt[1][20]~106\)) # (!\inst3|cnt[1][21]~q\ & ((\inst3|cnt[1][20]~106\) # (GND)))
-- \inst3|cnt[1][21]~108\ = CARRY((!\inst3|cnt[1][20]~106\) # (!\inst3|cnt[1][21]~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|cnt[1][21]~q\,
	datad => VCC,
	cin => \inst3|cnt[1][20]~106\,
	combout => \inst3|cnt[1][21]~107_combout\,
	cout => \inst3|cnt[1][21]~108\);

-- Location: FF_X31_Y12_N11
\inst3|cnt[1][21]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \inst3|cnt[1][21]~107_combout\,
	sclr => \inst3|cnt[1][7]~66_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst3|cnt[1][21]~q\);

-- Location: LCCOMB_X31_Y12_N12
\inst3|cnt[1][22]~109\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|cnt[1][22]~109_combout\ = (\inst3|cnt[1][22]~q\ & (\inst3|cnt[1][21]~108\ $ (GND))) # (!\inst3|cnt[1][22]~q\ & (!\inst3|cnt[1][21]~108\ & VCC))
-- \inst3|cnt[1][22]~110\ = CARRY((\inst3|cnt[1][22]~q\ & !\inst3|cnt[1][21]~108\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|cnt[1][22]~q\,
	datad => VCC,
	cin => \inst3|cnt[1][21]~108\,
	combout => \inst3|cnt[1][22]~109_combout\,
	cout => \inst3|cnt[1][22]~110\);

-- Location: FF_X31_Y12_N13
\inst3|cnt[1][22]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \inst3|cnt[1][22]~109_combout\,
	sclr => \inst3|cnt[1][7]~66_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst3|cnt[1][22]~q\);

-- Location: LCCOMB_X31_Y12_N14
\inst3|cnt[1][23]~111\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|cnt[1][23]~111_combout\ = (\inst3|cnt[1][23]~q\ & (!\inst3|cnt[1][22]~110\)) # (!\inst3|cnt[1][23]~q\ & ((\inst3|cnt[1][22]~110\) # (GND)))
-- \inst3|cnt[1][23]~112\ = CARRY((!\inst3|cnt[1][22]~110\) # (!\inst3|cnt[1][23]~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst3|cnt[1][23]~q\,
	datad => VCC,
	cin => \inst3|cnt[1][22]~110\,
	combout => \inst3|cnt[1][23]~111_combout\,
	cout => \inst3|cnt[1][23]~112\);

-- Location: FF_X31_Y12_N15
\inst3|cnt[1][23]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \inst3|cnt[1][23]~111_combout\,
	sclr => \inst3|cnt[1][7]~66_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst3|cnt[1][23]~q\);

-- Location: LCCOMB_X31_Y12_N16
\inst3|cnt[1][24]~113\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|cnt[1][24]~113_combout\ = (\inst3|cnt[1][24]~q\ & (\inst3|cnt[1][23]~112\ $ (GND))) # (!\inst3|cnt[1][24]~q\ & (!\inst3|cnt[1][23]~112\ & VCC))
-- \inst3|cnt[1][24]~114\ = CARRY((\inst3|cnt[1][24]~q\ & !\inst3|cnt[1][23]~112\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst3|cnt[1][24]~q\,
	datad => VCC,
	cin => \inst3|cnt[1][23]~112\,
	combout => \inst3|cnt[1][24]~113_combout\,
	cout => \inst3|cnt[1][24]~114\);

-- Location: FF_X31_Y12_N17
\inst3|cnt[1][24]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \inst3|cnt[1][24]~113_combout\,
	sclr => \inst3|cnt[1][7]~66_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst3|cnt[1][24]~q\);

-- Location: LCCOMB_X31_Y12_N18
\inst3|cnt[1][25]~115\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|cnt[1][25]~115_combout\ = (\inst3|cnt[1][25]~q\ & (!\inst3|cnt[1][24]~114\)) # (!\inst3|cnt[1][25]~q\ & ((\inst3|cnt[1][24]~114\) # (GND)))
-- \inst3|cnt[1][25]~116\ = CARRY((!\inst3|cnt[1][24]~114\) # (!\inst3|cnt[1][25]~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst3|cnt[1][25]~q\,
	datad => VCC,
	cin => \inst3|cnt[1][24]~114\,
	combout => \inst3|cnt[1][25]~115_combout\,
	cout => \inst3|cnt[1][25]~116\);

-- Location: FF_X31_Y12_N19
\inst3|cnt[1][25]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \inst3|cnt[1][25]~115_combout\,
	sclr => \inst3|cnt[1][7]~66_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst3|cnt[1][25]~q\);

-- Location: LCCOMB_X31_Y12_N20
\inst3|cnt[1][26]~117\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|cnt[1][26]~117_combout\ = (\inst3|cnt[1][26]~q\ & (\inst3|cnt[1][25]~116\ $ (GND))) # (!\inst3|cnt[1][26]~q\ & (!\inst3|cnt[1][25]~116\ & VCC))
-- \inst3|cnt[1][26]~118\ = CARRY((\inst3|cnt[1][26]~q\ & !\inst3|cnt[1][25]~116\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst3|cnt[1][26]~q\,
	datad => VCC,
	cin => \inst3|cnt[1][25]~116\,
	combout => \inst3|cnt[1][26]~117_combout\,
	cout => \inst3|cnt[1][26]~118\);

-- Location: FF_X31_Y12_N21
\inst3|cnt[1][26]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \inst3|cnt[1][26]~117_combout\,
	sclr => \inst3|cnt[1][7]~66_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst3|cnt[1][26]~q\);

-- Location: LCCOMB_X31_Y12_N22
\inst3|cnt[1][27]~119\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|cnt[1][27]~119_combout\ = (\inst3|cnt[1][27]~q\ & (!\inst3|cnt[1][26]~118\)) # (!\inst3|cnt[1][27]~q\ & ((\inst3|cnt[1][26]~118\) # (GND)))
-- \inst3|cnt[1][27]~120\ = CARRY((!\inst3|cnt[1][26]~118\) # (!\inst3|cnt[1][27]~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|cnt[1][27]~q\,
	datad => VCC,
	cin => \inst3|cnt[1][26]~118\,
	combout => \inst3|cnt[1][27]~119_combout\,
	cout => \inst3|cnt[1][27]~120\);

-- Location: FF_X31_Y12_N23
\inst3|cnt[1][27]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \inst3|cnt[1][27]~119_combout\,
	sclr => \inst3|cnt[1][7]~66_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst3|cnt[1][27]~q\);

-- Location: LCCOMB_X30_Y12_N26
\inst3|Equal3~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|Equal3~7_combout\ = (\inst3|cnt[1][27]~q\) # ((\inst3|cnt[1][25]~q\) # ((\inst3|cnt[1][26]~q\) # (\inst3|cnt[1][24]~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|cnt[1][27]~q\,
	datab => \inst3|cnt[1][25]~q\,
	datac => \inst3|cnt[1][26]~q\,
	datad => \inst3|cnt[1][24]~q\,
	combout => \inst3|Equal3~7_combout\);

-- Location: LCCOMB_X31_Y12_N24
\inst3|cnt[1][28]~121\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|cnt[1][28]~121_combout\ = (\inst3|cnt[1][28]~q\ & (\inst3|cnt[1][27]~120\ $ (GND))) # (!\inst3|cnt[1][28]~q\ & (!\inst3|cnt[1][27]~120\ & VCC))
-- \inst3|cnt[1][28]~122\ = CARRY((\inst3|cnt[1][28]~q\ & !\inst3|cnt[1][27]~120\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst3|cnt[1][28]~q\,
	datad => VCC,
	cin => \inst3|cnt[1][27]~120\,
	combout => \inst3|cnt[1][28]~121_combout\,
	cout => \inst3|cnt[1][28]~122\);

-- Location: FF_X31_Y12_N25
\inst3|cnt[1][28]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \inst3|cnt[1][28]~121_combout\,
	sclr => \inst3|cnt[1][7]~66_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst3|cnt[1][28]~q\);

-- Location: LCCOMB_X31_Y12_N26
\inst3|cnt[1][29]~123\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|cnt[1][29]~123_combout\ = (\inst3|cnt[1][29]~q\ & (!\inst3|cnt[1][28]~122\)) # (!\inst3|cnt[1][29]~q\ & ((\inst3|cnt[1][28]~122\) # (GND)))
-- \inst3|cnt[1][29]~124\ = CARRY((!\inst3|cnt[1][28]~122\) # (!\inst3|cnt[1][29]~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|cnt[1][29]~q\,
	datad => VCC,
	cin => \inst3|cnt[1][28]~122\,
	combout => \inst3|cnt[1][29]~123_combout\,
	cout => \inst3|cnt[1][29]~124\);

-- Location: FF_X31_Y12_N27
\inst3|cnt[1][29]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \inst3|cnt[1][29]~123_combout\,
	sclr => \inst3|cnt[1][7]~66_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst3|cnt[1][29]~q\);

-- Location: LCCOMB_X31_Y12_N28
\inst3|cnt[1][30]~125\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|cnt[1][30]~125_combout\ = (\inst3|cnt[1][30]~q\ & (\inst3|cnt[1][29]~124\ $ (GND))) # (!\inst3|cnt[1][30]~q\ & (!\inst3|cnt[1][29]~124\ & VCC))
-- \inst3|cnt[1][30]~126\ = CARRY((\inst3|cnt[1][30]~q\ & !\inst3|cnt[1][29]~124\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst3|cnt[1][30]~q\,
	datad => VCC,
	cin => \inst3|cnt[1][29]~124\,
	combout => \inst3|cnt[1][30]~125_combout\,
	cout => \inst3|cnt[1][30]~126\);

-- Location: FF_X31_Y12_N29
\inst3|cnt[1][30]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \inst3|cnt[1][30]~125_combout\,
	sclr => \inst3|cnt[1][7]~66_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst3|cnt[1][30]~q\);

-- Location: LCCOMB_X31_Y12_N30
\inst3|cnt[1][31]~127\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|cnt[1][31]~127_combout\ = \inst3|cnt[1][31]~q\ $ (\inst3|cnt[1][30]~126\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|cnt[1][31]~q\,
	cin => \inst3|cnt[1][30]~126\,
	combout => \inst3|cnt[1][31]~127_combout\);

-- Location: FF_X31_Y12_N31
\inst3|cnt[1][31]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \inst3|cnt[1][31]~127_combout\,
	sclr => \inst3|cnt[1][7]~66_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst3|cnt[1][31]~q\);

-- Location: LCCOMB_X30_Y12_N4
\inst3|Equal3~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|Equal3~8_combout\ = (\inst3|cnt[1][29]~q\) # ((\inst3|cnt[1][30]~q\) # ((\inst3|cnt[1][31]~q\) # (\inst3|cnt[1][28]~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|cnt[1][29]~q\,
	datab => \inst3|cnt[1][30]~q\,
	datac => \inst3|cnt[1][31]~q\,
	datad => \inst3|cnt[1][28]~q\,
	combout => \inst3|Equal3~8_combout\);

-- Location: LCCOMB_X30_Y12_N22
\inst3|Equal3~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|Equal3~5_combout\ = (((!\inst3|cnt[1][17]~q\) # (!\inst3|cnt[1][16]~q\)) # (!\inst3|cnt[1][19]~q\)) # (!\inst3|cnt[1][18]~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|cnt[1][18]~q\,
	datab => \inst3|cnt[1][19]~q\,
	datac => \inst3|cnt[1][16]~q\,
	datad => \inst3|cnt[1][17]~q\,
	combout => \inst3|Equal3~5_combout\);

-- Location: LCCOMB_X30_Y12_N24
\inst3|Equal3~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|Equal3~6_combout\ = (\inst3|cnt[1][22]~q\) # ((\inst3|cnt[1][21]~q\) # ((\inst3|cnt[1][20]~q\) # (\inst3|cnt[1][23]~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|cnt[1][22]~q\,
	datab => \inst3|cnt[1][21]~q\,
	datac => \inst3|cnt[1][20]~q\,
	datad => \inst3|cnt[1][23]~q\,
	combout => \inst3|Equal3~6_combout\);

-- Location: LCCOMB_X30_Y12_N2
\inst3|Equal3~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|Equal3~9_combout\ = (\inst3|Equal3~7_combout\) # ((\inst3|Equal3~8_combout\) # ((\inst3|Equal3~5_combout\) # (\inst3|Equal3~6_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|Equal3~7_combout\,
	datab => \inst3|Equal3~8_combout\,
	datac => \inst3|Equal3~5_combout\,
	datad => \inst3|Equal3~6_combout\,
	combout => \inst3|Equal3~9_combout\);

-- Location: LCCOMB_X30_Y13_N10
\inst3|Equal3~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|Equal3~1_combout\ = (!\inst3|cnt[1][4]~q\) # (!\inst3|cnt[1][5]~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011111100111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst3|cnt[1][5]~q\,
	datac => \inst3|cnt[1][4]~q\,
	combout => \inst3|Equal3~1_combout\);

-- Location: LCCOMB_X30_Y13_N12
\inst3|Equal3~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|Equal3~0_combout\ = (((!\inst3|cnt[1][2]~q\) # (!\inst3|cnt[1][0]~q\)) # (!\inst3|cnt[1][3]~q\)) # (!\inst3|cnt[1][1]~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|cnt[1][1]~q\,
	datab => \inst3|cnt[1][3]~q\,
	datac => \inst3|cnt[1][0]~q\,
	datad => \inst3|cnt[1][2]~q\,
	combout => \inst3|Equal3~0_combout\);

-- Location: LCCOMB_X30_Y13_N28
\inst3|Equal3~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|Equal3~2_combout\ = (\inst3|Equal3~1_combout\) # ((\inst3|cnt[1][7]~q\) # ((\inst3|cnt[1][6]~q\) # (\inst3|Equal3~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|Equal3~1_combout\,
	datab => \inst3|cnt[1][7]~q\,
	datac => \inst3|cnt[1][6]~q\,
	datad => \inst3|Equal3~0_combout\,
	combout => \inst3|Equal3~2_combout\);

-- Location: LCCOMB_X30_Y13_N4
\inst3|Equal3~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|Equal3~4_combout\ = (\inst3|cnt[1][13]~q\) # (((\inst3|cnt[1][15]~q\) # (\inst3|cnt[1][12]~q\)) # (!\inst3|cnt[1][14]~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|cnt[1][13]~q\,
	datab => \inst3|cnt[1][14]~q\,
	datac => \inst3|cnt[1][15]~q\,
	datad => \inst3|cnt[1][12]~q\,
	combout => \inst3|Equal3~4_combout\);

-- Location: LCCOMB_X30_Y12_N28
\inst3|Equal3~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|Equal3~10_combout\ = (\inst3|Equal3~3_combout\) # ((\inst3|Equal3~9_combout\) # ((\inst3|Equal3~2_combout\) # (\inst3|Equal3~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|Equal3~3_combout\,
	datab => \inst3|Equal3~9_combout\,
	datac => \inst3|Equal3~2_combout\,
	datad => \inst3|Equal3~4_combout\,
	combout => \inst3|Equal3~10_combout\);

-- Location: LCCOMB_X30_Y12_N10
\inst3|stable[1]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|stable[1]~0_combout\ = (\inst3|Equal3~10_combout\ & ((\inst3|stable\(1)))) # (!\inst3|Equal3~10_combout\ & (\inst3|s1\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst3|s1\(1),
	datac => \inst3|stable\(1),
	datad => \inst3|Equal3~10_combout\,
	combout => \inst3|stable[1]~0_combout\);

-- Location: FF_X30_Y12_N11
\inst3|stable[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \inst3|stable[1]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst3|stable\(1));

-- Location: LCCOMB_X30_Y12_N18
\inst10|play_d1~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst10|play_d1~0_combout\ = !\inst3|stable\(1)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst3|stable\(1),
	combout => \inst10|play_d1~0_combout\);

-- Location: FF_X30_Y12_N19
\inst10|play_d1\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \inst10|play_d1~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst10|play_d1~q\);

-- Location: LCCOMB_X30_Y12_N12
\inst10|play_d2~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst10|play_d2~feeder_combout\ = \inst10|play_d1~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst10|play_d1~q\,
	combout => \inst10|play_d2~feeder_combout\);

-- Location: FF_X30_Y12_N13
\inst10|play_d2\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \inst10|play_d2~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst10|play_d2~q\);

-- Location: LCCOMB_X30_Y12_N0
\inst10|play_rise~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst10|play_rise~0_combout\ = (!\inst10|play_d2~q\ & \inst10|play_d1~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst10|play_d2~q\,
	datad => \inst10|play_d1~q\,
	combout => \inst10|play_rise~0_combout\);

-- Location: FF_X30_Y12_N1
\inst10|play_rise\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \inst10|play_rise~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst10|play_rise~q\);

-- Location: LCCOMB_X30_Y14_N28
\inst10|run_en~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst10|run_en~0_combout\ = (!\inst10|stop_rise~q\ & (\inst10|run_en~q\ $ (\inst10|play_rise~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010101010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst10|stop_rise~q\,
	datac => \inst10|run_en~q\,
	datad => \inst10|play_rise~q\,
	combout => \inst10|run_en~0_combout\);

-- Location: FF_X30_Y14_N29
\inst10|run_en\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \inst10|run_en~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst10|run_en~q\);

-- Location: LCCOMB_X29_Y16_N0
\inst10|u_div|cnt[0]~32\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst10|u_div|cnt[0]~32_combout\ = \inst10|u_div|cnt\(0) $ (VCC)
-- \inst10|u_div|cnt[0]~33\ = CARRY(\inst10|u_div|cnt\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst10|u_div|cnt\(0),
	datad => VCC,
	combout => \inst10|u_div|cnt[0]~32_combout\,
	cout => \inst10|u_div|cnt[0]~33\);

-- Location: LCCOMB_X30_Y15_N14
\inst10|u_div|LessThan0~17\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst10|u_div|LessThan0~17_combout\ = (!\inst10|u_div|cnt\(22) & (!\inst10|u_div|cnt\(23) & (!\inst10|u_div|cnt\(24) & !\inst10|u_div|cnt\(21))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst10|u_div|cnt\(22),
	datab => \inst10|u_div|cnt\(23),
	datac => \inst10|u_div|cnt\(24),
	datad => \inst10|u_div|cnt\(21),
	combout => \inst10|u_div|LessThan0~17_combout\);

-- Location: LCCOMB_X30_Y15_N0
\inst10|u_div|LessThan0~16\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst10|u_div|LessThan0~16_combout\ = (!\inst10|u_div|cnt\(20) & (!\inst10|u_div|cnt\(19) & (!\inst10|u_div|cnt\(18) & !\inst10|u_div|cnt\(17))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst10|u_div|cnt\(20),
	datab => \inst10|u_div|cnt\(19),
	datac => \inst10|u_div|cnt\(18),
	datad => \inst10|u_div|cnt\(17),
	combout => \inst10|u_div|LessThan0~16_combout\);

-- Location: LCCOMB_X30_Y14_N16
\inst10|stop_pulse~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst10|stop_pulse~feeder_combout\ = \inst10|stop_rise~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst10|stop_rise~q\,
	combout => \inst10|stop_pulse~feeder_combout\);

-- Location: FF_X30_Y14_N17
\inst10|stop_pulse\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \inst10|stop_pulse~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst10|stop_pulse~q\);

-- Location: LCCOMB_X28_Y14_N0
\inst10|u_tmp|cnt[0]~32\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst10|u_tmp|cnt[0]~32_combout\ = \inst10|u_tmp|cnt\(0) $ (VCC)
-- \inst10|u_tmp|cnt[0]~33\ = CARRY(\inst10|u_tmp|cnt\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst10|u_tmp|cnt\(0),
	datad => VCC,
	combout => \inst10|u_tmp|cnt[0]~32_combout\,
	cout => \inst10|u_tmp|cnt[0]~33\);

-- Location: LCCOMB_X29_Y14_N30
\~GND\ : cycloneive_lcell_comb
-- Equation(s):
-- \~GND~combout\ = GND

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	combout => \~GND~combout\);

-- Location: FF_X28_Y14_N1
\inst10|u_tmp|cnt[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \inst10|u_tmp|cnt[0]~32_combout\,
	asdata => \~GND~combout\,
	sload => \inst10|u_tmp|Equal0~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst10|u_tmp|cnt\(0));

-- Location: LCCOMB_X28_Y14_N2
\inst10|u_tmp|cnt[1]~34\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst10|u_tmp|cnt[1]~34_combout\ = (\inst10|u_tmp|cnt\(1) & (\inst10|u_tmp|cnt[0]~33\ & VCC)) # (!\inst10|u_tmp|cnt\(1) & (!\inst10|u_tmp|cnt[0]~33\))
-- \inst10|u_tmp|cnt[1]~35\ = CARRY((!\inst10|u_tmp|cnt\(1) & !\inst10|u_tmp|cnt[0]~33\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst10|u_tmp|cnt\(1),
	datad => VCC,
	cin => \inst10|u_tmp|cnt[0]~33\,
	combout => \inst10|u_tmp|cnt[1]~34_combout\,
	cout => \inst10|u_tmp|cnt[1]~35\);

-- Location: FF_X28_Y14_N3
\inst10|u_tmp|cnt[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \inst10|u_tmp|cnt[1]~34_combout\,
	asdata => \~GND~combout\,
	sload => \inst10|u_tmp|Equal0~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst10|u_tmp|cnt\(1));

-- Location: LCCOMB_X28_Y14_N4
\inst10|u_tmp|cnt[2]~36\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst10|u_tmp|cnt[2]~36_combout\ = (\inst10|u_tmp|cnt\(2) & ((GND) # (!\inst10|u_tmp|cnt[1]~35\))) # (!\inst10|u_tmp|cnt\(2) & (\inst10|u_tmp|cnt[1]~35\ $ (GND)))
-- \inst10|u_tmp|cnt[2]~37\ = CARRY((\inst10|u_tmp|cnt\(2)) # (!\inst10|u_tmp|cnt[1]~35\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst10|u_tmp|cnt\(2),
	datad => VCC,
	cin => \inst10|u_tmp|cnt[1]~35\,
	combout => \inst10|u_tmp|cnt[2]~36_combout\,
	cout => \inst10|u_tmp|cnt[2]~37\);

-- Location: FF_X28_Y14_N5
\inst10|u_tmp|cnt[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \inst10|u_tmp|cnt[2]~36_combout\,
	asdata => \~GND~combout\,
	sload => \inst10|u_tmp|Equal0~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst10|u_tmp|cnt\(2));

-- Location: LCCOMB_X28_Y14_N6
\inst10|u_tmp|cnt[3]~38\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst10|u_tmp|cnt[3]~38_combout\ = (\inst10|u_tmp|cnt\(3) & (\inst10|u_tmp|cnt[2]~37\ & VCC)) # (!\inst10|u_tmp|cnt\(3) & (!\inst10|u_tmp|cnt[2]~37\))
-- \inst10|u_tmp|cnt[3]~39\ = CARRY((!\inst10|u_tmp|cnt\(3) & !\inst10|u_tmp|cnt[2]~37\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100000101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst10|u_tmp|cnt\(3),
	datad => VCC,
	cin => \inst10|u_tmp|cnt[2]~37\,
	combout => \inst10|u_tmp|cnt[3]~38_combout\,
	cout => \inst10|u_tmp|cnt[3]~39\);

-- Location: FF_X28_Y14_N7
\inst10|u_tmp|cnt[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \inst10|u_tmp|cnt[3]~38_combout\,
	asdata => \~GND~combout\,
	sload => \inst10|u_tmp|Equal0~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst10|u_tmp|cnt\(3));

-- Location: LCCOMB_X28_Y14_N8
\inst10|u_tmp|cnt[4]~40\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst10|u_tmp|cnt[4]~40_combout\ = (\inst10|u_tmp|cnt\(4) & ((GND) # (!\inst10|u_tmp|cnt[3]~39\))) # (!\inst10|u_tmp|cnt\(4) & (\inst10|u_tmp|cnt[3]~39\ $ (GND)))
-- \inst10|u_tmp|cnt[4]~41\ = CARRY((\inst10|u_tmp|cnt\(4)) # (!\inst10|u_tmp|cnt[3]~39\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst10|u_tmp|cnt\(4),
	datad => VCC,
	cin => \inst10|u_tmp|cnt[3]~39\,
	combout => \inst10|u_tmp|cnt[4]~40_combout\,
	cout => \inst10|u_tmp|cnt[4]~41\);

-- Location: FF_X28_Y14_N9
\inst10|u_tmp|cnt[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \inst10|u_tmp|cnt[4]~40_combout\,
	asdata => \~GND~combout\,
	sload => \inst10|u_tmp|Equal0~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst10|u_tmp|cnt\(4));

-- Location: LCCOMB_X28_Y14_N10
\inst10|u_tmp|cnt[5]~42\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst10|u_tmp|cnt[5]~42_combout\ = (\inst10|u_tmp|cnt\(5) & (\inst10|u_tmp|cnt[4]~41\ & VCC)) # (!\inst10|u_tmp|cnt\(5) & (!\inst10|u_tmp|cnt[4]~41\))
-- \inst10|u_tmp|cnt[5]~43\ = CARRY((!\inst10|u_tmp|cnt\(5) & !\inst10|u_tmp|cnt[4]~41\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100000101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst10|u_tmp|cnt\(5),
	datad => VCC,
	cin => \inst10|u_tmp|cnt[4]~41\,
	combout => \inst10|u_tmp|cnt[5]~42_combout\,
	cout => \inst10|u_tmp|cnt[5]~43\);

-- Location: LCCOMB_X28_Y12_N22
\inst10|u_ctrl|Disparo~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst10|u_ctrl|Disparo~feeder_combout\ = VCC

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	combout => \inst10|u_ctrl|Disparo~feeder_combout\);

-- Location: FF_X28_Y12_N23
\inst10|u_ctrl|Disparo\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \inst10|u_ctrl|Disparo~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst10|u_ctrl|Disparo~q\);

-- Location: FF_X28_Y14_N11
\inst10|u_tmp|cnt[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \inst10|u_tmp|cnt[5]~42_combout\,
	asdata => \inst10|u_ctrl|Disparo~q\,
	sload => \inst10|u_tmp|Equal0~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst10|u_tmp|cnt\(5));

-- Location: LCCOMB_X28_Y14_N12
\inst10|u_tmp|cnt[6]~44\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst10|u_tmp|cnt[6]~44_combout\ = (\inst10|u_tmp|cnt\(6) & ((GND) # (!\inst10|u_tmp|cnt[5]~43\))) # (!\inst10|u_tmp|cnt\(6) & (\inst10|u_tmp|cnt[5]~43\ $ (GND)))
-- \inst10|u_tmp|cnt[6]~45\ = CARRY((\inst10|u_tmp|cnt\(6)) # (!\inst10|u_tmp|cnt[5]~43\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101010101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst10|u_tmp|cnt\(6),
	datad => VCC,
	cin => \inst10|u_tmp|cnt[5]~43\,
	combout => \inst10|u_tmp|cnt[6]~44_combout\,
	cout => \inst10|u_tmp|cnt[6]~45\);

-- Location: FF_X28_Y14_N13
\inst10|u_tmp|cnt[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \inst10|u_tmp|cnt[6]~44_combout\,
	asdata => \~GND~combout\,
	sload => \inst10|u_tmp|Equal0~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst10|u_tmp|cnt\(6));

-- Location: LCCOMB_X28_Y14_N14
\inst10|u_tmp|cnt[7]~46\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst10|u_tmp|cnt[7]~46_combout\ = (\inst10|u_tmp|cnt\(7) & (\inst10|u_tmp|cnt[6]~45\ & VCC)) # (!\inst10|u_tmp|cnt\(7) & (!\inst10|u_tmp|cnt[6]~45\))
-- \inst10|u_tmp|cnt[7]~47\ = CARRY((!\inst10|u_tmp|cnt\(7) & !\inst10|u_tmp|cnt[6]~45\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst10|u_tmp|cnt\(7),
	datad => VCC,
	cin => \inst10|u_tmp|cnt[6]~45\,
	combout => \inst10|u_tmp|cnt[7]~46_combout\,
	cout => \inst10|u_tmp|cnt[7]~47\);

-- Location: FF_X28_Y14_N15
\inst10|u_tmp|cnt[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \inst10|u_tmp|cnt[7]~46_combout\,
	asdata => \~GND~combout\,
	sload => \inst10|u_tmp|Equal0~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst10|u_tmp|cnt\(7));

-- Location: LCCOMB_X28_Y14_N16
\inst10|u_tmp|cnt[8]~48\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst10|u_tmp|cnt[8]~48_combout\ = (\inst10|u_tmp|cnt\(8) & ((GND) # (!\inst10|u_tmp|cnt[7]~47\))) # (!\inst10|u_tmp|cnt\(8) & (\inst10|u_tmp|cnt[7]~47\ $ (GND)))
-- \inst10|u_tmp|cnt[8]~49\ = CARRY((\inst10|u_tmp|cnt\(8)) # (!\inst10|u_tmp|cnt[7]~47\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst10|u_tmp|cnt\(8),
	datad => VCC,
	cin => \inst10|u_tmp|cnt[7]~47\,
	combout => \inst10|u_tmp|cnt[8]~48_combout\,
	cout => \inst10|u_tmp|cnt[8]~49\);

-- Location: FF_X28_Y14_N17
\inst10|u_tmp|cnt[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \inst10|u_tmp|cnt[8]~48_combout\,
	asdata => \~GND~combout\,
	sload => \inst10|u_tmp|Equal0~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst10|u_tmp|cnt\(8));

-- Location: LCCOMB_X28_Y14_N18
\inst10|u_tmp|cnt[9]~50\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst10|u_tmp|cnt[9]~50_combout\ = (\inst10|u_tmp|cnt\(9) & (\inst10|u_tmp|cnt[8]~49\ & VCC)) # (!\inst10|u_tmp|cnt\(9) & (!\inst10|u_tmp|cnt[8]~49\))
-- \inst10|u_tmp|cnt[9]~51\ = CARRY((!\inst10|u_tmp|cnt\(9) & !\inst10|u_tmp|cnt[8]~49\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst10|u_tmp|cnt\(9),
	datad => VCC,
	cin => \inst10|u_tmp|cnt[8]~49\,
	combout => \inst10|u_tmp|cnt[9]~50_combout\,
	cout => \inst10|u_tmp|cnt[9]~51\);

-- Location: FF_X28_Y14_N19
\inst10|u_tmp|cnt[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \inst10|u_tmp|cnt[9]~50_combout\,
	asdata => \~GND~combout\,
	sload => \inst10|u_tmp|Equal0~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst10|u_tmp|cnt\(9));

-- Location: LCCOMB_X28_Y14_N20
\inst10|u_tmp|cnt[10]~52\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst10|u_tmp|cnt[10]~52_combout\ = (\inst10|u_tmp|cnt\(10) & ((GND) # (!\inst10|u_tmp|cnt[9]~51\))) # (!\inst10|u_tmp|cnt\(10) & (\inst10|u_tmp|cnt[9]~51\ $ (GND)))
-- \inst10|u_tmp|cnt[10]~53\ = CARRY((\inst10|u_tmp|cnt\(10)) # (!\inst10|u_tmp|cnt[9]~51\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst10|u_tmp|cnt\(10),
	datad => VCC,
	cin => \inst10|u_tmp|cnt[9]~51\,
	combout => \inst10|u_tmp|cnt[10]~52_combout\,
	cout => \inst10|u_tmp|cnt[10]~53\);

-- Location: FF_X28_Y14_N21
\inst10|u_tmp|cnt[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \inst10|u_tmp|cnt[10]~52_combout\,
	asdata => \inst10|u_ctrl|Disparo~q\,
	sload => \inst10|u_tmp|Equal0~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst10|u_tmp|cnt\(10));

-- Location: LCCOMB_X28_Y14_N22
\inst10|u_tmp|cnt[11]~54\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst10|u_tmp|cnt[11]~54_combout\ = (\inst10|u_tmp|cnt\(11) & (\inst10|u_tmp|cnt[10]~53\ & VCC)) # (!\inst10|u_tmp|cnt\(11) & (!\inst10|u_tmp|cnt[10]~53\))
-- \inst10|u_tmp|cnt[11]~55\ = CARRY((!\inst10|u_tmp|cnt\(11) & !\inst10|u_tmp|cnt[10]~53\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100000101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst10|u_tmp|cnt\(11),
	datad => VCC,
	cin => \inst10|u_tmp|cnt[10]~53\,
	combout => \inst10|u_tmp|cnt[11]~54_combout\,
	cout => \inst10|u_tmp|cnt[11]~55\);

-- Location: FF_X28_Y14_N23
\inst10|u_tmp|cnt[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \inst10|u_tmp|cnt[11]~54_combout\,
	asdata => \inst10|u_ctrl|Disparo~q\,
	sload => \inst10|u_tmp|Equal0~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst10|u_tmp|cnt\(11));

-- Location: LCCOMB_X28_Y14_N24
\inst10|u_tmp|cnt[12]~56\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst10|u_tmp|cnt[12]~56_combout\ = (\inst10|u_tmp|cnt\(12) & ((GND) # (!\inst10|u_tmp|cnt[11]~55\))) # (!\inst10|u_tmp|cnt\(12) & (\inst10|u_tmp|cnt[11]~55\ $ (GND)))
-- \inst10|u_tmp|cnt[12]~57\ = CARRY((\inst10|u_tmp|cnt\(12)) # (!\inst10|u_tmp|cnt[11]~55\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst10|u_tmp|cnt\(12),
	datad => VCC,
	cin => \inst10|u_tmp|cnt[11]~55\,
	combout => \inst10|u_tmp|cnt[12]~56_combout\,
	cout => \inst10|u_tmp|cnt[12]~57\);

-- Location: FF_X28_Y14_N25
\inst10|u_tmp|cnt[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \inst10|u_tmp|cnt[12]~56_combout\,
	asdata => \inst10|u_ctrl|Disparo~q\,
	sload => \inst10|u_tmp|Equal0~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst10|u_tmp|cnt\(12));

-- Location: LCCOMB_X28_Y14_N26
\inst10|u_tmp|cnt[13]~58\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst10|u_tmp|cnt[13]~58_combout\ = (\inst10|u_tmp|cnt\(13) & (\inst10|u_tmp|cnt[12]~57\ & VCC)) # (!\inst10|u_tmp|cnt\(13) & (!\inst10|u_tmp|cnt[12]~57\))
-- \inst10|u_tmp|cnt[13]~59\ = CARRY((!\inst10|u_tmp|cnt\(13) & !\inst10|u_tmp|cnt[12]~57\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100000101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst10|u_tmp|cnt\(13),
	datad => VCC,
	cin => \inst10|u_tmp|cnt[12]~57\,
	combout => \inst10|u_tmp|cnt[13]~58_combout\,
	cout => \inst10|u_tmp|cnt[13]~59\);

-- Location: FF_X28_Y14_N27
\inst10|u_tmp|cnt[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \inst10|u_tmp|cnt[13]~58_combout\,
	asdata => \inst10|u_ctrl|Disparo~q\,
	sload => \inst10|u_tmp|Equal0~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst10|u_tmp|cnt\(13));

-- Location: LCCOMB_X28_Y14_N28
\inst10|u_tmp|cnt[14]~60\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst10|u_tmp|cnt[14]~60_combout\ = (\inst10|u_tmp|cnt\(14) & ((GND) # (!\inst10|u_tmp|cnt[13]~59\))) # (!\inst10|u_tmp|cnt\(14) & (\inst10|u_tmp|cnt[13]~59\ $ (GND)))
-- \inst10|u_tmp|cnt[14]~61\ = CARRY((\inst10|u_tmp|cnt\(14)) # (!\inst10|u_tmp|cnt[13]~59\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst10|u_tmp|cnt\(14),
	datad => VCC,
	cin => \inst10|u_tmp|cnt[13]~59\,
	combout => \inst10|u_tmp|cnt[14]~60_combout\,
	cout => \inst10|u_tmp|cnt[14]~61\);

-- Location: FF_X28_Y14_N29
\inst10|u_tmp|cnt[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \inst10|u_tmp|cnt[14]~60_combout\,
	asdata => \~GND~combout\,
	sload => \inst10|u_tmp|Equal0~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst10|u_tmp|cnt\(14));

-- Location: LCCOMB_X28_Y14_N30
\inst10|u_tmp|cnt[15]~62\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst10|u_tmp|cnt[15]~62_combout\ = (\inst10|u_tmp|cnt\(15) & (\inst10|u_tmp|cnt[14]~61\ & VCC)) # (!\inst10|u_tmp|cnt\(15) & (!\inst10|u_tmp|cnt[14]~61\))
-- \inst10|u_tmp|cnt[15]~63\ = CARRY((!\inst10|u_tmp|cnt\(15) & !\inst10|u_tmp|cnt[14]~61\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100000101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst10|u_tmp|cnt\(15),
	datad => VCC,
	cin => \inst10|u_tmp|cnt[14]~61\,
	combout => \inst10|u_tmp|cnt[15]~62_combout\,
	cout => \inst10|u_tmp|cnt[15]~63\);

-- Location: FF_X28_Y14_N31
\inst10|u_tmp|cnt[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \inst10|u_tmp|cnt[15]~62_combout\,
	asdata => \inst10|u_ctrl|Disparo~q\,
	sload => \inst10|u_tmp|Equal0~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst10|u_tmp|cnt\(15));

-- Location: LCCOMB_X28_Y13_N0
\inst10|u_tmp|cnt[16]~64\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst10|u_tmp|cnt[16]~64_combout\ = (\inst10|u_tmp|cnt\(16) & ((GND) # (!\inst10|u_tmp|cnt[15]~63\))) # (!\inst10|u_tmp|cnt\(16) & (\inst10|u_tmp|cnt[15]~63\ $ (GND)))
-- \inst10|u_tmp|cnt[16]~65\ = CARRY((\inst10|u_tmp|cnt\(16)) # (!\inst10|u_tmp|cnt[15]~63\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst10|u_tmp|cnt\(16),
	datad => VCC,
	cin => \inst10|u_tmp|cnt[15]~63\,
	combout => \inst10|u_tmp|cnt[16]~64_combout\,
	cout => \inst10|u_tmp|cnt[16]~65\);

-- Location: FF_X28_Y13_N1
\inst10|u_tmp|cnt[16]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \inst10|u_tmp|cnt[16]~64_combout\,
	asdata => \~GND~combout\,
	sload => \inst10|u_tmp|Equal0~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst10|u_tmp|cnt\(16));

-- Location: LCCOMB_X28_Y13_N2
\inst10|u_tmp|cnt[17]~66\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst10|u_tmp|cnt[17]~66_combout\ = (\inst10|u_tmp|cnt\(17) & (\inst10|u_tmp|cnt[16]~65\ & VCC)) # (!\inst10|u_tmp|cnt\(17) & (!\inst10|u_tmp|cnt[16]~65\))
-- \inst10|u_tmp|cnt[17]~67\ = CARRY((!\inst10|u_tmp|cnt\(17) & !\inst10|u_tmp|cnt[16]~65\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst10|u_tmp|cnt\(17),
	datad => VCC,
	cin => \inst10|u_tmp|cnt[16]~65\,
	combout => \inst10|u_tmp|cnt[17]~66_combout\,
	cout => \inst10|u_tmp|cnt[17]~67\);

-- Location: FF_X28_Y13_N3
\inst10|u_tmp|cnt[17]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \inst10|u_tmp|cnt[17]~66_combout\,
	asdata => \inst10|u_ctrl|Disparo~q\,
	sload => \inst10|u_tmp|Equal0~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst10|u_tmp|cnt\(17));

-- Location: LCCOMB_X28_Y13_N4
\inst10|u_tmp|cnt[18]~68\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst10|u_tmp|cnt[18]~68_combout\ = (\inst10|u_tmp|cnt\(18) & ((GND) # (!\inst10|u_tmp|cnt[17]~67\))) # (!\inst10|u_tmp|cnt\(18) & (\inst10|u_tmp|cnt[17]~67\ $ (GND)))
-- \inst10|u_tmp|cnt[18]~69\ = CARRY((\inst10|u_tmp|cnt\(18)) # (!\inst10|u_tmp|cnt[17]~67\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst10|u_tmp|cnt\(18),
	datad => VCC,
	cin => \inst10|u_tmp|cnt[17]~67\,
	combout => \inst10|u_tmp|cnt[18]~68_combout\,
	cout => \inst10|u_tmp|cnt[18]~69\);

-- Location: FF_X28_Y13_N5
\inst10|u_tmp|cnt[18]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \inst10|u_tmp|cnt[18]~68_combout\,
	asdata => \inst10|u_ctrl|Disparo~q\,
	sload => \inst10|u_tmp|Equal0~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst10|u_tmp|cnt\(18));

-- Location: LCCOMB_X28_Y13_N6
\inst10|u_tmp|cnt[19]~70\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst10|u_tmp|cnt[19]~70_combout\ = (\inst10|u_tmp|cnt\(19) & (\inst10|u_tmp|cnt[18]~69\ & VCC)) # (!\inst10|u_tmp|cnt\(19) & (!\inst10|u_tmp|cnt[18]~69\))
-- \inst10|u_tmp|cnt[19]~71\ = CARRY((!\inst10|u_tmp|cnt\(19) & !\inst10|u_tmp|cnt[18]~69\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100000101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst10|u_tmp|cnt\(19),
	datad => VCC,
	cin => \inst10|u_tmp|cnt[18]~69\,
	combout => \inst10|u_tmp|cnt[19]~70_combout\,
	cout => \inst10|u_tmp|cnt[19]~71\);

-- Location: FF_X28_Y13_N7
\inst10|u_tmp|cnt[19]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \inst10|u_tmp|cnt[19]~70_combout\,
	asdata => \inst10|u_ctrl|Disparo~q\,
	sload => \inst10|u_tmp|Equal0~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst10|u_tmp|cnt\(19));

-- Location: LCCOMB_X28_Y13_N8
\inst10|u_tmp|cnt[20]~72\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst10|u_tmp|cnt[20]~72_combout\ = (\inst10|u_tmp|cnt\(20) & ((GND) # (!\inst10|u_tmp|cnt[19]~71\))) # (!\inst10|u_tmp|cnt\(20) & (\inst10|u_tmp|cnt[19]~71\ $ (GND)))
-- \inst10|u_tmp|cnt[20]~73\ = CARRY((\inst10|u_tmp|cnt\(20)) # (!\inst10|u_tmp|cnt[19]~71\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst10|u_tmp|cnt\(20),
	datad => VCC,
	cin => \inst10|u_tmp|cnt[19]~71\,
	combout => \inst10|u_tmp|cnt[20]~72_combout\,
	cout => \inst10|u_tmp|cnt[20]~73\);

-- Location: FF_X28_Y13_N9
\inst10|u_tmp|cnt[20]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \inst10|u_tmp|cnt[20]~72_combout\,
	asdata => \inst10|u_ctrl|Disparo~q\,
	sload => \inst10|u_tmp|Equal0~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst10|u_tmp|cnt\(20));

-- Location: LCCOMB_X28_Y13_N10
\inst10|u_tmp|cnt[21]~74\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst10|u_tmp|cnt[21]~74_combout\ = (\inst10|u_tmp|cnt\(21) & (\inst10|u_tmp|cnt[20]~73\ & VCC)) # (!\inst10|u_tmp|cnt\(21) & (!\inst10|u_tmp|cnt[20]~73\))
-- \inst10|u_tmp|cnt[21]~75\ = CARRY((!\inst10|u_tmp|cnt\(21) & !\inst10|u_tmp|cnt[20]~73\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100000101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst10|u_tmp|cnt\(21),
	datad => VCC,
	cin => \inst10|u_tmp|cnt[20]~73\,
	combout => \inst10|u_tmp|cnt[21]~74_combout\,
	cout => \inst10|u_tmp|cnt[21]~75\);

-- Location: FF_X28_Y13_N11
\inst10|u_tmp|cnt[21]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \inst10|u_tmp|cnt[21]~74_combout\,
	asdata => \inst10|u_ctrl|Disparo~q\,
	sload => \inst10|u_tmp|Equal0~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst10|u_tmp|cnt\(21));

-- Location: LCCOMB_X28_Y13_N12
\inst10|u_tmp|cnt[22]~76\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst10|u_tmp|cnt[22]~76_combout\ = (\inst10|u_tmp|cnt\(22) & ((GND) # (!\inst10|u_tmp|cnt[21]~75\))) # (!\inst10|u_tmp|cnt\(22) & (\inst10|u_tmp|cnt[21]~75\ $ (GND)))
-- \inst10|u_tmp|cnt[22]~77\ = CARRY((\inst10|u_tmp|cnt\(22)) # (!\inst10|u_tmp|cnt[21]~75\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101010101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst10|u_tmp|cnt\(22),
	datad => VCC,
	cin => \inst10|u_tmp|cnt[21]~75\,
	combout => \inst10|u_tmp|cnt[22]~76_combout\,
	cout => \inst10|u_tmp|cnt[22]~77\);

-- Location: FF_X28_Y13_N13
\inst10|u_tmp|cnt[22]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \inst10|u_tmp|cnt[22]~76_combout\,
	asdata => \~GND~combout\,
	sload => \inst10|u_tmp|Equal0~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst10|u_tmp|cnt\(22));

-- Location: LCCOMB_X28_Y13_N14
\inst10|u_tmp|cnt[23]~78\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst10|u_tmp|cnt[23]~78_combout\ = (\inst10|u_tmp|cnt\(23) & (\inst10|u_tmp|cnt[22]~77\ & VCC)) # (!\inst10|u_tmp|cnt\(23) & (!\inst10|u_tmp|cnt[22]~77\))
-- \inst10|u_tmp|cnt[23]~79\ = CARRY((!\inst10|u_tmp|cnt\(23) & !\inst10|u_tmp|cnt[22]~77\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst10|u_tmp|cnt\(23),
	datad => VCC,
	cin => \inst10|u_tmp|cnt[22]~77\,
	combout => \inst10|u_tmp|cnt[23]~78_combout\,
	cout => \inst10|u_tmp|cnt[23]~79\);

-- Location: FF_X28_Y13_N15
\inst10|u_tmp|cnt[23]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \inst10|u_tmp|cnt[23]~78_combout\,
	asdata => \inst10|u_ctrl|Disparo~q\,
	sload => \inst10|u_tmp|Equal0~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst10|u_tmp|cnt\(23));

-- Location: LCCOMB_X28_Y13_N16
\inst10|u_tmp|cnt[24]~80\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst10|u_tmp|cnt[24]~80_combout\ = (\inst10|u_tmp|cnt\(24) & ((GND) # (!\inst10|u_tmp|cnt[23]~79\))) # (!\inst10|u_tmp|cnt\(24) & (\inst10|u_tmp|cnt[23]~79\ $ (GND)))
-- \inst10|u_tmp|cnt[24]~81\ = CARRY((\inst10|u_tmp|cnt\(24)) # (!\inst10|u_tmp|cnt[23]~79\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst10|u_tmp|cnt\(24),
	datad => VCC,
	cin => \inst10|u_tmp|cnt[23]~79\,
	combout => \inst10|u_tmp|cnt[24]~80_combout\,
	cout => \inst10|u_tmp|cnt[24]~81\);

-- Location: FF_X28_Y13_N17
\inst10|u_tmp|cnt[24]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \inst10|u_tmp|cnt[24]~80_combout\,
	asdata => \~GND~combout\,
	sload => \inst10|u_tmp|Equal0~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst10|u_tmp|cnt\(24));

-- Location: LCCOMB_X28_Y13_N18
\inst10|u_tmp|cnt[25]~82\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst10|u_tmp|cnt[25]~82_combout\ = (\inst10|u_tmp|cnt\(25) & (\inst10|u_tmp|cnt[24]~81\ & VCC)) # (!\inst10|u_tmp|cnt\(25) & (!\inst10|u_tmp|cnt[24]~81\))
-- \inst10|u_tmp|cnt[25]~83\ = CARRY((!\inst10|u_tmp|cnt\(25) & !\inst10|u_tmp|cnt[24]~81\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst10|u_tmp|cnt\(25),
	datad => VCC,
	cin => \inst10|u_tmp|cnt[24]~81\,
	combout => \inst10|u_tmp|cnt[25]~82_combout\,
	cout => \inst10|u_tmp|cnt[25]~83\);

-- Location: FF_X28_Y13_N19
\inst10|u_tmp|cnt[25]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \inst10|u_tmp|cnt[25]~82_combout\,
	asdata => \~GND~combout\,
	sload => \inst10|u_tmp|Equal0~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst10|u_tmp|cnt\(25));

-- Location: LCCOMB_X28_Y13_N20
\inst10|u_tmp|cnt[26]~84\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst10|u_tmp|cnt[26]~84_combout\ = (\inst10|u_tmp|cnt\(26) & ((GND) # (!\inst10|u_tmp|cnt[25]~83\))) # (!\inst10|u_tmp|cnt\(26) & (\inst10|u_tmp|cnt[25]~83\ $ (GND)))
-- \inst10|u_tmp|cnt[26]~85\ = CARRY((\inst10|u_tmp|cnt\(26)) # (!\inst10|u_tmp|cnt[25]~83\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst10|u_tmp|cnt\(26),
	datad => VCC,
	cin => \inst10|u_tmp|cnt[25]~83\,
	combout => \inst10|u_tmp|cnt[26]~84_combout\,
	cout => \inst10|u_tmp|cnt[26]~85\);

-- Location: FF_X28_Y13_N21
\inst10|u_tmp|cnt[26]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \inst10|u_tmp|cnt[26]~84_combout\,
	asdata => \~GND~combout\,
	sload => \inst10|u_tmp|Equal0~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst10|u_tmp|cnt\(26));

-- Location: LCCOMB_X28_Y13_N22
\inst10|u_tmp|cnt[27]~86\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst10|u_tmp|cnt[27]~86_combout\ = (\inst10|u_tmp|cnt\(27) & (\inst10|u_tmp|cnt[26]~85\ & VCC)) # (!\inst10|u_tmp|cnt\(27) & (!\inst10|u_tmp|cnt[26]~85\))
-- \inst10|u_tmp|cnt[27]~87\ = CARRY((!\inst10|u_tmp|cnt\(27) & !\inst10|u_tmp|cnt[26]~85\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100000101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst10|u_tmp|cnt\(27),
	datad => VCC,
	cin => \inst10|u_tmp|cnt[26]~85\,
	combout => \inst10|u_tmp|cnt[27]~86_combout\,
	cout => \inst10|u_tmp|cnt[27]~87\);

-- Location: FF_X28_Y13_N23
\inst10|u_tmp|cnt[27]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \inst10|u_tmp|cnt[27]~86_combout\,
	asdata => \~GND~combout\,
	sload => \inst10|u_tmp|Equal0~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst10|u_tmp|cnt\(27));

-- Location: LCCOMB_X28_Y13_N24
\inst10|u_tmp|cnt[28]~88\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst10|u_tmp|cnt[28]~88_combout\ = (\inst10|u_tmp|cnt\(28) & ((GND) # (!\inst10|u_tmp|cnt[27]~87\))) # (!\inst10|u_tmp|cnt\(28) & (\inst10|u_tmp|cnt[27]~87\ $ (GND)))
-- \inst10|u_tmp|cnt[28]~89\ = CARRY((\inst10|u_tmp|cnt\(28)) # (!\inst10|u_tmp|cnt[27]~87\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst10|u_tmp|cnt\(28),
	datad => VCC,
	cin => \inst10|u_tmp|cnt[27]~87\,
	combout => \inst10|u_tmp|cnt[28]~88_combout\,
	cout => \inst10|u_tmp|cnt[28]~89\);

-- Location: FF_X28_Y13_N25
\inst10|u_tmp|cnt[28]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \inst10|u_tmp|cnt[28]~88_combout\,
	asdata => \~GND~combout\,
	sload => \inst10|u_tmp|Equal0~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst10|u_tmp|cnt\(28));

-- Location: LCCOMB_X28_Y13_N26
\inst10|u_tmp|cnt[29]~90\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst10|u_tmp|cnt[29]~90_combout\ = (\inst10|u_tmp|cnt\(29) & (\inst10|u_tmp|cnt[28]~89\ & VCC)) # (!\inst10|u_tmp|cnt\(29) & (!\inst10|u_tmp|cnt[28]~89\))
-- \inst10|u_tmp|cnt[29]~91\ = CARRY((!\inst10|u_tmp|cnt\(29) & !\inst10|u_tmp|cnt[28]~89\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100000101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst10|u_tmp|cnt\(29),
	datad => VCC,
	cin => \inst10|u_tmp|cnt[28]~89\,
	combout => \inst10|u_tmp|cnt[29]~90_combout\,
	cout => \inst10|u_tmp|cnt[29]~91\);

-- Location: FF_X28_Y13_N27
\inst10|u_tmp|cnt[29]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \inst10|u_tmp|cnt[29]~90_combout\,
	asdata => \~GND~combout\,
	sload => \inst10|u_tmp|Equal0~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst10|u_tmp|cnt\(29));

-- Location: LCCOMB_X28_Y13_N28
\inst10|u_tmp|cnt[30]~92\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst10|u_tmp|cnt[30]~92_combout\ = (\inst10|u_tmp|cnt\(30) & ((GND) # (!\inst10|u_tmp|cnt[29]~91\))) # (!\inst10|u_tmp|cnt\(30) & (\inst10|u_tmp|cnt[29]~91\ $ (GND)))
-- \inst10|u_tmp|cnt[30]~93\ = CARRY((\inst10|u_tmp|cnt\(30)) # (!\inst10|u_tmp|cnt[29]~91\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst10|u_tmp|cnt\(30),
	datad => VCC,
	cin => \inst10|u_tmp|cnt[29]~91\,
	combout => \inst10|u_tmp|cnt[30]~92_combout\,
	cout => \inst10|u_tmp|cnt[30]~93\);

-- Location: FF_X28_Y13_N29
\inst10|u_tmp|cnt[30]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \inst10|u_tmp|cnt[30]~92_combout\,
	asdata => \~GND~combout\,
	sload => \inst10|u_tmp|Equal0~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst10|u_tmp|cnt\(30));

-- Location: LCCOMB_X28_Y13_N30
\inst10|u_tmp|cnt[31]~94\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst10|u_tmp|cnt[31]~94_combout\ = \inst10|u_tmp|cnt\(31) $ (!\inst10|u_tmp|cnt[30]~93\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010110100101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst10|u_tmp|cnt\(31),
	cin => \inst10|u_tmp|cnt[30]~93\,
	combout => \inst10|u_tmp|cnt[31]~94_combout\);

-- Location: FF_X28_Y13_N31
\inst10|u_tmp|cnt[31]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \inst10|u_tmp|cnt[31]~94_combout\,
	asdata => \~GND~combout\,
	sload => \inst10|u_tmp|Equal0~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst10|u_tmp|cnt\(31));

-- Location: LCCOMB_X29_Y13_N12
\inst10|u_tmp|Equal0~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst10|u_tmp|Equal0~9_combout\ = (!\inst10|u_tmp|cnt\(30) & (!\inst10|u_tmp|cnt\(31) & (!\inst10|u_tmp|cnt\(29) & !\inst10|u_tmp|cnt\(28))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst10|u_tmp|cnt\(30),
	datab => \inst10|u_tmp|cnt\(31),
	datac => \inst10|u_tmp|cnt\(29),
	datad => \inst10|u_tmp|cnt\(28),
	combout => \inst10|u_tmp|Equal0~9_combout\);

-- Location: LCCOMB_X29_Y13_N18
\inst10|u_tmp|Equal0~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst10|u_tmp|Equal0~8_combout\ = (!\inst10|u_tmp|cnt\(27) & (!\inst10|u_tmp|cnt\(26) & (!\inst10|u_tmp|cnt\(24) & !\inst10|u_tmp|cnt\(25))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst10|u_tmp|cnt\(27),
	datab => \inst10|u_tmp|cnt\(26),
	datac => \inst10|u_tmp|cnt\(24),
	datad => \inst10|u_tmp|cnt\(25),
	combout => \inst10|u_tmp|Equal0~8_combout\);

-- Location: LCCOMB_X29_Y13_N28
\inst10|u_tmp|Equal0~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst10|u_tmp|Equal0~5_combout\ = (!\inst10|u_tmp|cnt\(16) & (!\inst10|u_tmp|cnt\(18) & (!\inst10|u_tmp|cnt\(19) & !\inst10|u_tmp|cnt\(17))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst10|u_tmp|cnt\(16),
	datab => \inst10|u_tmp|cnt\(18),
	datac => \inst10|u_tmp|cnt\(19),
	datad => \inst10|u_tmp|cnt\(17),
	combout => \inst10|u_tmp|Equal0~5_combout\);

-- Location: LCCOMB_X29_Y13_N22
\inst10|u_tmp|Equal0~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst10|u_tmp|Equal0~6_combout\ = (!\inst10|u_tmp|cnt\(21) & !\inst10|u_tmp|cnt\(20))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst10|u_tmp|cnt\(21),
	datad => \inst10|u_tmp|cnt\(20),
	combout => \inst10|u_tmp|Equal0~6_combout\);

-- Location: LCCOMB_X29_Y13_N8
\inst10|u_tmp|Equal0~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst10|u_tmp|Equal0~7_combout\ = (!\inst10|u_tmp|cnt\(23) & (\inst10|u_tmp|Equal0~5_combout\ & (\inst10|u_tmp|Equal0~6_combout\ & !\inst10|u_tmp|cnt\(22))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst10|u_tmp|cnt\(23),
	datab => \inst10|u_tmp|Equal0~5_combout\,
	datac => \inst10|u_tmp|Equal0~6_combout\,
	datad => \inst10|u_tmp|cnt\(22),
	combout => \inst10|u_tmp|Equal0~7_combout\);

-- Location: LCCOMB_X29_Y14_N10
\inst10|u_tmp|Equal0~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst10|u_tmp|Equal0~1_combout\ = (!\inst10|u_tmp|cnt\(5) & (!\inst10|u_tmp|cnt\(7) & (!\inst10|u_tmp|cnt\(6) & !\inst10|u_tmp|cnt\(4))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst10|u_tmp|cnt\(5),
	datab => \inst10|u_tmp|cnt\(7),
	datac => \inst10|u_tmp|cnt\(6),
	datad => \inst10|u_tmp|cnt\(4),
	combout => \inst10|u_tmp|Equal0~1_combout\);

-- Location: LCCOMB_X29_Y14_N28
\inst10|u_tmp|Equal0~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst10|u_tmp|Equal0~2_combout\ = (!\inst10|u_tmp|cnt\(11) & (!\inst10|u_tmp|cnt\(9) & (!\inst10|u_tmp|cnt\(8) & !\inst10|u_tmp|cnt\(10))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst10|u_tmp|cnt\(11),
	datab => \inst10|u_tmp|cnt\(9),
	datac => \inst10|u_tmp|cnt\(8),
	datad => \inst10|u_tmp|cnt\(10),
	combout => \inst10|u_tmp|Equal0~2_combout\);

-- Location: LCCOMB_X29_Y14_N8
\inst10|u_tmp|Equal0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst10|u_tmp|Equal0~0_combout\ = (!\inst10|u_tmp|cnt\(0) & (!\inst10|u_tmp|cnt\(2) & (!\inst10|u_tmp|cnt\(3) & !\inst10|u_tmp|cnt\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst10|u_tmp|cnt\(0),
	datab => \inst10|u_tmp|cnt\(2),
	datac => \inst10|u_tmp|cnt\(3),
	datad => \inst10|u_tmp|cnt\(1),
	combout => \inst10|u_tmp|Equal0~0_combout\);

-- Location: LCCOMB_X29_Y14_N18
\inst10|u_tmp|Equal0~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst10|u_tmp|Equal0~3_combout\ = (!\inst10|u_tmp|cnt\(15) & (!\inst10|u_tmp|cnt\(14) & (!\inst10|u_tmp|cnt\(13) & !\inst10|u_tmp|cnt\(12))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst10|u_tmp|cnt\(15),
	datab => \inst10|u_tmp|cnt\(14),
	datac => \inst10|u_tmp|cnt\(13),
	datad => \inst10|u_tmp|cnt\(12),
	combout => \inst10|u_tmp|Equal0~3_combout\);

-- Location: LCCOMB_X29_Y14_N12
\inst10|u_tmp|Equal0~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst10|u_tmp|Equal0~4_combout\ = (\inst10|u_tmp|Equal0~1_combout\ & (\inst10|u_tmp|Equal0~2_combout\ & (\inst10|u_tmp|Equal0~0_combout\ & \inst10|u_tmp|Equal0~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst10|u_tmp|Equal0~1_combout\,
	datab => \inst10|u_tmp|Equal0~2_combout\,
	datac => \inst10|u_tmp|Equal0~0_combout\,
	datad => \inst10|u_tmp|Equal0~3_combout\,
	combout => \inst10|u_tmp|Equal0~4_combout\);

-- Location: LCCOMB_X29_Y13_N6
\inst10|u_tmp|Equal0~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst10|u_tmp|Equal0~10_combout\ = (\inst10|u_tmp|Equal0~9_combout\ & (\inst10|u_tmp|Equal0~8_combout\ & (\inst10|u_tmp|Equal0~7_combout\ & \inst10|u_tmp|Equal0~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst10|u_tmp|Equal0~9_combout\,
	datab => \inst10|u_tmp|Equal0~8_combout\,
	datac => \inst10|u_tmp|Equal0~7_combout\,
	datad => \inst10|u_tmp|Equal0~4_combout\,
	combout => \inst10|u_tmp|Equal0~10_combout\);

-- Location: LCCOMB_X30_Y14_N24
\inst10|u_ctrl|Selector26~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst10|u_ctrl|Selector26~0_combout\ = (!\inst10|stop_pulse~q\ & \inst10|u_ctrl|estado_atual.s25~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst10|stop_pulse~q\,
	datac => \inst10|u_ctrl|estado_atual.s25~q\,
	combout => \inst10|u_ctrl|Selector26~0_combout\);

-- Location: LCCOMB_X31_Y14_N10
\inst10|u_ctrl|Selector2~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst10|u_ctrl|Selector2~0_combout\ = (\inst10|stop_pulse~q\) # ((\inst10|run_en~q\ & \inst10|u_tmp|Equal0~10_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101011101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst10|stop_pulse~q\,
	datab => \inst10|run_en~q\,
	datac => \inst10|u_tmp|Equal0~10_combout\,
	combout => \inst10|u_ctrl|Selector2~0_combout\);

-- Location: FF_X30_Y14_N25
\inst10|u_ctrl|estado_atual.s26\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \inst10|u_ctrl|Selector26~0_combout\,
	ena => \inst10|u_ctrl|Selector2~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst10|u_ctrl|estado_atual.s26~q\);

-- Location: LCCOMB_X30_Y14_N18
\inst10|u_ctrl|Selector27~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst10|u_ctrl|Selector27~0_combout\ = (!\inst10|stop_pulse~q\ & \inst10|u_ctrl|estado_atual.s26~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst10|stop_pulse~q\,
	datad => \inst10|u_ctrl|estado_atual.s26~q\,
	combout => \inst10|u_ctrl|Selector27~0_combout\);

-- Location: FF_X30_Y14_N19
\inst10|u_ctrl|estado_atual.s27\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \inst10|u_ctrl|Selector27~0_combout\,
	ena => \inst10|u_ctrl|Selector2~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst10|u_ctrl|estado_atual.s27~q\);

-- Location: LCCOMB_X30_Y14_N6
\inst10|u_ctrl|Selector28~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst10|u_ctrl|Selector28~0_combout\ = (\inst10|u_ctrl|estado_atual.s27~q\ & !\inst10|stop_pulse~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst10|u_ctrl|estado_atual.s27~q\,
	datad => \inst10|stop_pulse~q\,
	combout => \inst10|u_ctrl|Selector28~0_combout\);

-- Location: FF_X30_Y14_N7
\inst10|u_ctrl|estado_atual.s28\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \inst10|u_ctrl|Selector28~0_combout\,
	ena => \inst10|u_ctrl|Selector2~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst10|u_ctrl|estado_atual.s28~q\);

-- Location: LCCOMB_X30_Y17_N18
\inst10|u_ctrl|Selector29~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst10|u_ctrl|Selector29~0_combout\ = (!\inst10|stop_pulse~q\ & \inst10|u_ctrl|estado_atual.s28~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst10|stop_pulse~q\,
	datac => \inst10|u_ctrl|estado_atual.s28~q\,
	combout => \inst10|u_ctrl|Selector29~0_combout\);

-- Location: FF_X30_Y17_N19
\inst10|u_ctrl|estado_atual.s29\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \inst10|u_ctrl|Selector29~0_combout\,
	ena => \inst10|u_ctrl|Selector2~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst10|u_ctrl|estado_atual.s29~q\);

-- Location: LCCOMB_X30_Y14_N10
\inst10|u_ctrl|Selector30~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst10|u_ctrl|Selector30~0_combout\ = (\inst10|u_tmp|Equal0~10_combout\ & (((\inst10|run_en~q\ & \inst10|u_ctrl|estado_atual.s29~q\)))) # (!\inst10|u_tmp|Equal0~10_combout\ & (\inst10|u_ctrl|estado_atual.s30~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100101000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst10|u_ctrl|estado_atual.s30~q\,
	datab => \inst10|run_en~q\,
	datac => \inst10|u_tmp|Equal0~10_combout\,
	datad => \inst10|u_ctrl|estado_atual.s29~q\,
	combout => \inst10|u_ctrl|Selector30~0_combout\);

-- Location: LCCOMB_X30_Y14_N12
\inst10|u_ctrl|Selector30~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst10|u_ctrl|Selector30~1_combout\ = (!\inst10|stop_pulse~q\ & \inst10|u_ctrl|Selector30~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst10|stop_pulse~q\,
	datad => \inst10|u_ctrl|Selector30~0_combout\,
	combout => \inst10|u_ctrl|Selector30~1_combout\);

-- Location: FF_X30_Y14_N13
\inst10|u_ctrl|estado_atual.s30\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \inst10|u_ctrl|Selector30~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst10|u_ctrl|estado_atual.s30~q\);

-- Location: LCCOMB_X31_Y14_N20
\inst10|u_ctrl|armed~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst10|u_ctrl|armed~0_combout\ = (\inst10|stop_pulse~q\) # (!\inst10|run_en~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001111110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst10|run_en~q\,
	datac => \inst10|stop_pulse~q\,
	combout => \inst10|u_ctrl|armed~0_combout\);

-- Location: LCCOMB_X31_Y14_N22
\inst10|u_ctrl|Selector0~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst10|u_ctrl|Selector0~1_combout\ = (!\inst10|u_ctrl|armed~q\ & (\inst10|run_en~q\ & (\inst10|u_tmp|Equal0~10_combout\ & !\inst10|u_ctrl|enable~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst10|u_ctrl|armed~q\,
	datab => \inst10|run_en~q\,
	datac => \inst10|u_tmp|Equal0~10_combout\,
	datad => \inst10|u_ctrl|enable~q\,
	combout => \inst10|u_ctrl|Selector0~1_combout\);

-- Location: LCCOMB_X31_Y14_N28
\inst10|u_ctrl|Selector0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst10|u_ctrl|Selector0~0_combout\ = (\inst10|stop_pulse~q\) # ((\inst10|u_ctrl|estado_atual.s30~q\ & \inst10|u_tmp|Equal0~10_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100011111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst10|u_ctrl|estado_atual.s30~q\,
	datab => \inst10|u_tmp|Equal0~10_combout\,
	datac => \inst10|stop_pulse~q\,
	combout => \inst10|u_ctrl|Selector0~0_combout\);

-- Location: LCCOMB_X31_Y14_N2
\inst10|u_ctrl|Selector0~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst10|u_ctrl|Selector0~2_combout\ = (!\inst10|u_ctrl|Selector0~0_combout\ & ((\inst10|u_ctrl|Selector0~1_combout\) # (\inst10|u_ctrl|estado_atual.s0~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst10|u_ctrl|Selector0~1_combout\,
	datac => \inst10|u_ctrl|estado_atual.s0~q\,
	datad => \inst10|u_ctrl|Selector0~0_combout\,
	combout => \inst10|u_ctrl|Selector0~2_combout\);

-- Location: FF_X31_Y14_N3
\inst10|u_ctrl|estado_atual.s0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \inst10|u_ctrl|Selector0~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst10|u_ctrl|estado_atual.s0~q\);

-- Location: LCCOMB_X31_Y14_N26
\inst10|u_ctrl|armed~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst10|u_ctrl|armed~1_combout\ = (!\inst10|u_ctrl|armed~0_combout\ & ((\inst10|u_ctrl|armed~q\) # ((\inst10|u_tmp|Equal0~10_combout\ & !\inst10|u_ctrl|estado_atual.s0~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000001010100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst10|u_ctrl|armed~0_combout\,
	datab => \inst10|u_tmp|Equal0~10_combout\,
	datac => \inst10|u_ctrl|armed~q\,
	datad => \inst10|u_ctrl|estado_atual.s0~q\,
	combout => \inst10|u_ctrl|armed~1_combout\);

-- Location: FF_X31_Y14_N27
\inst10|u_ctrl|armed\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \inst10|u_ctrl|armed~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst10|u_ctrl|armed~q\);

-- Location: LCCOMB_X31_Y14_N24
\inst10|u_ctrl|process_0~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst10|u_ctrl|process_0~2_combout\ = (!\inst10|u_ctrl|armed~q\ & (\inst10|run_en~q\ & (\inst10|u_tmp|Equal0~10_combout\ & !\inst10|u_ctrl|estado_atual.s0~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst10|u_ctrl|armed~q\,
	datab => \inst10|run_en~q\,
	datac => \inst10|u_tmp|Equal0~10_combout\,
	datad => \inst10|u_ctrl|estado_atual.s0~q\,
	combout => \inst10|u_ctrl|process_0~2_combout\);

-- Location: LCCOMB_X31_Y14_N12
\inst10|u_ctrl|enable~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst10|u_ctrl|enable~0_combout\ = (\inst10|u_ctrl|process_0~2_combout\) # ((\inst10|u_ctrl|enable~q\ & ((!\inst10|u_tmp|Equal0~10_combout\) # (!\inst10|u_ctrl|estado_atual.s30~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111101110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst10|u_ctrl|estado_atual.s30~q\,
	datab => \inst10|u_tmp|Equal0~10_combout\,
	datac => \inst10|u_ctrl|enable~q\,
	datad => \inst10|u_ctrl|process_0~2_combout\,
	combout => \inst10|u_ctrl|enable~0_combout\);

-- Location: FF_X31_Y14_N13
\inst10|u_ctrl|enable\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \inst10|u_ctrl|enable~0_combout\,
	sclr => \inst10|stop_pulse~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst10|u_ctrl|enable~q\);

-- Location: LCCOMB_X31_Y14_N0
\inst10|u_ctrl|Selector1~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst10|u_ctrl|Selector1~0_combout\ = (\inst10|u_ctrl|estado_atual.s1~q\ & ((!\inst10|u_tmp|Equal0~10_combout\) # (!\inst10|run_en~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst10|run_en~q\,
	datac => \inst10|u_tmp|Equal0~10_combout\,
	datad => \inst10|u_ctrl|estado_atual.s1~q\,
	combout => \inst10|u_ctrl|Selector1~0_combout\);

-- Location: LCCOMB_X31_Y14_N16
\inst10|u_ctrl|Selector1~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst10|u_ctrl|Selector1~1_combout\ = (!\inst10|stop_pulse~q\ & ((\inst10|u_ctrl|Selector1~0_combout\) # ((!\inst10|u_ctrl|enable~q\ & \inst10|u_ctrl|process_0~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst10|u_ctrl|enable~q\,
	datab => \inst10|u_ctrl|process_0~2_combout\,
	datac => \inst10|stop_pulse~q\,
	datad => \inst10|u_ctrl|Selector1~0_combout\,
	combout => \inst10|u_ctrl|Selector1~1_combout\);

-- Location: FF_X31_Y14_N17
\inst10|u_ctrl|estado_atual.s1\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \inst10|u_ctrl|Selector1~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst10|u_ctrl|estado_atual.s1~q\);

-- Location: LCCOMB_X31_Y17_N20
\inst10|u_ctrl|Selector2~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst10|u_ctrl|Selector2~1_combout\ = (!\inst10|stop_pulse~q\ & \inst10|u_ctrl|estado_atual.s1~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst10|stop_pulse~q\,
	datad => \inst10|u_ctrl|estado_atual.s1~q\,
	combout => \inst10|u_ctrl|Selector2~1_combout\);

-- Location: FF_X31_Y17_N21
\inst10|u_ctrl|estado_atual.s2\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \inst10|u_ctrl|Selector2~1_combout\,
	ena => \inst10|u_ctrl|Selector2~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst10|u_ctrl|estado_atual.s2~q\);

-- Location: LCCOMB_X31_Y17_N16
\inst10|u_ctrl|Selector3~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst10|u_ctrl|Selector3~0_combout\ = (!\inst10|stop_pulse~q\ & \inst10|u_ctrl|estado_atual.s2~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst10|stop_pulse~q\,
	datad => \inst10|u_ctrl|estado_atual.s2~q\,
	combout => \inst10|u_ctrl|Selector3~0_combout\);

-- Location: FF_X31_Y17_N17
\inst10|u_ctrl|estado_atual.s3\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \inst10|u_ctrl|Selector3~0_combout\,
	ena => \inst10|u_ctrl|Selector2~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst10|u_ctrl|estado_atual.s3~q\);

-- Location: LCCOMB_X31_Y17_N24
\inst10|u_ctrl|Selector4~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst10|u_ctrl|Selector4~0_combout\ = (!\inst10|stop_pulse~q\ & \inst10|u_ctrl|estado_atual.s3~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst10|stop_pulse~q\,
	datad => \inst10|u_ctrl|estado_atual.s3~q\,
	combout => \inst10|u_ctrl|Selector4~0_combout\);

-- Location: FF_X31_Y17_N25
\inst10|u_ctrl|estado_atual.s4\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \inst10|u_ctrl|Selector4~0_combout\,
	ena => \inst10|u_ctrl|Selector2~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst10|u_ctrl|estado_atual.s4~q\);

-- Location: LCCOMB_X31_Y17_N26
\inst10|u_ctrl|Selector5~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst10|u_ctrl|Selector5~0_combout\ = (!\inst10|stop_pulse~q\ & \inst10|u_ctrl|estado_atual.s4~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst10|stop_pulse~q\,
	datad => \inst10|u_ctrl|estado_atual.s4~q\,
	combout => \inst10|u_ctrl|Selector5~0_combout\);

-- Location: FF_X31_Y17_N27
\inst10|u_ctrl|estado_atual.s5\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \inst10|u_ctrl|Selector5~0_combout\,
	ena => \inst10|u_ctrl|Selector2~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst10|u_ctrl|estado_atual.s5~q\);

-- Location: LCCOMB_X31_Y17_N18
\inst10|u_ctrl|Selector6~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst10|u_ctrl|Selector6~0_combout\ = (\inst10|u_ctrl|estado_atual.s5~q\ & !\inst10|stop_pulse~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst10|u_ctrl|estado_atual.s5~q\,
	datac => \inst10|stop_pulse~q\,
	combout => \inst10|u_ctrl|Selector6~0_combout\);

-- Location: FF_X31_Y17_N19
\inst10|u_ctrl|estado_atual.s6\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \inst10|u_ctrl|Selector6~0_combout\,
	ena => \inst10|u_ctrl|Selector2~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst10|u_ctrl|estado_atual.s6~q\);

-- Location: LCCOMB_X31_Y17_N2
\inst10|u_ctrl|Selector7~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst10|u_ctrl|Selector7~0_combout\ = (!\inst10|stop_pulse~q\ & \inst10|u_ctrl|estado_atual.s6~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst10|stop_pulse~q\,
	datad => \inst10|u_ctrl|estado_atual.s6~q\,
	combout => \inst10|u_ctrl|Selector7~0_combout\);

-- Location: FF_X31_Y17_N3
\inst10|u_ctrl|estado_atual.s7\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \inst10|u_ctrl|Selector7~0_combout\,
	ena => \inst10|u_ctrl|Selector2~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst10|u_ctrl|estado_atual.s7~q\);

-- Location: LCCOMB_X31_Y17_N8
\inst10|u_ctrl|Selector8~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst10|u_ctrl|Selector8~0_combout\ = (!\inst10|stop_pulse~q\ & \inst10|u_ctrl|estado_atual.s7~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst10|stop_pulse~q\,
	datad => \inst10|u_ctrl|estado_atual.s7~q\,
	combout => \inst10|u_ctrl|Selector8~0_combout\);

-- Location: FF_X31_Y17_N9
\inst10|u_ctrl|estado_atual.s8\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \inst10|u_ctrl|Selector8~0_combout\,
	ena => \inst10|u_ctrl|Selector2~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst10|u_ctrl|estado_atual.s8~q\);

-- Location: LCCOMB_X31_Y17_N12
\inst10|u_ctrl|Selector9~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst10|u_ctrl|Selector9~0_combout\ = (\inst10|u_ctrl|estado_atual.s8~q\ & !\inst10|stop_pulse~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst10|u_ctrl|estado_atual.s8~q\,
	datac => \inst10|stop_pulse~q\,
	combout => \inst10|u_ctrl|Selector9~0_combout\);

-- Location: FF_X31_Y17_N13
\inst10|u_ctrl|estado_atual.s9\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \inst10|u_ctrl|Selector9~0_combout\,
	ena => \inst10|u_ctrl|Selector2~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst10|u_ctrl|estado_atual.s9~q\);

-- Location: LCCOMB_X31_Y17_N14
\inst10|u_ctrl|Selector10~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst10|u_ctrl|Selector10~0_combout\ = (!\inst10|stop_pulse~q\ & \inst10|u_ctrl|estado_atual.s9~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst10|stop_pulse~q\,
	datad => \inst10|u_ctrl|estado_atual.s9~q\,
	combout => \inst10|u_ctrl|Selector10~0_combout\);

-- Location: FF_X31_Y17_N15
\inst10|u_ctrl|estado_atual.s10\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \inst10|u_ctrl|Selector10~0_combout\,
	ena => \inst10|u_ctrl|Selector2~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst10|u_ctrl|estado_atual.s10~q\);

-- Location: LCCOMB_X31_Y17_N10
\inst10|u_ctrl|Selector11~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst10|u_ctrl|Selector11~0_combout\ = (\inst10|u_ctrl|estado_atual.s10~q\ & !\inst10|stop_pulse~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst10|u_ctrl|estado_atual.s10~q\,
	datac => \inst10|stop_pulse~q\,
	combout => \inst10|u_ctrl|Selector11~0_combout\);

-- Location: FF_X31_Y17_N11
\inst10|u_ctrl|estado_atual.s11\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \inst10|u_ctrl|Selector11~0_combout\,
	ena => \inst10|u_ctrl|Selector2~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst10|u_ctrl|estado_atual.s11~q\);

-- Location: LCCOMB_X31_Y17_N30
\inst10|u_ctrl|Selector12~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst10|u_ctrl|Selector12~0_combout\ = (!\inst10|stop_pulse~q\ & \inst10|u_ctrl|estado_atual.s11~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst10|stop_pulse~q\,
	datad => \inst10|u_ctrl|estado_atual.s11~q\,
	combout => \inst10|u_ctrl|Selector12~0_combout\);

-- Location: FF_X31_Y17_N31
\inst10|u_ctrl|estado_atual.s12\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \inst10|u_ctrl|Selector12~0_combout\,
	ena => \inst10|u_ctrl|Selector2~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst10|u_ctrl|estado_atual.s12~q\);

-- Location: LCCOMB_X30_Y17_N10
\inst10|u_ctrl|Selector13~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst10|u_ctrl|Selector13~0_combout\ = (!\inst10|stop_pulse~q\ & \inst10|u_ctrl|estado_atual.s12~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst10|stop_pulse~q\,
	datac => \inst10|u_ctrl|estado_atual.s12~q\,
	combout => \inst10|u_ctrl|Selector13~0_combout\);

-- Location: FF_X30_Y17_N11
\inst10|u_ctrl|estado_atual.s13\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \inst10|u_ctrl|Selector13~0_combout\,
	ena => \inst10|u_ctrl|Selector2~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst10|u_ctrl|estado_atual.s13~q\);

-- Location: LCCOMB_X30_Y17_N26
\inst10|u_ctrl|Selector14~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst10|u_ctrl|Selector14~0_combout\ = (!\inst10|stop_pulse~q\ & \inst10|u_ctrl|estado_atual.s13~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst10|stop_pulse~q\,
	datad => \inst10|u_ctrl|estado_atual.s13~q\,
	combout => \inst10|u_ctrl|Selector14~0_combout\);

-- Location: FF_X30_Y17_N27
\inst10|u_ctrl|estado_atual.s14\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \inst10|u_ctrl|Selector14~0_combout\,
	ena => \inst10|u_ctrl|Selector2~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst10|u_ctrl|estado_atual.s14~q\);

-- Location: LCCOMB_X30_Y17_N16
\inst10|u_ctrl|Selector15~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst10|u_ctrl|Selector15~0_combout\ = (!\inst10|stop_pulse~q\ & \inst10|u_ctrl|estado_atual.s14~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst10|stop_pulse~q\,
	datac => \inst10|u_ctrl|estado_atual.s14~q\,
	combout => \inst10|u_ctrl|Selector15~0_combout\);

-- Location: FF_X30_Y17_N17
\inst10|u_ctrl|estado_atual.s15\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \inst10|u_ctrl|Selector15~0_combout\,
	ena => \inst10|u_ctrl|Selector2~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst10|u_ctrl|estado_atual.s15~q\);

-- Location: LCCOMB_X30_Y17_N20
\inst10|u_ctrl|Selector16~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst10|u_ctrl|Selector16~0_combout\ = (!\inst10|stop_pulse~q\ & \inst10|u_ctrl|estado_atual.s15~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst10|stop_pulse~q\,
	datad => \inst10|u_ctrl|estado_atual.s15~q\,
	combout => \inst10|u_ctrl|Selector16~0_combout\);

-- Location: FF_X30_Y17_N21
\inst10|u_ctrl|estado_atual.s16\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \inst10|u_ctrl|Selector16~0_combout\,
	ena => \inst10|u_ctrl|Selector2~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst10|u_ctrl|estado_atual.s16~q\);

-- Location: LCCOMB_X30_Y17_N0
\inst10|u_ctrl|Selector17~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst10|u_ctrl|Selector17~0_combout\ = (!\inst10|stop_pulse~q\ & \inst10|u_ctrl|estado_atual.s16~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst10|stop_pulse~q\,
	datad => \inst10|u_ctrl|estado_atual.s16~q\,
	combout => \inst10|u_ctrl|Selector17~0_combout\);

-- Location: FF_X30_Y17_N1
\inst10|u_ctrl|estado_atual.s17\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \inst10|u_ctrl|Selector17~0_combout\,
	ena => \inst10|u_ctrl|Selector2~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst10|u_ctrl|estado_atual.s17~q\);

-- Location: LCCOMB_X30_Y17_N14
\inst10|u_ctrl|Selector18~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst10|u_ctrl|Selector18~0_combout\ = (!\inst10|stop_pulse~q\ & \inst10|u_ctrl|estado_atual.s17~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst10|stop_pulse~q\,
	datad => \inst10|u_ctrl|estado_atual.s17~q\,
	combout => \inst10|u_ctrl|Selector18~0_combout\);

-- Location: FF_X30_Y17_N15
\inst10|u_ctrl|estado_atual.s18\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \inst10|u_ctrl|Selector18~0_combout\,
	ena => \inst10|u_ctrl|Selector2~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst10|u_ctrl|estado_atual.s18~q\);

-- Location: LCCOMB_X31_Y17_N22
\inst10|u_ctrl|Selector19~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst10|u_ctrl|Selector19~0_combout\ = (!\inst10|stop_pulse~q\ & \inst10|u_ctrl|estado_atual.s18~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst10|stop_pulse~q\,
	datad => \inst10|u_ctrl|estado_atual.s18~q\,
	combout => \inst10|u_ctrl|Selector19~0_combout\);

-- Location: FF_X31_Y17_N23
\inst10|u_ctrl|estado_atual.s19\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \inst10|u_ctrl|Selector19~0_combout\,
	ena => \inst10|u_ctrl|Selector2~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst10|u_ctrl|estado_atual.s19~q\);

-- Location: LCCOMB_X30_Y17_N2
\inst10|u_ctrl|Selector20~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst10|u_ctrl|Selector20~0_combout\ = (!\inst10|stop_pulse~q\ & \inst10|u_ctrl|estado_atual.s19~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst10|stop_pulse~q\,
	datad => \inst10|u_ctrl|estado_atual.s19~q\,
	combout => \inst10|u_ctrl|Selector20~0_combout\);

-- Location: FF_X30_Y17_N3
\inst10|u_ctrl|estado_atual.s20\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \inst10|u_ctrl|Selector20~0_combout\,
	ena => \inst10|u_ctrl|Selector2~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst10|u_ctrl|estado_atual.s20~q\);

-- Location: LCCOMB_X30_Y17_N4
\inst10|u_ctrl|Selector21~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst10|u_ctrl|Selector21~0_combout\ = (!\inst10|stop_pulse~q\ & \inst10|u_ctrl|estado_atual.s20~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst10|stop_pulse~q\,
	datad => \inst10|u_ctrl|estado_atual.s20~q\,
	combout => \inst10|u_ctrl|Selector21~0_combout\);

-- Location: FF_X30_Y17_N5
\inst10|u_ctrl|estado_atual.s21\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \inst10|u_ctrl|Selector21~0_combout\,
	ena => \inst10|u_ctrl|Selector2~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst10|u_ctrl|estado_atual.s21~q\);

-- Location: LCCOMB_X30_Y17_N22
\inst10|u_ctrl|Selector22~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst10|u_ctrl|Selector22~0_combout\ = (!\inst10|stop_pulse~q\ & \inst10|u_ctrl|estado_atual.s21~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst10|stop_pulse~q\,
	datac => \inst10|u_ctrl|estado_atual.s21~q\,
	combout => \inst10|u_ctrl|Selector22~0_combout\);

-- Location: FF_X30_Y17_N23
\inst10|u_ctrl|estado_atual.s22\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \inst10|u_ctrl|Selector22~0_combout\,
	ena => \inst10|u_ctrl|Selector2~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst10|u_ctrl|estado_atual.s22~q\);

-- Location: LCCOMB_X30_Y17_N6
\inst10|u_ctrl|Selector23~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst10|u_ctrl|Selector23~0_combout\ = (!\inst10|stop_pulse~q\ & \inst10|u_ctrl|estado_atual.s22~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst10|stop_pulse~q\,
	datac => \inst10|u_ctrl|estado_atual.s22~q\,
	combout => \inst10|u_ctrl|Selector23~0_combout\);

-- Location: FF_X30_Y17_N7
\inst10|u_ctrl|estado_atual.s23\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \inst10|u_ctrl|Selector23~0_combout\,
	ena => \inst10|u_ctrl|Selector2~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst10|u_ctrl|estado_atual.s23~q\);

-- Location: LCCOMB_X30_Y14_N4
\inst10|u_ctrl|Selector24~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst10|u_ctrl|Selector24~0_combout\ = (!\inst10|stop_pulse~q\ & \inst10|u_ctrl|estado_atual.s23~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst10|stop_pulse~q\,
	datad => \inst10|u_ctrl|estado_atual.s23~q\,
	combout => \inst10|u_ctrl|Selector24~0_combout\);

-- Location: FF_X30_Y14_N5
\inst10|u_ctrl|estado_atual.s24\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \inst10|u_ctrl|Selector24~0_combout\,
	ena => \inst10|u_ctrl|Selector2~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst10|u_ctrl|estado_atual.s24~q\);

-- Location: LCCOMB_X30_Y14_N22
\inst10|u_ctrl|Selector25~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst10|u_ctrl|Selector25~0_combout\ = (\inst10|u_ctrl|estado_atual.s24~q\ & !\inst10|stop_pulse~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst10|u_ctrl|estado_atual.s24~q\,
	datad => \inst10|stop_pulse~q\,
	combout => \inst10|u_ctrl|Selector25~0_combout\);

-- Location: FF_X30_Y14_N23
\inst10|u_ctrl|estado_atual.s25\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \inst10|u_ctrl|Selector25~0_combout\,
	ena => \inst10|u_ctrl|Selector2~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst10|u_ctrl|estado_atual.s25~q\);

-- Location: LCCOMB_X31_Y16_N26
\inst10|u_ctrl|WideOr31~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst10|u_ctrl|WideOr31~0_combout\ = (\inst10|u_ctrl|estado_atual.s25~q\) # ((\inst10|u_ctrl|estado_atual.s17~q\) # ((\inst10|u_ctrl|estado_atual.s1~q\) # (\inst10|u_ctrl|estado_atual.s9~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst10|u_ctrl|estado_atual.s25~q\,
	datab => \inst10|u_ctrl|estado_atual.s17~q\,
	datac => \inst10|u_ctrl|estado_atual.s1~q\,
	datad => \inst10|u_ctrl|estado_atual.s9~q\,
	combout => \inst10|u_ctrl|WideOr31~0_combout\);

-- Location: FF_X31_Y16_N27
\inst10|u_ctrl|Freq_out[16]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \inst10|u_ctrl|WideOr31~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst10|u_ctrl|Freq_out\(16));

-- Location: LCCOMB_X30_Y17_N8
\inst10|u_ctrl|WideOr32~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst10|u_ctrl|WideOr32~0_combout\ = (!\inst10|u_ctrl|estado_atual.s13~q\ & (!\inst10|u_ctrl|estado_atual.s29~q\ & (!\inst10|u_ctrl|estado_atual.s21~q\ & !\inst10|u_ctrl|estado_atual.s5~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst10|u_ctrl|estado_atual.s13~q\,
	datab => \inst10|u_ctrl|estado_atual.s29~q\,
	datac => \inst10|u_ctrl|estado_atual.s21~q\,
	datad => \inst10|u_ctrl|estado_atual.s5~q\,
	combout => \inst10|u_ctrl|WideOr32~0_combout\);

-- Location: LCCOMB_X31_Y16_N28
\inst10|u_ctrl|WideOr32\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst10|u_ctrl|WideOr32~combout\ = (!\inst10|u_ctrl|WideOr31~0_combout\ & (\inst10|u_ctrl|estado_atual.s0~q\ & \inst10|u_ctrl|WideOr32~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst10|u_ctrl|WideOr31~0_combout\,
	datab => \inst10|u_ctrl|estado_atual.s0~q\,
	datac => \inst10|u_ctrl|WideOr32~0_combout\,
	combout => \inst10|u_ctrl|WideOr32~combout\);

-- Location: FF_X31_Y16_N29
\inst10|u_ctrl|Freq_out[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \inst10|u_ctrl|WideOr32~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst10|u_ctrl|Freq_out\(15));

-- Location: LCCOMB_X30_Y17_N28
\inst10|u_ctrl|WideOr34~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst10|u_ctrl|WideOr34~1_combout\ = (!\inst10|u_ctrl|estado_atual.s12~q\ & (!\inst10|u_ctrl|estado_atual.s20~q\ & (!\inst10|u_ctrl|estado_atual.s28~q\ & !\inst10|u_ctrl|estado_atual.s4~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst10|u_ctrl|estado_atual.s12~q\,
	datab => \inst10|u_ctrl|estado_atual.s20~q\,
	datac => \inst10|u_ctrl|estado_atual.s28~q\,
	datad => \inst10|u_ctrl|estado_atual.s4~q\,
	combout => \inst10|u_ctrl|WideOr34~1_combout\);

-- Location: LCCOMB_X31_Y17_N28
\inst10|u_ctrl|WideOr33~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst10|u_ctrl|WideOr33~0_combout\ = (!\inst10|u_ctrl|estado_atual.s18~q\ & (!\inst10|u_ctrl|estado_atual.s10~q\ & (!\inst10|u_ctrl|estado_atual.s26~q\ & !\inst10|u_ctrl|estado_atual.s2~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst10|u_ctrl|estado_atual.s18~q\,
	datab => \inst10|u_ctrl|estado_atual.s10~q\,
	datac => \inst10|u_ctrl|estado_atual.s26~q\,
	datad => \inst10|u_ctrl|estado_atual.s2~q\,
	combout => \inst10|u_ctrl|WideOr33~0_combout\);

-- Location: LCCOMB_X31_Y16_N14
\inst10|u_ctrl|WideOr34~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst10|u_ctrl|WideOr34~0_combout\ = (\inst10|u_ctrl|estado_atual.s25~q\) # ((\inst10|u_ctrl|estado_atual.s17~q\) # (!\inst10|u_ctrl|WideOr33~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst10|u_ctrl|estado_atual.s25~q\,
	datab => \inst10|u_ctrl|estado_atual.s17~q\,
	datad => \inst10|u_ctrl|WideOr33~0_combout\,
	combout => \inst10|u_ctrl|WideOr34~0_combout\);

-- Location: LCCOMB_X28_Y16_N28
\inst10|u_ctrl|WideOr34~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst10|u_ctrl|WideOr34~2_combout\ = ((\inst10|u_ctrl|WideOr34~0_combout\) # (!\inst10|u_ctrl|WideOr34~1_combout\)) # (!\inst10|u_ctrl|WideOr32~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111101011111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst10|u_ctrl|WideOr32~0_combout\,
	datac => \inst10|u_ctrl|WideOr34~1_combout\,
	datad => \inst10|u_ctrl|WideOr34~0_combout\,
	combout => \inst10|u_ctrl|WideOr34~2_combout\);

-- Location: FF_X28_Y16_N29
\inst10|u_ctrl|Freq_out[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \inst10|u_ctrl|WideOr34~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst10|u_ctrl|Freq_out\(13));

-- Location: LCCOMB_X30_Y17_N24
\inst10|u_ctrl|WideOr36~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst10|u_ctrl|WideOr36~0_combout\ = (!\inst10|u_ctrl|estado_atual.s23~q\ & (!\inst10|u_ctrl|estado_atual.s15~q\ & !\inst10|u_ctrl|estado_atual.s7~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000010001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst10|u_ctrl|estado_atual.s23~q\,
	datab => \inst10|u_ctrl|estado_atual.s15~q\,
	datad => \inst10|u_ctrl|estado_atual.s7~q\,
	combout => \inst10|u_ctrl|WideOr36~0_combout\);

-- Location: LCCOMB_X31_Y16_N24
\inst10|u_ctrl|WideOr31~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst10|u_ctrl|WideOr31~1_combout\ = (!\inst10|u_ctrl|estado_atual.s1~q\ & !\inst10|u_ctrl|estado_atual.s9~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst10|u_ctrl|estado_atual.s1~q\,
	datad => \inst10|u_ctrl|estado_atual.s9~q\,
	combout => \inst10|u_ctrl|WideOr31~1_combout\);

-- Location: LCCOMB_X31_Y16_N8
\inst10|u_ctrl|WideOr35\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst10|u_ctrl|WideOr35~combout\ = (\inst10|u_ctrl|WideOr36~0_combout\ & (\inst10|u_ctrl|estado_atual.s0~q\ & (!\inst10|u_ctrl|WideOr34~0_combout\ & \inst10|u_ctrl|WideOr31~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst10|u_ctrl|WideOr36~0_combout\,
	datab => \inst10|u_ctrl|estado_atual.s0~q\,
	datac => \inst10|u_ctrl|WideOr34~0_combout\,
	datad => \inst10|u_ctrl|WideOr31~1_combout\,
	combout => \inst10|u_ctrl|WideOr35~combout\);

-- Location: FF_X31_Y16_N9
\inst10|u_ctrl|Freq_out[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \inst10|u_ctrl|WideOr35~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst10|u_ctrl|Freq_out\(12));

-- Location: LCCOMB_X28_Y16_N16
\inst10|u_div|LessThan0~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst10|u_div|LessThan0~14_combout\ = (\inst10|u_div|cnt\(13) & (\inst10|u_ctrl|Freq_out\(13) & (\inst10|u_ctrl|Freq_out\(12) & !\inst10|u_div|cnt\(12)))) # (!\inst10|u_div|cnt\(13) & ((\inst10|u_ctrl|Freq_out\(13)) # ((\inst10|u_ctrl|Freq_out\(12) & 
-- !\inst10|u_div|cnt\(12)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100010011010100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst10|u_div|cnt\(13),
	datab => \inst10|u_ctrl|Freq_out\(13),
	datac => \inst10|u_ctrl|Freq_out\(12),
	datad => \inst10|u_div|cnt\(12),
	combout => \inst10|u_div|LessThan0~14_combout\);

-- Location: LCCOMB_X31_Y16_N2
\inst10|u_ctrl|WideOr33~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst10|u_ctrl|WideOr33~1_combout\ = (\inst10|u_ctrl|WideOr36~0_combout\ & (\inst10|u_ctrl|estado_atual.s0~q\ & !\inst10|u_ctrl|WideOr34~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100000001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst10|u_ctrl|WideOr36~0_combout\,
	datab => \inst10|u_ctrl|estado_atual.s0~q\,
	datac => \inst10|u_ctrl|WideOr34~0_combout\,
	combout => \inst10|u_ctrl|WideOr33~1_combout\);

-- Location: FF_X31_Y16_N3
\inst10|u_ctrl|Freq_out[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \inst10|u_ctrl|WideOr33~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst10|u_ctrl|Freq_out\(14));

-- Location: LCCOMB_X28_Y16_N6
\inst10|u_div|LessThan0~15\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst10|u_div|LessThan0~15_combout\ = (\inst10|u_div|LessThan0~14_combout\ & ((\inst10|u_ctrl|Freq_out\(14)) # (!\inst10|u_div|cnt\(14)))) # (!\inst10|u_div|LessThan0~14_combout\ & (\inst10|u_ctrl|Freq_out\(14) & !\inst10|u_div|cnt\(14)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000011111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst10|u_div|LessThan0~14_combout\,
	datac => \inst10|u_ctrl|Freq_out\(14),
	datad => \inst10|u_div|cnt\(14),
	combout => \inst10|u_div|LessThan0~15_combout\);

-- Location: LCCOMB_X28_Y16_N10
\inst10|u_div|LessThan0~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst10|u_div|LessThan0~12_combout\ = (\inst10|u_div|cnt\(13) & (\inst10|u_ctrl|Freq_out\(13) & (\inst10|u_div|cnt\(14) $ (!\inst10|u_ctrl|Freq_out\(14))))) # (!\inst10|u_div|cnt\(13) & (!\inst10|u_ctrl|Freq_out\(13) & (\inst10|u_div|cnt\(14) $ 
-- (!\inst10|u_ctrl|Freq_out\(14)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000001001000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst10|u_div|cnt\(13),
	datab => \inst10|u_div|cnt\(14),
	datac => \inst10|u_ctrl|Freq_out\(14),
	datad => \inst10|u_ctrl|Freq_out\(13),
	combout => \inst10|u_div|LessThan0~12_combout\);

-- Location: LCCOMB_X31_Y16_N12
\inst10|u_ctrl|WideOr36\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst10|u_ctrl|WideOr36~combout\ = (\inst10|u_ctrl|WideOr36~0_combout\ & (\inst10|u_ctrl|WideOr34~1_combout\ & \inst10|u_ctrl|estado_atual.s0~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst10|u_ctrl|WideOr36~0_combout\,
	datac => \inst10|u_ctrl|WideOr34~1_combout\,
	datad => \inst10|u_ctrl|estado_atual.s0~q\,
	combout => \inst10|u_ctrl|WideOr36~combout\);

-- Location: FF_X31_Y16_N13
\inst10|u_ctrl|Freq_out[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \inst10|u_ctrl|WideOr36~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst10|u_ctrl|Freq_out\(10));

-- Location: LCCOMB_X31_Y16_N6
\inst10|u_ctrl|WideOr33~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst10|u_ctrl|WideOr33~2_combout\ = (\inst10|u_ctrl|estado_atual.s25~q\) # ((\inst10|u_ctrl|estado_atual.s17~q\) # ((!\inst10|u_ctrl|WideOr33~0_combout\) # (!\inst10|u_ctrl|WideOr36~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst10|u_ctrl|estado_atual.s25~q\,
	datab => \inst10|u_ctrl|estado_atual.s17~q\,
	datac => \inst10|u_ctrl|WideOr36~0_combout\,
	datad => \inst10|u_ctrl|WideOr33~0_combout\,
	combout => \inst10|u_ctrl|WideOr33~2_combout\);

-- Location: FF_X31_Y16_N7
\inst10|u_ctrl|Freq_out[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \inst10|u_ctrl|WideOr33~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst10|u_ctrl|Freq_out\(9));

-- Location: LCCOMB_X31_Y16_N4
\inst10|u_ctrl|WideOr38\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst10|u_ctrl|WideOr38~combout\ = (\inst10|u_ctrl|WideOr31~1_combout\ & (\inst10|u_ctrl|estado_atual.s0~q\ & (\inst10|u_ctrl|WideOr32~0_combout\ & \inst10|u_ctrl|WideOr33~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst10|u_ctrl|WideOr31~1_combout\,
	datab => \inst10|u_ctrl|estado_atual.s0~q\,
	datac => \inst10|u_ctrl|WideOr32~0_combout\,
	datad => \inst10|u_ctrl|WideOr33~0_combout\,
	combout => \inst10|u_ctrl|WideOr38~combout\);

-- Location: FF_X31_Y16_N5
\inst10|u_ctrl|Freq_out[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \inst10|u_ctrl|WideOr38~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst10|u_ctrl|Freq_out\(8));

-- Location: LCCOMB_X31_Y16_N30
\inst10|u_ctrl|WideOr39\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst10|u_ctrl|WideOr39~combout\ = (\inst10|u_ctrl|estado_atual.s0~q\ & (\inst10|u_ctrl|WideOr34~1_combout\ & \inst10|u_ctrl|WideOr33~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst10|u_ctrl|estado_atual.s0~q\,
	datac => \inst10|u_ctrl|WideOr34~1_combout\,
	datad => \inst10|u_ctrl|WideOr33~0_combout\,
	combout => \inst10|u_ctrl|WideOr39~combout\);

-- Location: FF_X30_Y16_N5
\inst10|u_ctrl|Freq_out[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	asdata => \inst10|u_ctrl|WideOr39~combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst10|u_ctrl|Freq_out\(7));

-- Location: LCCOMB_X31_Y16_N22
\inst10|u_ctrl|WideOr40~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst10|u_ctrl|WideOr40~0_combout\ = (\inst10|u_ctrl|WideOr32~0_combout\ & (\inst10|u_ctrl|estado_atual.s0~q\ & (\inst10|u_ctrl|WideOr34~1_combout\ & \inst10|u_ctrl|WideOr31~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst10|u_ctrl|WideOr32~0_combout\,
	datab => \inst10|u_ctrl|estado_atual.s0~q\,
	datac => \inst10|u_ctrl|WideOr34~1_combout\,
	datad => \inst10|u_ctrl|WideOr31~1_combout\,
	combout => \inst10|u_ctrl|WideOr40~0_combout\);

-- Location: FF_X31_Y16_N23
\inst10|u_ctrl|Freq_out[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \inst10|u_ctrl|WideOr40~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst10|u_ctrl|Freq_out\(6));

-- Location: LCCOMB_X31_Y16_N20
\inst10|u_ctrl|WideOr42\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst10|u_ctrl|WideOr42~combout\ = (!\inst10|u_ctrl|estado_atual.s25~q\ & (!\inst10|u_ctrl|estado_atual.s17~q\ & (\inst10|u_ctrl|WideOr34~1_combout\ & \inst10|u_ctrl|estado_atual.s0~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst10|u_ctrl|estado_atual.s25~q\,
	datab => \inst10|u_ctrl|estado_atual.s17~q\,
	datac => \inst10|u_ctrl|WideOr34~1_combout\,
	datad => \inst10|u_ctrl|estado_atual.s0~q\,
	combout => \inst10|u_ctrl|WideOr42~combout\);

-- Location: FF_X30_Y16_N15
\inst10|u_ctrl|Freq_out[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	asdata => \inst10|u_ctrl|WideOr42~combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst10|u_ctrl|Freq_out\(4));

-- Location: LCCOMB_X31_Y16_N10
\inst10|u_ctrl|WideOr43~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst10|u_ctrl|WideOr43~2_combout\ = ((\inst10|u_ctrl|estado_atual.s1~q\) # ((\inst10|u_ctrl|WideOr34~0_combout\) # (\inst10|u_ctrl|estado_atual.s9~q\))) # (!\inst10|u_ctrl|WideOr36~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst10|u_ctrl|WideOr36~0_combout\,
	datab => \inst10|u_ctrl|estado_atual.s1~q\,
	datac => \inst10|u_ctrl|WideOr34~0_combout\,
	datad => \inst10|u_ctrl|estado_atual.s9~q\,
	combout => \inst10|u_ctrl|WideOr43~2_combout\);

-- Location: FF_X30_Y16_N13
\inst10|u_ctrl|Freq_out[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	asdata => \inst10|u_ctrl|WideOr43~2_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst10|u_ctrl|Freq_out\(3));

-- Location: FF_X30_Y16_N7
\inst10|u_ctrl|Freq_out[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	asdata => \inst10|u_ctrl|WideOr34~0_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst10|u_ctrl|Freq_out\(2));

-- Location: LCCOMB_X31_Y16_N18
\inst10|u_ctrl|WideOr46\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst10|u_ctrl|WideOr46~combout\ = (\inst10|u_ctrl|estado_atual.s9~q\) # ((\inst10|u_ctrl|estado_atual.s1~q\) # (!\inst10|u_ctrl|WideOr33~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst10|u_ctrl|estado_atual.s9~q\,
	datac => \inst10|u_ctrl|estado_atual.s1~q\,
	datad => \inst10|u_ctrl|WideOr33~0_combout\,
	combout => \inst10|u_ctrl|WideOr46~combout\);

-- Location: FF_X31_Y16_N19
\inst10|u_ctrl|Freq_out[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \inst10|u_ctrl|WideOr46~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst10|u_ctrl|Freq_out\(0));

-- Location: LCCOMB_X30_Y17_N12
\inst10|u_ctrl|WideOr45~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst10|u_ctrl|WideOr45~1_combout\ = (\inst10|u_ctrl|estado_atual.s14~q\) # ((\inst10|u_ctrl|estado_atual.s16~q\) # ((\inst10|u_ctrl|estado_atual.s22~q\) # (\inst10|u_ctrl|estado_atual.s19~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst10|u_ctrl|estado_atual.s14~q\,
	datab => \inst10|u_ctrl|estado_atual.s16~q\,
	datac => \inst10|u_ctrl|estado_atual.s22~q\,
	datad => \inst10|u_ctrl|estado_atual.s19~q\,
	combout => \inst10|u_ctrl|WideOr45~1_combout\);

-- Location: LCCOMB_X30_Y14_N2
\inst10|u_ctrl|WideOr45~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst10|u_ctrl|WideOr45~2_combout\ = (\inst10|u_ctrl|estado_atual.s27~q\) # ((\inst10|u_ctrl|estado_atual.s24~q\) # (\inst10|u_ctrl|estado_atual.s30~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst10|u_ctrl|estado_atual.s27~q\,
	datac => \inst10|u_ctrl|estado_atual.s24~q\,
	datad => \inst10|u_ctrl|estado_atual.s30~q\,
	combout => \inst10|u_ctrl|WideOr45~2_combout\);

-- Location: LCCOMB_X31_Y17_N4
\inst10|u_ctrl|WideOr45~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst10|u_ctrl|WideOr45~0_combout\ = (\inst10|u_ctrl|estado_atual.s11~q\) # ((\inst10|u_ctrl|estado_atual.s3~q\) # ((\inst10|u_ctrl|estado_atual.s8~q\) # (\inst10|u_ctrl|estado_atual.s6~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst10|u_ctrl|estado_atual.s11~q\,
	datab => \inst10|u_ctrl|estado_atual.s3~q\,
	datac => \inst10|u_ctrl|estado_atual.s8~q\,
	datad => \inst10|u_ctrl|estado_atual.s6~q\,
	combout => \inst10|u_ctrl|WideOr45~0_combout\);

-- Location: LCCOMB_X30_Y17_N30
\inst10|u_ctrl|WideOr45~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst10|u_ctrl|WideOr45~3_combout\ = (\inst10|u_ctrl|WideOr45~1_combout\) # ((\inst10|u_ctrl|WideOr31~0_combout\) # ((\inst10|u_ctrl|WideOr45~2_combout\) # (\inst10|u_ctrl|WideOr45~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst10|u_ctrl|WideOr45~1_combout\,
	datab => \inst10|u_ctrl|WideOr31~0_combout\,
	datac => \inst10|u_ctrl|WideOr45~2_combout\,
	datad => \inst10|u_ctrl|WideOr45~0_combout\,
	combout => \inst10|u_ctrl|WideOr45~3_combout\);

-- Location: FF_X30_Y16_N17
\inst10|u_ctrl|Freq_out[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	asdata => \inst10|u_ctrl|WideOr45~3_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst10|u_ctrl|Freq_out\(1));

-- Location: LCCOMB_X30_Y16_N16
\inst10|u_div|LessThan0~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst10|u_div|LessThan0~2_combout\ = (\inst10|u_ctrl|Freq_out\(1) & (((!\inst10|u_div|cnt\(0) & \inst10|u_ctrl|Freq_out\(0))) # (!\inst10|u_div|cnt\(1)))) # (!\inst10|u_ctrl|Freq_out\(1) & (!\inst10|u_div|cnt\(0) & (\inst10|u_ctrl|Freq_out\(0) & 
-- !\inst10|u_div|cnt\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000011110100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst10|u_div|cnt\(0),
	datab => \inst10|u_ctrl|Freq_out\(0),
	datac => \inst10|u_ctrl|Freq_out\(1),
	datad => \inst10|u_div|cnt\(1),
	combout => \inst10|u_div|LessThan0~2_combout\);

-- Location: LCCOMB_X30_Y16_N6
\inst10|u_div|LessThan0~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst10|u_div|LessThan0~3_combout\ = (\inst10|u_div|cnt\(2) & (\inst10|u_ctrl|Freq_out\(2) & \inst10|u_div|LessThan0~2_combout\)) # (!\inst10|u_div|cnt\(2) & ((\inst10|u_ctrl|Freq_out\(2)) # (\inst10|u_div|LessThan0~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001100110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst10|u_div|cnt\(2),
	datac => \inst10|u_ctrl|Freq_out\(2),
	datad => \inst10|u_div|LessThan0~2_combout\,
	combout => \inst10|u_div|LessThan0~3_combout\);

-- Location: LCCOMB_X30_Y16_N12
\inst10|u_div|LessThan0~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst10|u_div|LessThan0~4_combout\ = (\inst10|u_div|cnt\(3) & (\inst10|u_ctrl|Freq_out\(3) & \inst10|u_div|LessThan0~3_combout\)) # (!\inst10|u_div|cnt\(3) & ((\inst10|u_ctrl|Freq_out\(3)) # (\inst10|u_div|LessThan0~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001100110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst10|u_div|cnt\(3),
	datac => \inst10|u_ctrl|Freq_out\(3),
	datad => \inst10|u_div|LessThan0~3_combout\,
	combout => \inst10|u_div|LessThan0~4_combout\);

-- Location: LCCOMB_X30_Y16_N14
\inst10|u_div|LessThan0~22\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst10|u_div|LessThan0~22_combout\ = (\inst10|u_div|cnt\(4) & (\inst10|u_ctrl|Freq_out\(4) & \inst10|u_div|LessThan0~4_combout\)) # (!\inst10|u_div|cnt\(4) & ((\inst10|u_ctrl|Freq_out\(4)) # (\inst10|u_div|LessThan0~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010101010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst10|u_div|cnt\(4),
	datac => \inst10|u_ctrl|Freq_out\(4),
	datad => \inst10|u_div|LessThan0~4_combout\,
	combout => \inst10|u_div|LessThan0~22_combout\);

-- Location: LCCOMB_X31_Y16_N16
\inst10|u_ctrl|WideOr38~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst10|u_ctrl|WideOr38~0_combout\ = (\inst10|u_ctrl|estado_atual.s0~q\ & (\inst10|u_ctrl|WideOr32~0_combout\ & \inst10|u_ctrl|WideOr33~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst10|u_ctrl|estado_atual.s0~q\,
	datac => \inst10|u_ctrl|WideOr32~0_combout\,
	datad => \inst10|u_ctrl|WideOr33~0_combout\,
	combout => \inst10|u_ctrl|WideOr38~0_combout\);

-- Location: FF_X31_Y16_N17
\inst10|u_ctrl|Freq_out[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \inst10|u_ctrl|WideOr38~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst10|u_ctrl|Freq_out\(5));

-- Location: LCCOMB_X30_Y16_N2
\inst10|u_div|LessThan0~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst10|u_div|LessThan0~5_combout\ = (\inst10|u_div|cnt\(5) & (\inst10|u_div|LessThan0~22_combout\ & \inst10|u_ctrl|Freq_out\(5))) # (!\inst10|u_div|cnt\(5) & ((\inst10|u_div|LessThan0~22_combout\) # (\inst10|u_ctrl|Freq_out\(5))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010101010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst10|u_div|cnt\(5),
	datac => \inst10|u_div|LessThan0~22_combout\,
	datad => \inst10|u_ctrl|Freq_out\(5),
	combout => \inst10|u_div|LessThan0~5_combout\);

-- Location: LCCOMB_X30_Y16_N8
\inst10|u_div|LessThan0~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst10|u_div|LessThan0~6_combout\ = (\inst10|u_div|cnt\(6) & (\inst10|u_ctrl|Freq_out\(6) & \inst10|u_div|LessThan0~5_combout\)) # (!\inst10|u_div|cnt\(6) & ((\inst10|u_ctrl|Freq_out\(6)) # (\inst10|u_div|LessThan0~5_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110101000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst10|u_div|cnt\(6),
	datab => \inst10|u_ctrl|Freq_out\(6),
	datad => \inst10|u_div|LessThan0~5_combout\,
	combout => \inst10|u_div|LessThan0~6_combout\);

-- Location: LCCOMB_X30_Y16_N30
\inst10|u_div|LessThan0~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst10|u_div|LessThan0~7_combout\ = (\inst10|u_div|cnt\(7) & (\inst10|u_ctrl|Freq_out\(7) & \inst10|u_div|LessThan0~6_combout\)) # (!\inst10|u_div|cnt\(7) & ((\inst10|u_ctrl|Freq_out\(7)) # (\inst10|u_div|LessThan0~6_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101010011010100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst10|u_div|cnt\(7),
	datab => \inst10|u_ctrl|Freq_out\(7),
	datac => \inst10|u_div|LessThan0~6_combout\,
	combout => \inst10|u_div|LessThan0~7_combout\);

-- Location: LCCOMB_X30_Y16_N20
\inst10|u_div|LessThan0~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst10|u_div|LessThan0~8_combout\ = (\inst10|u_ctrl|Freq_out\(8) & ((\inst10|u_div|LessThan0~7_combout\) # (!\inst10|u_div|cnt\(8)))) # (!\inst10|u_ctrl|Freq_out\(8) & (!\inst10|u_div|cnt\(8) & \inst10|u_div|LessThan0~7_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011001010110010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst10|u_ctrl|Freq_out\(8),
	datab => \inst10|u_div|cnt\(8),
	datac => \inst10|u_div|LessThan0~7_combout\,
	combout => \inst10|u_div|LessThan0~8_combout\);

-- Location: LCCOMB_X30_Y16_N10
\inst10|u_div|LessThan0~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst10|u_div|LessThan0~9_combout\ = (\inst10|u_div|cnt\(9) & (\inst10|u_ctrl|Freq_out\(9) & \inst10|u_div|LessThan0~8_combout\)) # (!\inst10|u_div|cnt\(9) & ((\inst10|u_ctrl|Freq_out\(9)) # (\inst10|u_div|LessThan0~8_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001100110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst10|u_div|cnt\(9),
	datac => \inst10|u_ctrl|Freq_out\(9),
	datad => \inst10|u_div|LessThan0~8_combout\,
	combout => \inst10|u_div|LessThan0~9_combout\);

-- Location: LCCOMB_X30_Y16_N24
\inst10|u_div|LessThan0~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst10|u_div|LessThan0~10_combout\ = (\inst10|u_div|cnt\(10) & (\inst10|u_ctrl|Freq_out\(10) & \inst10|u_div|LessThan0~9_combout\)) # (!\inst10|u_div|cnt\(10) & ((\inst10|u_ctrl|Freq_out\(10)) # (\inst10|u_div|LessThan0~9_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001100110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst10|u_div|cnt\(10),
	datac => \inst10|u_ctrl|Freq_out\(10),
	datad => \inst10|u_div|LessThan0~9_combout\,
	combout => \inst10|u_div|LessThan0~10_combout\);

-- Location: LCCOMB_X30_Y16_N26
\inst10|u_div|LessThan0~11\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst10|u_div|LessThan0~11_combout\ = (\inst10|u_div|cnt\(11) & (\inst10|u_ctrl|Freq_out\(14) & \inst10|u_div|LessThan0~10_combout\)) # (!\inst10|u_div|cnt\(11) & ((\inst10|u_ctrl|Freq_out\(14)) # (\inst10|u_div|LessThan0~10_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001100110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst10|u_div|cnt\(11),
	datac => \inst10|u_ctrl|Freq_out\(14),
	datad => \inst10|u_div|LessThan0~10_combout\,
	combout => \inst10|u_div|LessThan0~11_combout\);

-- Location: LCCOMB_X30_Y16_N0
\inst10|u_div|LessThan0~13\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst10|u_div|LessThan0~13_combout\ = (\inst10|u_div|LessThan0~12_combout\ & (\inst10|u_div|LessThan0~11_combout\ & (\inst10|u_ctrl|Freq_out\(12) $ (!\inst10|u_div|cnt\(12)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst10|u_div|LessThan0~12_combout\,
	datab => \inst10|u_ctrl|Freq_out\(12),
	datac => \inst10|u_div|LessThan0~11_combout\,
	datad => \inst10|u_div|cnt\(12),
	combout => \inst10|u_div|LessThan0~13_combout\);

-- Location: LCCOMB_X30_Y16_N28
\inst10|u_div|LessThan0~23\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst10|u_div|LessThan0~23_combout\ = (\inst10|u_div|cnt\(15) & (\inst10|u_ctrl|Freq_out\(15) & ((\inst10|u_div|LessThan0~15_combout\) # (\inst10|u_div|LessThan0~13_combout\)))) # (!\inst10|u_div|cnt\(15) & ((\inst10|u_ctrl|Freq_out\(15)) # 
-- ((\inst10|u_div|LessThan0~15_combout\) # (\inst10|u_div|LessThan0~13_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110111010100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst10|u_div|cnt\(15),
	datab => \inst10|u_ctrl|Freq_out\(15),
	datac => \inst10|u_div|LessThan0~15_combout\,
	datad => \inst10|u_div|LessThan0~13_combout\,
	combout => \inst10|u_div|LessThan0~23_combout\);

-- Location: LCCOMB_X30_Y16_N22
\inst10|u_div|LessThan0~24\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst10|u_div|LessThan0~24_combout\ = (\inst10|u_ctrl|Freq_out\(16) & ((\inst10|u_div|LessThan0~23_combout\) # (!\inst10|u_div|cnt\(16)))) # (!\inst10|u_ctrl|Freq_out\(16) & (!\inst10|u_div|cnt\(16) & \inst10|u_div|LessThan0~23_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111100001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst10|u_ctrl|Freq_out\(16),
	datac => \inst10|u_div|cnt\(16),
	datad => \inst10|u_div|LessThan0~23_combout\,
	combout => \inst10|u_div|LessThan0~24_combout\);

-- Location: LCCOMB_X28_Y15_N8
\inst10|u_div|LessThan0~18\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst10|u_div|LessThan0~18_combout\ = (!\inst10|u_div|cnt\(28) & (!\inst10|u_div|cnt\(27) & (!\inst10|u_div|cnt\(26) & !\inst10|u_div|cnt\(25))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst10|u_div|cnt\(28),
	datab => \inst10|u_div|cnt\(27),
	datac => \inst10|u_div|cnt\(26),
	datad => \inst10|u_div|cnt\(25),
	combout => \inst10|u_div|LessThan0~18_combout\);

-- Location: LCCOMB_X28_Y15_N10
\inst10|u_div|LessThan0~19\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst10|u_div|LessThan0~19_combout\ = (!\inst10|u_div|cnt\(30) & (\inst10|u_div|LessThan0~18_combout\ & !\inst10|u_div|cnt\(29)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst10|u_div|cnt\(30),
	datac => \inst10|u_div|LessThan0~18_combout\,
	datad => \inst10|u_div|cnt\(29),
	combout => \inst10|u_div|LessThan0~19_combout\);

-- Location: LCCOMB_X30_Y16_N18
\inst10|u_div|LessThan0~20\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst10|u_div|LessThan0~20_combout\ = (\inst10|u_div|LessThan0~17_combout\ & (\inst10|u_div|LessThan0~16_combout\ & (\inst10|u_div|LessThan0~24_combout\ & \inst10|u_div|LessThan0~19_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst10|u_div|LessThan0~17_combout\,
	datab => \inst10|u_div|LessThan0~16_combout\,
	datac => \inst10|u_div|LessThan0~24_combout\,
	datad => \inst10|u_div|LessThan0~19_combout\,
	combout => \inst10|u_div|LessThan0~20_combout\);

-- Location: LCCOMB_X30_Y16_N4
\inst10|u_div|LessThan0~21\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst10|u_div|LessThan0~21_combout\ = (!\inst10|u_div|cnt\(31) & !\inst10|u_div|LessThan0~20_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst10|u_div|cnt\(31),
	datad => \inst10|u_div|LessThan0~20_combout\,
	combout => \inst10|u_div|LessThan0~21_combout\);

-- Location: FF_X29_Y16_N1
\inst10|u_div|cnt[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \inst10|u_div|cnt[0]~32_combout\,
	sclr => \inst10|u_div|LessThan0~21_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst10|u_div|cnt\(0));

-- Location: LCCOMB_X29_Y16_N2
\inst10|u_div|cnt[1]~34\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst10|u_div|cnt[1]~34_combout\ = (\inst10|u_div|cnt\(1) & (!\inst10|u_div|cnt[0]~33\)) # (!\inst10|u_div|cnt\(1) & ((\inst10|u_div|cnt[0]~33\) # (GND)))
-- \inst10|u_div|cnt[1]~35\ = CARRY((!\inst10|u_div|cnt[0]~33\) # (!\inst10|u_div|cnt\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst10|u_div|cnt\(1),
	datad => VCC,
	cin => \inst10|u_div|cnt[0]~33\,
	combout => \inst10|u_div|cnt[1]~34_combout\,
	cout => \inst10|u_div|cnt[1]~35\);

-- Location: FF_X29_Y16_N3
\inst10|u_div|cnt[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \inst10|u_div|cnt[1]~34_combout\,
	sclr => \inst10|u_div|LessThan0~21_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst10|u_div|cnt\(1));

-- Location: LCCOMB_X29_Y16_N4
\inst10|u_div|cnt[2]~36\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst10|u_div|cnt[2]~36_combout\ = (\inst10|u_div|cnt\(2) & (\inst10|u_div|cnt[1]~35\ $ (GND))) # (!\inst10|u_div|cnt\(2) & (!\inst10|u_div|cnt[1]~35\ & VCC))
-- \inst10|u_div|cnt[2]~37\ = CARRY((\inst10|u_div|cnt\(2) & !\inst10|u_div|cnt[1]~35\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst10|u_div|cnt\(2),
	datad => VCC,
	cin => \inst10|u_div|cnt[1]~35\,
	combout => \inst10|u_div|cnt[2]~36_combout\,
	cout => \inst10|u_div|cnt[2]~37\);

-- Location: FF_X29_Y16_N5
\inst10|u_div|cnt[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \inst10|u_div|cnt[2]~36_combout\,
	sclr => \inst10|u_div|LessThan0~21_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst10|u_div|cnt\(2));

-- Location: LCCOMB_X29_Y16_N6
\inst10|u_div|cnt[3]~38\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst10|u_div|cnt[3]~38_combout\ = (\inst10|u_div|cnt\(3) & (!\inst10|u_div|cnt[2]~37\)) # (!\inst10|u_div|cnt\(3) & ((\inst10|u_div|cnt[2]~37\) # (GND)))
-- \inst10|u_div|cnt[3]~39\ = CARRY((!\inst10|u_div|cnt[2]~37\) # (!\inst10|u_div|cnt\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst10|u_div|cnt\(3),
	datad => VCC,
	cin => \inst10|u_div|cnt[2]~37\,
	combout => \inst10|u_div|cnt[3]~38_combout\,
	cout => \inst10|u_div|cnt[3]~39\);

-- Location: FF_X29_Y16_N7
\inst10|u_div|cnt[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \inst10|u_div|cnt[3]~38_combout\,
	sclr => \inst10|u_div|LessThan0~21_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst10|u_div|cnt\(3));

-- Location: LCCOMB_X29_Y16_N8
\inst10|u_div|cnt[4]~40\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst10|u_div|cnt[4]~40_combout\ = (\inst10|u_div|cnt\(4) & (\inst10|u_div|cnt[3]~39\ $ (GND))) # (!\inst10|u_div|cnt\(4) & (!\inst10|u_div|cnt[3]~39\ & VCC))
-- \inst10|u_div|cnt[4]~41\ = CARRY((\inst10|u_div|cnt\(4) & !\inst10|u_div|cnt[3]~39\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst10|u_div|cnt\(4),
	datad => VCC,
	cin => \inst10|u_div|cnt[3]~39\,
	combout => \inst10|u_div|cnt[4]~40_combout\,
	cout => \inst10|u_div|cnt[4]~41\);

-- Location: FF_X29_Y16_N9
\inst10|u_div|cnt[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \inst10|u_div|cnt[4]~40_combout\,
	sclr => \inst10|u_div|LessThan0~21_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst10|u_div|cnt\(4));

-- Location: LCCOMB_X29_Y16_N10
\inst10|u_div|cnt[5]~42\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst10|u_div|cnt[5]~42_combout\ = (\inst10|u_div|cnt\(5) & (!\inst10|u_div|cnt[4]~41\)) # (!\inst10|u_div|cnt\(5) & ((\inst10|u_div|cnt[4]~41\) # (GND)))
-- \inst10|u_div|cnt[5]~43\ = CARRY((!\inst10|u_div|cnt[4]~41\) # (!\inst10|u_div|cnt\(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst10|u_div|cnt\(5),
	datad => VCC,
	cin => \inst10|u_div|cnt[4]~41\,
	combout => \inst10|u_div|cnt[5]~42_combout\,
	cout => \inst10|u_div|cnt[5]~43\);

-- Location: FF_X29_Y16_N11
\inst10|u_div|cnt[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \inst10|u_div|cnt[5]~42_combout\,
	sclr => \inst10|u_div|LessThan0~21_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst10|u_div|cnt\(5));

-- Location: LCCOMB_X29_Y16_N12
\inst10|u_div|cnt[6]~44\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst10|u_div|cnt[6]~44_combout\ = (\inst10|u_div|cnt\(6) & (\inst10|u_div|cnt[5]~43\ $ (GND))) # (!\inst10|u_div|cnt\(6) & (!\inst10|u_div|cnt[5]~43\ & VCC))
-- \inst10|u_div|cnt[6]~45\ = CARRY((\inst10|u_div|cnt\(6) & !\inst10|u_div|cnt[5]~43\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst10|u_div|cnt\(6),
	datad => VCC,
	cin => \inst10|u_div|cnt[5]~43\,
	combout => \inst10|u_div|cnt[6]~44_combout\,
	cout => \inst10|u_div|cnt[6]~45\);

-- Location: FF_X29_Y16_N13
\inst10|u_div|cnt[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \inst10|u_div|cnt[6]~44_combout\,
	sclr => \inst10|u_div|LessThan0~21_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst10|u_div|cnt\(6));

-- Location: LCCOMB_X29_Y16_N14
\inst10|u_div|cnt[7]~46\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst10|u_div|cnt[7]~46_combout\ = (\inst10|u_div|cnt\(7) & (!\inst10|u_div|cnt[6]~45\)) # (!\inst10|u_div|cnt\(7) & ((\inst10|u_div|cnt[6]~45\) # (GND)))
-- \inst10|u_div|cnt[7]~47\ = CARRY((!\inst10|u_div|cnt[6]~45\) # (!\inst10|u_div|cnt\(7)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst10|u_div|cnt\(7),
	datad => VCC,
	cin => \inst10|u_div|cnt[6]~45\,
	combout => \inst10|u_div|cnt[7]~46_combout\,
	cout => \inst10|u_div|cnt[7]~47\);

-- Location: FF_X29_Y16_N15
\inst10|u_div|cnt[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \inst10|u_div|cnt[7]~46_combout\,
	sclr => \inst10|u_div|LessThan0~21_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst10|u_div|cnt\(7));

-- Location: LCCOMB_X29_Y16_N16
\inst10|u_div|cnt[8]~48\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst10|u_div|cnt[8]~48_combout\ = (\inst10|u_div|cnt\(8) & (\inst10|u_div|cnt[7]~47\ $ (GND))) # (!\inst10|u_div|cnt\(8) & (!\inst10|u_div|cnt[7]~47\ & VCC))
-- \inst10|u_div|cnt[8]~49\ = CARRY((\inst10|u_div|cnt\(8) & !\inst10|u_div|cnt[7]~47\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst10|u_div|cnt\(8),
	datad => VCC,
	cin => \inst10|u_div|cnt[7]~47\,
	combout => \inst10|u_div|cnt[8]~48_combout\,
	cout => \inst10|u_div|cnt[8]~49\);

-- Location: FF_X29_Y16_N17
\inst10|u_div|cnt[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \inst10|u_div|cnt[8]~48_combout\,
	sclr => \inst10|u_div|LessThan0~21_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst10|u_div|cnt\(8));

-- Location: LCCOMB_X29_Y16_N18
\inst10|u_div|cnt[9]~50\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst10|u_div|cnt[9]~50_combout\ = (\inst10|u_div|cnt\(9) & (!\inst10|u_div|cnt[8]~49\)) # (!\inst10|u_div|cnt\(9) & ((\inst10|u_div|cnt[8]~49\) # (GND)))
-- \inst10|u_div|cnt[9]~51\ = CARRY((!\inst10|u_div|cnt[8]~49\) # (!\inst10|u_div|cnt\(9)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst10|u_div|cnt\(9),
	datad => VCC,
	cin => \inst10|u_div|cnt[8]~49\,
	combout => \inst10|u_div|cnt[9]~50_combout\,
	cout => \inst10|u_div|cnt[9]~51\);

-- Location: FF_X29_Y16_N19
\inst10|u_div|cnt[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \inst10|u_div|cnt[9]~50_combout\,
	sclr => \inst10|u_div|LessThan0~21_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst10|u_div|cnt\(9));

-- Location: LCCOMB_X29_Y16_N20
\inst10|u_div|cnt[10]~52\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst10|u_div|cnt[10]~52_combout\ = (\inst10|u_div|cnt\(10) & (\inst10|u_div|cnt[9]~51\ $ (GND))) # (!\inst10|u_div|cnt\(10) & (!\inst10|u_div|cnt[9]~51\ & VCC))
-- \inst10|u_div|cnt[10]~53\ = CARRY((\inst10|u_div|cnt\(10) & !\inst10|u_div|cnt[9]~51\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst10|u_div|cnt\(10),
	datad => VCC,
	cin => \inst10|u_div|cnt[9]~51\,
	combout => \inst10|u_div|cnt[10]~52_combout\,
	cout => \inst10|u_div|cnt[10]~53\);

-- Location: FF_X29_Y16_N21
\inst10|u_div|cnt[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \inst10|u_div|cnt[10]~52_combout\,
	sclr => \inst10|u_div|LessThan0~21_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst10|u_div|cnt\(10));

-- Location: LCCOMB_X29_Y16_N22
\inst10|u_div|cnt[11]~54\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst10|u_div|cnt[11]~54_combout\ = (\inst10|u_div|cnt\(11) & (!\inst10|u_div|cnt[10]~53\)) # (!\inst10|u_div|cnt\(11) & ((\inst10|u_div|cnt[10]~53\) # (GND)))
-- \inst10|u_div|cnt[11]~55\ = CARRY((!\inst10|u_div|cnt[10]~53\) # (!\inst10|u_div|cnt\(11)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst10|u_div|cnt\(11),
	datad => VCC,
	cin => \inst10|u_div|cnt[10]~53\,
	combout => \inst10|u_div|cnt[11]~54_combout\,
	cout => \inst10|u_div|cnt[11]~55\);

-- Location: FF_X29_Y16_N23
\inst10|u_div|cnt[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \inst10|u_div|cnt[11]~54_combout\,
	sclr => \inst10|u_div|LessThan0~21_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst10|u_div|cnt\(11));

-- Location: LCCOMB_X29_Y16_N24
\inst10|u_div|cnt[12]~56\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst10|u_div|cnt[12]~56_combout\ = (\inst10|u_div|cnt\(12) & (\inst10|u_div|cnt[11]~55\ $ (GND))) # (!\inst10|u_div|cnt\(12) & (!\inst10|u_div|cnt[11]~55\ & VCC))
-- \inst10|u_div|cnt[12]~57\ = CARRY((\inst10|u_div|cnt\(12) & !\inst10|u_div|cnt[11]~55\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst10|u_div|cnt\(12),
	datad => VCC,
	cin => \inst10|u_div|cnt[11]~55\,
	combout => \inst10|u_div|cnt[12]~56_combout\,
	cout => \inst10|u_div|cnt[12]~57\);

-- Location: FF_X29_Y16_N25
\inst10|u_div|cnt[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \inst10|u_div|cnt[12]~56_combout\,
	sclr => \inst10|u_div|LessThan0~21_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst10|u_div|cnt\(12));

-- Location: LCCOMB_X29_Y16_N26
\inst10|u_div|cnt[13]~58\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst10|u_div|cnt[13]~58_combout\ = (\inst10|u_div|cnt\(13) & (!\inst10|u_div|cnt[12]~57\)) # (!\inst10|u_div|cnt\(13) & ((\inst10|u_div|cnt[12]~57\) # (GND)))
-- \inst10|u_div|cnt[13]~59\ = CARRY((!\inst10|u_div|cnt[12]~57\) # (!\inst10|u_div|cnt\(13)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst10|u_div|cnt\(13),
	datad => VCC,
	cin => \inst10|u_div|cnt[12]~57\,
	combout => \inst10|u_div|cnt[13]~58_combout\,
	cout => \inst10|u_div|cnt[13]~59\);

-- Location: FF_X29_Y16_N27
\inst10|u_div|cnt[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \inst10|u_div|cnt[13]~58_combout\,
	sclr => \inst10|u_div|LessThan0~21_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst10|u_div|cnt\(13));

-- Location: LCCOMB_X29_Y16_N28
\inst10|u_div|cnt[14]~60\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst10|u_div|cnt[14]~60_combout\ = (\inst10|u_div|cnt\(14) & (\inst10|u_div|cnt[13]~59\ $ (GND))) # (!\inst10|u_div|cnt\(14) & (!\inst10|u_div|cnt[13]~59\ & VCC))
-- \inst10|u_div|cnt[14]~61\ = CARRY((\inst10|u_div|cnt\(14) & !\inst10|u_div|cnt[13]~59\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst10|u_div|cnt\(14),
	datad => VCC,
	cin => \inst10|u_div|cnt[13]~59\,
	combout => \inst10|u_div|cnt[14]~60_combout\,
	cout => \inst10|u_div|cnt[14]~61\);

-- Location: FF_X29_Y16_N29
\inst10|u_div|cnt[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \inst10|u_div|cnt[14]~60_combout\,
	sclr => \inst10|u_div|LessThan0~21_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst10|u_div|cnt\(14));

-- Location: LCCOMB_X29_Y16_N30
\inst10|u_div|cnt[15]~62\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst10|u_div|cnt[15]~62_combout\ = (\inst10|u_div|cnt\(15) & (!\inst10|u_div|cnt[14]~61\)) # (!\inst10|u_div|cnt\(15) & ((\inst10|u_div|cnt[14]~61\) # (GND)))
-- \inst10|u_div|cnt[15]~63\ = CARRY((!\inst10|u_div|cnt[14]~61\) # (!\inst10|u_div|cnt\(15)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst10|u_div|cnt\(15),
	datad => VCC,
	cin => \inst10|u_div|cnt[14]~61\,
	combout => \inst10|u_div|cnt[15]~62_combout\,
	cout => \inst10|u_div|cnt[15]~63\);

-- Location: FF_X29_Y16_N31
\inst10|u_div|cnt[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \inst10|u_div|cnt[15]~62_combout\,
	sclr => \inst10|u_div|LessThan0~21_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst10|u_div|cnt\(15));

-- Location: LCCOMB_X29_Y15_N0
\inst10|u_div|cnt[16]~64\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst10|u_div|cnt[16]~64_combout\ = (\inst10|u_div|cnt\(16) & (\inst10|u_div|cnt[15]~63\ $ (GND))) # (!\inst10|u_div|cnt\(16) & (!\inst10|u_div|cnt[15]~63\ & VCC))
-- \inst10|u_div|cnt[16]~65\ = CARRY((\inst10|u_div|cnt\(16) & !\inst10|u_div|cnt[15]~63\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst10|u_div|cnt\(16),
	datad => VCC,
	cin => \inst10|u_div|cnt[15]~63\,
	combout => \inst10|u_div|cnt[16]~64_combout\,
	cout => \inst10|u_div|cnt[16]~65\);

-- Location: FF_X29_Y15_N1
\inst10|u_div|cnt[16]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \inst10|u_div|cnt[16]~64_combout\,
	sclr => \inst10|u_div|LessThan0~21_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst10|u_div|cnt\(16));

-- Location: LCCOMB_X29_Y15_N2
\inst10|u_div|cnt[17]~66\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst10|u_div|cnt[17]~66_combout\ = (\inst10|u_div|cnt\(17) & (!\inst10|u_div|cnt[16]~65\)) # (!\inst10|u_div|cnt\(17) & ((\inst10|u_div|cnt[16]~65\) # (GND)))
-- \inst10|u_div|cnt[17]~67\ = CARRY((!\inst10|u_div|cnt[16]~65\) # (!\inst10|u_div|cnt\(17)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst10|u_div|cnt\(17),
	datad => VCC,
	cin => \inst10|u_div|cnt[16]~65\,
	combout => \inst10|u_div|cnt[17]~66_combout\,
	cout => \inst10|u_div|cnt[17]~67\);

-- Location: FF_X29_Y15_N3
\inst10|u_div|cnt[17]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \inst10|u_div|cnt[17]~66_combout\,
	sclr => \inst10|u_div|LessThan0~21_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst10|u_div|cnt\(17));

-- Location: LCCOMB_X29_Y15_N4
\inst10|u_div|cnt[18]~68\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst10|u_div|cnt[18]~68_combout\ = (\inst10|u_div|cnt\(18) & (\inst10|u_div|cnt[17]~67\ $ (GND))) # (!\inst10|u_div|cnt\(18) & (!\inst10|u_div|cnt[17]~67\ & VCC))
-- \inst10|u_div|cnt[18]~69\ = CARRY((\inst10|u_div|cnt\(18) & !\inst10|u_div|cnt[17]~67\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst10|u_div|cnt\(18),
	datad => VCC,
	cin => \inst10|u_div|cnt[17]~67\,
	combout => \inst10|u_div|cnt[18]~68_combout\,
	cout => \inst10|u_div|cnt[18]~69\);

-- Location: FF_X29_Y15_N5
\inst10|u_div|cnt[18]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \inst10|u_div|cnt[18]~68_combout\,
	sclr => \inst10|u_div|LessThan0~21_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst10|u_div|cnt\(18));

-- Location: LCCOMB_X29_Y15_N6
\inst10|u_div|cnt[19]~70\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst10|u_div|cnt[19]~70_combout\ = (\inst10|u_div|cnt\(19) & (!\inst10|u_div|cnt[18]~69\)) # (!\inst10|u_div|cnt\(19) & ((\inst10|u_div|cnt[18]~69\) # (GND)))
-- \inst10|u_div|cnt[19]~71\ = CARRY((!\inst10|u_div|cnt[18]~69\) # (!\inst10|u_div|cnt\(19)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst10|u_div|cnt\(19),
	datad => VCC,
	cin => \inst10|u_div|cnt[18]~69\,
	combout => \inst10|u_div|cnt[19]~70_combout\,
	cout => \inst10|u_div|cnt[19]~71\);

-- Location: FF_X29_Y15_N7
\inst10|u_div|cnt[19]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \inst10|u_div|cnt[19]~70_combout\,
	sclr => \inst10|u_div|LessThan0~21_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst10|u_div|cnt\(19));

-- Location: LCCOMB_X29_Y15_N8
\inst10|u_div|cnt[20]~72\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst10|u_div|cnt[20]~72_combout\ = (\inst10|u_div|cnt\(20) & (\inst10|u_div|cnt[19]~71\ $ (GND))) # (!\inst10|u_div|cnt\(20) & (!\inst10|u_div|cnt[19]~71\ & VCC))
-- \inst10|u_div|cnt[20]~73\ = CARRY((\inst10|u_div|cnt\(20) & !\inst10|u_div|cnt[19]~71\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst10|u_div|cnt\(20),
	datad => VCC,
	cin => \inst10|u_div|cnt[19]~71\,
	combout => \inst10|u_div|cnt[20]~72_combout\,
	cout => \inst10|u_div|cnt[20]~73\);

-- Location: FF_X29_Y15_N9
\inst10|u_div|cnt[20]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \inst10|u_div|cnt[20]~72_combout\,
	sclr => \inst10|u_div|LessThan0~21_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst10|u_div|cnt\(20));

-- Location: LCCOMB_X29_Y15_N10
\inst10|u_div|cnt[21]~74\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst10|u_div|cnt[21]~74_combout\ = (\inst10|u_div|cnt\(21) & (!\inst10|u_div|cnt[20]~73\)) # (!\inst10|u_div|cnt\(21) & ((\inst10|u_div|cnt[20]~73\) # (GND)))
-- \inst10|u_div|cnt[21]~75\ = CARRY((!\inst10|u_div|cnt[20]~73\) # (!\inst10|u_div|cnt\(21)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst10|u_div|cnt\(21),
	datad => VCC,
	cin => \inst10|u_div|cnt[20]~73\,
	combout => \inst10|u_div|cnt[21]~74_combout\,
	cout => \inst10|u_div|cnt[21]~75\);

-- Location: FF_X29_Y15_N11
\inst10|u_div|cnt[21]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \inst10|u_div|cnt[21]~74_combout\,
	sclr => \inst10|u_div|LessThan0~21_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst10|u_div|cnt\(21));

-- Location: LCCOMB_X29_Y15_N12
\inst10|u_div|cnt[22]~76\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst10|u_div|cnt[22]~76_combout\ = (\inst10|u_div|cnt\(22) & (\inst10|u_div|cnt[21]~75\ $ (GND))) # (!\inst10|u_div|cnt\(22) & (!\inst10|u_div|cnt[21]~75\ & VCC))
-- \inst10|u_div|cnt[22]~77\ = CARRY((\inst10|u_div|cnt\(22) & !\inst10|u_div|cnt[21]~75\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst10|u_div|cnt\(22),
	datad => VCC,
	cin => \inst10|u_div|cnt[21]~75\,
	combout => \inst10|u_div|cnt[22]~76_combout\,
	cout => \inst10|u_div|cnt[22]~77\);

-- Location: FF_X29_Y15_N13
\inst10|u_div|cnt[22]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \inst10|u_div|cnt[22]~76_combout\,
	sclr => \inst10|u_div|LessThan0~21_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst10|u_div|cnt\(22));

-- Location: LCCOMB_X29_Y15_N14
\inst10|u_div|cnt[23]~78\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst10|u_div|cnt[23]~78_combout\ = (\inst10|u_div|cnt\(23) & (!\inst10|u_div|cnt[22]~77\)) # (!\inst10|u_div|cnt\(23) & ((\inst10|u_div|cnt[22]~77\) # (GND)))
-- \inst10|u_div|cnt[23]~79\ = CARRY((!\inst10|u_div|cnt[22]~77\) # (!\inst10|u_div|cnt\(23)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst10|u_div|cnt\(23),
	datad => VCC,
	cin => \inst10|u_div|cnt[22]~77\,
	combout => \inst10|u_div|cnt[23]~78_combout\,
	cout => \inst10|u_div|cnt[23]~79\);

-- Location: FF_X29_Y15_N15
\inst10|u_div|cnt[23]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \inst10|u_div|cnt[23]~78_combout\,
	sclr => \inst10|u_div|LessThan0~21_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst10|u_div|cnt\(23));

-- Location: LCCOMB_X29_Y15_N16
\inst10|u_div|cnt[24]~80\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst10|u_div|cnt[24]~80_combout\ = (\inst10|u_div|cnt\(24) & (\inst10|u_div|cnt[23]~79\ $ (GND))) # (!\inst10|u_div|cnt\(24) & (!\inst10|u_div|cnt[23]~79\ & VCC))
-- \inst10|u_div|cnt[24]~81\ = CARRY((\inst10|u_div|cnt\(24) & !\inst10|u_div|cnt[23]~79\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst10|u_div|cnt\(24),
	datad => VCC,
	cin => \inst10|u_div|cnt[23]~79\,
	combout => \inst10|u_div|cnt[24]~80_combout\,
	cout => \inst10|u_div|cnt[24]~81\);

-- Location: FF_X29_Y15_N17
\inst10|u_div|cnt[24]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \inst10|u_div|cnt[24]~80_combout\,
	sclr => \inst10|u_div|LessThan0~21_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst10|u_div|cnt\(24));

-- Location: LCCOMB_X29_Y15_N18
\inst10|u_div|cnt[25]~82\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst10|u_div|cnt[25]~82_combout\ = (\inst10|u_div|cnt\(25) & (!\inst10|u_div|cnt[24]~81\)) # (!\inst10|u_div|cnt\(25) & ((\inst10|u_div|cnt[24]~81\) # (GND)))
-- \inst10|u_div|cnt[25]~83\ = CARRY((!\inst10|u_div|cnt[24]~81\) # (!\inst10|u_div|cnt\(25)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst10|u_div|cnt\(25),
	datad => VCC,
	cin => \inst10|u_div|cnt[24]~81\,
	combout => \inst10|u_div|cnt[25]~82_combout\,
	cout => \inst10|u_div|cnt[25]~83\);

-- Location: FF_X29_Y15_N19
\inst10|u_div|cnt[25]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \inst10|u_div|cnt[25]~82_combout\,
	sclr => \inst10|u_div|LessThan0~21_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst10|u_div|cnt\(25));

-- Location: LCCOMB_X29_Y15_N20
\inst10|u_div|cnt[26]~84\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst10|u_div|cnt[26]~84_combout\ = (\inst10|u_div|cnt\(26) & (\inst10|u_div|cnt[25]~83\ $ (GND))) # (!\inst10|u_div|cnt\(26) & (!\inst10|u_div|cnt[25]~83\ & VCC))
-- \inst10|u_div|cnt[26]~85\ = CARRY((\inst10|u_div|cnt\(26) & !\inst10|u_div|cnt[25]~83\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst10|u_div|cnt\(26),
	datad => VCC,
	cin => \inst10|u_div|cnt[25]~83\,
	combout => \inst10|u_div|cnt[26]~84_combout\,
	cout => \inst10|u_div|cnt[26]~85\);

-- Location: FF_X29_Y15_N21
\inst10|u_div|cnt[26]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \inst10|u_div|cnt[26]~84_combout\,
	sclr => \inst10|u_div|LessThan0~21_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst10|u_div|cnt\(26));

-- Location: LCCOMB_X29_Y15_N22
\inst10|u_div|cnt[27]~86\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst10|u_div|cnt[27]~86_combout\ = (\inst10|u_div|cnt\(27) & (!\inst10|u_div|cnt[26]~85\)) # (!\inst10|u_div|cnt\(27) & ((\inst10|u_div|cnt[26]~85\) # (GND)))
-- \inst10|u_div|cnt[27]~87\ = CARRY((!\inst10|u_div|cnt[26]~85\) # (!\inst10|u_div|cnt\(27)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst10|u_div|cnt\(27),
	datad => VCC,
	cin => \inst10|u_div|cnt[26]~85\,
	combout => \inst10|u_div|cnt[27]~86_combout\,
	cout => \inst10|u_div|cnt[27]~87\);

-- Location: FF_X29_Y15_N23
\inst10|u_div|cnt[27]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \inst10|u_div|cnt[27]~86_combout\,
	sclr => \inst10|u_div|LessThan0~21_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst10|u_div|cnt\(27));

-- Location: LCCOMB_X29_Y15_N24
\inst10|u_div|cnt[28]~88\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst10|u_div|cnt[28]~88_combout\ = (\inst10|u_div|cnt\(28) & (\inst10|u_div|cnt[27]~87\ $ (GND))) # (!\inst10|u_div|cnt\(28) & (!\inst10|u_div|cnt[27]~87\ & VCC))
-- \inst10|u_div|cnt[28]~89\ = CARRY((\inst10|u_div|cnt\(28) & !\inst10|u_div|cnt[27]~87\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst10|u_div|cnt\(28),
	datad => VCC,
	cin => \inst10|u_div|cnt[27]~87\,
	combout => \inst10|u_div|cnt[28]~88_combout\,
	cout => \inst10|u_div|cnt[28]~89\);

-- Location: FF_X29_Y15_N25
\inst10|u_div|cnt[28]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \inst10|u_div|cnt[28]~88_combout\,
	sclr => \inst10|u_div|LessThan0~21_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst10|u_div|cnt\(28));

-- Location: LCCOMB_X29_Y15_N26
\inst10|u_div|cnt[29]~90\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst10|u_div|cnt[29]~90_combout\ = (\inst10|u_div|cnt\(29) & (!\inst10|u_div|cnt[28]~89\)) # (!\inst10|u_div|cnt\(29) & ((\inst10|u_div|cnt[28]~89\) # (GND)))
-- \inst10|u_div|cnt[29]~91\ = CARRY((!\inst10|u_div|cnt[28]~89\) # (!\inst10|u_div|cnt\(29)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst10|u_div|cnt\(29),
	datad => VCC,
	cin => \inst10|u_div|cnt[28]~89\,
	combout => \inst10|u_div|cnt[29]~90_combout\,
	cout => \inst10|u_div|cnt[29]~91\);

-- Location: FF_X29_Y15_N27
\inst10|u_div|cnt[29]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \inst10|u_div|cnt[29]~90_combout\,
	sclr => \inst10|u_div|LessThan0~21_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst10|u_div|cnt\(29));

-- Location: LCCOMB_X29_Y15_N28
\inst10|u_div|cnt[30]~92\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst10|u_div|cnt[30]~92_combout\ = (\inst10|u_div|cnt\(30) & (\inst10|u_div|cnt[29]~91\ $ (GND))) # (!\inst10|u_div|cnt\(30) & (!\inst10|u_div|cnt[29]~91\ & VCC))
-- \inst10|u_div|cnt[30]~93\ = CARRY((\inst10|u_div|cnt\(30) & !\inst10|u_div|cnt[29]~91\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst10|u_div|cnt\(30),
	datad => VCC,
	cin => \inst10|u_div|cnt[29]~91\,
	combout => \inst10|u_div|cnt[30]~92_combout\,
	cout => \inst10|u_div|cnt[30]~93\);

-- Location: FF_X29_Y15_N29
\inst10|u_div|cnt[30]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \inst10|u_div|cnt[30]~92_combout\,
	sclr => \inst10|u_div|LessThan0~21_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst10|u_div|cnt\(30));

-- Location: LCCOMB_X29_Y15_N30
\inst10|u_div|cnt[31]~94\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst10|u_div|cnt[31]~94_combout\ = \inst10|u_div|cnt\(31) $ (\inst10|u_div|cnt[30]~93\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst10|u_div|cnt\(31),
	cin => \inst10|u_div|cnt[30]~93\,
	combout => \inst10|u_div|cnt[31]~94_combout\);

-- Location: FF_X29_Y15_N31
\inst10|u_div|cnt[31]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \inst10|u_div|cnt[31]~94_combout\,
	sclr => \inst10|u_div|LessThan0~21_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst10|u_div|cnt\(31));

-- Location: LCCOMB_X31_Y16_N0
\inst10|u_div|toggle~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst10|u_div|toggle~0_combout\ = \inst10|u_div|toggle~q\ $ (((!\inst10|u_div|cnt\(31) & !\inst10|u_div|LessThan0~20_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011000011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst10|u_div|cnt\(31),
	datac => \inst10|u_div|toggle~q\,
	datad => \inst10|u_div|LessThan0~20_combout\,
	combout => \inst10|u_div|toggle~0_combout\);

-- Location: FF_X31_Y16_N1
\inst10|u_div|toggle\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \inst10|u_div|toggle~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst10|u_div|toggle~q\);

-- Location: LCCOMB_X31_Y14_N14
\inst10|buzzer~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst10|buzzer~0_combout\ = (\inst10|run_en~q\ & \inst10|u_div|toggle~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst10|run_en~q\,
	datad => \inst10|u_div|toggle~q\,
	combout => \inst10|buzzer~0_combout\);

-- Location: LCCOMB_X22_Y15_N18
\inst2|Selector38~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|Selector38~0_combout\ = (\inst1|lcd_enable~q\ & (!\inst1|lcd_bus\(9) & \inst2|estado.PRONTO~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst1|lcd_enable~q\,
	datac => \inst1|lcd_bus\(9),
	datad => \inst2|estado.PRONTO~q\,
	combout => \inst2|Selector38~0_combout\);

-- Location: LCCOMB_X22_Y15_N16
\inst2|lcd_data[2]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|lcd_data[2]~2_combout\ = (!\inst2|estado.ENVIAR~q\ & (\inst2|rs~3_combout\ & ((!\inst2|busy~11_combout\) # (!\inst2|estado.INICIALIZACAO~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|estado.ENVIAR~q\,
	datab => \inst2|estado.INICIALIZACAO~q\,
	datac => \inst2|rs~3_combout\,
	datad => \inst2|busy~11_combout\,
	combout => \inst2|lcd_data[2]~2_combout\);

-- Location: FF_X22_Y15_N19
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

-- Location: LCCOMB_X25_Y16_N6
\inst1|Mux3~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|Mux3~4_combout\ = (\inst3|stable\(1) & ((\inst1|char\(0)) # (!\inst1|LessThan0~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst1|LessThan0~0_combout\,
	datac => \inst3|stable\(1),
	datad => \inst1|char\(0),
	combout => \inst1|Mux3~4_combout\);

-- Location: LCCOMB_X25_Y17_N6
\inst1|Add0~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|Add0~3_combout\ = \inst1|char\(1) $ (\inst1|char\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst1|char\(1),
	datac => \inst1|char\(0),
	combout => \inst1|Add0~3_combout\);

-- Location: LCCOMB_X25_Y17_N20
\inst1|Mux3~13\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|Mux3~13_combout\ = (\inst1|LessThan0~0_combout\ & ((\inst1|Add0~3_combout\) # (\inst1|Add0~0_combout\ $ (\inst1|char\(4)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|LessThan0~0_combout\,
	datab => \inst1|Add0~0_combout\,
	datac => \inst1|char\(4),
	datad => \inst1|Add0~3_combout\,
	combout => \inst1|Mux3~13_combout\);

-- Location: LCCOMB_X25_Y16_N12
\inst1|lcd_bus[6]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|lcd_bus[6]~0_combout\ = (\inst1|Mux3~13_combout\ & ((\inst1|lcd_bus\(6)))) # (!\inst1|Mux3~13_combout\ & (\inst1|Mux3~4_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|Mux3~4_combout\,
	datac => \inst1|lcd_bus\(6),
	datad => \inst1|Mux3~13_combout\,
	combout => \inst1|lcd_bus[6]~0_combout\);

-- Location: LCCOMB_X24_Y16_N20
\inst1|lcd_bus[6]~27\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|lcd_bus[6]~27_combout\ = (\inst1|char\(0) & (\inst1|char\(1) $ ((\inst1|char\(2))))) # (!\inst1|char\(0) & (((\inst1|char\(2)) # (\inst1|Add0~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110111101101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|char\(1),
	datab => \inst1|char\(2),
	datac => \inst1|char\(0),
	datad => \inst1|Add0~1_combout\,
	combout => \inst1|lcd_bus[6]~27_combout\);

-- Location: LCCOMB_X24_Y16_N14
\inst1|lcd_bus[6]~26\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|lcd_bus[6]~26_combout\ = (\inst1|char~1_combout\ & (((\inst1|Add0~1_combout\) # (!\inst3|stable\(1))) # (!\inst1|char~4_combout\))) # (!\inst1|char~1_combout\ & (((\inst3|stable\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110001111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|char~4_combout\,
	datab => \inst1|char~1_combout\,
	datac => \inst3|stable\(1),
	datad => \inst1|Add0~1_combout\,
	combout => \inst1|lcd_bus[6]~26_combout\);

-- Location: LCCOMB_X24_Y16_N26
\inst1|lcd_bus[6]~28\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|lcd_bus[6]~28_combout\ = (\inst1|char~2_combout\ & (((\inst1|lcd_bus[6]~26_combout\)))) # (!\inst1|char~2_combout\ & (\inst1|LessThan0~0_combout\ & (\inst1|lcd_bus[6]~27_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|LessThan0~0_combout\,
	datab => \inst1|lcd_bus[6]~27_combout\,
	datac => \inst1|lcd_bus[6]~26_combout\,
	datad => \inst1|char~2_combout\,
	combout => \inst1|lcd_bus[6]~28_combout\);

-- Location: LCCOMB_X25_Y16_N0
\inst1|lcd_bus[6]~24\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|lcd_bus[6]~24_combout\ = (\inst1|char~4_combout\ & (\inst3|stable\(1) $ (((\inst1|lcd_bus[0]~23_combout\) # (!\inst1|char~2_combout\))))) # (!\inst1|char~4_combout\ & ((\inst1|lcd_bus[0]~23_combout\ $ (\inst1|char~2_combout\)) # 
-- (!\inst3|stable\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110001101111011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|lcd_bus[0]~23_combout\,
	datab => \inst3|stable\(1),
	datac => \inst1|char~2_combout\,
	datad => \inst1|char~4_combout\,
	combout => \inst1|lcd_bus[6]~24_combout\);

-- Location: LCCOMB_X25_Y16_N2
\inst1|lcd_bus[6]~25\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|lcd_bus[6]~25_combout\ = (\inst1|char~3_combout\ & ((\inst1|char~1_combout\ & (\inst3|stable\(1))) # (!\inst1|char~1_combout\ & ((\inst1|lcd_bus[6]~24_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100010010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|char~1_combout\,
	datab => \inst1|char~3_combout\,
	datac => \inst3|stable\(1),
	datad => \inst1|lcd_bus[6]~24_combout\,
	combout => \inst1|lcd_bus[6]~25_combout\);

-- Location: LCCOMB_X25_Y16_N26
\inst1|lcd_bus[6]~53\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|lcd_bus[6]~53_combout\ = (\inst1|lcd_bus[6]~25_combout\) # ((\inst1|lcd_bus[6]~28_combout\ & ((!\inst1|Add0~2_combout\) # (!\inst1|LessThan0~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|lcd_bus[6]~28_combout\,
	datab => \inst1|LessThan0~0_combout\,
	datac => \inst1|Add0~2_combout\,
	datad => \inst1|lcd_bus[6]~25_combout\,
	combout => \inst1|lcd_bus[6]~53_combout\);

-- Location: FF_X25_Y16_N13
\inst1|lcd_bus[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \inst1|lcd_bus[6]~0_combout\,
	asdata => \inst1|lcd_bus[6]~53_combout\,
	sload => \inst1|char~0_combout\,
	ena => \inst1|process_0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|lcd_bus\(6));

-- Location: LCCOMB_X22_Y15_N4
\inst2|Selector39~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|Selector39~0_combout\ = (\inst2|estado.PRONTO~q\ & (\inst1|lcd_bus\(6) & \inst1|lcd_enable~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst2|estado.PRONTO~q\,
	datac => \inst1|lcd_bus\(6),
	datad => \inst1|lcd_enable~q\,
	combout => \inst2|Selector39~0_combout\);

-- Location: FF_X22_Y15_N5
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

-- Location: LCCOMB_X25_Y16_N30
\inst1|lcd_bus[5]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|lcd_bus[5]~1_combout\ = (\inst1|Mux3~13_combout\ & ((\inst1|lcd_bus\(5)))) # (!\inst1|Mux3~13_combout\ & (!\inst1|Mux3~4_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000001010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|Mux3~4_combout\,
	datac => \inst1|lcd_bus\(5),
	datad => \inst1|Mux3~13_combout\,
	combout => \inst1|lcd_bus[5]~1_combout\);

-- Location: LCCOMB_X25_Y17_N8
\inst1|lcd_bus[5]~29\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|lcd_bus[5]~29_combout\ = (\inst1|char~4_combout\ & (\inst3|stable\(1) $ (((\inst1|char~2_combout\ & !\inst1|lcd_bus[0]~23_combout\))))) # (!\inst1|char~4_combout\ & (\inst3|stable\(1) & (\inst1|char~2_combout\ $ (!\inst1|lcd_bus[0]~23_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010011010000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|stable\(1),
	datab => \inst1|char~2_combout\,
	datac => \inst1|lcd_bus[0]~23_combout\,
	datad => \inst1|char~4_combout\,
	combout => \inst1|lcd_bus[5]~29_combout\);

-- Location: LCCOMB_X25_Y17_N18
\inst1|lcd_bus[5]~30\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|lcd_bus[5]~30_combout\ = (\inst1|char~2_combout\ & (!\inst3|stable\(1))) # (!\inst1|char~2_combout\ & ((\inst1|lcd_bus[0]~23_combout\ $ (\inst1|char~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100011101110100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|stable\(1),
	datab => \inst1|char~2_combout\,
	datac => \inst1|lcd_bus[0]~23_combout\,
	datad => \inst1|char~4_combout\,
	combout => \inst1|lcd_bus[5]~30_combout\);

-- Location: LCCOMB_X25_Y17_N12
\inst1|lcd_bus[5]~31\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|lcd_bus[5]~31_combout\ = (!\inst1|char~1_combout\ & ((\inst1|char~3_combout\ & (\inst1|lcd_bus[5]~29_combout\)) # (!\inst1|char~3_combout\ & ((\inst1|lcd_bus[5]~30_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000100100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|char~3_combout\,
	datab => \inst1|char~1_combout\,
	datac => \inst1|lcd_bus[5]~29_combout\,
	datad => \inst1|lcd_bus[5]~30_combout\,
	combout => \inst1|lcd_bus[5]~31_combout\);

-- Location: LCCOMB_X24_Y17_N12
\inst1|lcd_bus[5]~32\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|lcd_bus[5]~32_combout\ = (\inst1|char\(1) & (!\inst1|char\(5) & (!\inst1|char\(0) & \inst3|stable\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|char\(1),
	datab => \inst1|char\(5),
	datac => \inst1|char\(0),
	datad => \inst3|stable\(1),
	combout => \inst1|lcd_bus[5]~32_combout\);

-- Location: LCCOMB_X25_Y16_N28
\inst1|lcd_bus[5]~33\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|lcd_bus[5]~33_combout\ = (\inst1|lcd_bus[5]~32_combout\ & ((\inst1|lcd_bus[5]~21_combout\) # ((!\inst3|stable\(1) & \inst1|char~3_combout\)))) # (!\inst1|lcd_bus[5]~32_combout\ & (((!\inst3|stable\(1) & \inst1|char~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000111110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|lcd_bus[5]~32_combout\,
	datab => \inst1|lcd_bus[5]~21_combout\,
	datac => \inst3|stable\(1),
	datad => \inst1|char~3_combout\,
	combout => \inst1|lcd_bus[5]~33_combout\);

-- Location: LCCOMB_X25_Y16_N22
\inst1|lcd_bus[5]~34\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|lcd_bus[5]~34_combout\ = (\inst1|lcd_bus[5]~31_combout\) # ((\inst1|char~1_combout\ & \inst1|lcd_bus[5]~33_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst1|char~1_combout\,
	datac => \inst1|lcd_bus[5]~31_combout\,
	datad => \inst1|lcd_bus[5]~33_combout\,
	combout => \inst1|lcd_bus[5]~34_combout\);

-- Location: FF_X25_Y16_N31
\inst1|lcd_bus[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \inst1|lcd_bus[5]~1_combout\,
	asdata => \inst1|lcd_bus[5]~34_combout\,
	sload => \inst1|char~0_combout\,
	ena => \inst1|process_0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|lcd_bus\(5));

-- Location: LCCOMB_X22_Y11_N24
\inst2|Selector40~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|Selector40~2_combout\ = (!\inst2|estado.PRONTO~q\ & (!\inst2|Add0~60_combout\ & (\inst2|LessThan1~1_combout\ & \inst2|LessThan3~8_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|estado.PRONTO~q\,
	datab => \inst2|Add0~60_combout\,
	datac => \inst2|LessThan1~1_combout\,
	datad => \inst2|LessThan3~8_combout\,
	combout => \inst2|Selector40~2_combout\);

-- Location: LCCOMB_X22_Y15_N10
\inst2|Selector40~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|Selector40~3_combout\ = (\inst2|Selector40~2_combout\) # ((!\inst2|estado.PRONTO~q\ & ((\inst2|Add0~62_combout\) # (!\inst2|estado.INICIALIZACAO~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100110001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|estado.INICIALIZACAO~q\,
	datab => \inst2|estado.PRONTO~q\,
	datac => \inst2|Add0~62_combout\,
	datad => \inst2|Selector40~2_combout\,
	combout => \inst2|Selector40~3_combout\);

-- Location: LCCOMB_X22_Y15_N22
\inst2|Selector40~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|Selector40~4_combout\ = (\inst2|Selector40~3_combout\) # ((\inst2|estado.PRONTO~q\ & (\inst1|lcd_enable~q\ & \inst1|lcd_bus\(5))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|estado.PRONTO~q\,
	datab => \inst1|lcd_enable~q\,
	datac => \inst1|lcd_bus\(5),
	datad => \inst2|Selector40~3_combout\,
	combout => \inst2|Selector40~4_combout\);

-- Location: FF_X22_Y15_N23
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

-- Location: LCCOMB_X25_Y17_N10
\inst1|lcd_bus[4]~55\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|lcd_bus[4]~55_combout\ = (\inst1|LessThan0~0_combout\ & (\inst3|stable\(1) & (\inst1|char\(1) $ (\inst1|char\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|LessThan0~0_combout\,
	datab => \inst1|char\(1),
	datac => \inst1|char\(0),
	datad => \inst3|stable\(1),
	combout => \inst1|lcd_bus[4]~55_combout\);

-- Location: LCCOMB_X25_Y17_N16
\inst1|lcd_bus[4]~54\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|lcd_bus[4]~54_combout\ = (\inst1|char\(0) & (((\inst1|lcd_bus[0]~23_combout\)))) # (!\inst1|char\(0) & (!\inst1|char~1_combout\ & (\inst1|LessThan0~0_combout\ $ (\inst1|lcd_bus[0]~23_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000100000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|LessThan0~0_combout\,
	datab => \inst1|char~1_combout\,
	datac => \inst1|char\(0),
	datad => \inst1|lcd_bus[0]~23_combout\,
	combout => \inst1|lcd_bus[4]~54_combout\);

-- Location: LCCOMB_X25_Y17_N22
\inst1|lcd_bus[4]~36\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|lcd_bus[4]~36_combout\ = (\inst1|char~1_combout\ & (!\inst1|char~2_combout\ & ((!\inst1|lcd_bus[0]~23_combout\) # (!\inst1|char~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|char~4_combout\,
	datab => \inst1|char~1_combout\,
	datac => \inst1|char~2_combout\,
	datad => \inst1|lcd_bus[0]~23_combout\,
	combout => \inst1|lcd_bus[4]~36_combout\);

-- Location: LCCOMB_X26_Y17_N2
\inst1|lcd_bus[4]~35\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|lcd_bus[4]~35_combout\ = ((\inst1|char\(0) $ (\inst1|Add0~1_combout\)) # (!\inst3|stable\(1))) # (!\inst1|LessThan0~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111111111011111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|LessThan0~0_combout\,
	datab => \inst1|char\(0),
	datac => \inst3|stable\(1),
	datad => \inst1|Add0~1_combout\,
	combout => \inst1|lcd_bus[4]~35_combout\);

-- Location: LCCOMB_X25_Y17_N24
\inst1|lcd_bus[4]~37\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|lcd_bus[4]~37_combout\ = (\inst1|lcd_bus[4]~55_combout\ & ((\inst1|lcd_bus[4]~54_combout\) # ((\inst1|lcd_bus[4]~36_combout\ & \inst1|lcd_bus[4]~35_combout\)))) # (!\inst1|lcd_bus[4]~55_combout\ & (((\inst1|lcd_bus[4]~36_combout\ & 
-- \inst1|lcd_bus[4]~35_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|lcd_bus[4]~55_combout\,
	datab => \inst1|lcd_bus[4]~54_combout\,
	datac => \inst1|lcd_bus[4]~36_combout\,
	datad => \inst1|lcd_bus[4]~35_combout\,
	combout => \inst1|lcd_bus[4]~37_combout\);

-- Location: LCCOMB_X26_Y17_N0
\inst1|lcd_bus[4]~38\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|lcd_bus[4]~38_combout\ = (\inst1|char\(1) & (((\inst1|Add0~1_combout\)))) # (!\inst1|char\(1) & ((\inst3|stable\(1) & (\inst1|char\(0))) # (!\inst3|stable\(1) & ((\inst1|Add0~1_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111101000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|char\(1),
	datab => \inst1|char\(0),
	datac => \inst3|stable\(1),
	datad => \inst1|Add0~1_combout\,
	combout => \inst1|lcd_bus[4]~38_combout\);

-- Location: LCCOMB_X25_Y17_N26
\inst1|lcd_bus[4]~39\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|lcd_bus[4]~39_combout\ = (\inst1|LessThan0~0_combout\ & (\inst1|lcd_bus[4]~38_combout\ $ (((!\inst3|stable\(1) & \inst1|Add0~3_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|stable\(1),
	datab => \inst1|lcd_bus[4]~38_combout\,
	datac => \inst1|LessThan0~0_combout\,
	datad => \inst1|Add0~3_combout\,
	combout => \inst1|lcd_bus[4]~39_combout\);

-- Location: LCCOMB_X25_Y17_N4
\inst1|lcd_bus[4]~40\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|lcd_bus[4]~40_combout\ = (\inst3|stable\(1) & (\inst1|char~1_combout\ & (\inst1|lcd_bus[4]~39_combout\))) # (!\inst3|stable\(1) & (!\inst1|char~1_combout\ & (!\inst1|lcd_bus[4]~39_combout\ & \inst1|char~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000110000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|stable\(1),
	datab => \inst1|char~1_combout\,
	datac => \inst1|lcd_bus[4]~39_combout\,
	datad => \inst1|char~4_combout\,
	combout => \inst1|lcd_bus[4]~40_combout\);

-- Location: LCCOMB_X24_Y17_N0
\inst1|lcd_bus[4]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|lcd_bus[4]~2_combout\ = (\inst1|char~3_combout\ & ((\inst1|lcd_bus[4]~40_combout\))) # (!\inst1|char~3_combout\ & (\inst1|lcd_bus[4]~37_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|char~3_combout\,
	datab => \inst1|lcd_bus[4]~37_combout\,
	datad => \inst1|lcd_bus[4]~40_combout\,
	combout => \inst1|lcd_bus[4]~2_combout\);

-- Location: LCCOMB_X24_Y17_N26
\inst1|Mux3~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|Mux3~5_combout\ = (\inst1|lcd_bus\(4) & ((\inst1|Add0~3_combout\) # (\inst1|Add0~0_combout\ $ (\inst1|char\(4)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011111000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|Add0~3_combout\,
	datab => \inst1|Add0~0_combout\,
	datac => \inst1|char\(4),
	datad => \inst1|lcd_bus\(4),
	combout => \inst1|Mux3~5_combout\);

-- Location: FF_X24_Y17_N1
\inst1|lcd_bus[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \inst1|lcd_bus[4]~2_combout\,
	asdata => \inst1|Mux3~5_combout\,
	sload => \inst1|ALT_INV_char~0_combout\,
	ena => \inst1|process_0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|lcd_bus\(4));

-- Location: LCCOMB_X22_Y15_N8
\inst2|Selector41~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|Selector41~2_combout\ = (\inst2|Selector40~3_combout\) # ((\inst2|estado.PRONTO~q\ & (\inst1|lcd_enable~q\ & \inst1|lcd_bus\(4))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|estado.PRONTO~q\,
	datab => \inst1|lcd_enable~q\,
	datac => \inst1|lcd_bus\(4),
	datad => \inst2|Selector40~3_combout\,
	combout => \inst2|Selector41~2_combout\);

-- Location: FF_X22_Y15_N9
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

-- Location: LCCOMB_X26_Y17_N18
\inst1|lcd_bus[3]~57\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|lcd_bus[3]~57_combout\ = (\inst1|LessThan0~0_combout\ & ((\inst1|char\(4) $ (\inst1|Add0~0_combout\)) # (!\inst3|stable\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|char\(4),
	datab => \inst1|Add0~0_combout\,
	datac => \inst3|stable\(1),
	datad => \inst1|LessThan0~0_combout\,
	combout => \inst1|lcd_bus[3]~57_combout\);

-- Location: LCCOMB_X26_Y17_N22
\inst1|lcd_bus[3]~42\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|lcd_bus[3]~42_combout\ = (\inst1|char~2_combout\ & ((\inst3|stable\(1) & (\inst1|char~1_combout\ & \inst1|lcd_bus[3]~57_combout\)) # (!\inst3|stable\(1) & (!\inst1|char~1_combout\)))) # (!\inst1|char~2_combout\ & (\inst3|stable\(1) & 
-- (\inst1|char~1_combout\ $ (\inst1|lcd_bus[3]~57_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000011001000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|char~2_combout\,
	datab => \inst3|stable\(1),
	datac => \inst1|char~1_combout\,
	datad => \inst1|lcd_bus[3]~57_combout\,
	combout => \inst1|lcd_bus[3]~42_combout\);

-- Location: LCCOMB_X25_Y17_N14
\inst1|lcd_bus[3]~43\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|lcd_bus[3]~43_combout\ = (\inst1|lcd_bus[3]~42_combout\ & ((\inst1|char\(0)) # (!\inst1|lcd_bus[3]~57_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst1|lcd_bus[3]~42_combout\,
	datac => \inst1|char\(0),
	datad => \inst1|lcd_bus[3]~57_combout\,
	combout => \inst1|lcd_bus[3]~43_combout\);

-- Location: LCCOMB_X24_Y17_N4
\inst1|lcd_bus[3]~41\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|lcd_bus[3]~41_combout\ = (\inst3|stable\(1) & (\inst1|char~4_combout\ $ (\inst1|lcd_bus[0]~23_combout\ $ (\inst1|char~2_combout\)))) # (!\inst3|stable\(1) & (\inst1|char~2_combout\ & ((!\inst1|lcd_bus[0]~23_combout\) # (!\inst1|char~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011100101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|stable\(1),
	datab => \inst1|char~4_combout\,
	datac => \inst1|lcd_bus[0]~23_combout\,
	datad => \inst1|char~2_combout\,
	combout => \inst1|lcd_bus[3]~41_combout\);

-- Location: LCCOMB_X24_Y17_N18
\inst1|lcd_bus[3]~56\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|lcd_bus[3]~56_combout\ = (\inst1|char~1_combout\ & (((\inst1|lcd_bus[3]~41_combout\)))) # (!\inst1|char~1_combout\ & (\inst1|lcd_bus[5]~32_combout\ & ((\inst1|char\(4)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|lcd_bus[5]~32_combout\,
	datab => \inst1|lcd_bus[3]~41_combout\,
	datac => \inst1|char\(4),
	datad => \inst1|char~1_combout\,
	combout => \inst1|lcd_bus[3]~56_combout\);

-- Location: LCCOMB_X24_Y17_N2
\inst1|lcd_bus[3]~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|lcd_bus[3]~3_combout\ = (\inst1|char~3_combout\ & (\inst1|lcd_bus[3]~43_combout\)) # (!\inst1|char~3_combout\ & ((\inst1|lcd_bus[3]~56_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|char~3_combout\,
	datab => \inst1|lcd_bus[3]~43_combout\,
	datad => \inst1|lcd_bus[3]~56_combout\,
	combout => \inst1|lcd_bus[3]~3_combout\);

-- Location: LCCOMB_X24_Y17_N22
\inst1|Mux3~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|Mux3~7_combout\ = (\inst1|lcd_bus\(3) & ((\inst1|Add0~3_combout\) # (\inst1|Add0~0_combout\ $ (\inst1|char\(4)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011111000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|Add0~3_combout\,
	datab => \inst1|Add0~0_combout\,
	datac => \inst1|char\(4),
	datad => \inst1|lcd_bus\(3),
	combout => \inst1|Mux3~7_combout\);

-- Location: FF_X24_Y17_N3
\inst1|lcd_bus[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \inst1|lcd_bus[3]~3_combout\,
	asdata => \inst1|Mux3~7_combout\,
	sload => \inst1|ALT_INV_char~0_combout\,
	ena => \inst1|process_0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|lcd_bus\(3));

-- Location: LCCOMB_X22_Y15_N24
\inst2|Selector42~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|Selector42~1_combout\ = (\inst2|Add0~62_combout\) # ((!\inst2|Add0~60_combout\ & ((\inst2|LessThan1~2_combout\) # (\inst2|Selector42~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101110111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|Add0~62_combout\,
	datab => \inst2|Add0~60_combout\,
	datac => \inst2|LessThan1~2_combout\,
	datad => \inst2|Selector42~0_combout\,
	combout => \inst2|Selector42~1_combout\);

-- Location: LCCOMB_X22_Y15_N26
\inst2|Selector42~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|Selector42~2_combout\ = (\inst2|rs~0_combout\ & (\inst1|lcd_bus\(3))) # (!\inst2|rs~0_combout\ & (((\inst2|estado.INICIALIZACAO~q\ & \inst2|Selector42~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|rs~0_combout\,
	datab => \inst1|lcd_bus\(3),
	datac => \inst2|estado.INICIALIZACAO~q\,
	datad => \inst2|Selector42~1_combout\,
	combout => \inst2|Selector42~2_combout\);

-- Location: FF_X22_Y15_N27
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

-- Location: LCCOMB_X25_Y17_N0
\inst1|Mux3~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|Mux3~8_combout\ = (\inst1|char~2_combout\ & (!\inst1|char~4_combout\ & ((!\inst1|lcd_bus[0]~23_combout\) # (!\inst3|stable\(1))))) # (!\inst1|char~2_combout\ & ((\inst3|stable\(1) & ((!\inst1|char~4_combout\) # (!\inst1|lcd_bus[0]~23_combout\))) # 
-- (!\inst3|stable\(1) & (\inst1|lcd_bus[0]~23_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000011001111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|stable\(1),
	datab => \inst1|lcd_bus[0]~23_combout\,
	datac => \inst1|char~2_combout\,
	datad => \inst1|char~4_combout\,
	combout => \inst1|Mux3~8_combout\);

-- Location: LCCOMB_X24_Y17_N24
\inst1|lcd_bus[2]~58\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|lcd_bus[2]~58_combout\ = (\inst1|char~1_combout\ & (((\inst1|Mux3~8_combout\)))) # (!\inst1|char~1_combout\ & (\inst1|char\(4) & ((\inst1|lcd_bus[5]~32_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110001011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|char\(4),
	datab => \inst1|char~1_combout\,
	datac => \inst1|Mux3~8_combout\,
	datad => \inst1|lcd_bus[5]~32_combout\,
	combout => \inst1|lcd_bus[2]~58_combout\);

-- Location: LCCOMB_X26_Y17_N10
\inst1|lcd_bus[2]~45\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|lcd_bus[2]~45_combout\ = ((\inst1|char\(1) & ((\inst1|char\(0)) # (!\inst1|Add0~1_combout\)))) # (!\inst1|LessThan0~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111100101111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|char\(1),
	datab => \inst1|Add0~1_combout\,
	datac => \inst1|LessThan0~0_combout\,
	datad => \inst1|char\(0),
	combout => \inst1|lcd_bus[2]~45_combout\);

-- Location: LCCOMB_X26_Y17_N24
\inst1|lcd_bus[2]~44\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|lcd_bus[2]~44_combout\ = (!\inst1|char~1_combout\ & (((!\inst1|char~2_combout\ & !\inst3|stable\(1))) # (!\inst1|char~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000011111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|char~2_combout\,
	datab => \inst3|stable\(1),
	datac => \inst1|char~4_combout\,
	datad => \inst1|char~1_combout\,
	combout => \inst1|lcd_bus[2]~44_combout\);

-- Location: LCCOMB_X25_Y17_N2
\inst1|lcd_bus[2]~46\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|lcd_bus[2]~46_combout\ = (\inst1|lcd_bus[2]~44_combout\) # ((\inst3|stable\(1) & \inst1|lcd_bus[2]~45_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|stable\(1),
	datac => \inst1|lcd_bus[2]~45_combout\,
	datad => \inst1|lcd_bus[2]~44_combout\,
	combout => \inst1|lcd_bus[2]~46_combout\);

-- Location: LCCOMB_X24_Y17_N16
\inst1|lcd_bus[2]~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|lcd_bus[2]~4_combout\ = (\inst1|char~3_combout\ & ((\inst1|lcd_bus[2]~46_combout\))) # (!\inst1|char~3_combout\ & (\inst1|lcd_bus[2]~58_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|char~3_combout\,
	datab => \inst1|lcd_bus[2]~58_combout\,
	datad => \inst1|lcd_bus[2]~46_combout\,
	combout => \inst1|lcd_bus[2]~4_combout\);

-- Location: LCCOMB_X24_Y17_N8
\inst1|Mux3~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|Mux3~9_combout\ = (\inst1|lcd_bus\(2) & ((\inst1|Add0~3_combout\) # (\inst1|Add0~0_combout\ $ (\inst1|char\(4)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011111000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|Add0~3_combout\,
	datab => \inst1|Add0~0_combout\,
	datac => \inst1|char\(4),
	datad => \inst1|lcd_bus\(2),
	combout => \inst1|Mux3~9_combout\);

-- Location: FF_X24_Y17_N17
\inst1|lcd_bus[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \inst1|lcd_bus[2]~4_combout\,
	asdata => \inst1|Mux3~9_combout\,
	sload => \inst1|ALT_INV_char~0_combout\,
	ena => \inst1|process_0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|lcd_bus\(2));

-- Location: LCCOMB_X23_Y15_N10
\inst2|Selector45~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|Selector45~0_combout\ = (!\inst2|rs~0_combout\ & (!\inst2|Add0~62_combout\ & (!\inst2|Add0~60_combout\ & \inst2|estado.INICIALIZACAO~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|rs~0_combout\,
	datab => \inst2|Add0~62_combout\,
	datac => \inst2|Add0~60_combout\,
	datad => \inst2|estado.INICIALIZACAO~q\,
	combout => \inst2|Selector45~0_combout\);

-- Location: LCCOMB_X23_Y15_N12
\inst2|Selector43~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|Selector43~2_combout\ = (\inst2|LessThan7~2_combout\ & !\inst2|busy~9_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst2|LessThan7~2_combout\,
	datad => \inst2|busy~9_combout\,
	combout => \inst2|Selector43~2_combout\);

-- Location: LCCOMB_X23_Y15_N18
\inst2|Selector43~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|Selector43~3_combout\ = (\inst2|Selector43~2_combout\ & ((\inst2|Add0~60_combout\) # ((!\inst2|LessThan4~3_combout\ & !\inst2|LessThan5~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|LessThan4~3_combout\,
	datab => \inst2|LessThan5~4_combout\,
	datac => \inst2|Add0~60_combout\,
	datad => \inst2|Selector43~2_combout\,
	combout => \inst2|Selector43~3_combout\);

-- Location: LCCOMB_X23_Y15_N28
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

-- Location: LCCOMB_X23_Y15_N24
\inst2|Selector43~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|Selector43~5_combout\ = (\inst2|Selector43~4_combout\) # ((\inst1|lcd_bus\(2) & (\inst2|estado.PRONTO~q\ & \inst1|lcd_enable~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|lcd_bus\(2),
	datab => \inst2|estado.PRONTO~q\,
	datac => \inst1|lcd_enable~q\,
	datad => \inst2|Selector43~4_combout\,
	combout => \inst2|Selector43~5_combout\);

-- Location: FF_X23_Y15_N25
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

-- Location: LCCOMB_X26_Y17_N16
\inst1|lcd_bus[1]~47\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|lcd_bus[1]~47_combout\ = (\inst1|char~2_combout\ & (!\inst3|stable\(1))) # (!\inst1|char~2_combout\ & ((\inst1|char~4_combout\ & ((!\inst1|lcd_bus[0]~23_combout\))) # (!\inst1|char~4_combout\ & (!\inst3|stable\(1) & 
-- \inst1|lcd_bus[0]~23_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010001101110010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|char~2_combout\,
	datab => \inst3|stable\(1),
	datac => \inst1|char~4_combout\,
	datad => \inst1|lcd_bus[0]~23_combout\,
	combout => \inst1|lcd_bus[1]~47_combout\);

-- Location: LCCOMB_X25_Y17_N28
\inst1|lcd_bus[1]~48\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|lcd_bus[1]~48_combout\ = (\inst1|char~1_combout\ & ((\inst1|lcd_bus[1]~47_combout\) # ((\inst1|lcd_bus[4]~55_combout\ & !\inst1|char~4_combout\)))) # (!\inst1|char~1_combout\ & (\inst1|lcd_bus[4]~55_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110001011101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|lcd_bus[4]~55_combout\,
	datab => \inst1|char~1_combout\,
	datac => \inst1|lcd_bus[1]~47_combout\,
	datad => \inst1|char~4_combout\,
	combout => \inst1|lcd_bus[1]~48_combout\);

-- Location: LCCOMB_X24_Y17_N30
\inst1|lcd_bus[1]~49\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|lcd_bus[1]~49_combout\ = (\inst3|stable\(1) & (((!\inst1|char~4_combout\)))) # (!\inst3|stable\(1) & (\inst1|char~2_combout\ & ((\inst1|lcd_bus[0]~23_combout\) # (!\inst1|char~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000011101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|stable\(1),
	datab => \inst1|char~2_combout\,
	datac => \inst1|lcd_bus[0]~23_combout\,
	datad => \inst1|char~4_combout\,
	combout => \inst1|lcd_bus[1]~49_combout\);

-- Location: LCCOMB_X24_Y17_N10
\inst1|lcd_bus[1]~59\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|lcd_bus[1]~59_combout\ = (\inst1|char~1_combout\ & (\inst1|lcd_bus[5]~32_combout\ & (\inst1|char\(4)))) # (!\inst1|char~1_combout\ & (((\inst1|lcd_bus[1]~49_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011001110000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|lcd_bus[5]~32_combout\,
	datab => \inst1|char~1_combout\,
	datac => \inst1|char\(4),
	datad => \inst1|lcd_bus[1]~49_combout\,
	combout => \inst1|lcd_bus[1]~59_combout\);

-- Location: LCCOMB_X24_Y17_N6
\inst1|lcd_bus[1]~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|lcd_bus[1]~5_combout\ = (\inst1|char~3_combout\ & ((\inst1|lcd_bus[1]~59_combout\))) # (!\inst1|char~3_combout\ & (\inst1|lcd_bus[1]~48_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|char~3_combout\,
	datab => \inst1|lcd_bus[1]~48_combout\,
	datad => \inst1|lcd_bus[1]~59_combout\,
	combout => \inst1|lcd_bus[1]~5_combout\);

-- Location: LCCOMB_X24_Y17_N28
\inst1|Mux3~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|Mux3~10_combout\ = (\inst1|lcd_bus\(1) & ((\inst1|Add0~3_combout\) # (\inst1|Add0~0_combout\ $ (\inst1|char\(4)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|lcd_bus\(1),
	datab => \inst1|Add0~0_combout\,
	datac => \inst1|char\(4),
	datad => \inst1|Add0~3_combout\,
	combout => \inst1|Mux3~10_combout\);

-- Location: FF_X24_Y17_N7
\inst1|lcd_bus[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \inst1|lcd_bus[1]~5_combout\,
	asdata => \inst1|Mux3~10_combout\,
	sload => \inst1|ALT_INV_char~0_combout\,
	ena => \inst1|process_0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|lcd_bus\(1));

-- Location: LCCOMB_X23_Y15_N22
\inst2|Selector44~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|Selector44~0_combout\ = (!\inst2|rs~0_combout\ & (\inst2|estado.INICIALIZACAO~q\ & (!\inst2|Add0~62_combout\ & !\inst2|busy~12_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|rs~0_combout\,
	datab => \inst2|estado.INICIALIZACAO~q\,
	datac => \inst2|Add0~62_combout\,
	datad => \inst2|busy~12_combout\,
	combout => \inst2|Selector44~0_combout\);

-- Location: LCCOMB_X23_Y15_N26
\inst2|Selector44~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|Selector44~1_combout\ = (\inst2|rs~0_combout\ & ((\inst1|lcd_bus\(1)) # ((\inst2|Selector44~0_combout\ & \inst2|Selector43~3_combout\)))) # (!\inst2|rs~0_combout\ & (((\inst2|Selector44~0_combout\ & \inst2|Selector43~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|rs~0_combout\,
	datab => \inst1|lcd_bus\(1),
	datac => \inst2|Selector44~0_combout\,
	datad => \inst2|Selector43~3_combout\,
	combout => \inst2|Selector44~1_combout\);

-- Location: FF_X23_Y15_N27
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

-- Location: LCCOMB_X25_Y16_N20
\inst1|lcd_bus[0]~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|lcd_bus[0]~6_combout\ = (\inst1|Mux3~13_combout\ & ((\inst1|lcd_bus\(0)))) # (!\inst1|Mux3~13_combout\ & (\inst1|Mux3~4_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|Mux3~4_combout\,
	datac => \inst1|lcd_bus\(0),
	datad => \inst1|Mux3~13_combout\,
	combout => \inst1|lcd_bus[0]~6_combout\);

-- Location: LCCOMB_X25_Y16_N10
\inst1|Mux3~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|Mux3~12_combout\ = (\inst1|char~4_combout\ & (\inst1|char~2_combout\ & (\inst3|stable\(1) & !\inst1|lcd_bus[0]~23_combout\))) # (!\inst1|char~4_combout\ & (((!\inst1|char~2_combout\ & \inst1|lcd_bus[0]~23_combout\)) # (!\inst3|stable\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001001110000011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|char~2_combout\,
	datab => \inst1|char~4_combout\,
	datac => \inst3|stable\(1),
	datad => \inst1|lcd_bus[0]~23_combout\,
	combout => \inst1|Mux3~12_combout\);

-- Location: LCCOMB_X25_Y17_N30
\inst1|lcd_bus[0]~50\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|lcd_bus[0]~50_combout\ = (\inst3|stable\(1) & ((\inst1|char~4_combout\) # ((\inst1|Add0~3_combout\ & \inst1|lcd_bus[0]~23_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|Add0~3_combout\,
	datab => \inst3|stable\(1),
	datac => \inst1|lcd_bus[0]~23_combout\,
	datad => \inst1|char~4_combout\,
	combout => \inst1|lcd_bus[0]~50_combout\);

-- Location: LCCOMB_X25_Y16_N4
\inst1|Mux3~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|Mux3~6_combout\ = (\inst1|lcd_bus[5]~32_combout\ & \inst1|char\(4))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst1|lcd_bus[5]~32_combout\,
	datad => \inst1|char\(4),
	combout => \inst1|Mux3~6_combout\);

-- Location: LCCOMB_X25_Y16_N18
\inst1|Mux3~11\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|Mux3~11_combout\ = (\inst1|char~4_combout\ & (\inst1|lcd_bus[0]~23_combout\)) # (!\inst1|char~4_combout\ & ((\inst1|char~2_combout\ & (!\inst1|lcd_bus[0]~23_combout\)) # (!\inst1|char~2_combout\ & ((\inst3|stable\(1))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101001011100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|lcd_bus[0]~23_combout\,
	datab => \inst3|stable\(1),
	datac => \inst1|char~2_combout\,
	datad => \inst1|char~4_combout\,
	combout => \inst1|Mux3~11_combout\);

-- Location: LCCOMB_X25_Y16_N24
\inst1|lcd_bus[0]~51\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|lcd_bus[0]~51_combout\ = (\inst1|char~1_combout\ & (!\inst1|char~3_combout\ & ((\inst1|Mux3~11_combout\)))) # (!\inst1|char~1_combout\ & ((\inst1|char~3_combout\) # ((\inst1|Mux3~6_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111011001010100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|char~1_combout\,
	datab => \inst1|char~3_combout\,
	datac => \inst1|Mux3~6_combout\,
	datad => \inst1|Mux3~11_combout\,
	combout => \inst1|lcd_bus[0]~51_combout\);

-- Location: LCCOMB_X25_Y16_N8
\inst1|lcd_bus[0]~52\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|lcd_bus[0]~52_combout\ = (\inst1|char~3_combout\ & ((\inst1|lcd_bus[0]~51_combout\ & (\inst1|Mux3~12_combout\)) # (!\inst1|lcd_bus[0]~51_combout\ & ((\inst1|lcd_bus[0]~50_combout\))))) # (!\inst1|char~3_combout\ & 
-- (((\inst1|lcd_bus[0]~51_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|Mux3~12_combout\,
	datab => \inst1|char~3_combout\,
	datac => \inst1|lcd_bus[0]~50_combout\,
	datad => \inst1|lcd_bus[0]~51_combout\,
	combout => \inst1|lcd_bus[0]~52_combout\);

-- Location: FF_X25_Y16_N21
\inst1|lcd_bus[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \inst1|lcd_bus[0]~6_combout\,
	asdata => \inst1|lcd_bus[0]~52_combout\,
	sload => \inst1|char~0_combout\,
	ena => \inst1|process_0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|lcd_bus\(0));

-- Location: LCCOMB_X22_Y15_N6
\inst2|Selector45~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|Selector45~1_combout\ = (!\inst2|busy~10_combout\ & (\inst2|Selector45~0_combout\ & ((\inst2|Add0~60_combout\) # (!\inst2|LessThan4~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|Add0~60_combout\,
	datab => \inst2|busy~10_combout\,
	datac => \inst2|Selector45~0_combout\,
	datad => \inst2|LessThan4~3_combout\,
	combout => \inst2|Selector45~1_combout\);

-- Location: LCCOMB_X22_Y15_N0
\inst2|Selector45~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|Selector45~2_combout\ = (\inst1|lcd_bus\(0) & ((\inst2|rs~0_combout\) # ((\inst2|LessThan5~4_combout\ & \inst2|Selector45~1_combout\)))) # (!\inst1|lcd_bus\(0) & (\inst2|LessThan5~4_combout\ & ((\inst2|Selector45~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|lcd_bus\(0),
	datab => \inst2|LessThan5~4_combout\,
	datac => \inst2|rs~0_combout\,
	datad => \inst2|Selector45~1_combout\,
	combout => \inst2|Selector45~2_combout\);

-- Location: FF_X22_Y15_N1
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


