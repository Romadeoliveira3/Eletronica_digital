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

-- DATE "08/11/2025 17:24:11"

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
	lcd_d : OUT std_logic_vector(7 DOWNTO 0)
	);
END Block1;

-- Design Ports Information
-- lcd_rw	=>  Location: PIN_138,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- key[4]	=>  Location: PIN_91,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- key[3]	=>  Location: PIN_90,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- key[2]	=>  Location: PIN_89,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- lcd_en	=>  Location: PIN_143,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- lcd_rs	=>  Location: PIN_141,	 I/O Standard: 2.5 V,	 Current Strength: Default
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
SIGNAL ww_lcd_d : std_logic_vector(7 DOWNTO 0);
SIGNAL \clock~inputclkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \key[4]~input_o\ : std_logic;
SIGNAL \key[3]~input_o\ : std_logic;
SIGNAL \key[2]~input_o\ : std_logic;
SIGNAL \lcd_rw~output_o\ : std_logic;
SIGNAL \lcd_en~output_o\ : std_logic;
SIGNAL \lcd_rs~output_o\ : std_logic;
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
SIGNAL \inst2|LessThan9~0_combout\ : std_logic;
SIGNAL \inst2|LessThan9~1_combout\ : std_logic;
SIGNAL \inst2|LessThan9~5_combout\ : std_logic;
SIGNAL \inst2|LessThan0~0_combout\ : std_logic;
SIGNAL \inst2|LessThan0~1_combout\ : std_logic;
SIGNAL \inst2|LessThan0~2_combout\ : std_logic;
SIGNAL \inst2|LessThan0~3_combout\ : std_logic;
SIGNAL \inst2|LessThan0~4_combout\ : std_logic;
SIGNAL \inst2|LessThan0~5_combout\ : std_logic;
SIGNAL \inst2|LessThan0~6_combout\ : std_logic;
SIGNAL \inst2|rw~1_combout\ : std_logic;
SIGNAL \inst2|estado.ENERGIZACAO~q\ : std_logic;
SIGNAL \inst2|LessThan9~7_combout\ : std_logic;
SIGNAL \inst2|LessThan9~6_combout\ : std_logic;
SIGNAL \inst2|LessThan9~8_combout\ : std_logic;
SIGNAL \inst2|LessThan9~2_combout\ : std_logic;
SIGNAL \inst2|LessThan9~3_combout\ : std_logic;
SIGNAL \inst2|LessThan9~4_combout\ : std_logic;
SIGNAL \inst2|LessThan9~9_combout\ : std_logic;
SIGNAL \inst2|LessThan4~1_combout\ : std_logic;
SIGNAL \inst2|LessThan4~0_combout\ : std_logic;
SIGNAL \inst2|LessThan4~2_combout\ : std_logic;
SIGNAL \inst2|LessThan3~3_combout\ : std_logic;
SIGNAL \inst2|LessThan3~0_combout\ : std_logic;
SIGNAL \inst2|LessThan3~1_combout\ : std_logic;
SIGNAL \inst2|LessThan3~2_combout\ : std_logic;
SIGNAL \inst2|busy~4_combout\ : std_logic;
SIGNAL \inst2|LessThan3~4_combout\ : std_logic;
SIGNAL \inst2|LessThan4~4_combout\ : std_logic;
SIGNAL \inst2|LessThan6~3_combout\ : std_logic;
SIGNAL \inst2|LessThan6~1_combout\ : std_logic;
SIGNAL \inst2|LessThan6~2_combout\ : std_logic;
SIGNAL \inst2|LessThan1~0_combout\ : std_logic;
SIGNAL \inst2|LessThan6~0_combout\ : std_logic;
SIGNAL \inst2|LessThan8~0_combout\ : std_logic;
SIGNAL \inst2|LessThan8~1_combout\ : std_logic;
SIGNAL \inst2|LessThan3~8_combout\ : std_logic;
SIGNAL \inst2|LessThan8~6_combout\ : std_logic;
SIGNAL \inst2|LessThan8~7_combout\ : std_logic;
SIGNAL \inst2|lcd_data[2]~0_combout\ : std_logic;
SIGNAL \inst2|LessThan7~0_combout\ : std_logic;
SIGNAL \inst2|LessThan7~1_combout\ : std_logic;
SIGNAL \inst2|LessThan3~6_combout\ : std_logic;
SIGNAL \inst2|LessThan3~5_combout\ : std_logic;
SIGNAL \inst2|LessThan3~7_combout\ : std_logic;
SIGNAL \inst2|lcd_data[2]~1_combout\ : std_logic;
SIGNAL \inst2|LessThan2~0_combout\ : std_logic;
SIGNAL \inst2|LessThan2~1_combout\ : std_logic;
SIGNAL \inst2|LessThan2~2_combout\ : std_logic;
SIGNAL \inst2|LessThan1~1_combout\ : std_logic;
SIGNAL \inst2|clk_count~0_combout\ : std_logic;
SIGNAL \inst2|clk_count~1_combout\ : std_logic;
SIGNAL \inst2|LessThan3~10_combout\ : std_logic;
SIGNAL \inst2|LessThan3~9_combout\ : std_logic;
SIGNAL \inst2|LessThan3~11_combout\ : std_logic;
SIGNAL \inst2|LessThan3~14_combout\ : std_logic;
SIGNAL \inst2|LessThan6~4_combout\ : std_logic;
SIGNAL \inst2|LessThan5~0_combout\ : std_logic;
SIGNAL \inst2|LessThan5~1_combout\ : std_logic;
SIGNAL \inst2|LessThan5~2_combout\ : std_logic;
SIGNAL \inst2|clk_count~2_combout\ : std_logic;
SIGNAL \inst2|clk_count[15]~3_combout\ : std_logic;
SIGNAL \inst2|clk_count[15]~4_combout\ : std_logic;
SIGNAL \inst2|clk_count[15]~5_combout\ : std_logic;
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
SIGNAL \inst2|Add0~61\ : std_logic;
SIGNAL \inst2|Add0~62_combout\ : std_logic;
SIGNAL \inst2|Selector1~0_combout\ : std_logic;
SIGNAL \inst2|LessThan3~12_combout\ : std_logic;
SIGNAL \inst2|LessThan3~13_combout\ : std_logic;
SIGNAL \inst2|busy~6_combout\ : std_logic;
SIGNAL \inst2|busy~8_combout\ : std_logic;
SIGNAL \inst2|busy~7_combout\ : std_logic;
SIGNAL \inst2|Selector33~0_combout\ : std_logic;
SIGNAL \inst2|estado.INICIALIZACAO~q\ : std_logic;
SIGNAL \inst1|char~2_combout\ : std_logic;
SIGNAL \inst2|busy~q\ : std_logic;
SIGNAL \inst1|process_0~0_combout\ : std_logic;
SIGNAL \inst1|Add0~2_combout\ : std_logic;
SIGNAL \inst1|char~3_combout\ : std_logic;
SIGNAL \inst1|Add0~0_combout\ : std_logic;
SIGNAL \inst1|lcd_bus[0]~21_combout\ : std_logic;
SIGNAL \inst1|lcd_bus[5]~19_combout\ : std_logic;
SIGNAL \inst1|char~0_combout\ : std_logic;
SIGNAL \inst1|char[5]~6_combout\ : std_logic;
SIGNAL \inst1|LessThan0~0_combout\ : std_logic;
SIGNAL \inst1|char~4_combout\ : std_logic;
SIGNAL \inst1|char~1_combout\ : std_logic;
SIGNAL \inst1|lcd_enable~2_combout\ : std_logic;
SIGNAL \inst1|lcd_enable~3_combout\ : std_logic;
SIGNAL \inst1|lcd_enable~q\ : std_logic;
SIGNAL \inst2|Selector34~0_combout\ : std_logic;
SIGNAL \inst2|Selector34~1_combout\ : std_logic;
SIGNAL \inst2|estado.PRONTO~q\ : std_logic;
SIGNAL \inst2|rw~0_combout\ : std_logic;
SIGNAL \inst2|Selector35~0_combout\ : std_logic;
SIGNAL \inst2|estado.ENVIAR~q\ : std_logic;
SIGNAL \inst2|Selector46~12_combout\ : std_logic;
SIGNAL \inst2|LessThan10~0_combout\ : std_logic;
SIGNAL \inst2|LessThan10~3_combout\ : std_logic;
SIGNAL \inst2|LessThan10~1_combout\ : std_logic;
SIGNAL \inst2|LessThan10~2_combout\ : std_logic;
SIGNAL \inst2|LessThan12~0_combout\ : std_logic;
SIGNAL \inst2|LessThan10~4_combout\ : std_logic;
SIGNAL \inst2|LessThan11~0_combout\ : std_logic;
SIGNAL \inst2|LessThan11~1_combout\ : std_logic;
SIGNAL \inst2|Selector46~0_combout\ : std_logic;
SIGNAL \inst2|LessThan9~10_combout\ : std_logic;
SIGNAL \inst2|LessThan12~1_combout\ : std_logic;
SIGNAL \inst2|LessThan12~2_combout\ : std_logic;
SIGNAL \inst2|Selector46~1_combout\ : std_logic;
SIGNAL \inst2|Selector46~2_combout\ : std_logic;
SIGNAL \inst2|Selector46~3_combout\ : std_logic;
SIGNAL \inst2|LessThan2~3_combout\ : std_logic;
SIGNAL \inst2|LessThan4~3_combout\ : std_logic;
SIGNAL \inst2|Selector46~9_combout\ : std_logic;
SIGNAL \inst2|LessThan7~2_combout\ : std_logic;
SIGNAL \inst2|LessThan8~2_combout\ : std_logic;
SIGNAL \inst2|LessThan8~3_combout\ : std_logic;
SIGNAL \inst2|LessThan8~4_combout\ : std_logic;
SIGNAL \inst2|LessThan8~5_combout\ : std_logic;
SIGNAL \inst2|Selector46~4_combout\ : std_logic;
SIGNAL \inst2|busy~5_combout\ : std_logic;
SIGNAL \inst2|Selector46~5_combout\ : std_logic;
SIGNAL \inst2|Selector46~6_combout\ : std_logic;
SIGNAL \inst2|Selector46~7_combout\ : std_logic;
SIGNAL \inst2|Selector46~8_combout\ : std_logic;
SIGNAL \inst2|Selector46~10_combout\ : std_logic;
SIGNAL \inst2|LessThan1~2_combout\ : std_logic;
SIGNAL \inst2|Selector42~0_combout\ : std_logic;
SIGNAL \inst2|Selector46~11_combout\ : std_logic;
SIGNAL \inst2|Selector46~13_combout\ : std_logic;
SIGNAL \inst2|e~q\ : std_logic;
SIGNAL \inst1|Mux0~0_combout\ : std_logic;
SIGNAL \inst1|Mux0~1_combout\ : std_logic;
SIGNAL \inst1|Add0~1_combout\ : std_logic;
SIGNAL \inst1|Mux0~2_combout\ : std_logic;
SIGNAL \inst1|LessThan0~1_combout\ : std_logic;
SIGNAL \inst1|lcd_bus[9]~20_combout\ : std_logic;
SIGNAL \inst2|rs~0_combout\ : std_logic;
SIGNAL \inst2|rs~1_combout\ : std_logic;
SIGNAL \inst2|rs~q\ : std_logic;
SIGNAL \inst2|Selector38~0_combout\ : std_logic;
SIGNAL \inst2|lcd_data[2]~2_combout\ : std_logic;
SIGNAL \inst1|Add0~3_combout\ : std_logic;
SIGNAL \inst1|Mux3~14_combout\ : std_logic;
SIGNAL \key[1]~input_o\ : std_logic;
SIGNAL \inst3|cnt[1][0]~32_combout\ : std_logic;
SIGNAL \inst3|cnt[1][19]~34_combout\ : std_logic;
SIGNAL \inst3|cnt[1][0]~q\ : std_logic;
SIGNAL \inst3|cnt[1][0]~33\ : std_logic;
SIGNAL \inst3|cnt[1][1]~35_combout\ : std_logic;
SIGNAL \inst3|cnt[1][1]~q\ : std_logic;
SIGNAL \inst3|cnt[1][1]~36\ : std_logic;
SIGNAL \inst3|cnt[1][2]~37_combout\ : std_logic;
SIGNAL \inst3|cnt[1][2]~q\ : std_logic;
SIGNAL \inst3|cnt[1][2]~38\ : std_logic;
SIGNAL \inst3|cnt[1][3]~39_combout\ : std_logic;
SIGNAL \inst3|cnt[1][3]~q\ : std_logic;
SIGNAL \inst3|cnt[1][3]~40\ : std_logic;
SIGNAL \inst3|cnt[1][4]~41_combout\ : std_logic;
SIGNAL \inst3|cnt[1][4]~q\ : std_logic;
SIGNAL \inst3|cnt[1][4]~42\ : std_logic;
SIGNAL \inst3|cnt[1][5]~43_combout\ : std_logic;
SIGNAL \inst3|cnt[1][5]~q\ : std_logic;
SIGNAL \inst3|cnt[1][5]~44\ : std_logic;
SIGNAL \inst3|cnt[1][6]~45_combout\ : std_logic;
SIGNAL \inst3|cnt[1][6]~q\ : std_logic;
SIGNAL \inst3|cnt[1][6]~46\ : std_logic;
SIGNAL \inst3|cnt[1][7]~47_combout\ : std_logic;
SIGNAL \inst3|cnt[1][7]~q\ : std_logic;
SIGNAL \inst3|cnt[1][7]~48\ : std_logic;
SIGNAL \inst3|cnt[1][8]~49_combout\ : std_logic;
SIGNAL \inst3|cnt[1][8]~q\ : std_logic;
SIGNAL \inst3|cnt[1][8]~50\ : std_logic;
SIGNAL \inst3|cnt[1][9]~51_combout\ : std_logic;
SIGNAL \inst3|cnt[1][9]~q\ : std_logic;
SIGNAL \inst3|cnt[1][9]~52\ : std_logic;
SIGNAL \inst3|cnt[1][10]~53_combout\ : std_logic;
SIGNAL \inst3|cnt[1][10]~q\ : std_logic;
SIGNAL \inst3|cnt[1][10]~54\ : std_logic;
SIGNAL \inst3|cnt[1][11]~55_combout\ : std_logic;
SIGNAL \inst3|cnt[1][11]~q\ : std_logic;
SIGNAL \inst3|cnt[1][11]~56\ : std_logic;
SIGNAL \inst3|cnt[1][12]~57_combout\ : std_logic;
SIGNAL \inst3|cnt[1][12]~q\ : std_logic;
SIGNAL \inst3|cnt[1][12]~58\ : std_logic;
SIGNAL \inst3|cnt[1][13]~59_combout\ : std_logic;
SIGNAL \inst3|cnt[1][13]~q\ : std_logic;
SIGNAL \inst3|cnt[1][13]~60\ : std_logic;
SIGNAL \inst3|cnt[1][14]~61_combout\ : std_logic;
SIGNAL \inst3|cnt[1][14]~q\ : std_logic;
SIGNAL \inst3|cnt[1][14]~62\ : std_logic;
SIGNAL \inst3|cnt[1][15]~63_combout\ : std_logic;
SIGNAL \inst3|cnt[1][15]~q\ : std_logic;
SIGNAL \inst3|cnt[1][15]~64\ : std_logic;
SIGNAL \inst3|cnt[1][16]~65_combout\ : std_logic;
SIGNAL \inst3|cnt[1][16]~q\ : std_logic;
SIGNAL \inst3|cnt[1][16]~66\ : std_logic;
SIGNAL \inst3|cnt[1][17]~67_combout\ : std_logic;
SIGNAL \inst3|cnt[1][17]~q\ : std_logic;
SIGNAL \inst3|cnt[1][17]~68\ : std_logic;
SIGNAL \inst3|cnt[1][18]~69_combout\ : std_logic;
SIGNAL \inst3|cnt[1][18]~q\ : std_logic;
SIGNAL \inst3|cnt[1][18]~70\ : std_logic;
SIGNAL \inst3|cnt[1][19]~71_combout\ : std_logic;
SIGNAL \inst3|cnt[1][19]~q\ : std_logic;
SIGNAL \inst3|cnt[1][19]~72\ : std_logic;
SIGNAL \inst3|cnt[1][20]~73_combout\ : std_logic;
SIGNAL \inst3|cnt[1][20]~q\ : std_logic;
SIGNAL \inst3|cnt[1][20]~74\ : std_logic;
SIGNAL \inst3|cnt[1][21]~75_combout\ : std_logic;
SIGNAL \inst3|cnt[1][21]~q\ : std_logic;
SIGNAL \inst3|cnt[1][21]~76\ : std_logic;
SIGNAL \inst3|cnt[1][22]~77_combout\ : std_logic;
SIGNAL \inst3|cnt[1][22]~q\ : std_logic;
SIGNAL \inst3|cnt[1][22]~78\ : std_logic;
SIGNAL \inst3|cnt[1][23]~79_combout\ : std_logic;
SIGNAL \inst3|cnt[1][23]~q\ : std_logic;
SIGNAL \inst3|Equal3~6_combout\ : std_logic;
SIGNAL \inst3|cnt[1][23]~80\ : std_logic;
SIGNAL \inst3|cnt[1][24]~81_combout\ : std_logic;
SIGNAL \inst3|cnt[1][24]~q\ : std_logic;
SIGNAL \inst3|cnt[1][24]~82\ : std_logic;
SIGNAL \inst3|cnt[1][25]~83_combout\ : std_logic;
SIGNAL \inst3|cnt[1][25]~q\ : std_logic;
SIGNAL \inst3|cnt[1][25]~84\ : std_logic;
SIGNAL \inst3|cnt[1][26]~85_combout\ : std_logic;
SIGNAL \inst3|cnt[1][26]~q\ : std_logic;
SIGNAL \inst3|cnt[1][26]~86\ : std_logic;
SIGNAL \inst3|cnt[1][27]~87_combout\ : std_logic;
SIGNAL \inst3|cnt[1][27]~q\ : std_logic;
SIGNAL \inst3|Equal3~7_combout\ : std_logic;
SIGNAL \inst3|cnt[1][27]~88\ : std_logic;
SIGNAL \inst3|cnt[1][28]~89_combout\ : std_logic;
SIGNAL \inst3|cnt[1][28]~q\ : std_logic;
SIGNAL \inst3|cnt[1][28]~90\ : std_logic;
SIGNAL \inst3|cnt[1][29]~91_combout\ : std_logic;
SIGNAL \inst3|cnt[1][29]~q\ : std_logic;
SIGNAL \inst3|cnt[1][29]~92\ : std_logic;
SIGNAL \inst3|cnt[1][30]~93_combout\ : std_logic;
SIGNAL \inst3|cnt[1][30]~q\ : std_logic;
SIGNAL \inst3|cnt[1][30]~94\ : std_logic;
SIGNAL \inst3|cnt[1][31]~95_combout\ : std_logic;
SIGNAL \inst3|cnt[1][31]~q\ : std_logic;
SIGNAL \inst3|Equal3~8_combout\ : std_logic;
SIGNAL \inst3|Equal3~5_combout\ : std_logic;
SIGNAL \inst3|Equal3~9_combout\ : std_logic;
SIGNAL \inst3|Equal3~4_combout\ : std_logic;
SIGNAL \inst3|Equal3~3_combout\ : std_logic;
SIGNAL \inst3|Equal3~1_combout\ : std_logic;
SIGNAL \inst3|Equal3~0_combout\ : std_logic;
SIGNAL \inst3|Equal3~2_combout\ : std_logic;
SIGNAL \inst3|Equal3~10_combout\ : std_logic;
SIGNAL \inst3|stable[1]~0_combout\ : std_logic;
SIGNAL \inst1|Mux3~4_combout\ : std_logic;
SIGNAL \inst1|lcd_bus[6]~0_combout\ : std_logic;
SIGNAL \inst1|lcd_bus[6]~25_combout\ : std_logic;
SIGNAL \inst1|lcd_bus[6]~24_combout\ : std_logic;
SIGNAL \inst1|lcd_bus[6]~26_combout\ : std_logic;
SIGNAL \inst1|lcd_bus[6]~22_combout\ : std_logic;
SIGNAL \inst1|lcd_bus[6]~23_combout\ : std_logic;
SIGNAL \inst1|lcd_bus[6]~51_combout\ : std_logic;
SIGNAL \inst2|Selector39~0_combout\ : std_logic;
SIGNAL \inst1|lcd_bus[5]~1_combout\ : std_logic;
SIGNAL \inst1|lcd_bus[5]~28_combout\ : std_logic;
SIGNAL \inst1|lcd_bus[5]~27_combout\ : std_logic;
SIGNAL \inst1|lcd_bus[5]~29_combout\ : std_logic;
SIGNAL \inst1|lcd_bus[5]~30_combout\ : std_logic;
SIGNAL \inst1|lcd_bus[5]~31_combout\ : std_logic;
SIGNAL \inst1|lcd_bus[5]~32_combout\ : std_logic;
SIGNAL \inst2|Selector40~2_combout\ : std_logic;
SIGNAL \inst2|Selector40~3_combout\ : std_logic;
SIGNAL \inst2|Selector40~4_combout\ : std_logic;
SIGNAL \inst1|lcd_bus[4]~33_combout\ : std_logic;
SIGNAL \inst1|lcd_bus[4]~52_combout\ : std_logic;
SIGNAL \inst1|lcd_bus[4]~34_combout\ : std_logic;
SIGNAL \inst1|lcd_bus[4]~53_combout\ : std_logic;
SIGNAL \inst1|lcd_bus[4]~35_combout\ : std_logic;
SIGNAL \inst1|lcd_bus[4]~36_combout\ : std_logic;
SIGNAL \inst1|lcd_bus[4]~37_combout\ : std_logic;
SIGNAL \inst1|lcd_bus[4]~38_combout\ : std_logic;
SIGNAL \inst1|lcd_bus[4]~2_combout\ : std_logic;
SIGNAL \inst1|Mux3~5_combout\ : std_logic;
SIGNAL \inst2|Selector41~2_combout\ : std_logic;
SIGNAL \inst1|lcd_bus[3]~40_combout\ : std_logic;
SIGNAL \inst1|Mux3~7_combout\ : std_logic;
SIGNAL \inst1|lcd_bus[3]~41_combout\ : std_logic;
SIGNAL \inst1|lcd_bus[3]~42_combout\ : std_logic;
SIGNAL \inst1|lcd_bus[3]~39_combout\ : std_logic;
SIGNAL \inst1|lcd_bus[3]~54_combout\ : std_logic;
SIGNAL \inst1|lcd_bus[3]~3_combout\ : std_logic;
SIGNAL \inst1|Mux3~8_combout\ : std_logic;
SIGNAL \inst2|Selector42~1_combout\ : std_logic;
SIGNAL \inst2|Selector42~2_combout\ : std_logic;
SIGNAL \inst1|lcd_bus[2]~43_combout\ : std_logic;
SIGNAL \inst1|lcd_bus[2]~44_combout\ : std_logic;
SIGNAL \inst1|Mux3~9_combout\ : std_logic;
SIGNAL \inst1|lcd_bus[2]~55_combout\ : std_logic;
SIGNAL \inst1|lcd_bus[2]~4_combout\ : std_logic;
SIGNAL \inst1|Mux3~10_combout\ : std_logic;
SIGNAL \inst2|Selector45~0_combout\ : std_logic;
SIGNAL \inst2|Selector43~2_combout\ : std_logic;
SIGNAL \inst2|Selector43~3_combout\ : std_logic;
SIGNAL \inst2|Selector43~4_combout\ : std_logic;
SIGNAL \inst2|Selector43~5_combout\ : std_logic;
SIGNAL \inst1|lcd_bus[1]~45_combout\ : std_logic;
SIGNAL \inst1|lcd_bus[1]~46_combout\ : std_logic;
SIGNAL \inst1|lcd_bus[1]~47_combout\ : std_logic;
SIGNAL \inst1|lcd_bus[1]~56_combout\ : std_logic;
SIGNAL \inst1|lcd_bus[1]~5_combout\ : std_logic;
SIGNAL \inst1|Mux3~11_combout\ : std_logic;
SIGNAL \inst2|Selector44~0_combout\ : std_logic;
SIGNAL \inst2|Selector44~1_combout\ : std_logic;
SIGNAL \inst2|Selector45~1_combout\ : std_logic;
SIGNAL \inst1|lcd_bus[0]~6_combout\ : std_logic;
SIGNAL \inst1|Mux3~13_combout\ : std_logic;
SIGNAL \inst1|lcd_bus[0]~48_combout\ : std_logic;
SIGNAL \inst1|Mux3~12_combout\ : std_logic;
SIGNAL \inst1|Mux3~6_combout\ : std_logic;
SIGNAL \inst1|lcd_bus[0]~49_combout\ : std_logic;
SIGNAL \inst1|lcd_bus[0]~50_combout\ : std_logic;
SIGNAL \inst2|Selector45~2_combout\ : std_logic;
SIGNAL \inst3|s1\ : std_logic_vector(4 DOWNTO 1);
SIGNAL \inst1|lcd_bus\ : std_logic_vector(9 DOWNTO 0);
SIGNAL \inst2|lcd_data\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \inst2|clk_count\ : std_logic_vector(31 DOWNTO 0);
SIGNAL \inst3|s0\ : std_logic_vector(4 DOWNTO 1);
SIGNAL \inst1|char\ : std_logic_vector(5 DOWNTO 0);
SIGNAL \inst3|stable\ : std_logic_vector(4 DOWNTO 1);
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

-- Location: LCCOMB_X13_Y13_N0
\inst2|Add0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|Add0~0_combout\ = \inst2|clk_count\(0) $ (VCC)
-- \inst2|Add0~1\ = CARRY(\inst2|clk_count\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst2|clk_count\(0),
	datad => VCC,
	combout => \inst2|Add0~0_combout\,
	cout => \inst2|Add0~1\);

-- Location: LCCOMB_X14_Y13_N22
\inst2|LessThan9~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|LessThan9~0_combout\ = (!\inst2|clk_count\(24) & (!\inst2|clk_count\(22) & (!\inst2|clk_count\(23) & !\inst2|clk_count\(25))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|clk_count\(24),
	datab => \inst2|clk_count\(22),
	datac => \inst2|clk_count\(23),
	datad => \inst2|clk_count\(25),
	combout => \inst2|LessThan9~0_combout\);

-- Location: LCCOMB_X14_Y13_N10
\inst2|LessThan9~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|LessThan9~1_combout\ = (!\inst2|clk_count\(26) & \inst2|LessThan9~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst2|clk_count\(26),
	datac => \inst2|LessThan9~0_combout\,
	combout => \inst2|LessThan9~1_combout\);

-- Location: LCCOMB_X12_Y12_N22
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

-- Location: LCCOMB_X12_Y12_N6
\inst2|LessThan0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|LessThan0~0_combout\ = (!\inst2|clk_count\(15) & (!\inst2|clk_count\(14) & !\inst2|clk_count\(16)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000100000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|clk_count\(15),
	datab => \inst2|clk_count\(14),
	datac => \inst2|clk_count\(16),
	combout => \inst2|LessThan0~0_combout\);

-- Location: LCCOMB_X14_Y15_N4
\inst2|LessThan0~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|LessThan0~1_combout\ = (((!\inst2|clk_count\(5) & !\inst2|clk_count\(6))) # (!\inst2|clk_count\(8))) # (!\inst2|clk_count\(7))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011111101111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|clk_count\(5),
	datab => \inst2|clk_count\(7),
	datac => \inst2|clk_count\(8),
	datad => \inst2|clk_count\(6),
	combout => \inst2|LessThan0~1_combout\);

-- Location: LCCOMB_X14_Y15_N6
\inst2|LessThan0~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|LessThan0~2_combout\ = ((!\inst2|clk_count\(9) & \inst2|LessThan0~1_combout\)) # (!\inst2|clk_count\(10))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst2|clk_count\(9),
	datac => \inst2|LessThan0~1_combout\,
	datad => \inst2|clk_count\(10),
	combout => \inst2|LessThan0~2_combout\);

-- Location: LCCOMB_X14_Y12_N16
\inst2|LessThan0~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|LessThan0~3_combout\ = ((!\inst2|clk_count\(12) & (!\inst2|clk_count\(11) & \inst2|LessThan0~2_combout\))) # (!\inst2|clk_count\(13))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101011101010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|clk_count\(13),
	datab => \inst2|clk_count\(12),
	datac => \inst2|clk_count\(11),
	datad => \inst2|LessThan0~2_combout\,
	combout => \inst2|LessThan0~3_combout\);

-- Location: LCCOMB_X14_Y12_N10
\inst2|LessThan0~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|LessThan0~4_combout\ = (((\inst2|LessThan0~0_combout\ & \inst2|LessThan0~3_combout\)) # (!\inst2|clk_count\(17))) # (!\inst2|clk_count\(18))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111011101110111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|clk_count\(18),
	datab => \inst2|clk_count\(17),
	datac => \inst2|LessThan0~0_combout\,
	datad => \inst2|LessThan0~3_combout\,
	combout => \inst2|LessThan0~4_combout\);

-- Location: LCCOMB_X14_Y12_N24
\inst2|LessThan0~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|LessThan0~5_combout\ = ((\inst2|LessThan0~4_combout\ & (!\inst2|clk_count\(19) & !\inst2|clk_count\(20)))) # (!\inst2|clk_count\(21))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100111011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|LessThan0~4_combout\,
	datab => \inst2|clk_count\(21),
	datac => \inst2|clk_count\(19),
	datad => \inst2|clk_count\(20),
	combout => \inst2|LessThan0~5_combout\);

-- Location: LCCOMB_X14_Y12_N2
\inst2|LessThan0~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|LessThan0~6_combout\ = (\inst2|clk_count\(31)) # ((\inst2|LessThan9~1_combout\ & (\inst2|LessThan9~5_combout\ & \inst2|LessThan0~5_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|clk_count\(31),
	datab => \inst2|LessThan9~1_combout\,
	datac => \inst2|LessThan9~5_combout\,
	datad => \inst2|LessThan0~5_combout\,
	combout => \inst2|LessThan0~6_combout\);

-- Location: LCCOMB_X11_Y14_N16
\inst2|rw~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|rw~1_combout\ = (\inst2|estado.ENERGIZACAO~q\) # (!\inst2|LessThan0~6_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst2|estado.ENERGIZACAO~q\,
	datad => \inst2|LessThan0~6_combout\,
	combout => \inst2|rw~1_combout\);

-- Location: FF_X11_Y14_N17
\inst2|estado.ENERGIZACAO\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \inst2|rw~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst2|estado.ENERGIZACAO~q\);

-- Location: LCCOMB_X14_Y15_N22
\inst2|LessThan9~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|LessThan9~7_combout\ = ((!\inst2|clk_count\(6)) # (!\inst2|clk_count\(8))) # (!\inst2|clk_count\(7))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst2|clk_count\(7),
	datac => \inst2|clk_count\(8),
	datad => \inst2|clk_count\(6),
	combout => \inst2|LessThan9~7_combout\);

-- Location: LCCOMB_X14_Y15_N18
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

-- Location: LCCOMB_X14_Y15_N16
\inst2|LessThan9~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|LessThan9~8_combout\ = (!\inst2|clk_count\(10) & (!\inst2|clk_count\(9) & ((\inst2|LessThan9~7_combout\) # (\inst2|LessThan9~6_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001100000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|LessThan9~7_combout\,
	datab => \inst2|clk_count\(10),
	datac => \inst2|clk_count\(9),
	datad => \inst2|LessThan9~6_combout\,
	combout => \inst2|LessThan9~8_combout\);

-- Location: LCCOMB_X14_Y12_N30
\inst2|LessThan9~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|LessThan9~2_combout\ = (!\inst2|clk_count\(13) & (!\inst2|clk_count\(17) & (!\inst2|clk_count\(19) & !\inst2|clk_count\(20))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|clk_count\(13),
	datab => \inst2|clk_count\(17),
	datac => \inst2|clk_count\(19),
	datad => \inst2|clk_count\(20),
	combout => \inst2|LessThan9~2_combout\);

-- Location: LCCOMB_X14_Y12_N8
\inst2|LessThan9~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|LessThan9~3_combout\ = (\inst2|LessThan9~2_combout\ & (!\inst2|clk_count\(12) & (\inst2|LessThan0~0_combout\ & \inst2|LessThan9~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|LessThan9~2_combout\,
	datab => \inst2|clk_count\(12),
	datac => \inst2|LessThan0~0_combout\,
	datad => \inst2|LessThan9~1_combout\,
	combout => \inst2|LessThan9~3_combout\);

-- Location: LCCOMB_X14_Y12_N18
\inst2|LessThan9~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|LessThan9~4_combout\ = (!\inst2|clk_count\(21) & (\inst2|LessThan9~3_combout\ & !\inst2|clk_count\(18)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst2|clk_count\(21),
	datac => \inst2|LessThan9~3_combout\,
	datad => \inst2|clk_count\(18),
	combout => \inst2|LessThan9~4_combout\);

-- Location: LCCOMB_X14_Y12_N6
\inst2|LessThan9~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|LessThan9~9_combout\ = (\inst2|LessThan9~5_combout\ & (\inst2|LessThan9~4_combout\ & ((\inst2|LessThan9~8_combout\) # (!\inst2|clk_count\(11)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|LessThan9~5_combout\,
	datab => \inst2|LessThan9~8_combout\,
	datac => \inst2|clk_count\(11),
	datad => \inst2|LessThan9~4_combout\,
	combout => \inst2|LessThan9~9_combout\);

-- Location: LCCOMB_X14_Y14_N2
\inst2|LessThan4~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|LessThan4~1_combout\ = (\inst2|Add0~10_combout\ & (\inst2|Add0~12_combout\ & \inst2|Add0~8_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|Add0~10_combout\,
	datac => \inst2|Add0~12_combout\,
	datad => \inst2|Add0~8_combout\,
	combout => \inst2|LessThan4~1_combout\);

-- Location: LCCOMB_X14_Y14_N12
\inst2|LessThan4~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|LessThan4~0_combout\ = ((!\inst2|Add0~20_combout\) # (!\inst2|Add0~18_combout\)) # (!\inst2|Add0~16_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst2|Add0~16_combout\,
	datac => \inst2|Add0~18_combout\,
	datad => \inst2|Add0~20_combout\,
	combout => \inst2|LessThan4~0_combout\);

-- Location: LCCOMB_X14_Y14_N0
\inst2|LessThan4~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|LessThan4~2_combout\ = (!\inst2|Add0~22_combout\ & ((\inst2|LessThan4~0_combout\) # ((!\inst2|Add0~14_combout\ & !\inst2|LessThan4~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|Add0~14_combout\,
	datab => \inst2|LessThan4~1_combout\,
	datac => \inst2|Add0~22_combout\,
	datad => \inst2|LessThan4~0_combout\,
	combout => \inst2|LessThan4~2_combout\);

-- Location: LCCOMB_X12_Y14_N16
\inst2|LessThan3~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|LessThan3~3_combout\ = (!\inst2|Add0~28_combout\ & (!\inst2|Add0~26_combout\ & (!\inst2|Add0~30_combout\ & !\inst2|Add0~32_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|Add0~28_combout\,
	datab => \inst2|Add0~26_combout\,
	datac => \inst2|Add0~30_combout\,
	datad => \inst2|Add0~32_combout\,
	combout => \inst2|LessThan3~3_combout\);

-- Location: LCCOMB_X12_Y14_N6
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

-- Location: LCCOMB_X13_Y14_N20
\inst2|LessThan3~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|LessThan3~1_combout\ = (!\inst2|Add0~44_combout\ & (!\inst2|Add0~42_combout\ & (!\inst2|Add0~46_combout\ & !\inst2|Add0~48_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|Add0~44_combout\,
	datab => \inst2|Add0~42_combout\,
	datac => \inst2|Add0~46_combout\,
	datad => \inst2|Add0~48_combout\,
	combout => \inst2|LessThan3~1_combout\);

-- Location: LCCOMB_X13_Y14_N30
\inst2|LessThan3~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|LessThan3~2_combout\ = (!\inst2|Add0~52_combout\ & (!\inst2|Add0~50_combout\ & (!\inst2|Add0~54_combout\ & \inst2|LessThan3~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|Add0~52_combout\,
	datab => \inst2|Add0~50_combout\,
	datac => \inst2|Add0~54_combout\,
	datad => \inst2|LessThan3~1_combout\,
	combout => \inst2|LessThan3~2_combout\);

-- Location: LCCOMB_X12_Y14_N20
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

-- Location: LCCOMB_X13_Y14_N16
\inst2|LessThan3~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|LessThan3~4_combout\ = (\inst2|LessThan3~3_combout\ & (\inst2|LessThan3~0_combout\ & (\inst2|LessThan3~2_combout\ & \inst2|busy~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|LessThan3~3_combout\,
	datab => \inst2|LessThan3~0_combout\,
	datac => \inst2|LessThan3~2_combout\,
	datad => \inst2|busy~4_combout\,
	combout => \inst2|LessThan3~4_combout\);

-- Location: LCCOMB_X13_Y14_N2
\inst2|LessThan4~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|LessThan4~4_combout\ = (!\inst2|Add0~60_combout\ & (\inst2|LessThan3~4_combout\ & ((\inst2|LessThan4~2_combout\) # (!\inst2|Add0~24_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|LessThan4~2_combout\,
	datab => \inst2|Add0~60_combout\,
	datac => \inst2|Add0~24_combout\,
	datad => \inst2|LessThan3~4_combout\,
	combout => \inst2|LessThan4~4_combout\);

-- Location: LCCOMB_X12_Y14_N14
\inst2|LessThan6~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|LessThan6~3_combout\ = (\inst2|Add0~30_combout\ & (\inst2|Add0~32_combout\ & ((\inst2|Add0~26_combout\) # (\inst2|Add0~28_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|Add0~30_combout\,
	datab => \inst2|Add0~32_combout\,
	datac => \inst2|Add0~26_combout\,
	datad => \inst2|Add0~28_combout\,
	combout => \inst2|LessThan6~3_combout\);

-- Location: LCCOMB_X13_Y11_N2
\inst2|LessThan6~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|LessThan6~1_combout\ = (!\inst2|Add0~6_combout\ & (!\inst2|Add0~8_combout\ & (!\inst2|Add0~4_combout\ & !\inst2|Add0~10_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|Add0~6_combout\,
	datab => \inst2|Add0~8_combout\,
	datac => \inst2|Add0~4_combout\,
	datad => \inst2|Add0~10_combout\,
	combout => \inst2|LessThan6~1_combout\);

-- Location: LCCOMB_X13_Y11_N24
\inst2|LessThan6~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|LessThan6~2_combout\ = (!\inst2|Add0~12_combout\ & (!\inst2|Add0~14_combout\ & (!\inst2|Add0~16_combout\ & \inst2|LessThan6~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|Add0~12_combout\,
	datab => \inst2|Add0~14_combout\,
	datac => \inst2|Add0~16_combout\,
	datad => \inst2|LessThan6~1_combout\,
	combout => \inst2|LessThan6~2_combout\);

-- Location: LCCOMB_X14_Y14_N16
\inst2|LessThan1~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|LessThan1~0_combout\ = (!\inst2|Add0~22_combout\ & (!\inst2|Add0~20_combout\ & (!\inst2|Add0~18_combout\ & !\inst2|Add0~24_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|Add0~22_combout\,
	datab => \inst2|Add0~20_combout\,
	datac => \inst2|Add0~18_combout\,
	datad => \inst2|Add0~24_combout\,
	combout => \inst2|LessThan1~0_combout\);

-- Location: LCCOMB_X14_Y14_N10
\inst2|LessThan6~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|LessThan6~0_combout\ = (\inst2|LessThan1~0_combout\ & !\inst2|Add0~28_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst2|LessThan1~0_combout\,
	datad => \inst2|Add0~28_combout\,
	combout => \inst2|LessThan6~0_combout\);

-- Location: LCCOMB_X14_Y14_N20
\inst2|LessThan8~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|LessThan8~0_combout\ = (\inst2|Add0~10_combout\ & \inst2|Add0~8_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|Add0~10_combout\,
	datad => \inst2|Add0~8_combout\,
	combout => \inst2|LessThan8~0_combout\);

-- Location: LCCOMB_X14_Y14_N6
\inst2|LessThan8~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|LessThan8~1_combout\ = (((!\inst2|Add0~12_combout\ & !\inst2|LessThan8~0_combout\)) # (!\inst2|Add0~16_combout\)) # (!\inst2|Add0~14_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111011101111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|Add0~14_combout\,
	datab => \inst2|Add0~16_combout\,
	datac => \inst2|Add0~12_combout\,
	datad => \inst2|LessThan8~0_combout\,
	combout => \inst2|LessThan8~1_combout\);

-- Location: LCCOMB_X14_Y13_N26
\inst2|LessThan3~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|LessThan3~8_combout\ = (\inst2|Add0~20_combout\ & \inst2|Add0~22_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst2|Add0~20_combout\,
	datad => \inst2|Add0~22_combout\,
	combout => \inst2|LessThan3~8_combout\);

-- Location: LCCOMB_X14_Y14_N24
\inst2|LessThan8~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|LessThan8~6_combout\ = (!\inst2|Add0~24_combout\ & !\inst2|Add0~28_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|Add0~24_combout\,
	datad => \inst2|Add0~28_combout\,
	combout => \inst2|LessThan8~6_combout\);

-- Location: LCCOMB_X14_Y14_N26
\inst2|LessThan8~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|LessThan8~7_combout\ = (\inst2|LessThan8~6_combout\ & (((\inst2|LessThan8~1_combout\ & !\inst2|Add0~18_combout\)) # (!\inst2|LessThan3~8_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|LessThan8~1_combout\,
	datab => \inst2|Add0~18_combout\,
	datac => \inst2|LessThan3~8_combout\,
	datad => \inst2|LessThan8~6_combout\,
	combout => \inst2|LessThan8~7_combout\);

-- Location: LCCOMB_X13_Y14_N24
\inst2|lcd_data[2]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|lcd_data[2]~0_combout\ = (\inst2|LessThan6~3_combout\ & (!\inst2|LessThan8~7_combout\ & ((!\inst2|LessThan6~0_combout\) # (!\inst2|LessThan6~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|LessThan6~3_combout\,
	datab => \inst2|LessThan6~2_combout\,
	datac => \inst2|LessThan6~0_combout\,
	datad => \inst2|LessThan8~7_combout\,
	combout => \inst2|lcd_data[2]~0_combout\);

-- Location: LCCOMB_X14_Y14_N14
\inst2|LessThan7~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|LessThan7~0_combout\ = (\inst2|Add0~14_combout\ & (\inst2|Add0~16_combout\ & (\inst2|Add0~12_combout\ & \inst2|LessThan8~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|Add0~14_combout\,
	datab => \inst2|Add0~16_combout\,
	datac => \inst2|Add0~12_combout\,
	datad => \inst2|LessThan8~0_combout\,
	combout => \inst2|LessThan7~0_combout\);

-- Location: LCCOMB_X14_Y14_N28
\inst2|LessThan7~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|LessThan7~1_combout\ = (!\inst2|Add0~28_combout\ & (\inst2|LessThan1~0_combout\ & ((!\inst2|Add0~6_combout\) # (!\inst2|LessThan7~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|Add0~28_combout\,
	datab => \inst2|LessThan1~0_combout\,
	datac => \inst2|LessThan7~0_combout\,
	datad => \inst2|Add0~6_combout\,
	combout => \inst2|LessThan7~1_combout\);

-- Location: LCCOMB_X13_Y14_N14
\inst2|LessThan3~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|LessThan3~6_combout\ = (\inst2|LessThan3~0_combout\ & \inst2|LessThan3~1_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst2|LessThan3~0_combout\,
	datad => \inst2|LessThan3~1_combout\,
	combout => \inst2|LessThan3~6_combout\);

-- Location: LCCOMB_X14_Y14_N22
\inst2|LessThan3~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|LessThan3~5_combout\ = (!\inst2|Add0~50_combout\ & (!\inst2|Add0~52_combout\ & !\inst2|Add0~54_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst2|Add0~50_combout\,
	datac => \inst2|Add0~52_combout\,
	datad => \inst2|Add0~54_combout\,
	combout => \inst2|LessThan3~5_combout\);

-- Location: LCCOMB_X13_Y14_N12
\inst2|LessThan3~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|LessThan3~7_combout\ = (!\inst2|Add0~58_combout\ & (!\inst2|Add0~56_combout\ & (\inst2|LessThan3~6_combout\ & \inst2|LessThan3~5_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|Add0~58_combout\,
	datab => \inst2|Add0~56_combout\,
	datac => \inst2|LessThan3~6_combout\,
	datad => \inst2|LessThan3~5_combout\,
	combout => \inst2|LessThan3~7_combout\);

-- Location: LCCOMB_X13_Y14_N26
\inst2|lcd_data[2]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|lcd_data[2]~1_combout\ = (\inst2|Add0~60_combout\) # (((\inst2|lcd_data[2]~0_combout\ & !\inst2|LessThan7~1_combout\)) # (!\inst2|LessThan3~7_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|Add0~60_combout\,
	datab => \inst2|lcd_data[2]~0_combout\,
	datac => \inst2|LessThan7~1_combout\,
	datad => \inst2|LessThan3~7_combout\,
	combout => \inst2|lcd_data[2]~1_combout\);

-- Location: LCCOMB_X13_Y11_N4
\inst2|LessThan2~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|LessThan2~0_combout\ = (!\inst2|Add0~12_combout\ & (((!\inst2|Add0~10_combout\) # (!\inst2|Add0~8_combout\)) # (!\inst2|Add0~6_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000011100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|Add0~6_combout\,
	datab => \inst2|Add0~8_combout\,
	datac => \inst2|Add0~12_combout\,
	datad => \inst2|Add0~10_combout\,
	combout => \inst2|LessThan2~0_combout\);

-- Location: LCCOMB_X13_Y11_N6
\inst2|LessThan2~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|LessThan2~1_combout\ = ((!\inst2|Add0~18_combout\) # (!\inst2|Add0~16_combout\)) # (!\inst2|Add0~14_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst2|Add0~14_combout\,
	datac => \inst2|Add0~16_combout\,
	datad => \inst2|Add0~18_combout\,
	combout => \inst2|LessThan2~1_combout\);

-- Location: LCCOMB_X13_Y11_N16
\inst2|LessThan2~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|LessThan2~2_combout\ = ((!\inst2|Add0~20_combout\ & ((\inst2|LessThan2~0_combout\) # (\inst2|LessThan2~1_combout\)))) # (!\inst2|Add0~22_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111011101110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|Add0~20_combout\,
	datab => \inst2|Add0~22_combout\,
	datac => \inst2|LessThan2~0_combout\,
	datad => \inst2|LessThan2~1_combout\,
	combout => \inst2|LessThan2~2_combout\);

-- Location: LCCOMB_X14_Y14_N18
\inst2|LessThan1~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|LessThan1~1_combout\ = (\inst2|LessThan1~0_combout\ & (((!\inst2|Add0~6_combout\ & !\inst2|Add0~4_combout\)) # (!\inst2|LessThan7~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|Add0~6_combout\,
	datab => \inst2|Add0~4_combout\,
	datac => \inst2|LessThan7~0_combout\,
	datad => \inst2|LessThan1~0_combout\,
	combout => \inst2|LessThan1~1_combout\);

-- Location: LCCOMB_X13_Y14_N8
\inst2|clk_count~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|clk_count~0_combout\ = ((!\inst2|LessThan1~1_combout\ & ((\inst2|Add0~24_combout\) # (!\inst2|LessThan2~2_combout\)))) # (!\inst2|LessThan3~3_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010111011111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|LessThan3~3_combout\,
	datab => \inst2|Add0~24_combout\,
	datac => \inst2|LessThan2~2_combout\,
	datad => \inst2|LessThan1~1_combout\,
	combout => \inst2|clk_count~0_combout\);

-- Location: LCCOMB_X13_Y14_N22
\inst2|clk_count~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|clk_count~1_combout\ = (((\inst2|clk_count~0_combout\) # (!\inst2|busy~4_combout\)) # (!\inst2|LessThan3~0_combout\)) # (!\inst2|LessThan3~2_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111011111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|LessThan3~2_combout\,
	datab => \inst2|LessThan3~0_combout\,
	datac => \inst2|clk_count~0_combout\,
	datad => \inst2|busy~4_combout\,
	combout => \inst2|clk_count~1_combout\);

-- Location: LCCOMB_X13_Y11_N28
\inst2|LessThan3~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|LessThan3~10_combout\ = ((!\inst2|Add0~8_combout\ & ((!\inst2|Add0~4_combout\) # (!\inst2|Add0~6_combout\)))) # (!\inst2|Add0~10_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001101111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|Add0~6_combout\,
	datab => \inst2|Add0~10_combout\,
	datac => \inst2|Add0~4_combout\,
	datad => \inst2|Add0~8_combout\,
	combout => \inst2|LessThan3~10_combout\);

-- Location: LCCOMB_X13_Y11_N18
\inst2|LessThan3~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|LessThan3~9_combout\ = ((!\inst2|Add0~18_combout\ & ((!\inst2|Add0~16_combout\) # (!\inst2|Add0~14_combout\)))) # (!\inst2|LessThan3~8_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001010111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|Add0~18_combout\,
	datab => \inst2|Add0~14_combout\,
	datac => \inst2|Add0~16_combout\,
	datad => \inst2|LessThan3~8_combout\,
	combout => \inst2|LessThan3~9_combout\);

-- Location: LCCOMB_X13_Y11_N10
\inst2|LessThan3~11\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|LessThan3~11_combout\ = (\inst2|LessThan3~9_combout\) # ((!\inst2|Add0~12_combout\ & (\inst2|LessThan3~10_combout\ & !\inst2|Add0~18_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|Add0~12_combout\,
	datab => \inst2|LessThan3~10_combout\,
	datac => \inst2|Add0~18_combout\,
	datad => \inst2|LessThan3~9_combout\,
	combout => \inst2|LessThan3~11_combout\);

-- Location: LCCOMB_X13_Y14_N4
\inst2|LessThan3~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|LessThan3~14_combout\ = (\inst2|LessThan3~3_combout\ & (!\inst2|Add0~24_combout\ & (\inst2|LessThan3~11_combout\ & \inst2|LessThan3~7_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|LessThan3~3_combout\,
	datab => \inst2|Add0~24_combout\,
	datac => \inst2|LessThan3~11_combout\,
	datad => \inst2|LessThan3~7_combout\,
	combout => \inst2|LessThan3~14_combout\);

-- Location: LCCOMB_X14_Y11_N4
\inst2|LessThan6~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|LessThan6~4_combout\ = (!\inst2|Add0~8_combout\ & (!\inst2|Add0~4_combout\ & !\inst2|Add0~6_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|Add0~8_combout\,
	datac => \inst2|Add0~4_combout\,
	datad => \inst2|Add0~6_combout\,
	combout => \inst2|LessThan6~4_combout\);

-- Location: LCCOMB_X14_Y11_N18
\inst2|LessThan5~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|LessThan5~0_combout\ = (!\inst2|Add0~14_combout\ & (((\inst2|LessThan6~4_combout\) # (!\inst2|Add0~10_combout\)) # (!\inst2|Add0~12_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|Add0~12_combout\,
	datab => \inst2|Add0~10_combout\,
	datac => \inst2|LessThan6~4_combout\,
	datad => \inst2|Add0~14_combout\,
	combout => \inst2|LessThan5~0_combout\);

-- Location: LCCOMB_X14_Y11_N20
\inst2|LessThan5~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|LessThan5~1_combout\ = (!\inst2|Add0~20_combout\ & (!\inst2|Add0~18_combout\ & ((\inst2|LessThan5~0_combout\) # (!\inst2|Add0~16_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001100000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|Add0~16_combout\,
	datab => \inst2|Add0~20_combout\,
	datac => \inst2|Add0~18_combout\,
	datad => \inst2|LessThan5~0_combout\,
	combout => \inst2|LessThan5~1_combout\);

-- Location: LCCOMB_X13_Y14_N6
\inst2|LessThan5~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|LessThan5~2_combout\ = (\inst2|LessThan3~4_combout\ & (((\inst2|LessThan5~1_combout\) # (!\inst2|Add0~24_combout\)) # (!\inst2|Add0~22_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111011100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|Add0~22_combout\,
	datab => \inst2|Add0~24_combout\,
	datac => \inst2|LessThan5~1_combout\,
	datad => \inst2|LessThan3~4_combout\,
	combout => \inst2|LessThan5~2_combout\);

-- Location: LCCOMB_X13_Y14_N28
\inst2|clk_count~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|clk_count~2_combout\ = (!\inst2|Add0~60_combout\ & (((\inst2|LessThan3~14_combout\) # (\inst2|LessThan5~2_combout\)) # (!\inst2|clk_count~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100110001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|clk_count~1_combout\,
	datab => \inst2|Add0~60_combout\,
	datac => \inst2|LessThan3~14_combout\,
	datad => \inst2|LessThan5~2_combout\,
	combout => \inst2|clk_count~2_combout\);

-- Location: LCCOMB_X13_Y14_N10
\inst2|clk_count[15]~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|clk_count[15]~3_combout\ = (!\inst2|Add0~62_combout\ & (!\inst2|LessThan4~4_combout\ & (\inst2|lcd_data[2]~1_combout\ & !\inst2|clk_count~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|Add0~62_combout\,
	datab => \inst2|LessThan4~4_combout\,
	datac => \inst2|lcd_data[2]~1_combout\,
	datad => \inst2|clk_count~2_combout\,
	combout => \inst2|clk_count[15]~3_combout\);

-- Location: LCCOMB_X13_Y14_N0
\inst2|clk_count[15]~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|clk_count[15]~4_combout\ = (\inst2|estado.ENVIAR~q\ & (!\inst2|clk_count\(31) & (!\inst2|LessThan9~9_combout\))) # (!\inst2|estado.ENVIAR~q\ & (((\inst2|clk_count[15]~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011011100000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|clk_count\(31),
	datab => \inst2|estado.ENVIAR~q\,
	datac => \inst2|LessThan9~9_combout\,
	datad => \inst2|clk_count[15]~3_combout\,
	combout => \inst2|clk_count[15]~4_combout\);

-- Location: LCCOMB_X13_Y14_N18
\inst2|clk_count[15]~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|clk_count[15]~5_combout\ = (!\inst2|estado.PRONTO~q\ & ((\inst2|estado.ENERGIZACAO~q\ & ((!\inst2|clk_count[15]~4_combout\))) # (!\inst2|estado.ENERGIZACAO~q\ & (\inst2|LessThan0~6_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010001010100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|estado.PRONTO~q\,
	datab => \inst2|LessThan0~6_combout\,
	datac => \inst2|estado.ENERGIZACAO~q\,
	datad => \inst2|clk_count[15]~4_combout\,
	combout => \inst2|clk_count[15]~5_combout\);

-- Location: LCCOMB_X12_Y13_N6
\inst2|Selector32~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|Selector32~0_combout\ = (\inst2|Add0~0_combout\ & \inst2|clk_count[15]~5_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst2|Add0~0_combout\,
	datad => \inst2|clk_count[15]~5_combout\,
	combout => \inst2|Selector32~0_combout\);

-- Location: FF_X12_Y13_N7
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

-- Location: LCCOMB_X13_Y13_N2
\inst2|Add0~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|Add0~2_combout\ = (\inst2|clk_count\(1) & (!\inst2|Add0~1\)) # (!\inst2|clk_count\(1) & ((\inst2|Add0~1\) # (GND)))
-- \inst2|Add0~3\ = CARRY((!\inst2|Add0~1\) # (!\inst2|clk_count\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|clk_count\(1),
	datad => VCC,
	cin => \inst2|Add0~1\,
	combout => \inst2|Add0~2_combout\,
	cout => \inst2|Add0~3\);

-- Location: LCCOMB_X14_Y15_N0
\inst2|Selector31~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|Selector31~0_combout\ = (\inst2|Add0~2_combout\ & \inst2|clk_count[15]~5_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst2|Add0~2_combout\,
	datad => \inst2|clk_count[15]~5_combout\,
	combout => \inst2|Selector31~0_combout\);

-- Location: FF_X14_Y15_N1
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

-- Location: LCCOMB_X13_Y13_N4
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

-- Location: LCCOMB_X14_Y15_N28
\inst2|Selector30~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|Selector30~0_combout\ = (\inst2|Add0~4_combout\ & \inst2|clk_count[15]~5_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst2|Add0~4_combout\,
	datad => \inst2|clk_count[15]~5_combout\,
	combout => \inst2|Selector30~0_combout\);

-- Location: FF_X14_Y15_N29
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

-- Location: LCCOMB_X13_Y13_N6
\inst2|Add0~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|Add0~6_combout\ = (\inst2|clk_count\(3) & (!\inst2|Add0~5\)) # (!\inst2|clk_count\(3) & ((\inst2|Add0~5\) # (GND)))
-- \inst2|Add0~7\ = CARRY((!\inst2|Add0~5\) # (!\inst2|clk_count\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|clk_count\(3),
	datad => VCC,
	cin => \inst2|Add0~5\,
	combout => \inst2|Add0~6_combout\,
	cout => \inst2|Add0~7\);

-- Location: LCCOMB_X14_Y13_N6
\inst2|Selector29~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|Selector29~0_combout\ = (\inst2|Add0~6_combout\ & \inst2|clk_count[15]~5_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst2|Add0~6_combout\,
	datad => \inst2|clk_count[15]~5_combout\,
	combout => \inst2|Selector29~0_combout\);

-- Location: FF_X14_Y13_N7
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

-- Location: LCCOMB_X13_Y13_N8
\inst2|Add0~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|Add0~8_combout\ = (\inst2|clk_count\(4) & (\inst2|Add0~7\ $ (GND))) # (!\inst2|clk_count\(4) & (!\inst2|Add0~7\ & VCC))
-- \inst2|Add0~9\ = CARRY((\inst2|clk_count\(4) & !\inst2|Add0~7\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst2|clk_count\(4),
	datad => VCC,
	cin => \inst2|Add0~7\,
	combout => \inst2|Add0~8_combout\,
	cout => \inst2|Add0~9\);

-- Location: LCCOMB_X14_Y13_N28
\inst2|Selector28~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|Selector28~0_combout\ = (\inst2|Add0~8_combout\ & \inst2|clk_count[15]~5_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|Add0~8_combout\,
	datad => \inst2|clk_count[15]~5_combout\,
	combout => \inst2|Selector28~0_combout\);

-- Location: FF_X14_Y13_N29
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

-- Location: LCCOMB_X13_Y13_N10
\inst2|Add0~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|Add0~10_combout\ = (\inst2|clk_count\(5) & (!\inst2|Add0~9\)) # (!\inst2|clk_count\(5) & ((\inst2|Add0~9\) # (GND)))
-- \inst2|Add0~11\ = CARRY((!\inst2|Add0~9\) # (!\inst2|clk_count\(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst2|clk_count\(5),
	datad => VCC,
	cin => \inst2|Add0~9\,
	combout => \inst2|Add0~10_combout\,
	cout => \inst2|Add0~11\);

-- Location: LCCOMB_X14_Y13_N18
\inst2|Selector27~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|Selector27~0_combout\ = (\inst2|Add0~10_combout\ & \inst2|clk_count[15]~5_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|Add0~10_combout\,
	datad => \inst2|clk_count[15]~5_combout\,
	combout => \inst2|Selector27~0_combout\);

-- Location: FF_X14_Y13_N19
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

-- Location: LCCOMB_X13_Y13_N12
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

-- Location: LCCOMB_X14_Y15_N20
\inst2|Selector26~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|Selector26~0_combout\ = (\inst2|Add0~12_combout\ & \inst2|clk_count[15]~5_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst2|Add0~12_combout\,
	datad => \inst2|clk_count[15]~5_combout\,
	combout => \inst2|Selector26~0_combout\);

-- Location: FF_X14_Y15_N21
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

-- Location: LCCOMB_X13_Y13_N14
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

-- Location: LCCOMB_X14_Y13_N14
\inst2|Selector25~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|Selector25~0_combout\ = (\inst2|Add0~14_combout\ & \inst2|clk_count[15]~5_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|Add0~14_combout\,
	datad => \inst2|clk_count[15]~5_combout\,
	combout => \inst2|Selector25~0_combout\);

-- Location: FF_X14_Y13_N15
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

-- Location: LCCOMB_X13_Y13_N16
\inst2|Add0~16\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|Add0~16_combout\ = (\inst2|clk_count\(8) & (\inst2|Add0~15\ $ (GND))) # (!\inst2|clk_count\(8) & (!\inst2|Add0~15\ & VCC))
-- \inst2|Add0~17\ = CARRY((\inst2|clk_count\(8) & !\inst2|Add0~15\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst2|clk_count\(8),
	datad => VCC,
	cin => \inst2|Add0~15\,
	combout => \inst2|Add0~16_combout\,
	cout => \inst2|Add0~17\);

-- Location: LCCOMB_X14_Y13_N24
\inst2|Selector24~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|Selector24~0_combout\ = (\inst2|Add0~16_combout\ & \inst2|clk_count[15]~5_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst2|Add0~16_combout\,
	datad => \inst2|clk_count[15]~5_combout\,
	combout => \inst2|Selector24~0_combout\);

-- Location: FF_X14_Y13_N25
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

-- Location: LCCOMB_X13_Y13_N18
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

-- Location: LCCOMB_X14_Y13_N8
\inst2|Selector23~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|Selector23~0_combout\ = (\inst2|Add0~18_combout\ & \inst2|clk_count[15]~5_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst2|Add0~18_combout\,
	datad => \inst2|clk_count[15]~5_combout\,
	combout => \inst2|Selector23~0_combout\);

-- Location: FF_X14_Y13_N9
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

-- Location: LCCOMB_X13_Y13_N20
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

-- Location: LCCOMB_X14_Y13_N2
\inst2|Selector22~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|Selector22~0_combout\ = (\inst2|Add0~20_combout\ & \inst2|clk_count[15]~5_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst2|Add0~20_combout\,
	datad => \inst2|clk_count[15]~5_combout\,
	combout => \inst2|Selector22~0_combout\);

-- Location: FF_X14_Y13_N3
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

-- Location: LCCOMB_X13_Y13_N22
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

-- Location: LCCOMB_X14_Y13_N12
\inst2|Selector21~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|Selector21~0_combout\ = (\inst2|Add0~22_combout\ & \inst2|clk_count[15]~5_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst2|Add0~22_combout\,
	datad => \inst2|clk_count[15]~5_combout\,
	combout => \inst2|Selector21~0_combout\);

-- Location: FF_X14_Y13_N13
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

-- Location: LCCOMB_X13_Y13_N24
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

-- Location: LCCOMB_X12_Y13_N24
\inst2|Selector20~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|Selector20~0_combout\ = (\inst2|Add0~24_combout\ & \inst2|clk_count[15]~5_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst2|Add0~24_combout\,
	datad => \inst2|clk_count[15]~5_combout\,
	combout => \inst2|Selector20~0_combout\);

-- Location: FF_X12_Y13_N25
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

-- Location: LCCOMB_X13_Y13_N26
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

-- Location: LCCOMB_X14_Y13_N16
\inst2|Selector19~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|Selector19~0_combout\ = (\inst2|Add0~26_combout\ & \inst2|clk_count[15]~5_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst2|Add0~26_combout\,
	datad => \inst2|clk_count[15]~5_combout\,
	combout => \inst2|Selector19~0_combout\);

-- Location: FF_X14_Y13_N17
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

-- Location: LCCOMB_X13_Y13_N28
\inst2|Add0~28\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|Add0~28_combout\ = (\inst2|clk_count\(14) & (\inst2|Add0~27\ $ (GND))) # (!\inst2|clk_count\(14) & (!\inst2|Add0~27\ & VCC))
-- \inst2|Add0~29\ = CARRY((\inst2|clk_count\(14) & !\inst2|Add0~27\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|clk_count\(14),
	datad => VCC,
	cin => \inst2|Add0~27\,
	combout => \inst2|Add0~28_combout\,
	cout => \inst2|Add0~29\);

-- Location: LCCOMB_X12_Y13_N16
\inst2|Selector18~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|Selector18~0_combout\ = (\inst2|Add0~28_combout\ & \inst2|clk_count[15]~5_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst2|Add0~28_combout\,
	datad => \inst2|clk_count[15]~5_combout\,
	combout => \inst2|Selector18~0_combout\);

-- Location: FF_X12_Y13_N17
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

-- Location: LCCOMB_X13_Y13_N30
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

-- Location: LCCOMB_X12_Y13_N30
\inst2|Selector17~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|Selector17~0_combout\ = (\inst2|Add0~30_combout\ & \inst2|clk_count[15]~5_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst2|Add0~30_combout\,
	datad => \inst2|clk_count[15]~5_combout\,
	combout => \inst2|Selector17~0_combout\);

-- Location: FF_X12_Y13_N31
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

-- Location: LCCOMB_X13_Y12_N0
\inst2|Add0~32\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|Add0~32_combout\ = (\inst2|clk_count\(16) & (\inst2|Add0~31\ $ (GND))) # (!\inst2|clk_count\(16) & (!\inst2|Add0~31\ & VCC))
-- \inst2|Add0~33\ = CARRY((\inst2|clk_count\(16) & !\inst2|Add0~31\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst2|clk_count\(16),
	datad => VCC,
	cin => \inst2|Add0~31\,
	combout => \inst2|Add0~32_combout\,
	cout => \inst2|Add0~33\);

-- Location: LCCOMB_X12_Y12_N4
\inst2|Selector16~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|Selector16~0_combout\ = (\inst2|Add0~32_combout\ & \inst2|clk_count[15]~5_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst2|Add0~32_combout\,
	datad => \inst2|clk_count[15]~5_combout\,
	combout => \inst2|Selector16~0_combout\);

-- Location: FF_X12_Y12_N5
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

-- Location: LCCOMB_X13_Y12_N2
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

-- Location: LCCOMB_X12_Y12_N10
\inst2|Selector15~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|Selector15~0_combout\ = (\inst2|Add0~34_combout\ & \inst2|clk_count[15]~5_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|Add0~34_combout\,
	datad => \inst2|clk_count[15]~5_combout\,
	combout => \inst2|Selector15~0_combout\);

-- Location: FF_X12_Y12_N11
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

-- Location: LCCOMB_X13_Y12_N4
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

-- Location: LCCOMB_X12_Y12_N20
\inst2|Selector14~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|Selector14~0_combout\ = (\inst2|Add0~36_combout\ & \inst2|clk_count[15]~5_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst2|Add0~36_combout\,
	datad => \inst2|clk_count[15]~5_combout\,
	combout => \inst2|Selector14~0_combout\);

-- Location: FF_X12_Y12_N21
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

-- Location: LCCOMB_X13_Y12_N6
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

-- Location: LCCOMB_X12_Y12_N12
\inst2|Selector13~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|Selector13~0_combout\ = (\inst2|Add0~38_combout\ & \inst2|clk_count[15]~5_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|Add0~38_combout\,
	datad => \inst2|clk_count[15]~5_combout\,
	combout => \inst2|Selector13~0_combout\);

-- Location: FF_X12_Y12_N13
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

-- Location: LCCOMB_X13_Y12_N8
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

-- Location: LCCOMB_X14_Y12_N20
\inst2|Selector12~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|Selector12~0_combout\ = (\inst2|Add0~40_combout\ & \inst2|clk_count[15]~5_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|Add0~40_combout\,
	datad => \inst2|clk_count[15]~5_combout\,
	combout => \inst2|Selector12~0_combout\);

-- Location: FF_X14_Y12_N21
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

-- Location: LCCOMB_X13_Y12_N10
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

-- Location: LCCOMB_X14_Y14_N30
\inst2|Selector11~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|Selector11~0_combout\ = (\inst2|Add0~42_combout\ & \inst2|clk_count[15]~5_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst2|Add0~42_combout\,
	datad => \inst2|clk_count[15]~5_combout\,
	combout => \inst2|Selector11~0_combout\);

-- Location: FF_X14_Y14_N31
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

-- Location: LCCOMB_X13_Y12_N12
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

-- Location: LCCOMB_X14_Y13_N0
\inst2|Selector10~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|Selector10~0_combout\ = (\inst2|Add0~44_combout\ & \inst2|clk_count[15]~5_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst2|Add0~44_combout\,
	datad => \inst2|clk_count[15]~5_combout\,
	combout => \inst2|Selector10~0_combout\);

-- Location: FF_X14_Y13_N1
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

-- Location: LCCOMB_X13_Y12_N14
\inst2|Add0~46\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|Add0~46_combout\ = (\inst2|clk_count\(23) & (!\inst2|Add0~45\)) # (!\inst2|clk_count\(23) & ((\inst2|Add0~45\) # (GND)))
-- \inst2|Add0~47\ = CARRY((!\inst2|Add0~45\) # (!\inst2|clk_count\(23)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst2|clk_count\(23),
	datad => VCC,
	cin => \inst2|Add0~45\,
	combout => \inst2|Add0~46_combout\,
	cout => \inst2|Add0~47\);

-- Location: LCCOMB_X14_Y13_N30
\inst2|Selector9~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|Selector9~0_combout\ = (\inst2|Add0~46_combout\ & \inst2|clk_count[15]~5_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|Add0~46_combout\,
	datad => \inst2|clk_count[15]~5_combout\,
	combout => \inst2|Selector9~0_combout\);

-- Location: FF_X14_Y13_N31
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

-- Location: LCCOMB_X13_Y12_N16
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

-- Location: LCCOMB_X14_Y14_N8
\inst2|Selector8~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|Selector8~0_combout\ = (\inst2|Add0~48_combout\ & \inst2|clk_count[15]~5_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst2|Add0~48_combout\,
	datad => \inst2|clk_count[15]~5_combout\,
	combout => \inst2|Selector8~0_combout\);

-- Location: FF_X14_Y14_N9
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

-- Location: LCCOMB_X13_Y12_N18
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

-- Location: LCCOMB_X14_Y13_N20
\inst2|Selector7~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|Selector7~0_combout\ = (\inst2|Add0~50_combout\ & \inst2|clk_count[15]~5_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst2|Add0~50_combout\,
	datad => \inst2|clk_count[15]~5_combout\,
	combout => \inst2|Selector7~0_combout\);

-- Location: FF_X14_Y13_N21
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

-- Location: LCCOMB_X13_Y12_N20
\inst2|Add0~52\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|Add0~52_combout\ = (\inst2|clk_count\(26) & (\inst2|Add0~51\ $ (GND))) # (!\inst2|clk_count\(26) & (!\inst2|Add0~51\ & VCC))
-- \inst2|Add0~53\ = CARRY((\inst2|clk_count\(26) & !\inst2|Add0~51\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|clk_count\(26),
	datad => VCC,
	cin => \inst2|Add0~51\,
	combout => \inst2|Add0~52_combout\,
	cout => \inst2|Add0~53\);

-- Location: LCCOMB_X14_Y13_N4
\inst2|Selector6~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|Selector6~0_combout\ = (\inst2|Add0~52_combout\ & \inst2|clk_count[15]~5_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst2|Add0~52_combout\,
	datad => \inst2|clk_count[15]~5_combout\,
	combout => \inst2|Selector6~0_combout\);

-- Location: FF_X14_Y13_N5
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

-- Location: LCCOMB_X13_Y12_N22
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

-- Location: LCCOMB_X12_Y12_N2
\inst2|Selector5~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|Selector5~0_combout\ = (\inst2|Add0~54_combout\ & \inst2|clk_count[15]~5_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst2|Add0~54_combout\,
	datad => \inst2|clk_count[15]~5_combout\,
	combout => \inst2|Selector5~0_combout\);

-- Location: FF_X12_Y12_N3
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

-- Location: LCCOMB_X13_Y12_N24
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

-- Location: LCCOMB_X12_Y12_N16
\inst2|Selector4~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|Selector4~0_combout\ = (\inst2|Add0~56_combout\ & \inst2|clk_count[15]~5_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst2|Add0~56_combout\,
	datad => \inst2|clk_count[15]~5_combout\,
	combout => \inst2|Selector4~0_combout\);

-- Location: FF_X12_Y12_N17
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

-- Location: LCCOMB_X13_Y12_N26
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

-- Location: LCCOMB_X12_Y12_N26
\inst2|Selector3~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|Selector3~0_combout\ = (\inst2|Add0~58_combout\ & \inst2|clk_count[15]~5_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst2|Add0~58_combout\,
	datad => \inst2|clk_count[15]~5_combout\,
	combout => \inst2|Selector3~0_combout\);

-- Location: FF_X12_Y12_N27
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

-- Location: LCCOMB_X13_Y12_N28
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

-- Location: LCCOMB_X12_Y12_N24
\inst2|Selector2~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|Selector2~0_combout\ = (\inst2|Add0~60_combout\ & \inst2|clk_count[15]~5_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst2|Add0~60_combout\,
	datad => \inst2|clk_count[15]~5_combout\,
	combout => \inst2|Selector2~0_combout\);

-- Location: FF_X12_Y12_N25
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

-- Location: LCCOMB_X13_Y12_N30
\inst2|Add0~62\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|Add0~62_combout\ = \inst2|clk_count\(31) $ (\inst2|Add0~61\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|clk_count\(31),
	cin => \inst2|Add0~61\,
	combout => \inst2|Add0~62_combout\);

-- Location: LCCOMB_X12_Y13_N28
\inst2|Selector1~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|Selector1~0_combout\ = (\inst2|Add0~62_combout\ & \inst2|clk_count[15]~5_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|Add0~62_combout\,
	datad => \inst2|clk_count[15]~5_combout\,
	combout => \inst2|Selector1~0_combout\);

-- Location: FF_X12_Y13_N29
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

-- Location: LCCOMB_X12_Y14_N24
\inst2|LessThan3~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|LessThan3~12_combout\ = (\inst2|LessThan3~0_combout\ & !\inst2|Add0~50_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|LessThan3~0_combout\,
	datad => \inst2|Add0~50_combout\,
	combout => \inst2|LessThan3~12_combout\);

-- Location: LCCOMB_X12_Y14_N28
\inst2|LessThan3~13\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|LessThan3~13_combout\ = (!\inst2|Add0~54_combout\ & (!\inst2|Add0~52_combout\ & (\inst2|LessThan3~1_combout\ & \inst2|LessThan3~12_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|Add0~54_combout\,
	datab => \inst2|Add0~52_combout\,
	datac => \inst2|LessThan3~1_combout\,
	datad => \inst2|LessThan3~12_combout\,
	combout => \inst2|LessThan3~13_combout\);

-- Location: LCCOMB_X12_Y14_N12
\inst2|busy~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|busy~6_combout\ = (!\inst2|Add0~24_combout\ & (\inst2|LessThan3~3_combout\ & (\inst2|LessThan3~11_combout\ & \inst2|LessThan3~13_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|Add0~24_combout\,
	datab => \inst2|LessThan3~3_combout\,
	datac => \inst2|LessThan3~11_combout\,
	datad => \inst2|LessThan3~13_combout\,
	combout => \inst2|busy~6_combout\);

-- Location: LCCOMB_X12_Y14_N26
\inst2|busy~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|busy~8_combout\ = (!\inst2|Add0~58_combout\ & (!\inst2|Add0~56_combout\ & \inst2|busy~6_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst2|Add0~58_combout\,
	datac => \inst2|Add0~56_combout\,
	datad => \inst2|busy~6_combout\,
	combout => \inst2|busy~8_combout\);

-- Location: LCCOMB_X12_Y14_N18
\inst2|busy~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|busy~7_combout\ = (!\inst2|Add0~62_combout\ & (\inst2|lcd_data[2]~1_combout\ & ((\inst2|Add0~60_combout\) # (!\inst2|busy~8_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100010100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|Add0~62_combout\,
	datab => \inst2|Add0~60_combout\,
	datac => \inst2|busy~8_combout\,
	datad => \inst2|lcd_data[2]~1_combout\,
	combout => \inst2|busy~7_combout\);

-- Location: LCCOMB_X12_Y14_N10
\inst2|Selector33~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|Selector33~0_combout\ = (\inst2|estado.ENERGIZACAO~q\ & (((\inst2|estado.INICIALIZACAO~q\ & !\inst2|busy~7_combout\)))) # (!\inst2|estado.ENERGIZACAO~q\ & (((\inst2|estado.INICIALIZACAO~q\ & !\inst2|busy~7_combout\)) # 
-- (!\inst2|LessThan0~6_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000111110001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|estado.ENERGIZACAO~q\,
	datab => \inst2|LessThan0~6_combout\,
	datac => \inst2|estado.INICIALIZACAO~q\,
	datad => \inst2|busy~7_combout\,
	combout => \inst2|Selector33~0_combout\);

-- Location: FF_X12_Y14_N11
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

-- Location: LCCOMB_X12_Y15_N0
\inst1|char~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|char~2_combout\ = (\inst1|LessThan0~0_combout\ & (\inst1|char\(1) $ (\inst1|char\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst1|char\(1),
	datac => \inst1|LessThan0~0_combout\,
	datad => \inst1|char\(0),
	combout => \inst1|char~2_combout\);

-- Location: FF_X12_Y14_N1
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

-- Location: LCCOMB_X11_Y15_N0
\inst1|process_0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|process_0~0_combout\ = (!\inst1|lcd_enable~q\ & \inst2|busy~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst1|lcd_enable~q\,
	datad => \inst2|busy~q\,
	combout => \inst1|process_0~0_combout\);

-- Location: FF_X13_Y15_N13
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

-- Location: FF_X13_Y15_N19
\inst1|char[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \inst1|char~1_combout\,
	ena => \inst1|process_0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|char\(2));

-- Location: LCCOMB_X13_Y15_N24
\inst1|Add0~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|Add0~2_combout\ = \inst1|char\(3) $ (((\inst1|char\(0) & (\inst1|char\(2) & \inst1|char\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111100011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|char\(0),
	datab => \inst1|char\(2),
	datac => \inst1|char\(3),
	datad => \inst1|char\(1),
	combout => \inst1|Add0~2_combout\);

-- Location: LCCOMB_X13_Y15_N10
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

-- Location: FF_X13_Y15_N25
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
	ena => \inst1|process_0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|char\(3));

-- Location: LCCOMB_X13_Y15_N12
\inst1|Add0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|Add0~0_combout\ = (\inst1|char\(0) & (\inst1|char\(3) & (\inst1|char\(1) & \inst1|char\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|char\(0),
	datab => \inst1|char\(3),
	datac => \inst1|char\(1),
	datad => \inst1|char\(2),
	combout => \inst1|Add0~0_combout\);

-- Location: LCCOMB_X13_Y16_N30
\inst1|lcd_bus[0]~21\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|lcd_bus[0]~21_combout\ = (\inst1|LessThan0~0_combout\ & (\inst1|char\(4) $ (\inst1|Add0~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst1|LessThan0~0_combout\,
	datac => \inst1|char\(4),
	datad => \inst1|Add0~0_combout\,
	combout => \inst1|lcd_bus[0]~21_combout\);

-- Location: FF_X13_Y16_N31
\inst1|char[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \inst1|lcd_bus[0]~21_combout\,
	ena => \inst1|process_0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|char\(4));

-- Location: LCCOMB_X13_Y15_N14
\inst1|lcd_bus[5]~19\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|lcd_bus[5]~19_combout\ = (!\inst1|char\(4) & !\inst1|char\(3))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst1|char\(4),
	datad => \inst1|char\(3),
	combout => \inst1|lcd_bus[5]~19_combout\);

-- Location: LCCOMB_X12_Y13_N0
\inst1|char~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|char~0_combout\ = (\inst1|char\(5) $ (((!\inst1|char\(4)) # (!\inst1|Add0~0_combout\)))) # (!\inst1|LessThan0~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011011101110111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|char\(5),
	datab => \inst1|LessThan0~0_combout\,
	datac => \inst1|Add0~0_combout\,
	datad => \inst1|char\(4),
	combout => \inst1|char~0_combout\);

-- Location: LCCOMB_X12_Y15_N24
\inst1|char[5]~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|char[5]~6_combout\ = !\inst1|char~0_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst1|char~0_combout\,
	combout => \inst1|char[5]~6_combout\);

-- Location: FF_X12_Y15_N25
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

-- Location: LCCOMB_X13_Y15_N20
\inst1|LessThan0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|LessThan0~0_combout\ = ((!\inst1|char\(1) & (!\inst1|char\(2) & \inst1|lcd_bus[5]~19_combout\))) # (!\inst1|char\(5))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|char\(1),
	datab => \inst1|char\(2),
	datac => \inst1|lcd_bus[5]~19_combout\,
	datad => \inst1|char\(5),
	combout => \inst1|LessThan0~0_combout\);

-- Location: LCCOMB_X13_Y15_N4
\inst1|char~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|char~4_combout\ = (\inst1|LessThan0~0_combout\ & !\inst1|char\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|LessThan0~0_combout\,
	datac => \inst1|char\(0),
	combout => \inst1|char~4_combout\);

-- Location: FF_X13_Y15_N27
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

-- Location: LCCOMB_X13_Y15_N18
\inst1|char~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|char~1_combout\ = (\inst1|LessThan0~0_combout\ & (\inst1|char\(2) $ (((\inst1|char\(0) & \inst1|char\(1))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100100011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|char\(0),
	datab => \inst1|LessThan0~0_combout\,
	datac => \inst1|char\(2),
	datad => \inst1|char\(1),
	combout => \inst1|char~1_combout\);

-- Location: LCCOMB_X11_Y15_N6
\inst1|lcd_enable~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|lcd_enable~2_combout\ = (!\inst1|char~1_combout\ & (!\inst1|char~2_combout\ & (!\inst1|lcd_bus[0]~21_combout\ & !\inst1|char~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|char~1_combout\,
	datab => \inst1|char~2_combout\,
	datac => \inst1|lcd_bus[0]~21_combout\,
	datad => \inst1|char~3_combout\,
	combout => \inst1|lcd_enable~2_combout\);

-- Location: LCCOMB_X11_Y15_N2
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

-- Location: FF_X11_Y15_N3
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

-- Location: LCCOMB_X12_Y14_N0
\inst2|Selector34~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|Selector34~0_combout\ = (\inst2|estado.PRONTO~q\ & (((\inst2|estado.INICIALIZACAO~q\ & \inst2|busy~7_combout\)) # (!\inst1|lcd_enable~q\))) # (!\inst2|estado.PRONTO~q\ & (\inst2|estado.INICIALIZACAO~q\ & ((\inst2|busy~7_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|estado.PRONTO~q\,
	datab => \inst2|estado.INICIALIZACAO~q\,
	datac => \inst1|lcd_enable~q\,
	datad => \inst2|busy~7_combout\,
	combout => \inst2|Selector34~0_combout\);

-- Location: LCCOMB_X12_Y14_N22
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

-- Location: FF_X12_Y14_N23
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

-- Location: LCCOMB_X12_Y13_N14
\inst2|rw~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|rw~0_combout\ = (\inst2|estado.PRONTO~q\ & \inst1|lcd_enable~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst2|estado.PRONTO~q\,
	datad => \inst1|lcd_enable~q\,
	combout => \inst2|rw~0_combout\);

-- Location: LCCOMB_X12_Y13_N10
\inst2|Selector35~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|Selector35~0_combout\ = (\inst2|rw~0_combout\) # ((\inst2|estado.ENVIAR~q\ & ((\inst2|clk_count\(31)) # (\inst2|LessThan9~9_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101011101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|rw~0_combout\,
	datab => \inst2|clk_count\(31),
	datac => \inst2|estado.ENVIAR~q\,
	datad => \inst2|LessThan9~9_combout\,
	combout => \inst2|Selector35~0_combout\);

-- Location: FF_X12_Y13_N11
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

-- Location: LCCOMB_X11_Y14_N30
\inst2|Selector46~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|Selector46~12_combout\ = (!\inst2|estado.ENVIAR~q\ & ((\inst2|estado.INICIALIZACAO~q\ & ((\inst2|Add0~62_combout\))) # (!\inst2|estado.INICIALIZACAO~q\ & (\inst2|e~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|estado.ENVIAR~q\,
	datab => \inst2|estado.INICIALIZACAO~q\,
	datac => \inst2|e~q\,
	datad => \inst2|Add0~62_combout\,
	combout => \inst2|Selector46~12_combout\);

-- Location: LCCOMB_X14_Y12_N4
\inst2|LessThan10~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|LessThan10~0_combout\ = (!\inst2|clk_count\(10) & (!\inst2|clk_count\(11) & \inst2|LessThan9~4_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|clk_count\(10),
	datac => \inst2|clk_count\(11),
	datad => \inst2|LessThan9~4_combout\,
	combout => \inst2|LessThan10~0_combout\);

-- Location: LCCOMB_X14_Y15_N12
\inst2|LessThan10~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|LessThan10~3_combout\ = (!\inst2|clk_count\(8) & (!\inst2|clk_count\(7) & (!\inst2|clk_count\(9) & !\inst2|clk_count\(6))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|clk_count\(8),
	datab => \inst2|clk_count\(7),
	datac => \inst2|clk_count\(9),
	datad => \inst2|clk_count\(6),
	combout => \inst2|LessThan10~3_combout\);

-- Location: LCCOMB_X14_Y15_N30
\inst2|LessThan10~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|LessThan10~1_combout\ = (\inst2|clk_count\(4) & \inst2|clk_count\(5))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst2|clk_count\(4),
	datad => \inst2|clk_count\(5),
	combout => \inst2|LessThan10~1_combout\);

-- Location: LCCOMB_X14_Y15_N2
\inst2|LessThan10~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|LessThan10~2_combout\ = ((!\inst2|clk_count\(2) & (!\inst2|clk_count\(1) & !\inst2|clk_count\(3)))) # (!\inst2|LessThan10~1_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010101010111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|LessThan10~1_combout\,
	datab => \inst2|clk_count\(2),
	datac => \inst2|clk_count\(1),
	datad => \inst2|clk_count\(3),
	combout => \inst2|LessThan10~2_combout\);

-- Location: LCCOMB_X14_Y12_N0
\inst2|LessThan12~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|LessThan12~0_combout\ = (!\inst2|clk_count\(11) & (!\inst2|clk_count\(21) & (\inst2|LessThan9~3_combout\ & !\inst2|clk_count\(18))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|clk_count\(11),
	datab => \inst2|clk_count\(21),
	datac => \inst2|LessThan9~3_combout\,
	datad => \inst2|clk_count\(18),
	combout => \inst2|LessThan12~0_combout\);

-- Location: LCCOMB_X14_Y12_N26
\inst2|LessThan10~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|LessThan10~4_combout\ = (!\inst2|clk_count\(10) & (\inst2|LessThan10~3_combout\ & (\inst2|LessThan10~2_combout\ & \inst2|LessThan12~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|clk_count\(10),
	datab => \inst2|LessThan10~3_combout\,
	datac => \inst2|LessThan10~2_combout\,
	datad => \inst2|LessThan12~0_combout\,
	combout => \inst2|LessThan10~4_combout\);

-- Location: LCCOMB_X14_Y15_N24
\inst2|LessThan11~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|LessThan11~0_combout\ = (!\inst2|clk_count\(6) & (((!\inst2|clk_count\(3)) # (!\inst2|LessThan10~1_combout\)) # (!\inst2|clk_count\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001010101010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|clk_count\(6),
	datab => \inst2|clk_count\(2),
	datac => \inst2|LessThan10~1_combout\,
	datad => \inst2|clk_count\(3),
	combout => \inst2|LessThan11~0_combout\);

-- Location: LCCOMB_X14_Y15_N26
\inst2|LessThan11~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|LessThan11~1_combout\ = ((!\inst2|clk_count\(8) & ((\inst2|LessThan11~0_combout\) # (!\inst2|clk_count\(7))))) # (!\inst2|clk_count\(9))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111011100110111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|clk_count\(8),
	datab => \inst2|clk_count\(9),
	datac => \inst2|clk_count\(7),
	datad => \inst2|LessThan11~0_combout\,
	combout => \inst2|LessThan11~1_combout\);

-- Location: LCCOMB_X14_Y12_N12
\inst2|Selector46~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|Selector46~0_combout\ = (\inst2|LessThan9~9_combout\ & (\inst2|LessThan10~0_combout\ & (!\inst2|LessThan10~4_combout\ & \inst2|LessThan11~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|LessThan9~9_combout\,
	datab => \inst2|LessThan10~0_combout\,
	datac => \inst2|LessThan10~4_combout\,
	datad => \inst2|LessThan11~1_combout\,
	combout => \inst2|Selector46~0_combout\);

-- Location: LCCOMB_X14_Y15_N10
\inst2|LessThan9~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|LessThan9~10_combout\ = (!\inst2|clk_count\(3) & (!\inst2|clk_count\(4) & !\inst2|clk_count\(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst2|clk_count\(3),
	datac => \inst2|clk_count\(4),
	datad => \inst2|clk_count\(5),
	combout => \inst2|LessThan9~10_combout\);

-- Location: LCCOMB_X14_Y15_N8
\inst2|LessThan12~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|LessThan12~1_combout\ = ((\inst2|LessThan9~10_combout\ & ((!\inst2|clk_count\(1)) # (!\inst2|clk_count\(2))))) # (!\inst2|clk_count\(6))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010101011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|LessThan9~10_combout\,
	datab => \inst2|clk_count\(2),
	datac => \inst2|clk_count\(1),
	datad => \inst2|clk_count\(6),
	combout => \inst2|LessThan12~1_combout\);

-- Location: LCCOMB_X14_Y15_N14
\inst2|LessThan12~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|LessThan12~2_combout\ = (!\inst2|clk_count\(9) & (((!\inst2|clk_count\(7) & \inst2|LessThan12~1_combout\)) # (!\inst2|clk_count\(8))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000011100000101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|clk_count\(8),
	datab => \inst2|clk_count\(7),
	datac => \inst2|clk_count\(9),
	datad => \inst2|LessThan12~1_combout\,
	combout => \inst2|LessThan12~2_combout\);

-- Location: LCCOMB_X14_Y12_N14
\inst2|Selector46~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|Selector46~1_combout\ = (!\inst2|LessThan10~4_combout\ & (((\inst2|clk_count\(10) & !\inst2|LessThan12~2_combout\)) # (!\inst2|LessThan12~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001100001011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|clk_count\(10),
	datab => \inst2|LessThan12~0_combout\,
	datac => \inst2|LessThan10~4_combout\,
	datad => \inst2|LessThan12~2_combout\,
	combout => \inst2|Selector46~1_combout\);

-- Location: LCCOMB_X14_Y12_N28
\inst2|Selector46~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|Selector46~2_combout\ = (\inst2|Selector46~0_combout\) # ((\inst2|e~q\ & ((\inst2|Selector46~1_combout\) # (!\inst2|LessThan9~9_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101011101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|Selector46~0_combout\,
	datab => \inst2|e~q\,
	datac => \inst2|Selector46~1_combout\,
	datad => \inst2|LessThan9~9_combout\,
	combout => \inst2|Selector46~2_combout\);

-- Location: LCCOMB_X14_Y12_N22
\inst2|Selector46~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|Selector46~3_combout\ = (!\inst2|clk_count\(31) & (\inst2|estado.ENVIAR~q\ & \inst2|Selector46~2_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|clk_count\(31),
	datac => \inst2|estado.ENVIAR~q\,
	datad => \inst2|Selector46~2_combout\,
	combout => \inst2|Selector46~3_combout\);

-- Location: LCCOMB_X10_Y14_N14
\inst2|LessThan2~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|LessThan2~3_combout\ = (\inst2|LessThan3~3_combout\ & (!\inst2|Add0~24_combout\ & (\inst2|LessThan2~2_combout\ & \inst2|LessThan3~7_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|LessThan3~3_combout\,
	datab => \inst2|Add0~24_combout\,
	datac => \inst2|LessThan2~2_combout\,
	datad => \inst2|LessThan3~7_combout\,
	combout => \inst2|LessThan2~3_combout\);

-- Location: LCCOMB_X11_Y14_N24
\inst2|LessThan4~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|LessThan4~3_combout\ = (\inst2|LessThan3~3_combout\ & (\inst2|LessThan3~7_combout\ & ((\inst2|LessThan4~2_combout\) # (!\inst2|Add0~24_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010001000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|LessThan3~3_combout\,
	datab => \inst2|Add0~24_combout\,
	datac => \inst2|LessThan4~2_combout\,
	datad => \inst2|LessThan3~7_combout\,
	combout => \inst2|LessThan4~3_combout\);

-- Location: LCCOMB_X10_Y14_N22
\inst2|Selector46~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|Selector46~9_combout\ = (\inst2|estado.INICIALIZACAO~q\ & (!\inst2|LessThan2~3_combout\ & (!\inst2|estado.ENVIAR~q\ & !\inst2|LessThan4~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|estado.INICIALIZACAO~q\,
	datab => \inst2|LessThan2~3_combout\,
	datac => \inst2|estado.ENVIAR~q\,
	datad => \inst2|LessThan4~3_combout\,
	combout => \inst2|Selector46~9_combout\);

-- Location: LCCOMB_X10_Y14_N0
\inst2|LessThan7~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|LessThan7~2_combout\ = (!\inst2|Add0~60_combout\ & (\inst2|LessThan3~7_combout\ & ((\inst2|LessThan7~1_combout\) # (!\inst2|LessThan6~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|LessThan6~3_combout\,
	datab => \inst2|Add0~60_combout\,
	datac => \inst2|LessThan7~1_combout\,
	datad => \inst2|LessThan3~7_combout\,
	combout => \inst2|LessThan7~2_combout\);

-- Location: LCCOMB_X14_Y14_N4
\inst2|LessThan8~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|LessThan8~2_combout\ = (!\inst2|Add0~28_combout\ & (((\inst2|LessThan8~1_combout\ & !\inst2|Add0~18_combout\)) # (!\inst2|LessThan3~8_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|LessThan8~1_combout\,
	datab => \inst2|Add0~18_combout\,
	datac => \inst2|LessThan3~8_combout\,
	datad => \inst2|Add0~28_combout\,
	combout => \inst2|LessThan8~2_combout\);

-- Location: LCCOMB_X10_Y14_N10
\inst2|LessThan8~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|LessThan8~3_combout\ = (\inst2|LessThan3~0_combout\ & (((!\inst2|Add0~24_combout\ & \inst2|LessThan8~2_combout\)) # (!\inst2|LessThan6~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|LessThan3~0_combout\,
	datab => \inst2|Add0~24_combout\,
	datac => \inst2|LessThan8~2_combout\,
	datad => \inst2|LessThan6~3_combout\,
	combout => \inst2|LessThan8~3_combout\);

-- Location: LCCOMB_X10_Y14_N28
\inst2|LessThan8~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|LessThan8~4_combout\ = (\inst2|LessThan3~1_combout\ & \inst2|LessThan8~3_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst2|LessThan3~1_combout\,
	datad => \inst2|LessThan8~3_combout\,
	combout => \inst2|LessThan8~4_combout\);

-- Location: LCCOMB_X10_Y14_N30
\inst2|LessThan8~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|LessThan8~5_combout\ = (\inst2|LessThan3~5_combout\ & (!\inst2|Add0~60_combout\ & (\inst2|busy~4_combout\ & \inst2|LessThan8~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|LessThan3~5_combout\,
	datab => \inst2|Add0~60_combout\,
	datac => \inst2|busy~4_combout\,
	datad => \inst2|LessThan8~4_combout\,
	combout => \inst2|LessThan8~5_combout\);

-- Location: LCCOMB_X10_Y14_N2
\inst2|Selector46~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|Selector46~4_combout\ = (\inst2|estado.INICIALIZACAO~q\ & (\inst2|Add0~60_combout\ & !\inst2|estado.ENVIAR~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|estado.INICIALIZACAO~q\,
	datac => \inst2|Add0~60_combout\,
	datad => \inst2|estado.ENVIAR~q\,
	combout => \inst2|Selector46~4_combout\);

-- Location: LCCOMB_X10_Y14_N8
\inst2|busy~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|busy~5_combout\ = (\inst2|LessThan3~7_combout\ & (((\inst2|LessThan6~0_combout\ & \inst2|LessThan6~2_combout\)) # (!\inst2|LessThan6~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101010100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|LessThan6~3_combout\,
	datab => \inst2|LessThan6~0_combout\,
	datac => \inst2|LessThan6~2_combout\,
	datad => \inst2|LessThan3~7_combout\,
	combout => \inst2|busy~5_combout\);

-- Location: LCCOMB_X11_Y14_N22
\inst2|Selector46~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|Selector46~5_combout\ = (\inst2|estado.INICIALIZACAO~q\ & !\inst2|estado.ENVIAR~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst2|estado.INICIALIZACAO~q\,
	datad => \inst2|estado.ENVIAR~q\,
	combout => \inst2|Selector46~5_combout\);

-- Location: LCCOMB_X10_Y14_N20
\inst2|Selector46~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|Selector46~6_combout\ = (\inst2|Selector46~5_combout\ & (((\inst2|Add0~24_combout\ & !\inst2|LessThan4~2_combout\)) # (!\inst2|LessThan3~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101010001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|Selector46~5_combout\,
	datab => \inst2|Add0~24_combout\,
	datac => \inst2|LessThan3~4_combout\,
	datad => \inst2|LessThan4~2_combout\,
	combout => \inst2|Selector46~6_combout\);

-- Location: LCCOMB_X10_Y14_N18
\inst2|Selector46~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|Selector46~7_combout\ = (\inst2|Selector46~4_combout\) # ((!\inst2|busy~5_combout\ & (!\inst2|LessThan2~3_combout\ & \inst2|Selector46~6_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|Selector46~4_combout\,
	datab => \inst2|busy~5_combout\,
	datac => \inst2|LessThan2~3_combout\,
	datad => \inst2|Selector46~6_combout\,
	combout => \inst2|Selector46~7_combout\);

-- Location: LCCOMB_X10_Y14_N24
\inst2|Selector46~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|Selector46~8_combout\ = (\inst2|Selector46~7_combout\ & ((\inst2|LessThan7~2_combout\) # ((\inst2|e~q\ & !\inst2|LessThan8~5_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|e~q\,
	datab => \inst2|LessThan7~2_combout\,
	datac => \inst2|LessThan8~5_combout\,
	datad => \inst2|Selector46~7_combout\,
	combout => \inst2|Selector46~8_combout\);

-- Location: LCCOMB_X10_Y14_N4
\inst2|Selector46~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|Selector46~10_combout\ = (\inst2|Selector46~8_combout\) # ((\inst2|LessThan5~2_combout\ & (!\inst2|Add0~60_combout\ & \inst2|Selector46~9_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|LessThan5~2_combout\,
	datab => \inst2|Add0~60_combout\,
	datac => \inst2|Selector46~9_combout\,
	datad => \inst2|Selector46~8_combout\,
	combout => \inst2|Selector46~10_combout\);

-- Location: LCCOMB_X10_Y14_N26
\inst2|LessThan1~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|LessThan1~2_combout\ = (\inst2|LessThan3~3_combout\ & (\inst2|LessThan1~1_combout\ & (\inst2|busy~4_combout\ & \inst2|LessThan3~13_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|LessThan3~3_combout\,
	datab => \inst2|LessThan1~1_combout\,
	datac => \inst2|busy~4_combout\,
	datad => \inst2|LessThan3~13_combout\,
	combout => \inst2|LessThan1~2_combout\);

-- Location: LCCOMB_X13_Y11_N12
\inst2|Selector42~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|Selector42~0_combout\ = (\inst2|LessThan3~11_combout\ & (!\inst2|LessThan2~2_combout\ & (!\inst2|Add0~24_combout\ & \inst2|LessThan3~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|LessThan3~11_combout\,
	datab => \inst2|LessThan2~2_combout\,
	datac => \inst2|Add0~24_combout\,
	datad => \inst2|LessThan3~4_combout\,
	combout => \inst2|Selector42~0_combout\);

-- Location: LCCOMB_X10_Y14_N16
\inst2|Selector46~11\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|Selector46~11_combout\ = (\inst2|Selector46~5_combout\ & (!\inst2|Add0~60_combout\ & ((\inst2|LessThan1~2_combout\) # (\inst2|Selector42~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010001000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|Selector46~5_combout\,
	datab => \inst2|Add0~60_combout\,
	datac => \inst2|LessThan1~2_combout\,
	datad => \inst2|Selector42~0_combout\,
	combout => \inst2|Selector46~11_combout\);

-- Location: LCCOMB_X10_Y14_N12
\inst2|Selector46~13\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|Selector46~13_combout\ = (\inst2|Selector46~12_combout\) # ((\inst2|Selector46~3_combout\) # ((\inst2|Selector46~10_combout\) # (\inst2|Selector46~11_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|Selector46~12_combout\,
	datab => \inst2|Selector46~3_combout\,
	datac => \inst2|Selector46~10_combout\,
	datad => \inst2|Selector46~11_combout\,
	combout => \inst2|Selector46~13_combout\);

-- Location: FF_X10_Y14_N13
\inst2|e\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \inst2|Selector46~13_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst2|e~q\);

-- Location: LCCOMB_X13_Y15_N26
\inst1|Mux0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|Mux0~0_combout\ = (\inst1|char\(1) & (((!\inst1|char\(2)) # (!\inst1|char\(0))) # (!\inst1|char\(3)))) # (!\inst1|char\(1) & ((\inst1|char\(3)) # ((\inst1|char\(0)) # (\inst1|char\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|char\(1),
	datab => \inst1|char\(3),
	datac => \inst1|char\(0),
	datad => \inst1|char\(2),
	combout => \inst1|Mux0~0_combout\);

-- Location: LCCOMB_X12_Y13_N12
\inst1|Mux0~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|Mux0~1_combout\ = (\inst1|Mux0~0_combout\) # (\inst1|char\(5) $ (((\inst1|Add0~0_combout\ & \inst1|char\(4)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011111011101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|Mux0~0_combout\,
	datab => \inst1|char\(5),
	datac => \inst1|Add0~0_combout\,
	datad => \inst1|char\(4),
	combout => \inst1|Mux0~1_combout\);

-- Location: LCCOMB_X12_Y13_N26
\inst1|Add0~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|Add0~1_combout\ = \inst1|Add0~0_combout\ $ (\inst1|char\(4))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst1|Add0~0_combout\,
	datad => \inst1|char\(4),
	combout => \inst1|Add0~1_combout\);

-- Location: LCCOMB_X12_Y13_N4
\inst1|Mux0~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|Mux0~2_combout\ = (\inst1|LessThan0~0_combout\ & ((\inst1|Mux0~1_combout\) # (\inst1|char\(0) $ (!\inst1|Add0~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000010110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|Mux0~1_combout\,
	datab => \inst1|char\(0),
	datac => \inst1|LessThan0~0_combout\,
	datad => \inst1|Add0~1_combout\,
	combout => \inst1|Mux0~2_combout\);

-- Location: LCCOMB_X13_Y15_N8
\inst1|LessThan0~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|LessThan0~1_combout\ = (!\inst1|char\(1) & (!\inst1|char\(3) & (!\inst1|char\(4) & !\inst1|char\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|char\(1),
	datab => \inst1|char\(3),
	datac => \inst1|char\(4),
	datad => \inst1|char\(2),
	combout => \inst1|LessThan0~1_combout\);

-- Location: LCCOMB_X12_Y15_N26
\inst1|lcd_bus[9]~20\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|lcd_bus[9]~20_combout\ = (\inst1|process_0~0_combout\ & (((!\inst1|char\(0)) # (!\inst1|char\(5))) # (!\inst1|LessThan0~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010101010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|process_0~0_combout\,
	datab => \inst1|LessThan0~1_combout\,
	datac => \inst1|char\(5),
	datad => \inst1|char\(0),
	combout => \inst1|lcd_bus[9]~20_combout\);

-- Location: FF_X12_Y13_N5
\inst1|lcd_bus[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \inst1|Mux0~2_combout\,
	ena => \inst1|lcd_bus[9]~20_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|lcd_bus\(9));

-- Location: LCCOMB_X11_Y13_N18
\inst2|rs~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|rs~0_combout\ = (!\inst2|estado.ENVIAR~q\ & (!\inst2|estado.INICIALIZACAO~q\ & ((\inst2|estado.ENERGIZACAO~q\) # (!\inst2|LessThan0~6_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001000000011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|estado.ENERGIZACAO~q\,
	datab => \inst2|estado.ENVIAR~q\,
	datac => \inst2|estado.INICIALIZACAO~q\,
	datad => \inst2|LessThan0~6_combout\,
	combout => \inst2|rs~0_combout\);

-- Location: LCCOMB_X11_Y13_N4
\inst2|rs~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|rs~1_combout\ = (\inst2|rs~0_combout\ & (\inst1|lcd_bus\(9) & (\inst2|rw~0_combout\))) # (!\inst2|rs~0_combout\ & (((\inst2|rs~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|lcd_bus\(9),
	datab => \inst2|rw~0_combout\,
	datac => \inst2|rs~q\,
	datad => \inst2|rs~0_combout\,
	combout => \inst2|rs~1_combout\);

-- Location: FF_X11_Y13_N5
\inst2|rs\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \inst2|rs~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst2|rs~q\);

-- Location: LCCOMB_X11_Y13_N16
\inst2|Selector38~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|Selector38~0_combout\ = (\inst1|lcd_enable~q\ & (\inst2|estado.PRONTO~q\ & !\inst1|lcd_bus\(9)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|lcd_enable~q\,
	datac => \inst2|estado.PRONTO~q\,
	datad => \inst1|lcd_bus\(9),
	combout => \inst2|Selector38~0_combout\);

-- Location: LCCOMB_X12_Y14_N8
\inst2|lcd_data[2]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|lcd_data[2]~2_combout\ = (!\inst2|estado.ENVIAR~q\ & (\inst2|rw~1_combout\ & ((!\inst2|busy~7_combout\) # (!\inst2|estado.INICIALIZACAO~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|estado.ENVIAR~q\,
	datab => \inst2|estado.INICIALIZACAO~q\,
	datac => \inst2|rw~1_combout\,
	datad => \inst2|busy~7_combout\,
	combout => \inst2|lcd_data[2]~2_combout\);

-- Location: FF_X12_Y14_N25
\inst2|lcd_data[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	asdata => \inst2|Selector38~0_combout\,
	sload => VCC,
	ena => \inst2|lcd_data[2]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst2|lcd_data\(7));

-- Location: LCCOMB_X12_Y13_N18
\inst1|Add0~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|Add0~3_combout\ = \inst1|char\(1) $ (\inst1|char\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst1|char\(1),
	datad => \inst1|char\(0),
	combout => \inst1|Add0~3_combout\);

-- Location: LCCOMB_X12_Y15_N28
\inst1|Mux3~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|Mux3~14_combout\ = (\inst1|LessThan0~0_combout\ & ((\inst1|Add0~3_combout\) # (\inst1|char\(4) $ (\inst1|Add0~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|LessThan0~0_combout\,
	datab => \inst1|char\(4),
	datac => \inst1|Add0~0_combout\,
	datad => \inst1|Add0~3_combout\,
	combout => \inst1|Mux3~14_combout\);

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

-- Location: FF_X25_Y15_N25
\inst3|s0[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	asdata => \key[1]~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst3|s0\(1));

-- Location: FF_X18_Y15_N15
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

-- Location: LCCOMB_X17_Y16_N0
\inst3|cnt[1][0]~32\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|cnt[1][0]~32_combout\ = \inst3|cnt[1][0]~q\ $ (VCC)
-- \inst3|cnt[1][0]~33\ = CARRY(\inst3|cnt[1][0]~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst3|cnt[1][0]~q\,
	datad => VCC,
	combout => \inst3|cnt[1][0]~32_combout\,
	cout => \inst3|cnt[1][0]~33\);

-- Location: LCCOMB_X18_Y15_N14
\inst3|cnt[1][19]~34\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|cnt[1][19]~34_combout\ = (\inst3|stable\(1) $ (!\inst3|s1\(1))) # (!\inst3|Equal3~10_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst3|stable\(1),
	datac => \inst3|s1\(1),
	datad => \inst3|Equal3~10_combout\,
	combout => \inst3|cnt[1][19]~34_combout\);

-- Location: FF_X17_Y16_N1
\inst3|cnt[1][0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \inst3|cnt[1][0]~32_combout\,
	sclr => \inst3|cnt[1][19]~34_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst3|cnt[1][0]~q\);

-- Location: LCCOMB_X17_Y16_N2
\inst3|cnt[1][1]~35\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|cnt[1][1]~35_combout\ = (\inst3|cnt[1][1]~q\ & (!\inst3|cnt[1][0]~33\)) # (!\inst3|cnt[1][1]~q\ & ((\inst3|cnt[1][0]~33\) # (GND)))
-- \inst3|cnt[1][1]~36\ = CARRY((!\inst3|cnt[1][0]~33\) # (!\inst3|cnt[1][1]~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst3|cnt[1][1]~q\,
	datad => VCC,
	cin => \inst3|cnt[1][0]~33\,
	combout => \inst3|cnt[1][1]~35_combout\,
	cout => \inst3|cnt[1][1]~36\);

-- Location: FF_X17_Y16_N3
\inst3|cnt[1][1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \inst3|cnt[1][1]~35_combout\,
	sclr => \inst3|cnt[1][19]~34_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst3|cnt[1][1]~q\);

-- Location: LCCOMB_X17_Y16_N4
\inst3|cnt[1][2]~37\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|cnt[1][2]~37_combout\ = (\inst3|cnt[1][2]~q\ & (\inst3|cnt[1][1]~36\ $ (GND))) # (!\inst3|cnt[1][2]~q\ & (!\inst3|cnt[1][1]~36\ & VCC))
-- \inst3|cnt[1][2]~38\ = CARRY((\inst3|cnt[1][2]~q\ & !\inst3|cnt[1][1]~36\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst3|cnt[1][2]~q\,
	datad => VCC,
	cin => \inst3|cnt[1][1]~36\,
	combout => \inst3|cnt[1][2]~37_combout\,
	cout => \inst3|cnt[1][2]~38\);

-- Location: FF_X17_Y16_N5
\inst3|cnt[1][2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \inst3|cnt[1][2]~37_combout\,
	sclr => \inst3|cnt[1][19]~34_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst3|cnt[1][2]~q\);

-- Location: LCCOMB_X17_Y16_N6
\inst3|cnt[1][3]~39\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|cnt[1][3]~39_combout\ = (\inst3|cnt[1][3]~q\ & (!\inst3|cnt[1][2]~38\)) # (!\inst3|cnt[1][3]~q\ & ((\inst3|cnt[1][2]~38\) # (GND)))
-- \inst3|cnt[1][3]~40\ = CARRY((!\inst3|cnt[1][2]~38\) # (!\inst3|cnt[1][3]~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|cnt[1][3]~q\,
	datad => VCC,
	cin => \inst3|cnt[1][2]~38\,
	combout => \inst3|cnt[1][3]~39_combout\,
	cout => \inst3|cnt[1][3]~40\);

-- Location: FF_X17_Y16_N7
\inst3|cnt[1][3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \inst3|cnt[1][3]~39_combout\,
	sclr => \inst3|cnt[1][19]~34_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst3|cnt[1][3]~q\);

-- Location: LCCOMB_X17_Y16_N8
\inst3|cnt[1][4]~41\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|cnt[1][4]~41_combout\ = (\inst3|cnt[1][4]~q\ & (\inst3|cnt[1][3]~40\ $ (GND))) # (!\inst3|cnt[1][4]~q\ & (!\inst3|cnt[1][3]~40\ & VCC))
-- \inst3|cnt[1][4]~42\ = CARRY((\inst3|cnt[1][4]~q\ & !\inst3|cnt[1][3]~40\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst3|cnt[1][4]~q\,
	datad => VCC,
	cin => \inst3|cnt[1][3]~40\,
	combout => \inst3|cnt[1][4]~41_combout\,
	cout => \inst3|cnt[1][4]~42\);

-- Location: FF_X17_Y16_N9
\inst3|cnt[1][4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \inst3|cnt[1][4]~41_combout\,
	sclr => \inst3|cnt[1][19]~34_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst3|cnt[1][4]~q\);

-- Location: LCCOMB_X17_Y16_N10
\inst3|cnt[1][5]~43\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|cnt[1][5]~43_combout\ = (\inst3|cnt[1][5]~q\ & (!\inst3|cnt[1][4]~42\)) # (!\inst3|cnt[1][5]~q\ & ((\inst3|cnt[1][4]~42\) # (GND)))
-- \inst3|cnt[1][5]~44\ = CARRY((!\inst3|cnt[1][4]~42\) # (!\inst3|cnt[1][5]~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|cnt[1][5]~q\,
	datad => VCC,
	cin => \inst3|cnt[1][4]~42\,
	combout => \inst3|cnt[1][5]~43_combout\,
	cout => \inst3|cnt[1][5]~44\);

-- Location: FF_X17_Y16_N11
\inst3|cnt[1][5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \inst3|cnt[1][5]~43_combout\,
	sclr => \inst3|cnt[1][19]~34_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst3|cnt[1][5]~q\);

-- Location: LCCOMB_X17_Y16_N12
\inst3|cnt[1][6]~45\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|cnt[1][6]~45_combout\ = (\inst3|cnt[1][6]~q\ & (\inst3|cnt[1][5]~44\ $ (GND))) # (!\inst3|cnt[1][6]~q\ & (!\inst3|cnt[1][5]~44\ & VCC))
-- \inst3|cnt[1][6]~46\ = CARRY((\inst3|cnt[1][6]~q\ & !\inst3|cnt[1][5]~44\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|cnt[1][6]~q\,
	datad => VCC,
	cin => \inst3|cnt[1][5]~44\,
	combout => \inst3|cnt[1][6]~45_combout\,
	cout => \inst3|cnt[1][6]~46\);

-- Location: FF_X17_Y16_N13
\inst3|cnt[1][6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \inst3|cnt[1][6]~45_combout\,
	sclr => \inst3|cnt[1][19]~34_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst3|cnt[1][6]~q\);

-- Location: LCCOMB_X17_Y16_N14
\inst3|cnt[1][7]~47\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|cnt[1][7]~47_combout\ = (\inst3|cnt[1][7]~q\ & (!\inst3|cnt[1][6]~46\)) # (!\inst3|cnt[1][7]~q\ & ((\inst3|cnt[1][6]~46\) # (GND)))
-- \inst3|cnt[1][7]~48\ = CARRY((!\inst3|cnt[1][6]~46\) # (!\inst3|cnt[1][7]~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst3|cnt[1][7]~q\,
	datad => VCC,
	cin => \inst3|cnt[1][6]~46\,
	combout => \inst3|cnt[1][7]~47_combout\,
	cout => \inst3|cnt[1][7]~48\);

-- Location: FF_X17_Y16_N15
\inst3|cnt[1][7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \inst3|cnt[1][7]~47_combout\,
	sclr => \inst3|cnt[1][19]~34_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst3|cnt[1][7]~q\);

-- Location: LCCOMB_X17_Y16_N16
\inst3|cnt[1][8]~49\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|cnt[1][8]~49_combout\ = (\inst3|cnt[1][8]~q\ & (\inst3|cnt[1][7]~48\ $ (GND))) # (!\inst3|cnt[1][8]~q\ & (!\inst3|cnt[1][7]~48\ & VCC))
-- \inst3|cnt[1][8]~50\ = CARRY((\inst3|cnt[1][8]~q\ & !\inst3|cnt[1][7]~48\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst3|cnt[1][8]~q\,
	datad => VCC,
	cin => \inst3|cnt[1][7]~48\,
	combout => \inst3|cnt[1][8]~49_combout\,
	cout => \inst3|cnt[1][8]~50\);

-- Location: FF_X17_Y16_N17
\inst3|cnt[1][8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \inst3|cnt[1][8]~49_combout\,
	sclr => \inst3|cnt[1][19]~34_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst3|cnt[1][8]~q\);

-- Location: LCCOMB_X17_Y16_N18
\inst3|cnt[1][9]~51\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|cnt[1][9]~51_combout\ = (\inst3|cnt[1][9]~q\ & (!\inst3|cnt[1][8]~50\)) # (!\inst3|cnt[1][9]~q\ & ((\inst3|cnt[1][8]~50\) # (GND)))
-- \inst3|cnt[1][9]~52\ = CARRY((!\inst3|cnt[1][8]~50\) # (!\inst3|cnt[1][9]~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst3|cnt[1][9]~q\,
	datad => VCC,
	cin => \inst3|cnt[1][8]~50\,
	combout => \inst3|cnt[1][9]~51_combout\,
	cout => \inst3|cnt[1][9]~52\);

-- Location: FF_X17_Y16_N19
\inst3|cnt[1][9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \inst3|cnt[1][9]~51_combout\,
	sclr => \inst3|cnt[1][19]~34_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst3|cnt[1][9]~q\);

-- Location: LCCOMB_X17_Y16_N20
\inst3|cnt[1][10]~53\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|cnt[1][10]~53_combout\ = (\inst3|cnt[1][10]~q\ & (\inst3|cnt[1][9]~52\ $ (GND))) # (!\inst3|cnt[1][10]~q\ & (!\inst3|cnt[1][9]~52\ & VCC))
-- \inst3|cnt[1][10]~54\ = CARRY((\inst3|cnt[1][10]~q\ & !\inst3|cnt[1][9]~52\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst3|cnt[1][10]~q\,
	datad => VCC,
	cin => \inst3|cnt[1][9]~52\,
	combout => \inst3|cnt[1][10]~53_combout\,
	cout => \inst3|cnt[1][10]~54\);

-- Location: FF_X17_Y16_N21
\inst3|cnt[1][10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \inst3|cnt[1][10]~53_combout\,
	sclr => \inst3|cnt[1][19]~34_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst3|cnt[1][10]~q\);

-- Location: LCCOMB_X17_Y16_N22
\inst3|cnt[1][11]~55\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|cnt[1][11]~55_combout\ = (\inst3|cnt[1][11]~q\ & (!\inst3|cnt[1][10]~54\)) # (!\inst3|cnt[1][11]~q\ & ((\inst3|cnt[1][10]~54\) # (GND)))
-- \inst3|cnt[1][11]~56\ = CARRY((!\inst3|cnt[1][10]~54\) # (!\inst3|cnt[1][11]~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|cnt[1][11]~q\,
	datad => VCC,
	cin => \inst3|cnt[1][10]~54\,
	combout => \inst3|cnt[1][11]~55_combout\,
	cout => \inst3|cnt[1][11]~56\);

-- Location: FF_X17_Y16_N23
\inst3|cnt[1][11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \inst3|cnt[1][11]~55_combout\,
	sclr => \inst3|cnt[1][19]~34_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst3|cnt[1][11]~q\);

-- Location: LCCOMB_X17_Y16_N24
\inst3|cnt[1][12]~57\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|cnt[1][12]~57_combout\ = (\inst3|cnt[1][12]~q\ & (\inst3|cnt[1][11]~56\ $ (GND))) # (!\inst3|cnt[1][12]~q\ & (!\inst3|cnt[1][11]~56\ & VCC))
-- \inst3|cnt[1][12]~58\ = CARRY((\inst3|cnt[1][12]~q\ & !\inst3|cnt[1][11]~56\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst3|cnt[1][12]~q\,
	datad => VCC,
	cin => \inst3|cnt[1][11]~56\,
	combout => \inst3|cnt[1][12]~57_combout\,
	cout => \inst3|cnt[1][12]~58\);

-- Location: FF_X17_Y16_N25
\inst3|cnt[1][12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \inst3|cnt[1][12]~57_combout\,
	sclr => \inst3|cnt[1][19]~34_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst3|cnt[1][12]~q\);

-- Location: LCCOMB_X17_Y16_N26
\inst3|cnt[1][13]~59\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|cnt[1][13]~59_combout\ = (\inst3|cnt[1][13]~q\ & (!\inst3|cnt[1][12]~58\)) # (!\inst3|cnt[1][13]~q\ & ((\inst3|cnt[1][12]~58\) # (GND)))
-- \inst3|cnt[1][13]~60\ = CARRY((!\inst3|cnt[1][12]~58\) # (!\inst3|cnt[1][13]~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|cnt[1][13]~q\,
	datad => VCC,
	cin => \inst3|cnt[1][12]~58\,
	combout => \inst3|cnt[1][13]~59_combout\,
	cout => \inst3|cnt[1][13]~60\);

-- Location: FF_X17_Y16_N27
\inst3|cnt[1][13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \inst3|cnt[1][13]~59_combout\,
	sclr => \inst3|cnt[1][19]~34_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst3|cnt[1][13]~q\);

-- Location: LCCOMB_X17_Y16_N28
\inst3|cnt[1][14]~61\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|cnt[1][14]~61_combout\ = (\inst3|cnt[1][14]~q\ & (\inst3|cnt[1][13]~60\ $ (GND))) # (!\inst3|cnt[1][14]~q\ & (!\inst3|cnt[1][13]~60\ & VCC))
-- \inst3|cnt[1][14]~62\ = CARRY((\inst3|cnt[1][14]~q\ & !\inst3|cnt[1][13]~60\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst3|cnt[1][14]~q\,
	datad => VCC,
	cin => \inst3|cnt[1][13]~60\,
	combout => \inst3|cnt[1][14]~61_combout\,
	cout => \inst3|cnt[1][14]~62\);

-- Location: FF_X17_Y16_N29
\inst3|cnt[1][14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \inst3|cnt[1][14]~61_combout\,
	sclr => \inst3|cnt[1][19]~34_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst3|cnt[1][14]~q\);

-- Location: LCCOMB_X17_Y16_N30
\inst3|cnt[1][15]~63\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|cnt[1][15]~63_combout\ = (\inst3|cnt[1][15]~q\ & (!\inst3|cnt[1][14]~62\)) # (!\inst3|cnt[1][15]~q\ & ((\inst3|cnt[1][14]~62\) # (GND)))
-- \inst3|cnt[1][15]~64\ = CARRY((!\inst3|cnt[1][14]~62\) # (!\inst3|cnt[1][15]~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|cnt[1][15]~q\,
	datad => VCC,
	cin => \inst3|cnt[1][14]~62\,
	combout => \inst3|cnt[1][15]~63_combout\,
	cout => \inst3|cnt[1][15]~64\);

-- Location: FF_X17_Y16_N31
\inst3|cnt[1][15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \inst3|cnt[1][15]~63_combout\,
	sclr => \inst3|cnt[1][19]~34_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst3|cnt[1][15]~q\);

-- Location: LCCOMB_X17_Y15_N0
\inst3|cnt[1][16]~65\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|cnt[1][16]~65_combout\ = (\inst3|cnt[1][16]~q\ & (\inst3|cnt[1][15]~64\ $ (GND))) # (!\inst3|cnt[1][16]~q\ & (!\inst3|cnt[1][15]~64\ & VCC))
-- \inst3|cnt[1][16]~66\ = CARRY((\inst3|cnt[1][16]~q\ & !\inst3|cnt[1][15]~64\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst3|cnt[1][16]~q\,
	datad => VCC,
	cin => \inst3|cnt[1][15]~64\,
	combout => \inst3|cnt[1][16]~65_combout\,
	cout => \inst3|cnt[1][16]~66\);

-- Location: FF_X17_Y15_N1
\inst3|cnt[1][16]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \inst3|cnt[1][16]~65_combout\,
	sclr => \inst3|cnt[1][19]~34_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst3|cnt[1][16]~q\);

-- Location: LCCOMB_X17_Y15_N2
\inst3|cnt[1][17]~67\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|cnt[1][17]~67_combout\ = (\inst3|cnt[1][17]~q\ & (!\inst3|cnt[1][16]~66\)) # (!\inst3|cnt[1][17]~q\ & ((\inst3|cnt[1][16]~66\) # (GND)))
-- \inst3|cnt[1][17]~68\ = CARRY((!\inst3|cnt[1][16]~66\) # (!\inst3|cnt[1][17]~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst3|cnt[1][17]~q\,
	datad => VCC,
	cin => \inst3|cnt[1][16]~66\,
	combout => \inst3|cnt[1][17]~67_combout\,
	cout => \inst3|cnt[1][17]~68\);

-- Location: FF_X17_Y15_N3
\inst3|cnt[1][17]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \inst3|cnt[1][17]~67_combout\,
	sclr => \inst3|cnt[1][19]~34_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst3|cnt[1][17]~q\);

-- Location: LCCOMB_X17_Y15_N4
\inst3|cnt[1][18]~69\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|cnt[1][18]~69_combout\ = (\inst3|cnt[1][18]~q\ & (\inst3|cnt[1][17]~68\ $ (GND))) # (!\inst3|cnt[1][18]~q\ & (!\inst3|cnt[1][17]~68\ & VCC))
-- \inst3|cnt[1][18]~70\ = CARRY((\inst3|cnt[1][18]~q\ & !\inst3|cnt[1][17]~68\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst3|cnt[1][18]~q\,
	datad => VCC,
	cin => \inst3|cnt[1][17]~68\,
	combout => \inst3|cnt[1][18]~69_combout\,
	cout => \inst3|cnt[1][18]~70\);

-- Location: FF_X17_Y15_N5
\inst3|cnt[1][18]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \inst3|cnt[1][18]~69_combout\,
	sclr => \inst3|cnt[1][19]~34_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst3|cnt[1][18]~q\);

-- Location: LCCOMB_X17_Y15_N6
\inst3|cnt[1][19]~71\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|cnt[1][19]~71_combout\ = (\inst3|cnt[1][19]~q\ & (!\inst3|cnt[1][18]~70\)) # (!\inst3|cnt[1][19]~q\ & ((\inst3|cnt[1][18]~70\) # (GND)))
-- \inst3|cnt[1][19]~72\ = CARRY((!\inst3|cnt[1][18]~70\) # (!\inst3|cnt[1][19]~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|cnt[1][19]~q\,
	datad => VCC,
	cin => \inst3|cnt[1][18]~70\,
	combout => \inst3|cnt[1][19]~71_combout\,
	cout => \inst3|cnt[1][19]~72\);

-- Location: FF_X17_Y15_N7
\inst3|cnt[1][19]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \inst3|cnt[1][19]~71_combout\,
	sclr => \inst3|cnt[1][19]~34_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst3|cnt[1][19]~q\);

-- Location: LCCOMB_X17_Y15_N8
\inst3|cnt[1][20]~73\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|cnt[1][20]~73_combout\ = (\inst3|cnt[1][20]~q\ & (\inst3|cnt[1][19]~72\ $ (GND))) # (!\inst3|cnt[1][20]~q\ & (!\inst3|cnt[1][19]~72\ & VCC))
-- \inst3|cnt[1][20]~74\ = CARRY((\inst3|cnt[1][20]~q\ & !\inst3|cnt[1][19]~72\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst3|cnt[1][20]~q\,
	datad => VCC,
	cin => \inst3|cnt[1][19]~72\,
	combout => \inst3|cnt[1][20]~73_combout\,
	cout => \inst3|cnt[1][20]~74\);

-- Location: FF_X17_Y15_N9
\inst3|cnt[1][20]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \inst3|cnt[1][20]~73_combout\,
	sclr => \inst3|cnt[1][19]~34_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst3|cnt[1][20]~q\);

-- Location: LCCOMB_X17_Y15_N10
\inst3|cnt[1][21]~75\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|cnt[1][21]~75_combout\ = (\inst3|cnt[1][21]~q\ & (!\inst3|cnt[1][20]~74\)) # (!\inst3|cnt[1][21]~q\ & ((\inst3|cnt[1][20]~74\) # (GND)))
-- \inst3|cnt[1][21]~76\ = CARRY((!\inst3|cnt[1][20]~74\) # (!\inst3|cnt[1][21]~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|cnt[1][21]~q\,
	datad => VCC,
	cin => \inst3|cnt[1][20]~74\,
	combout => \inst3|cnt[1][21]~75_combout\,
	cout => \inst3|cnt[1][21]~76\);

-- Location: FF_X17_Y15_N11
\inst3|cnt[1][21]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \inst3|cnt[1][21]~75_combout\,
	sclr => \inst3|cnt[1][19]~34_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst3|cnt[1][21]~q\);

-- Location: LCCOMB_X17_Y15_N12
\inst3|cnt[1][22]~77\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|cnt[1][22]~77_combout\ = (\inst3|cnt[1][22]~q\ & (\inst3|cnt[1][21]~76\ $ (GND))) # (!\inst3|cnt[1][22]~q\ & (!\inst3|cnt[1][21]~76\ & VCC))
-- \inst3|cnt[1][22]~78\ = CARRY((\inst3|cnt[1][22]~q\ & !\inst3|cnt[1][21]~76\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|cnt[1][22]~q\,
	datad => VCC,
	cin => \inst3|cnt[1][21]~76\,
	combout => \inst3|cnt[1][22]~77_combout\,
	cout => \inst3|cnt[1][22]~78\);

-- Location: FF_X17_Y15_N13
\inst3|cnt[1][22]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \inst3|cnt[1][22]~77_combout\,
	sclr => \inst3|cnt[1][19]~34_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst3|cnt[1][22]~q\);

-- Location: LCCOMB_X17_Y15_N14
\inst3|cnt[1][23]~79\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|cnt[1][23]~79_combout\ = (\inst3|cnt[1][23]~q\ & (!\inst3|cnt[1][22]~78\)) # (!\inst3|cnt[1][23]~q\ & ((\inst3|cnt[1][22]~78\) # (GND)))
-- \inst3|cnt[1][23]~80\ = CARRY((!\inst3|cnt[1][22]~78\) # (!\inst3|cnt[1][23]~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst3|cnt[1][23]~q\,
	datad => VCC,
	cin => \inst3|cnt[1][22]~78\,
	combout => \inst3|cnt[1][23]~79_combout\,
	cout => \inst3|cnt[1][23]~80\);

-- Location: FF_X17_Y15_N15
\inst3|cnt[1][23]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \inst3|cnt[1][23]~79_combout\,
	sclr => \inst3|cnt[1][19]~34_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst3|cnt[1][23]~q\);

-- Location: LCCOMB_X18_Y15_N22
\inst3|Equal3~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|Equal3~6_combout\ = (\inst3|cnt[1][21]~q\) # ((\inst3|cnt[1][22]~q\) # ((\inst3|cnt[1][23]~q\) # (\inst3|cnt[1][20]~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|cnt[1][21]~q\,
	datab => \inst3|cnt[1][22]~q\,
	datac => \inst3|cnt[1][23]~q\,
	datad => \inst3|cnt[1][20]~q\,
	combout => \inst3|Equal3~6_combout\);

-- Location: LCCOMB_X17_Y15_N16
\inst3|cnt[1][24]~81\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|cnt[1][24]~81_combout\ = (\inst3|cnt[1][24]~q\ & (\inst3|cnt[1][23]~80\ $ (GND))) # (!\inst3|cnt[1][24]~q\ & (!\inst3|cnt[1][23]~80\ & VCC))
-- \inst3|cnt[1][24]~82\ = CARRY((\inst3|cnt[1][24]~q\ & !\inst3|cnt[1][23]~80\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst3|cnt[1][24]~q\,
	datad => VCC,
	cin => \inst3|cnt[1][23]~80\,
	combout => \inst3|cnt[1][24]~81_combout\,
	cout => \inst3|cnt[1][24]~82\);

-- Location: FF_X17_Y15_N17
\inst3|cnt[1][24]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \inst3|cnt[1][24]~81_combout\,
	sclr => \inst3|cnt[1][19]~34_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst3|cnt[1][24]~q\);

-- Location: LCCOMB_X17_Y15_N18
\inst3|cnt[1][25]~83\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|cnt[1][25]~83_combout\ = (\inst3|cnt[1][25]~q\ & (!\inst3|cnt[1][24]~82\)) # (!\inst3|cnt[1][25]~q\ & ((\inst3|cnt[1][24]~82\) # (GND)))
-- \inst3|cnt[1][25]~84\ = CARRY((!\inst3|cnt[1][24]~82\) # (!\inst3|cnt[1][25]~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst3|cnt[1][25]~q\,
	datad => VCC,
	cin => \inst3|cnt[1][24]~82\,
	combout => \inst3|cnt[1][25]~83_combout\,
	cout => \inst3|cnt[1][25]~84\);

-- Location: FF_X17_Y15_N19
\inst3|cnt[1][25]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \inst3|cnt[1][25]~83_combout\,
	sclr => \inst3|cnt[1][19]~34_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst3|cnt[1][25]~q\);

-- Location: LCCOMB_X17_Y15_N20
\inst3|cnt[1][26]~85\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|cnt[1][26]~85_combout\ = (\inst3|cnt[1][26]~q\ & (\inst3|cnt[1][25]~84\ $ (GND))) # (!\inst3|cnt[1][26]~q\ & (!\inst3|cnt[1][25]~84\ & VCC))
-- \inst3|cnt[1][26]~86\ = CARRY((\inst3|cnt[1][26]~q\ & !\inst3|cnt[1][25]~84\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst3|cnt[1][26]~q\,
	datad => VCC,
	cin => \inst3|cnt[1][25]~84\,
	combout => \inst3|cnt[1][26]~85_combout\,
	cout => \inst3|cnt[1][26]~86\);

-- Location: FF_X17_Y15_N21
\inst3|cnt[1][26]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \inst3|cnt[1][26]~85_combout\,
	sclr => \inst3|cnt[1][19]~34_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst3|cnt[1][26]~q\);

-- Location: LCCOMB_X17_Y15_N22
\inst3|cnt[1][27]~87\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|cnt[1][27]~87_combout\ = (\inst3|cnt[1][27]~q\ & (!\inst3|cnt[1][26]~86\)) # (!\inst3|cnt[1][27]~q\ & ((\inst3|cnt[1][26]~86\) # (GND)))
-- \inst3|cnt[1][27]~88\ = CARRY((!\inst3|cnt[1][26]~86\) # (!\inst3|cnt[1][27]~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|cnt[1][27]~q\,
	datad => VCC,
	cin => \inst3|cnt[1][26]~86\,
	combout => \inst3|cnt[1][27]~87_combout\,
	cout => \inst3|cnt[1][27]~88\);

-- Location: FF_X17_Y15_N23
\inst3|cnt[1][27]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \inst3|cnt[1][27]~87_combout\,
	sclr => \inst3|cnt[1][19]~34_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst3|cnt[1][27]~q\);

-- Location: LCCOMB_X18_Y15_N24
\inst3|Equal3~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|Equal3~7_combout\ = (\inst3|cnt[1][25]~q\) # ((\inst3|cnt[1][26]~q\) # ((\inst3|cnt[1][24]~q\) # (\inst3|cnt[1][27]~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|cnt[1][25]~q\,
	datab => \inst3|cnt[1][26]~q\,
	datac => \inst3|cnt[1][24]~q\,
	datad => \inst3|cnt[1][27]~q\,
	combout => \inst3|Equal3~7_combout\);

-- Location: LCCOMB_X17_Y15_N24
\inst3|cnt[1][28]~89\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|cnt[1][28]~89_combout\ = (\inst3|cnt[1][28]~q\ & (\inst3|cnt[1][27]~88\ $ (GND))) # (!\inst3|cnt[1][28]~q\ & (!\inst3|cnt[1][27]~88\ & VCC))
-- \inst3|cnt[1][28]~90\ = CARRY((\inst3|cnt[1][28]~q\ & !\inst3|cnt[1][27]~88\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst3|cnt[1][28]~q\,
	datad => VCC,
	cin => \inst3|cnt[1][27]~88\,
	combout => \inst3|cnt[1][28]~89_combout\,
	cout => \inst3|cnt[1][28]~90\);

-- Location: FF_X17_Y15_N25
\inst3|cnt[1][28]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \inst3|cnt[1][28]~89_combout\,
	sclr => \inst3|cnt[1][19]~34_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst3|cnt[1][28]~q\);

-- Location: LCCOMB_X17_Y15_N26
\inst3|cnt[1][29]~91\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|cnt[1][29]~91_combout\ = (\inst3|cnt[1][29]~q\ & (!\inst3|cnt[1][28]~90\)) # (!\inst3|cnt[1][29]~q\ & ((\inst3|cnt[1][28]~90\) # (GND)))
-- \inst3|cnt[1][29]~92\ = CARRY((!\inst3|cnt[1][28]~90\) # (!\inst3|cnt[1][29]~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|cnt[1][29]~q\,
	datad => VCC,
	cin => \inst3|cnt[1][28]~90\,
	combout => \inst3|cnt[1][29]~91_combout\,
	cout => \inst3|cnt[1][29]~92\);

-- Location: FF_X17_Y15_N27
\inst3|cnt[1][29]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \inst3|cnt[1][29]~91_combout\,
	sclr => \inst3|cnt[1][19]~34_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst3|cnt[1][29]~q\);

-- Location: LCCOMB_X17_Y15_N28
\inst3|cnt[1][30]~93\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|cnt[1][30]~93_combout\ = (\inst3|cnt[1][30]~q\ & (\inst3|cnt[1][29]~92\ $ (GND))) # (!\inst3|cnt[1][30]~q\ & (!\inst3|cnt[1][29]~92\ & VCC))
-- \inst3|cnt[1][30]~94\ = CARRY((\inst3|cnt[1][30]~q\ & !\inst3|cnt[1][29]~92\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst3|cnt[1][30]~q\,
	datad => VCC,
	cin => \inst3|cnt[1][29]~92\,
	combout => \inst3|cnt[1][30]~93_combout\,
	cout => \inst3|cnt[1][30]~94\);

-- Location: FF_X17_Y15_N29
\inst3|cnt[1][30]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \inst3|cnt[1][30]~93_combout\,
	sclr => \inst3|cnt[1][19]~34_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst3|cnt[1][30]~q\);

-- Location: LCCOMB_X17_Y15_N30
\inst3|cnt[1][31]~95\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|cnt[1][31]~95_combout\ = \inst3|cnt[1][31]~q\ $ (\inst3|cnt[1][30]~94\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|cnt[1][31]~q\,
	cin => \inst3|cnt[1][30]~94\,
	combout => \inst3|cnt[1][31]~95_combout\);

-- Location: FF_X17_Y15_N31
\inst3|cnt[1][31]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \inst3|cnt[1][31]~95_combout\,
	sclr => \inst3|cnt[1][19]~34_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst3|cnt[1][31]~q\);

-- Location: LCCOMB_X18_Y15_N30
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

-- Location: LCCOMB_X18_Y15_N28
\inst3|Equal3~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|Equal3~5_combout\ = (((!\inst3|cnt[1][16]~q\) # (!\inst3|cnt[1][18]~q\)) # (!\inst3|cnt[1][19]~q\)) # (!\inst3|cnt[1][17]~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|cnt[1][17]~q\,
	datab => \inst3|cnt[1][19]~q\,
	datac => \inst3|cnt[1][18]~q\,
	datad => \inst3|cnt[1][16]~q\,
	combout => \inst3|Equal3~5_combout\);

-- Location: LCCOMB_X18_Y15_N12
\inst3|Equal3~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|Equal3~9_combout\ = (\inst3|Equal3~6_combout\) # ((\inst3|Equal3~7_combout\) # ((\inst3|Equal3~8_combout\) # (\inst3|Equal3~5_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|Equal3~6_combout\,
	datab => \inst3|Equal3~7_combout\,
	datac => \inst3|Equal3~8_combout\,
	datad => \inst3|Equal3~5_combout\,
	combout => \inst3|Equal3~9_combout\);

-- Location: LCCOMB_X18_Y16_N28
\inst3|Equal3~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|Equal3~4_combout\ = (\inst3|cnt[1][15]~q\) # ((\inst3|cnt[1][12]~q\) # ((\inst3|cnt[1][13]~q\) # (!\inst3|cnt[1][14]~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|cnt[1][15]~q\,
	datab => \inst3|cnt[1][12]~q\,
	datac => \inst3|cnt[1][13]~q\,
	datad => \inst3|cnt[1][14]~q\,
	combout => \inst3|Equal3~4_combout\);

-- Location: LCCOMB_X18_Y16_N30
\inst3|Equal3~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|Equal3~3_combout\ = (\inst3|cnt[1][11]~q\) # ((\inst3|cnt[1][10]~q\) # ((\inst3|cnt[1][8]~q\) # (!\inst3|cnt[1][9]~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|cnt[1][11]~q\,
	datab => \inst3|cnt[1][10]~q\,
	datac => \inst3|cnt[1][8]~q\,
	datad => \inst3|cnt[1][9]~q\,
	combout => \inst3|Equal3~3_combout\);

-- Location: LCCOMB_X18_Y16_N18
\inst3|Equal3~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|Equal3~1_combout\ = (\inst3|cnt[1][7]~q\) # (\inst3|cnt[1][6]~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|cnt[1][7]~q\,
	datad => \inst3|cnt[1][6]~q\,
	combout => \inst3|Equal3~1_combout\);

-- Location: LCCOMB_X18_Y16_N8
\inst3|Equal3~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|Equal3~0_combout\ = (((!\inst3|cnt[1][1]~q\) # (!\inst3|cnt[1][3]~q\)) # (!\inst3|cnt[1][2]~q\)) # (!\inst3|cnt[1][0]~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|cnt[1][0]~q\,
	datab => \inst3|cnt[1][2]~q\,
	datac => \inst3|cnt[1][3]~q\,
	datad => \inst3|cnt[1][1]~q\,
	combout => \inst3|Equal3~0_combout\);

-- Location: LCCOMB_X18_Y16_N12
\inst3|Equal3~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|Equal3~2_combout\ = ((\inst3|Equal3~1_combout\) # ((\inst3|Equal3~0_combout\) # (!\inst3|cnt[1][4]~q\))) # (!\inst3|cnt[1][5]~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|cnt[1][5]~q\,
	datab => \inst3|Equal3~1_combout\,
	datac => \inst3|Equal3~0_combout\,
	datad => \inst3|cnt[1][4]~q\,
	combout => \inst3|Equal3~2_combout\);

-- Location: LCCOMB_X18_Y15_N18
\inst3|Equal3~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|Equal3~10_combout\ = (\inst3|Equal3~9_combout\) # ((\inst3|Equal3~4_combout\) # ((\inst3|Equal3~3_combout\) # (\inst3|Equal3~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|Equal3~9_combout\,
	datab => \inst3|Equal3~4_combout\,
	datac => \inst3|Equal3~3_combout\,
	datad => \inst3|Equal3~2_combout\,
	combout => \inst3|Equal3~10_combout\);

-- Location: LCCOMB_X18_Y15_N16
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

-- Location: FF_X18_Y15_N17
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

-- Location: LCCOMB_X12_Y15_N6
\inst1|Mux3~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|Mux3~4_combout\ = (\inst3|stable\(1) & ((\inst1|char\(0)) # (!\inst1|LessThan0~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|stable\(1),
	datac => \inst1|LessThan0~0_combout\,
	datad => \inst1|char\(0),
	combout => \inst1|Mux3~4_combout\);

-- Location: LCCOMB_X12_Y15_N4
\inst1|lcd_bus[6]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|lcd_bus[6]~0_combout\ = (\inst1|Mux3~14_combout\ & (\inst1|lcd_bus\(6))) # (!\inst1|Mux3~14_combout\ & ((\inst1|Mux3~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst1|Mux3~14_combout\,
	datac => \inst1|lcd_bus\(6),
	datad => \inst1|Mux3~4_combout\,
	combout => \inst1|lcd_bus[6]~0_combout\);

-- Location: LCCOMB_X13_Y15_N28
\inst1|lcd_bus[6]~25\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|lcd_bus[6]~25_combout\ = (\inst1|char\(0) & ((\inst1|char\(2) $ (\inst1|char\(1))))) # (!\inst1|char\(0) & ((\inst1|Add0~1_combout\) # ((\inst1|char\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011111011001110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|Add0~1_combout\,
	datab => \inst1|char\(2),
	datac => \inst1|char\(0),
	datad => \inst1|char\(1),
	combout => \inst1|lcd_bus[6]~25_combout\);

-- Location: LCCOMB_X13_Y15_N22
\inst1|lcd_bus[6]~24\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|lcd_bus[6]~24_combout\ = (\inst1|char~1_combout\ & ((\inst1|Add0~1_combout\) # ((!\inst1|char~4_combout\) # (!\inst3|stable\(1))))) # (!\inst1|char~1_combout\ & (((\inst3|stable\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011110011111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|Add0~1_combout\,
	datab => \inst1|char~1_combout\,
	datac => \inst3|stable\(1),
	datad => \inst1|char~4_combout\,
	combout => \inst1|lcd_bus[6]~24_combout\);

-- Location: LCCOMB_X13_Y15_N30
\inst1|lcd_bus[6]~26\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|lcd_bus[6]~26_combout\ = (\inst1|char~2_combout\ & (((\inst1|lcd_bus[6]~24_combout\)))) # (!\inst1|char~2_combout\ & (\inst1|LessThan0~0_combout\ & (\inst1|lcd_bus[6]~25_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|LessThan0~0_combout\,
	datab => \inst1|lcd_bus[6]~25_combout\,
	datac => \inst1|lcd_bus[6]~24_combout\,
	datad => \inst1|char~2_combout\,
	combout => \inst1|lcd_bus[6]~26_combout\);

-- Location: LCCOMB_X12_Y15_N20
\inst1|lcd_bus[6]~22\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|lcd_bus[6]~22_combout\ = (\inst1|char~4_combout\ & (\inst3|stable\(1) $ (((\inst1|lcd_bus[0]~21_combout\) # (!\inst1|char~2_combout\))))) # (!\inst1|char~4_combout\ & ((\inst1|char~2_combout\ $ (\inst1|lcd_bus[0]~21_combout\)) # 
-- (!\inst3|stable\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001110011110111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|char~4_combout\,
	datab => \inst1|char~2_combout\,
	datac => \inst1|lcd_bus[0]~21_combout\,
	datad => \inst3|stable\(1),
	combout => \inst1|lcd_bus[6]~22_combout\);

-- Location: LCCOMB_X12_Y15_N18
\inst1|lcd_bus[6]~23\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|lcd_bus[6]~23_combout\ = (\inst1|char~3_combout\ & ((\inst1|char~1_combout\ & ((\inst3|stable\(1)))) # (!\inst1|char~1_combout\ & (\inst1|lcd_bus[6]~22_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|lcd_bus[6]~22_combout\,
	datab => \inst1|char~1_combout\,
	datac => \inst1|char~3_combout\,
	datad => \inst3|stable\(1),
	combout => \inst1|lcd_bus[6]~23_combout\);

-- Location: LCCOMB_X12_Y15_N14
\inst1|lcd_bus[6]~51\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|lcd_bus[6]~51_combout\ = (\inst1|lcd_bus[6]~23_combout\) # ((\inst1|lcd_bus[6]~26_combout\ & ((!\inst1|LessThan0~0_combout\) # (!\inst1|Add0~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|lcd_bus[6]~26_combout\,
	datab => \inst1|Add0~2_combout\,
	datac => \inst1|LessThan0~0_combout\,
	datad => \inst1|lcd_bus[6]~23_combout\,
	combout => \inst1|lcd_bus[6]~51_combout\);

-- Location: FF_X12_Y15_N5
\inst1|lcd_bus[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \inst1|lcd_bus[6]~0_combout\,
	asdata => \inst1|lcd_bus[6]~51_combout\,
	sload => \inst1|char~0_combout\,
	ena => \inst1|process_0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|lcd_bus\(6));

-- Location: LCCOMB_X12_Y14_N30
\inst2|Selector39~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|Selector39~0_combout\ = (\inst1|lcd_enable~q\ & (\inst2|estado.PRONTO~q\ & \inst1|lcd_bus\(6)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|lcd_enable~q\,
	datac => \inst2|estado.PRONTO~q\,
	datad => \inst1|lcd_bus\(6),
	combout => \inst2|Selector39~0_combout\);

-- Location: FF_X12_Y14_N31
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

-- Location: LCCOMB_X11_Y15_N20
\inst1|lcd_bus[5]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|lcd_bus[5]~1_combout\ = (\inst1|Mux3~14_combout\ & (\inst1|lcd_bus\(5))) # (!\inst1|Mux3~14_combout\ & ((!\inst1|Mux3~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000011110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst1|Mux3~14_combout\,
	datac => \inst1|lcd_bus\(5),
	datad => \inst1|Mux3~4_combout\,
	combout => \inst1|lcd_bus[5]~1_combout\);

-- Location: LCCOMB_X12_Y15_N22
\inst1|lcd_bus[5]~28\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|lcd_bus[5]~28_combout\ = (\inst1|char~2_combout\ & (!\inst3|stable\(1))) # (!\inst1|char~2_combout\ & ((\inst1|lcd_bus[0]~21_combout\ $ (\inst1|char~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100011101110100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|stable\(1),
	datab => \inst1|char~2_combout\,
	datac => \inst1|lcd_bus[0]~21_combout\,
	datad => \inst1|char~4_combout\,
	combout => \inst1|lcd_bus[5]~28_combout\);

-- Location: LCCOMB_X12_Y15_N16
\inst1|lcd_bus[5]~27\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|lcd_bus[5]~27_combout\ = (\inst1|char~4_combout\ & (\inst3|stable\(1) $ (((\inst1|char~2_combout\ & !\inst1|lcd_bus[0]~21_combout\))))) # (!\inst1|char~4_combout\ & (\inst3|stable\(1) & (\inst1|char~2_combout\ $ (!\inst1|lcd_bus[0]~21_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010011010000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|stable\(1),
	datab => \inst1|char~2_combout\,
	datac => \inst1|lcd_bus[0]~21_combout\,
	datad => \inst1|char~4_combout\,
	combout => \inst1|lcd_bus[5]~27_combout\);

-- Location: LCCOMB_X12_Y15_N12
\inst1|lcd_bus[5]~29\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|lcd_bus[5]~29_combout\ = (!\inst1|char~1_combout\ & ((\inst1|char~3_combout\ & ((\inst1|lcd_bus[5]~27_combout\))) # (!\inst1|char~3_combout\ & (\inst1|lcd_bus[5]~28_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001000000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|lcd_bus[5]~28_combout\,
	datab => \inst1|char~1_combout\,
	datac => \inst1|char~3_combout\,
	datad => \inst1|lcd_bus[5]~27_combout\,
	combout => \inst1|lcd_bus[5]~29_combout\);

-- Location: LCCOMB_X12_Y15_N2
\inst1|lcd_bus[5]~30\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|lcd_bus[5]~30_combout\ = (\inst3|stable\(1) & (!\inst1|char\(5) & (\inst1|char\(1) & !\inst1|char\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|stable\(1),
	datab => \inst1|char\(5),
	datac => \inst1|char\(1),
	datad => \inst1|char\(0),
	combout => \inst1|lcd_bus[5]~30_combout\);

-- Location: LCCOMB_X12_Y15_N8
\inst1|lcd_bus[5]~31\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|lcd_bus[5]~31_combout\ = (\inst3|stable\(1) & (\inst1|lcd_bus[5]~30_combout\ & (\inst1|lcd_bus[5]~19_combout\))) # (!\inst3|stable\(1) & ((\inst1|char~3_combout\) # ((\inst1|lcd_bus[5]~30_combout\ & \inst1|lcd_bus[5]~19_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101010111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|stable\(1),
	datab => \inst1|lcd_bus[5]~30_combout\,
	datac => \inst1|lcd_bus[5]~19_combout\,
	datad => \inst1|char~3_combout\,
	combout => \inst1|lcd_bus[5]~31_combout\);

-- Location: LCCOMB_X12_Y15_N10
\inst1|lcd_bus[5]~32\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|lcd_bus[5]~32_combout\ = (\inst1|lcd_bus[5]~29_combout\) # ((\inst1|lcd_bus[5]~31_combout\ & \inst1|char~1_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|lcd_bus[5]~29_combout\,
	datac => \inst1|lcd_bus[5]~31_combout\,
	datad => \inst1|char~1_combout\,
	combout => \inst1|lcd_bus[5]~32_combout\);

-- Location: FF_X11_Y15_N21
\inst1|lcd_bus[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \inst1|lcd_bus[5]~1_combout\,
	asdata => \inst1|lcd_bus[5]~32_combout\,
	sload => \inst1|char~0_combout\,
	ena => \inst1|process_0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|lcd_bus\(5));

-- Location: LCCOMB_X11_Y14_N10
\inst2|Selector40~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|Selector40~2_combout\ = (!\inst2|estado.PRONTO~q\ & (\inst2|LessThan1~1_combout\ & (!\inst2|Add0~60_combout\ & \inst2|LessThan3~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|estado.PRONTO~q\,
	datab => \inst2|LessThan1~1_combout\,
	datac => \inst2|Add0~60_combout\,
	datad => \inst2|LessThan3~4_combout\,
	combout => \inst2|Selector40~2_combout\);

-- Location: LCCOMB_X11_Y14_N12
\inst2|Selector40~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|Selector40~3_combout\ = (\inst2|Selector40~2_combout\) # ((!\inst2|estado.PRONTO~q\ & ((\inst2|Add0~62_combout\) # (!\inst2|estado.INICIALIZACAO~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111101000101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|estado.PRONTO~q\,
	datab => \inst2|Add0~62_combout\,
	datac => \inst2|estado.INICIALIZACAO~q\,
	datad => \inst2|Selector40~2_combout\,
	combout => \inst2|Selector40~3_combout\);

-- Location: LCCOMB_X11_Y14_N20
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

-- Location: FF_X11_Y14_N21
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

-- Location: LCCOMB_X12_Y16_N10
\inst1|lcd_bus[4]~33\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|lcd_bus[4]~33_combout\ = ((\inst1|char\(0) $ (\inst1|Add0~1_combout\)) # (!\inst3|stable\(1))) # (!\inst1|LessThan0~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111101111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|char\(0),
	datab => \inst1|LessThan0~0_combout\,
	datac => \inst1|Add0~1_combout\,
	datad => \inst3|stable\(1),
	combout => \inst1|lcd_bus[4]~33_combout\);

-- Location: LCCOMB_X12_Y16_N18
\inst1|lcd_bus[4]~52\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|lcd_bus[4]~52_combout\ = (\inst1|char\(0) & (((\inst1|lcd_bus[0]~21_combout\)))) # (!\inst1|char\(0) & (!\inst1|char~1_combout\ & (\inst1|LessThan0~0_combout\ $ (\inst1|lcd_bus[0]~21_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101100010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|char\(0),
	datab => \inst1|char~1_combout\,
	datac => \inst1|LessThan0~0_combout\,
	datad => \inst1|lcd_bus[0]~21_combout\,
	combout => \inst1|lcd_bus[4]~52_combout\);

-- Location: LCCOMB_X12_Y16_N8
\inst1|lcd_bus[4]~34\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|lcd_bus[4]~34_combout\ = (!\inst1|char~2_combout\ & (\inst1|char~1_combout\ & ((!\inst1|lcd_bus[0]~21_combout\) # (!\inst1|char~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|char~2_combout\,
	datab => \inst1|char~1_combout\,
	datac => \inst1|char~4_combout\,
	datad => \inst1|lcd_bus[0]~21_combout\,
	combout => \inst1|lcd_bus[4]~34_combout\);

-- Location: LCCOMB_X13_Y16_N4
\inst1|lcd_bus[4]~53\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|lcd_bus[4]~53_combout\ = (\inst1|LessThan0~0_combout\ & (\inst3|stable\(1) & (\inst1|char\(0) $ (\inst1|char\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|char\(0),
	datab => \inst1|LessThan0~0_combout\,
	datac => \inst3|stable\(1),
	datad => \inst1|char\(1),
	combout => \inst1|lcd_bus[4]~53_combout\);

-- Location: LCCOMB_X12_Y16_N2
\inst1|lcd_bus[4]~35\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|lcd_bus[4]~35_combout\ = (\inst1|lcd_bus[4]~33_combout\ & ((\inst1|lcd_bus[4]~34_combout\) # ((\inst1|lcd_bus[4]~52_combout\ & \inst1|lcd_bus[4]~53_combout\)))) # (!\inst1|lcd_bus[4]~33_combout\ & (\inst1|lcd_bus[4]~52_combout\ & 
-- ((\inst1|lcd_bus[4]~53_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|lcd_bus[4]~33_combout\,
	datab => \inst1|lcd_bus[4]~52_combout\,
	datac => \inst1|lcd_bus[4]~34_combout\,
	datad => \inst1|lcd_bus[4]~53_combout\,
	combout => \inst1|lcd_bus[4]~35_combout\);

-- Location: LCCOMB_X12_Y16_N12
\inst1|lcd_bus[4]~36\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|lcd_bus[4]~36_combout\ = (\inst1|char\(1) & (((\inst1|Add0~1_combout\)))) # (!\inst1|char\(1) & ((\inst3|stable\(1) & (\inst1|char\(0))) # (!\inst3|stable\(1) & ((\inst1|Add0~1_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110001011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|char\(0),
	datab => \inst1|char\(1),
	datac => \inst1|Add0~1_combout\,
	datad => \inst3|stable\(1),
	combout => \inst1|lcd_bus[4]~36_combout\);

-- Location: LCCOMB_X12_Y16_N30
\inst1|lcd_bus[4]~37\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|lcd_bus[4]~37_combout\ = (\inst1|LessThan0~0_combout\ & (\inst1|lcd_bus[4]~36_combout\ $ (((\inst1|Add0~3_combout\ & !\inst3|stable\(1))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000001100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|lcd_bus[4]~36_combout\,
	datab => \inst1|Add0~3_combout\,
	datac => \inst1|LessThan0~0_combout\,
	datad => \inst3|stable\(1),
	combout => \inst1|lcd_bus[4]~37_combout\);

-- Location: LCCOMB_X12_Y16_N24
\inst1|lcd_bus[4]~38\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|lcd_bus[4]~38_combout\ = (\inst1|lcd_bus[4]~37_combout\ & (\inst1|char~1_combout\ & ((\inst3|stable\(1))))) # (!\inst1|lcd_bus[4]~37_combout\ & (!\inst1|char~1_combout\ & (\inst1|char~4_combout\ & !\inst3|stable\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|lcd_bus[4]~37_combout\,
	datab => \inst1|char~1_combout\,
	datac => \inst1|char~4_combout\,
	datad => \inst3|stable\(1),
	combout => \inst1|lcd_bus[4]~38_combout\);

-- Location: LCCOMB_X12_Y16_N0
\inst1|lcd_bus[4]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|lcd_bus[4]~2_combout\ = (\inst1|char~3_combout\ & ((\inst1|lcd_bus[4]~38_combout\))) # (!\inst1|char~3_combout\ & (\inst1|lcd_bus[4]~35_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|char~3_combout\,
	datab => \inst1|lcd_bus[4]~35_combout\,
	datad => \inst1|lcd_bus[4]~38_combout\,
	combout => \inst1|lcd_bus[4]~2_combout\);

-- Location: LCCOMB_X12_Y16_N26
\inst1|Mux3~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|Mux3~5_combout\ = (\inst1|lcd_bus\(4) & ((\inst1|Add0~3_combout\) # (\inst1|char\(4) $ (\inst1|Add0~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110001001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|char\(4),
	datab => \inst1|lcd_bus\(4),
	datac => \inst1|Add0~0_combout\,
	datad => \inst1|Add0~3_combout\,
	combout => \inst1|Mux3~5_combout\);

-- Location: FF_X12_Y16_N1
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

-- Location: LCCOMB_X11_Y14_N14
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

-- Location: FF_X11_Y14_N15
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

-- Location: LCCOMB_X13_Y15_N16
\inst1|lcd_bus[3]~40\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|lcd_bus[3]~40_combout\ = ((\inst1|char~1_combout\ & (!\inst1|Add0~1_combout\)) # (!\inst1|char~1_combout\ & ((\inst1|char\(0))))) # (!\inst1|LessThan0~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111010011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|Add0~1_combout\,
	datab => \inst1|char~1_combout\,
	datac => \inst1|char\(0),
	datad => \inst1|LessThan0~0_combout\,
	combout => \inst1|lcd_bus[3]~40_combout\);

-- Location: LCCOMB_X13_Y15_N6
\inst1|Mux3~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|Mux3~7_combout\ = (\inst1|char\(2) $ (((!\inst1|char\(1) & !\inst1|char\(0))))) # (!\inst1|LessThan0~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101100110111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|char\(1),
	datab => \inst1|LessThan0~0_combout\,
	datac => \inst1|char\(0),
	datad => \inst1|char\(2),
	combout => \inst1|Mux3~7_combout\);

-- Location: LCCOMB_X13_Y15_N0
\inst1|lcd_bus[3]~41\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|lcd_bus[3]~41_combout\ = (\inst1|Mux3~7_combout\ & (\inst1|char\(0) & ((\inst1|lcd_bus[0]~21_combout\)))) # (!\inst1|Mux3~7_combout\ & (((\inst1|lcd_bus[3]~40_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|char\(0),
	datab => \inst1|lcd_bus[3]~40_combout\,
	datac => \inst1|lcd_bus[0]~21_combout\,
	datad => \inst1|Mux3~7_combout\,
	combout => \inst1|lcd_bus[3]~41_combout\);

-- Location: LCCOMB_X13_Y16_N20
\inst1|lcd_bus[3]~42\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|lcd_bus[3]~42_combout\ = (\inst1|lcd_bus[3]~41_combout\ & (\inst3|stable\(1) $ (((\inst1|char~2_combout\ & !\inst1|char~1_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101001000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|char~2_combout\,
	datab => \inst1|char~1_combout\,
	datac => \inst3|stable\(1),
	datad => \inst1|lcd_bus[3]~41_combout\,
	combout => \inst1|lcd_bus[3]~42_combout\);

-- Location: LCCOMB_X13_Y16_N6
\inst1|lcd_bus[3]~39\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|lcd_bus[3]~39_combout\ = (\inst3|stable\(1) & (\inst1|char~2_combout\ $ (\inst1|char~4_combout\ $ (\inst1|lcd_bus[0]~21_combout\)))) # (!\inst3|stable\(1) & (\inst1|char~2_combout\ & ((!\inst1|lcd_bus[0]~21_combout\) # (!\inst1|char~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000011001101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|char~2_combout\,
	datab => \inst3|stable\(1),
	datac => \inst1|char~4_combout\,
	datad => \inst1|lcd_bus[0]~21_combout\,
	combout => \inst1|lcd_bus[3]~39_combout\);

-- Location: LCCOMB_X13_Y16_N14
\inst1|lcd_bus[3]~54\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|lcd_bus[3]~54_combout\ = (\inst1|char~1_combout\ & (((\inst1|lcd_bus[3]~39_combout\)))) # (!\inst1|char~1_combout\ & (\inst1|char\(4) & (\inst1|lcd_bus[5]~30_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|char\(4),
	datab => \inst1|char~1_combout\,
	datac => \inst1|lcd_bus[5]~30_combout\,
	datad => \inst1|lcd_bus[3]~39_combout\,
	combout => \inst1|lcd_bus[3]~54_combout\);

-- Location: LCCOMB_X12_Y16_N6
\inst1|lcd_bus[3]~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|lcd_bus[3]~3_combout\ = (\inst1|char~3_combout\ & (\inst1|lcd_bus[3]~42_combout\)) # (!\inst1|char~3_combout\ & ((\inst1|lcd_bus[3]~54_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|lcd_bus[3]~42_combout\,
	datab => \inst1|lcd_bus[3]~54_combout\,
	datad => \inst1|char~3_combout\,
	combout => \inst1|lcd_bus[3]~3_combout\);

-- Location: LCCOMB_X12_Y13_N8
\inst1|Mux3~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|Mux3~8_combout\ = (\inst1|lcd_bus\(3) & ((\inst1|Add0~3_combout\) # (\inst1|char\(4) $ (\inst1|Add0~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011111000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|Add0~3_combout\,
	datab => \inst1|char\(4),
	datac => \inst1|Add0~0_combout\,
	datad => \inst1|lcd_bus\(3),
	combout => \inst1|Mux3~8_combout\);

-- Location: FF_X12_Y16_N7
\inst1|lcd_bus[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \inst1|lcd_bus[3]~3_combout\,
	asdata => \inst1|Mux3~8_combout\,
	sload => \inst1|ALT_INV_char~0_combout\,
	ena => \inst1|process_0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|lcd_bus\(3));

-- Location: LCCOMB_X11_Y14_N6
\inst2|Selector42~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|Selector42~1_combout\ = (\inst2|Add0~62_combout\) # ((!\inst2|Add0~60_combout\ & ((\inst2|LessThan1~2_combout\) # (\inst2|Selector42~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111111001110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|LessThan1~2_combout\,
	datab => \inst2|Add0~62_combout\,
	datac => \inst2|Add0~60_combout\,
	datad => \inst2|Selector42~0_combout\,
	combout => \inst2|Selector42~1_combout\);

-- Location: LCCOMB_X11_Y14_N0
\inst2|Selector42~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|Selector42~2_combout\ = (\inst2|rw~0_combout\ & (((\inst1|lcd_bus\(3))))) # (!\inst2|rw~0_combout\ & (\inst2|estado.INICIALIZACAO~q\ & ((\inst2|Selector42~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|rw~0_combout\,
	datab => \inst2|estado.INICIALIZACAO~q\,
	datac => \inst1|lcd_bus\(3),
	datad => \inst2|Selector42~1_combout\,
	combout => \inst2|Selector42~2_combout\);

-- Location: FF_X11_Y14_N1
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

-- Location: LCCOMB_X13_Y16_N12
\inst1|lcd_bus[2]~43\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|lcd_bus[2]~43_combout\ = (\inst3|stable\(1) & ((!\inst1|lcd_bus[0]~21_combout\) # (!\inst1|char~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst3|stable\(1),
	datac => \inst1|char~2_combout\,
	datad => \inst1|lcd_bus[0]~21_combout\,
	combout => \inst1|lcd_bus[2]~43_combout\);

-- Location: LCCOMB_X13_Y16_N18
\inst1|lcd_bus[2]~44\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|lcd_bus[2]~44_combout\ = (\inst1|char~2_combout\ & ((\inst1|char~4_combout\ & ((\inst1|lcd_bus[2]~43_combout\))) # (!\inst1|char~4_combout\ & (!\inst1|char~1_combout\)))) # (!\inst1|char~2_combout\ & ((\inst1|lcd_bus[2]~43_combout\ & 
-- ((!\inst1|char~4_combout\))) # (!\inst1|lcd_bus[2]~43_combout\ & (!\inst1|char~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010011100010011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|char~2_combout\,
	datab => \inst1|char~1_combout\,
	datac => \inst1|char~4_combout\,
	datad => \inst1|lcd_bus[2]~43_combout\,
	combout => \inst1|lcd_bus[2]~44_combout\);

-- Location: LCCOMB_X13_Y16_N22
\inst1|Mux3~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|Mux3~9_combout\ = (\inst1|char~2_combout\ & (!\inst1|char~4_combout\ & ((!\inst1|lcd_bus[0]~21_combout\) # (!\inst3|stable\(1))))) # (!\inst1|char~2_combout\ & ((\inst3|stable\(1) & ((!\inst1|lcd_bus[0]~21_combout\) # (!\inst1|char~4_combout\))) # 
-- (!\inst3|stable\(1) & ((\inst1|lcd_bus[0]~21_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001011101001110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|char~2_combout\,
	datab => \inst3|stable\(1),
	datac => \inst1|char~4_combout\,
	datad => \inst1|lcd_bus[0]~21_combout\,
	combout => \inst1|Mux3~9_combout\);

-- Location: LCCOMB_X13_Y16_N28
\inst1|lcd_bus[2]~55\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|lcd_bus[2]~55_combout\ = (\inst1|char~1_combout\ & (((\inst1|Mux3~9_combout\)))) # (!\inst1|char~1_combout\ & (\inst1|lcd_bus[5]~30_combout\ & ((\inst1|char\(4)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|lcd_bus[5]~30_combout\,
	datab => \inst1|Mux3~9_combout\,
	datac => \inst1|char\(4),
	datad => \inst1|char~1_combout\,
	combout => \inst1|lcd_bus[2]~55_combout\);

-- Location: LCCOMB_X13_Y16_N24
\inst1|lcd_bus[2]~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|lcd_bus[2]~4_combout\ = (\inst1|char~3_combout\ & (\inst1|lcd_bus[2]~44_combout\)) # (!\inst1|char~3_combout\ & ((\inst1|lcd_bus[2]~55_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|char~3_combout\,
	datab => \inst1|lcd_bus[2]~44_combout\,
	datad => \inst1|lcd_bus[2]~55_combout\,
	combout => \inst1|lcd_bus[2]~4_combout\);

-- Location: LCCOMB_X13_Y16_N8
\inst1|Mux3~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|Mux3~10_combout\ = (\inst1|lcd_bus\(2) & ((\inst1|Add0~3_combout\) # (\inst1|char\(4) $ (\inst1|Add0~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000110011001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|Add0~3_combout\,
	datab => \inst1|lcd_bus\(2),
	datac => \inst1|char\(4),
	datad => \inst1|Add0~0_combout\,
	combout => \inst1|Mux3~10_combout\);

-- Location: FF_X13_Y16_N25
\inst1|lcd_bus[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \inst1|lcd_bus[2]~4_combout\,
	asdata => \inst1|Mux3~10_combout\,
	sload => \inst1|ALT_INV_char~0_combout\,
	ena => \inst1|process_0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|lcd_bus\(2));

-- Location: LCCOMB_X11_Y14_N4
\inst2|Selector45~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|Selector45~0_combout\ = (!\inst2|rw~0_combout\ & (\inst2|estado.INICIALIZACAO~q\ & (!\inst2|Add0~60_combout\ & !\inst2|Add0~62_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|rw~0_combout\,
	datab => \inst2|estado.INICIALIZACAO~q\,
	datac => \inst2|Add0~60_combout\,
	datad => \inst2|Add0~62_combout\,
	combout => \inst2|Selector45~0_combout\);

-- Location: LCCOMB_X10_Y14_N6
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

-- Location: LCCOMB_X11_Y14_N18
\inst2|Selector43~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|Selector43~3_combout\ = (\inst2|Selector43~2_combout\ & ((\inst2|Add0~60_combout\) # ((!\inst2|LessThan5~2_combout\ & !\inst2|LessThan4~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000010110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|Add0~60_combout\,
	datab => \inst2|LessThan5~2_combout\,
	datac => \inst2|Selector43~2_combout\,
	datad => \inst2|LessThan4~3_combout\,
	combout => \inst2|Selector43~3_combout\);

-- Location: LCCOMB_X11_Y14_N28
\inst2|Selector43~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|Selector43~4_combout\ = (\inst2|clk_count~1_combout\ & (\inst2|Selector45~0_combout\ & ((\inst2|LessThan3~14_combout\) # (\inst2|Selector43~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|clk_count~1_combout\,
	datab => \inst2|LessThan3~14_combout\,
	datac => \inst2|Selector45~0_combout\,
	datad => \inst2|Selector43~3_combout\,
	combout => \inst2|Selector43~4_combout\);

-- Location: LCCOMB_X11_Y14_N2
\inst2|Selector43~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|Selector43~5_combout\ = (\inst2|Selector43~4_combout\) # ((\inst2|estado.PRONTO~q\ & (\inst1|lcd_enable~q\ & \inst1|lcd_bus\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|estado.PRONTO~q\,
	datab => \inst1|lcd_enable~q\,
	datac => \inst1|lcd_bus\(2),
	datad => \inst2|Selector43~4_combout\,
	combout => \inst2|Selector43~5_combout\);

-- Location: FF_X11_Y14_N3
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

-- Location: LCCOMB_X13_Y16_N26
\inst1|lcd_bus[1]~45\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|lcd_bus[1]~45_combout\ = (\inst1|char~2_combout\ & (!\inst3|stable\(1))) # (!\inst1|char~2_combout\ & ((\inst1|char~4_combout\ & ((!\inst1|lcd_bus[0]~21_combout\))) # (!\inst1|char~4_combout\ & (!\inst3|stable\(1) & 
-- \inst1|lcd_bus[0]~21_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010001101110010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|char~2_combout\,
	datab => \inst3|stable\(1),
	datac => \inst1|char~4_combout\,
	datad => \inst1|lcd_bus[0]~21_combout\,
	combout => \inst1|lcd_bus[1]~45_combout\);

-- Location: LCCOMB_X13_Y16_N0
\inst1|lcd_bus[1]~46\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|lcd_bus[1]~46_combout\ = (\inst1|char~1_combout\ & ((\inst1|lcd_bus[1]~45_combout\) # ((!\inst1|char~4_combout\ & \inst1|lcd_bus[4]~53_combout\)))) # (!\inst1|char~1_combout\ & (((\inst1|lcd_bus[4]~53_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|lcd_bus[1]~45_combout\,
	datab => \inst1|char~4_combout\,
	datac => \inst1|lcd_bus[4]~53_combout\,
	datad => \inst1|char~1_combout\,
	combout => \inst1|lcd_bus[1]~46_combout\);

-- Location: LCCOMB_X13_Y16_N10
\inst1|lcd_bus[1]~47\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|lcd_bus[1]~47_combout\ = (\inst3|stable\(1) & (((!\inst1|char~4_combout\)))) # (!\inst3|stable\(1) & (\inst1|char~2_combout\ & ((\inst1|lcd_bus[0]~21_combout\) # (!\inst1|char~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010111000001110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|char~2_combout\,
	datab => \inst3|stable\(1),
	datac => \inst1|char~4_combout\,
	datad => \inst1|lcd_bus[0]~21_combout\,
	combout => \inst1|lcd_bus[1]~47_combout\);

-- Location: LCCOMB_X13_Y16_N2
\inst1|lcd_bus[1]~56\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|lcd_bus[1]~56_combout\ = (\inst1|char~1_combout\ & (\inst1|char\(4) & ((\inst1|lcd_bus[5]~30_combout\)))) # (!\inst1|char~1_combout\ & (((\inst1|lcd_bus[1]~47_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|char\(4),
	datab => \inst1|lcd_bus[1]~47_combout\,
	datac => \inst1|lcd_bus[5]~30_combout\,
	datad => \inst1|char~1_combout\,
	combout => \inst1|lcd_bus[1]~56_combout\);

-- Location: LCCOMB_X12_Y16_N16
\inst1|lcd_bus[1]~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|lcd_bus[1]~5_combout\ = (\inst1|char~3_combout\ & ((\inst1|lcd_bus[1]~56_combout\))) # (!\inst1|char~3_combout\ & (\inst1|lcd_bus[1]~46_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|char~3_combout\,
	datab => \inst1|lcd_bus[1]~46_combout\,
	datad => \inst1|lcd_bus[1]~56_combout\,
	combout => \inst1|lcd_bus[1]~5_combout\);

-- Location: LCCOMB_X12_Y13_N22
\inst1|Mux3~11\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|Mux3~11_combout\ = (\inst1|lcd_bus\(1) & ((\inst1|Add0~3_combout\) # (\inst1|Add0~0_combout\ $ (\inst1|char\(4)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000110011001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|Add0~3_combout\,
	datab => \inst1|lcd_bus\(1),
	datac => \inst1|Add0~0_combout\,
	datad => \inst1|char\(4),
	combout => \inst1|Mux3~11_combout\);

-- Location: FF_X12_Y16_N17
\inst1|lcd_bus[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \inst1|lcd_bus[1]~5_combout\,
	asdata => \inst1|Mux3~11_combout\,
	sload => \inst1|ALT_INV_char~0_combout\,
	ena => \inst1|process_0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|lcd_bus\(1));

-- Location: LCCOMB_X11_Y14_N26
\inst2|Selector44~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|Selector44~0_combout\ = (!\inst2|rw~0_combout\ & (!\inst2|Add0~62_combout\ & (\inst2|estado.INICIALIZACAO~q\ & !\inst2|busy~8_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|rw~0_combout\,
	datab => \inst2|Add0~62_combout\,
	datac => \inst2|estado.INICIALIZACAO~q\,
	datad => \inst2|busy~8_combout\,
	combout => \inst2|Selector44~0_combout\);

-- Location: LCCOMB_X11_Y14_N8
\inst2|Selector44~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|Selector44~1_combout\ = (\inst1|lcd_bus\(1) & ((\inst2|rw~0_combout\) # ((\inst2|Selector44~0_combout\ & \inst2|Selector43~3_combout\)))) # (!\inst1|lcd_bus\(1) & (((\inst2|Selector44~0_combout\ & \inst2|Selector43~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|lcd_bus\(1),
	datab => \inst2|rw~0_combout\,
	datac => \inst2|Selector44~0_combout\,
	datad => \inst2|Selector43~3_combout\,
	combout => \inst2|Selector44~1_combout\);

-- Location: FF_X11_Y14_N9
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

-- Location: LCCOMB_X12_Y14_N2
\inst2|Selector45~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|Selector45~1_combout\ = (!\inst2|busy~6_combout\ & (\inst2|Selector45~0_combout\ & ((\inst2|Add0~60_combout\) # (!\inst2|LessThan4~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|busy~6_combout\,
	datab => \inst2|Add0~60_combout\,
	datac => \inst2|Selector45~0_combout\,
	datad => \inst2|LessThan4~3_combout\,
	combout => \inst2|Selector45~1_combout\);

-- Location: LCCOMB_X12_Y15_N30
\inst1|lcd_bus[0]~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|lcd_bus[0]~6_combout\ = (\inst1|Mux3~14_combout\ & (\inst1|lcd_bus\(0))) # (!\inst1|Mux3~14_combout\ & ((\inst1|Mux3~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst1|Mux3~14_combout\,
	datac => \inst1|lcd_bus\(0),
	datad => \inst1|Mux3~4_combout\,
	combout => \inst1|lcd_bus[0]~6_combout\);

-- Location: LCCOMB_X12_Y16_N22
\inst1|Mux3~13\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|Mux3~13_combout\ = (\inst3|stable\(1) & ((\inst1|char~2_combout\ & (\inst1|char~4_combout\ & !\inst1|lcd_bus[0]~21_combout\)) # (!\inst1|char~2_combout\ & (!\inst1|char~4_combout\ & \inst1|lcd_bus[0]~21_combout\)))) # (!\inst3|stable\(1) & 
-- (((!\inst1|char~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000011110000101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|stable\(1),
	datab => \inst1|char~2_combout\,
	datac => \inst1|char~4_combout\,
	datad => \inst1|lcd_bus[0]~21_combout\,
	combout => \inst1|Mux3~13_combout\);

-- Location: LCCOMB_X12_Y16_N20
\inst1|lcd_bus[0]~48\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|lcd_bus[0]~48_combout\ = (\inst3|stable\(1) & ((\inst1|char~4_combout\) # ((\inst1|Add0~3_combout\ & \inst1|lcd_bus[0]~21_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010100010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|stable\(1),
	datab => \inst1|Add0~3_combout\,
	datac => \inst1|char~4_combout\,
	datad => \inst1|lcd_bus[0]~21_combout\,
	combout => \inst1|lcd_bus[0]~48_combout\);

-- Location: LCCOMB_X12_Y16_N14
\inst1|Mux3~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|Mux3~12_combout\ = (\inst1|char~4_combout\ & (((\inst1|lcd_bus[0]~21_combout\)))) # (!\inst1|char~4_combout\ & ((\inst1|char~2_combout\ & ((!\inst1|lcd_bus[0]~21_combout\))) # (!\inst1|char~2_combout\ & (\inst3|stable\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001000001110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|stable\(1),
	datab => \inst1|char~2_combout\,
	datac => \inst1|char~4_combout\,
	datad => \inst1|lcd_bus[0]~21_combout\,
	combout => \inst1|Mux3~12_combout\);

-- Location: LCCOMB_X13_Y16_N16
\inst1|Mux3~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|Mux3~6_combout\ = (\inst1|char\(4) & \inst1|lcd_bus[5]~30_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|char\(4),
	datac => \inst1|lcd_bus[5]~30_combout\,
	combout => \inst1|Mux3~6_combout\);

-- Location: LCCOMB_X12_Y16_N4
\inst1|lcd_bus[0]~49\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|lcd_bus[0]~49_combout\ = (\inst1|char~3_combout\ & (!\inst1|char~1_combout\)) # (!\inst1|char~3_combout\ & ((\inst1|char~1_combout\ & (\inst1|Mux3~12_combout\)) # (!\inst1|char~1_combout\ & ((\inst1|Mux3~6_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111001101100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|char~3_combout\,
	datab => \inst1|char~1_combout\,
	datac => \inst1|Mux3~12_combout\,
	datad => \inst1|Mux3~6_combout\,
	combout => \inst1|lcd_bus[0]~49_combout\);

-- Location: LCCOMB_X12_Y16_N28
\inst1|lcd_bus[0]~50\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|lcd_bus[0]~50_combout\ = (\inst1|lcd_bus[0]~49_combout\ & ((\inst1|Mux3~13_combout\) # ((!\inst1|char~3_combout\)))) # (!\inst1|lcd_bus[0]~49_combout\ & (((\inst1|lcd_bus[0]~48_combout\ & \inst1|char~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|Mux3~13_combout\,
	datab => \inst1|lcd_bus[0]~48_combout\,
	datac => \inst1|lcd_bus[0]~49_combout\,
	datad => \inst1|char~3_combout\,
	combout => \inst1|lcd_bus[0]~50_combout\);

-- Location: FF_X12_Y15_N31
\inst1|lcd_bus[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \inst1|lcd_bus[0]~6_combout\,
	asdata => \inst1|lcd_bus[0]~50_combout\,
	sload => \inst1|char~0_combout\,
	ena => \inst1|process_0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|lcd_bus\(0));

-- Location: LCCOMB_X12_Y14_N4
\inst2|Selector45~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|Selector45~2_combout\ = (\inst2|rw~0_combout\ & ((\inst1|lcd_bus\(0)) # ((\inst2|Selector45~1_combout\ & \inst2|LessThan5~2_combout\)))) # (!\inst2|rw~0_combout\ & (\inst2|Selector45~1_combout\ & ((\inst2|LessThan5~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|rw~0_combout\,
	datab => \inst2|Selector45~1_combout\,
	datac => \inst1|lcd_bus\(0),
	datad => \inst2|LessThan5~2_combout\,
	combout => \inst2|Selector45~2_combout\);

-- Location: FF_X12_Y14_N5
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

ww_lcd_rw <= \lcd_rw~output_o\;

ww_lcd_en <= \lcd_en~output_o\;

ww_lcd_rs <= \lcd_rs~output_o\;

ww_lcd_d(7) <= \lcd_d[7]~output_o\;

ww_lcd_d(6) <= \lcd_d[6]~output_o\;

ww_lcd_d(5) <= \lcd_d[5]~output_o\;

ww_lcd_d(4) <= \lcd_d[4]~output_o\;

ww_lcd_d(3) <= \lcd_d[3]~output_o\;

ww_lcd_d(2) <= \lcd_d[2]~output_o\;

ww_lcd_d(1) <= \lcd_d[1]~output_o\;

ww_lcd_d(0) <= \lcd_d[0]~output_o\;
END structure;


